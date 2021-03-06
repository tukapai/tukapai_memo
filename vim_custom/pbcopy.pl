#!/usr/bin/env perl
use strict;
use warnings;
use MIME::Base64;
use Encode;
binmode STDIN, ':encoding(utf8)';

my $input = do {
    local $/;
    <STDIN>;
};
$input =~ s/ \n+ \z//xsm;
$input = encode_base64( encode('cp932', $input), q{} );

print "\e]52;;$input\e\\";