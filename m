Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B201F4DA28
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 21:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJxSM8D8Om3x/KiEZ2hdwBZ4x4otvpaZExvZLYczflc=; b=IftTycDnMLcLzZ
	kly5ypbGOTMQg9FP30KphqMMk8zSpTD9MGfA+BiZZS0uAM0oemdij3uZmp3q0PatNmAjSM4KenwdS
	iVLmsDeP698jrK0dEPmn+1MTDWHwFAzzGbwPEE9SLi21IVpyspqK4hxClIOAk7Wy5jyT70FByDFKZ
	i09Hlut+aVIcsZlMLXDR0Lq04rwVa3qWM2ZV+RLBhUyggIF5ob7KALGI3I3fVn8JLlcukgYEZjLOY
	coRkCRyOPxaWaeL5YOpByPDHYz6P91EilOrCS1pLgIyr4hrSzC7SyCvENOUrBEcFR86DLP3qSvX2F
	vE6G3quMuBwJRb7hIJfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2jI-0005Ij-Sh; Thu, 20 Jun 2019 19:28:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2j7-0005IJ-9t
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 19:28:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so4146096wre.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 12:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZyBKKYkN+8Q/DH/M8OmedJ4B2YVhwO7XhTtA/DFj0O4=;
 b=bqi6LSnry4MscmxUZ0EZ8wIEnZRNgAmuBoipJvlFfK1OIUl2nGQ6VBcRcNcUBZ6+UT
 YkN7xfzNGJAVwz17blh3ixDH/yDlC5wvXxFNUzq69bTpoog2NM2uDhJBEAePh2RBGw6o
 489U8JND5bVuvK99uYV/KnBt9ITAIvjBrfiPMOTITMOF1V63kNg6MQQwe0Mm6rFBipm5
 DSId0OwMzla31ix8IB8R74kJrja1ZFSNBzF8Ekf1G4X215g5iHFB4QLxQHe5rcZ7MQeB
 K+K/dsgZDfUHMlzEo4b1MvpCY+KAK+pBZfEBxvpXWqLZL2QPZJuGRyTi5Tr9LzEGtwjQ
 YbGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZyBKKYkN+8Q/DH/M8OmedJ4B2YVhwO7XhTtA/DFj0O4=;
 b=S6+UHjjSzMsMwKjwlcvr1oYDsTeMf1k4cbaVStHi/HI+jXAYBBPH3SZvYq2RFBNHWq
 ReXk8FNqK4rmWqotJE454WxNN/y12wRgSoOqnDIU3N4IYfBSW1zaheoboNxC7d5x+wq0
 kuFGGOcepI3MH9+/N/1TwxcDTagjbi+pJYAcLHMrSc4DtifNsi+a8zNx6xcYAQBYwqxK
 2fwrevRqO7FFDGb6AmPb+l6SGuW5lg2P67wzEs1SCx+bSSscYrk3QlPORuhLgUmbKZDl
 5bHNc3bFe21sZWAPZ2GQFy/J0ZX+IBgfKoyUpnSZOKxaxW5khsjAJAbw1joFtaaPYFTc
 oxHA==
X-Gm-Message-State: APjAAAXr75/imQIiLt8BpPTNfHr8RYcXOns/HtTfw1BuBO92NAcE6DJg
 BqfpaeKOSPxYaNYZSqqZ0Rw=
X-Google-Smtp-Source: APXvYqxoLGqVR0TcWMQ8Oy5efqFxEag1dvCbZI4qsagoed07lrL+JkpkCQuUlOdR7JXL8ayOKU87Qw==
X-Received: by 2002:adf:dc81:: with SMTP id r1mr9389643wrj.298.1561058882515; 
 Thu, 20 Jun 2019 12:28:02 -0700 (PDT)
Received: from debian64.daheim (pD9E29A96.dip0.t-ipconnect.de.
 [217.226.154.150])
 by smtp.gmail.com with ESMTPSA id l124sm272948wmf.36.2019.06.20.12.28.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 12:28:01 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1he2j3-0005kS-2K; Thu, 20 Jun 2019 21:28:01 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: David Bauer <mail@david-bauer.net>
