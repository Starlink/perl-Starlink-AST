package Starlink::AST;

use strict;
use Carp;
use Data::Dumper;  # for dumping debug arguments

use vars qw/ $VERSION /;

require DynaLoader;
use base qw| DynaLoader |;


$VERSION = '0.03';

bootstrap Starlink::AST $VERSION;

=head1 NAME

Starlink::AST - Interface to the Starlink AST library

=head1 SYNOPSIS

  use Starlink::AST;

  my $zmap = new Starlink::AST::ZoomMap( 2, 5, "" );
  $zmap->Set( Zoom => 5 );

  my ($xout, $yout ) = $zmap->Tran2( [1,2], [4,6], 1);

  my $fchan = new Starlink::AST::FitsChan();
  for (<DATA>) {
   $fchan->PutFits( $_, 0);
  }
  $fchan->Clear( "Card" );

  $wcs = $fchan->Read();

=head1 DESCRIPTION

C<Starlink::AST> provides a perl wrapper to the Starlink AST library.
The Starlink AST library provides facilities for transforming coordinates
from one system to another in an object oriented manner. Multiple coordinate
frames can be associated with a data set and it is also possible to generate
automatic mappings between frames.

Coordinate frame objects can be imported from FITS headers and from NDF files.

=head1 CALLING CONVENTIONS

In general the method names used in the Perl interface match the
function names in the C library with the "ast" prefix
dropped. Functions that require C arrays, should take references to
Perl arrays. AST functions that return values/arrays now return these
values/arrays onto the perl stack rather than the argument stack.

The constructor functions are now replaced with C<new> methods in the
relevant class. e.g rather than calling astZoomMap(), the Perl
interface uses the C<new> method in the C<Starlink::AST::ZoomMap>
namespace.

=head2 Constructors

The following constructors are available. Currently, these
constructors match the C constructors fairly closely. 

This is one area which may change when the class comes out of alpha
release. The main problem with the constructors is the options string
(a standard AST option string with comma-separated keyword value
pairs). It would make more sense to replace these constructors with
hash constructors that take the mandatory arguments in the correct
order and hash arguments for the options.

=over 4

=item B<Starlink::AST::Frame>

Instantiate an astFrame() object.

  $frame = new Starlink::AST::Frame( $naxes, $options );

=item B<Starlink::AST::FrameSet>

  $frameSet = new Starlink::AST::FrameSet( $frame, $options );

=item B<Starlink::AST::CmpFrame>

  $cmpFrame = new Starlink::AST::CmpFrame( $frame1, $frame2, $options );

=item B<Starlink::AST::CmpMap>

  $cmpMap = new Starlink::AST::CmpMap( $map1, $map2, $series, $options );

=item B<Starlink::AST::Channel>

The astChannel contructor takes a hash argument. There are no
mandatory keys to the hash. Sink and Source callbacks for the channel
can be supplied using the keys "sink" and "source". All other keys are
expected to correspond to attributes of the channel object
(e.g. Comment, Full and Skip for astChannel).

  $chann = new Starlink::AST::Channel( %options );

  $chann = new Starlink::AST::Channel( sink => sub { print "$_[0]\n"; } );

The "sink" callback expects to be given a single argument as a string.
The "source" callback takes no arguments and should return a single string.

=item B<Starlink::AST::FitsChan>

Same calling signature as C<Starlink::AST::Channel>.

=item B<Starlink::AST::XmlChan>

Same calling signature as C<Starlink::AST::Channel>. Note that xmlChan
is only available for AST v3.1 and newer.

=item B<Starlink::AST::GrisMap>

Only available in AST v3.0 and newer.

  $grismMap = new Starlink::AST::GrisMap( $options );

=item B<Starlink::AST::IntraMap>

Not Yet Implemented.

 $intraMap = new Starlink::AST::IntraMap( $name, $nin, $nout, $options );

=back

=head2 Base class methods

These methods will work on all classes of AST objects.

=head2 Mapping methods

TODO

=head2 FrameSet methods

