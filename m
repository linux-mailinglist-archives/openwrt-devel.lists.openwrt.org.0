Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7186C12CB7A
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 01:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vq+biZS0N/zHzg8bib2Fsoq1ppxgBYBBWNva3Q2XLyQ=; b=Xz5h0VxU3eK/r4
	EGwQzt6n2ZBVYdtMwIiHpnCzp+xbJ8KjmbIJ5B7h1Dg9zlzeceS24a9DOtHIdea+JtD2u+Gubjb6W
	VWSs/wGElTiJe4rByk2vG4dTaCV3GHsjbL8dX5Hn5lgpHxWa9RQwZYJK63xEt3TpYqMs7xIR1JA/l
	QWUcT+bRWNugoP7F6PVm6WC4dmWFfuY6zMPhY6+QwXnrVXAlLZlTtanR04cZ8v0d5JYR3QRIyVabw
	YKjD8bWvF7HJ7Q5QWMwhgExrFKYLVoJGdiIIOigA8sDWeZc6sc2cOkdRnL256KV1OX9tIFCz5CsN5
	TRNYaPqy2tC/FAcyGxEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iljJY-0007B7-6z; Mon, 30 Dec 2019 00:53:44 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iljJP-0007AW-JX
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 00:53:38 +0000
Received: from localhost.localdomain (unknown [83.135.250.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 8D391227F6;
 Mon, 30 Dec 2019 01:53:23 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 01:52:59 +0100
Message-Id: <20191230005259.175150-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_165335_792996_43A9EE8B 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] rt2x00: add throughput LED trigger
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
Cc: Christoph Krapp <achterin@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds a (currently missing) throughput LED trigger for the rt2x00
driver. Previously, LED triggers had to be assigned to the netdev, which
was limited to a single VAP.

Signed-off-by: David Bauer <mail@david-bauer.net>
Tested-by: Christoph Krapp <achterin@googlemail.com>
---
 .../612-rt2x00-led-tpt-trigger-support.patch  | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 package/kernel/mac80211/patches/rt2x00/612-rt2x00-led-tpt-trigger-support.patch

diff --git a/package/kernel/mac80211/patches/rt2x00/612-rt2x00-led-tpt-trigger-support.patch b/package/kernel/mac80211/patches/rt2x00/612-rt2x00-led-tpt-trigger-support.patch
new file mode 100644
index 0000000000..25d15b617f
--- /dev/null
+++ b/package/kernel/mac80211/patches/rt2x00/612-rt2x00-led-tpt-trigger-support.patch
@@ -0,0 +1,44 @@
+From: David Bauer <mail@david-bauer.net>
+Date: Mon, 16 Dec 2019 20:47:06 +0100
+Subject: [PATCH] rt2x00: add throughput LED trigger
+
+This adds a (currently missing) throughput LED trigger for the rt2x00
+driver. Previously, LED triggers had to be assigned to the netdev, which
+was limited to a single VAP.
+
+Signed-off-by: David Bauer <mail@david-bauer.net>
+Tested-by: Christoph Krapp <achterin@googlemail.com>
+
+--- a/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
++++ b/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
+@@ -1129,6 +1129,19 @@ static void rt2x00lib_remove_hw(struct r
+ 	kfree(rt2x00dev->spec.channels_info);
+ }
+ 
++static const struct ieee80211_tpt_blink rt2x00_tpt_blink[] = {
++	{ .throughput = 0 * 1024, .blink_time = 334 },
++	{ .throughput = 1 * 1024, .blink_time = 260 },
++	{ .throughput = 2 * 1024, .blink_time = 220 },
++	{ .throughput = 5 * 1024, .blink_time = 190 },
++	{ .throughput = 10 * 1024, .blink_time = 170 },
++	{ .throughput = 25 * 1024, .blink_time = 150 },
++	{ .throughput = 54 * 1024, .blink_time = 130 },
++	{ .throughput = 120 * 1024, .blink_time = 110 },
++	{ .throughput = 265 * 1024, .blink_time = 80 },
++	{ .throughput = 586 * 1024, .blink_time = 50 },
++};
++
+ static int rt2x00lib_probe_hw(struct rt2x00_dev *rt2x00dev)
+ {
+ 	struct hw_mode_spec *spec = &rt2x00dev->spec;
+@@ -1211,6 +1225,10 @@ static int rt2x00lib_probe_hw(struct rt2
+ 
+ #undef RT2X00_TASKLET_INIT
+ 
++	ieee80211_create_tpt_led_trigger(rt2x00dev->hw,
++		IEEE80211_TPT_LEDTRIG_FL_RADIO, rt2x00_tpt_blink,
++		ARRAY_SIZE(rt2x00_tpt_blink));
++
+ 	/*
+ 	 * Register HW.
+ 	 */
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
