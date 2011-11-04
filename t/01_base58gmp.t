use Test::Base;
use Encode::Base58::GMP;

plan tests => 2 * blocks;

run {
    my $block = shift;
    is encode_base58($block->number,$block->base,$block->use_gmp), $block->short;
    is decode_base58($block->short,$block->base,$block->use_gmp), $block->number;
};

__DATA__
===
--- short: 2
--- number: 1

===
--- short: 2
--- number: 2
--- base: 10
--- use_gmp: 1

===
--- short: nrkMyzsS7w7
--- number: 9235113611380768826

===
--- short: qiqNGFVCn6XWrbVfDEN8Z6
--- number: c4ca4238a0b923820dcc509a6f75849b
--- base: 16
--- use_gmp: 0

===
--- short: qHgBRE77crtf1qscK1riGQ
--- number: c81e728d9d4c2f636f067f89cc14862c
--- base: 16
--- use_gmp: 0

===
--- short: veXjDd3HMGfqiZFppbjAox
--- number: eccbc87e4b5ce2fe28308fd9f2a7baf3
--- base: 16
--- use_gmp: 0

===
--- short: mNP25cxkn3biDAAvRtEag3
--- number: a87ff679a2f3e71d9181a67b7542122c
--- base: 16
--- use_gmp: 0

===
--- short: ug4yqTNQ9Yi86qiHug6xXc
--- number: e4da3b7fbbce2345d7772b0674a318d5
--- base: 16
--- use_gmp: 0

===
--- short: OHOkedraL5tsPArEbck7v5
--- number: c4ca4238a0b923820dcc509a6f75849b
--- base: 16
--- use_gmp: 1

===
--- short: OfFZnc66BPRE0OQBh0PHem
--- number: c81e728d9d4c2f636f067f89cc14862c
--- base: 16
--- use_gmp: 1

===
--- short: TDtIbC2fjeEOHvdNNAIYMV
--- number: eccbc87e4b5ce2fe28308fd9f2a7baf3
--- base: 16
--- use_gmp: 1

===
--- short: Kkl14BVJL2AHbYYTnRc9F2
--- number: a87ff679a2f3e71d9181a67b7542122c
--- base: 16
--- use_gmp: 1

===
--- short: SF3WOpkm8uH75OHfSF5VtB
--- number: e4da3b7fbbce2345d7772b0674a318d5
--- base: 16
--- use_gmp: 1

