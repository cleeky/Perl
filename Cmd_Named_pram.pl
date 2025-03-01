#!/bin/perl

use strict;
use warnings;
use 5.010;
use Getopt::Long qw(GetOptions);
Getopt::Long::Configure qw (gnu_getopt);
use Data::Dumper;

# see https://metacpan.org/pod/Getopt::Long   - for further details


my $source_address="Marvin";
my $debug;
GetOptions(
	'form|f=s' => \$source_address,	#name|N is is the param name then pipe with single letter for short cut
	'debug|d' => \$debug,
) or die "Usage: $0  --debug --form NAME\n";
say $debug ? 'debug' : 'no debug';
if ($source_address) {
	say $source_address;
}
print Dumper \@ARGV;