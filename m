Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B398130865
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 15:18:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IwW4CZ61E+0yDn8nzebYvq2hNsJ7BO4fIB6mJ/BsRCg=; b=EWsBcAkp/Ha67J
	5vliN8+srz7/icmQfhx3BSc0qqj2gPXWCV4T+IGQPlPI8lf2SoINXH5wPlUcHLIjhRvF+rAG/Xci0
	z3F2QSA8uCI6QSaVcFHeFAVGbqurUFhIBoZpKDTxDLWLSe2kZZuDMyCV/zwvmw2XmHCWCI1NdC2Bt
	BROnLnXCoIBzWuoCS4FRE+3Awf8QoVGZzY1zq2jDqRdd1O7ZfgklLI6138uGcN15eWR7836enYAmj
	IHeC56qOgeGEy03Yc7Dhv1MenN4ECtRAi5NImimIgudBX2vxWNYOAXGHM5QYljaFW70AYdYyZtvLR
	gOVBLs0s1nywpxGJCkJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io6jk-00052i-4j; Sun, 05 Jan 2020 14:18:36 +0000
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io6ja-000522-IQ
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 14:18:30 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 47rLMw46KmzQlCQ;
 Sun,  5 Jan 2020 15:18:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id 7yNZocAKYsHs; Sun,  5 Jan 2020 15:18:14 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 15:17:56 +0100
Message-Id: <20200105141756.23473-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_061826_758107_4569D94F 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, mail@adrianschmutzler.de, dev@kresin.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Without this change sysupgrade from 18.06 to 19.07 is only possible with
the -F option.
In OpenWrt 18.06 the nand_do_platform_check() function is called with
the board name mir3g only, if the tar does not use mir3g it will fail.
OpenWrt 19.07 and later support the metadata with the supported_devices
attribute to allow renaming. Do the renaming of the target between 19.07
and master like it is done for some other boards.

I tested the following sysupgrades successfully without -F
18.06 -> 19.07
19.07 -> master
master -> 19.07

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/ramips/image/mt7621.mk | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 7eb59188fb..39017a48e1 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -269,7 +269,7 @@ define Device/xiaomi_mir3p
 endef
 TARGET_DEVICES += xiaomi_mir3p
 
-define Device/xiaomi_mir3g
+define Device/mir3g
   DTS := MIR3G
   BLOCKSIZE := 128k
   PAGESIZE := 2048
@@ -282,12 +282,12 @@ define Device/xiaomi_mir3g
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
   DEVICE_TITLE := Xiaomi Mi Router 3G
   SUPPORTED_DEVICES += R3G
-  SUPPORTED_DEVICES += mir3g
+  SUPPORTED_DEVICES += xiaomi,mir3g
   DEVICE_PACKAGES := \
 	kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic \
 	uboot-envtools
 endef
-TARGET_DEVICES += xiaomi_mir3g
+TARGET_DEVICES += mir3g
 
 define Device/mt7621
   DTS := MT7621
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
