Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3D41E900D
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 11:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGwDvsOJ8KzvVtfhfOmzgczuoHbf5tb4DyLvQ0/F1z8=; b=miMt2Qk6tMe7ll
	FUyb5IIOUi4tov1XKkSmtkWC2LrxOFhB8K+uo9iiS2L+zvPdoNtKS5AKeEeYTZVSTQA6n6MfrX+4F
	5LMDDCc38LXVmz+morUQnbuIlbKc/oraK8kYd/Fsrfm2C7kRTLU3UItvK1WlLtktcWaZevLiOsjES
	jYGqxxgxQyDWFYbupe3S9t7rEB+9+rnABNlAGBuOsBJWR2pG4U8b3L+6qemS+6L41p+VvJip0QPBo
	/uRzj/ImKtliXhsiDI2vuU+h/71Y8zA94KXZwmvvS4CbMbOXS2FF401KOWX95iYew7b9ljk4fKnbU
	/GQUMSfRzc7PhU/zSRJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jexns-0003Gf-P3; Sat, 30 May 2020 09:29:20 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jexnl-0003FK-Tx
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 09:29:15 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MScHp-1jYgFb0LCj-00SsLJ; Sat, 30 May 2020 11:29:10 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 30 May 2020 11:28:14 +0200
Message-Id: <20200530092816.1610-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200530092816.1610-1-freifunk@adrianschmutzler.de>
References: <20200530092816.1610-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:9ISkWavp7o6QzVqwGsr6aPkeYuh2myGEMWiv1k+P3rjSKiLyDoI
 I560K158/k3eZxMQpeAv6BYWD/i9OSFTUSyydvEClnl0XuAs1lQ+k5wNqT7P6DHGT0imSCQ
 OxRhflvgOpQNN8tCUTZ91FPc3wAfeOmo+xlJVGVSwX7+FTafvcc8fHwqB/RJE62HJosyR53
 +umhoix34OEs8q+2KWeyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IhIe6b6pcP8=:8JmbISM78F0t+gQPsmWlVU
 y/RV2YI/eeOKRMs40h+Spsz24VTDSmQpFH7zOlYpbZkjL+l+uZ4bn89/pROjn3CqmrSEvezcq
 NTgE+o9owmeuN47zn7AnxGhPRQPRLvZQUe8AQUZkes2oRHAr3dQQMDjm9vKZ0s3S0dsMtWeSP
 7kJeii3MIqHI6i0QEqpEFzy7j1OHHw9R1cbWoora4rIbcd+3aFSOVeh/ohg4dVjLpA2Kte5ig
 O/N1hTxa45mqdh6KSkxGFyHw1tcRgW/8NhsZvzRc0IVPowwDnmD1UnpyTSrnc2bmglSGdZXia
 wfiSQQdQT4bI3bBr3A1Nlu1U0o0A7yrmTju+NvaoiNwyCQAghrXuVBlEeRu9KYZSOI29CtbQ3
 LX4J2pr8c2nXwg7lAQ6z+ggidpN91nz6eNocFsHvXWcNa+67uPmhAwk+GmbtQxAn5Jwh8o2Se
 Ya9Aja5rpNk7RWvUrE3F8t1r7Ka9X2tqUdM9Z1ngB8CYrvQWf3fP/1ZZuxwud6IMfxo8vfH3g
 Xw17t7vQsLnogrSbXa6aQqt7agkVAUVnnSk7HG4smFTbyh2pUAVV2kQQizKa8lIQldeZwZZbF
 qeWe67X4c6lOmDsR25nJVfbfimcUMq1M9l5Oj674/rGQbo0WLVIAfFW9IupJUgY8PQmrQ/m8R
 bJrzpD3DchYu/X1htVjBzVA5BLCIzLfW2jVkmJ1qhWx5Z5A+w0GSleA1Qd9j8NSfumIGDeo9u
 7QWEk6kj8QIiPugu+v4VXSsauptCzjTO0apCQ6wAPJSlkLyk73UZZP05Q3jCYRvDWD3xVftVZ
 Ug7J4nE+GkXXGoYUPsnO2dPH/OjhN4Qo65HOC3yF9Cf5XdSy0HjINpvGRzyGM5GRAjaHBRN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_022914_254888_ECEC8362 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 1/3] treewide: drop DEVICE_TYPE when used
 as device variable
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Sungbo Eo <mans0n@gorani.run>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

DEVICE_TYPE is a target/subtarget variable, and it does not have
any effect when set in a device definition. It can only be set
in a target's or subtarget's Makefile.

Consequently, having it set anyway is misleading, so this drops
all cases.

This effectively reverts the following commits:
7a1497fd601d ("apm821xx: MBL: set DEVICE_TYPE to NAS")
5b4765c93a1b ("gemini: Classify Raidsonic NAS IB-4220-B as a NAS")
cdc6de460bb4 ("gemini: D-Link DNS-313 is a NAS")

For the following commit, the variable was set when adding device
support:
27b2f0fc0fc5 ("kirkwood: add support for Iomega Storcenter ix2-200")

Cc: Christian Lamparter <chunkeey@gmail.com>
Cc: Sungbo Eo <mans0n@gorani.run>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/apm821xx/image/Makefile | 1 -
 target/linux/gemini/image/Makefile   | 2 --
 target/linux/kirkwood/image/Makefile | 1 -
 3 files changed, 4 deletions(-)

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index d732141c8f..c26c015751 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -230,7 +230,6 @@ define Device/wd_mybooklive
   DEVICE_VENDOR := Western Digital
   DEVICE_MODEL := My Book Live Series (Single + Duo)
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-fs-vfat wpad-basic
-  DEVICE_TYPE := nas
   DEVICE_DTS := wd-mybooklive
   SUPPORTED_DEVICES += mbl wd,mybooklive-duo
   BLOCKSIZE := 1k
diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index a155939b8c..83f3d222d9 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -171,7 +171,6 @@ define Device/dlink_dns-313
 	DEVICE_VENDOR := D-Link
 	DEVICE_MODEL := DNS-313 1-Bay Network Storage Enclosure
 	DEVICE_DTS := gemini-dlink-dns-313
-	DEVICE_TYPE := nas
 	DEVICE_PACKAGES := $(GEMINI_NAS_PACKAGES)
 	BLOCKSIZE := 1k
 	FILESYSTEMS := ext4
@@ -204,7 +203,6 @@ define Device/raidsonic_ib-4220-b
 	DEVICE_VENDOR := Raidsonic
 	DEVICE_MODEL := NAS IB-4220-B
 	DEVICE_DTS := gemini-nas4220b
-	DEVICE_TYPE := nas
 endef
 TARGET_DEVICES += raidsonic_ib-4220-b
 
diff --git a/target/linux/kirkwood/image/Makefile b/target/linux/kirkwood/image/Makefile
index e69e3f125d..552ee44ee4 100644
--- a/target/linux/kirkwood/image/Makefile
+++ b/target/linux/kirkwood/image/Makefile
@@ -66,7 +66,6 @@ define Device/iom_ix2-200
   DEVICE_MODEL := StorCenter ix2-200
   DEVICE_DTS := kirkwood-iomega_ix2_200
   DEVICE_PACKAGES := kmod-gpio-button-hotplug kmod-hwmon-lm63
-  DEVICE_TYPE:=nas
   PAGESIZE := 512
   SUBPAGESIZE := 256
   BLOCKSIZE := 16k
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
