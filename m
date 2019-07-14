Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCD967C9E
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 03:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iVfn0O1INKmNIbieMORFXTOg/VR2dnuofrh2SjdjAQ=; b=k4OZoNLsIzeD2i
	zAq76FD6RjgTmWYLz+EToGU6yLxCtAOYylWA+wxAYbFE51ziM+o5LKe/Rs507+9vlhoy2RxjfxsTO
	nRXke048mavzxhXz0Nz/kt61NA/1LmMp8WL8xTgLVSH4vRGTRyMhAM4wHFEX8ZdI4ATmNRa1bLPfB
	11qbVy1oDrJsZ92Dtxu4QybUM+m81dy9cJ2TCI/qw1fa2SVh3tsILIyahMygPPoqRL5/7Wy9HEZwp
	QZrkVlzpONIsosjAcHXOFEunE6jv7W187BCME6eT7jSr5Wo+lJz7Cjq9ycM42q7bbFmtoPGWsglNM
	HuqAlvT+HOiOeMTD3uPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmTBW-0003jT-7m; Sun, 14 Jul 2019 01:20:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmTBF-0003j3-N7
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 01:19:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so11931427wma.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 18:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r5z0wtdziM0ZmGW6qkr0dbF3VtBMGpOGEtWT2gY/9Ww=;
 b=ZY9zPclMJFouUpbTUSbv3sEDVbnbiFtUksb5ik5Lyy9W3KonsfWX3q0a2TtfDaFlhd
 HQoXATraCSIcZ8+oWpv7RKZkkeXY6R03W+8Dn0x/ghVXsz+O5WIZ9mSdsCmONjMmB/3o
 ItyjmzIvIwOndejaohg3mAA2keZt3UhzBJTW18o5sYQxw4xhMeUB9wE+wRXuu952jyv7
 n9eO6thbPC8UKOwnff80lTv3EO6c6L1NCL2Xa1XyOw5BTRjCYczN4U9DlQMZ2n286bZ0
 7FTh5R2fRk85/0KjfxpclA9hFQvRIivuPWZKYYbQXL2reRVj4pFSBrJ5O97tY2Em5OIb
 8M/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r5z0wtdziM0ZmGW6qkr0dbF3VtBMGpOGEtWT2gY/9Ww=;
 b=dB3us0lDsGzTqVJDB/409WuicMV3YAruSThh4fAVR2kiXaAW40ptwAX3dqC9O82MgF
 GxnG11a+bLR9VY+bcJI0IVc+VAv7/e38OorcFlYUU5+4oGVhbR7X1eUKqyzoHLBEPz5L
 qgqsCkGcIVY05wokZlKrapHmbrIYL3vei2ybLVq/9EDSIAKJXBsU0/xnQ3H1T+qweMI0
 3TPNl49XVy2latfziIwzTLNWRfWlWfqHFvPXEVp0EOcfOjfG66VeHUNJWrhnFx7QTu7y
 GAi1YK6WjlZEi/75Esl0jnibPGEMkwYCHaYhLBQ7bD2xeke2MAdD29YG8xKnign3PZ4n
 VJDQ==
X-Gm-Message-State: APjAAAXPxLzoq1UW34XNDqdrTpfpQp4G0oUcMIuPrgZwrBNWiQ+eaY9a
 NL/boJe9ezRK6Ecxh4RG0Ms=
X-Google-Smtp-Source: APXvYqwTv7HTPR8ydEitFbST0C9XMndhVA0iwV+HSpI8KQsS9WDAasNZLJ9dE2qjUqVB0z27kHFOBQ==
X-Received: by 2002:a05:600c:228b:: with SMTP id
 11mr16511186wmf.26.1563067195438; 
 Sat, 13 Jul 2019 18:19:55 -0700 (PDT)
Received: from debian64.daheim (p5B0D790C.dip0.t-ipconnect.de. [91.13.121.12])
 by smtp.gmail.com with ESMTPSA id
 f1sm9058570wml.28.2019.07.13.18.19.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 18:19:53 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hmTBA-0001FF-Tu; Sun, 14 Jul 2019 03:19:52 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: David Bauer <mail@david-bauer.net>
Date: Sun, 14 Jul 2019 03:19:52 +0200
Message-ID: <6307105.cLm9dk8cu2@debian64>
In-Reply-To: <f64d8e96-fe43-c2a8-7f09-13e2a3b2f659@david-bauer.net>
References: <20190702215718.4891-1-mail@david-bauer.net>
 <3556813.HsO8LZ2TBR@debian64>
 <f64d8e96-fe43-c2a8-7f09-13e2a3b2f659@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_181957_784036_089C0007 
