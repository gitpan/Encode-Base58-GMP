use Test::Base;
use Encode::Base58::GMP qw( md5_base58 );

plan tests => 1 * blocks;

run {
    my $block = shift;
    is md5_base58( $block->data ), $block->md5_base58;
};

__DATA__
===
--- data: adam@t1.foobar.com
--- md5_base58: cLyvfgxMmJ4imn6MwxfEzb

===
--- data: alexander@t2.foobar.com
--- md5_base58: gCWkLkBYTJYgudgBCLPME4

===
--- data: alice@t3.foobar.com
--- md5_base58: jbvgmJ6M2f6yqG7BZjyG3V

===
--- data: andrew@t4.foobar.com
--- md5_base58: doB64s8kjip3PpUXfPN5DT

===
--- data: anna@t5.foobar.com
--- md5_base58: 52Aa4kRyEQYYngM2ejsgUG

===
--- data: annabel@t6.foobar.com
--- md5_base58: uvFiDuVaBvRPZmpeMgfFZc

===
--- data: anne@t7.foobar.com
--- md5_base58: p2ixWDwJhR4rLk5Qp8vG3K

===
--- data: anthony@t8.foobar.com
--- md5_base58: cVTPsTPL3XGVGNfguAkKi9

===
--- data: arthur@t9.foobar.com
--- md5_base58: s7MmQ3J7kJdmhs6Dh2iqe5

===
--- data: asher@t10.foobar.com
--- md5_base58: 3AQfYjm3ereVCbk6UiiDpm

===
--- data: atticus@t11.foobar.com
--- md5_base58: 9uNQDKegGRFxssber7iLyd

===
--- data: august@t12.foobar.com
--- md5_base58: opKe6gZux8XrkripZoDKvr

===
--- data: beatrice@t13.foobar.com
--- md5_base58: 47ZoJMfkKPjevMifcE9GMq

===
--- data: benjamin@t14.foobar.com
--- md5_base58: d6nUszRtqn8ZD7ri3AokAP

===
--- data: butch@t15.foobar.com
--- md5_base58: m3DKJwLfHtgm1rGuSgs23s

===
--- data: caroline@t16.foobar.com
--- md5_base58: 8WbKULXo6kwtsHDCHMRDn3

===
--- data: charles@t17.foobar.com
--- md5_base58: p6kBDZhrBNCwQUDyMWAu3J

===
--- data: charlotte@t18.foobar.com
--- md5_base58: 9zKZCLPy2ZM8VRxSY8eHh7

===
--- data: christopher@t19.foobar.com
--- md5_base58: 89Zx7mhbQmGektaWbLTD83

===
--- data: claire@t20.foobar.com
--- md5_base58: jerxFmdFLZdiPTbtAE4RRW

===
--- data: clementine@t21.foobar.com
--- md5_base58: 49mAPwbkPzywjJDjH8fkji

===
--- data: daisy@t22.foobar.com
--- md5_base58: oTcUfyaptjpspnRjisQV4d

===
--- data: daniel@t23.foobar.com
--- md5_base58: e5erPbsJTQRZJ21QAzkM3v

===
--- data: dashiell@t24.foobar.com
--- md5_base58: fU7jgzihYccLdbRkD4p4Dw

===
--- data: david@t25.foobar.com
--- md5_base58: 3gsB9Mcw1KEcX7rnfxCVWs

===
--- data: delilah@t26.foobar.com
--- md5_base58: czpj88sMnUqkcnCF8VjFnt

===
--- data: dexter@t27.foobar.com
--- md5_base58: j4Q5Dtq6s37yzRZhbS5YC9

===
--- data: diana@t28.foobar.com
--- md5_base58: 4agRLH5d8g8fwvfBAvNHU9

===
--- data: dixie@t29.foobar.com
--- md5_base58: gPaJj7frXSX7m25PRnA8MQ

===
--- data: duke@t30.foobar.com
--- md5_base58: 7EUdabgtAcHwsj8AecAifR

===
--- data: edie@t31.foobar.com
--- md5_base58: 839e6nYnuoKeBA2fcFfjuk

===
--- data: edith@t32.foobar.com
--- md5_base58: x5eCBLpMNnkVfdV2hewRZQ

===
--- data: edward@t33.foobar.com
--- md5_base58: xoXUn5zuPWKmDbPKnyHmh6

