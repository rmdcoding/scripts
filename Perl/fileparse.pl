#!/usr/bin/perl

# Parse through a UTF-8 encoded file line by line and print each line
# Good template to build other file parsing ideas off of

use strict;
use warnings;

my $filename = '<-- file name here -->';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $line = <$fh>) {
  chomp $line;
  print "$line\n";
}

