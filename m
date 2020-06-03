Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA351ED091
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 15:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Moa83g1ZiDS2KOnlJ3+myZ9efwN204xZ4qHVChf7Mb8=; b=J0lsmEWlGcRNkK
	fEysxwSzzwHhSJj6axWSc7uF9OB6OErXqBPdV9C93zeXF63gCME9zX6lUiqTFA+l7473YLDItTA4t
	cWKMYeABbjnczb1bmE78bN0X/7mCGkIkMNDWSziVueDXEzn+VpMitDkrnIasiW7I0h4rH2NCA03Ee
	obbZi9jsNVc2EcfRfzHoGvsK06gK9oXeZ021oS0SEfFEeKnnuQw8/z+xyOaLqthUTY2qIRc+BXNGf
	LZI2cjXXeAf1wyYcoDyUAJtAFxL5RwhRmYd2mAT7S0wrMROAx7lkjhLjatFqSNQEMAyH3/hBl4KcZ
	i6nqD5skRXnG1lb7Wthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTAx-0003R6-1B; Wed, 03 Jun 2020 13:11:23 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTAf-0003Hk-W2
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 13:11:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 130DF3AC051F;
 Wed,  3 Jun 2020 15:11:03 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ylty0gKPmhT; Wed,  3 Jun 2020 15:10:59 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Date: Wed,  3 Jun 2020 15:10:40 +0200
Message-Id: <20200603131040.3098579-2-t.schramm@manjaro.org>
In-Reply-To: <20200603131040.3098579-1-t.schramm@manjaro.org>
References: <20200603131040.3098579-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_061106_171186_D69AE775 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3 1/1] ramips: mt7621: use higher SPI clock
 speed on Mikrotik rbm11g and rbm33g
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
Cc: openwrt-devel@lists.openwrt.org, Tobias Schramm <t.schramm@manjaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Previously the dts were using a value determined by empirical testing,
because of a spi driver/clock bug. The bug was fixed quite some time
ago. 33 MHz is the default clock frequency used by RouterBOOT and thus
safe.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts | 3 +--
 target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts | 5 ++---
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts
index 2b05f1c2f2..cb13590017 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts
@@ -83,8 +83,7 @@
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		// XXX empiric value to obtain actual 10MHz SCK at the chip
-		spi-max-frequency = <3125000>;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
diff --git a/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts
index 490f507fa9..ebe85b09a1 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts
@@ -93,7 +93,7 @@
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <3125000>;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
@@ -139,8 +139,7 @@
 	flash@1 {
 		compatible = "jedec,spi-nor";
 		reg = <1>;
-		// XXX empiric value to obtain actual 10MHz SCK at the chip
-		spi-max-frequency = <3125000>;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
