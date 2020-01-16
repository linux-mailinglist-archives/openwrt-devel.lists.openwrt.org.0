Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB9613D956
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FH1w2NT0eh+6eEChex2JjO3mwvQKXjrmWhaL7yjIhrA=; b=akFsX/T6pqZS9M
	ExvselGqUWhdGqeoA2I8VDYR3pKPqQ689naKLUbSCQnqP6p0b8tsavF0tVcnEojqjLueuoGBbvBcp
	XIal2jg6SXfn+xMhGcchC1UvhCXfmD7r3hZHyUgdlPESgHiL+d3lu1zSRpE6r5kHJeEAWqn+jSENO
	3TTB1SlaUsM98cuMrtv5eLAJJdFjXkPSOZ1xIz1ZOORWo81n2/0UidW2ueWvT1sz/a1weFYLbzL47
	pOdyEky8HbTgr92o+sEPAqkreQS3bAt0enap9q1zB7WkuLPrYNrygM29EDmRwPW9C5SJB/K3iGbFi
	xp3Az6qo9DTKBAf8d44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3hn-0000NP-HO; Thu, 16 Jan 2020 11:52:55 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3gm-0007r4-MZ
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:52:01 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M7JvO-1izlK22qUO-007m6g; Thu, 16 Jan 2020 12:51:46 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 12:50:57 +0100
Message-Id: <20200116115100.1906-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
References: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:DvbqII+FQsHvl1B/xmRZ5joP17IDzAP2dqSJTg6suh0ESINJ1WT
 0g+qh0g+UEPI7nFMYiOIQ+5AWN2Z/6dPJgkdk0WykNMO9ZT6WEQIzexNIsaNBoaM9H43G71
 Ho8BrThd2H6EUcE385ODMco6PE7ceahHGsmxB6U7CaQyzPxqWMNuVtn7xUKs4Pb3GaVoZAk
 vKA2KWinNAtzpT2Jmhmyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iBAel1dA9Ts=:YnN95oGbh4mN5dE6Y3LYPA
 EIa28lHXaX9JeYVP8sDzLRLouK3X2ZLB7Cqi8JKodrbLdhJgN9ssNcvRN28R3dtfTqIm+hUpQ
 WVXvvXGMZNwtb+cBPUOVq2GOMmq+Y4MnHKgd2UOgDZrwXDLO0Y54MEOhUQSiGuLiB6w+/cW6l
 bP2lDH+UFRNqN/BjEaBJ27w7qAzsCkfO11vSRftNH1MYbowS8rM9zKO2BC9VbX9zBJ6jTnhHK
 Z/viAmmkaLkOxpnzsS+NhLtIE3VxBiCa85azCuRwa2/enZ29/qCc1qAnPWJZkbUkk0UBqcJ+P
 PRm1doHbIJ2xD70mFCwPigHbY6Fmhatufslah0I9ITHYQby3obGU1nkB44c7a2nhn928N/ayX
 OZtKk/WXajX+lYYLF0R8HgLW+PlidzYbBECMT5Ao6D54dCA87MADkLvMlKtXID1MUyjdxKfs3
 eM/BJRi2ufNUpvY+TTl6tyJq8Glvn0xeD4XDoahRZ16lhi5vRd3YaIUu26Y81joUTpTTc6KQC
 /j3/NDnWIrbawzUytbvUY0gf46iX56VUHAmZrE3cWMNOo4Wbn9SMhD3VPoU6Ojfo/8ziKvibH
 iJQwHQI/b+kWvsVLFp1pPwYBpLUt98xJPGnYzcs8/PtKtKu9N0a8cXzxwR7KS9Fgcfi9xv+uP
 lvN2DxKiOFJYsXcEJNaSwXyzQY9aKEv4WA47yl5sIWtilSXOqnWIMSzw5U5hZvMpJup+CEzQi
 I7RZN9eaL9Xf+d9FTbks9XbU/2RS9yg0ZatctrfrD4s7vEw6RmM5UGLEbot4Ac3i499bIGSgg
 YLaVQf4lwaStrgNIUqi/t5iwD76ocdw8Pw28OkMAfXXr8YRpWNK6FG702uy+sAaWw6hn+pSYz
 PIbBdwt3qsMGzGOZS3xfccLYIz/ItLmC5UQtqYIIc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_035153_024194_60F882F2 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/5] mac80211: add wil6210 driver
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
index 788131b751..ce0b83c45b 100644
--- a/package/kernel/mac80211/ath.mk
+++ b/package/kernel/mac80211/ath.mk
@@ -1,6 +1,6 @@
 PKG_DRIVERS += \
 	ath ath5k ath6kl ath6kl-sdio ath6kl-usb ath9k ath9k-common ath9k-htc ath10k \
-	carl9170 owl-loader
+	carl9170 owl-loader wil6210
 
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
@@ -66,6 +68,8 @@ config-$(call config_package,ath6kl-usb) += ATH6KL_USB
 
 config-$(call config_package,carl9170) += CARL9170
 
+config-$(call config_package,wil6210) += WIL6210
+
 define KernelPackage/ath/config
   if PACKAGE_kmod-ath
 	config ATH_USER_REGD
@@ -292,3 +296,11 @@ define KernelPackage/owl-loader/description
 
   This is necessary for devices like the Cisco Meraki Z1.
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
