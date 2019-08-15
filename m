Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB718ECCD
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 15:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vj/L3ceAEEIS91MS0Pdr+N93i/bYTSyxd4QvoOSzy4g=; b=MUrTByKBbFWLqE
	kDCkPn04zydKLyfaPHz7E8xCYFyK5KT+ptHRTpfcTnqS/Jd+Px0xsEeGg+dsCGvVAl6+3Mfzj9rmV
	MNWqm/AC4K3shADmIpoIsB0watZAUxTO/0lYbueJh3PXYz+m1AvNvkv1Y8Piei1SshBcs1zCsUtif
	UtkT/NSaq1+bYmzkeuER6tBuAeeiuMRhJ+rgLBHubm0o9GodnpGg3nnnuexajmU9BDgb737pvOBtO
	vR8m0xidOuJmXVIOGkjAOipHMsvOZkwfCQqffIfnB4vMvgOyoPSqqyk2Wu8oCiAuC9/n4ZzLx+7Am
	1wxEtDl2NvWPdvK0uhrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFnE-0002PM-0u; Thu, 15 Aug 2019 13:27:52 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFmv-0002KL-Tk
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 13:27:38 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id A5238A0A67;
 Thu, 15 Aug 2019 15:27:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id tfYQEVC8QoJL; Thu, 15 Aug 2019 15:27:29 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 15 Aug 2019 15:27:18 +0200
Message-Id: <20190815132719.16592-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_062734_279800_64D62997 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] mac80211: Update to version 5.2.8-1
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

This contains multiple fixes from the upstream kernel.
The removed patch was merged upstream.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/mac80211/Makefile              |  6 +--
 ...w-reset-AHB-WMAC-interface-on-AR91xx.patch |  2 +-
 ..._hw-issue-external-reset-for-QCA955x.patch |  4 +-
 ...erpret-requested-txpower-in-EIRP-dom.patch |  4 +-
 ...power-reduction-for-US-regulatory-do.patch |  2 +-
 .../ath/510-ath9k_intr_mitigation_tweak.patch |  2 +-
 .../patches/ath/513-ath9k_add_pci_ids.patch   |  2 +-
 .../patches/ath/542-ath9k_debugfs_diag.patch  |  4 +-
 ...544-ath9k-ar933x-usb-hang-workaround.patch |  8 ++--
 .../ath/930-ath10k_add_tpt_led_trigger.patch  |  4 +-
 ...-of-peer_bw_rxnss_override-parameter.patch |  8 ++--
 ...dling-for-VHT160-in-recent-firmwares.patch |  2 +-
 ...rolling-support-for-various-chipsets.patch |  2 +-
 ...75-ath10k-use-tpt-trigger-by-default.patch |  2 +-
 ...rect-multicast-broadcast-rate-settin.patch | 43 -------------------
 ...980-ath10k-fix-max-antenna-gain-unit.patch |  2 +-
 ...-power-reduction-for-US-regulatory-d.patch |  2 +-
 ...1-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch |  2 +-
 18 files changed, 29 insertions(+), 72 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 3ae39888e1..403ac5bd5e 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=5.2-rc7-1
