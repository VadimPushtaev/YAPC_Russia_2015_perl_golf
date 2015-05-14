#!/usr/bin/env perl

use strict;
use warnings;

my @results;

opendir(my $solutions_dir, 'solutions') or die "Can't open solutions/: $!";
while (my $script = readdir($solutions_dir)) {
  my $failed = int(`perl t/spiral.t $script 2>/dev/null >&2; echo \$?`);
  next unless $script =~ /[.]pl$/;

  push(@results, {
    name => $script,
    ok => !$failed,
    length => script_length($script),
  });
}

my @sorted_results = sort cmp_results @results;

foreach my $result (@sorted_results) {
  if ($result->{ok}) {
   print(join("\t", $result->{length}, $result->{name}) . "\n");
  }
  else {
    print(join("\t", 'FAILED', $result->{name}) . "\n");
  }
}

sub cmp_results {
  my $ok_cmp = $b->{ok} <=> $a->{ok};

  if ($ok_cmp == 0) {
    return $a->{length} <=> $b->{length};
  }
  else {
    return $ok_cmp;
  }
}

sub script_length {
  my ($script) = @_;

  my $file = "solutions/$script";

  open(my $fh, '<', $file) or die "Could not open $file: $!\n";
  my $content = join('', <$fh>);

  $content =~ s/\#! ?\S+\s?//;
  $content =~ s/\s*\z//;

  return length($content);
}
