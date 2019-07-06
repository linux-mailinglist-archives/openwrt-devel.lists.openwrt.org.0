Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265F061316
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jul 2019 23:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOBQhAwAuCp71bxicrzlcXC25DNbvmw4WroU41rvHgU=; b=Kgl5TLttzMBcdv
	KYUHSQCPr5WWfcBcVN/zOibz/WVWoA2FOoUlaRnPFRamF/cSVWk37pUKVRtmAVvyOozBsbwSOe+sB
	fSxhblD+HCKZ68z87BJOsA7yR2W8ybZF7xnKwnF5dQFNeqEovdR/xHPWnLVvI8zYZnJsNf6qYo0BU
	QUYNV55+bnpB4Xe4JtG+YuN/+wTtHp0F322rUJ9LW2mQ+G8nCBCnbdtQfSFS0r5klbHvSU3B60Jvv
	0QsLOdLgKpruY1LlJ7JIQg1NtDKcgpKOsjXbKshHRdmRWKHn1xhAsE41USucQrxaUCgMlG6AF+yuc
	qJ6reEQFp5oGySbw8diA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjshE-00005H-ER; Sat, 06 Jul 2019 21:58:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjsgz-0008WU-Ah
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jul 2019 21:58:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so13182496wrt.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jul 2019 14:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jDVcoYw8M/A9GIacFYI6aOg5NCKNw9+JCddi3YQ2Ygk=;
 b=IzBXOwgIy0GgcgGBZVr6UKDs81Xb8/YZTn1KlIxsAizRAVq858liGUR5f9oWnEWaR3
 gcVPK5c1I5DBfJ/cqzVfwe/eXQKR3jmBT+DNCJRmZd5nj3Rat+MzVGcnM58CXYOKjxVk
 3MMnAGLpGi5M+gH5R8NF7649W8n66OXsWQMyLRZRklVxMUlaV8S63a+AG04ado3VLyG0
 DMrM7Doi2XAMKMaVF8ftv/mCtHPBauYTTDXoa9UhHUFLcyd64iCJCVCW7klo4Jq0pc5e
 z3IjCwxwF5ww86G9Msfo2j4zu6XdQ+KcmHpNqYSZjFEMbny4mXIP5n4UnWN/l8zUMtcl
 9zng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jDVcoYw8M/A9GIacFYI6aOg5NCKNw9+JCddi3YQ2Ygk=;
 b=IbgEJ+08guBoQp0mJNuJCgVsNyPzXJR8qJpSn3i+q1GyX01AZP1zgFCDH90C5gvlQp
 0S32/DKnoECOJ4JbYgNeIH+AFC14HyNvsVF36gPUWD9GMUKxkx0gQmdL7W0G1p5CxoGY
 NkTeNj3xU9kzxPgIZMhS4Q54wzEr0Ecx9MiYLtFbFE9Bt6DWfG+2QO6B72pY6M5Cd2W1
 mN2oCZuFbYgd5XzmYOUXM2AyCybcC5EPwP4jzk8HvSablhuMJ8QsaIigqkfRP0xTw4T7
 pOEPAXrtgwPiDEASGpyIqxcgSNylGh7YKkEir5S+YV9RhVyF+hwMl5/Let+DrH4mHKjN
 0Jcw==
X-Gm-Message-State: APjAAAU4UjY3X2IIao1CMU7ncC6YKZv9D0BF5hjs/V0m+Tm38K7LpdjJ
 vREVT1EV6+z3W+3b7QAC14Dh00yb
X-Google-Smtp-Source: APXvYqxVcJ+k5bF4LmHTWJQZJYLELSRXhGHhoiHosmPCBVTfPkpcHbXPjPopT5229qu+t979MppU3Q==
X-Received: by 2002:adf:fdcc:: with SMTP id i12mr5776841wrs.88.1562450277746; 
 Sat, 06 Jul 2019 14:57:57 -0700 (PDT)
Received: from debian64.daheim (p5B0D755A.dip0.t-ipconnect.de. [91.13.117.90])
 by smtp.gmail.com with ESMTPSA id
 32sm5517018wrh.76.2019.07.06.14.57.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 06 Jul 2019 14:57:56 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hjsgt-0007SF-U4; Sat, 06 Jul 2019 23:57:55 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 06 Jul 2019 23:57:55 +0200