Date: Thu, 20 Jun 2019 21:28:00 +0200
Message-ID: <2293121.eSR8BlbMtA@debian64>
In-Reply-To: <2b8d4dac-322e-40e6-6113-a1be432da42b@david-bauer.net>
References: <20190618110612.11063-1-mail@david-bauer.net>
 <2379937.tmqAmWvn8S@debian64>
 <2b8d4dac-322e-40e6-6113-a1be432da42b@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_122805_371077_F37457F1 
X-CRM114-Status: GOOD (  18.87  )
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org, linus.walleij@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thursday, June 20, 2019 8:10:18 PM CEST David Bauer wrote:
> Hello Christian,
> On 20.06.19 17:21, Christian Lamparter wrote:
> > On Tuesday, June 18, 2019 1:06:12 PM CEST David Bauer wrote:
> >> This patch implements consistent handling of the debounce interval set
> >> for the GPIO buttons. Hotplug events will only be fired if
> >>
> >> 1. It's the initial stable state (no state-change for duration of the
> >> debounce interval) for a switch. Buttons will not trigger an event for
> >> the initial stable state.
> >>
> >> 2. The input changes it's state and remains stable for the debounce
> >> interval.
> >>
> >> Prior to this patch, this was handled inconsistently for interrupt-based
> >> an polled gpio-keys. We unify the shared logic in button_hotplug_event
> >> and modify both implementations to read the initial state.
> >>
> >> Run-tested for 'gpio-keys' and 'gpio-keys-polled' on
> >>
> >>  - devolo WiFi pro 1200e
> >>  - devolo WiFi pro 1750c
> >>  - devolo WiFi pro 1750x
> >>
> >> Signed-off-by: David Bauer <mail@david-bauer.net>
> >> ---
> >>  .../src/gpio-button-hotplug.c                 | 42 +++++++++----------
> >>  1 file changed, 20 insertions(+), 22 deletions(-)
> >>
> >> diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> >> index e63d414284..25150344e0 100644
> >> --- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> >> +++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> >> @@ -351,8 +352,8 @@ static irqreturn_t button_handle_irq(int irq, void *_bdata)
> >>  	struct gpio_keys_button_data *bdata =
> >>  		(struct gpio_keys_button_data *) _bdata;
> >>  
> >> -	schedule_delayed_work(&bdata->work,
> >> -			      msecs_to_jiffies(bdata->software_debounce));
> >> +	mod_delayed_work(system_wq, &bdata->work,
> >> +			 msecs_to_jiffies(bdata->software_debounce));
> >>  
> >>  	return IRQ_HANDLED;
> >>  }
> >> @@ -608,6 +609,9 @@ static int gpio_keys_probe(struct platform_device *pdev)
> >>  
> >>  		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
> >>  
> >> +		schedule_delayed_work(&bdata->work,
> >> +				      msecs_to_jiffies(bdata->software_debounce));
> >> +
> > Hm, well since the first state is -1 we could just as well schedule the work
> > immediately here... 
> 
> Hmm, i have a bit trouble grasping your intention here.
> 
> Do you mean we can unify the scheduling for polled and
> interrupt-based keys?

I was gunning for making the polled and interrupt behave in the
same way. Currently the gpio_polled variant does

|	for (i = 0; i < pdata->nbuttons; i++)
|		gpio_keys_polled_check_state(&bdev->data[i]);

as part of it's probe function which immediately initializes the
button's state from -1 to either 0 or 1.

But with the 

| + schedule_delayed_work(&bdata->work,
| +				      msecs_to_jiffies(bdata->software_debounce));

the irq-path would wait software_debounce (5ms by default) time
until the -1 is cleared.

This is not really a problem, other than a symmetry mismatch when
targets switch from gpio-keys to gpio-keys-polled or vice versa
and expect the implementation to behave in the same manner.

Best Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
