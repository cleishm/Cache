=head1 NAME

Cache::Memory::HeapElem - wrapper for Heap::Elem that stores keys

=head1 DESCRIPTION

For internal use by Cache::Memory only.

=cut
package Memory::Cache::HeapElem;

use strict;
use Heap::Elem;
our @ISA = qw(Heap::Elem);

sub new {
    my $class = shift;
    my ($namespace, $key, $value) = @_;
    return bless [ $value, $namespace, $key, undef ], $class;
}

sub val {
    my $self = shift;
    return @_ ? ($self->[0] = shift) : $self->[0];
}

sub namespace {
    my $self = shift;
    return $self->[1];
}

sub key {
    my $self = shift;
    return $self->[2];
}

sub heap {
    my $self = shift;
    return @_ ? ($self->[3] = shift) : $self->[3];
}

sub cmp {
    my $self = shift;
    my $other = shift;
    return $self->[0] <=> $other->[0];
}


1;
__END__

=head1 SEE ALSO

Cache::Memory

=head1 AUTHOR

 Chris Leishman <chris@leishman.org>
 Based on work by DeWitt Clinton <dewitt@unto.net>

=head1 COPYRIGHT

 Copyright (C) 2003 Chris Leishman.  All Rights Reserved.

This module is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND,
either expressed or implied. This program is free software; you can
redistribute or modify it under the same terms as Perl itself.

$Id: HeapElem.pm,v 1.1.1.1 2003-06-05 21:46:10 caleishm Exp $

=cut