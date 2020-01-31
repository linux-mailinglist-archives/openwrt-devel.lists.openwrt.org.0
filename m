Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8124614F1CB
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQCSi+O7mMhH/IhnI1PxSBdnEgEkm7OeNOAY/DxTfaE=; b=SBIEvb150QinmK
	kj6mJj+4PJZK7GPWwz/eWjSKPu3cbUS4BjsU5+f057erKR1P3wTpJSraYzVlf8mF6xMNu5gwpv+W6
	YOSeP7jaZSQ6x2i0BE9RQrZJktW5KVPZBq/jNogfcYYc/ion1LS6yJvMtuzo703d8ivTuBZMycV4q
	5zt1v+qmjq07UivE9EiyXszkDf7kU+cIq1dKovZcuN4d9M+G97tGTUYiyiF9T0L5uGcD1dwYMtRmF
	2P+He8fjQjMPH7z+33wRh39skwZbijtwDRoLnke/DK43aQM20epz2SSJNrO21ZmNlz963TR+bYqHy
	ahoKTZE1Ci+KlwKlvmOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixah9-0005Ps-AQ; Fri, 31 Jan 2020 18:07:07 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ixagw-0005Oj-UY
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:06:57 +0000
Received: from [45.140.183.209] (pD9F0FDE8.dip0.t-ipconnect.de
 [217.240.253.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 7134B22ECE;
 Fri, 31 Jan 2020 19:06:51 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <011e01d5d855$de245340$9a6cf9c0$@adrianschmutzler.de>
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
Message-ID: <ce21c0c8-3ef9-e626-05d5-dd3017f91866@david-bauer.net>
Date: Fri, 31 Jan 2020 19:06:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <011e01d5d855$de245340$9a6cf9c0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_100655_291245_A55F32B5 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] ar71xx/ath79: at803x_platform_data: reset_gpio
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

On 1/31/20 5:45 PM, Adrian Schmutzler wrote:
> Hi,
> 
> during support of the Ubiquiti Nanostation Loco XW, we encountered the following
> blocks in ar71xx which are only present for devices not migrated to ath79 yet:
> 
> static struct mdio_board_info ubnt_loco_m_xw_mdio_info[] = {
> 	{
> 		[...]
> 		.platform_data = &ubnt_loco_m_xw_at803x_data,
> 	},
> };
> static struct at803x_platform_data ubnt_loco_m_xw_at803x_data = {
> 	.has_reset_gpio = 1,
> 	.reset_gpio = 0,
> };
> 
> How is this translated into ath79? The Loco XW (just merged to master [1]) seems
> to work well with the setup we have right now, other devices with reset_gpio are
> few:

AFAIR this is due to a hardware bug, which sometimes leads to the PHY ending up in
an unrecoverable state when the link-state changes. I assume, the person who did
the device integration simply did not encounter the bug.

Usage of reset GPIOs is documented here. [0]

> adsc@buildfff:/data/openwrt$ grep -rn "reset_gpio"
> target/linux/ar71xx/files/arch/
> target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:35:   .has_reset_gpio
> = 1,
> target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:36:   .reset_gpio =
> 17,
> target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:48:   .has_reset_gpio
> = 1,
> target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:50:   .reset_gpio =
> 23,
> target/linux/ar71xx/files/arch/mips/ath79/mach-ubnt-xm.c:485:   .has_reset_gpio
> = 1,
> target/linux/ar71xx/files/arch/mips/ath79/mach-ubnt-xm.c:486:   .reset_gpio = 0,
> target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c:124: .has_reset_gpio
> = 1,
> target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c:126: .reset_gpio =
> FRITZ450E_GPIO_PHY_RESET,

At least for the AVM Repeater 450E, the reason is simple: EVA puts the PHY in reset.
As the subsystem can handle reset-gpio handling, this is the preferred way of
pulling the device out of reset.

Can't speak about the other boards though. The bug on the Nanostation is not quite common,
as only the AR8030 (a FE-PHY) is affected.

[0] https://elixir.bootlin.com/linux/v4.19.100/source/Documentation/devicetree/bindings/net/phy.txt#L54

Best wishes
David

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
