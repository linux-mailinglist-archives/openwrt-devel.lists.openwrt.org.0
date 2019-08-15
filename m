Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC598ECB7
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 15:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIjOlJPNUEi9azyUGEQbep3uA1Ug8p6wgsvOyfP9aRI=; b=mBSN9BG9zgET0n
	mzZrbcbAZyq13w9HrcvyNJEbro9oXnkgcVWG2ri52hOCCspcBJHfYFPmkq+vCWjezvhQz7XHdgtn3
	SNyyNSR5p3XxDSnHjsukhpxOgAet+mw42npekYPJGK6QZ7LQ79iHE64XxIeFAq3IXqNiBlRh55xZr
	4b4e5h36j2OhFatlI5PzdRVCmdLos0Mo3jGqxwE5uwm2VTV6j1oj5oe9JdACVv78+RZfxHtNXaMP7
	z3UC+FUXIqKDk9IXW4pQ6wuyiCl78ObkBdqw4CoMz9Ali5c1tqqyBdI888T8ar091Hw44VWWdKZxi
	B26Css39MLocnMbj0sNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFke-0008Oy-LG; Thu, 15 Aug 2019 13:25:12 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFkP-000861-CR
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 13:25:02 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 316ADA01A2;
 Thu, 15 Aug 2019 15:24:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id Vxoc0E3CYWX8; Thu, 15 Aug 2019 15:24:47 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 15 Aug 2019 15:24:38 +0200
Message-Id: <20190815132438.16279-2-hauke@hauke-m.de>
In-Reply-To: <20190815132438.16279-1-hauke@hauke-m.de>
References: <20190815132438.16279-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_062457_738364_E31F5F89 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] mac80211: Update to version 4.19.66-1
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/mac80211/Makefile                          | 6 +++---
 .../350-ath9k_hw-reset-AHB-WMAC-interface-on-AR91xx.patch | 2 +-
 .../351-ath9k_hw-issue-external-reset-for-QCA955x.patch   | 4 ++--
 ...rt-ath9k-interpret-requested-txpower-in-EIRP-dom.patch | 4 ++--
 ...k-adjust-tx-power-reduction-for-US-regulatory-do.patch | 2 +-
 .../patches/ath/510-ath9k_intr_mitigation_tweak.patch     | 2 +-
 .../mac80211/patches/ath/513-ath9k_add_pci_ids.patch      | 2 +-
 .../mac80211/patches/ath/542-ath9k_debugfs_diag.patch     | 4 ++--
 .../ath/544-ath9k-ar933x-usb-hang-workaround.patch        | 8 ++++----
 .../patches/ath/930-ath10k_add_tpt_led_trigger.patch      | 4 ++--
 ...ong-handling-of-peer_bw_rxnss_override-parameter.patch | 6 +++---
 ...ter_freq-handling-for-VHT160-in-recent-firmwares.patch | 2 +-
 .../ath/975-ath10k-use-tpt-trigger-by-default.patch       | 2 +-
 ...0k-Limit-available-channels-via-DT-ieee80211-fre.patch | 2 +-
 ...0k-add-support-for-configuring-management-packet.patch | 4 ++--
 ...0k-fix-possible-out-of-bound-access-of-ath10k_ra.patch | 2 +-
 ...0k-fix-incorrect-multicast-broadcast-rate-settin.patch | 4 ++--
 .../ath/980-ath10k-fix-max-antenna-gain-unit.patch        | 2 +-
 ...0k-adjust-tx-power-reduction-for-US-regulatory-d.patch | 2 +-
 ...-mac80211-add-stop-start-logic-for-software-TXQs.patch | 2 +-
 20 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index e5816887d9..1e7ed9426e 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=4.19.57-1
+PKG_VERSION:=4.19.66-1
 PKG_RELEASE:=1
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.57/
-PKG_HASH:=f9c2d888cd49bd85e3f625f440468a803eeabb36662b56426c6cb2d15a7e049d
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.66/
+PKG_HASH:=1f3c6a58cb45b247f6e473d1b52236bfbb41cb3e11e38a74526727e911b51a02
 
 PKG_SOURCE:=backports-$(PKG_VERSION).tar.xz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
