Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD3A2E5A6
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 21:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9FIu7rCcNyp09j8G9swS5k7Od3cbGCqndes779A+HSc=; b=b2iMV6gH1lt3d1
	GTX5Rgc5lq6ln+gQrgCqspRCw3t9t/zn0Btz9xNo0ONC84Vcfyv3fJWykOu8ziXK6MuVcy3UsNCp2
	a48U+DYNzvEfOY62uBTkhxY+YBcpnj2+3FTYoZk8Dy8uSL0n2An37wj6eCRh2EUGbDnrBXJHRxB2Z
	8rfqfRQ61b6jvX+pht+PN+SiSsFht0olyDOVJ37TvrzM/+7sHlaDWc4oYOXlbkPI5xYL+LG9Wc9pg
	+z5Tccd42sb61K8xwJ7YlIpBj3oblMiNuXcMc5xvjjUZBaGUgrE+amqZGVE39DwEy2bWXN9Pd1mOa
	iKvC2T2pkJLknsjFtrQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4io-0002XC-AT; Wed, 29 May 2019 19:58:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4iY-0002Ob-PR
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 19:58:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id h1so2626197wro.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 May 2019 12:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gURLmSIQ/KhGoQJxce1JcilHd6Sp3OqZKbi9RrCAhHI=;
 b=iBHa2de4PzJVjE5TxseBoLnTmG+7E51J8LE0DMu51xL6B0NvY1uLLWPTu+QoPpqQZE
 2HD4v9hUe2QiDkoITTU/hnNpBP5bF5zSVX5p+GwAUCYw5N7nolf/KhScWizrNbDXtb2c
 3xiEWnbdAM9zkX+xXbJP+puXSInajkXuBKmQslSoicjkxLuUuHMec9mBzjRsCOMMHswL
 6oAc0k4csb5G8q6DYje8fXQua8bgw5tCM24sTLmEmHnq1yeYWADk6DTuLvpEh/UMgjeE
 kHvDxaRld8UghmXKjkDfaU6lWdVlHDc1906l0cXEk3vLtnchGkUJyrm8ZZ1eRBEUzY9n
 8sKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gURLmSIQ/KhGoQJxce1JcilHd6Sp3OqZKbi9RrCAhHI=;
 b=LVtS0W4X2R928agrIw62GBnIjrjTvCAYJPcQnCv8PmsKamKDP9r8DMTL8+yKqlZSHf
 b5x5Xf0+8edsVykdHW8dwO/cnr2PGwgisgbanXd19jwora/Enm9SBq82dAxC2T09Vm63
 xhivFzBQKWOONFr9Cp2ppSIQSkBqfyRXs5s65/5rnF49/xTjY9NCDtaZlerI6xAgRndm
 3P1VBhwIWABzJwPwKlwSWuOuty/XYp+qd9ju8m6/vgTEVkG0DdE7/ezOHQonRV9qFizi
 nUbZgLn707pRMpA4Tj/lQOJy3SGOrKZ3DRwBA2RRadv2AnNeIs28iNrpax6MS1k3Za/d
 VzSQ==
X-Gm-Message-State: APjAAAVuwypDH0L6lnJsayO1pzXtzY7YoYJ9VsM+xzKijojUEzTH6x3x
 2L7cQPLYCOnRuZMSIIROookEfX2f
X-Google-Smtp-Source: APXvYqyxXtAYOKUGgwg0kb4JPDa9UXJ6h0kk4DRiunfaYKxhJEfPClocJ1Noz1IoRIbVAriCgwJoDQ==
X-Received: by 2002:adf:c606:: with SMTP id n6mr5608015wrg.62.1559159912026;
 Wed, 29 May 2019 12:58:32 -0700 (PDT)
Received: from debian64.daheim (pD9E29593.dip0.t-ipconnect.de.
 [217.226.149.147])
 by smtp.gmail.com with ESMTPSA id i15sm312858wre.30.2019.05.29.12.58.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 12:58:31 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>) id 1hW4iU-00063O-AZ
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 21:58:30 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 May 2019 21:58:29 +0200
Message-Id: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_125834_824211_9FA7E591 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] gpio-button-hotplug: support interrupt
 properties
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Upstream Linux's input gpio-keys driver supports
specifying a external interrupt for a gpio via the
'interrupts' properties as well as having support
for software debounce.

