#!/usr/bin/perl
use 5.10.0;
open NAMES, '<', 'C:\Users\colin\Documents\Perl\Names.txt';
@names = <NAMES>;
chomp(@names);

foreach (@names) {
    if (/^fred\p{Space}/) {
        print "$_\n";
    }

}

close NAMES;
