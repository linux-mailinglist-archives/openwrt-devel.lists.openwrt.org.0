Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49731B137C
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 19:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pXvkGqnWv9qXdOtviVlAhKLPd7nwMAGduVUDZVLKm4w=; b=PEAijlko3m9DzSHm19gaD6Mfip
	3ww8AlpvGxvtPfnc3nl2N5MINd1/kLWLd/x/JV8YByyGZVSZ0aaetkjzjxYn+FB/or/V4Uqk8nOGC
	iI2ta0LHyAO3LLxV5hnc0nHgLMYA16nLJcG+ZcwOv86MBNWnw1bvVcx4CtKxpC/BxLynV0tUBFuQj
	UA40Qax3yzlPyBzGmp6NezRXt4wRr1TtmjBIesly0jmqLI4poTdHX7C4+ukxTH1q9lStNDt3b90H9
	N6AcOS5PPImC0nnlRgMFie74YoGrM22DrzAvSvRbnI4OB/9KPXG8thdGFpOlXOFClC8LI9J6vWHer
	Tsz1IHfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaWV-0000z4-25; Mon, 20 Apr 2020 17:47:59 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaVU-00005n-2b
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 17:46:58 +0000
Received: (wp-smtpd smtp.tlen.pl 31774 invoked from network);
 20 Apr 2020 19:46:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1587404812; bh=DWEPEvKmkQAVHbQ6rR43mzrPhJTdruv2GFQao706/1M=;
 h=From:To:Subject;
 b=GWBYovTXZacO5J9oBR4cp4L0qC7dextPQ64OPWtb0E65bcv/zuE612c+aesCT0ojH
 ZWcnmmho0RLG+vRNbc01CIRlxO7loBo6x8uvnMZb4CBn0aVLC+KvlsRzaB8RuMubuu
 ArB9e7qPkKS3100dSR6zO4a3x5Zed4POSNch3Z3w=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Apr 2020 19:46:52 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 19:46:34 +0200
Message-Id: <20200420174634.52301-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200420174634.52301-1-tomek_n@o2.pl>
References: <20200420174634.52301-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 2866d18e042be03be4ebe4d1ebce3302
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [YbN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_104656_275378_E70EEC37 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 4/4] x86: move packages selection to profiles
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

This can be rather confusing for contributors, since there are three
layers in which they can be added. As for now there are none profiles
other than generic (exception: geos) let's move them to these profiles.
Being here this commit also removes packages in geode profiles already
enabled in kernel config.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/x86/64/target.mk    |  2 --
 target/linux/x86/geode/target.mk | 10 ----------
 target/linux/x86/image/64.mk     |  2 ++
 3 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/target/linux/x86/64/target.mk b/target/linux/x86/64/target.mk
index 02b6c8debfe1..ece3d1bc9a16 100644
--- a/target/linux/x86/64/target.mk
+++ b/target/linux/x86/64/target.mk
@@ -1,7 +1,5 @@
 ARCH:=x86_64
 BOARDNAME:=x86_64
-DEFAULT_PACKAGES += kmod-e1000e kmod-e1000 kmod-r8169 kmod-igb kmod-bnx2 \
-	kmod-forcedeth
 
 define Target/Description
         Build images for 64 bit systems including virtualized guests.
diff --git a/target/linux/x86/geode/target.mk b/target/linux/x86/geode/target.mk
index 04ac926cfd95..a64d2baaeec2 100644
--- a/target/linux/x86/geode/target.mk
+++ b/target/linux/x86/geode/target.mk
@@ -1,15 +1,5 @@
 BOARDNAME:=AMD Geode based systems
 FEATURES += pci usb gpio
-DEFAULT_PACKAGES += \
-			kmod-crypto-hw-geode kmod-crypto-cbc \
-			kmod-ath5k kmod-ath9k \
-			kmod-ledtrig-heartbeat kmod-ledtrig-gpio \
-			kmod-ledtrig-netdev hwclock wpad-basic
-# Geos
-DEFAULT_PACKAGES += \
-		soloscli linux-atm br2684ctl ppp-mod-pppoa pppdump pppstats \
-		hwclock flashrom tc kmod-pppoa kmod-8139cp kmod-mppe \
-		kmod-usb-ohci-pci kmod-hwmon-lm90
 
 define Target/Description
 	Build firmware images for AMD Geode GX/LX based systems (net5501, alix, geos)
diff --git a/target/linux/x86/image/64.mk b/target/linux/x86/image/64.mk
index bde76ceba5dd..61e6d408d7ce 100644
--- a/target/linux/x86/image/64.mk
+++ b/target/linux/x86/image/64.mk
@@ -1,5 +1,7 @@
 define Device/generic
   DEVICE_TITLE := Generic x86/64
+  DEVICE_PACKAGES += kmod-bnx2 kmod-e1000e kmod-e1000 kmod-forcedeth kmod-igb \
+	kmod-r8169
   GRUB2_VARIANT := generic
 endef
 TARGET_DEVICES += generic
-- 
2.26.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
