package Encode::Base58::GMP;
use strict;
use warnings;
use 5.008_009;
our $VERSION   = '0.09';

use base         qw(Exporter);
our @EXPORT    = qw(encode_base58 decode_base58);
our @EXPORT_OK = qw(base58_flickr_to_gmp base58_gmp_to_flickr md5_base58);

use Digest::MD5  qw(md5_hex);
use Math::GMPz   qw(Rmpz_get_str);
use Scalar::Util qw(blessed);

sub encode_base58 {
  my ($int, $alphabet) = @_;

  my $base58 = blessed($int) && $int->isa('Math::GMPz') ?
    Rmpz_get_str($int, 58) :
    Rmpz_get_str(Math::GMPz->new($int), 58);

  $alphabet && lc $alphabet eq 'gmp' ?
    $base58 :
    base58_gmp_to_flickr($base58);
}

sub decode_base58 { 
  my ($base58, $alphabet) = @_;

  unless ($alphabet && lc $alphabet eq 'gmp') {
    $base58 = base58_flickr_to_gmp($base58) 
  }

  Math::GMPz->new($base58, 58);
}

sub base58_gmp_to_flickr {
  my $base58 = shift||'';
  $base58    =~ y|0-89A-JK-XYZa-fg-kl-v|1-9ab-km-zABC-HJ-NP-Z|;
  $base58;
}

sub base58_flickr_to_gmp {
  my $base58 = shift||'';
  $base58    =~ y|1-9ab-km-zABC-HJ-NP-Z|0-89A-JK-XYZa-fg-kl-v|;
  $base58;
}

sub md5_base58 {
  encode_base58('0x'.md5_hex(shift), shift);
}

1;

# ABSTRACT: High speed Base58 encoding using GMP with BigInt and MD5 support

=head1 NAME

Encode::Base58::GMP - High speed Base58 encoding using GMP with BigInt and MD5 support

=head1 SYNOPSIS

  use Encode::Base58::GMP;

  # Encode Int as Base58
  encode_base58(12345);                        # => 4ER string
  encode_base58('0x3039');                     # => 4ER string
  encode_base58(Math::GMPz->new('0x3039'));    # => 4ER string

  # Encode Int as Base58 using GMP alphabet
  encode_base58(12345,'gmp')                   # => 3cn string

  # Decode Base58 as Math::GMPz Int
  decode_base58('4ER');                        # => 12345 Math::GMPz object
  int decode_base58('4ER');                    # => 12345 integer

  # Decode Base58 as Math::GMPz Int using GMP alphabet
  decode_base58('3cn','gmp');                  # => 12345 Math::GMPz object

  # MD5 Base58 Digest
  md5_base58('foo@bar.com');                   # => w6fdCRXnUXyz7EtDn5TgN9

  # Convert between Flickr and GMP
  base58_flickr_to_gmp('123456789abcdefghijk') # => 0123456789ABCDEFGHIJ
  base58_gmp_to_flickr('0123456789ABCDEFGHIJ') # => 123456789abcdefghijk

=head1 DESCRIPTION

Encode::Base58::GMP is a Base58 encoder/decoder implementation using the GNU
Multiple Precision Arithmetic Library (GMP) with transcoding between
GMP and Flickr Base58 implementations.

The default (aka Flickr) implementation is a modification of the [0-9a-zA-Z]
Base62 alphabet excluding [0OIl] to improve human readability.

The GMP implementation uses the [0-9A-Za-v] alphabet.

A md5_base58 function is included to provide MD5 digests.

=head2 Requirements

This module requires GMP 4.2.0 and above. Prior versions are limited to Base36.

Perl 5.8.9 or above is required to ensure proper bigint handling. If you are not
using bigint numbers, it may be possible to skip the bigint tests and do a force
install; however, lower Perl versions are not supported.

=head1 FUNCTIONS

=head2 encode_base58 ( $number [, $alphabet ] )

This routine encodes a $number in Base58. $number can be a Math::GMPz object
or a binary, octal, decimal or hexidecimal number. Binary, octal and hexidecimal
string literals must be prefixed with 0[Bb]/0/0[Xx] respectively. The Flickr
alphabet is used unless $alphabet is set to 'gmp'.

=head2 decode_base58 ( $base58 [, $alphabet ] )

This routine decodes a Base58 value and returns a Math::GMPz object. Use int
on the return value to convert the Math::GMPz object to an integer.
The Flickr alphabet is used unless $alphabet is set to 'gmp'.

=head2 base58_flickr_to_gmp( $base58_as_flickr )

This routine converts a Flickr Base58 string to a GMP Base58 string. This
routine is not exported by default.

=head2 base58_gmp_to_flickr( $base58_as_gmp )

This routine converts a GMP Base58 string to a Flickr Base58 string. This
routine is not exported by default.

=head2 md5_base58( $data [, $alphabet ] )

This routine returns a MD5 digest in Base58. This routine is not exported
by default.

=head1 SEE ALSO

L<Encode::Base58>, L<Encode::Base58::BigInt>, L<Math::GMPz>, L<Digest::MD5>

L<http://www.flickr.com/groups/api/discuss/72157616713786392/>

L<https://rubygems.org/gems/base58_gmp> (Base58 using GMP in Ruby)

L<http://marcus.bointon.com/archives/92-PHP-Base-62-encoding.html> (Base62 using GMP in PHP)

=head1 AUTHOR

John Wang <johncwang@gmail.com>, L<http://johnwang.com> 

=head1 COPYRIGHT AND LICENSE (The MIT License)

Copyright (c) 2011 John Wang

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
