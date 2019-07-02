Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DE05D7F6
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 23:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WjXxaPsxJ5ol94p8D2i0dIXYaC2dqmP/iCc3ePDCbcc=; b=JfPE4T8ShPYbbR
	RpnB9O4XtHQPYwSRLLajCuRs+cEEF98rrSc1BuHrvSib9hXBSK8RAJvonJfbQbsJ3zrEOxcI7y4Z8
	a3EWN8eWQeUIqnx6v/85Dannz7Mt9hE/2DYOpwbz95b1f+i47as3NnTOCePZMuZVbwYfSVMwlnInW
	3LiSi75h46HynPVZ/8SqPusppUPN3MCOV5qEdSJXKWyDi+jpALntManLhM7vsIafjzStG9rifKOxc
	5EPMDpFZAB8kqoEq7XoQkfxe+SXgdINXmTyh0QNpp/hXRnwq0+kSJSlsdodZhx2JKyJNgBzF/Hivb
	8sUupPqAO8akXX+2j0sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiQmc-0000Wf-Vy; Tue, 02 Jul 2019 21:57:51 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiQmI-0000W5-B4
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 21:57:32 +0000
Received: from localhost.localdomain
 (p200300E53F0B6D00C4F0641D63AB03E8.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0b:6d00:c4f0:641d:63ab:3e8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 9B47A2284F
 for <openwrt-devel@lists.openwrt.org>; Tue,  2 Jul 2019 23:57:25 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  2 Jul 2019 23:57:18 +0200
Message-Id: <20190702215718.4891-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_145730_676427_94A1FE01 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] gpio-button-hotplug: mind debounce
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch implements consistent handling of the debounce interval set
for the GPIO buttons. Hotplug events will only be fired if

1. It's the initial stable state (no state-change for duration of the
debounce interval) for a switch. Buttons will not trigger an event for
the initial stable state.

2. The input changes it's state and remains stable for the debounce
interval.

Prior to this patch, this was handled inconsistently for interrupt-based
an polled gpio-keys. We unify the shared logic in button_hotplug_event
and modify both implementations to read the initial state.

Run-tested for 'gpio-keys' and 'gpio-keys-polled' on

 - devolo WiFi pro 1200e
 - devolo WiFi pro 1750c
 - devolo WiFi pro 1750x

Signed-off-by: David Bauer <mail@david-bauer.net>
---
v2:
 - Debounce interval is now correctly considered  for polled GPIO-keys

 .../src/gpio-button-hotplug.c                 | 40 ++++++++++++-------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
index e63d414284..67b4549cc2 100644
--- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
+++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
@@ -57,6 +57,7 @@ struct bh_map {
 struct gpio_keys_button_data {
 	struct delayed_work work;
 	struct bh_priv bh;
+	int has_initial_state;
 	int last_state;
 	int count;
 	int threshold;
@@ -241,6 +242,7 @@ static int button_get_index(unsigned int code)
 static void button_hotplug_event(struct gpio_keys_button_data *data,
 			   unsigned int type, int value)
 {
+	int last_state = data->last_state;
 	struct bh_priv *priv = &data->bh;
 	unsigned long seen = jiffies;
 	int btn;
@@ -250,6 +252,15 @@ static void button_hotplug_event(struct gpio_keys_button_data *data,
 	if ((type != EV_KEY) && (type != EV_SW))
 		return;
 
+	data->last_state = value;
+
+	if (!data->has_initial_state) {
+		data->has_initial_state = 1;
+		if (type != EV_SW)
+			return;
+	} else if (value == last_state)
+		return;
+
 	btn = button_get_index(data->b->code);
 	if (btn < 0)
 		return;
@@ -285,19 +296,22 @@ static int gpio_button_get_value(struct gpio_keys_button_data *bdata)
 
 static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
 {
+	int has_initial_state = bdata->has_initial_state;
+	int last_state = bdata->last_state;
 	int state = gpio_button_get_value(bdata);
 
-	if (state != bdata->last_state) {
-		unsigned int type = bdata->b->type ?: EV_KEY;
+	if (!has_initial_state && bdata->last_state == -1) {
+		bdata->last_state = state;
+		return;
+	}
 
+	if (state != last_state || (!has_initial_state && last_state == state)) {
 		if (bdata->count < bdata->threshold) {
 			bdata->count++;
 			return;
 		}
-
-		if (bdata->last_state != -1 || type == EV_SW)
-			button_hotplug_event(bdata, type, state);
-
+		button_hotplug_event(bdata, bdata->b->type ?: EV_KEY, state);
+	} else if (!has_initial_state && last_state != state) {
 		bdata->last_state = state;
 	}
 
@@ -351,8 +365,8 @@ static irqreturn_t button_handle_irq(int irq, void *_bdata)
 	struct gpio_keys_button_data *bdata =
 		(struct gpio_keys_button_data *) _bdata;
 
-	schedule_delayed_work(&bdata->work,
-			      msecs_to_jiffies(bdata->software_debounce));
+	mod_delayed_work(system_wq, &bdata->work,
+			 msecs_to_jiffies(bdata->software_debounce));
 
 	return IRQ_HANDLED;
 }
@@ -540,6 +554,7 @@ static int gpio_keys_button_probe(struct platform_device *pdev,
 		}
 
 		bdata->can_sleep = gpio_cansleep(gpio);
+		bdata->has_initial_state = 0;
 		bdata->last_state = -1;
 
 		if (bdev->polled) {
@@ -608,6 +623,9 @@ static int gpio_keys_probe(struct platform_device *pdev)
 
 		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
 
+		schedule_delayed_work(&bdata->work,
+				      msecs_to_jiffies(bdata->software_debounce));
+
 		ret = devm_request_threaded_irq(&pdev->dev,
 			bdata->irq, NULL, button_handle_irq,
 			irqflags, dev_name(&pdev->dev), bdata);
@@ -621,9 +639,6 @@ static int gpio_keys_probe(struct platform_device *pdev)
 			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
 				button->gpio, bdata->irq);
 		}
-
-		if (bdata->b->type == EV_SW)
-			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
 	}
 
 	return 0;
@@ -648,9 +663,6 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
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