diff --git a/package/kernel/mac80211/patches/ath/350-ath9k_hw-reset-AHB-WMAC-interface-on-AR91xx.patch b/package/kernel/mac80211/patches/ath/350-ath9k_hw-reset-AHB-WMAC-interface-on-AR91xx.patch
index cadbf6809c..d648a3a3e5 100644
--- a/package/kernel/mac80211/patches/ath/350-ath9k_hw-reset-AHB-WMAC-interface-on-AR91xx.patch
+++ b/package/kernel/mac80211/patches/ath/350-ath9k_hw-reset-AHB-WMAC-interface-on-AR91xx.patch
@@ -9,7 +9,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -1421,8 +1421,12 @@ static bool ath9k_hw_set_reset(struct at
+@@ -1435,8 +1435,12 @@ static bool ath9k_hw_set_reset(struct at
  	if (!AR_SREV_9100(ah))
  		REG_WRITE(ah, AR_RC, 0);
  
diff --git a/package/kernel/mac80211/patches/ath/351-ath9k_hw-issue-external-reset-for-QCA955x.patch b/package/kernel/mac80211/patches/ath/351-ath9k_hw-issue-external-reset-for-QCA955x.patch
index ac9e112f51..5f265b84c2 100644
--- a/package/kernel/mac80211/patches/ath/351-ath9k_hw-issue-external-reset-for-QCA955x.patch
+++ b/package/kernel/mac80211/patches/ath/351-ath9k_hw-issue-external-reset-for-QCA955x.patch
@@ -10,7 +10,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -1298,39 +1298,56 @@ void ath9k_hw_get_delta_slope_vals(struc
+@@ -1312,39 +1312,56 @@ void ath9k_hw_get_delta_slope_vals(struc
  	*coef_exponent = coef_exp - 16;
  }
  
@@ -94,7 +94,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	return true;
  }
  
-@@ -1383,24 +1400,24 @@ static bool ath9k_hw_set_reset(struct at
+@@ -1397,24 +1414,24 @@ static bool ath9k_hw_set_reset(struct at
  			rst_flags |= AR_RTC_RC_MAC_COLD;
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch b/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
index 3adcb8b796..1a91265f1b 100644
--- a/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
+++ b/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
@@ -8,7 +8,7 @@ This reverts commit 71f5137bf010c6faffab50c0ec15374c59c4a411.
 
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -2962,7 +2962,8 @@ void ath9k_hw_apply_txpower(struct ath_h
+@@ -2976,7 +2976,8 @@ void ath9k_hw_apply_txpower(struct ath_h
  {
  	struct ath_regulatory *reg = ath9k_hw_regulatory(ah);
  	struct ieee80211_channel *channel;
@@ -18,7 +18,7 @@ This reverts commit 71f5137bf010c6faffab50c0ec15374c59c4a411.
  	u16 ctl = NO_CTL;
  
  	if (!chan)
-@@ -2974,9 +2975,14 @@ void ath9k_hw_apply_txpower(struct ath_h
+@@ -2988,9 +2989,14 @@ void ath9k_hw_apply_txpower(struct ath_h
  	channel = chan->chan;
  	chan_pwr = min_t(int, channel->max_power * 2, MAX_RATE_POWER);
  	new_pwr = min_t(int, chan_pwr, reg->power_limit);
diff --git a/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch b/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch
index 363e9aa9a3..288d4e478c 100644
--- a/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch
+++ b/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch
@@ -11,7 +11,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -2981,6 +2981,10 @@ void ath9k_hw_apply_txpower(struct ath_h
+@@ -2995,6 +2995,10 @@ void ath9k_hw_apply_txpower(struct ath_h
  	if (ant_gain > max_gain)
  		ant_reduction = ant_gain - max_gain;
  
diff --git a/package/kernel/mac80211/patches/ath/510-ath9k_intr_mitigation_tweak.patch b/package/kernel/mac80211/patches/ath/510-ath9k_intr_mitigation_tweak.patch
index 356939a354..75b48b480e 100644
--- a/package/kernel/mac80211/patches/ath/510-ath9k_intr_mitigation_tweak.patch
+++ b/package/kernel/mac80211/patches/ath/510-ath9k_intr_mitigation_tweak.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -392,13 +392,8 @@ static void ath9k_hw_init_config(struct
+@@ -403,13 +403,8 @@ static void ath9k_hw_init_config(struct
  
  	ah->config.rx_intr_mitigation = true;
  
diff --git a/package/kernel/mac80211/patches/ath/513-ath9k_add_pci_ids.patch b/package/kernel/mac80211/patches/ath/513-ath9k_add_pci_ids.patch
index e536e60794..113c35625f 100644
--- a/package/kernel/mac80211/patches/ath/513-ath9k_add_pci_ids.patch
+++ b/package/kernel/mac80211/patches/ath/513-ath9k_add_pci_ids.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -649,6 +649,7 @@ int ath9k_hw_init(struct ath_hw *ah)
+@@ -663,6 +663,7 @@ int ath9k_hw_init(struct ath_hw *ah)
  
  	/* These are all the AR5008/AR9001/AR9002/AR9003 hardware family of chipsets */
  	switch (ah->hw_version.devid) {
diff --git a/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch b/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch
index 55896c834b..e627c38495 100644
--- a/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch
+++ b/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch
@@ -94,7 +94,7 @@
  struct ath_gen_timer *ath_gen_timer_alloc(struct ath_hw *ah,
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -1869,6 +1869,20 @@ u32 ath9k_hw_get_tsf_offset(struct times
+@@ -1883,6 +1883,20 @@ u32 ath9k_hw_get_tsf_offset(struct times
  }
  EXPORT_SYMBOL(ath9k_hw_get_tsf_offset);
  
@@ -115,7 +115,7 @@
  int ath9k_hw_reset(struct ath_hw *ah, struct ath9k_channel *chan,
  		   struct ath9k_hw_cal_data *caldata, bool fastcc)
  {
-@@ -2077,6 +2091,7 @@ int ath9k_hw_reset(struct ath_hw *ah, st
+@@ -2091,6 +2105,7 @@ int ath9k_hw_reset(struct ath_hw *ah, st
  		ar9003_hw_disable_phy_restart(ah);
  
  	ath9k_hw_apply_gpio_override(ah);
diff --git a/package/kernel/mac80211/patches/ath/544-ath9k-ar933x-usb-hang-workaround.patch b/package/kernel/mac80211/patches/ath/544-ath9k-ar933x-usb-hang-workaround.patch
index ba8f1e5d61..93eee34b64 100644
--- a/package/kernel/mac80211/patches/ath/544-ath9k-ar933x-usb-hang-workaround.patch
+++ b/package/kernel/mac80211/patches/ath/544-ath9k-ar933x-usb-hang-workaround.patch
@@ -20,7 +20,7 @@
  /******************/
  /* Chip Revisions */
  /******************/
-@@ -1441,6 +1454,9 @@ static bool ath9k_hw_set_reset(struct at
+@@ -1455,6 +1468,9 @@ static bool ath9k_hw_set_reset(struct at
  		udelay(50);
  	}
  
@@ -30,7 +30,7 @@
  	return true;
  }
  
-@@ -1540,6 +1556,9 @@ static bool ath9k_hw_chip_reset(struct a
+@@ -1554,6 +1570,9 @@ static bool ath9k_hw_chip_reset(struct a
  		ar9003_hw_internal_regulator_apply(ah);
  	ath9k_hw_init_pll(ah, chan);
  
@@ -40,7 +40,7 @@
  	return true;
  }
  
-@@ -1847,8 +1866,14 @@ static int ath9k_hw_do_fastcc(struct ath
+@@ -1861,8 +1880,14 @@ static int ath9k_hw_do_fastcc(struct ath
  	if (AR_SREV_9271(ah))
  		ar9002_hw_load_ani_reg(ah, chan);
  
@@ -55,7 +55,7 @@
  	return -EINVAL;
  }
  
-@@ -2102,6 +2127,9 @@ int ath9k_hw_reset(struct ath_hw *ah, st
+@@ -2116,6 +2141,9 @@ int ath9k_hw_reset(struct ath_hw *ah, st
  		ath9k_hw_set_radar_params(ah);
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
index 3fd6bca819..dd7a4392b8 100644
--- a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
+++ b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8282,6 +8282,21 @@ static int ath10k_mac_init_rd(struct ath
+@@ -8286,6 +8286,21 @@ static int ath10k_mac_init_rd(struct ath
  	return 0;
  }
  
@@ -22,7 +22,7 @@
  int ath10k_mac_register(struct ath10k *ar)
  {
  	static const u32 cipher_suites[] = {
-@@ -8571,6 +8586,12 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8575,6 +8590,12 @@ int ath10k_mac_register(struct ath10k *a
  
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
diff --git a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
index d8f6887cd0..406165ab9c 100644
--- a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
+++ b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
@@ -23,7 +23,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  3 files changed, 52 insertions(+), 23 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -2469,7 +2469,7 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2473,7 +2473,7 @@ static void ath10k_peer_assoc_h_vht(stru
  	const u16 *vht_mcs_mask;
  	u8 ampdu_factor;
  	u8 max_nss, vht_mcs;
@@ -32,7 +32,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  
  	if (WARN_ON(ath10k_mac_vif_chan(vif, &def)))
  		return;
-@@ -2529,23 +2529,45 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2533,23 +2533,45 @@ static void ath10k_peer_assoc_h_vht(stru
  		__le16_to_cpu(vht_cap->vht_mcs.tx_highest);
  	arg->peer_vht_rates.tx_mcs_set = ath10k_peer_assoc_h_vht_limit(
  		__le16_to_cpu(vht_cap->vht_mcs.tx_mcs_map), vht_mcs_mask);
@@ -92,7 +92,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  }
  
  static void ath10k_peer_assoc_h_qos(struct ath10k *ar,
-@@ -2697,9 +2719,9 @@ static int ath10k_peer_assoc_prepare(str
+@@ -2701,9 +2723,9 @@ static int ath10k_peer_assoc_prepare(str
  	ath10k_peer_assoc_h_crypto(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_rates(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_ht(ar, vif, sta, arg);
diff --git a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
index 9a7c749cb1..42eed5d304 100644
--- a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
+++ b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
@@ -13,7 +13,7 @@ v2: fix trailing whitespace issue and fix some typos within the commit note
  2 files changed, 8 insertions(+), 10 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -4473,13 +4473,6 @@ static struct ieee80211_sta_vht_cap ath1
+@@ -4477,13 +4477,6 @@ static struct ieee80211_sta_vht_cap ath1
  		vht_cap.cap |= val;
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
index dfe2829468..44e838441e 100644
--- a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
+++ b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
@@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8603,7 +8603,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8607,7 +8607,7 @@ int ath10k_mac_register(struct ath10k *a
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch b/package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
index 260c0c7867..3551216a68 100644
--- a/package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
+++ b/package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
@@ -29,7 +29,7 @@ Forwarded: https://patchwork.kernel.org/patch/10549245/
  #include <net/mac80211.h>
  #include <linux/etherdevice.h>
  #include <linux/acpi.h>
-@@ -8390,6 +8391,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8394,6 +8395,7 @@ int ath10k_mac_register(struct ath10k *a
  		ar->hw->wiphy->bands[NL80211_BAND_5GHZ] = band;
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/977-ath10k-add-support-for-configuring-management-packet.patch b/package/kernel/mac80211/patches/ath/977-ath10k-add-support-for-configuring-management-packet.patch
index 4f2f64a60a..26ec9b7e28 100644
--- a/package/kernel/mac80211/patches/ath/977-ath10k-add-support-for-configuring-management-packet.patch
+++ b/package/kernel/mac80211/patches/ath/977-ath10k-add-support-for-configuring-management-packet.patch
@@ -43,7 +43,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
  {
  	switch ((mcs_map >> (2 * nss)) & 0x3) {
-@@ -5468,9 +5484,10 @@ static void ath10k_bss_info_changed(stru
+@@ -5472,9 +5488,10 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -56,7 +56,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  
  	mutex_lock(&ar->conf_mutex);
  
-@@ -5676,6 +5693,30 @@ static void ath10k_bss_info_changed(stru
+@@ -5680,6 +5697,30 @@ static void ath10k_bss_info_changed(stru
  				    arvif->vdev_id,  ret);
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/978-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch b/package/kernel/mac80211/patches/ath/978-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
index b82b16a92b..1f8a3830cb 100644
--- a/package/kernel/mac80211/patches/ath/978-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
+++ b/package/kernel/mac80211/patches/ath/978-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
@@ -26,7 +26,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  		if (ath10k_rates[i].bitrate == bitrate)
  			return hw_value_prefix | ath10k_rates[i].hw_value;
  	}
-@@ -5699,22 +5699,22 @@ static void ath10k_bss_info_changed(stru
+@@ -5703,22 +5703,22 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch b/package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
index c25d14fc04..f6fa5b7c1f 100644
--- a/package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
+++ b/package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
@@ -17,7 +17,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
 
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -5484,8 +5484,8 @@ static void ath10k_bss_info_changed(stru
+@@ -5488,8 +5488,8 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -28,7 +28,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
  	enum nl80211_band band;
  	const struct ieee80211_supported_band *sband;
  
-@@ -5658,7 +5658,11 @@ static void ath10k_bss_info_changed(stru
+@@ -5662,7 +5662,11 @@ static void ath10k_bss_info_changed(stru
  	if (changed & BSS_CHANGED_MCAST_RATE &&
  	    !ath10k_mac_vif_chan(arvif->vif, &def)) {
  		band = def.chan->band;
diff --git a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
index 9cd23ce1b7..8a675e4fb1 100644
--- a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
+++ b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
@@ -38,7 +38,7 @@ Forwarded: https://patchwork.kernel.org/patch/10986723/
  
  	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
  		arg.ssid = arvif->u.ap.ssid;
-@@ -3139,7 +3139,7 @@ static int ath10k_update_channel_list(st
+@@ -3143,7 +3143,7 @@ static int ath10k_update_channel_list(st
  			ch->min_power = 0;
  			ch->max_power = channel->max_power * 2;
  			ch->max_reg_power = channel->max_reg_power * 2;
diff --git a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
index 07247a0577..06e0b41051 100644
--- a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
+++ b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
@@ -89,7 +89,7 @@ Forwarded: no
  
  	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
  		arg.ssid = arvif->u.ap.ssid;
-@@ -3139,7 +3175,8 @@ static int ath10k_update_channel_list(st
+@@ -3143,7 +3179,8 @@ static int ath10k_update_channel_list(st
  			ch->min_power = 0;
  			ch->max_power = channel->max_power * 2;
  			ch->max_reg_power = channel->max_reg_power * 2;
diff --git a/package/kernel/mac80211/patches/subsys/300-mac80211-add-stop-start-logic-for-software-TXQs.patch b/package/kernel/mac80211/patches/subsys/300-mac80211-add-stop-start-logic-for-software-TXQs.patch
index c354d2caf4..e57a33ec1f 100644
--- a/package/kernel/mac80211/patches/subsys/300-mac80211-add-stop-start-logic-for-software-TXQs.patch
+++ b/package/kernel/mac80211/patches/subsys/300-mac80211-add-stop-start-logic-for-software-TXQs.patch
@@ -77,7 +77,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
  	atomic_t agg_queue_stop[IEEE80211_MAX_QUEUES];
  
-@@ -2039,6 +2041,7 @@ void ieee80211_txq_remove_vlan(struct ie
+@@ -2046,6 +2048,7 @@ void ieee80211_txq_remove_vlan(struct ie
  			       struct ieee80211_sub_if_data *sdata);
  void ieee80211_fill_txq_stats(struct cfg80211_txq_stats *txqstats,
  			      struct txq_info *txqi);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
