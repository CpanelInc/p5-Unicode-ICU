#!/usr/bin/env perl

# Copyright 2022 by cPanel, L.L.C.
# https://cpanel.net
#
# This is free software. You can redistribute it and/or modify it under the
# same terms as Perl itself. See https://perldoc.perl.org/perlartistic.

use strict;
use warnings;

use Test2::V0;
use Test2::Plugin::NoWarnings;

use Unicode::ICU;

like( Unicode::ICU::ICU_VERSION, qr<[0-9]>, 'ICU_VERSION' );

done_testing;
