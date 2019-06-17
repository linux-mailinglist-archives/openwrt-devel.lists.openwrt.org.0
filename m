Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8C548ADB
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 19:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4B5XBJgl+bJ5yyOU4XJguClK+w0EpEeAgn3qGDiSvrQ=; b=fkXAFNit9wP2PJ
	6XQw/0bOwSGHPXQdgoQRXCp0NMg38/Yc2TvVIlrnkk2BAkEpKg/kHQyAC+/fOCmjrS64cJR2Z9K+f
	WokGdBcagYSYk77CloThjtuYWOPr13lptR50z3fn1CB09O1OGeBAa50/PF+MH+AStgAnVvCZCtfAF
	pdU3wRF85p3Zh9E2MrcgP746fp8fUv1CjvuyRa4uvL4OO22DhUjB9RumDy3Q+f+h3pr0CKa9UJY/J
	h0Tqv35yu9J+DU+ztaiWDGjhXgoX+5f6LWqHuVZjjce+9rObSUynjMCNBU1MGXIEqYz+KmCHfwhWN
	kULXOyPnqmOA/RQN9x2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvsS-0001xn-JM; Mon, 17 Jun 2019 17:57:08 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvsJ-0001xA-9R
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 17:57:01 +0000
Received: from [IPv6:2003:e5:3f05:a000:f133:cf5:cd25:28a5]
 (p200300E53F05A000F1330CF5CD2528A5.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f05:a000:f133:cf5:cd25:28a5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 8564B2230C;
 Mon, 17 Jun 2019 19:56:50 +0200 (CEST)
To: Linus Walleij <linus.walleij@linaro.org>
References: <20190613210036.30922-1-mail@david-bauer.net>
 <7513956.bV6BmdoukA@debian64>
 <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
 <c30d2d95-7d2b-ca8b-9e15-c0ffdd016ba9@david-bauer.net>
 <CACRpkdauGYJ3LU6Zhepczp80QKSch6Foz0EqOx_qu_ERLM23bQ@mail.gmail.com>
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
Message-ID: <1ac0e1cc-dee9-1ab1-6362-b41c8c52b208@david-bauer.net>
Date: Mon, 17 Jun 2019 19:56:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdauGYJ3LU6Zhepczp80QKSch6Foz0EqOx_qu_ERLM23bQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_105659_628161_059858C0 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Linus,

On 17.06.19 01:42, Linus Walleij wrote:
> It shows what the problem is for sure. delays are forbidden in
> irqchip callback functions since they are all called from
> IRQ context with IRQs disabled though.

Good to know, thanks!

>> @@ -96,6 +97,12 @@ static void ath79_gpio_irq_enable(struct irq_data *data)
> 
>>         u32 mask = BIT(irqd_to_hwirq(data));
>>         unsigned long flags;
>>
>> +       /*
>> +        * The input can be unstable after configuring GPIO direction.
>> +        * Wait a bit to assert the input is stable.
>> +        */
>> +       msleep(25);
>> +
>>         raw_spin_lock_irqsave(&ctrl->lock, flags);
>>         ath79_gpio_update_bits(ctrl, AR71XX_GPIO_REG_INT_ENABLE, mask, mask);
>>         ath79_gpio_update_bits(ctrl, AR71XX_GPIO_REG_INT_MASK, mask, mask);
> 
> After this and before the raw_spin_unlock() try to read the status
> register until it
> eads zero for the requested IRQ:
> 
> while (ath79_gpio_read(ctrl, AR71XX_GPIO_REG_INT_PENDING) & mask) {}
> 
> This way we wait for the status to go low before we allow any IRQs to
> fire after enableing.

Thanks for your suggestion. However, with your suggestion i still see the ghost press on bootup :(
Just to clarify - I do not see multiple ghost presses, just one. The button is active low. 

After configuring the GPIO direction to input, the value of the GPIO reads 0 (pressed).
After ~10ms, this changes to 1 (not pressed). I suppose your proposed solution does not work
as interrupts are only registered after configuring the GPIO line as input and the GPIO line
changes after registering the interrupt. So we are reading the interrupt state too early.

(I might have repeated myself with this explanation but I was not sure if I've given
all the relevant facts "in one piece" yet)

I'm not sure where we can go from here. I have two ideas,
but I'm not sure if they are feasible:

First:
If delays are allowed there, we could add a 20ms delay when configuring the GPIO line
direction as input. This way we could also assure the line is stable for "normal" value
reads. We would need to override the direction_input method provided by gpio-mmio for this.

Second:
We could store the kernel uptime together with the GPIO line and for how long interrupts
should be ignored within the driver. This could be checked when an interrupt is fired.

I do not really like the second idea as dropping interrupts without feedback is probably not
what we want.

Do you have another idea how we could solve this?

Best wishes
David


> 
> Maybe not so good since we may want to turn on IRQs that are asserted
> at some point, but worth a try.
> 
> Yours,
> Linus Walleij
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
