package Starlink::AST::Tk;

use strict;
use vars qw/ $VERSION /;
use constant R2D     => 57.29578;        # Radians to degrees factor
use constant FLT_MAX => 3.40282347e+38;  # Maximum float on ix86 platform

use Tk;
use Starlink::AST;
use Carp;

'$Revision$ ' =~ /.*:\s(.*)\s\$/ && ($VERSION = $1);

=head1 NAME

Starlink::AST::Tk - AST wrapper to the Tk library

=head1 SYNOPSIS

   use Starlink::AST::Tk

The main methods which need to be registered with the AST package
are shown below,

   $status = _GFlush( $w );
   $status = _GLine( $w, \@x, \@y );
   $status = _GMark( $w, \@x, \@y, $type );
   $status = _GText( $w, $text, $x, $y, $just, $upx, $upy );
   ( $status, $xb, $yb ) = _GTxtExt( $w, $text, $x, $y, $just, $upx, $upy );
   ( $status, $chv, $chh ) = _GQch( $w );
   ( $status, $old_value ) = _GAttr( $w, $attr, $value, $prim );

The following helper methods are also provided,

   my ( $status, $alpha, $beta ) = _GAxScale()

=head1 DESCRIPTION
  
This file implements the low level graphics functions required by the rest
of AST, by calling suitable Tk::Canvas functions. In all the routines $w
is a reference to the Tk::Canvas object on which we're plotting.

=head1 NOTES

All the functions in this module are private, and are intended to be called
from the AST module. None of these functions should be considered to be part
of the packages public interface.

=head1 REVISION

$Id$

=head1 METHODS

=over 

=item B<_GFlush>

This function ensures that the display device is up-to-date, by flushing 
any pending graphics to the output device.

   my $status = _GFlush( $w );

=cut

sub _GFlush {
   my $canvas = shift;
   
   $canvas->update();
   return 1;
}

=item B<_GLine>

This function displays lines joining the given positions.

   my $status = _GLine( $w, \@x, \@y );

=cut

sub _GLine {
   my ( $canvas, $xf, $yf ) = @_;
   
   if( scalar(@$xf) > 1 && scalar(@$xf) == scalar(@$yf) ) {

      my $xmax = $canvas->cget( '-width' );
      my $ymax = $canvas->cget( '-height' );
        
      my ( @x, @y, @points);
      foreach my $i ( 0 ... $#$xf ) {
         $x[$i] = $$xf[$i]*$xmax;
         $y[$i] = (1 - $$yf[$i])*$ymax;   
         push @points, $x[$i];
         push @points, $y[$i];
      }
      $canvas->createLine( @points );
   }   
   return 1;
}

=item B<_GMark>

This function displays markers at the given positions.

   my $status = _GMark( $w, \@x, \@y, $type );

where $type is an integer used to indicate the type of marker required.

=cut

sub _GMark {
   my ( $canvas, $xf, $yf, $type ) = @_;
 
   if( scalar(@$xf) >= 1 && scalar(@$xf) == scalar(@$yf) ) {
      
      my ( @x, @y );
      foreach my $i ( 0 ... $#$xf ) {
                     
         my $xmax = $canvas->cget( '-width' );
         my $ymax = $canvas->cget( '-height' );
         
         # multiple the current co-ordinate
         $x[$i] = $$xf[$i]*$xmax;
         $y[$i] = (1 - $$yf[$i] )*$ymax;
                  
         # basic scaling factor
         my $scale = $xmax/500;
         
         # scaling for rectangles
         if ( $type == 0 || $type == 6 ) {
           $scale = $scale;
         } elsif ( $type == 19 ) {
           $scale = 2*$scale;
           
         # scaling fpor circles  
         } elsif ( $type == 20 ) {
           $scale = $scale; 
         } elsif ( $type == 21 ) {
           $scale = 2*$scale; 
         } elsif ( $type == 22 ) {
           $scale = 3*$scale; 
         } elsif ( $type == 23 ) {
           $scale = 4*$scale; 
         } elsif ( $type == 24 ) {
           $scale = 5*$scale; 
         } elsif ( $type == 25 ) {
           $scale = 6*$scale; 
         } elsif ( $type == 26 ) {
           $scale = 7*$scale; 
         } elsif ( $type == 27 ) {
           $scale = 9*$scale; 
         }    
         
         my $x1 = $x[$i] - $scale*Starlink::AST::Grf::GRF__SIZE();
         my $y1 = $y[$i] - $scale*Starlink::AST::Grf::GRF__SIZE();
         my $x2 = $x[$i] + $scale*Starlink::AST::Grf::GRF__SIZE();
         my $y2 = $y[$i] + $scale*Starlink::AST::Grf::GRF__SIZE(); 

         # RECTANGLE
         if ( $type == 0 || $type == 6 | $type == 19 ) {
            $canvas->createRectangle( $x1, $y1, $x2, $y2 );
         
         # CIRCLE
         } if ( $type >= 20 && $type <= 27 ) {
            $canvas->createOval( $x1, $y1, $x2, $y2 );
         
         }

      }
   }
   return 1;
}

=item B<_GText>

This function displays a character string $text at a given position using 
a specified justification and up-vector.

   my $status = _GText( $text, $x, $y, $just, $upx, $upy );

where $x is the reference x coordinate, $y is the reference y coordinate, 
and where $just is a character string which specifies the location within
the text string which is to be placed at the reference position given by x
and y. The first character may be 'T' for "top", 'C' for "centre", or 'B'
for "bottom", and specifies the vertical location of the reference position.
Note, "bottom" corresponds to the base-line of normal text. Some characters 
(eg "y", "g", "p", etc) descend below the base-line. The second  character
may be 'L' for "left", 'C' for "centre", or 'R'  for "right", and specifies
the horizontal location of the  reference position. If the string has less
than 2 characters then 'C' is used for the missing characters.

