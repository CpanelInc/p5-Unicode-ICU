package Unicode::ICU::X::BadIDN;

use strict;
use warnings;

=encoding utf-8

=head1 NAME

Unicode::ICU::X::BadIDN - Invalid IDN input

=head1 DESCRIPTION

This class indicates that a name given as an IDN was invalid.
It extends L<Unicode::ICU::X::Base>.

=head1 ATTRIBUTES

=over

=item * C<error> - The numeric error from ICU that describes the
validity problem(s). This is a mask of values from

=cut

#----------------------------------------------------------------------

use parent 'Unicode::ICU::X::Base';

use Unicode::ICU::IDN;

sub _new {
    my ($class, $given, $errnum) = @_;

    my @labels = Unicode::ICU::IDN::get_error_labels($errnum);

    return $class->SUPER::_new("Bad IDN given (@labels)", error => $errnum);
}

=head1 COPYRIGHT & LICENSE

Copyright 2022 by L<cPanel, L.L.C.|https://cpanel.net>

This is free software. You can redistribute it and/or modify it
under the same terms as Perl itself. See L<perlartistic>.

=cut

1;
