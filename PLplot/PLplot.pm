package Starlink::AST::PLplot;

use strict;
use vars qw/ $VERSION /;
use constant R2D     => 57.29578;        # Radians to degrees factor
use constant FLT_MAX => 3.40282347e+38;  # Maximum float on ix86 platform

# Need plstrl
use Graphics::PLplot 0.03 qw/:all/;
use Starlink::AST;
use Carp;

'$Revision$ ' =~ /.*:\s(.*)\s\$/ && ($VERSION = $1);

=head1 NAME

Starlink::AST::PLplot - AST wrapper to the PLplot library

=head1 SYNOPSIS

   use Starlink::AST::PLplot

The main methods which need to be registered with the AST package
are shown below,

   $status = _GFlush();
   $status = _GLine( \@x, \@y );
   $status = _GMark( \@x, \@y, $type );
   $status = _GText( $text, $x, $y, $just, $upx, $upy );
   ( $status, $xb, $yb ) = _GTxExt( $text, $x, $y, $just, $upx, $upy );
   ( $status, $chv, $chh ) = _GQch();
   ( $status, $old_value ) = _GAttr( $attr, $value, $prim );
   ( $status, $alpha, $beta) = _GScales();

=head1 DESCRIPTION

This file implements the low level graphics functions required by the rest
of AST, by calling suitable PLplot functions.

=head1 NOTES

All the functions in this module are private, and are intended to be called
from the AST module. None of these functions should be considered to be part
of the packages public interface.

=head1 REVISION

$Id$

=head1 METHODS

=over 4

=item B<_GFlush>

This function ensures that the display device is up-to-date, by flushing 
any pending graphics to the output device.

   my $status = _GFlush();

=cut

sub _GFlush {
  plflush();
  return 1;
}

=item B<_GLine>

This function displays lines joining the given positions.

   my $status = _GLine( \@x, \@y );

=cut

sub _GLine {
  my $x = shift;
  my $y = shift;

  if( scalar(@$x) > 1 && scalar(@$x) == scalar(@$y) ) {
    plcol0(1);
    plline( $x, $y );
  }
  _GFlush();
  return 1;
}

=item B<_GMark>

This function displays markers at the given positions.

   my $status = _GMark( \@x, \@y, $type );

where $type is an integer used to indicate the type of marker required.

=cut

