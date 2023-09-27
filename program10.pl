#!/usr/bin/perl
use strict;
use warnings;

my $filename = "example.txt";

# Writing to a file
open(my $file_handle, '>', $filename) or die "Could not open file: $!";
print $file_handle "Hello, File!\n";
close($file_handle);

# Reading from a file
open($file_handle, '<', $filename) or die "Could not open file: $!";
while (<$file_handle>) {
    print $_;
}
close($file_handle);
