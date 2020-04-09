Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD041A34A2
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 15:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNkiRSNF6jpY5TmJ3he9QSypl6fyLjgtpSP4+OC8/Oo=; b=TN18C1hbf4AxlV
	0rSTj7NCEsuICanQpvpKKMBGEbFnbngt6H3LXE2LY6M74rYWyh03W/CWSnvjCywr251IunSRsViTX
	Q9D/s60fgHielIhV3N3dpYfyaZIlh0oGtcjhHaTKPXtBoPHXxjElcAlChv7kvIatQgU0kS/OJuFD6
	BmYxvoIrruFPyt/+39rntxM9aXdl3j9Pqw1FmUD/UUPMrlDfFN8Fq1Z0llvQhRSJlq48M7YFHotfE
	dNj+TuMfhjEiZSQMBlYg4MlNKst6E/6V6Fca/2EYz6U7NNdYa9i0qxYZRFvplq3jMofgNNbaI90B3
	nTpXVHWzQQFAo+K6moRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMWxL-0006Fb-0p; Thu, 09 Apr 2020 13:10:55 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMWwz-00062S-5S
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 13:10:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id ECB2F3A01076;
 Thu,  9 Apr 2020 15:10:31 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id No6oKVFH-QU3; Thu,  9 Apr 2020 15:10:29 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Thu,  9 Apr 2020 15:09:55 +0200
Message-Id: <20200409130955.161319-2-t.schramm@manjaro.org>
In-Reply-To: <20200409130955.161319-1-t.schramm@manjaro.org>
References: <20200409130955.161319-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_061033_352465_6000637D 
X-CRM114-Status: UNSURE (   7.71  )
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
Subject: [OpenWrt-Devel] [PATCH v2 1/1] ramips: mt7621: use higher SPI clock
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
 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts | 3 +--
 target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts | 5 ++---
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
index aae899c9a6..cf0582b6a7 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
@@ -83,8 +83,7 @@
 	w25q128@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		// XXX empiric value to obtain actual 10MHz SCK at the chip
-		spi-max-frequency = <3125000>;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
index f7889bd68a..67b91c85ea 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
@@ -93,7 +93,7 @@
 	w25q40@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <3125000>;
+		spi-max-frequency = <33000000>;
 
 		partitions {
 			compatible = "fixed-partitions";
@@ -143,8 +143,7 @@
 	w25q128@1 {
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
