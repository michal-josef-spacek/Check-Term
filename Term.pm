package Check::Term;

use parent qw(Exporter);
use strict;
use warnings;

use Readonly;
use Term::Terminfo;

our $ERROR_MESSAGE;
Readonly::Array our @EXPORT_OK => qw(check_term_capability $ERROR_MESSAGE);

our $VERSION = 0.01;

sub check_term_capability {
	my @capabilities = @_;

	my $ti = Term::Terminfo->new;
	foreach my $capability (@capabilities) {
		if (! defined $ti->str_by_varname($capability)) {
			$ERROR_MESSAGE = "Terminal capability '$capability' ins't supported.";
			return 0;
		}
	}

	return 1;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Check::Term - XXX

=head1 SYNOPSIS

 use Check::Term;

 # XXX

=head1 DESCRIPTION

 XXX

=head1 EXAMPLES

=head2 EXAMPLE

 use strict;
 use warnings;

 use Check::Term;

 # XXX

 # Output.
 # TODO

=head1 DEPENDENCIES

 XXX

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Check-Term>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim\@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2026 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.01

=cut