sub _GMark {
   my $x = shift;
   my $y = shift;
   my $type = shift;

   if( scalar(@$x) >= 1 && scalar(@$x) == scalar(@$y) ) {
      plcol0(2);
      plpoin( $x, $y, $type );
   }
   _GFlush();
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
   my ( $text, $x, $y, $just, $upx, $upy ) = @_;
   #warn "_GText: not yet implemented for PLplot\n";
   
   # check we have a string to print
   if( defined $text && length($text) != 0 ) {
   
      # validate the justifcation
      my $just1 = substr $just, 0, 1;
      my $just2 = substr $just, 1, 1;
      if ( defined $just && length($just) == 2 ) {
         
        # if we have a bogus justification string default it 
        unless( $just1 =~ /[TBC]/ ) {
           warn "_GText: bad vertical justification defaulting to 'C'\n";
           $just1 = "C";
        }
        unless( $just2 =~ /[LCR]/ ) {
           warn "_GText: bad horizontal justification defaulting to 'C'\n";
           $just2 = "C"; 
        }
      } else {
         warn "_GText: No justification string defaulting to 'CC'\n";
         $just1 = "C";
         $just2 = "C";
      }
      $just = $just1 . $just2;
      
      # get the axis scaling
      my ( $ret, $alpha, $beta ) = _GScales();
      return 0 if $ret == 0;
      
      # If either axis is reversed, reverse the supplied up-vector 
      # components so that they refer to the world-coordinates axes.
      $upx = -$upx if $alpha < 0.0;
      $upy = -$upy if $beta < 0.0;
      
      # Get the angle between the text base-line and horizontal. 
      my $angle = atan2( -$upx*$alpha, $upy*$beta)*R2D;
      
      # Get the fractional horizontal justification as needed by PGPLOT.
      my $fjust;
      if( $just2 eq "L" ) {
        $fjust = 0.0;
      } elsif ( $just2 eq "R" ) {
        $fjust = 1.0;
      } else {
        $fjust = 0.5;
      }
  
      # Unless the requested justification is "Bottom", we need to adjust
      # the supplied reference position before we use it with PGPLOT because
      # PGPLOT assumes "Bottom" justification.
      if( $just1 ne "B" ) {
      
         # Get the bounding box of the string. Note, only the size of the box 
         # is significant here, not its position. Also note, leading and 
         # trailing spaces are not included in the bounding box.
         my ( @xbox, @ybox );
        
         #pgqtxt( $x, $y, $angle, $fjust, $text, \@xbox, \@ybox );
         plptex ( $x, $y, $upy, $upx , $fjust, $text);
         # Normalise the up-vector in world coordinates.
         my $uplen = sqrt( $upx*$upx + $upy*$upy );
         if( $uplen > 0.0 ){ 
            $upx /= $uplen;
            $upy /= $uplen;
         } else {
            ReportGrfError("_GText: Zero length up-vector supplied.");
            return 0;
         }
      }

      # Display the text, erasing any graphics.
      #my $tbg;
      #pgqtbg( $tbg );
      #pgstbg( 0 );
      #pgptxt( $x, $y, $angle, $fjust, $text ); 
      #pgstbg( $tbg );
      plcol0(15);
      plptex ( $x, $y, $upy, -$upx, $fjust, $text);
      
   }
   
   # Return, all is well strangely
   _GFlush();
   return 1;
}

=item B<_GScales>

This function returns two values (one for each axis) which scale
increments on the corresponding axis into a "normal" coordinate system in
which: The axes have equal scale in terms of (for instance) millimetres
per unit distance, X values increase from left to right and the Y values 
increase from bottom to top.

   my ( $status, $alpha, $beta ) = _GScales()

=cut

sub _GScales {
  # Query device for world and viewport coordinates
  my ( $nx1, $nx2, $ny1, $ny2 ) = plgvpd();
  my ( $wx1, $wx2, $wy1, $wy2 ) = plgvpw();

  my ($alpha, $beta);
  if( $wx2 != $wx1 && $wy2 != $wy1 && $nx2 != $nx1 && $ny2 != $ny1 ) {
    $alpha = ( $nx2 - $nx1 ) / ( $wx2 - $wx1 );
    $beta = ( $ny2 - $ny1 ) / ( $wy2 - $wy1 );
  } else {
    ReportGrfError("_GScales: The graphics window has zero size\n");
    return(0);
  }
  return ( 1, $alpha, $beta );
}


=item B<_GTxExt>

This function returns the corners of a box which would enclose the 
supplied character string if it were displayed using astGText. The 
returned box INCLUDES any leading or trailing spaces.

   my ( $status, $xb, $yb ) = _GTxtExt( $text, $x, $y, $just, $upx, $upy);

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

sub _GTxExt {
  my ( $text, $x, $y, $just, $upx, $upy ) = @_;
  #warn "_GTxExt: not yet implemented for PLplot\n";

  # Get the height of the font in world coordinates
  my ($chstat, $chv, $chh) = _GQch();
  return 0 unless Starlink::AST::_OK();

  # Get the length of the string in mm
  my $strlen = Graphics::PLplot::plstrl( $text );
  my $strlenw = mm2world( 1, $strlen);

  # initalise @$xb and @$yb
  my ( @xb, @yb );

  # Kluge - assume text either horizontal or vertical
  if ($upx == 0 ) {
    $xb[0] = $x-($strlenw / 2);
    $yb[0] = $y-($chv / 2);
    $xb[1] = $x-($strlenw / 2);
    $yb[1] = $y+($chv/2);
    $xb[2] = $x+($strlenw/2);
    $yb[2] = $y+($chv/2);
    $xb[3] = $x+($strlenw/2);
    $yb[3] = $y-($chv/2);
  } else {
    $yb[0] = $y-($strlenw / 2);
    $xb[0] = $x-($chv / 2);
    $yb[1] = $y-($strlenw / 2);
    $xb[1] = $x+($chv/2);
    $yb[2] = $y+($strlenw/2);
    $xb[2] = $x+($chv/2);
    $yb[3] = $y+($strlenw/2);
    $xb[3] = $x-($chv/2);
  }


  # Return
  _GFlush();
  return (1, \@xb, \@yb );     
}

