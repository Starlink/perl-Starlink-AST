#!perl

use strict;
use Test::More;
use Data::Dumper;

require_ok( "Starlink::AST" );
require_ok( "Starlink::AST::PGPLOT" );

use File::Spec;

BEGIN {
 unless (exists $ENV{'DISPLAY'}) {
   plan skip_all => '$DISPLAY is not set.';
   exit;
 }

 eval { require PGPLOT; PGPLOT::pgbegin(0,"/xw",1,1) };
 if ( $@ ) {
   plan skip_all => "PGPLOT module not installed.";
   exit;
 }

 eval "use Astro::FITS::CFITSIO;";
 if ( $@ ) {
   plan skip_all => "Astro::FITS::CFITSIO not installed.";
   exit;
 }

 eval "use Astro::FITS::Header::CFITSIO;";
 if ( $@ ) {
   plan skip_all => "Astro::FITS::Header::CFITSIO not installed.";
   exit;
 }

 plan tests => 5;

};

Starlink::AST::Begin();

# FITS File
# ---------
my $file = File::Spec->catfile( "data", "m31.fit" );

# Get FITS Header
# ---------------

my $header = new Astro::FITS::Header::CFITSIO( File => $file, ReadOnly => 1 );
my @cards = $header->cards();

# Make FitsChan
# -------------
my $wcsinfo;
if ($header->can("get_wcs")) {
  $wcsinfo = $header->get_wcs();
} else {
  # Use fallback position
  $wcsinfo = get_wcs( $header );
}
isa_ok( $wcsinfo, "Starlink::AST::FrameSet" );

# Set up window
# -------------
my $nx = $header->value("NAXIS1");
my $ny = $header->value("NAXIS2");
PGPLOT::pgpage();
PGPLOT::pgwnad( 0,1,0,1 );

my ( $x1, $x2, $y1, $y2 ) = (0,1,0,1);

my $xscale = ( $x2 - $x1 ) / $nx;
my $yscale = ( $y2 - $y1 ) / $ny;
my $scale = ( $xscale < $yscale ) ? $xscale : $yscale;
my $xleft   = 0.5 * ( $x1 + $x2 - $nx * $scale );
my $xright  = 0.5 * ( $x1 + $x2 + $nx * $scale );
my $ybottom = 0.5 * ( $y1 + $y2 - $ny * $scale );
my $ytop    = 0.5 * ( $y1 + $y2 + $ny * $scale );

# Read data
# ---------
my $array = read_file( $file );

PGPLOT::pggray( $array, $nx, $ny, 1, $nx, 1, $ny, 10000, 0,
  [ $xleft-0.5*$scale, $scale, 0.0, $ybottom-0.5*$scale, 0.0, $scale ] );

# Change FrameSet
# ---------------
#$wcsinfo->Set( System => "GALACTIC" );

# AST axes
# --------
my $plot = Starlink::AST::Plot->new( $wcsinfo,
   [$xleft,$ybottom,$xright,$ytop],[0.5,0.5, $nx+0.5, $ny+0.5], "Grid=1");
isa_ok( $plot, "Starlink::AST::Plot" );

my $status = $plot->pgplot();
is( $status, 1, "Result from registering PGPLOT with AST" );

#$plot->Set( Colour => 2, Width => 5 );
$plot->Grid();

# Switch to GRAPHICS frame for easy plotting
$plot->Set( "Current=1" );
$plot->Text("Test Text 1", [0.4,0.4],[0.0,1.0],"CC");
$plot->Set( Colour => 3  );
$plot->Text("Test Text 2", [0.5,0.5],[0.0,1.0],"CC");
$plot->Set( Colour => 4 );
$plot->Text("Test Text 3", [0.6,0.6],[0.0,1.0],"CC");

$plot->Set( Colour => 6, Width => 5 );
$plot->Mark( 6, [0.6,0.5,0.4], [0.3, 0.2,0.2]  );

$plot->Set( Colour => 2, Width => 5 );
$plot->PolyCurve( [0.2,0.3,0.25], [0.8,0.5,0.5]);

# Plot some RA/Dec points
my $ra1 = $wcsinfo->Unformat( 1, "0:40:00" );
my $dec1 = $wcsinfo->Unformat( 2, "41:30:00" );
my $ra2 = $wcsinfo->Unformat( 1, "0:44:00" );
my $dec2 = $wcsinfo->Unformat( 2, "42:00:00" );
$plot->Set(Current => 3);
print "\n# Current Frame " . $plot->Get( "Domain" ) . "\n";
print "# Plotting at $ra1, $dec1\n";
print "# Plotting at $ra2, $dec2\n";

$plot->Mark(24, [$ra1, $ra2],[$dec1,$dec2]);

# Plot a region outline
my $moc = new Starlink::AST::Moc('');
$moc->AddMocString(
    Starlink::AST::Region::AST__OR(), 0, -1,
    '7/10494,10495,10833,10836 ' .
    '8/41963,41965-41967,42633,42664,42666,42667,43329,43331,43348-43350,43352,43354,44032');
$plot->RegionOutline($moc);

# Done!
sleep(2);
exit;

sub read_file {
   my $file = shift;

   my $status = 0;
   my $fptr = Astro::FITS::CFITSIO::open_file(
             $file, Astro::FITS::CFITSIO::READONLY(), $status);

   my ($array, $nullarray, $anynull);
   $fptr->read_pixnull(
     Astro::FITS::CFITSIO::TLONG(), [1,1], $nx*$ny, $array, $nullarray,
     $anynull ,$status);
   $fptr->close_file($status);

   return $array;
}

# Implementation of the get_wcs method for old versions of Astro::FITS::Header

sub get_wcs {
  my $self = shift;
  my $fchan = Starlink::AST::FitsChan->new();
  for my $i ( $self->cards() ) {
    $fchan->PutFits( $i, 0);
  }
  $fchan->Clear( "Card" );
  return $fchan->Read();
}
