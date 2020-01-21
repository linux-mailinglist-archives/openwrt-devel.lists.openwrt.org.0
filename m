Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3568A1445AA
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 21:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p4GH0L1Z+k7Ib+h6yzvzGsQCESSVLnuH4/pJgbkR2H4=; b=KESutrtd6jh8j9
	MIbad9ihDrqfkEZFIeGfG30j0/iRwBFl+3PVPaPLogNVBLbim1auoqKhgqpOn1Nr0SkI5Sj5GspFK
	3nciOndiFFcIZbx/Xq+gcjUvG/9Qw70ys8wIZZ1fCykSP6x1YMC74f6vgUC1s9aYRFtGxaKefJp6v
	Tmx6/xDTvZRqRfIMLGBZCzwB5d/x2+WCNPhQkpnZvU1jD8TRbrtaYuRTgceGCTaKpxaV3V5NojyVG
	SnhdKv/ENSyzTZwR1cgWe6UO5+ls7I9K+9maZpScWE1qCMMACnNdTY4gAScpYY3c3ei0lvY+RuU2J
	YvU0WVzMZGNW/oqqcHKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzsJ-0007w9-2E; Tue, 21 Jan 2020 20:11:47 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1itzs8-0007v8-8R
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 20:11:42 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0CC50095A36D6416EB1E82.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0c:c500:95a3:6d64:16eb:1e82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id DFE8F22ED1
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 21:11:31 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 21:11:19 +0100
Message-Id: <20200121201120.23516-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_121136_453035_B77C184C 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: use upstream properties to
 disable EEE
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

The hack-patch which introduced the "at803x-disable-smarteee" for
disabling SmartEEE did in fact not disable SmartEEE but rather disabled
802.3az "standard" EEE.

This can be done by using the upstream properties "eee-broken-100tx" and
"eee-broken-1000t". EEE is then disabled by the PHY subsystem.

Tested on devolo WiFi pro 1200e.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi  | 3 ++-
 target/linux/ath79/dts/qca9558_engenius_ecb1750.dts | 3 ++-
 target/linux/ath79/dts/qca9558_ocedo_koala.dts      | 3 ++-
 target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi b/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
index 2cdb1b8373..42b45c5900 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
@@ -105,7 +105,8 @@
 
 	phy4: ethernet-phy@4 {
 		reg = <4>;
-		at803x-disable-smarteee;
+		eee-broken-100tx;
+		eee-broken-1000t;
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts b/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts
index 7953ed1325..3ccf92a9f7 100644
--- a/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts
+++ b/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts
@@ -125,7 +125,8 @@
 
 	phy5: ethernet-phy@5 {
 		reg = <5>;
-		at803x-disable-smarteee;
+		eee-broken-100tx;
+		eee-broken-1000t;
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9558_ocedo_koala.dts b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
index 5e3abdbbb8..77c332cc4e 100644
--- a/target/linux/ath79/dts/qca9558_ocedo_koala.dts
+++ b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
@@ -142,7 +142,8 @@
 
 	phy5: ethernet-phy@5 {
 		reg = <5>;
-		at803x-disable-smarteee;
+		eee-broken-100tx;
+		eee-broken-1000t;
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts b/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts
index a78a9d5be1..a797750e7e 100644
--- a/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts
+++ b/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts
@@ -92,7 +92,8 @@
 			reg = <4>;
 
 			phy-mode = "rgmii-rxid";
-			at803x-disable-smarteee;
+			eee-broken-100tx;
+			eee-broken-1000t;
 		};
 	};
 };
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