TODO

=head1 EXCEPTIONS

Rather than using the C<astOK> function provided to the C interface
(which is not thread safe) AST errors are converted to Perl exceptions
(currently croaks) which can be caught with an eval.

=head1 TODO

 + Convert AST croaks to true exceptions of class Starlink::AST::Error

 + Tidy up the interfaces to the constructors

 + Properly document the Perl interface

 + Finalise the interface

=head1 SEE ALSO

The AST library can be downloaded from http://www.starlink.ac.uk/ast

=head1 AUTHOR

Tim Jenness E<lt>tjenness@cpan.orgE<gt>

Copyright (C) 2004 Tim Jenness. All Rights Reserved.

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful,but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 59 Temple
Place,Suite 330, Boston, MA  02111-1307, USA

=cut

# Channels need a wrapper

package Starlink::AST::Channel;

sub new {
  # This should work for FitsChan and Channel and XmlChan
  my $class = shift;
  my %args = @_;
  my ($sink, $source);

  # sink and source are special. All others are attributes

  # Stuff the callbacks in the object [if we were paranoid we would provide
  # methods to obtain the attribute keys]
  if (exists $args{sink} ) {
    $sink = $args{sink};
    delete $args{sink};
  }
  if (exists $args{source} ) {
    $source = $args{source};
    delete $args{source};
  }

  # Convert all remaining options to comma separated string
  my @options;
  for my $k (keys %args ) {
    push(@options, "$k=$args{$k}");
  }
  my $options = "";
  $options = join(",",@options) if @options;

  # Call the underlying routine
  # Pass in sink and source functions. Can be undef.
  my $self = $class->_new( $source, $sink, $options );

  return $self;
}

package Starlink::AST::FitsChan;
use base qw/ Starlink::AST::Channel /;

package Starlink::AST::XmlChan;
use base qw/ Starlink::AST::Channel /;

# Exception handling

package Starlink::AST::Status;

# This is called via the ASTCALL C macro
# Arguments are : status value and a reference to an array
# containing the message stack

sub ThrowError {
  my $status = shift;
  my $err = shift;
  my $str = join("\n",map { "- $_" } @$err) . "\n";
  # This should throw an appropriate exception
  # for now just croak
  Carp::croak( $str );
}

# All the inheritance stuff

package Starlink::AST;

# Looks like AST is smart enough to figure out whether we want to SetC(),
# SetD() or SetI() all on its own, ditto for GetC(), GetD() or GetI(). We
# can therfore write generic Set() and Get() perl wrapper that ignore the
# underlying strict typing (and also take hash/list as areguements). This
# is much more Perl like than would otherwise be the case.
sub Set {
  my $self = shift;
  
  # Original code, using the lower lever _Set method. Provide the sprintf 
  # functionality in the Perl side since it is easier than doing it in C 
  # [but causes a problem if the string includes a comma]
  #
  #my $string = shift;
  #
  # token substitution if we have more arguments
  #
  #$string = sprintf($string, @_) if @_;
  #return $self->_Set( $string );
  
  if ( $_[0] =~ "=" ) {
     $self->_Set( $_[0] );
  } else {
     my %hash = @_;
     foreach my $key ( sort keys %hash ) {
        $self->SetC( $key, $hash{$key} );
     }   
  }
  return;
  
}

sub Get {
  my $self = shift;
  my @strings = @_;
  
  my %hash;
  foreach my $i ( 0 ... $#strings ) {
     $hash{$strings[$i]} = $self->GetC( $strings[$i] );
  }  
  return wantarray ? %hash : $hash{$strings[0]};
    
}

# Rebless cloned/copied object into the original class
sub Clone {
  my $self = shift;
  my $new = $self->_Clone();
  return bless $new, ref($self);
}

sub Copy {
  my $self = shift;
  my $new = $self->_Clone();
  return bless $new, ref($self);
}

# Converts a generic Starlink::AST object into the true
# underlying class. Useful when we have extracted a pointer
# from AST but do not yet know what type of object it is