Message-ID: <3499829.cv7yEftivz@debian64>
In-Reply-To: <20190702215718.4891-1-mail@david-bauer.net>
References: <20190702215718.4891-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_145801_404056_D573A4F7 
X-CRM114-Status: GOOD (  29.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linus.walleij@linaro.org, Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tuesday, July 2, 2019 11:57:18 PM CEST David Bauer wrote:
> This patch implements consistent handling of the debounce interval set
> for the GPIO buttons. Hotplug events will only be fired if
> 
> 1. It's the initial stable state (no state-change for duration of the
> debounce interval) for a switch. Buttons will not trigger an event for
> the initial stable state.
> 
> 2. The input changes it's state and remains stable for the debounce
> interval.
> 
> Prior to this patch, this was handled inconsistently for interrupt-based
> an polled gpio-keys. We unify the shared logic in button_hotplug_event
> and modify both implementations to read the initial state.
> 
> Run-tested for 'gpio-keys' and 'gpio-keys-polled' on
> 
>  - devolo WiFi pro 1200e
>  - devolo WiFi pro 1750c
>  - devolo WiFi pro 1750x
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---

Thank you, I had to play much more around with as the logic around the
has_initial_state variable got me really consfused. Sadly, I had to dump
it down to a notch, so that I can follow. So, here's my version of your version ;)
sadly with more changes as I got carried away :(

  - removed a now unused variable "int i;" in gpio_keys_polled_probe.
    (gcc found it)

  - renamed button_hotplug_event to gpio_keys_handle_button
    (From what I know the name "hotplug"(2) came from the udev replacement
    daemon from back in the day. Nowadays, this is part of procd. maybe the
    whole driver should be renamed?) 

  - "button->active_low = flags & OF_GPIO_ACTIVE_LOW" is more robust(for now).
    This only works because  OF_GPIO_ACTIVE_LOW is 0x1.
    If it was bigger than 0x1, then this would have never worked.

  - moved the "check if EV_KEY or EV_SW" to gpio_keys_button_probe() +
  - moved the "button map" lookup performed by button_get_index()
    to gpio_keys_button_probe
  
    I did this to save a few cycles here and there (and the added
    warnings might help a poor debugger one day). In my opinion, it
    doesn't make sense to always check the type and perform the
    lookup for (pretty much at that point) constant values.
    (upstream gpio_keys has a sysfs to add new keys. I guess this
    is why the dev thought of that).

  - moved the "seen" from the bh_priv to gpio_keys_button_data.
    (again, it looks like the developer wanted to make it modular.
    but upstream and openwrt have diverted too much)

There's still stuff todo, like converting the gpio accessors to
just use gpiod_get_value_cansleep. But that's for another time...

The remaining question is: Does this still work as expected?

(I think some of the problems related to the "failsafe issues"
could be caused by the wrong polarity, I'm guilty of doing this
as well. I had copied these settings from netgears GPL code and
did not check. Netgear had their own hacked GPIO driver and then
I foolishly applied the same polarity setting for pretty much
all the apm821xx targets). 

Cheers,
Christian
---
From 2f243a66d4fa62319eb5bde322643da3bfbb7082 Mon Sep 17 00:00:00 2001
From: David Bauer <mail@david-bauer.net>
Date: Tue, 2 Jul 2019 23:57:18 +0200
Subject: [PATCH] gpio-button-hotplug: unify polled and interrupt code

This patch unifies the polled and interrupt-driven gpio_keys code
paths as well implements consistent handling of the debounce
interval set for the GPIO buttons and switches.

Hotplug events will only be fired if

1. The input changes its state and remains stable for the duration
   of the debounce interval (default is 5 ms).

2. In the initial stable ((no state-change for duration of the
   debounce interval) state once the driver module gets loaded.

   Switch type inputs will always report their stable state.
   Unpressed buttons will not trigger an event for the initial
   stable state. Whereas pressed buttons will trigger an event.
   This is consistent with upstream's gpio-key driver that uses
   the input subsystem (and dont use autorepeat).

Prior to this patch, this was handled inconsistently for interrupt-based
an polled gpio-keys. Hence this patch unifies the shared logic into the
gpio_keys_handle_button() function and modify both implementations to
handle the initial state properly.

Run-tested for 'gpio-keys' and 'gpio-keys-polled' on

 - devolo WiFi pro 1200e
 - devolo WiFi pro 1750c
 - devolo WiFi pro 1750x
 - Netgear WNDR4700
 - Meraki MR24

Signed-off-by: David Bauer <mail@david-bauer.net>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com> [further
cleanups, simplification and unification]
---
 .../src/gpio-button-hotplug.c                 | 141 ++++++++++--------
 1 file changed, 76 insertions(+), 65 deletions(-)

diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
index e63d414284..edd03d2b62 100644
--- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
+++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
@@ -35,10 +35,6 @@
 #define DRV_NAME	"gpio-keys"
 #define PFX	DRV_NAME ": "
 
-struct bh_priv {
-	unsigned long		seen;
-};
-
 struct bh_event {
 	const char		*name;
 	unsigned int		type;
@@ -56,7 +52,8 @@ struct bh_map {
 
 struct gpio_keys_button_data {
 	struct delayed_work work;
-	struct bh_priv bh;
+	unsigned long seen;
+	int map_entry;
 	int last_state;
 	int count;
 	int threshold;
@@ -238,39 +235,6 @@ static int button_get_index(unsigned int code)
 	return -1;
 }
 
-static void button_hotplug_event(struct gpio_keys_button_data *data,
-			   unsigned int type, int value)
-{
-	struct bh_priv *priv = &data->bh;
-	unsigned long seen = jiffies;
-	int btn;
-
-	pr_debug(PFX "event type=%u, code=%u, value=%d\n", type, data->b->code, value);
-
-	if ((type != EV_KEY) && (type != EV_SW))
-		return;
-
-	btn = button_get_index(data->b->code);
-	if (btn < 0)
-		return;
-
-	if (priv->seen == 0)
-		priv->seen = seen;
-
-	button_hotplug_create_event(button_map[btn].name, type,
-			(seen - priv->seen) / HZ, value);
-	priv->seen = seen;
-}
-
-struct gpio_keys_button_dev {
-	int polled;
-	struct delayed_work work;
-
-	struct device *dev;
-	struct gpio_keys_platform_data *pdata;
-	struct gpio_keys_button_data data[0];
-};
-
 static int gpio_button_get_value(struct gpio_keys_button_data *bdata)
 {
 	int val;
@@ -283,27 +247,61 @@ static int gpio_button_get_value(struct gpio_keys_button_data *bdata)
 	return val ^ bdata->b->active_low;
 }
 
-static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
+static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
 {
+	unsigned int type = bdata->b->type ?: EV_KEY;
 	int state = gpio_button_get_value(bdata);
+	unsigned long seen = jiffies;
 
-	if (state != bdata->last_state) {
-		unsigned int type = bdata->b->type ?: EV_KEY;
+	pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
+		 type, bdata->b->code, state);
+
+	/* is this the initialization state? */
+	if (bdata->last_state == -1) {
+		/*
+		 * Don't advertise unpressed buttons on initialization.
+		 * Just save their state and continue otherwise this
+		 * can cause OpenWrt to enter failsafe.
+		 */
+		if (type == EV_KEY && state == 0)
+			goto set_state;
+		/*
+		 * But we are very interested in pressed buttons and
+		 * initial switch state. These will be reported to
+		 * userland.
+		 */
+	} else if (bdata->last_state == state) {
+		/* reset asserted counter (only relevant for polled keys) */
+		bdata->count = 0;
+		return;
+	}
 
-		if (bdata->count < bdata->threshold) {
-			bdata->count++;
-			return;
-		}
+	if (bdata->count < bdata->threshold) {
+		bdata->count++;
+		return;
+	}
 
-		if (bdata->last_state != -1 || type == EV_SW)
-			button_hotplug_event(bdata, type, state);
+	if (bdata->seen == 0)
+		bdata->seen = seen;
 
-		bdata->last_state = state;
-	}
+	button_hotplug_create_event(button_map[bdata->map_entry].name, type,
+				    (seen - bdata->seen) / HZ, state);
+	bdata->seen = seen;
 
+set_state:
+	bdata->last_state = state;
 	bdata->count = 0;
 }
 
+struct gpio_keys_button_dev {
+	int polled;
+	struct delayed_work work;
+
+	struct device *dev;
+	struct gpio_keys_platform_data *pdata;
+	struct gpio_keys_button_data data[0];
+};
+
 static void gpio_keys_polled_queue_work(struct gpio_keys_button_dev *bdev)
 {
 	struct gpio_keys_platform_data *pdata = bdev->pdata;
@@ -322,7 +320,9 @@ static void gpio_keys_polled_poll(struct work_struct *work)
 
 	for (i = 0; i < bdev->pdata->nbuttons; i++) {
 		struct gpio_keys_button_data *bdata = &bdev->data[i];
-		gpio_keys_polled_check_state(bdata);
+
+		if (bdata->gpiod)
+			gpio_keys_handle_button(bdata);
 	}
 	gpio_keys_polled_queue_work(bdev);
 }
@@ -342,8 +342,7 @@ static void gpio_keys_irq_work_func(struct work_struct *work)
 	struct gpio_keys_button_data *bdata = container_of(work,
 		struct gpio_keys_button_data, work.work);
 
-	button_hotplug_event(bdata, bdata->b->type ?: EV_KEY,
-			     gpio_button_get_value(bdata));
+	gpio_keys_handle_button(bdata);
 }
 
 static irqreturn_t button_handle_irq(int irq, void *_bdata)
@@ -351,8 +350,8 @@ static irqreturn_t button_handle_irq(int irq, void *_bdata)
 	struct gpio_keys_button_data *bdata =
 		(struct gpio_keys_button_data *) _bdata;
 
-	schedule_delayed_work(&bdata->work,
-			      msecs_to_jiffies(bdata->software_debounce));
+	mod_delayed_work(system_wq, &bdata->work,
+			 msecs_to_jiffies(bdata->software_debounce));
 
 	return IRQ_HANDLED;
 }
@@ -413,7 +412,7 @@ gpio_keys_get_devtree_pdata(struct device *dev)
 				return ERR_PTR(error);
 			}
 		} else {
-			button->active_low = flags & OF_GPIO_ACTIVE_LOW;
+			button->active_low = !!(flags & OF_GPIO_ACTIVE_LOW);
 		}
 
 		if (of_property_read_u32(pp, "linux,code", &button->code)) {
@@ -520,6 +519,19 @@ static int gpio_keys_button_probe(struct platform_device *pdev,
 			return -EINVAL;
 		}
 
+		bdata->map_entry = button_get_index(button->code);
+		if (bdata->map_entry < 0) {
+			dev_warn(dev, DRV_NAME "does not support key code:%u\n",
+				button->code);
+			continue;
+		}
+
+		if (!(button->type == 0 || button->type == EV_KEY ||
+		      button->type == EV_SW)) {
+			dev_warn(dev, DRV_NAME "only supports buttons or switches\n");
+			continue;
+		}
+
 		error = devm_gpio_request(dev, gpio,
 				     button->desc ? button->desc : DRV_NAME);
 		if (error) {
@@ -540,13 +552,13 @@ static int gpio_keys_button_probe(struct platform_device *pdev,
 		}
 
 		bdata->can_sleep = gpio_cansleep(gpio);
-		bdata->last_state = -1;
+		bdata->last_state = -1; /* Unknown state on boot */
 
 		if (bdev->polled) {
 			bdata->threshold = DIV_ROUND_UP(button->debounce_interval,
 							pdata->poll_interval);
 		} else {
-			bdata->threshold = 1;
+			/* bdata->threshold = 0; already initialized */
 
 			if (button->debounce_interval) {
 				error = gpiod_set_debounce(bdata->gpiod,
@@ -592,6 +604,11 @@ static int gpio_keys_probe(struct platform_device *pdev)
 		struct gpio_keys_button_data *bdata = &bdev->data[i];
 		unsigned long irqflags = IRQF_ONESHOT;
 
+		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
+
+		if (!bdata->gpiod)
+			continue;
+
 		if (!button->irq) {
 			bdata->irq = gpio_to_irq(button->gpio);
 
@@ -606,7 +623,8 @@ static int gpio_keys_probe(struct platform_device *pdev)
 			bdata->irq = button->irq;
 		}
 
-		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
+		schedule_delayed_work(&bdata->work,
+				      msecs_to_jiffies(bdata->software_debounce));
 
 		ret = devm_request_threaded_irq(&pdev->dev,
 			bdata->irq, NULL, button_handle_irq,
@@ -621,9 +639,6 @@ static int gpio_keys_probe(struct platform_device *pdev)
 			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
 				button->gpio, bdata->irq);
 		}
-
-		if (bdata->b->type == EV_SW)
-			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
 	}
 
 	return 0;
@@ -634,7 +649,6 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
 	struct gpio_keys_platform_data *pdata;
 	struct gpio_keys_button_dev *bdev;
 	int ret;
-	int i;
 
 	ret = gpio_keys_button_probe(pdev, &bdev, 1);
 
@@ -648,9 +662,6 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
 	if (pdata->enable)
 		pdata->enable(bdev->dev);
 
-	for (i = 0; i < pdata->nbuttons; i++)
-		gpio_keys_polled_check_state(&bdev->data[i]);
-
 	gpio_keys_polled_queue_work(bdev);
 
 	return ret;
-- 
2.20.1





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
