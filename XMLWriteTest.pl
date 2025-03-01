use strict;
use warnings;
use XML::LibXML;
use XML::Writer;

my $filename = "C:\\Users\\colin\\OneDrive\\Documents\\Perl\\test.xml";

my $parser = XML::LibXML -> new;
my $doc = $parser->parse_file($filename);

my $root = $doc->getDocumentElement();

my $new_element=$doc->getDocumentElement("script");
$new_element->appendAttribute('name', 'test2.pl');
$new_element->appendAttribute('sum', '788y89843h');

$root->appendChild($new_element);

print $root->toString(1);