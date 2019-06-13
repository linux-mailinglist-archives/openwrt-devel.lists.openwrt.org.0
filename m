Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E4444E02
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 23:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m0L+Jo/t1QlQ/Wscf0rNCzg7dyKbChK8oHwt8+Uzqxw=; b=VJ2JuZm/8ydCRf
	a9RX47Ahu9ddxuZq4YfHi0YZ+28XbSd5fQgztqKdorg4ocX4SQCUx18aile6Ow3+Wjdz8wEGA06Ci
	tpQdGCW88p7Uu1gXGkmRiKucqA6Woh1jjIU1k5VtLjMzXdEbPVZC5AKbAKni9fMQfYkZTPYoWv5S/
	aDuUwMuf+JmR/F6JtYY3gBLxVG/OE8eX3j1LSihhrHXxGbemb1K/SOY77C8RORHiqzHw/9YyblX67
	2niNdyAl42y1qkC+BTlLx98Br/kkUn6Bk4/Nai5gnIvrXImnM3oOn+Rw6LTYenLnTpLpWU4b0SXCC
	vsBHLIVQOLjLJd9nWUNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWqO-0006lr-AO; Thu, 13 Jun 2019 21:01:12 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWq4-0006eW-Fp
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 21:00:54 +0000
Received: from localhost.localdomain
 (p200300E53F099C0093B6E161A050D22A.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f09:9c00:93b6:e161:a050:d22a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id BDA0D222F2;
 Thu, 13 Jun 2019 23:00:49 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 13 Jun 2019 23:00:36 +0200
Message-Id: <20190613210036.30922-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_140052_718602_2DADA751 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: read
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
Cc: ynezz@true.cz, chunkeey@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit reads the initial state for interrupt triggered gpio-keys.
Without this commit, the switch to the initial stable input-state
triggers a button-event. Button events are now only triggered when the
button state differs fromt the initial state.

Effectively, this reverts commit 6c5bfaac84b0 ("gpio-button-hotplug:
gpio-keys: fix always missing first event"), but in addition, we read
the initial button state on driver probe. This commit caused some devices
to enter failsafe mode every time when booting.

Run-tested on devolo WiFi pro 1200e & 1200i.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../src/gpio-button-hotplug.c                  | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
index daa4b2a4f7..5bc783e015 100644
--- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
+++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
@@ -341,8 +341,16 @@ static void gpio_keys_irq_work_func(struct work_struct *work)
 	struct gpio_keys_button_data *bdata = container_of(work,
 		struct gpio_keys_button_data, work.work);
 
-	button_hotplug_event(bdata, bdata->b->type ?: EV_KEY,
-			     gpio_button_get_value(bdata));
+	int state = gpio_button_get_value(bdata);
+
+	if (state != bdata->last_state) {
+		unsigned int type = bdata->b->type ?: EV_KEY;
+
+		if (bdata->last_state != -1 || type == EV_SW)
+			button_hotplug_event(bdata, type, state);
+
+		bdata->last_state = state;
+	}
 }
 
 static irqreturn_t button_handle_irq(int irq, void *_bdata)
@@ -607,6 +615,9 @@ static int gpio_keys_probe(struct platform_device *pdev)
 
 		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
 
+		schedule_delayed_work(&bdata->work,
+			      msecs_to_jiffies(bdata->software_debounce));
+
 		ret = devm_request_threaded_irq(&pdev->dev,
 			bdata->irq, NULL, button_handle_irq,
 			irqflags, dev_name(&pdev->dev), bdata);
@@ -620,9 +631,6 @@ static int gpio_keys_probe(struct platform_device *pdev)
 			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
 				button->gpio, bdata->irq);
 		}
-
-		if (bdata->b->type == EV_SW)
-			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
 	}
 
 	return 0;
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