sub _rebless {
  my $self = shift;
  my $ast_class = $self->GetC( "Class" );
  my $perl_class = "Starlink::AST::" . $ast_class;
  return bless $self, $perl_class;
}

package Starlink::AST::Axis;
use base qw/ Starlink::AST /;

package Starlink::AST::SkyAxis;
use base qw/ Starlink::AST::Axis /;

package Starlink::AST::Channel;
use base qw/ Starlink::AST  /;

# Need to rebless objects obtained from an astRead into the
# correct class rather than generic variant.

sub Read {
  my $self = shift;
  my $new = $self->_Read();
  return if !defined $new;
  return if ! keys %$new; # Nothing returned from FitsChan
  return $new->_rebless();
}


package Starlink::AST::FitsChan;
use base qw/ Starlink::AST::Channel /;

package Starlink::AST::XmlChan;
use base qw/ Starlink::AST::Channel /;

# Not clear why we need this class in the Perl API since we can
# just use a perl hash
package Starlink::AST::KeyMap;
use base qw/ Starlink::AST /;

# Need to convert the returned object(s) into a real object(s)

sub MapGet0A {
  my $self = shift;
  my $obj = $self->_MapGet0A( $_[0] );
  return if !defined $obj;
  return $obj->_rebless();
}

sub MapGet1A {
  my $self = shift;
  my @obj = $self->_MapGet1A( $_[0] );
  return map { $_->_rebless() } @obj;
}

package Starlink::AST::Mapping;
use base qw/ Starlink::AST /;

package Starlink::AST::CmpMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::DssMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::LutMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::GrismMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::IntraMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::MathMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::MatrixMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::PcdMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::PermMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::PolyMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::RateMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::ShiftMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::SlaMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::SphMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::SpecMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::UnitMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::WcsMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::WinMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::ZoomMap;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::Frame;
use base qw/ Starlink::AST::Mapping /;

package Starlink::AST::Region;
use base qw/ Starlink::AST::Frame /;

package Starlink::AST::Circle;
use base qw/ Starlink::AST::Region /;

package Starlink::AST::Ellipse;
use base qw/ Starlink::AST::Region /;

package Starlink::AST::Box;
use base qw/ Starlink::AST::Region /;

package Starlink::AST::FluxFrame;
use base qw/ Starlink::AST::Frame /;

package Starlink::AST::FrameSet;
use base qw/ Starlink::AST::Frame /;

sub FindFrame {
  my $self = shift;
  my $string = shift;
  
  my $frame = undef;
  my $number = $self->Get( 'Nframe' );
  foreach my $i ( 0 ... $number ) { 
      my $tmp_frame = $self->GetFrame( $i );
      if ( $tmp_frame->Get('Domain') eq $string ) {
         $frame = $tmp_frame;
      }        
  } 
  
  return $frame;
}
  
package Starlink::AST::Plot;
use base qw/ Starlink::AST::FrameSet /;

sub new {
  my $class = shift;
  my @args = @_;
 
  my $gbox = $args[1];
  my $pbox = $args[2];
    
  # Call the underlying routine
  my $self = $class->_new( @args );

  $self->{_xglo} = $$gbox[0] if defined $$gbox[0];
  $self->{_xghi} = $$gbox[2] if defined $$gbox[1];
  $self->{_yglo} = $$gbox[1] if defined $$gbox[2];
  $self->{_yghi} = $$gbox[3] if defined $$gbox[3];
  
  $self->{_xplo} = $$pbox[0] if defined $$pbox[0];
  $self->{_xphi} = $$pbox[2] if defined $$pbox[1];
  $self->{_yplo} = $$pbox[1] if defined $$pbox[2];
  $self->{_yphi} = $$pbox[3] if defined $$pbox[3];

  return $self;
}

sub GBox {
  my $self = shift;
  if( @_ ) { 
     my $gbox = shift;
     $self->{_xglo} = $$gbox[0];
     $self->{_xghi} = $$gbox[2];
     $self->{_yglo} = $$gbox[1];
     $self->{_yghi} = $$gbox[3];
  }
  return ($self->{_xglo}, $self->{_xghi}, $self->{_yglo}, $self->{_yghi} );
}

