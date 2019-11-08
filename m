Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E80F5357
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 19:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7K0dSjCspU735zOBAgpYDlxbDTNy3pkbkAFqYfLDRVQ=; b=jQCJk++AiQ2KXh
	Z9ZDoJ8ADn7I5aRKRWuZhusrFnVRhr+F1Zz/JoCKSoQc2ZlgFJ53P5TOdYpAUj6Nn4NmcDyhgUih+
	oiTqk0xJXzGHYoFFylnYgxBWTAJR1QEtvQjhpoSblAboC8XRBnoBm+yGZ1VRiKgfXeEn4iBvSz5dk
	MeMJHIqX7Pdn73J5DKtkAIpuYtQUXL85Wyoe6qv4KNBes7ALtAvh9+qhVpvKwLkvvQ1tUkiT4oF9I
	0D3SQxlZyMhLGwqNtssDIXSwzJobBSBmSvvyVy7Qpapy+8pPzhUI2Sj4bcLztDLMTrDU2YAWyGN4a
	ag7ucOpuZCdMBDRIlUDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8mC-0006EU-3G; Fri, 08 Nov 2019 18:14:28 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8m2-0006Cp-9L
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 18:14:19 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MUGNZ-1iKeYx2fJr-00RKPv; Fri, 08 Nov 2019 19:14:12 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:14:05 +0100
Message-Id: <20191108181408.18272-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Vx55jbhvxEu5mTBEjdS4aOkkaNe+r2Kk9WfYiGyYpsvwCsFf6Vy
 gIVLweAbkpLFskEjgr3oaGw4SJpm3NAeVIohJQl0qPWjNxroHlLQWlqyeXBVI/guqPTTR8z
 2pOQkjW7axn0FXsPoWhPWdjxL8bXQceyd78ShlXoNruICWr8cOySDmnCRpBH/9pbdqO+Bak
 4VrDxPIY1v6A8AG2rVfVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cgOGm0kxVDc=:8Gq5S9C2lfzn7Fe2TAmB4h
 lFhvKKFEgRfSACdCojxAZpcU0mhbcIpyLohSa4SLa6DpFeD25bRtoZdh6dPljxehFydqwXHqe
 zBgu+BP+2rjjCtXsRFmJzz6UEwB3Zi0IbrZ92Jpvmf2KE74CaHEyLehn7CkAUn8Eonq6cVpli
 t/fukT6ajYmqscvsJB+TNVZ7ATLyTQWZhGc9pt77BtOia3qPRKvJ9pPn1/E7mp0un+aaO6pgm
 vhwwup6IZJuECj/MzGgQBCUKYT/xcWqvsn6afco3mygqNcqqwgYaYBXPftJfZttI3siiXOYAO
 eT+Gz9ih7AxcOX2eEcAjx5H+tOYkQMDWuyumkWkPUJ1l/MvTEQeyU3gM8SnINQbcdqBz2zSHH
 C0hICXl+h2B6hS8CIZYY7LRPJkrN2ArAurzlDGhTFJ6XlGaH55ZI2oGFfS3Bt+ox1/gdqH7SJ
 Bv+NIpqDM/d2UJ63g4ZysTBrPHoieAPwjlut1Tb1OFzT0QnEimmSvz5yy0xhEfuF91QdUajwK
 2mwIE098tqPYnkRxKIuB8iYsWTrkUC6auyskakL/4Oszd12MmgeTzQSFqc7XpzzjTB+0ahUFU
 FXwlyucf499q1gFSUkIAzSBvNjtZsn6xoHgbzMy8YoRnmHMHD/CliqJtVgh6b5WtXYwYnqCp4
 K+owLKfFQBN53J07bzGxBn7WNBe2TYDIkBpotRdjreKMIeVBErFRmhJoZ6Lkrpvyr+9ESNhkE
 fVeDZSDI34kDG7KPX0Bb0HbMBaPJg+sPFDA3WlnMA2siTIJO/qvw0QDPtNamGUcV6dc4BY7uC
 imfFJPfaxH0halRBPdyVpX5xXbpUoFmiFZK/WUecS3ZTq26+TVL/SHinMACO4tg95TDY5Akxr
 zVtnr953f8fYLvOR9hnrSIJr+wdNtglBQb8456uyI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_101418_619592_7D47516A 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/5] mac80211: add wil6210 driver
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robimarko@gmail.com>

This patch adds wil6210 driver for Wilocity/QCA based 802.11ad
PCI cards.

Driver uses cfg80211 and nl80211 but not mac80211.
Integration for UCI and LuCI will come in other patches.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/kernel/mac80211/ath.mk | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/package/kernel/mac80211/ath.mk b/package/kernel/mac80211/ath.mk
index 64aac41b4d..ead3c8c4b2 100644
--- a/package/kernel/mac80211/ath.mk
+++ b/package/kernel/mac80211/ath.mk
@@ -1,6 +1,6 @@
 PKG_DRIVERS += \
 	ath ath5k ath6kl ath6kl-sdio ath6kl-usb ath9k ath9k-common ath9k-htc ath10k \
-	carl9170
+	carl9170 wil6210
 
 PKG_CONFIG_DEPENDS += \
 	CONFIG_PACKAGE_ATH_DEBUG \
@@ -20,7 +20,8 @@ ifdef CONFIG_PACKAGE_MAC80211_DEBUGFS
 	ATH10K_DEBUGFS \
 	CARL9170_DEBUGFS \
 	ATH5K_DEBUG \
-	ATH6KL_DEBUG
+	ATH6KL_DEBUG \
+	WIL6210_DEBUGFS
 endif
 
 ifdef CONFIG_PACKAGE_MAC80211_TRACING
@@ -28,7 +29,8 @@ ifdef CONFIG_PACKAGE_MAC80211_TRACING
 	ATH10K_TRACING \
 	ATH6KL_TRACING \
 	ATH_TRACEPOINTS \
-	ATH5K_TRACER
+	ATH5K_TRACER \
+	WIL6210_TRACING
 endif
 
 config-$(call config_package,ath) += ATH_CARDS ATH_COMMON ATH_REG_DYNAMIC_USER_REG_HINTS
@@ -65,6 +67,8 @@ config-$(call config_package,ath6kl-usb) += ATH6KL_USB
 
 config-$(call config_package,carl9170) += CARL9170
 
+config-$(call config_package,wil6210) += WIL6210
+
 define KernelPackage/ath/config
   if PACKAGE_kmod-ath
 	config ATH_USER_REGD
@@ -274,3 +278,11 @@ define KernelPackage/carl9170
   FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/ath/carl9170/carl9170.ko
   AUTOLOAD:=$(call AutoProbe,carl9170)
 endef
+
+define KernelPackage/wil6210
+  $(call KernelPackage/mac80211/Default)
+  TITLE:=QCA/Wilocity 60g WiFi card wil6210 support
+  DEPENDS+= @PCI_SUPPORT +kmod-mac80211 +wil6210-firmware
+  FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/ath/wil6210/wil6210.ko
+  AUTOLOAD:=$(call AutoProbe,wil6210)
+endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
