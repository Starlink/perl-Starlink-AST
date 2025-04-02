#!perl

# This script includes a Perl implementation of some of the tests from
# ast_tester/testrate.f.

use strict;

use Test::More tests => 1 + 4 + 4;
use Test::Number::Delta;

require_ok('Starlink::AST');

my $m = Starlink::AST::UnitMap->new(2, '');
isa_ok($m, 'Starlink::AST::UnitMap');

my @at = (10.0, 1.2e6);

my $r = $m->Rate(\@at, 1, 1);
delta_ok($r, 1.0, 'UnitMap rate 1, 1');

$r = $m->Rate(\@at, 2, 1);
delta_ok($r, 0.0, 'UnitMap rate 2, 1');

$m->Invert();

$r = $m->Rate(\@at, 1, 1);
delta_ok($r, 1.0, 'UnitMap inverted rate 1, 1');

$m = Starlink::AST::ZoomMap->new(2, 2.0, '');
isa_ok($m, 'Starlink::AST::ZoomMap');

$r = $m->Rate(\@at, 1, 1);
delta_ok($r, 2.0, 'ZoomMap rate 1, 1');

$r = $m->Rate(\@at, 2, 1);
delta_ok($r, 0.0, 'ZoomMap rate 2, 1');

$m->Invert();

$r = $m->Rate(\@at, 1, 1);
delta_ok($r, 0.5, 'ZoomMap inverted rate 1, 1');
