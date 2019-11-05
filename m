Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B9CF01D3
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 16:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdnzgIFl8z5z71qZx56w7OsOpTmnqYaxiS0GMflhXug=; b=rw2hm9waPj9MZ2
	R5wsSufzj8BNl0QY0CU46xlinZJQ2ldtx57P8EGmS/859EhrfdWYQmogRgChsmc9rUKMmV4kHnEMW
	F2wa2NVYnG97T7C0X6s/OymIka42DldYaKznVYMI1qWE11FPMKtLCdUIpYL09bYO+iT1OqZ387lUk
	ur1m+rpWDqc0FaxFXvUTc2Ko4bqq1OekSk91DynL37ALY5pzvv7pijZ//RvDBioTRsYlaUMryV4MV
	MtzyB0PiHG/OAOvOPWTwKodtrTBVN0cmXXWMdtFnXJPI3ktDDbS+WT387VLMbbHKbrrfgnxyj8PIS
	0quVX++Zmc396x1BKt1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS135-0004hs-Qu; Tue, 05 Nov 2019 15:47:15 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS12x-0004gs-JM
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 15:47:10 +0000
Received: from [IPv6:2001:41b8:83c:fa01:157c:afba:5cc1:a85] (unknown
 [IPv6:2001:41b8:83c:fa01:157c:afba:5cc1:a85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 0DB60222E7;
 Tue,  5 Nov 2019 16:47:01 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <012e01d593e2$1ced66b0$56c83410$@adrianschmutzler.de>
From: David Bauer <mail@david-bauer.net>
Openpgp: id=D70432697B7C4C27380FCDA3BAB39714B4A4B878
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
Message-ID: <25f488ab-9cc5-8393-8273-542b431a8368@david-bauer.net>
Date: Tue, 5 Nov 2019 16:46:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <012e01d593e2$1ced66b0$56c83410$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_074707_935270_D1B83495 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Broken WiFi on QCA9533 rev. 2
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

during the CPE210v2 bringup it was discovered that the CPE210 has the wrong bootstrap option set
for it's 25 MHz reference clock. Because of this, the device was originally not even booting with ar71xx.

On ath79, the reference clock is not detected based on the bootstrap option, but set by the DTS.
The twist however is the ath9k driver, whose OF patch still reads this register. [0]

On ar71xx, the platform data was always set to true for the QCA9533 [1]

So you can try to force the settings for 25MHz reference clock for all QCA953x regardless of the bootstrap
settings to keep the behavior in line with ar71xx.

I have no device to verify this, however it's a good candidate for the root cause. ;)

[0] https://github.com/openwrt/openwrt/blob/master/package/kernel/mac80211/patches/ath/552-ahb_of.patch#L237
[1] https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/patches-4.14/620-MIPS-ath79-add-support-for-QCA953x-SoC.patch#L260

Best wishes
David

On 11/5/19 3:05 PM, Adrian Schmutzler wrote:
> Hi,
> 
> for quite some time already we are struggling with broken WiFi on some TP-Link CPE devices having QCA9533 rev. 2 (QCA9533-BL3A SOC) in common.
> 
> I'd be happy on some help here, since I've exhausted my debugging capabilities.
> 
> 
> 1. Symptoms: WiFi looks up on the device, some TX traffic is shown in ifconfig, RX is zero. The AP cannot be found by clients. "iw dev wlan0 scan" returns nothing.
> 
> 2. Affected devices: TP-Link CPE210 v2/v3, CPE220 v3 (all QCA9533 rev. 2?); no other QCA9533 devices known to be affected (specific to CPE or to QCA9533 rev. 2?)
> 
> 3. For a certain model, there are devices which are working correctly and others which don't. There is no known indicator to find out whether a device works or not. The state of a device does not change as far as we know (always working or never working).
> 
> 4. So far, only 2.4 GHZ-only devices were affected
> 
> 5. There is no diagnostic output that indicates a WiFi problem. dmesg/logread look normal, there is no difference when compared between working and not-working devices (despite RX=0/scan as stated above)
> 
> 6. The problem seems to be present from the beginning (device support patches), it just has been overlooked since it's not occurring on every device.
> 
> 7. The ar71xx firmware for all devices works flawlessly, so it is an ath79-specific problem.
> 
> 
> Other findings that might be connected or not:
> 
> a. On ath79 phy0 uses irq=11/irq=12 and on ar71xx irq=47. eth0 uses irq=4 on both targets.
> 
> b. The following gpio is only found on ar71xx: gpio-495 ( |ath9k-phy0 ) in lo
> 
> 
> I currently own a CPE210v2 with the bug and can test suggestions (if I'm capable of implementing them).
> There is a device support PR for the CPE220 v3 suffering from the same problem: https://github.com/openwrt/openwrt/pull/2514
> 
> Despite, further reading may be found in forum discussion and bug report:
> https://bugs.openwrt.org/index.php?do=details&task_id=2333
> https://bugs.openwrt.org/index.php?do=details&task_id=2478
> https://forum.openwrt.org/t/ath79-tp-link-cpe210-v2-0-wifi-not-working/40666
> 
> Initial support for CPE210 v2/v3 was done by me and bluelineXY, both already involved in the discussion. ;-)
> 
> Thanks for any hints!
> 
> Adrian
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