=item B<_GQch>

This function returns the heights of characters drawn vertically and
horizontally in world coordinates.

   my ( $status, $chv, $chh ) = _GQch( );

Where $chv is a reference which is to receive the height of characters 
drawn with a vertical baseline. This will be an increment in the X axis.

Where $chh is a reference which is to receive the height of characters 
drawn with a horizontal baseline. This will be an increment in the Y axis.

=cut

sub _GQch {
  # Get the height in millimetres
  my ($def, $ht) = plgchr();

  my $chv = mm2world( 1, $ht );
  my $chh = mm2world( 2, $ht );

  my $status = ( Starlink::AST::_OK() ? 1 : 0 );

  # Return the result in world coordinates
  return ($status,$chv, $chh);
}

=item B<_GAttr>

This function returns the current value of a specified graphics
attribute, and optionally establishes a new value. The supplied
value is converted to an integer value if necessary before use.


   my ( $status, $old_value ) = _GAttr( $attr, $value, $prim );

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

my @gattrs; # Global
sub _GAttr {
  my $att = shift;
  my $val = shift;
  my $prim = shift;
  #print "# _GAttr: Placeholder routine called\n";

  my $MAX_ATTR = 5;
  my $i;
  if ($att == &Starlink::AST::Grf::GRF__STYLE() ) {
    $i = 1;
  } elsif ( $att == &Starlink::AST::Grf::GRF__WIDTH() ) {
    $i = 2;
  } elsif ( $att == &Starlink::AST::Grf::GRF__SIZE() ) {
    $i = 3;
  } elsif ( $att == &Starlink::AST::Grf::GRF__FONT() ) {
    $i = 4;
  } elsif ( $att == &Starlink::AST::Grf::GRF__COLOUR() ) {
    $i = 5;
  } else {
    print "# Bad ATT value: ", $att ."\n";
  }

  my $j;
  if ($prim == &Starlink::AST::Grf::GRF__LINE() ) {
    $j = 1;
  } elsif ($prim == &Starlink::AST::Grf::GRF__MARK() ) {
    $j = 2;
  } elsif ($prim == &Starlink::AST::Grf::GRF__TEXT() ) {
    $j = 3;
  } else {
    print "# Bad PRIM value: $prim\n";
  }

  # Store the new value if required
  # Convert prim and att to index of 2d array
  my $index = ( $MAX_ATTR * ($att - 1) + $prim );
  my $old = $gattrs[$index];
  $old = &Starlink::AST::AST__BAD() if !defined $old;
  $gattrs[$index] = $val if $val != &Starlink::AST::AST__BAD();

  return (1, $old);
}

=item B<_GCap>

This function is called by the AST Plot class to determine if the
grf module has a given capability, as indicated by the "cap"
argument.

  $has_cap = _GCap( $cap, $value );

The capability string should be one of the following constants
provided in the Starlink::AST::Grf namespace:

GRF__SCALES: This function should return a non-zero value if
it implements the astGScales function, and zero otherwise. The
supplied "value" argument should be ignored.

