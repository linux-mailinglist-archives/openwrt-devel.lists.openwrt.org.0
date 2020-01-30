Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FF914E540
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 23:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CA5YK/kZrSlNJRHYVbCQ5Fs4DALM9wEddzPe9gN7I8=; b=hw8pFKnX+HplXm
	iANiUlUxFjCgHOr/eG1FkwoTDDJRkEjq4eDdnFG25f0xlE8hLhUBdoO1OMK44R/EbvTvJV6m8aT2M
	X2cEqap2A/1b9Ij7t+mRGDoF4bGC0eopGEcp/+8nCW8nMZy20dD9z/r2PftMj1HaPGeql3PPsszcA
	h0Awcyd0bSWiP6y48AuNlXxeG1x1mg8ZLJ1lOT2cn5U6zV3M39WvE18BOXnktRNrH7MpBZX1HpAxE
	+xCjXVQWMw9d2VZA7sexv3a9C1G/ukDe3JkB+oDJUWBfiNF+lcpOMTtMA51j6Z8dDwGgMzHxSo0tF
	0qT2D90pgJYpZy5aBpLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixHrX-0007Dr-Qe; Thu, 30 Jan 2020 22:00:35 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ixHrR-0006xK-55
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 22:00:31 +0000
Received: from [IPv6:2003:e5:3f0b:9f00:6ced:46b7:d126:e2]
 (p200300E53F0B9F006CED46B7D12600E2.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0b:9f00:6ced:46b7:d126:e2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id B5C5B22ECE;
 Thu, 30 Jan 2020 23:00:24 +0100 (CET)
To: Piotr Dymacz <pepe2k@gmail.com>
References: <ff0f9266-0fa9-1bf5-66f3-dfd76699a136@david-bauer.net>
 <003401d5d6ab$fd4532e0$f7cf98a0$@adrianschmutzler.de>
 <9c9d3030-6cf1-3107-3de0-9adb920e75d0@david-bauer.net>
 <cb333805-1ef0-dcb5-7345-d4e2325c7118@david-bauer.net>
 <07a233ae-5c76-8319-1b1b-9dde65f23ef0@gmail.com>
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
Message-ID: <993ee10a-9108-271d-072f-8f4420be7dde@david-bauer.net>
Date: Thu, 30 Jan 2020 23:00:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <07a233ae-5c76-8319-1b1b-9dde65f23ef0@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_140029_508787_23424F87 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Netgear R6260 EEPROM location
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
Cc: Robert <piotr_pan@o2.pl>, drvlabo@gmail.com,
 Adrian Schmutzler <mail@adrianschmutzler.de>, achterin@googlemail.com,
 Mathias Kresin <dev@kresin.me>,
 'openwrt-devel' <openwrt-devel@lists.openwrt.org>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Piotr,

On 1/30/20 12:57 PM, Piotr Dymacz wrote:
>> I'm still waiting for him to send ma a photo of the routers backside, but it seems
>> we have to dynamically detect the partition map of the devices. I'll look into the
>> SC_PART_MAP partition and the routers GPL code to find a possible solution for this
>> problem.
> 
> There was some work with custom 'SC_PART_MAP' mtd parser back in 2018 but mapping used in vendor firmware didn't match what was in flash, see: [0] and also [1] about 'different' R6220 models.
Yup, I've vaguely remembered following this discussion back then. I've just tried to catch
up on this topic and it seems my problem is connected with bad NAND blocks.

My OpenWrt bootlog shows this:

[    3.153100] Bad eraseblock 396 at 0x000003180000
[    3.204465] Bad eraseblock 578 at 0x000004840000

Which would explain, why the "SC Private Data" and "ML1" partitions have different sizes.
However, this would somewhat match the remap misbehavior, which we previously had issues
with on the R6220. This got eventually fixed, as it's not the NAND drivers job to shift
on bad blocks.

The factory firmware did not remap partitions on the R6220, while it
seems it does so on the R6260. Correct me if i got this wrong here.

Also, this would mean Netgear takes bad blocks into account when writing the calibration
data to NAND, correct?

What i do not understand: Blocks can go bad in operation (not common, but possible) -
for the R6260, this would mean the blocks are shifted once more, thus the factory
partition is not at the same offset?

I assume, if we want to fix this we need to do this from userspace, as either place
in the kernel seems wrong. Implementing it on the mtd layer is obviously wrong,
as it would mean breaking the wireless as soon as a block preceding the factory
partition goes bad.

If I'm wrong in any of my assumptions, please correct me ;)

Best wishes
David

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
