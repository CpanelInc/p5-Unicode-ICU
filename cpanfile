# Copyright 2022 by cPanel, L.L.C.
# https://cpanel.net
#
# This is free software. You can redistribute it and/or modify it under the
# same terms as Perl itself. See https://perldoc.perl.org/perlartistic.

configure_requires 'ExtUtils::MakeMaker::CPANfile', 0;
configure_requires 'ExtUtils::PkgConfig', 0;

requires 'X::Tiny', 0.21;
requires 'parent';

test_requires 'Test2::V0';
test_requires 'Test2::Tools::Compare', '0.000138';
test_requires 'Test2::Plugin::NoWarnings';
test_requires 'Test2::Tools::Explain';