===
--- data: eleanor@t34.foobar.com
--- md5_base58: jPuNbfoin3kby2MDCd9yUd

===
--- data: eliza@t35.foobar.com
--- md5_base58: tpJVYe8ndsSdQDDXK6RcbD

===
--- data: elizabeth@t36.foobar.com
--- md5_base58: d9JhheywJsX4cdbHHxvE1D

===
--- data: ella@t37.foobar.com
--- md5_base58: wmnv7JjFZXTBdeto9UK51K

===
--- data: elvis@t38.foobar.com
--- md5_base58: 22UQqi4yQMptXqPQFRWA3m

===
--- data: emily@t39.foobar.com
--- md5_base58: 99JVBHbh4yGMah1iuzYW6

===
--- data: emma@t40.foobar.com
--- md5_base58: iPTaT5CfzCkFZyhZn8ZCzM

===
--- data: eve@t41.foobar.com
--- md5_base58: 4vtKxUhbUeVg2V23s97mnL

===
--- data: faith@t42.foobar.com
--- md5_base58: r6oLUF5wZA7LFvXuNibGc1

===
--- data: flora@t43.foobar.com
--- md5_base58: x6iZQGGyxJAisWwHt8x2ek

===
--- data: florence@t44.foobar.com
--- md5_base58: q42bQccuA357rAepcvYjCc

===
--- data: frances@t45.foobar.com
--- md5_base58: srDUk7emsidGNjbLFuYnfK

===
--- data: francis@t46.foobar.com
--- md5_base58: rW8R8bZXJwhhCEYKQCpbPN

===
--- data: frank@t47.foobar.com
--- md5_base58: iDcHArkcoxVyHhCgRruMZW

===
--- data: frederick@t48.foobar.com
--- md5_base58: iEBvmYEvswcsZNpbEJzk7C

===
--- data: george@t49.foobar.com
--- md5_base58: 6kDLTgBZmTdfUrKEsexM1b

===
--- data: georgia@t50.foobar.com
--- md5_base58: a55XavuUnj6Uozu7gPCsLG

===
--- data: grace@t51.foobar.com
--- md5_base58: rnXNjudUh8iU1cFanSmcYr

===
--- data: gus@t52.foobar.com
--- md5_base58: 7aDMJbxRPaaNvKccwX4E8k

===
--- data: harper@t53.foobar.com
--- md5_base58: vZ4AV7onL2p5LRcfUDVuiq

===
--- data: harry@t54.foobar.com
--- md5_base58: az4wXc5RbGtqPVudFwxue6

===
--- data: hazel@t55.foobar.com
--- md5_base58: a1PDVgXfvzj7et4uNajZ6R

===
--- data: helen@t56.foobar.com
--- md5_base58: 21wYy23x9FrFSVTEK5tgM2

===
--- data: henry@t57.foobar.com
--- md5_base58: qQu8GQuD73WamRfkZ97XCx

===
--- data: homer@t58.foobar.com
--- md5_base58: jpVQDxWQk91cAdiEMYfibY

===
--- data: hopper@t59.foobar.com
--- md5_base58: 5Hcu7XohWve1GDMc5v44Tm

===
--- data: hudson@t60.foobar.com
--- md5_base58: 9cGj3mSi8mDP2QLnqXScFC

===
--- data: hugh@t61.foobar.com
--- md5_base58: pptG5q3SGUui2uwGGpcpAE

===
--- data: hugo@t62.foobar.com
--- md5_base58: kY5JTDDXRL8MtZrP4BqjuN

===
--- data: ike@t63.foobar.com
--- md5_base58: sxsMu3s9XDwzEH5ZSUxvbP

===
--- data: india@t64.foobar.com
--- md5_base58: t2Rzr9QNoXwEYr18P9QGft

===
--- data: ione@t65.foobar.com
--- md5_base58: uLeGJWFRpRWwzLbbCHrs3w

===
--- data: irene@t66.foobar.com
--- md5_base58: oV4fFctoDETxRNhyzpsLig

===
--- data: iris@t67.foobar.com
--- md5_base58: q3mKKPV83BrL6Ed7N4tQfB

===
--- data: isla@t68.foobar.com
--- md5_base58: iSG8o3GpnfFxqxRd3NcJeu

===
--- data: ivy@t69.foobar.com
--- md5_base58: cQttt28wtoq3jcGB1zBLVA

