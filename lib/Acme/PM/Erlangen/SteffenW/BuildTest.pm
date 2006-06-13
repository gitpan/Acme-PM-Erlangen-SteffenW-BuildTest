package Acme::PM::Erlangen::SteffenW::BuildTest;

use 5.006;
use strict;
use warnings;

our $VERSION = 0.001;

sub new { (bless \do{my $scalar}, shift)->set(shift); }

sub set { ${$_[0]} = $_[1]; $_[0] }

sub get { ${$_[0]} }

1;

__END__

=head1 NAME

Acme::PM::Erlangen::SteffenW::BuildTest - create a CPAN Module using Module::Build on Win32-Systems

=head1 SYNOPSIS

=head2 Sample 1: like function

 use strict;
 use warnings;

 use Acme::PM::Erlangen::SteffenW::BuildTest;

 my $obj       = Acme::PM::Erlangen::SteffenW::BuildTest->new(123);
 my $scalar123 = $obj->get();
 my $obj_copy  = $obj->set(456);
 my $scalar456 = $obj->get();

=head1 DESCRIPTION

Some tests before are better then too many test for real modules.

=head1 METHODS

=head2 new

=head2 set

=head2 get

=head1 AUTHOR

Steffen Winkler, E<cpan@steffen-winkler.de>;

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Steffen Winkler

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.6.1 or,
at your option, any later version of Perl 5 you may have available.

=cut