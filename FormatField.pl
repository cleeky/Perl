#!/usr/bin/perl

use strict;
use warnings;

my $current_position = 3;
my $output;
my $record_line;
$record_line="1U";

$output = FormmatField ($current_position,3,6,"ABC23");
$current_position=$output;
$current_position=~ s/\|.*//g;
$output =~ s/^.*\|//g;
$record_line.=$output;
$output =FormmatField ($current_position,30,5,"123");
$current_position=$output;
$current_position=~ s/\|.*//g;
$output =~ s/^.*\|//g;
$record_line.=$output;
$output =FormmatField ($current_position,35,5,"XX XX");
$current_position=$output;
$current_position=~ s/\|.*//g;
$output =~ s/^.*\|//g;
$record_line.=$output;

print "************ RESULT ************","\n";
print "         1         2         3         4","\n";
print "1234567890123456789012345678901234567890","\n";
print $record_line,"\n";


sub FormmatField {
    my($cpos, $fpos, $flen, $field) = @_;
    my $return_string="";
    if ($cpos ne $fpos) {
        do {
          $return_string.=" ";
          $cpos+=1;  
        } until ($cpos eq $fpos);
    }
    if (length($field)>$flen){
        #if the feild is bigger than the feild throw error
        die "Field length exceeds the defined field size '$field'."
    }elsif (length($field)<$flen){
        #Pad the field out with triling spaces
        my $blanks=$flen-length($field);
        $return_string.=$field." "x $blanks;
        $cpos=$fpos+$flen;
    }else{
        #Just add the field
        $return_string.=$field;
        $cpos=$fpos+$flen;
    }
    return $cpos."|".$return_string;
}