===
--- data: jack@t70.foobar.com
--- md5_base58: wxArA8fKvrFgz7W7JpMD9u

===
--- data: jacob@t71.foobar.com
--- md5_base58: bivemVTZPiBZQ38ZzqWrAC

===
--- data: james@t72.foobar.com
--- md5_base58: hNJPaGPKT1YmEHyBkmMsWd

===
--- data: jane@t73.foobar.com
--- md5_base58: mpEHWdfJfvTfbqJedP9ZqE

===
--- data: jean@t74.foobar.com
--- md5_base58: kkY69EJdQohctAsJQMvmuE

===
--- data: jill@t75.foobar.com
--- md5_base58: 5URSdHeFGbtZ7Z35GpUPgB

===
--- data: john@t76.foobar.com
--- md5_base58: 9FtjroUqSCHb2RCGyBqjAT

===
--- data: jonathan@t77.foobar.com
--- md5_base58: 8nHqePr6kErsi8oHtAceLU

===
--- data: joseph@t78.foobar.com
--- md5_base58: kyzmfyyPzCZMeaGnST2Bf2

===
--- data: judith@t79.foobar.com
--- md5_base58: 9r5SHvk4vbxNsahcZ6i2BM

===
--- data: julia@t80.foobar.com
--- md5_base58: mkbZ6sbrx3s5DLceRUhqnX

===
--- data: julian@t81.foobar.com
--- md5_base58: xwao2JiMxHxQbybEMxHUx4

===
--- data: june@t82.foobar.com
--- md5_base58: 2AJRk8P3JCjRnV2SBhptEg

===
--- data: kai@t83.foobar.com
--- md5_base58: qF9STnT3WN9Z5qzSfY85sd

===
--- data: kate@t84.foobar.com
--- md5_base58: uxQaYE2WWsQi1YnNWR5xKF

===
--- data: katherine@t85.foobar.com
--- md5_base58: vcNFyUwtsKgbHtG3zG98Zq

===
--- data: kingston@t86.foobar.com
--- md5_base58: oLvodypvWHCM11xd5xUJGe

===
--- data: laura@t87.foobar.com
--- md5_base58: wj48zQvxTCR9aLk63qV4Kw

===
--- data: lennon@t88.foobar.com
--- md5_base58: ePKh1xSQpgsiz8v8gdACqc

===
--- data: leo@t89.foobar.com
--- md5_base58: cHyotGtfcJnU7VCbJUBecG

===
--- data: leonora@t90.foobar.com
--- md5_base58: g3HEhnT2xUSqqSQdbnBdZT

===
--- data: leopold@t91.foobar.com
--- md5_base58: oJZSBpt8jrai34aqmG49ig

===
--- data: levi@t92.foobar.com
--- md5_base58: vJKcfBSHnwpwZ6g9H29UV9

===
--- data: lila@t93.foobar.com
--- md5_base58: c4gm3ivHspRg9Rj6U11a5

===
--- data: lionel@t94.foobar.com
--- md5_base58: rSeNeb5CwYajNAb8yLrNcp

===
--- data: lola@t95.foobar.com
--- md5_base58: bnkNUMarkMh3TDRtJgBNJE

===
--- data: louis@t96.foobar.com
--- md5_base58: ku1kVEn1Y2hjmTJ3KamydJ

===
--- data: louisa@t97.foobar.com
--- md5_base58: fBQRiZhJLVUxPpwHVjt6qV

===
--- data: luca@t98.foobar.com
--- md5_base58: h9d74J1GYGZ7F9jvJob1ua

===
--- data: lucy@t99.foobar.com
--- md5_base58: 3JAMMqpzhUL1cx9gLAZtAt

===
--- data: luke@t100.foobar.com
--- md5_base58: 78fqBQFx8EBRHhiQdNJvEr

===
--- data: lulu@t101.foobar.com
--- md5_base58: 4Lt6GFG8KwtKDFXxT9ZKZk

===
--- data: madeline@t102.foobar.com
--- md5_base58: x1t6CDsqgVFaYQ8t7c1x3r

===
--- data: magnus@t103.foobar.com
--- md5_base58: jyUa5mGS5qqLWKqdyM2j7M

===
--- data: mamie@t104.foobar.com
--- md5_base58: gon7gmCvbkL1zbyfnU8zki