This patch ports these features to OpenWrt's event
version. Only the "pure" interrupt-driven support is
left behind, since this goes a bit against the "gpio"
in the "gpio-keys" and I don't have a real device to
test this with.

This patch also silences the generated warnings showing
up since 4.14 due to the 'constification' of the
struct gpio_keys_button *buttons variable in the
upstream struct gpio_keys_platform_data declaration.

gpio-button-hotplug.c: In function 'gpio_keys_get_devtree_pdata':
gpio-button-hotplug.c:392:10: warning: assignment discards 'const'
	qualifier from pointer target type [-Wdiscarded-qualifiers]
   button = &pdata->buttons[i++];
          ^
gpio-button-hotplug.c: In function 'gpio_keys_button_probe':
gpio-button-hotplug.c:537:12: warning: assignment discards 'const'
	qualifier from pointer target type [-Wdiscarded-qualifiers]
   bdata->b = &pdata->buttons[i];
            ^
gpio-button-hotplug.c: In function 'gpio_keys_probe':
gpio-button-hotplug.c:563:37: warning: initialization discards 'const'
	qualifier from pointer target type [-Wdiscarded-qualifiers]
   struct gpio_keys_button *button = &pdata->buttons[i];
                                     ^
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 .../src/gpio-button-hotplug.c                 | 114 ++++++++++++++----
 1 file changed, 93 insertions(+), 21 deletions(-)

diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
index 1aef23e876..6e730cdabe 100644
--- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
+++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
@@ -26,6 +26,7 @@
 #include <linux/interrupt.h>
 #include <linux/platform_device.h>
 #include <linux/of_gpio.h>
+#include <linux/of_irq.h>
 #include <linux/gpio_keys.h>
 
 #define DRV_NAME	"gpio-keys"
@@ -70,7 +71,10 @@ struct gpio_keys_button_data {
 	int count;
 	int threshold;
 	int can_sleep;
-	struct gpio_keys_button *b;
+	int irq;
+	unsigned int software_debounce;
+	struct gpio_desc *gpiod;
+	const struct gpio_keys_button *b;
 };
 
 extern u64 uevent_next_seqnum(void);
@@ -297,7 +301,7 @@ static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
 			return;
 		}
 
-		if ((bdata->last_state != -1) || (type == EV_SW))
+		if (bdata->last_state != -1 || type == EV_SW)
 			button_hotplug_event(bdata, type, state);
 
 		bdata->last_state = state;
@@ -339,11 +343,29 @@ static void gpio_keys_polled_close(struct gpio_keys_button_dev *bdev)
 		pdata->disable(bdev->dev);
 }
 
+static void gpio_keys_irq_work_func(struct work_struct *work)
+{
+	struct gpio_keys_button_data *bdata = container_of(work,
+		struct gpio_keys_button_data, work.work);
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
+}
+
 static irqreturn_t button_handle_irq(int irq, void *_bdata)
 {
-	struct gpio_keys_button_data *bdata = (struct gpio_keys_button_data *) _bdata;
+	struct gpio_keys_button_data *bdata =
+		(struct gpio_keys_button_data *) _bdata;
 
-	button_hotplug_event(bdata, bdata->b->type ?: EV_KEY, gpio_button_get_value(bdata));
+	schedule_delayed_work(&bdata->work,
+			      msecs_to_jiffies(bdata->software_debounce));
 
 	return IRQ_HANDLED;
 }
@@ -389,7 +411,9 @@ gpio_keys_get_devtree_pdata(struct device *dev)
 			continue;
 		}
 
-		button = &pdata->buttons[i++];
+		button = (struct gpio_keys_button *)(&pdata->buttons[i++]);
+
+		button->irq = irq_of_parse_and_map(pp, 0);
 
 		button->gpio = of_get_gpio_flags(pp, 0, &flags);
 		if (button->gpio < 0) {
@@ -516,6 +540,9 @@ static int gpio_keys_button_probe(struct platform_device *pdev,
 				gpio, error);
 			return error;
 		}
