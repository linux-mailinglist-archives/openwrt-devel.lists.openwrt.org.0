Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FC267C36
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 00:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fMCWiDlHQNOhHfSYsTDg6sVtX6XWzp75X44S0AJuro=; b=BAtuMGjp287pN1
	1JOml48bTQxpp6H/4IQOurI77REA15hJB29kSDQ3GLk7hhbd9nWFBSE/J/NNfrJHdobVGjU1InCtb
	/bzjLJ5cQC80qk1HOcSiIW1HB6u3dw2pEtC91LFikjPh+jBbm4PGyQMI3szyvIPBxFG4g6ITRVRDG
	Xw10lk2yG87yzo5/PdD/GPeo8dY/QNBUx7l12Tk9GbxisNVsFT5/JoaklaMhegy3cXTvJMJL/u/IX
	tjEOsu9hdYqFMyrTK306X2AGYjW7yjqTZk+OHw5g98cEZT0XCQKTT7w5zwHFs3FAGAioD0YBiAycZ
	PTEFmwBwTCOHZSA4Xqjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmQ8F-000226-Kh; Sat, 13 Jul 2019 22:04:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmQ86-000214-J2
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 22:04:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id s15so11773928wmj.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 15:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ABgl+kGGdS9UfT3SmtPWMxlAkrLrlkf54dwvS6c6vTw=;
 b=b8/fdOevABD3fJ2/q5YweAjO93eLyFXQ5nexl9INzNHbcahnfl/WKI6wGSQKLcXJTH
 ptTXjorxzIAgnMjRry15Ud/Hu9MfxvRmA2GBePqc9T0fCDEBchPBz5tmctjqIpdrMats
 ADjK0Xqrkg2T6v3+FYPlSXFqe3L/YlLJwWd+rpaHCwTv2dB8iq046LbD89axlL6p9qO5
 KZXqBzzxmeaFmnzAp4A9CF9YQjNYGf0r0KYVFMMhk53vysSe71sa4aEKD083jV1q4ufN
 E5HZezNjXXf/SE+abD2k7Fsi/zrvBueQBQlBWZ0OME6C3f4fXgseX7vTROaHmXi6A4jz
 G69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ABgl+kGGdS9UfT3SmtPWMxlAkrLrlkf54dwvS6c6vTw=;
 b=IPZgIGxtxlqETFk3nL9Jx7SdsId7vUPogINbgUwXbVhlJkdbiHrW+DZs1VMoEeXTww
 kU5OW8x1CdPS3Uty/3B8JDx/tpP22cI6Q/m/LRNCY3+ABMjXvggEjQ2zv327lu7IAnTF
 6az3CkIxAZqCWSqAoC+iQvfJTpHe1yyZzG99iwqKYaCpVgnlmrUBi/6dELMQwvQthqKK
 OmaVVYJn03v6Un0T3eCdFAZBT9OhCgPGdzvW6GVBzDmuPm6kowyQxhqH2cic+VisXbiL
 J8O50jlinqUZmpBVS+DnL7YOaevBHxwyZi9JfkxFc/M2U1q3JAqbjPIfbS0lS65obKnr
 POcA==
X-Gm-Message-State: APjAAAUdb5611sfXV/+Xy6IA4lpSIWjIN09JRBpGyPfYjp7vpBCw4g7R
 OIka6Kn4tONc6+gdQJtN5ss=
X-Google-Smtp-Source: APXvYqxHRdcy5S9LSFFfKyu0JJaflLgnvv3uTe8docFtCyBDK/Sm7cJdpbB5IGL4tXPNEGZczZ/SQw==
X-Received: by 2002:a1c:be11:: with SMTP id o17mr15679592wmf.115.1563055467214; 
 Sat, 13 Jul 2019 15:04:27 -0700 (PDT)
Received: from debian64.daheim (p5B0D790C.dip0.t-ipconnect.de. [91.13.121.12])
 by smtp.gmail.com with ESMTPSA id
 y16sm24687596wrg.85.2019.07.13.15.04.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 15:04:25 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hmQ81-0002qQ-3N; Sun, 14 Jul 2019 00:04:25 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: David Bauer <mail@david-bauer.net>
Date: Sun, 14 Jul 2019 00:04:24 +0200
Message-ID: <3556813.HsO8LZ2TBR@debian64>
In-Reply-To: <453b6bb7-ff2f-dd78-bb1b-6a9635348304@david-bauer.net>
References: <20190702215718.4891-1-mail@david-bauer.net>
 <2579646.vlONLxg212@debian64>
 <453b6bb7-ff2f-dd78-bb1b-6a9635348304@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_150430_634824_9F016A37 
