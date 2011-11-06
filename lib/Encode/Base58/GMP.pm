package Encode::Base58::GMP;
use strict;
use warnings;
use 5.008_001;
our $VERSION	= '0.04';

use base	qw( Exporter );
our @EXPORT	= qw( encode_base58 decode_base58 );
our @EXPORT_OK	= qw( base58_flickr_to_gmp base58_gmp_to_flickr md5_base58 );

use Digest::MD5	qw( md5_hex );
use Math::GMPz	qw( :mpz );

sub encode_base58 {

	my ( $num, $base, $use_gmp ) = @_;

	$base		= 10 unless $base && $base =~ /^[0-9]+$/;

	my $base58	= Rmpz_get_str( Rmpz_init_set_str( $num, $base ), 58 );

	$use_gmp	? $base58 : base58_gmp_to_flickr( $base58 );
}

sub decode_base58 { 

	my ( $base58, $base, $use_gmp ) = @_;

	$base		= 10 unless $base && $base =~ /^[0-9]+$/;

	$base58		= base58_flickr_to_gmp( $base58 ) unless $use_gmp;

	Rmpz_get_str( Rmpz_init_set_str( $base58, 58 ), $base );
}

sub base58_gmp_to_flickr {

	my $base58	= shift||'';

	$base58		=~ tr|0-89A-JK-XYZa-fg-kl-v|1-9ab-km-zABC-HJ-NP-Z|;

	$base58;
}

sub base58_flickr_to_gmp {

	my $base58	= shift||'';

	$base58		=~ tr|1-9ab-km-zABC-HJ-NP-Z|0-89A-JK-XYZa-fg-kl-v|;

	$base58;
}

sub md5_base58 {

	encode_base58( md5_hex( shift ), 16, shift );

}

1;

# ABSTRACT: High speed Base58 encoding using GMP with BigInt and MD5 support

=head1 NAME

Encode::Base58::GMP - High speed Base58 encoding using GMP with BigInt and MD5 support

=head1 SYNOPSIS

	use Encode::Base58::GMP;

	# Decimal Conversion

	$base58			= encode_base58( $decimal );
	$decimal		= decode_base58( $base58 );

	# Hexidecimal (and Arbitrary Base) Conversion

	$base58			= encode_base58( $hex_string, 16 );
	$hex_string		= decode_base58( $base58, 16 );

	# Using GMP Base58 Strings ( Standard is Flickr )

	$base58_as_gmp		= encode_base58( $decimal, undef, 1 );
	$decimal		= decode_base58( $base58_as_gmp, undef, 1 );

	# Convert between Flickr and GMP

	$base58_as_gmp		= base58_flickr_to_gmp( $base58_as_flickr );
	$base58_as_flickr	= base58_gmp_to_flickr( $base58_as_gmp );

	# Create a Base58 encoded MD5 digest

	$md5_base58		= md5_base58( $data );

=head1 DESCRIPTION

Encode::Base58::GMP is a base58 encoder/decoder implementation using The GNU
Multiple Precision Arithmetic Library (GMP) with transcoding between
GMP and Flickr Base58 implementations.

The default (aka Flickr) usage excludes [0OIl] to improve human readability.

The GMP implementation uses the [0-9A-Za-v] character set.

A md5_base58 function is included to provide MD5 digests.

=head1 FUNCTIONS

=head2 encode_base58 ( $number [, $base, $use_gmp ] )

This routine encodes a $number in Base58. By default, a decimal number is
assumed. If $base is included, the number is treated as a string
representation in that encoding, e.g. 16 for hexadecimal, 10 for decimal.

=head2 decode_base58 ( $base58 [, $base, $use_gmp ] )

This routine decodes a Base58 value and returns a decimal number by default.
If $base is included, the number is returned is encoded as such.

=head2 base58_flickr_to_gmp( $base58_as_flickr )

This routine converts a Flickr Base58 string to a GMP Base58 string. This
routine is not exported by default.

=head2 base58_gmp_to_flickr( $base58_as_gmp )

This routine converts a GMP Base58 string to a Flickr Base58 string. This
routine is not exported by default.

=head2 md5_base58( $data [, $use_gmp ] )

This routine returns a MD5 digest in Base58. This routine is not exported
by default.

=head1 SEE ALSO

L<Encode::Base58>, L<Encode::Base58::BigInt>, L<Math::GMPz>, L<Digest::MD5>

L<http://www.flickr.com/groups/api/discuss/72157616713786392/>

L<http://marcus.bointon.com/archives/92-PHP-Base-62-encoding.html> (Base62 with GMP in PHP)

=head1 AUTHOR

John Wang <john@johnwang.com>

=head1 COPYRIGHT AND LICENSE (The MIT License)

Copyright (c) 2011 John Wang <john@johnwang.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

=cut