X-CRM114-Status: GOOD (  38.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Sunday, July 14, 2019 12:55:02 AM CEST David Bauer wrote:
> On 7/14/19 12:04 AM, Christian Lamparter wrote:
> > The "goto set_setstate;" only happens if state = 0 (Which in gpio-button
> > context means) that the button is in an unpressed state.
> 
> Okay, you are right, this is one thing i missed.
> 
> If we suspect, the polarity is correctly set for every board, your code is completely
> right and should behave the same for polled and irq based keys.
> 
> So, the question is primarily if we want a event if a button is pressed continuously
> on bootup. I think this is the point where our expectations differ.
> 
> I might be a bit late for this realization, sorry for that :D

Yes, that's something that would deserve to get mentioned.

From my POV, the driver should behave as close to whatever the
idea of the DeviceTree "gpio-keys" and "gpio-keys-polled"
binding is. The catch with this is that upstream Linux isn't the
only OS with a driver for it. For example FreeBSD has a driver
implementing the bindings as well ... and I think the newer FDT 
u-boots could as well in the future(but not yet?). So it is sort
of important for the thing to behave more or less the same across
the platforms. 

(OpenWrt's gpio-button-hotplug has still a few gotchas:
 - no support for irq-only buttons
 - no wake-up support (noboby really implements pm)
 - only a small list of special buttons (in button_map) are supported
 - no autorepeat support (no idea if this is needed or not)).
 - gpio_keys (non polled) doesn't care about pdata->enable/disable

> > You can see that gpio_keys_polled_check_state() always "ate" initial
> > state event for polled buttons (yes, both states - pressed and unpressed -) got
> > ignored.  Which I think is very wrong... mostly because it goes against the 
> > decades of experience I have with "holding down buttons while powering up devices"
> > and expect them to get noticed properly :D. That's why my code only eats the initial
> > unpressed/0 event, but reports the pressed button event. This should still be
> > compatible with the current failsafe setup. 
> 
> Honestly, i think our expectations divert here a little ;)
> 
> OpenWrt Wiki states "It listens for a button press inside a specific two second window,
> which is indicated with LEDs and by transmitting an UDP package."
> 
> and
> 
> "Recommended for most users: Wait for a flashing LED and press a button.
> This is usually the easiest method once you figure out the correct moment."
> 
> So yes, this differs from the usual "Hold a button and insert power". However,
> entering failsafe on any button state change event would be the 
> behavior i suspect.

Heh, I was about to mention the wiki (and /lib/preinit/30_failsafe_wait)
the as well in the reply. But I cut that part, because it was too long already.
I was basically praising the author who wrote  "... and *press* a button." and
not something along the line of "change the state of the button" in that
LED-blinkenlights window.

/lib/preinit/30_failsafe_wait also echos
 "Please press button now to enter failsafe" as well as
 "- failsafe button "`cat /tmp/failsafe_button`" was pressed -"

it would be odd(er) if this script triggers when a button is released, no?.
 
> > Related Note: 
> > As for the sudden burst of the "device is always entering failsafe".
> > I can see how this is causing problems now. Because if the polarity of
> > a button was declared (or that got copied from another device without
> > checking ;) ) with the wrong way; This will now become a problem because
> > it "physically unpressed" button gets reported as "pressed" and this causes
> > the device to always enter failsafe (unless the very button with the wrong
> > polarity is pressed, which in this context means unpressed).
> 
> This is - sadly - not the reason why I'm observing this issue :(
> Polarity is correctly declared for my devolo board.


Hm, this is what I know about the devilish devolo boards (based on your mails).
(Yes, I read your comment at the end.)

|After configuring the GPIO direction to input, the value of the GPIO reads 0 (pressed).
|After ~10ms, this changes to 1 (not pressed). I suppose your proposed solution does not work
|as interrupts are only registered after configuring the GPIO line as input and the GPIO line
|changes after registering the interrupt. So we are reading the interrupt state too early.

(current) target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi

|        keys {
|                compatible = "gpio-keys";
|
|                reset {
|                        label = "Reset button";
|                        linux,code = <KEY_RESTART>;
|                        gpios = <&gpio 18 GPIO_ACTIVE_LOW>;
|                        debounce-interval = <60>;
|                };
|        };

Since you specified the debounce-interval of 60ms, the gpio-keys (non polled)
variant should not get the faulty/early value since with the proposed patch,
gpio_keys_probe() now uses:

					gpio_keys_button_probe() // sets direction

					[...]

                 schedule_delayed_work(&bdata->work,
                                      msecs_to_jiffies(bdata->software_debounce));

                ret = devm_request_threaded_irq(&pdev->dev,
                        bdata->irq, NULL, button_handle_irq,
                        irqflags, dev_name(&pdev->dev), bdata);


so the work-item that reads and deals with the event is scheduled to run in ~60ms
right before the (gpio)irq gets switched on. This should be enough time to guard
against the gap caused by the gpio direction change.

Note:
If a IRQ is sent out right away, button_handle_irq() calls

        mod_delayed_work(system_wq, &bdata->work,
                         msecs_to_jiffies(bdata->software_debounce));

(so it also waits around for software_debounce to pass).

> > However, I think this is a problem of the individual dts/board support code.
> > But sadly I have currently no time to monitor the forums, bugtracker, ML or
> > github for these problems... so what to do?
> 
> This is clearly nothing we should worry about. I made myself also guilty of this
> mistake and it makes things weird in so many ways.
> 
> It's a bug in the boards integration and nothing we have to catch on our layer :)

we can do debouncing at this layer. 

(I also have a special case with the MyBook Lives. Their "reset key" is currently
not working in OpenWrt because it needs a enable gpio line to be asserted. The
problem with it is that if the line is asserted, the SPI-NOR on which the uboot
resides is switched off. So if the line is gpio-hogged, the MBL won't reboot
anymore and I'm looking to extend the gpio-keys-polled one day to maybe make it
possible to switch the line for the duration of the gpio button read. So there
is finally full support for the device.)

> > 
> > As everyone who follows the thread can see: The struggle is real!
> > Even for something as seemingly simple and benign as a gpio-button.
> 
> Okay, so how do we want to proceed? I would propose to merge your iteration
> (as it was working for me in both modes) to master, wait for people to complain
> and then pickit to 19.07? It should be an improvement over the current situation
> anyways. I would view the failsafe mode on a continuous press as a new 
> "feature" here ;) 

Ok, so the devolo boards are a not failsafing the whole time with that patch
applied? Because I would hate to do that. (I noticed that ath79-gpio emulates
rising & falling IRQ trigger via software, so there's some room to test if
this has an effect on the irq ghosting).

As for how to proceed. Well, the patch version has been up for around a week 
I think. If all stays quiet for the next 8-9 hours, then yes. I'll try to 
take the shot ;).

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
