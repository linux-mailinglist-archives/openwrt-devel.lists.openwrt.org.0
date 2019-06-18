Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B1249EA9
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 12:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51BW6goqmUZCf58F9+Q7P2LImvy479WQM5St7uOG1U4=; b=ZFo8VURH0/UyNv
	lcWe59zQEjNrCcnYtgFBIINidaEmcU5vc1enALabxHwilA4CvbbrxaVl2pJ1ebki3VczhH5yrnKlf
	Xri/1Momk3Nm8SsinJRmwvoPTVGXl9bqlAO2CThdjTOhu4SAwy4GqwkXDbTBe2DdLIUIGyFQO+iiK
	qqkMBZcVTin8wkLctnC2/POSNBHkL5fH/lTi2LvRnh/RsWRhcLJ3SROuM0up+9Vn6DsYhY0nsrbBw
	+AF72DKV2eBikNDjbLvPIBNteGdsn3mCwk7E4aKi/kKCvGff0d6s+JIp5HCJZBzMd1XWcRg2SRD5y
	je7+sLG5La6HrDr8BQmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBkP-0002Uc-Fk; Tue, 18 Jun 2019 10:53:53 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBkH-0002Tn-MF
 for openwrt-devel@lists.openwrt.org; Tue, 18 Jun 2019 10:53:47 +0000
Received: from [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505] (unknown
 [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 55BFA2282E;
 Tue, 18 Jun 2019 12:53:42 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: Linus Walleij <linus.walleij@linaro.org>,
 Christian Lamparter <chunkeey@gmail.com>
References: <20190613210036.30922-1-mail@david-bauer.net>
 <7513956.bV6BmdoukA@debian64>
 <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
 <c30d2d95-7d2b-ca8b-9e15-c0ffdd016ba9@david-bauer.net>
 <CACRpkdauGYJ3LU6Zhepczp80QKSch6Foz0EqOx_qu_ERLM23bQ@mail.gmail.com>
 <1ac0e1cc-dee9-1ab1-6362-b41c8c52b208@david-bauer.net>
 <CACRpkdZ1TGXKj922yRhPRyHzdMDCcovw+1xT2dF2v_v+Qk6R6A@mail.gmail.com>
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
Message-ID: <e447a702-88b9-0a74-69aa-4ac728641e70@david-bauer.net>
Date: Tue, 18 Jun 2019 12:53:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdZ1TGXKj922yRhPRyHzdMDCcovw+1xT2dF2v_v+Qk6R6A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_035346_018423_48E7AF2F 
X-CRM114-Status: GOOD (  26.46  )
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

On 17.06.19 22:26, Linus Walleij wrote:
> Hm this sounds like something that would be solved by debouncing.
> It might even be a bounce effect of sorts, it can be a capacitance
> or something in the mechanics causing this.
> 
> If you look in:
> drivers/input/keyboard/gpio_keys.c
> you will see that GPIO keys in the input subsystem has debouncing
> support. I guess something like this needs to be copied over to
> the OpenWrt netlink thingie.

Thanks for your evaluation. So the underlying GPIO driver does not seem to be the
culprit here.

> If the GPIO driver supports debounce (some do, it doesn't look like
> the ath79 does) that can be utilized. If someone can double-check
> the ath79 datasheet to check if it can do debounce that'd be great
> because it would solve this in hardware.

I've had a short look on the QCA9558 datasheet and it doesn't seem
like the driver supports debouncing.

>> If delays are allowed there, we could add a 20ms delay when configuring the GPIO line
>> direction as input. This way we could also assure the line is stable for "normal" value
>> reads. We would need to override the direction_input method provided by gpio-mmio for this.
> 
> That's like an initial debounce.

I've had a deeper look on

drivers/input/keyboard/gpio_keys.c

and i think I've understood the problem now as we finally found the "right level" of
the problem ;)

Upstream gpio_keys reports current state of all buttons on driver probe in
gpio_keys_open()

	/* Report current state of buttons that are connected to GPIOs */
	gpio_keys_report_state(ddata);

When an interrupt is handled, a job is created (or it's delay modified).
So the job is not executed if a GPIO is unstable for the debounce interval.

The job executes gpio_keys_gpio_work_func() as soon as it's state is stable,
which reports an input_event() in gpio_keys_gpio_report_event().

This event however is not handed down in the input subsystem if the value equals
the last state. As we are not using the input subsystem, we need to keep track of
the last button state ourselves.

Correct me if I'm wrong with anything above. :)

@Christian
If I'm not mistaken is kinda what I've implemented with my initial patch.
However, i think the logic is better placed elsewhere. I will send
a reworked patch shortly.


> 
>> Second:
>> We could store the kernel uptime together with the GPIO line and for how long interrupts
>> should be ignored within the driver. This could be checked when an interrupt is fired.
> 
> The third alternative is common software debounce. I.e. wait for any
> value to stabilize before reporting keys. Some extra interrupts more
> or less doesn't matter, we just frame it with some timer.
> 
>> I do not really like the second idea as dropping interrupts without feedback is probably not
>> what we want.
> 
> I think it makes a lot of sense on mechanical pushbuttons to
> implement generic debounce.

This is, however, not the job of the GPIO driver or is it?


Best wishes
David

> Yours,
> Linus Walleij
> 



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
