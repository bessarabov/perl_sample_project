#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use feature 'say';
use utf8;
use open qw(:std :utf8);

use Carp;
use Data::Dumper;

use lib::abs qw(
    ../lib/
);
use Utils;

sub main {

    warn Dumper 'hello';

}
main();
__END__
