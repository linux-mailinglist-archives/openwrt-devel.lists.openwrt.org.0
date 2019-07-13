Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6104367B2A
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 18:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzO6qkuqkaZZ+65B4EdVL3VqQCQtng1xae9OVNuccsU=; b=LP4uSPStSi2E/P
	ZZTbzNVziwC1ON/qAwxybiZrCanhiob+yC0QiLi3hkIqpSwJ46aisJe/NHYeAmVlgiN3tINxJ+QbE
	6NuTDTz43wasD+zRyaTTR8lQkh7GyK+CFKVV4FvNb71cIZXFKDTeAtgW8GD9wLxcaaJXENppXIAsV
	SfrXzcFmvHpSUXOvFbrpDykJzZywhTkwc22pDta0XSsoOW4X88+k7qgDpBJcmlhoFGMqPKzq4Uz/L
	R/PlUZU4yCTQ2ePy/WmgtfuwoX2XxeRh3ebAkaeHDSRmmoTT2Nz+8s56S1ZscjTjJMF9wopYwDraV
	8lpRARkoLNsk+/A+5enA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmKWY-00021n-Bw; Sat, 13 Jul 2019 16:05:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmKWC-0001bx-RO
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 16:05:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so12871548wrm.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 09:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wwMcr5A7wdvqMXhzuk7U4xDJwfJi45NbZyn2S278N1M=;
 b=t6NrlHdZlZxH//MMsTL1wH4spzglN0WTXQojuCIv1uo9j7+AVRz0XC6p9LVBZxK3Oa
 pzVa7PS2Q3DYbilulY8GcV8QeTc6YEGy0AHv6fjqNzrPX3AASpRUoRspq5nwd61yVls7
 O0RU31vrTk+GoQF9i5XxbGG7CYSj883xF2sMyQ/dX4QMUUa8A3jRbk3ihy3ZHAqB+4py
 56YK+HO7E691XFuncA1mXynwphNyL70HH3feQakQv5MlHgn2h2NN5H8u3vIfjuc0i7Hk
 ouDbF9FhX9A9LVLxYhqa12jAhjQCPQCOp8GKthLyy4JYaPI3v9vgSVUKPbB1r6j6vyF4
 NLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wwMcr5A7wdvqMXhzuk7U4xDJwfJi45NbZyn2S278N1M=;
 b=lCQJCUriUfjaaWF9EJ/B9RfXa/blYwei5YnmsGfeUhP9LlFjfELoDOyif9u7QSNS9H
 pfKRUaFkJgOrDqThX3MEfC0AjgoLnJXWR1cVByXOOckH8GsJXV+rj9lxvfXkRU9beP6S
 04oVjJfYluJQhdzCM6HkS/bMMCS5qgDmmt3ywlWe+2Pg8AV/QZFHgsB+ygnpWL4AekZR
 metp1VKcD8FGf2zyopBm3voh5xW1xo9/1xgvgZhCRSBzUnQ40XdJtwXuX5Sn69Jq/Kr4
 9FGBQjjLwZB1DBnRJGNddbIlIixWk5xDp3UCNQDUVGtzd+5vaDPnLEZjdH8rc4gjpOue
 mCxQ==
X-Gm-Message-State: APjAAAWvvJgx8DskA+soV41LAPS/mh8XjAUD7s9Vmr17adSI4tnKSj44
 GkF7DewvnqtrZsn2ZOTcTi0=
X-Google-Smtp-Source: APXvYqx8FG4T06GXelmoSjgxivOuyvr0D+2wuKi6SYYC5PHKm+J/PxxUomUCt5sMD00j7hF+wBl1RA==
X-Received: by 2002:adf:ce05:: with SMTP id p5mr14681864wrn.197.1563033894533; 
 Sat, 13 Jul 2019 09:04:54 -0700 (PDT)
Received: from debian64.daheim (p5B0D790C.dip0.t-ipconnect.de. [91.13.121.12])
 by smtp.gmail.com with ESMTPSA id
 v124sm13096740wmf.23.2019.07.13.09.04.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 09:04:53 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hmKW5-0005I4-Ce; Sat, 13 Jul 2019 18:04:53 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: David Bauer <mail@david-bauer.net>
Date: Sat, 13 Jul 2019 18:04:53 +0200
Message-ID: <2579646.vlONLxg212@debian64>
In-Reply-To: <765ea79c-1ba2-0956-e699-0f281c462397@david-bauer.net>
References: <20190702215718.4891-1-mail@david-bauer.net>
 <3499829.cv7yEftivz@debian64>
 <765ea79c-1ba2-0956-e699-0f281c462397@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_090500_915644_DF6D541F 
