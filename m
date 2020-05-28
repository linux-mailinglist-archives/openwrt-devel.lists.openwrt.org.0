Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78531E6500
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 16:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2P8GOh+RDjzAtZnEqmhTlwhBoj7h3JunZsGhIMV4rnQ=; b=ImdqIOGEPgqnCR
	LlCbHHqeamA6kck4mfF5jN97Uk+9TATyrWzFulKgdyhsrpOMmcmCjk4XRFrHtEq4vQQxgAgkda6vl
	/atXVIoVItiBrhHXsGJfFzThVDLoEa0ziAqhYziniqYmdMWSv7wYWLnzYh7SKmKA7g5gm3zNkWijt
	Oj0YBqNzKFyUunn3Y7vKwtQLaIKNwedPBpFIFQH1kJ8bIStShocsT4waPF9exU2FoCJ5qNWn8BFf0
	hvORm+98JrxxzKzLdwPpoHS07ZQH9vvc74k/gJWXBE8NC1TV+jur6iYDAPSOqpf/qchHGRGOj6DVM
	6kwd0yD3uIW9zT9O/qRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJza-0003TB-R5; Thu, 28 May 2020 14:58:46 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJzS-0003Rh-Bo
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 14:58:39 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeK2I-0000VP-0d; Thu, 28 May 2020 15:01:34 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 07:58:34 -0700
Message-Id: <1590677914-27068-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_075838_449564_31F917B6 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] octeontx: fix gpio irq request
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This fixes a regression in 5.4 that causes a crash when a driver requests
an ARM GPIO for an IRQ.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 ...2-gpio-thunderx-fix-irq_request_resources.patch | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 target/linux/octeontx/patches-5.4/0002-gpio-thunderx-fix-irq_request_resources.patch

diff --git a/target/linux/octeontx/patches-5.4/0002-gpio-thunderx-fix-irq_request_resources.patch b/target/linux/octeontx/patches-5.4/0002-gpio-thunderx-fix-irq_request_resources.patch
new file mode 100644
index 0000000..8c4de51
--- /dev/null
+++ b/target/linux/octeontx/patches-5.4/0002-gpio-thunderx-fix-irq_request_resources.patch
@@ -0,0 +1,46 @@
+From e8287ec10f21877eb0ac4c1fb4e89e42d8bc10da Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Wed, 11 Mar 2020 08:19:45 -0700
+Subject: [PATCH 2/7] gpio: thunderx: fix irq_request_resources
+
+If there are no parent resources do not call irq_chip_request_resources_parent
+at all as this will return an error.
+
+This resolves a regression where devices using a thunderx gpio as an interrupt
+would fail probing.
+
+Fixes: 0d04d0c ("gpio: thunderx: Use the default parent apis for {request,release}_resources")
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+---
+ drivers/gpio/gpio-thunderx.c | 9 ++++++---
+ 1 file changed, 6 insertions(+), 3 deletions(-)
+
+diff --git a/drivers/gpio/gpio-thunderx.c b/drivers/gpio/gpio-thunderx.c
+index 715371b..feda2a2 100644
+--- a/drivers/gpio/gpio-thunderx.c
++++ b/drivers/gpio/gpio-thunderx.c
+@@ -363,15 +363,18 @@ static int thunderx_gpio_irq_request_resources(struct irq_data *data)
+ {
+ 	struct thunderx_line *txline = irq_data_get_irq_chip_data(data);
+ 	struct thunderx_gpio *txgpio = txline->txgpio;
++	struct irq_data *parent_data = data->parent_data;
+ 	int r;
+ 
+ 	r = gpiochip_lock_as_irq(&txgpio->chip, txline->line);
+ 	if (r)
+ 		return r;
+ 
+-	r = irq_chip_request_resources_parent(data);
+-	if (r)
+-		gpiochip_unlock_as_irq(&txgpio->chip, txline->line);
++	if (parent_data && parent_data->chip->irq_request_resources) {
++		r = irq_chip_request_resources_parent(data);
++		if (r)
++			gpiochip_unlock_as_irq(&txgpio->chip, txline->line);
++	}
+ 
+ 	return r;
+ }
+-- 
+2.7.4
+
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
