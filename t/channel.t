#!perl

use strict;
use Test::More tests => 6;
require_ok("Starlink::AST");

# Implement astShow
my $obj = new Starlink::AST::UnitMap( 1, "" );

my $ch = new Starlink::AST::Channel ( sink => sub {print "# $_[0]\n" } );
$ch->Write( $obj );
ok(1, "Write complete");

# Try again, but storing to an array
my @cards;
$ch = new Starlink::AST::Channel ( sink => sub {push(@cards, $_[0]) } );
$ch->Write( $obj );

for (@cards) {
  print "# $_\n";
}
ok( $#cards > -1, "Something present in array");

# And put them back
$ch = new Starlink::AST::Channel( source => sub { return shift(@cards)} );
my $warn = $ch->Warnings();
ok(! defined $warn);

# Insert a line which will generate a warning.
splice @cards, 1, 0, "    UnxpdVal = 1234";

my $newobj = $ch->Read();
isa_ok( $newobj, "Starlink::AST::UnitMap");

$warn = $ch->Warnings();
isa_ok($warn, 'Starlink::AST::KeyMap');
