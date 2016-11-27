#!/usr/bin/env perl

use strict;
use warnings;
use v5.22;
use Data::Dumper;
use JSON::XS;
use utf8;

open ( my $fh , '<' , 'data.json' ) || die "cannnot open $!" ;
my $data ;
eval {
    local $/ = undef;
    my $json_txt = <$fh>;
    close $fh;
    $data = decode_json ($json_txt);
};

if ( $@ ) {
    print STDERR ( "Invalid JSON text : $`\n" ) ;
    exit 1;
}

print Dump ( $data );
