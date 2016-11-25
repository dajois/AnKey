#!/usr/bin/env perl

use strict;
use YAML::Tiny;
use Data::Dumper;
use utf8;
binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

my $yaml = YAML::Tiny->new;
my $read = $yaml->read( 'data.yaml' );
my $data = $read->[0];

print Dumper($data);

