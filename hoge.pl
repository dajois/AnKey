#!/usr/bin/env perl

use JSON;
open ( my $fh , '<' , $filepath ) || die "cannot open $!" ; 
my $data ;
eval{ 
	local $/ = undef;
	my $json_txt = <$fh>;
	close $fh;
	$data = decode_json( $json_txt ); 
};
if ( $@ ) {
	print STDERR ( "Invalid JSON text : $@\n" );
	exit 1;
}