===
--- data: margaret@t105.foobar.com
--- md5_base58: pCtYEFcXX2ccwAnEy9ypzX

===
--- data: maria@t106.foobar.com
--- md5_base58: vEE2nbqjWK31Mymb5J7JVV

===
--- data: marian@t107.foobar.com
--- md5_base58: oHmtco8KggGsgky3ViPu9h

===
--- data: mark@t108.foobar.com
--- md5_base58: rc5LpJLg4UwdzgxqugrDuq

===
--- data: martha@t109.foobar.com
--- md5_base58: ruTREKhJqfm1t6yLGM9w17

===
--- data: martin@t110.foobar.com
--- md5_base58: e6H2s8W6bTksoVCN86oYGT

===
--- data: mary@t111.foobar.com
--- md5_base58: aQjwtP33evg7HJeoV9NuQ8

===
--- data: matilda@t112.foobar.com
--- md5_base58: pP9mqi9ZCqaBJQf5BP5zHu

===
--- data: matthew@t113.foobar.com
--- md5_base58: iPa4rqs6XBEHXCjjNwfM8X

===
--- data: michael@t114.foobar.com
--- md5_base58: o5v95kkqNSty5naX3RMnc4

===
--- data: millie@t115.foobar.com
--- md5_base58: 6uDWP8ieVow3TMZwNfNAXM

===
--- data: milo@t116.foobar.com
--- md5_base58: 7zFWBQK4DLjR6xKCyZfkfb

===
--- data: minnie@t117.foobar.com
--- md5_base58: eNJD4n4vii5YWpR4zdaJeV

===
--- data: moses@t118.foobar.com
--- md5_base58: rxR5gbUKw3paMpUwtQ1sQA

===
--- data: nathan@t119.foobar.com
--- md5_base58: foGEysvSy36aiXbqwSw8zp

===
--- data: nathaniel@t120.foobar.com
--- md5_base58: 5yoDz6zDST9F3yKyUKKHcN

===
--- data: nicholas@t121.foobar.com
--- md5_base58: 37xHbT6Tzd9KcpPVYQNueA

===
--- data: olive@t122.foobar.com
--- md5_base58: wmyGY8fyaLBg9QXy46mT7R

===
--- data: olivia@t123.foobar.com
--- md5_base58: rR9J61gvnvoL7gPPMSSUnF

===
--- data: orson@t124.foobar.com
--- md5_base58: pYUvs2RzKhJ98mtSWCgdcA

===
--- data: oscar@t125.foobar.com
--- md5_base58: 78znFsuexcTXmP7PxwyE6R

===
--- data: otis@t126.foobar.com
--- md5_base58: 2Q8pdN9AmWg8xi2gp6S1mu

===
--- data: pamela@t127.foobar.com
--- md5_base58: ij9ddEeBWXc8NrjzoxqeeU

===
--- data: patricia@t128.foobar.com
--- md5_base58: sVBFufZC7vbVAra9ZNprvd

===
--- data: patrick@t129.foobar.com
--- md5_base58: 9xLQ7fv3erkjBv6QEa9Ppy

===
--- data: paul@t130.foobar.com
--- md5_base58: 92v4ieSoNv5KAWwqDQaLuv

===
--- data: pearl@t131.foobar.com
--- md5_base58: sMtVHCfgoGsXcFL8P2gEv4

===
--- data: peter@t132.foobar.com
--- md5_base58: aiDSCwedfswZBEk3p93gg4

===
--- data: philip@t133.foobar.com
--- md5_base58: uM6TUDWqaFV8R5htKkpirw

===
--- data: piper@t134.foobar.com
--- md5_base58: gPXui9N46dUHj1BuZeuySk

===
--- data: poppy@t135.foobar.com
--- md5_base58: 9oTgGP72muLRPePw86E7yU

===
--- data: rachel@t136.foobar.com
--- md5_base58: pbSWqcABLnLtYhS6kQPcSP

===
--- data: ray@t137.foobar.com
--- md5_base58: 95eyDfggw9Cw5dwWwbpo58

===
--- data: raymond@t138.foobar.com
--- md5_base58: 6oJHke65wVydRwbmYnWtKD

===
--- data: rebecca@t139.foobar.com
--- md5_base58: qRjaoGKpyGT6SybfEH7wrJ

