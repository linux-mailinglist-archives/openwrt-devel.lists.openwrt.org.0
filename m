Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DC867C57
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 00:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiEXqhTsEyW/5AlVpMgvCZnJfJ6VP+QaMFewKJnF9SQ=; b=fZ6iq/qIzcrgE5
	Q6MA0tK1eze6i/yA4urIUH+SGty3+ATMeSNgeumkgb1RaYS2DWEZdj/GMGp9Kbv1jva4+vejuXs/D
	GDxB24sfv99jGDFv8137ENQ+RA0XqIMBzpHtgMn30HEwa9Ny79ZD2OZpu+rcm0ZJIBRjnTL4myscH
	ilKOqpXbSozxB+RNv4pk0xX17j+asQEazP6gadQxZwFR4E1eHUpK1ppCytmJ0I6WGEs6fDXD/6FkL
	ZDk+HYAkW3MXZdSA4uWONv2UymvA0EZKzZWEC3boEtG9MuaYTqAbV2/V/weW5xFSsSOWjA4tLNGGW
	OxKVYd3fOOqmeCbdEKaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmQvN-0001Sx-MA; Sat, 13 Jul 2019 22:55:25 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmQvD-0001SP-C7
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 22:55:18 +0000
Received: from [IPv6:2003:e5:3f35:2400:bb1:6f94:6387:d30a]
 (p200300E53F3524000BB16F946387D30A.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f35:2400:bb1:6f94:6387:d30a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 55EA4221CC;
 Sun, 14 Jul 2019 00:55:03 +0200 (CEST)
To: Christian Lamparter <chunkeey@gmail.com>
References: <20190702215718.4891-1-mail@david-bauer.net>
 <2579646.vlONLxg212@debian64>
 <453b6bb7-ff2f-dd78-bb1b-6a9635348304@david-bauer.net>
 <3556813.HsO8LZ2TBR@debian64>
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
Message-ID: <f64d8e96-fe43-c2a8-7f09-13e2a3b2f659@david-bauer.net>
Date: Sun, 14 Jul 2019 00:55:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3556813.HsO8LZ2TBR@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_155515_714331_0CE11C52 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] gpio-button-hotplug: mind debounce
 interval consistently
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
Cc: linus.walleij@linaro.org, openwrt-devel@lists.openwrt.org,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Christian,

On 7/14/19 12:04 AM, Christian Lamparter wrote:
> The "goto set_setstate;" only happens if state = 0 (Which in gpio-button
> context means) that the button is in an unpressed state.

Okay, you are right, this is one thing i missed.

If we suspect, the polarity is correctly set for every board, your code is completely
right and should behave the same for polled and irq based keys.

So, the question is primarily if we want a event if a button is pressed continuously
on bootup. I think this is the point where our expectations differ.

I might be a bit late for this realization, sorry for that :D

> You can see that gpio_keys_polled_check_state() always "ate" initial
> state event for polled buttons (yes, both states - pressed and unpressed -) got
> ignored.  Which I think is very wrong... mostly because it goes against the 
> decades of experience I have with "holding down buttons while powering up devices"
> and expect them to get noticed properly :D. That's why my code only eats the initial
> unpressed/0 event, but reports the pressed button event. This should still be
> compatible with the current failsafe setup. 

Honestly, i think our expectations divert here a little ;)

OpenWrt Wiki states "It listens for a button press inside a specific two second window,
which is indicated with LEDs and by transmitting an UDP package."

and

"Recommended for most users: Wait for a flashing LED and press a button.
This is usually the easiest method once you figure out the correct moment."

So yes, this differs from the usual "Hold a button and insert power". However,
entering failsafe on any button state change event would be the behavior i suspect.

> Related Note: 
> As for the sudden burst of the "device is always entering failsafe".
> I can see how this is causing problems now. Because if the polarity of
> a button was declared (or that got copied from another device without
> checking ;) ) with the wrong way; This will now become a problem because
> it "physically unpressed" button gets reported as "pressed" and this causes
> the device to always enter failsafe (unless the very button with the wrong
> polarity is pressed, which in this context means unpressed).

This is - sadly - not the reason why I'm observing this issue :(
Polarity is correctly declared for my devolo board.

> However, I think this is a problem of the individual dts/board support code.
> But sadly I have currently no time to monitor the forums, bugtracker, ML or
> github for these problems... so what to do?

This is clearly nothing we should worry about. I made myself also guilty of this
mistake and it makes things weird in so many ways.

It's a bug in the boards integration and nothing we have to catch on our layer :)

>> You are right. Your commit was relating to the reset of the counter, my remark was
>> about "There should be no events in case last_state == current_state also for irq
>> keys. So no functional problem to see here :)
> 
> Ok, so this is fine?

Yes :)

> 
> As everyone who follows the thread can see: The struggle is real!
> Even for something as seemingly simple and benign as a gpio-button.

Okay, so how do we want to proceed? I would propose to merge your iteration
(as it was working for me in both modes) to master, wait for people to complain
and then pickit to 19.07? It should be an improvement over the current situation
anyways. I would view the failsafe mode on a continuous press as a new "feature" here ;) 

Best wishes
David

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
