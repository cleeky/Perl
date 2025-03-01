#!/usr/bin/perl

use strict;
use warnings;
use XML::LibXML;

Sub Get_XML_Tag {
	#The Paramater list as follows 1st XMLData - loaded data from the XML File
	#                              2nd Key - The path of the key in the XML File
	#                              3rd Mulitiple Vales Flag
	
	local $xmlDoc = @_[0];
	local $Key = @_[1];
	local $MultiFlag = @_[2];
	
	
	if ($xmlDoc eq "" || $Key eq "" ) {return;}
	#if XML Data or the Key is missing then return nothing
	
	if ( $MultiFlag ne "Y" ) {
		#process single key value
		
	} else {
		#process Multi Key values
		
	}
	
	
}
	

print "Hello World";