Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD4163DE2
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 00:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43vh/tt44gfxsAe7kI1akx3cs/QGFEeo8UFGx5IaTIg=; b=Oc8Lhy9IRA+MDl
	FxCnv2jDBQM7y3jYh561iANq7AaVJ2CqrZe+2zavEkE38Q5iyFMYbUU99jbKhJp9CJgD8YCoOxyWn
	lvMG/1XXaDnQWnP0afhXNXMPQXZ6WgH1rgDwDtAMT1LriUEEKFucmvO85LcyBnZP2GnnxOrdNJXn+
	G2aR8z4D9wuHgBV86CLHF69dv8uiB4TSCf1NSZxVj0JF4ky8peGmHrKkgeHZErLczMfvQjKADmwFa
	RqQyBMhRJYPYxUuiUKHulE60WTqVkmuoGJKNMSNfsmtQglRR4aK5ngyyEUG2yvuKQeae2uRCXj+2z
	d1UwGgXrom4220P6t/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkye2-0006Gn-I6; Tue, 09 Jul 2019 22:31:30 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkydq-0006GB-TF
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jul 2019 22:31:21 +0000
Received: from [IPv6:2003:e5:3f0b:1e00:aa0a:b232:e7f4:57dd]
 (p200300E53F0B1E00AA0AB232E7F457DD.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0b:1e00:aa0a:b232:e7f4:57dd])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 231B7222E4;
 Wed, 10 Jul 2019 00:31:13 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: Christian Lamparter <chunkeey@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20190702215718.4891-1-mail@david-bauer.net>
 <3499829.cv7yEftivz@debian64>
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
Message-ID: <765ea79c-1ba2-0956-e699-0f281c462397@david-bauer.net>
Date: Wed, 10 Jul 2019 00:31:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3499829.cv7yEftivz@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_153119_242391_90BAA170 
X-CRM114-Status: GOOD (  32.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linus.walleij@linaro.org, =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Christian,

thanks for your reworked patch. I think i found two bugs around the debounce
interval for both flavors. I'll have to admit, they are both edgecases ;)

On 06.07.19 23:57, Christian Lamparter wrote
> -static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
> +static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
>   {
> +	unsigned int type = bdata->b->type ?: EV_KEY;
>   	int state = gpio_button_get_value(bdata);
> +	unsigned long seen = jiffies;
>   
> -	if (state != bdata->last_state) {
> -		unsigned int type = bdata->b->type ?: EV_KEY;
> +	pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
> +		 type, bdata->b->code, state);
> +
> +	/* is this the initialization state? */
> +	if (bdata->last_state == -1) {
> +		/*
> +		 * Don't advertise unpressed buttons on initialization.
> +		 * Just save their state and continue otherwise this
> +		 * can cause OpenWrt to enter failsafe.
> +		 */
> +		if (type == EV_KEY && state == 0)
> +			goto set_state;

As we are calling gpio_keys_handle_button every poll-interval, we need 
to make sure we save the initial state AFTER the button has been stable 
for the debounce interval. For irq-based keys we get this "for free" as 
we modify the execution timer for the irq handling function.

However, we need to track the button state for the polled GPIO keys, so 
we cannot piggy-back on the last_state for deciding if the initial state 
is already set. We could use negative numbers for that, but i think this 
is more hacky than using a dedicated variable for keeping track.

This was the reason for my 'has_initial_state' variable. :)

> +		/*
> +		 * But we are very interested in pressed buttons and
> +		 * initial switch state. These will be reported to
> +		 * userland.
> +		 */
> +	} else if (bdata->last_state == state) {
> +		/* reset asserted counter (only relevant for polled keys) */

This is also needed for irq-driven keys. If the state changes two times 
within the debounce interval, gpio_keys_handle_button is still executed 
and we need to terminate here. Otherwise, we would skip a "release" or
"push" action.

I did rework those two parts a bit and tested it with the irq and
polled flavors without a problem. See below:


From b751bb6f4088b4a16c378006fed4e071f905d9e0 Mon Sep 17 00:00:00 2001
From: David Bauer <mail@david-bauer.net>
Date: Wed, 10 Jul 2019 00:22:56 +0200
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
[further cleanups, simplification and unification]
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
[reworked initial state logic, fix initial debounce for polled keys]
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../src/gpio-button-hotplug.c                 | 151 ++++++++++--------
 1 file changed, 86 insertions(+), 65 deletions(-)

diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
index e63d414284..a5a5ebed23 100644
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
@@ -56,8 +52,10 @@ struct bh_map {
 
 struct gpio_keys_button_data {
 	struct delayed_work work;
-	struct bh_priv bh;
+	unsigned long seen;
+	int map_entry;
 	int last_state;
+	int has_initial_state;
 	int count;
 	int threshold;
 	int can_sleep;
@@ -238,39 +236,6 @@ static int button_get_index(unsigned int code)
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
@@ -283,27 +248,69 @@ static int gpio_button_get_value(struct gpio_keys_button_data *bdata)
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
-
-		if (bdata->count < bdata->threshold) {
-			bdata->count++;
-			return;
-		}
+	pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
+		 type, bdata->b->code, state);
+
+	if ((bdata->has_initial_state && bdata->last_state == state) ||
+	    (!bdata->has_initial_state && !bdata->irq && bdata->last_state != state)) {
+		/* Reset asserted counter when
+		 *  1. we have a stable initial state and the current state matches the last
+		 *  2. we do not have a stable state (yet),
+		 *     we use polled GPIO keys,
+		 *     the current state does not match the last.
+		 */
+		goto set_state;
+	}
 
-		if (bdata->last_state != -1 || type == EV_SW)
-			button_hotplug_event(bdata, type, state);
+	if (bdata->count < bdata->threshold) {
+		bdata->count++;
+		return;
+	}
 
-		bdata->last_state = state;
+	/* Is this the initialization state? */
+	if (!bdata->has_initial_state) {
+		/*
+		 * Now the button was stable for the debounce interval.
+		 * Mark the button as having an initial stable state
+		 * and do not report a button press. Otherwise, this
+		 * can cause OpenWrt to enter failsafe.
+		 */
+		bdata->has_initial_state = 1;
+		if (type == EV_KEY)
+			goto set_state;
+		/*
+		 * But we are very interested in initial switch states.
+		 * These will be reported to userland.
+		 */
 	}
 
+	if (bdata->seen == 0)
+		bdata->seen = seen;
+
+	button_hotplug_create_event(button_map[bdata->map_entry].name, type,
+				    (seen - bdata->seen) / HZ, state);
+	bdata->seen = seen;
+
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
@@ -322,7 +329,9 @@ static void gpio_keys_polled_poll(struct work_struct *work)
 
 	for (i = 0; i < bdev->pdata->nbuttons; i++) {
 		struct gpio_keys_button_data *bdata = &bdev->data[i];
-		gpio_keys_polled_check_state(bdata);
+
+		if (bdata->gpiod)
+			gpio_keys_handle_button(bdata);
 	}
 	gpio_keys_polled_queue_work(bdev);
 }
@@ -342,8 +351,7 @@ static void gpio_keys_irq_work_func(struct work_struct *work)
 	struct gpio_keys_button_data *bdata = container_of(work,
 		struct gpio_keys_button_data, work.work);
 
-	button_hotplug_event(bdata, bdata->b->type ?: EV_KEY,
-			     gpio_button_get_value(bdata));
+	gpio_keys_handle_button(bdata);
 }
 
 static irqreturn_t button_handle_irq(int irq, void *_bdata)
@@ -351,8 +359,8 @@ static irqreturn_t button_handle_irq(int irq, void *_bdata)
 	struct gpio_keys_button_data *bdata =
 		(struct gpio_keys_button_data *) _bdata;
 
-	schedule_delayed_work(&bdata->work,
-			      msecs_to_jiffies(bdata->software_debounce));
+	mod_delayed_work(system_wq, &bdata->work,
+			 msecs_to_jiffies(bdata->software_debounce));
 
 	return IRQ_HANDLED;
 }
