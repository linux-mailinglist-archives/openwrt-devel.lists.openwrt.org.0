Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ECAD57A0
	for <lists+openwrt-devel@lfdr.de>; Sun, 13 Oct 2019 21:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N21ZyZjcPPa6D+/M3Gj15VFefmR5agkEjgqnTwQIGtA=; b=iEoeWejB+uOg6a
	KRoOCFYhPUxX4Cfyqp9BQ/YYDmhqb2NKbRhB6vD1r70emn/VcrEUm24tG1ERMVTGd2nFoZ/FI/Nd6
	7UHFWVCsEkvJoPc1Xc4tbzf1m3wHxQVaSZ4nGL33a14ujRsbakJnqZTJVqghDUmjmuKJnvgIPDa0e
	n6pPu7AOn3jNdSrvY7igUmXhJAmW8CbkpczA+uE2mmcH4Q2GT2Rp0416GN4TayMe4ISJ591FUA4C7
	ngV32qMADv6CP0TvqJSAG6p8lwxcDuzLDCEqc5u0EE8UFbo6H7L9+Z1P/15JWpxPjM5XGoCemr1/a
	ToTOOKMzyj3fH0dNW0IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJjIQ-0005Se-75; Sun, 13 Oct 2019 19:12:50 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJjIJ-0005HH-1V
 for openwrt-devel@lists.openwrt.org; Sun, 13 Oct 2019 19:12:45 +0000
Received: from [IPv6:2003:e5:3f3d:8800:fa46:7a90:13ec:5c89]
 (p200300E53F3D8800FA467A9013EC5C89.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3d:8800:fa46:7a90:13ec:5c89])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 0D92222B1A;
 Sun, 13 Oct 2019 21:12:29 +0200 (CEST)
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
References: <20191011105011.05efbcda@kosmio.komorska>
From: David Bauer <mail@david-bauer.net>
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <501cff5b-efac-8bcf-b895-ce6d8c9b219c@david-bauer.net>
Date: Sun, 13 Oct 2019 21:12:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191011105011.05efbcda@kosmio.komorska>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_121243_418819_1E8D6B6D 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add AR934x NAND Flash Controller
 driver
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Michal,

On 10/11/19 10:50 AM, Michal Cieslakiewicz wrote:
> This patch contains updated driver for Atheros NAND Flash Controller
> written originally by Gabor Juhos for ar71xx (aka 'ar934x-nfc').
> ath79 version has adapted to work with kernel 4.19 and Device Tree.
> It has also been renamed to 'ar934x-nand' to avoid confusion with
> Near-Field Communication technology.
> Controller is present on Atheros AR934x SoCs and required for accessing
> internal flash storage on routers like Netgear WNDR4300.
> This port preserves all NAND programming code while moving platform
> configuration to Device Tree and replacing some kernel functions marked
> for retirement by 4.19.
> Suitable definition is included in 'ar934x.dtsi' ('nand@1b000200' section).
> 
> Most important changes to ar71xx version are:
> * old kernel sections of code removed
> * 'bool swap_dma' provided by platform data is now set by boolean DT
>   property 'qca,nand-swap-dma'
> * board-supplied (mach-*.c code) platform data removed - its elements
>   become either unused, redundant or replaced by DT methods (like reset)
> * IRQ is reserved by devm_request_irq() so free_irq() is not needed anymore
> * calls to deprecated nand_scan_ident() + nand_scan_tail() function pair
>   replaced by using recommended nand_scan() with attach_chip() callback
> * ECC is set to hardware by default, can be overriden by standard DT
>   'nand-ecc-*' properties (software Hamming or BCH are other options)
> 
> This driver has been successfully tested on Netgear WNDR4300 running
> experimental ath79 OpenWrt master branch.

I've tested your patch on my Aerohive HiveAP-121 (patch to follow).
While it worked most of the times, in around 1 out of 5 boot attempts, the
driver will fail to probe:

[    3.885899] nand: device found, Manufacturer ID: 0xad, Chip ID: 0xf1
[    3.961915] nand: Hynix NAND 128MiB 3,3V 8-bit
[    4.015027] nand: 128 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
[    4.105743] Scanning device for bad blocks
[    4.654817] random: fast init done
[    5.604831] ar934x-nand 1b000200.nand: read operation failed on page 1664
[    5.685985] nand_bbt: can't scan flash and build the RAM-based BBT
[    5.759938] ar934x-nand 1b000200.nand: nand_scan failed, err:-145
[    5.832877] ar934x-nand: probe of 1b000200.nand failed with error -145

I've noticed the reset sequence in ar934x_nfc_hw_init is missing compared to the ar71xx
implementation. Adding this back in, the NAND probes flawlessly (sample size 10).

See my staging tree for my alteration. If you are good with it, i would squash it on your
commit. [0] [1]

Best wishes
David

[0] https://git.openwrt.org/?p=openwrt/staging/blocktrron.git;a=shortlog;h=refs/heads/ath79-nfc
[1] https://git.openwrt.org/?p=openwrt/staging/blocktrron.git;a=commitdiff;h=3621acfec49a40fe115598367d2db92855b98d4f

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
