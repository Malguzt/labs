#!/usr/bin/perl

package File;

sub new {
	my $class = shift;
	$class = ref $class if ref $class;
	my $self = bless {}, $class;
	$self;
}

sub save {
	my $self = shift;

	open my $file, '>', $self->path() or die $!;
	print {$file} $self->datos() or die $!;
	close $file or die $!;
}

1;