===
--- data: richard@t140.foobar.com
--- md5_base58: fsXYuV8CYEAqix9P8F9KtS

===
--- data: robert@t141.foobar.com
--- md5_base58: nWzK2fnDPjs2GFX145e3U1

===
--- data: roman@t142.foobar.com
--- md5_base58: 8pF4mTEVEfEfSNFj4bt635

===
--- data: romy@t143.foobar.com
--- md5_base58: bz8Lfj6eSJZZ8PsCqzgiwd

===
--- data: roscoe@t144.foobar.com
--- md5_base58: g4Y22G4JMh5Mp6CWrahtLB

===
--- data: rose@t145.foobar.com
--- md5_base58: 9vEznJvECTphuW57y3shkk

===
--- data: ruby@t146.foobar.com
--- md5_base58: qvdSAt8t8JfoeM1CvoyvZH

===
--- data: rufus@t147.foobar.com
--- md5_base58: fJ3hyQ76sX6QhjJQnxNoyH

===
--- data: ruth@t148.foobar.com
--- md5_base58: semaD6BpBCt2TEHes9FY13

===
--- data: sadie@t149.foobar.com
--- md5_base58: UdfW5bmddDGjpFt1sZzk4

===
--- data: sally@t150.foobar.com
--- md5_base58: eC6eFrxbYxSe8hzLN4aLRu

===
--- data: samuel@t151.foobar.com
--- md5_base58: cyBSm8hBKFDmxS6RTgyxTj

===
--- data: sarah@t152.foobar.com
--- md5_base58: gEvas2eVntU1vMTLAc22ho

===
--- data: scarlett@t153.foobar.com
--- md5_base58: iHE5KNGu64ma8r9VHJAmaQ

===
--- data: sebastian@t154.foobar.com
--- md5_base58: bmymJQ3P3Na95Zea5eqnuQ

===
--- data: silas@t155.foobar.com
--- md5_base58: qTaWjwsxrgCMA1DRaawEtL

===
--- data: simon@t156.foobar.com
--- md5_base58: 4xbnT82V6YswZD8CADhToa

===
--- data: sophia@t157.foobar.com
--- md5_base58: uSsimYXiJfpyVTEniSgdeB

===
--- data: stella@t158.foobar.com
--- md5_base58: uhsAzfPV38gccUsiNNp1Ci

===
--- data: stellan@t159.foobar.com
--- md5_base58: qwmeRueNtTA6BG87X5qfVi

===
--- data: stephen@t160.foobar.com
--- md5_base58: p7LF1KEXBaqcEqqxxFdhLF

===
--- data: sullivan@t161.foobar.com
--- md5_base58: sjbpK5vVjj9HEmFuimqw9S

===
--- data: susannah@t162.foobar.com
--- md5_base58: wzzfj74UJdELhrLBC6qT32

===
--- data: talullah@t163.foobar.com
--- md5_base58: 6Bv5sQYYGgEH8ocfpyVYEM

===
--- data: theo@t164.foobar.com
--- md5_base58: btE6gi4ouzPVVB8vHuuYTz

===
--- data: theodore@t165.foobar.com
--- md5_base58: inuCfNZXhBwqAd3eRdmucu

===
--- data: thomas@t166.foobar.com
--- md5_base58: xo71nBSArfgxTzjbiu2no1

===
--- data: timothy@t167.foobar.com
--- md5_base58: mCpPnySkinUWyL42qxedyd

===
--- data: victor@t168.foobar.com
--- md5_base58: ktKMp7zpvznh9eJe5wpGDP

===
--- data: victoria@t169.foobar.com
--- md5_base58: m2cfi3nqGKGsnaKKZi6Gng

===
--- data: vincent@t170.foobar.com
--- md5_base58: 4zxVvtDST2izRT5agTNDSq

===
--- data: violet@t171.foobar.com
--- md5_base58: mR6C6C3vTeQRW28PfarMW8

===
--- data: virginia@t172.foobar.com
--- md5_base58: sgC4TvD2PvgogA9hg9SXwf

===
--- data: walter@t173.foobar.com
--- md5_base58: tmSRjaqamj5apt2SZ6Q1f1

===
--- data: william@t174.foobar.com
--- md5_base58: 3CxxK9U1RkWKczEon2nEWh

===
--- data: zachary@t175.foobar.com
--- md5_base58: 6PWcERtfib8AGNLQk3SHVT