X-CRM114-Status: GOOD (  27.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Hello David,

On Wednesday, July 10, 2019 12:31:12 AM CEST David Bauer wrote:
> thanks for your reworked patch. I think i found two bugs around the debounce
> interval for both flavors. I'll have to admit, they are both edgecases ;)
> 
> On 06.07.19 23:57, Christian Lamparter wrote
> > -static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
> > +static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
> >   {
> > +	unsigned int type = bdata->b->type ?: EV_KEY;
> >   	int state = gpio_button_get_value(bdata);
> > +	unsigned long seen = jiffies;
> >   
> > -	if (state != bdata->last_state) {
> > -		unsigned int type = bdata->b->type ?: EV_KEY;
> > +	pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
> > +		 type, bdata->b->code, state);
> > +
> > +	/* is this the initialization state? */
> > +	if (bdata->last_state == -1) {
> > +		/*
> > +		 * Don't advertise unpressed buttons on initialization.
> > +		 * Just save their state and continue otherwise this
> > +		 * can cause OpenWrt to enter failsafe.
> > +		 */
> > +		if (type == EV_KEY && state == 0)
> > +			goto set_state;
> 
> As we are calling gpio_keys_handle_button every poll-interval, we need 
> to make sure we save the initial state AFTER the button has been stable 
> for the debounce interval. For irq-based keys we get this "for free" as 
> we modify the execution timer for the irq handling function.

Ah, I think due to how the patch looks (as in this mail and not applied
to the source code) this feature/behavior got lost there. 

I've added the gpio_keys_handle_button() below after that version of the
patch is applied.

---
static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
{
        unsigned int type = bdata->b->type ?: EV_KEY;
        int state = gpio_button_get_value(bdata);
        unsigned long seen = jiffies;

        pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
                 type, bdata->b->code, state);

        /* is this the initialization state? */
        if (bdata->last_state == -1) {
                /*
                 * Don't advertise unpressed buttons on initialization.
                 * Just save their state and continue otherwise this
                 * can cause OpenWrt to enter failsafe.
                 */
                if (type == EV_KEY && state == 0)
                        goto set_state;
                /*
                 * But we are very interested in pressed buttons and
                 * initial switch state. These will be reported to
                 * userland.
                 */
        } else if (bdata->last_state == state) {
                /* reset asserted counter (only relevant for polled keys) */
                bdata->count = 0;
                return;
        }

        if (bdata->count < bdata->threshold) {
                bdata->count++;
                return;
        }

        if (bdata->seen == 0)
                bdata->seen = seen;

        button_hotplug_create_event(button_map[bdata->map_entry].name, type,
                                    (seen - bdata->seen) / HZ, state);
        bdata->seen = seen;

set_state:
        bdata->last_state = state;
        bdata->count = 0;
}
---

The pressed button state (for the polled) version will now always have to be
stable for the debounce-duration (including on the initial state). That's
guaranteed by the "if (bdata->count < bdata->threshold) { count++;return; }"
path. If there's a laps during the initial state then last_state gets set to
0 and the counter is reset. But this bogus "released" event is not reported
to userspace, so if it's an inital pressed state it will still be reported
correctly, altough it might take another full debounce-duration. 

For the irq-driven case, threshold is now 0 and therefore this gets skipped.
Which should be fine since we schedule the gpio_keys_handle_button() after
the debounce-interval so it should be stable at that point (if not then the
debounce interval needs tweaking).

So, the button behavoir should be Ok. The "switch" case is a definitely
more lenient in that the initial state. It could jump between 0 and 1 and
not reset. However, a "physical" switch that manages to constantly
flip-flop during the poll interval probably has a electrical problem.

> > +		/*
> > +		 * But we are very interested in pressed buttons and
> > +		 * initial switch state. These will be reported to
> > +		 * userland.
> > +		 */
> > +	} else if (bdata->last_state == state) {
> > +		/* reset asserted counter (only relevant for polled keys) */
> 
> This is also needed for irq-driven keys. If the state changes two times 
> within the debounce interval, gpio_keys_handle_button is still executed 
> and we need to terminate here. Otherwise, we would skip a "release" or
> "push" action.
> 
> I did rework those two parts a bit and tested it with the irq and
> polled flavors without a problem. See below:
> 
I don't follow there? In your v2, you have fixed the debounce-rearming
timer for the irq-case by doing mod_delayed_work() function, which is
correct! So, if a new event within the debounce interval, the timer
will get rescheduled by another irq to fire after after a new
debounce-interval passed (so it should be stable by then).

If this is still a problem on ath79, I think the requested irq trigger
method might have something to do with this, maybe it triggers on the
wrong level or edge? (For apm821xx, I had to change it to just falling
edge as the IRQ controller can only do either or but not both edges).

Cheers,
Christian

I guess this is becoming a moot point since we both have commit access ;)
Put please, take your pick!



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
