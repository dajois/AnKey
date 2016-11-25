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

my $cnt = 1;

=pod
my $ques = values();
print "--------Hello, Ankey-------\n\n";
print "What is the meaning of this word ?\n $cnt : $ques => ";


my $input = <STDIN>;
chomp $input;
my $ans = $data->{one};

if ($input eq $ans){
	print "OK!\n";
}else{
       	print "NG!\n";
	}

=cut
