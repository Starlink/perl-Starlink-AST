use strict;
use warnings;
use File::Spec;
use Module::Build;
use vars qw/ %StarConfig /;

# Try looking up the config system
eval "use Starlink::Config qw/ :override :verbose/;";
if ($@) {
  print "Could not find Starlink::Config - using /star\n";
  %StarConfig = (
                 Star_Inc => '/star/include',
                 Star_Lib => '/star/lib',
                );
}

# This is the list of libraries required to use ems
my $astlibs = qx/ast_link -myerr -grf_v5.6/;

die "No AST libraries were found.\n This may imply that the ast_link command is not in your path."
  if $astlibs !~ /./;

my $file = File::Spec->catfile( "lib", "Starlink", "AST.pm" );

my $build = Module::Build->new
  (
   module_name => "Starlink::AST",
   abstract_from => $file,
   license => "gpl",
   author => [
              'Tim Jenness <tjenness@cpan.org>',
             ],
   version_from => $file,
   meta_merge => {
               resources =>  {
                              repository => "git://starlink.jach.hawaii.edu/perl-Starlink-AST.git",
                             },
                },
   recommends => {
                  "Tk" => 0,
                  "Tk::Zinc" => 0,
                  "Astro::FITS::CFITSIO" => 0,
                  "Astro::FITS::Header" => 0,
                 },
   build_requires => {
                      "Test::More" => 0,
                     },
   c_source => [ "src" ],
   extra_compiler_flags => [ "-I$StarConfig{Star_Inc}" ],
   extra_linker_flags =>  "-L$StarConfig{Star_Lib} $astlibs",
  );

$build->create_build_script;

