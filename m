Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB3547534
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 16:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riTCumUhcCo+i+76A0vWq/4ZR+9H14/64WkM8vio1lo=; b=Sd7xlFAh+cDwum
	pcuaQAUrArvzLJy8Lc3gAiFoUqnpiGOgZI0aYMseSqirSyHvIe/O7D8i+fKEEgMVY/W5atwtjDRdB
	TBG9f64sSxlKW45bMcxf47EB1dw42EVk5awPtL1LbQWQyGkxzqFF+8jztoYP3ALtWme0Q+lXDPJvw
	P5QiYJAN6AU/9h7stqJeIjp91UIGZJyu6WYvlyrm450i3+bvq1artCEQGnR/aWWm8s0T3+bmW+wTZ
	Q9Ub+8YNXFPrWa8oyT7Ep7NAJ+cW48TuqcARFdiUqXQzpCfj4bpIKfIWipfLf4yvtVy72/e9ftY43
	11kLqy4/smpInWqK8I7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcWCH-0002UG-4S; Sun, 16 Jun 2019 14:31:53 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcWBw-0002TR-2W
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 14:31:34 +0000
Received: from [IPv6:2003:e5:3f3f:8f00:edb2:7028:6605:31e7]
 (p200300E53F3F8F00EDB27028660531E7.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3f:8f00:edb2:7028:6605:31e7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 60E7F1E151;
 Sun, 16 Jun 2019 16:31:25 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: Linus Walleij <linus.walleij@linaro.org>,
 Christian Lamparter <chunkeey@gmail.com>
References: <20190613210036.30922-1-mail@david-bauer.net>
 <7513956.bV6BmdoukA@debian64>
 <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
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
Message-ID: <c30d2d95-7d2b-ca8b-9e15-c0ffdd016ba9@david-bauer.net>
Date: Sun, 16 Jun 2019 16:31:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_073132_411689_0CD338B7 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: read
 initial state
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Linus,

On 15.06.19 10:26, Linus Walleij wrote:
> Without any detailed knowledge I'd say the most common cause
> is the underlying GPIO chip implementation. There are often transient
> line events when the system is powered up and initialized and it
> is often necessary for the gpio_chip driver to clear any interrupt
> flags in hardware before setting up the gpio chip, especially the
> irqchip portions of it.
> 
> I tried to half-guess what gpio chip this is using and since it
> is WiFi pro 1200e I guess ths gpio driver is
> drivers/gpio-ath79.c which does indeed initialize an
> irqchip without clearing the interrupts first.
> 
> Can you try this patch, if this solves the problem I will commit
> it upstream as well:

Thanks for your patch. I've tested it on my device but sadly, i still
see the ghost presses.

It seems the input is indeed not stable after setting the GPIO
direction. With the following patch applied, i get zero ghost presses
and the buttons work as expected. However I'm not sure if this approach
is the right one to fix the underlying issue.


From 2b0c12c9c9aa1955a1fa42234597601148bcf548 Mon Sep 17 00:00:00 2001
From: David Bauer <mail@david-bauer.net>
Date: Sun, 16 Jun 2019 16:20:49 +0200
Subject: [PATCH] gpio: ath79: circumvent ghost interrupts

The ath79 gpio driver may emit "ghost interrupts" in case the interrupts
are registered directly after setting the GPIO direction.

This patch adds a short delay before activating interrupts on any line
to make sure no ghost interrupts will be registered.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 drivers/gpio/gpio-ath79.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index 0a553d676042..238f5bdbe7a8 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -12,6 +12,7 @@
  */
 
 #include <linux/gpio/driver.h>
+#include <linux/delay.h>
 #include <linux/platform_data/gpio-ath79.h>
 #include <linux/of_device.h>
 #include <linux/interrupt.h>
@@ -96,6 +97,12 @@ static void ath79_gpio_irq_enable(struct irq_data *data)
 	u32 mask = BIT(irqd_to_hwirq(data));
 	unsigned long flags;
 
+	/*
+	 * The input can be unstable after configuring GPIO direction.
+	 * Wait a bit to assert the input is stable.
+	 */
+	msleep(25);
+
 	raw_spin_lock_irqsave(&ctrl->lock, flags);
 	ath79_gpio_update_bits(ctrl, AR71XX_GPIO_REG_INT_ENABLE, mask, mask);
 	ath79_gpio_update_bits(ctrl, AR71XX_GPIO_REG_INT_MASK, mask, mask);
-- 
2.22.0


Best wishes
David





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