X-CRM114-Status: GOOD (  42.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David,

On Saturday, July 13, 2019 7:53:05 PM CEST David Bauer wrote:
> first of all, i wouldn't have imagined that there is so mush to talk about pressing buttons ;)

Well, if you remember my first versions that I pushed out of the gpio-button
rework were really buggy, so... :(
On the other hand, the "git commit && git push" is just one
"enter" away. ;) We can finish this "right now" and deal with
the "shoot from the hip" later. (Though this is not advised)

> On 13.07.19 18:04, Christian Lamparter wrote:
> > On Wednesday, July 10, 2019 12:31:12 AM CEST David Bauer wrote:
> >> thanks for your reworked patch. I think i found two bugs around the debounce
> >> interval for both flavors. I'll have to admit, they are both edgecases ;)
> >>
> >> On 06.07.19 23:57, Christian Lamparter wrote
> >>> -static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
> >>> +static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
> >>>   {
> >>> +	unsigned int type = bdata->b->type ?: EV_KEY;
> >>>   	int state = gpio_button_get_value(bdata);
> >>> +	unsigned long seen = jiffies;
> >>>   
> >>> -	if (state != bdata->last_state) {
> >>> -		unsigned int type = bdata->b->type ?: EV_KEY;
> >>> +	pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
> >>> +		 type, bdata->b->code, state);
> >>> +
> >>> +	/* is this the initialization state? */
> >>> +	if (bdata->last_state == -1) {
> >>> +		/*
> >>> +		 * Don't advertise unpressed buttons on initialization.
> >>> +		 * Just save their state and continue otherwise this
> >>> +		 * can cause OpenWrt to enter failsafe.
> >>> +		 */
> >>> +		if (type == EV_KEY && state == 0)
> >>> +			goto set_state;
> >>
> >> As we are calling gpio_keys_handle_button every poll-interval, we need 
> >> to make sure we save the initial state AFTER the button has been stable 
> >> for the debounce interval. For irq-based keys we get this "for free" as 
> >> we modify the execution timer for the irq handling function.
> > 
> > Ah, I think due to how the patch looks (as in this mail and not applied
> > to the source code) this feature/behavior got lost there. 
> > 
> > I've added the gpio_keys_handle_button() below after that version of the
> > patch is applied.
> > 
> > ---
> > static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
> > {
> >         unsigned int type = bdata->b->type ?: EV_KEY;
> >         int state = gpio_button_get_value(bdata);
> >         unsigned long seen = jiffies;
> > 
> >         pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
> >                  type, bdata->b->code, state);
> > 
> >         /* is this the initialization state? */
> >         if (bdata->last_state == -1) {
> >                 /*
> >                  * Don't advertise unpressed buttons on initialization.
> >                  * Just save their state and continue otherwise this
> >                  * can cause OpenWrt to enter failsafe.
> >                  */
> >                 if (type == EV_KEY && state == 0)
> >                         goto set_state;
> >                 /*
> >                  * But we are very interested in pressed buttons and
> >                  * initial switch state. These will be reported to
> >                  * userland.
> >                  */
> >         } else if (bdata->last_state == state) {
> >                 /* reset asserted counter (only relevant for polled keys) */
> >                 bdata->count = 0;
> >                 return;
> >         }
> > 
> >         if (bdata->count < bdata->threshold) {
> >                 bdata->count++;
> >                 return;
> >         }
> > 
> >         if (bdata->seen == 0)
> >                 bdata->seen = seen;
> > 
> >         button_hotplug_create_event(button_map[bdata->map_entry].name, type,
> >                                     (seen - bdata->seen) / HZ, state);
> >         bdata->seen = seen;
> > 
> > set_state:
> >         bdata->last_state = state;
> >         bdata->count = 0;
> > }
> > ---
> > 
> > The pressed button state (for the polled) version will now always have to be
> > stable for the debounce-duration (including on the initial state). That's
> > guaranteed by the "if (bdata->count < bdata->threshold) { count++;return; }"
> > path. If there's a laps during the initial state then last_state gets set to
> > 0 and the counter is reset. But this bogus "released" event is not reported
> > to userspace, so if it's an inital pressed state it will still be reported
> > correctly, altough it might take another full debounce-duration. 
> 
> Hmm, i might have some problems grasping here, but let's take the following
> situation:
> 
>      goto set_state called here
>      |
> 0    5    10   15   20   25   30
> |    |    |    |    |    |    |
> 1111110000000000000000000000000
> 
> Debounce: 10ms
> Poll:     5ms

This might be "easy" or really complicated... (So please hold on.)

> >                 if (type == EV_KEY && state == 0)
> >                         goto set_state;

The "goto set_setstate;" only happens if state = 0 (Which in gpio-button
context means) that the button is in an unpressed state.

But, there's more going on here. In this example for this button there is:

bdata->threshold = DIV_ROUND_UP(button->debounce_interval,
                                pdata->poll_interval); // this is existing code 
Which breaks down to:
bdata->threshold = __KERNEL_DIV_ROUND_UP(10, 5)
bdata->threshold = (10 + 5 - 1) / 5 = 14 / 5 = 2 (integer math)

Due to: 

        if (bdata->count < bdata->threshold) {
                bdata->count++;
                return;
        }

count must be 2 for this exit path to get skipped. However the "count" always
starts at 0 (devm_kzalloc and count=0;)  so there are effectively 3 poll intervals
 (0, 1 and 2) that get checked before the event goes out. Which should work
out as >=10 ms in this case, since on the first go through we start at 0.

> So, from my understanding (and to keep the behavior in line), the initial stable
> state for GPIO-polled should be set to 0 at 20ms. No event should be created
> for this.
> 
> With the gpio_keys_handle_button function you snipped above however, we would initially
> set our state to 1 and would fire a release event at 20ms, even though this is our real
> initial stable state.
> 
> failsafe is triggered on both edges, so pressed & released events would trigger it.
> 
> Or am i missing something here?

Ok, now I'm not so sure anymore what you mean (see above and below).

In my comment on first "v2" of this patch 
<https://patchwork.ozlabs.org/patch/1117787/> I commented that for the polled
case we already wait "software_debounce" until gpio-button does the first read.
(For reference, it's the "Hm, well since the first state is -1 we could just as
well schedule the work immediately here... ") so in a way the first 10 ms in this
example are already skipped/ignored at the moment. But we can change that and
schedule the poll immediately (like in the current openwrt version) 

But in regards to the current state of the failsafe script, you are
definitly right. This is confusing and something smells rotten.

Currently the failsafe script looks like this (procd basically forwards
everything related to BUTTON during preinit to this script thanks to
the handler in /etc/hotplug-preinit.json):

|#!/bin/sh
|
|[ "${TYPE}" = "switch" ] || echo ${BUTTON} > /tmp/failsafe_button
|
|return 0

So before my gpio-button commits it looked like this:

|static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
|{
|	int state = gpio_button_get_value(bdata);
|
|	if (state != bdata->last_state) {
|		unsigned int type = bdata->b->type ?: EV_KEY;
|
|		if (bdata->count < bdata->threshold) {
|			bdata->count++;
| 			return;
|		}
|
|		if ((bdata->last_state != -1) || (type == EV_SW))
|			button_hotplug_event(bdata, type, state);
|
|		bdata->last_state = state;
|	}
|
|	bdata->count = 0;
|}

You can see that gpio_keys_polled_check_state() always "ate" initial
state event for polled buttons (yes, both states - pressed and unpressed -) got
ignored.  Which I think is very wrong... mostly because it goes against the 
decades of experience I have with "holding down buttons while powering up devices"
and expect them to get noticed properly :D. That's why my code only eats the initial
unpressed/0 event, but reports the pressed button event. This should still be
compatible with the current failsafe setup. 

Related Note: 
As for the sudden burst of the "device is always entering failsafe".
I can see how this is causing problems now. Because if the polarity of
a button was declared (or that got copied from another device without
checking ;) ) with the wrong way; This will now become a problem because
it "physically unpressed" button gets reported as "pressed" and this causes
the device to always enter failsafe (unless the very button with the wrong
polarity is pressed, which in this context means unpressed).

However, I think this is a problem of the individual dts/board support code.
But sadly I have currently no time to monitor the forums, bugtracker, ML or
github for these problems... so what to do?

> > For the irq-driven case, threshold is now 0 and therefore this gets skipped.
> > Which should be fine since we schedule the gpio_keys_handle_button() after
> > the debounce-interval so it should be stable at that point (if not then the
> > debounce interval needs tweaking).
> > 
> > So, the button behavoir should be Ok. The "switch" case is a definitely
> > more lenient in that the initial state. It could jump between 0 and 1 and
> > not reset. However, a "physical" switch that manages to constantly
> > flip-flop during the poll interval probably has a electrical problem.
> > 
> >>> +		/*
> >>> +		 * But we are very interested in pressed buttons and
> >>> +		 * initial switch state. These will be reported to
> >>> +		 * userland.
> >>> +		 */
> >>> +	} else if (bdata->last_state == state) {
> >>> +		/* reset asserted counter (only relevant for polled keys) */
> >>
> >> This is also needed for irq-driven keys. If the state changes two times 
> >> within the debounce interval, gpio_keys_handle_button is still executed 
> >> and we need to terminate here. Otherwise, we would skip a "release" or
> >> "push" action.
> >>
> >> I did rework those two parts a bit and tested it with the irq and
> >> polled flavors without a problem. See below:
> >>
> > I don't follow there? In your v2, you have fixed the debounce-rearming
> > timer for the irq-case by doing mod_delayed_work() function, which is
> > correct! So, if a new event within the debounce interval, the timer
> > will get rescheduled by another irq to fire after after a new
> > debounce-interval passed (so it should be stable by then).
> 
> You are right. Your commit was relating to the reset of the counter, my remark was
> about "There should be no events in case last_state == current_state also for irq
> keys. So no functional problem to see here :)

Ok, so this is fine?

As everyone who follows the thread can see: The struggle is real!
Even for something as seemingly simple and benign as a gpio-button.

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
