#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

use XML::LibXML;

my $filename = 'playlist.xml';

my $dom = XML::LibXML->load_xml(location => $filename);

foreach my $movie ($dom->findnodes('//movie')) {
    say 'Title:    ', $movie->findvalue('./title');
    say 'Director: ', $movie->findvalue('./director');
    say 'Rating:   ', $movie->findvalue('./mpaa-rating');
    say 'Duration: ', $movie->findvalue('./running-time'), " minutes";
    my $cast = join ', ', map {
        $_->{name};
    } $movie->findnodes('./cast/person');
    say 'Starring: ', $cast;
    say "";
}