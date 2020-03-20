Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9458B18CBC7
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 11:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDvtIPaVs4sfWT/wS6xxQfTXRA171TfXS9stCwIjvSI=; b=Hb2FPV5L4vVniZ
	XlFU+mAdcfv0gk7AuUrdfGlnbleOuaKklF5kKv5e1InQRYrswhvYQcPWzQma0EC6nt9x83Nm7Cven
	iNEqsTUmz8ni5wOy9sjMDZkgL05idNfcJMi+ke7NQgEM9t/YtBBb3atUmvJci4jgu2outI1AbN+w2
	VxlSO1pyrWVjytlDUg449MuNsp2Eq4U9JVwZbimqVUY7a1gU0pSdz11H5fQuV1/N/XlsZDNKRsncO
	VkBtxWOdwwjwe+8oTa+uMSoMVWMdD+5arIEFabDDP4ghV4Hgt9hQVruvfhPRNNTWZ5IkXJtNFJ66B
	ojmVEklQg1eokqL2gmBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFF2A-0003yf-Rf; Fri, 20 Mar 2020 10:37:46 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFF1Z-0003LM-DR
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 10:37:11 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 1D603FF80E;
 Fri, 20 Mar 2020 10:37:05 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 00:10:56 -1000
Message-Id: <20200320101059.19793-4-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320101059.19793-1-mail@aparcar.org>
References: <20200320101059.19793-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_033709_728119_802CA361 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/6] x86: remove obsolete legacy profiles
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
Cc: Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rely on device profiles instead for packages selection.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
[rebase, adjusted commit title]
Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/64/profiles/000-Generic.mk   | 15 --------------
 .../linux/x86/generic/profiles/000-Generic.mk | 19 ------------------
 .../linux/x86/geode/profiles/000-Generic.mk   | 20 -------------------
 target/linux/x86/geode/profiles/100-Geos.mk   | 19 ------------------
 .../linux/x86/legacy/profiles/000-Generic.mk  | 18 -----------------
 5 files changed, 91 deletions(-)
 delete mode 100644 target/linux/x86/64/profiles/000-Generic.mk
 delete mode 100644 target/linux/x86/generic/profiles/000-Generic.mk
 delete mode 100644 target/linux/x86/geode/profiles/000-Generic.mk
 delete mode 100644 target/linux/x86/geode/profiles/100-Geos.mk
 delete mode 100644 target/linux/x86/legacy/profiles/000-Generic.mk

diff --git a/target/linux/x86/64/profiles/000-Generic.mk b/target/linux/x86/64/profiles/000-Generic.mk
deleted file mode 100644
index b5b10c4ade..0000000000
--- a/target/linux/x86/64/profiles/000-Generic.mk
+++ /dev/null
@@ -1,15 +0,0 @@
-#
-# Copyright (C) 2006-2019 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-define Profile/Generic
-  NAME:=Generic x86/64
-endef
-
-define Profile/Generic/Description
-	Generic Profile for x86/64 architecture
-endef
-$(eval $(call Profile,Generic))
diff --git a/target/linux/x86/generic/profiles/000-Generic.mk b/target/linux/x86/generic/profiles/000-Generic.mk
deleted file mode 100644
index 7717131be0..0000000000
--- a/target/linux/x86/generic/profiles/000-Generic.mk
+++ /dev/null
@@ -1,19 +0,0 @@
-#
-# Copyright (C) 2006-2019 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-define Profile/Generic
-  NAME:=Generic x86
-  PACKAGES:=kmod-e1000e kmod-igb kmod-bnx2 \
-	kmod-3c59x kmod-e100 kmod-e1000 kmod-natsemi kmod-ne2k-pci \
-	kmod-pcnet32 kmod-8139too kmod-r8169 kmod-sis900 kmod-tg3 \
-	kmod-via-rhine kmod-via-velocity
-endef
-
-define Profile/Generic/Description
-	Generic Profile for x86 architecture
-endef
-$(eval $(call Profile,Generic))
diff --git a/target/linux/x86/geode/profiles/000-Generic.mk b/target/linux/x86/geode/profiles/000-Generic.mk
deleted file mode 100644
index be11b33e97..0000000000
--- a/target/linux/x86/geode/profiles/000-Generic.mk
+++ /dev/null
@@ -1,20 +0,0 @@
-#
-# Copyright (C) 2006-2019 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-define Profile/Generic
-  NAME:=Generic x86/Geode
-  PACKAGES:= \
-		soloscli linux-atm br2684ctl ppp-mod-pppoa pppdump pppstats \
-		hwclock flashrom tc kmod-pppoa kmod-8139cp kmod-mppe \
-		kmod-usb-ohci-pci kmod-hwmon-lm90 \
-		kmod-via-rhine
-endef
-
-define Profile/Generic/Description
-	Generic Profile for all Geode boards.
-endef
-$(eval $(call Profile,Generic))
diff --git a/target/linux/x86/geode/profiles/100-Geos.mk b/target/linux/x86/geode/profiles/100-Geos.mk
deleted file mode 100644
index f51e892cbf..0000000000
--- a/target/linux/x86/geode/profiles/100-Geos.mk
+++ /dev/null
@@ -1,19 +0,0 @@
-#
-# Copyright (C) 2006-2019 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-define Profile/Geos
-  NAME:=Geos
-  PACKAGES:= \
-		soloscli linux-atm br2684ctl ppp-mod-pppoa pppdump pppstats \
-		hwclock flashrom tc kmod-pppoa kmod-8139cp kmod-mppe \
-		kmod-usb-ohci-pci kmod-hwmon-lm90
-endef
-
-define Profile/Geos/Description
-	Traverse Technologies Geos ADSL router
-endef
-$(eval $(call Profile,Geos))
diff --git a/target/linux/x86/legacy/profiles/000-Generic.mk b/target/linux/x86/legacy/profiles/000-Generic.mk
deleted file mode 100644
index 566a66c1be..0000000000
--- a/target/linux/x86/legacy/profiles/000-Generic.mk
+++ /dev/null
@@ -1,18 +0,0 @@
-#
-# Copyright (C) 2006-2019 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-define Profile/Generic
-  NAME:=Generic x86/legacy
-  PACKAGES:=kmod-3c59x kmod-e100 kmod-e1000 kmod-natsemi kmod-ne2k-pci \
-	kmod-pcnet32 kmod-8139too kmod-r8169 kmod-sis900 kmod-tg3 \
-	kmod-via-rhine kmod-via-velocity
-endef
-
-define Profile/Generic/Description
-	Generic Profile for x86 legacy architecutre
-endef
-$(eval $(call Profile,Generic))
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
