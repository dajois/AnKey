#!/usr/bin/env perl

use strict;
use YAML::Tiny;
use Data::Dumper;

my $yaml = YAML::Tiny->new;
my $read = $yaml->read( 'data.yaml' );
my $data = $read->[0];
print Dumper($data);

while ( <> ) {
	if ($__== 1){
		print "$read->[0]";
	}}
