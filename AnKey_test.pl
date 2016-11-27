#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use JSON::XS; 

my $json_text = '{"spam": "egg"}';
my $obj = decode_json($json_text);

print $obj->{'spam'}, "\n"; # => 'egg'

$json_text = encode_json($obj);


print $json_text, "\n"; # => '{"spam":"egg"}'