GRF__MJUST: This function should return a non-zero value if
the astGText and astGTxExt functions recognise "M" as a
character in the justification string. If the first character of
a justification string is "M", then the text should be justified
with the given reference point at the bottom of the bounding box.
This is different to "B" justification, which requests that the
reference point be put on the baseline of the text, since some
characters hang down below the baseline. If the astGText or
astGTxExt function cannot differentiate between "M" and "B",
then this function should return zero, in which case "M"
justification will never be requested by Plot. The supplied
"value" argument should be ignored.

GRF__ESC: This function should return a non-zero value if the
astGText and astGTxExt functions can recognise and interpret
graphics escape sequences within the supplied string. These
escape sequences are described below. Zero should be returned
if escape sequences cannot be interpreted (in which case the
Plot class will interpret them itself if needed). The supplied
"value" argument should be ignored only if escape sequences cannot
be interpreted by astGText and astGTxExt. Otherwise, "value"
indicates whether astGText and astGTxExt should interpret escape
sequences in subsequent calls. If "value" is non-zero then
escape sequences should be interpreted by astGText and
astGTxExt. Otherwise, they should be drawn as literal text.

Zero should be returned if the supplied capability is not recognised.

=cut

sub _GCap {
  my $cap = shift;
  my $value = shift;

  # We have got a SCALES routine
  if ($cap == &Starlink::AST::Grf::GRF__SCALES) {
    return 1;
  }
  return 0;
}


# Internal error setting routine
sub ReportGrfError {
  my $text = shift;
  warn "Generated AST error in perl PLplot callback: $text\n";
  Starlink::AST::_Error( &Starlink::AST::Status::AST__GRFER(), $text);
}

# Routine to convert distance in millimetres to world coordinates
#   $dw = mm2world( $axis, $mm )
# Where argument one is "1" for X-axis and "2" for Y-axis.
# Second argument is distance in mm.
# Returns 0 and sets AST status on error

sub mm2world {
  my ($ax, $mm ) = @_;
  return 0 unless Starlink::AST::_OK;

  # page size in millimetres
  my ($mx1,$mx2,$my1,$my2) = plgspa();

  # Size of viewport in world coordinates
  my ($wx1, $wx2, $wy1, $wy2) = plgvpw();

  # now convert distance in mm to world coordinates

  # X direction
  if ($ax == 1) {
    if ($mx1 != $mx2) {
      $mm *= ($wx2 - $wx1 ) / ( $mx2 - $mx1 );
    } else {
      ReportGrfError("astGQch: The graphics viewport has zero size in the X direction.");
      return 0;
    }
  } else {
    # Y direction
    if ($my1 != $my2) {
      $mm *= ($wy2 - $wy1 ) / ( $my2 - $my1 );
    } else {
      ReportGrfError("astGQch: The graphics viewport has zero size in the Y direction.");
      return 0;
    }

  }
  return $mm;

}


=back

=head1 COPYRIGHT

Copyright (C) 2004 Particle Physics and Astronomy Research Council.
All Rights Reserved.

This program is free software; you can redistribute it and/or modify 
it under the terms of the GNU Public License.

=head1 AUTHORS

Brad Cavanagh <b.cavanagh@jach.hawaii.edu>
Alasdair Allan <aa@astro.ex.ac.uk>

=cut


package Starlink::AST::Plot;

use strict;
use vars qw/ $VERSION /;

use Starlink::AST::PLplot;

sub plplot {
  my $self = shift;

  $self->GFlush(\&Starlink::AST::PLplot::_GFlush);
  $self->GLine(\&Starlink::AST::PLplot::_GLine);
  $self->GMark(\&Starlink::AST::PLplot::_GMark);
  $self->GText(\&Starlink::AST::PLplot::_GText);
  $self->GTxExt(\&Starlink::AST::PLplot::_GTxExt);
  $self->GQch(\&Starlink::AST::PLplot::_GQch);
  $self->GAttr(\&Starlink::AST::PLplot::_GAttr);
  $self->GScales(\&Starlink::AST::PLplot::_GScales);
  $self->GCap(\&Starlink::AST::PLplot::_GCap);

  return 1;
}

1;
