#!/usr/bin/env perl

use strict;
use warnings;

my $width = shift;
my $height = shift;
die unless $width && $height;

print Spiral->new($width, $height)->to_string();

package Spiral;

use POSIX qw(ceil);
use List::Util qw(min max);

sub new {
  my ($class, $width, $height) = @_;

  my $obj = bless {
    width  => $width,
    height => $height,
  }, $class;

  $obj->fill();

  return $obj;
}

sub fill {
  my ($self) = @_;

  $self->_prepare_array();

  my $number_of_levels = ceil($self->_min_size / 2);

  my $i = 1;
  foreach my $level (0 .. $number_of_levels - 1) {
    $self->array->[$level]->[$_]               = $i++ for $level .. $width - 1 - $level;
    $self->array->[$_]->[$width - 1 - $level]  = $i++ for $level + 1 .. $height - 1 - $level;

    last if $level == $number_of_levels - 1 && $self->_min_size % 2;

    $self->array->[$height - 1 - $level]->[$_] = $i++ for reverse $level .. $width - 2 - $level;
    $self->array->[$_]->[$level]               = $i++ for reverse $level + 1 .. $height - 2 - $level;
  }

  return;
}

sub width {
  my ($self) = @_;

  return $self->{width};
}

sub height {
  my ($self) = @_;

  return $self->{height};
}

sub array {
  my ($self) = @_;

  return $self->{array};
}

sub to_string {
  my ($self) = @_;

  my $result = '';

  foreach my $row (@{$self->array}) {
    my $column = 0;
    foreach my $cell (@{$row}) {
      my $cell_width = $self->_is_last_column($column)
        ? 0
        : length($self->_max_in_column($column) . ' ');
      $result .= sprintf("%-${cell_width}s", $cell);

      $column++;
    }
    $result .= "\n";
  }

  return $result;
}

sub dump_as_testcase {
  my ($self) = @_;

  require Data::Dumper;
  no warnings 'once';
  local $Data::Dumper::Terse = 1;

  return Data::Dumper::Dumper(
    [$self->width, $self->height, $self->to_string]
  );
}

sub _prepare_array {
  my ($self) = @_;

  unless (defined $self->{array}) {
    my @array;
    push(@array, [(0) x $self->width]) foreach 1 .. $self->height;
  
    $self->{array} = \@array;
  }

  return;
}

sub _min_size {
  my ($self) = @_;

  return min($self->width, $self->height);

  return;
}

sub _max_in_column {
  my ($self, $column) = @_;

  unless (defined $self->{_max_in_column}->{$column}) {
    $self->{_max_in_column}->{$column} = max(
      map
      { $_->[$column] }
      @{$self->{array}}
    );
  }

  return $self->{_max_in_column}->{$column};
}

sub _is_last_column {
  my ($self, $column) = @_;

  return $column == $self->width - 1;
}
