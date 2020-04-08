Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E44D1A2801
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 19:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3zW8e2y+9HEljmdEmph0DR5Cgye6dKmwVZh3e2bvcA=; b=ejkEEjFVExrWFQ
	cB4alohmWwbiNBzJMr/KXpVOUeY90VCk5SbBDF1zV0QoF3CITXp0gGrb35CkzN8JJ5ZIAIXeSulRo
	YYDQIN3gvw4IjePw/xEHF7RXfMMN59ZTikg1I6rI6aDGc5zm9jnf+vRaVg61VZFCERxg+uYrrAqi5
	ea+oycYbea/QjpEEhHlHPGLl4bMwXm9e4J5hmQK7cJ3wPFYwpWBhEeC45Z4t476rhydq3pKm/vvi7
	5jhA1NuyKorxd8A07RZK7YMzip340ArAJhhiDjg511SbfJZNBY/jwv1Gjh4o98XxD4Da3hYAdmuwx
	Hg3dCSLPHKzpZskE7GGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMEZT-00018C-5a; Wed, 08 Apr 2020 17:33:03 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMEZ6-0000wl-EM
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 17:32:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 3744A3A002F7;
 Wed,  8 Apr 2020 19:32:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DtWpopFnl-Oy; Wed,  8 Apr 2020 19:32:36 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 19:32:10 +0200
Message-Id: <20200408173210.3904236-2-t.schramm@manjaro.org>
In-Reply-To: <20200408173210.3904236-1-t.schramm@manjaro.org>
References: <20200408173210.3904236-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_103240_625637_6530564E 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/1] ramips: mt7621: use higher SPI clock
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
Cc: Chuanhong Guo <gch981213@gmail.com>, Tobias Schramm <t.schramm@manjaro.org>
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
 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 4 ++--
 target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts | 7 ++++---
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
index aae899c9a6..b0a31602e3 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
@@ -83,8 +83,8 @@
 	w25q128@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		// XXX empiric value to obtain actual 10MHz SCK at the chip
-		spi-max-frequency = <3125000>;
+		m25p,fast-read;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
index f7889bd68a..84bdaf06f1 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
@@ -93,7 +93,8 @@
 	w25q40@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <3125000>;
+		m25p,fast-read;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
@@ -143,8 +144,8 @@
 	w25q128@1 {
 		compatible = "jedec,spi-nor";
 		reg = <1>;
-		// XXX empiric value to obtain actual 10MHz SCK at the chip
-		spi-max-frequency = <3125000>;
+		m25p,fast-read;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