And $upx is the x component of the up-vector for the text, in graphics
world coordinates. If necessary the supplied value should be negated to
ensure that positive values always refer to displacements from  left to
right on the screen.

While $upy is the y component of the up-vector for the text, in graphics
world coordinates. If necessary the supplied value should be negated to
ensure that positive values always refer to displacements from  bottom to
top on the screen.

=cut

sub _GText {
   croak( "_GText: Not yet implemented");
   
}            


=item B<_GAxScale>

This function returns two values (one for each axis) which scale
increments on the corresponding axis into a "normal" coordinate system in
which: The axes have equal scale in terms of (for instance) millimetres
per unit distance, X values increase from left to right and the Y values 
increase from bottom to top.

   my ( $status, $alpha, $beta ) = _GAxScale( $w )

=cut

sub _GAxScale {
   croak( "_GAxScale: Not yet implemented");
   
}       


=item B<_GTxExt>

This function returns the corners of a box which would enclose the 
supplied character string if it were displayed using astGText. The 
returned box INCLUDES any leading or trailing spaces.

   my ( $status, $xb, $yb ) = _GTxtExt( $w, $text, $x, $y, $just, $upx, $upy);

where $x is the reference x coordinate, $y is the reference y coordinate, 
and where $justification is a character string which specifies the
location within the text string which is to be placed at the reference
position given by x and y. The first character may be 'T' for "top", 'C'
for "centre", or 'B' for "bottom", and specifies the vertical location of
the reference position. Note, "bottom" corresponds to the base-line of
normal text. Some characters  (eg "y", "g", "p", etc) descend below the
base-line. The second  character may be 'L' for "left", 'C' for "centre",
or 'R'  for "right", and specifies the horizontal location of the 
reference position. If the string has less than 2 characters then 'C' is
used for the missing characters. 

And $upx is the x component of the up-vector for the text, in graphics
world coordinates. If necessary the supplied value should be negated to
ensure that positive values always refer to displacements from  left to
right on the screen.

While $upy is the y component of the up-vector for the text, in graphics
world coordinates. If necessary the supplied value should be negated to
ensure that positive values always refer to displacements from  bottom to
top on the screen.

Finally $xb is a refernce to an array of 4 elements in which to return the
x coordinate of each corner of the bounding box, and $yb is a reference to
an array of 4 elements in which to return the y coordinate of each corner
of the bounding box.

Notes:
     -  The order of the corners is anti-clockwise (in world coordinates)
        starting at the bottom left.
     -  A NULL value for "just" causes a value of "CC" to be used.
     -  Both "upx" and "upy" being zero causes an error.
     -  Any unrecognised character in "just" causes an error.
     -  Zero is returned for all bounds of the box if an error occurs.

=cut

sub _GTxtEx {
    croak( "_GTxtExt: Not yet implemented");
   
}          

=item B<_GQch>

This function returns the heights of characters drawn vertically and
horizontally in world coordinates.

   my ( $status, $chv, $chh ) = _GQch( $w );

Where $chv is a reference which is to receive the height of characters 
drawn with a vertical baseline. This will be an increment in the X axis.

Where $chh is a reference which is to receive the height of characters 
drawn with a horizontal baseline. This will be an increment in the Y axis.

=cut

sub _GQch {
   croak( "_GQch: Not yet implemented");
    
}   


=item B<_GAttr>

This function returns the current value of a specified graphics
attribute, and optionally establishes a new value. The supplied
value is converted to an integer value if necessary before use.


   my ( $status, $old_value ) = _GAttr( $w, $attr, $value, $prim );

Where $attr is an integer value identifying the required attribute. 
The following symbolic values are defined in the AST grf.h:

           GRF__STYLE  - Line style.
           GRF__WIDTH  - Line width.
           GRF__SIZE   - Character and marker size scale factor.
           GRF__FONT   - Character font.
           GRF__COLOUR - Colour index.

$value is a new value to store for the attribute. If this is 
AST__BAD no value is stored, and $old_value is a scalar containing
the old attribute value, if this is NULL no value is returned. 
 
Finally $prim is the sort of graphics primitive to be drawn with 
the new attribute. Identified by the following values defined in 
AST's grf.h:

           GRF__LINE
           GRF__MARK
           GRF__TEXT

=cut

sub _GAttr {
   #croak( "_GAttr: Not yet implemented");
   my ( $canvas, $attr, $value, $prim ) = @_;
   print "_GAttr: Placeholder routine called\n";
   return ( 1, undef );
}   

=back

=head1 COPYRIGHT

Copyright (C) 2004 University of Exeter. All Rights Reserved.

This program is free software; you can redistribute it and/or modify 
it under the terms of the GNU Public License.

=head1 AUTHORS

Alasdair Allan E<lt>aa@astro.ex.ac.ukE<gt>,

=cut

package Starlink::AST::Plot;

use strict;
use vars qw/ $VERSION /;

use Starlink::AST::Tk;

sub tk {
  my $self = shift;
  my $canvas = shift;
  
  $self->GExternal( $canvus );
  $self->GFlush(\&Starlink::AST::Tk::_GFlush);  
  $self->GLine(\&Starlink::AST::Tk::_GLine);
  $self->GMark(\&Starlink::AST::Tk::_GMark);
  $self->GText(\&Starlink::AST::Tk::_GText);
  $self->GTxExt(\&Starlink::AST::Tk::_GTxExt);
  $self->GQch(\&Starlink::AST::Tk::_GQch);
  $self->GAttr(\&Starlink::AST::Tk::_GAttr);
  
  return 1; 
}

1;