sub PBox {
  my $self = shift;
  if( @_ ) { 
     my $pbox = shift;
     $self->{_xplo} = $$pbox[0];
     $self->{_xphi} = $$pbox[2];
     $self->{_yplo} = $$pbox[1];
     $self->{_yphi} = $$pbox[3];
  }
  return ($self->{_xplo}, $self->{_xphi}, $self->{_yplo}, $self->{_yphi} );
}

sub GFlush {
  my $self = shift;
  if (@_) { $self->{_gflush} = shift; }
  return $self->{_gflush};
}

sub GLine {
  my $self = shift;
  if (@_) { $self->{_gline} = shift; }
  return $self->{_gline};
}

sub GQch {
  my $self = shift;
  if (@_) { $self->{_gqch} = shift; }
  return $self->{_gqch};
}

sub GMark {
  my $self = shift;
  if (@_) { $self->{_gmark} = shift; }
  return $self->{_gmark};
}

sub GText {
  my $self = shift;
  if (@_) { $self->{_gtext} = shift; }
  return $self->{_gtext};
}

sub GTxExt {
  my $self = shift;
  if (@_) { $self->{_gtxext} = shift; }
  return $self->{_gtxext};
}

sub GAttr {
  my $self = shift;
  if (@_) { $self->{_gattr} = shift; }
  return $self->{_gattr};
}

sub GScales {
  my $self = shift;
  if (@_) { $self->{_gscales} = shift; }
  return $self->{_gscales};
}

sub GCap {
  my $self = shift;
  if (@_) { $self->{_gcap} = shift; }
  return $self->{_gcap};
}

# Foreign graphics object (e.g. a Tk canvas) to be passed
# as first argument to the registered plot callbacks.
sub GExternal {
  my $self = shift;
  if (@_) { $self->{_gexternal} = shift; }
  return $self->{_gexternal};
}

# Nullify graphic callbacks

sub null {
  my $self = shift;
  $self->GFlush( undef );
  $self->GLine( undef );
  $self->GQch( undef );
  $self->GMark( undef );
  $self->GText( undef );
  $self->GTxExt( undef );
  $self->GAttr( undef );
  $self->GScales( undef );
  $self->GCap( undef );

}

sub __dumpargs {
  my $call = shift;
  print "Args for $call: ". Data::Dumper::Dumper(\@_);
}

# Callbacks to plotting system that dump input arguments

sub debug {
  my $self = shift;
  $self->GFlush( sub {&__dumpargs("GFlush",@_); return 1; });
  $self->GLine( sub {&__dumpargs("GLine",@_);   return 1; });
  $self->GQch( sub {&__dumpargs("GQch",@_ );    return (1,1,1); });
  $self->GMark( sub {&__dumpargs("GMark",@_);   return 1; });
  $self->GText( sub {&__dumpargs("GText",@_);   return 1; });
  $self->GTxExt( sub { &__dumpargs("GTxExt",@_);return (1,[1,1,1,1],
							[1,1,1,1]); });
  $self->GAttr( sub { &__dumpargs("GAttr",@_);  return (1,1);} );
  $self->GScales( sub { &__dumpargs("GAttr",@_);  return (1,1,1);} );
  $self->GCap( sub { &__dumpargs("GAttr",@_);  return (1);} );

}

package Starlink::AST::CmpFrame;
use base qw/ Starlink::AST::Frame /;

package Starlink::AST::SkyFrame;
use base qw/ Starlink::AST::Frame /;

package Starlink::AST::SpecFrame;
use base qw/ Starlink::AST::Frame /;

package Starlink::AST::DSBSpecFrame;
use base qw/ Starlink::AST::SpecFrame /;

package Starlink::AST::SpecFluxFrame;
use base qw/ Starlink::AST::CmpFrame /;

1;
