Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1985C4AD9F
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 00:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q1kwSzwoYcjBX/uYhJXvlfuFw2xUMheIpPoy7DW3SgY=; b=dEdq70CUh5T3cR
	AYZtdGFdiUYDPb2CgVSQ5um9llX7df6tnF3wP8fHuHDRC1XXDmQtWm2+zgo44e8w5f0dhVSubUkkk
	hJQtQtKbsizNePN0WBle747UjCMVrtzOJuHMlt31DfNKWWGjEu7qycuyOCzD2Ki8twPWwhyvzPC26
	7tbvR/zlmNaWOz64eGeiCMDnopF3E3KYqQiLAXdmKqSNGtukBRx19OgnGrZCe3fqddZ/J4Jm334s5
	nvMHVTIV4sM5FzBbH0tJlRy+T4nm6jATi5vz7gB8/+s6tyOUGRH7MOPZ0YIcSSRt9fyncw6HliEyo
	zm6vflX+CLEpFldw17eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdMGa-0007CH-Us; Tue, 18 Jun 2019 22:07:49 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdMGQ-0007BI-UW
 for openwrt-devel@lists.openwrt.org; Tue, 18 Jun 2019 22:07:41 +0000
Received: from localhost.localdomain
 (p200300E53F0C4A000BD7EEFE5F1D565C.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0c:4a00:bd7:eefe:5f1d:565c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 59D5B2282E
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 00:07:32 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Jun 2019 00:07:12 +0200
Message-Id: <20190618220712.6845-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_150739_275478_848D4356 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: correct various phy-mode properties
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

Upstream commit 6d4cd04 changes how the internal delays of the AR803x
based PHYs are enabled. With this commit, all internal delays are
disabled on driver probe and enabled based on the 'phy-mode' property in
the device-tree.

Before this commit, the RX delay was always enabled upon soft-reset
while the TX delay retained it's previous state. A hard reset enabled
the RX delay while the TX delay was disabled.

Because of this inconsistency, wrongly specified PHY-modes were working
correctly while the hardware was in a different state.

Fix the PHY-modes of some affected devices (and clean up misplaced
properties along the way) to keep the devices working flawlessly with
kernels >= 5.1.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/dts/ar9344_ocedo_raccoon.dts    | 3 +--
 target/linux/ath79/dts/qca9558_devolo_dvl1200i.dts | 1 +
 target/linux/ath79/dts/qca9558_devolo_dvl1750c.dts | 4 ++++
 target/linux/ath79/dts/qca9558_devolo_dvl1750i.dts | 1 +
 target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi | 1 +
 target/linux/ath79/dts/qca9558_ocedo_koala.dts     | 2 --
 6 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
index a1a912383f..812da3dea5 100644
--- a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
+++ b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
@@ -162,7 +162,6 @@
 
 	phy0: ethernet-phy@0 {
 		reg = <0>;
-		phy-mode = "rgmii";
 	};
 };
 
@@ -173,6 +172,6 @@
 
 	mtd-mac-address = <&art 0x0>;
 
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	phy-handle = <&phy0>;
 };
diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1200i.dts b/target/linux/ath79/dts/qca9558_devolo_dvl1200i.dts
index 5900d8b487..a844ce777c 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1200i.dts
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1200i.dts
@@ -40,6 +40,7 @@
 
 &eth0 {
 	pll-data = <0xbe000000 0x80000101 0x80001313>;
+	phy-mode = "rgmii-id";
 };
 
 &gmac_config {
diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1750c.dts b/target/linux/ath79/dts/qca9558_devolo_dvl1750c.dts
index b5a2954406..567f3c9ee4 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1750c.dts
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1750c.dts
@@ -38,6 +38,10 @@
 	};
 };
 
+&eth0 {
+	phy-mode = "rgmii-id";
+};
+
 &gmac_config {
 	rxdv-delay = <3>;
 	rxd-delay = <3>;
diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1750i.dts b/target/linux/ath79/dts/qca9558_devolo_dvl1750i.dts
index bd3702eb36..e0bdd20937 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1750i.dts
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1750i.dts
@@ -40,6 +40,7 @@
 
 &eth0 {
 	pll-data = <0xbe000000 0x80000101 0x80001313>;
+	phy-mode = "rgmii-id";
 };
 
 &gmac_config {
diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi b/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
index 9937186b1e..cfd43c8e8a 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1xxx.dtsi
@@ -115,6 +115,7 @@
 
 	mtd-mac-address = <&art 0x00>;
 	phy-handle = <&phy4>;
+	phy-mode = "rgmii-rxid";
 	pll-data = <0xae000000 0x80000101 0x80001313>;
 
 	gmac_config: gmac-config {
diff --git a/target/linux/ath79/dts/qca9558_ocedo_koala.dts b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
index 23835492a3..a80155b08c 100644
--- a/target/linux/ath79/dts/qca9558_ocedo_koala.dts
+++ b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
@@ -142,8 +142,6 @@
 
 	phy5: ethernet-phy@5 {
 		reg = <5>;
-		phy-mode = "rgmii-rxid";
-
 		at803x-disable-smarteee;
 	};
 };
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