+PKG_VERSION:=5.2.8-1
 PKG_RELEASE:=1
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.2-rc7/
-PKG_HASH:=3179a4ec398bd6366a4fd8a44b311a57f8da87ad10720baf7c17aef9c8ec2983
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.2.8/
+PKG_HASH:=d1ac22a9b7536f730a992292fb29c70355ffc42ea9f58610010ea196dc69b2e3
 
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
index 38b5c51302..bbc388ec49 100644
--- a/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
+++ b/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
@@ -8,7 +8,7 @@ This reverts commit 71f5137bf010c6faffab50c0ec15374c59c4a411.
 
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -2963,7 +2963,8 @@ void ath9k_hw_apply_txpower(struct ath_h
+@@ -2977,7 +2977,8 @@ void ath9k_hw_apply_txpower(struct ath_h
  {
  	struct ath_regulatory *reg = ath9k_hw_regulatory(ah);
  	struct ieee80211_channel *channel;
@@ -18,7 +18,7 @@ This reverts commit 71f5137bf010c6faffab50c0ec15374c59c4a411.
  	u16 ctl = NO_CTL;
  
  	if (!chan)
-@@ -2975,9 +2976,14 @@ void ath9k_hw_apply_txpower(struct ath_h
+@@ -2989,9 +2990,14 @@ void ath9k_hw_apply_txpower(struct ath_h
  	channel = chan->chan;
  	chan_pwr = min_t(int, channel->max_power * 2, MAX_RATE_POWER);
  	new_pwr = min_t(int, chan_pwr, reg->power_limit);
diff --git a/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch b/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch
index 4b458f74ab..0c3edc1260 100644
--- a/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch
+++ b/package/kernel/mac80211/patches/ath/365-ath9k-adjust-tx-power-reduction-for-US-regulatory-do.patch
@@ -11,7 +11,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/drivers/net/wireless/ath/ath9k/hw.c
 +++ b/drivers/net/wireless/ath/ath9k/hw.c
-@@ -2982,6 +2982,10 @@ void ath9k_hw_apply_txpower(struct ath_h
+@@ -2996,6 +2996,10 @@ void ath9k_hw_apply_txpower(struct ath_h
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
index e9ba4a9483..b7633d26b1 100644
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
index 352a49c4c3..0170f52ed0 100644
--- a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
+++ b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8483,6 +8483,21 @@ static int ath10k_mac_init_rd(struct ath
+@@ -8491,6 +8491,21 @@ static int ath10k_mac_init_rd(struct ath
  	return 0;
  }
  
@@ -22,7 +22,7 @@
  int ath10k_mac_register(struct ath10k *ar)
  {
  	static const u32 cipher_suites[] = {
-@@ -8806,6 +8821,12 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8814,6 +8829,12 @@ int ath10k_mac_register(struct ath10k *a
  
  	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
  
diff --git a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
index df4223fcb8..47b8af208a 100644
--- a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
+++ b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
@@ -23,7 +23,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  3 files changed, 52 insertions(+), 23 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -2475,7 +2475,7 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2479,7 +2479,7 @@ static void ath10k_peer_assoc_h_vht(stru
  	const u16 *vht_mcs_mask;
  	u8 ampdu_factor;
  	u8 max_nss, vht_mcs;
@@ -32,7 +32,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  
  	if (WARN_ON(ath10k_mac_vif_chan(vif, &def)))
  		return;
-@@ -2535,23 +2535,45 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2539,23 +2539,45 @@ static void ath10k_peer_assoc_h_vht(stru
  		__le16_to_cpu(vht_cap->vht_mcs.tx_highest);
  	arg->peer_vht_rates.tx_mcs_set = ath10k_peer_assoc_h_vht_limit(
  		__le16_to_cpu(vht_cap->vht_mcs.tx_mcs_map), vht_mcs_mask);
@@ -92,7 +92,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  }
  
  static void ath10k_peer_assoc_h_qos(struct ath10k *ar,
-@@ -2703,9 +2725,9 @@ static int ath10k_peer_assoc_prepare(str
+@@ -2707,9 +2729,9 @@ static int ath10k_peer_assoc_prepare(str
  	ath10k_peer_assoc_h_crypto(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_rates(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_ht(ar, vif, sta, arg);
@@ -121,7 +121,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  static int
 --- a/drivers/net/wireless/ath/ath10k/wmi.h
 +++ b/drivers/net/wireless/ath/ath10k/wmi.h
-@@ -6468,7 +6468,19 @@ struct wmi_10_2_peer_assoc_complete_cmd
+@@ -6469,7 +6469,19 @@ struct wmi_10_2_peer_assoc_complete_cmd
  	__le32 info0; /* WMI_PEER_ASSOC_INFO0_ */
  } __packed;
  
diff --git a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
index 2863e4b4b6..719f98ecc3 100644
--- a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
+++ b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
@@ -13,7 +13,7 @@ v2: fix trailing whitespace issue and fix some typos within the commit note
  2 files changed, 8 insertions(+), 10 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -4533,13 +4533,6 @@ static struct ieee80211_sta_vht_cap ath1
+@@ -4537,13 +4537,6 @@ static struct ieee80211_sta_vht_cap ath1
  		vht_cap.cap |= val;
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index 1fd255b121..bb80564ec7 100644
--- a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -456,7 +456,7 @@ v13:
  {
 --- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
 +++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
-@@ -4309,6 +4309,8 @@ static const struct wmi_ops wmi_tlv_ops
+@@ -4311,6 +4311,8 @@ static const struct wmi_ops wmi_tlv_ops
  	.gen_echo = ath10k_wmi_tlv_op_gen_echo,
  	.gen_vdev_spectral_conf = ath10k_wmi_tlv_op_gen_vdev_spectral_conf,
  	.gen_vdev_spectral_enable = ath10k_wmi_tlv_op_gen_vdev_spectral_enable,
diff --git a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
index 60801243fb..6ff81d7151 100644
--- a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
+++ b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
@@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8838,7 +8838,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8846,7 +8846,7 @@ int ath10k_mac_register(struct ath10k *a
  	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch b/package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
deleted file mode 100644
index 0c98be2ada..0000000000
--- a/package/kernel/mac80211/patches/ath/979-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-From: Pradeep kumar Chitrapu <pradeepc@codeaurora.org>
-Date: Mon, 10 Dec 2018 20:56:11 -0800
-Subject: ath10k: fix incorrect multicast/broadcast rate setting
-
-Invalid rate code is sent to firmware when multicast rate value of 0 is
-sent to driver indicating disabled case, causing broken mesh path.
-so fix that.
-
-Tested on QCA9984 with firmware 10.4-3.6.1-00827
-
-Fixes: cd93b83ad92 ("ath10k: support for multicast rate control")
-Co-developed-by: Zhi Chen <zhichen@codeaurora.org>
-Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
-Signed-off-by: Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>
-
-Origin: other, https://patchwork.kernel.org/patch/10723033/
-
---- a/drivers/net/wireless/ath/ath10k/mac.c
-+++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -5604,8 +5604,8 @@ static void ath10k_bss_info_changed(stru
- 	struct cfg80211_chan_def def;
- 	u32 vdev_param, pdev_param, slottime, preamble;
- 	u16 bitrate, hw_value;
--	u8 rate, basic_rate_idx;
--	int rateidx, ret = 0, hw_rate_code;
-+	u8 rate, basic_rate_idx, rateidx;
-+	int ret = 0, hw_rate_code, mcast_rate;
- 	enum nl80211_band band;
- 	const struct ieee80211_supported_band *sband;
- 
-@@ -5792,7 +5792,11 @@ static void ath10k_bss_info_changed(stru
- 	if (changed & BSS_CHANGED_MCAST_RATE &&
- 	    !ath10k_mac_vif_chan(arvif->vif, &def)) {
- 		band = def.chan->band;
--		rateidx = vif->bss_conf.mcast_rate[band] - 1;
-+		mcast_rate = vif->bss_conf.mcast_rate[band];
-+		if (mcast_rate > 0)
-+			rateidx = mcast_rate - 1;
-+		else
-+			rateidx = ffs(vif->bss_conf.basic_rates) - 1;
- 
- 		if (ar->phy_capability & WHAL_WLAN_11A_CAPABILITY)
- 			rateidx += ATH10K_MAC_FIRST_OFDM_RATE_IDX;
diff --git a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
index 49f6057799..9c729e70f9 100644
--- a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
+++ b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
@@ -38,7 +38,7 @@ Forwarded: https://patchwork.kernel.org/patch/10986723/
  
  	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
  		arg.ssid = arvif->u.ap.ssid;
-@@ -3128,7 +3128,7 @@ static int ath10k_update_channel_list(st
+@@ -3132,7 +3132,7 @@ static int ath10k_update_channel_list(st
  			ch->min_power = 0;
  			ch->max_power = channel->max_power * 2;
  			ch->max_reg_power = channel->max_reg_power * 2;
diff --git a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
index bea5eaa7ae..3c5386349e 100644
--- a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
+++ b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
@@ -89,7 +89,7 @@ Forwarded: no
  
  	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
  		arg.ssid = arvif->u.ap.ssid;
-@@ -3128,7 +3164,8 @@ static int ath10k_update_channel_list(st
+@@ -3132,7 +3168,8 @@ static int ath10k_update_channel_list(st
  			ch->min_power = 0;
  			ch->max_power = channel->max_power * 2;
  			ch->max_reg_power = channel->max_reg_power * 2;
diff --git a/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch b/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch
index 8d9b6e7de9..fe113958d9 100644
--- a/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch
+++ b/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch
@@ -81,7 +81,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
   * mac80211 is capable of taking advantage of many hardware
 --- a/net/mac80211/iface.c
 +++ b/net/mac80211/iface.c
-@@ -1877,6 +1877,10 @@ int ieee80211_if_add(struct ieee80211_lo
+@@ -1876,6 +1876,10 @@ int ieee80211_if_add(struct ieee80211_lo
  					+ 8 /* rfc1042/bridge tunnel */
  					- ETH_HLEN /* ethernet hard_header_len */
  					+ IEEE80211_ENCRYPT_HEADROOM;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
