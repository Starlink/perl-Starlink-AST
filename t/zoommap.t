#!perl

use strict;
use Test::More tests => 25;

require_ok("Starlink::AST");
{
Starlink::AST::Begin();

# Zoom map

my $zoommap = new Starlink::AST::ZoomMap(2,5, "");
isa_ok($zoommap, "Starlink::AST::ZoomMap");

$zoommap->Show();

my $invert = $zoommap->GetI("Invert");
$zoommap->Invert();
ok( $invert != $zoommap->GetI("Invert"), "Inverted mapping");
$zoommap->Invert();
is($zoommap->GetI("Invert"), $invert, "And inverted again");

# Test mapping - Sun211 - Transforming Coordinates
$zoommap->SetI( "Zoom", 5);
my @xin = ( 0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0 );
my @yin = ( 0.0, 2.0, 4.0, 6.0, 8.0, 10.0, 12.0, 14.0, 16.0, 18.0 );

my ($xout, $yout ) = $zoommap->Tran2( \@xin, \@yin, 1 );

is($yout->[9], 90 , "10th element of zoommap");

# and reverse the mapping
my ($xin2, $yin2 ) = $zoommap->Tran2( $xout, $yout, 0 );

for my $i ( 0 .. $#xin ) {
  is( $xin2->[$i], $xin[$i], "Compare inverted zoommap X[$i]");
  is( $yin2->[$i], $yin[$i], "Compare inverted zoommap X[$i]");
}

}
