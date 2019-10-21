Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F204DF5C6
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 21:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HsPEqmip560PFNKVHaxIIITytXX/Z3bBCrHFoJJxWlA=; b=H88eDilZznGEij
	p5tXXOjWRTIIIV3S0FkfaVqudcPd5K4igkSWV0qNKE9phMEAY1/JtFqApDYEuZngGUrNBfpEnAbY2
	tJC7BI6+nzous5aN1XEtXzPoMM89GuI/7HQAUZ+LWvTU1hX37+4rRruorRUHZpkOVlrc88cbA38Hu
	LPdIQ3IrENFxpaCusVi+iERQNbbpsRweVnmrkswVP9CESIaKeuZ6iJNAqrCWNKX/JGZjnJrdhcNEh
	SHrhQq7tWVkDdAuhi3wAugpczOVWYnr9ZkIz4ixgtRkK6YPzKTXAhTDAJpmo8/tUb76dfrhQjnfC6
	YY1dmh6pDt/1fbnM8IxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMd7f-0006NS-Nm; Mon, 21 Oct 2019 19:13:43 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMd7M-0006Em-DP
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 19:13:26 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F06A500D386FEAACE2D188F.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f06:a500:d386:feaa:ce2d:188f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id B76051E13A
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 21:13:18 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 21:13:07 +0200
Message-Id: <20191021191308.16311-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_121324_601664_B86A2B0C 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] mac80211: add rtw88 driver
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

This commits adds packaging for the new RTW88 driver from Realtek.
It supports the Realtek 8822BE/8822CE PCIe wireless chips.

For operation, the complementary firmware has to be loaded.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 package/kernel/mac80211/realtek.mk | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/package/kernel/mac80211/realtek.mk b/package/kernel/mac80211/realtek.mk
index e7eb9e3117..311eca1b6a 100644
--- a/package/kernel/mac80211/realtek.mk
+++ b/package/kernel/mac80211/realtek.mk
@@ -2,7 +2,7 @@ PKG_DRIVERS += \
 	rtl8180 rtl8187 \
 	rtlwifi rtlwifi-pci rtlwifi-btcoexist rtlwifi-usb rtl8192c-common \
 	rtl8192ce rtl8192se rtl8192de rtl8192cu rtl8821ae \
-	rtl8xxxu
+	rtl8xxxu rtw88
 
 config-$(call config_package,rtl8180) += RTL8180
 config-$(call config_package,rtl8187) += RTL8187
@@ -22,6 +22,9 @@ config-$(CONFIG_PACKAGE_RTLWIFI_DEBUG) += RTLWIFI_DEBUG
 config-$(call config_package,rtl8xxxu) += RTL8XXXU
 config-y += RTL8XXXU_UNTESTED
 
+config-$(call config_package,rtw88) += RTW88
+config-y += RTW88_CORE RTW88_PCI RTW88_8822BE RTW88_8822CE
+
 define KernelPackage/rtl818x/Default
   $(call KernelPackage/mac80211/Default)
   TITLE:=Realtek Drivers for RTL818x devices
@@ -168,3 +171,12 @@ define KernelPackage/rtl8xxxu/description
 
   Please report your results!
 endef
+
+define KernelPackage/rtw88
+  $(call KernelPackage/mac80211/Default)
+  TITLE:=Realtek RTL8822BE/RTL8822CE
+  DEPENDS+= @(PCI_SUPPORT) +kmod-mac80211 +@DRIVER_11N_SUPPORT +@DRIVER_11W_SUPPORT
+  FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/realtek/rtw88/rtw88.ko	\
+	$(PKG_BUILD_DIR)/drivers/net/wireless/realtek/rtw88/rtwpci.ko
+  AUTOLOAD:=$(call AutoProbe,rtwpci)
+endef
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
