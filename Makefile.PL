# This -*- perl -*- script makes the Makefile
# $Id: //depot/asn/Makefile.PL#5 $

use 5.005;
use ExtUtils::MakeMaker;

WriteMakefile(
  VERSION_FROM  => 'TFTP.pm',
  NAME          => 'Net::TFTP',
  BUILD_REQUIRES => {
	            'Test::More' => 0.8701,
                     'Test::MockModule' => 0,
                     'Test::Warn' => 0,
	            },
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (
      META_MERGE => {
        resources => {    ##
          repository => 'http://github.com/gbarr/perl-net-tftp',
        },
      }
      )
    : ()
  ),
);