+		bdata->gpiod = gpio_to_desc(gpio);
+		if (!bdata->gpiod)
+			return -EINVAL;
 
 		error = gpio_direction_input(gpio);
 		if (error) {
@@ -528,12 +555,26 @@ static int gpio_keys_button_probe(struct platform_device *pdev,
 		bdata->can_sleep = gpio_cansleep(gpio);
 		bdata->last_state = -1;
 
-		if (bdev->polled)
+		if (bdev->polled) {
 			bdata->threshold = DIV_ROUND_UP(button->debounce_interval,
-						pdata->poll_interval);
-		else
+							pdata->poll_interval);
+		} else {
 			bdata->threshold = 1;
 
+			if (button->debounce_interval) {
+				error = gpiod_set_debounce(bdata->gpiod,
+					button->debounce_interval * 1000);
+				/*
+				 * use timer if gpiolib doesn't provide
+				 * debounce.
+				 */
+				if (error < 0) {
+					bdata->software_debounce =
+						button->debounce_interval;
+				}
+			}
+		}
+
 		bdata->b = &pdata->buttons[i];
 	}
 
@@ -560,23 +601,39 @@ static int gpio_keys_probe(struct platform_device *pdev)
 
 	pdata = bdev->pdata;
 	for (i = 0; i < pdata->nbuttons; i++) {
-		struct gpio_keys_button *button = &pdata->buttons[i];
+		const struct gpio_keys_button *button = &pdata->buttons[i];
 		struct gpio_keys_button_data *bdata = &bdev->data[i];
+		unsigned long irqflags = IRQF_ONESHOT;
 
-		if (!button->irq)
-			button->irq = gpio_to_irq(button->gpio);
-		if (button->irq < 0) {
-			dev_err(&pdev->dev, "failed to get irq for gpio:%d\n", button->gpio);
-			continue;
+		if (!button->irq) {
+			bdata->irq = gpio_to_irq(button->gpio);
+
+			if (bdata->irq < 0) {
+				dev_err(&pdev->dev, "failed to get irq for gpio:%d\n",
+					button->gpio);
+				continue;
+			}
+
+			irqflags |= IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;
+		} else {
+			bdata->irq = button->irq;
 		}
 
-		ret = devm_request_threaded_irq(&pdev->dev, button->irq, NULL, button_handle_irq,
-						IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
-						dev_name(&pdev->dev), bdata);
-		if (ret < 0)
-			dev_err(&pdev->dev, "failed to request irq:%d for gpio:%d\n", button->irq, button->gpio);
-		else
-			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n", button->gpio, button->irq);
+		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
+
+		ret = devm_request_threaded_irq(&pdev->dev,
+			bdata->irq, NULL, button_handle_irq,
+			irqflags, dev_name(&pdev->dev), bdata);
+
+		if (ret < 0) {
+			bdata->irq = 0;
+			dev_err(&pdev->dev, "failed to request irq:%d for gpio:%d\n",
+				bdata->irq, button->gpio);
+			continue;
+		} else {
+			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
+				button->gpio, bdata->irq);
+		}
 
 		if (bdata->b->type == EV_SW)
 			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
@@ -612,6 +669,19 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static void gpio_keys_irq_close(struct gpio_keys_button_dev *bdev)
+{
+	struct gpio_keys_platform_data *pdata = bdev->pdata;
+	size_t i;
+
+	for (i = 0; i < pdata->nbuttons; i++) {
+		struct gpio_keys_button_data *bdata = &bdev->data[i];
+
+		disable_irq(bdata->irq);
+		cancel_delayed_work_sync(&bdata->work);
+	}
+}
+
 static int gpio_keys_remove(struct platform_device *pdev)
 {
 	struct gpio_keys_button_dev *bdev = platform_get_drvdata(pdev);
@@ -620,6 +690,8 @@ static int gpio_keys_remove(struct platform_device *pdev)
 
 	if (bdev->polled)
 		gpio_keys_polled_close(bdev);
+	else
+		gpio_keys_irq_close(bdev);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
