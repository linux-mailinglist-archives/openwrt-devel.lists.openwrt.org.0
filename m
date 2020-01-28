Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D117D14C227
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 22:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F1tY8+u5HzkUlOEXHVd7ZmltqN7uBKOqESVbM/npxIc=; b=ltyuQBpYkxv5h0
	LDgmyG2ojJsWarx2yNLgFUMaszM6BInwcxnOx5H5CKMU2VOjAo9PuOGtO/5ArVlK+++/s8HBFAq8V
	iX9em9zwSG0QJs9JL9BRxt+2F85s6nJ3689uQam22Q/CtPZNs6p96/FxQt2+fBvUqtG6oAZ9td+L3
	653ttv0xQMEjuNYvFbyeM52C67IivFu1tT3GhJ4Cvc1Ju7uyyfSwb1zqJOj1EjAoFrbnaDeBQ1Xer
	ZAua5stUgDMF+W0EBiwixz9yUmzkF9E/tb5A+vOFG2sa+es9rh+Lx0oCGaBGasZiozRT+aDn7tXXl
	+o7ZCoMjrXw3b+TlRnPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwYJ7-0007BQ-Vt; Tue, 28 Jan 2020 21:22:01 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwYIy-0007B6-Hd
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 21:21:54 +0000
Received: from dbauer-x250.home.david-bauer.net
 (p200300E53F1743009AE52E361940AD09.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f17:4300:9ae5:2e36:1940:ad09])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id DCB5622F46
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 22:21:49 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Jan 2020 22:21:43 +0100
Message-Id: <20200128212143.278955-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_132152_734180_1E57C775 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: fix NETGEAR R6260 EEPROM offset
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

The EEPROM offset for the NETGEAR R6260 is incorrect, thus no valid
calibration data is used.

Fix this only for the NETGEAR R6260, as it's currently unknown whether
or not other boards are affected.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ramips/dts/mt7621_netgear_r6260.dts        | 8 ++++++++
 target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi | 4 ++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/dts/mt7621_netgear_r6260.dts b/target/linux/ramips/dts/mt7621_netgear_r6260.dts
index 8251fe595c..2f2dbb05f8 100644
--- a/target/linux/ramips/dts/mt7621_netgear_r6260.dts
+++ b/target/linux/ramips/dts/mt7621_netgear_r6260.dts
@@ -23,3 +23,11 @@
 &led_wifi {
 	label = "r6260:green:wifi";
 };
+
+&wifi2 {
+	mediatek,mtd-eeprom = <&factory 0x20000>;
+};
+
+&wifi5 {
+	mediatek,mtd-eeprom = <&factory 0x28000>;
+};
diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
index 52af14723e..7626973121 100644
--- a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
+++ b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
@@ -78,7 +78,7 @@
 };
 
 &pcie0 {
-	wifi@0,0 {
+	wifi5: wifi@0,0 {
 		compatible = "mediatek,mt76";
 		reg = <0x0 0 0 0 0>;
 		mediatek,mtd-eeprom = <&factory 0x8000>;
@@ -87,7 +87,7 @@
 };
 
 &pcie1 {
-	wifi@0,0 {
+	wifi2: wifi@0,0 {
 		compatible = "mediatek,mt76";
 		reg = <0x0 0 0 0 0>;
 		mediatek,mtd-eeprom = <&factory 0x0>;
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
