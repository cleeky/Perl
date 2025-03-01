#!/usr/bin/perl

my $code = "ABCD34";
my $transdate = "20170309";

# sprintf "%-10s%-10s%-8s" the first feild is setto 10 Length pas with spaces, second to 20 length pad with spaces and thrid variable to 8 length
my $output = sprintf "%-10s%-20s%-8s", $code, "..........", $transdate;


print '1234567890' x 5;
print $output;

