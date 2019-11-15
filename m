Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81619FE35E
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 Nov 2019 17:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gT6H2RQ2TfdzlId5bZsjCyiK0mWKCDZdAh+tiXzgLtA=; b=u1i8H2xsbCfrn6
	PRZnLSPdtE3Kjs5JCXddJ10mB9oIewHbQWd755Ea287QbLzqK396K7LND+QI9aMkD1zgatPOrT/p+
	8MQ5eBRCCQPb18FwLwIrgnOFtmxi6pP9R0AOy/LgQAAvHUxnszs3yPbafvyC3inYfn6q7TAVnRN2e
	MTwSlmdKGo4D/x+yXhRGG6hjfqfd/J1QGZ+ZfbFrrRDK+ZbntWO6KUCfkSrtDibSzGDjlG0uviJQN
	TKMGXiNGA8skmiQIwaPByMFXJF6JOBLhuBYkN90TGWUDx3mw/BqrcQvEKsXww99/VO4F/uza9OFjm
	VYi8riBr++rsqjuhKeuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVepI-00028O-Kj; Fri, 15 Nov 2019 16:52:04 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVepC-00027s-9Z
 for openwrt-devel@lists.openwrt.org; Fri, 15 Nov 2019 16:51:59 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id EB9B54E984;
 Fri, 15 Nov 2019 08:51:53 -0800 (PST)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 15 Nov 2019 08:51:43 -0800
Message-Id: <20191115165143.10187-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_085158_333035_219A8DA9 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix merge/rebase omission for
 GL-AR300M16 and GL-AR300M-Lite
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Introduction of the ath79/nand images for the GL-AR300M series
resulted in a non-bootable set of partition names for the
ath79/generic kernels for the GL-AR300M16 and GL-AR300M-Lite.

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts | 5 +++++
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m16.dts    | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
index ed00cdb585..0eeda5c3c9 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
@@ -11,6 +11,11 @@
 
 /delete-node/ &nand_flash;
 
+&nor_firmware {
+	compatible = "denx,uimage";
+	label = "firmware";
+};
+
 // "Disable" unpopulated GMAC1
 
 &eth1 {
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m16.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m16.dts
index ad491286ec..328b667f7b 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m16.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m16.dts
@@ -10,3 +10,8 @@
 };
 
 /delete-node/ &nand_flash;
+
+&nor_firmware {
+	compatible = "denx,uimage";
+	label = "firmware";
+};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
