package Test2::Require::RealFork;
use strict;
use warnings;

use base 'Test2::Require';

our $VERSION = '0.000064';

use Test2::Util qw/CAN_REALLY_FORK/;

sub skip {
    return undef if CAN_REALLY_FORK;
    return "This test requires a perl capable of true forking.";
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Test2::Require::RealFork - Skip a test file unless the system supports true
forking

=head1 DESCRIPTION

It is fairly common to write tests that need to fork. Not all systems support
forking. This library does the hard work of checking if forking is supported on
the current system. If forking is not supported then this will skip all tests
and exit true.

=head1 SYNOPSIS

    use Test2::Require::RealFork;

    ... Code that forks ...

=head1 SEE ALSO

=over 4

=item L<Test2::Require::Canfork>

Similar to this module, but will allow fork emulation.

=item L<Test2::Require::CanThread>

Skip the test file if the system does not support threads.

=back

=cut
