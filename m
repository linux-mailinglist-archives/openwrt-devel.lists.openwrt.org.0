Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E422414D480
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 01:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqqCyTvul+aT5RfnIn87Gfsr8qmSseZ0IEIqjJaCKws=; b=GZo+bx29gJXIbp
	uGEoHFZ4HpRtZZq9V+SGIrlR1Uj7enfmTF5SRVLRnYvGSYs8Rf2wyM+BKQmN2x2fwgMqoh8Zkgdi/
	mJe33YK+Tcl3RwJ77K8931ijyQzrRlxc+KMtnlyjHttoxIEQYVJbcpe6mzQkIkGtb+Y3tINtHxrcR
	/RPUJ88Y4ajN3/ZfbFaL27ExWwus1ckaEywqWaSk2gcUidz1ZS34qGwmh6t2JPboB2M9iDbZ5lA0g
	/ObWBDIUVQQ/jhjvknOEkEDH0spoCfe7VyjkSc2dousTo4Llg1MiToNDasThNn62Jj3lGbPWyjqa1
	gWVzuCaH3Z4jyk7eFH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwxRW-0004Ay-2u; Thu, 30 Jan 2020 00:12:22 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iwxRE-0003zv-5R
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 00:12:07 +0000
Received: from [IPv6:2003:e5:3f16:8100:6ced:46b7:d126:e2]
 (p200300E53F1681006CED46B7D12600E2.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f16:8100:6ced:46b7:d126:e2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 1045C22F46;
 Thu, 30 Jan 2020 01:11:59 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <ff0f9266-0fa9-1bf5-66f3-dfd76699a136@david-bauer.net>
 <003401d5d6ab$fd4532e0$f7cf98a0$@adrianschmutzler.de>
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
Message-ID: <9c9d3030-6cf1-3107-3de0-9adb920e75d0@david-bauer.net>
Date: Thu, 30 Jan 2020 01:11:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <003401d5d6ab$fd4532e0$f7cf98a0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_161204_547510_891623C1 
X-CRM114-Status: GOOD (  15.77  )
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
Cc: drvlabo@gmail.com, 'openwrt-devel' <openwrt-devel@lists.openwrt.org>,
 achterin@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

On 1/29/20 2:57 PM, Adrian Schmutzler wrote:
> Hi,
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of David Bauer
>> Sent: Dienstag, 28. Januar 2020 21:05
>> To: drvlabo@gmail.com; achterin@googlemail.com; openwrt-devel <openwrt-
>> devel@lists.openwrt.org>
>> Subject: [OpenWrt-Devel] Netgear R6260 EEPROM location
>>
>> Hi,
>>
>> while testing my shiny  new NETGEAR R6260 with OpenWrt, i was experiencing
>> very bad
>> reception as well as throughput. Upon closer inspection, it turns out that the
>> EEPROM
>> is read from an incorrect offset. The Offset positions here are:
>>
>>  - 0x28000 for 5GHz
>>  - 0x20000 for 2.4GHz
> 
> Have you checked partitioning? This might just be a wrong position for the
> factory partition as well.

Yes, I've checked the partitioning (and it is off). However, I still opted to push the
other fix, as I'm unsure whether or not the partition mapping is off for all boards or only
my specific R6260, as the partition map seems to stored on the device in the SC_PART_MAP
partition instead of the kernel. So it could be entirely possible, that this differs between
different models, thus we would never have a "correct" partition mapping.

However, in this case WiFi would have been broken for the beginning. But as the R6260 was introduced
as "Same board, different labling", i count the chance of WiFi being broken from the beginning as
high, especially as the Radio transmits, but VHT modes are nonsense and throughput is abysmal.

See /proc/mtd below - partitions are in order:

# cat /proc/mtd
dev:    size   erasesize  name
mtd0: 00100000 00020000 "Bootloader"
mtd1: 00100000 00020000 "SC_PART_MAP"
mtd2: 00400000 00020000 "Kernel"
mtd3: 02800000 00020000 "Rootfs"
mtd4: 00200000 00020000 "English UI"
mtd5: 00220000 00020000 "ML1"
mtd6: 00200000 00020000 "ML2"
mtd7: 00200000 00020000 "ML3"
mtd8: 00200000 00020000 "ML4"
mtd9: 00200000 00020000 "ML5"
mtd10: 00200000 00020000 "ML6"
mtd11: 00200000 00020000 "ML7"
mtd12: 00200000 00020000 "ML8"
mtd13: 00200000 00020000 "ML9"
mtd14: 00200000 00020000 "ML10"
mtd15: 00200000 00020000 "ML11"
mtd16: 00200000 00020000 "Factory"
mtd17: 00220000 00020000 "SC Private Data"
mtd18: 00200000 00020000 "POT"
mtd19: 00200000 00020000 "Traffic Meter"
mtd20: 00200000 00020000 "SC PID"
mtd21: 00200000 00020000 "SC Nvram"
mtd22: 00200000 00020000 "Ralink Nvram"
mtd23: 00200000 00020000 "Reserved Block1"
mtd24: 00200000 00020000 "Reserved Block2"
mtd25: 00200000 00020000 "Reserved Block3"
mtd26: 00200000 00020000 "Reserved Block4"
mtd27: 00200000 00020000 "Reserved Block5"
mtd28: 02140000 00020000 "Reserved Block6"

So I'm waiting on feedback from other owners of these boards and using this
(more or less) strange fix in the meantime.

Best wishes
David

> 
> Best
> 
> Adrian
> 
>>
>> Can someone confirm these offsets on their boards? Maybe this is wrong not
>> only on
>> the R6260, but also on the R6350 and R6850.
>>
>> Best wishes
>> David
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