@@ -413,7 +421,7 @@ gpio_keys_get_devtree_pdata(struct device *dev)
 				return ERR_PTR(error);
 			}
 		} else {
-			button->active_low = flags & OF_GPIO_ACTIVE_LOW;
+			button->active_low = !!(flags & OF_GPIO_ACTIVE_LOW);
 		}
 
 		if (of_property_read_u32(pp, "linux,code", &button->code)) {
@@ -520,6 +528,19 @@ static int gpio_keys_button_probe(struct platform_device *pdev,
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
@@ -540,13 +561,14 @@ static int gpio_keys_button_probe(struct platform_device *pdev,
 		}
 
 		bdata->can_sleep = gpio_cansleep(gpio);
-		bdata->last_state = -1;
+		bdata->last_state = -1; /* Unknown state on boot */
+		bdata->has_initial_state = 0;
 
 		if (bdev->polled) {
 			bdata->threshold = DIV_ROUND_UP(button->debounce_interval,
 							pdata->poll_interval);
 		} else {
-			bdata->threshold = 1;
+			/* bdata->threshold = 0; already initialized */
 
 			if (button->debounce_interval) {
 				error = gpiod_set_debounce(bdata->gpiod,
@@ -592,6 +614,11 @@ static int gpio_keys_probe(struct platform_device *pdev)
 		struct gpio_keys_button_data *bdata = &bdev->data[i];
 		unsigned long irqflags = IRQF_ONESHOT;
 
+		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
+
+		if (!bdata->gpiod)
+			continue;
+
 		if (!button->irq) {
 			bdata->irq = gpio_to_irq(button->gpio);
 
@@ -606,7 +633,8 @@ static int gpio_keys_probe(struct platform_device *pdev)
 			bdata->irq = button->irq;
 		}
 
-		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
+		schedule_delayed_work(&bdata->work,
+				      msecs_to_jiffies(bdata->software_debounce));
 
 		ret = devm_request_threaded_irq(&pdev->dev,
 			bdata->irq, NULL, button_handle_irq,
@@ -621,9 +649,6 @@ static int gpio_keys_probe(struct platform_device *pdev)
 			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
 				button->gpio, bdata->irq);
 		}
-
-		if (bdata->b->type == EV_SW)
-			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
 	}
 
 	return 0;
@@ -634,7 +659,6 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
 	struct gpio_keys_platform_data *pdata;
 	struct gpio_keys_button_dev *bdev;
 	int ret;
-	int i;
 
 	ret = gpio_keys_button_probe(pdev, &bdev, 1);
 
@@ -648,9 +672,6 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
 	if (pdata->enable)
 		pdata->enable(bdev->dev);
 
-	for (i = 0; i < pdata->nbuttons; i++)
-		gpio_keys_polled_check_state(&bdev->data[i]);
-
 	gpio_keys_polled_queue_work(bdev);
 
 	return ret;
-- 
2.22.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
