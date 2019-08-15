Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AABE8ECCF
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 15:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGnwqI3qYSbKtPofbgPolHxnjAwQxRUPKNNKuDvsadU=; b=QHGhgW0GW0428k
	2/roQlUijuCNbe23yVGBDHBMzHiIs7fyQTab8z/1eN3NIjEBlnTA570ISJYLVWjMuJ5Azub+B24d8
	ppCEM3Fkw9S5jj3LzewzRcLJawbPQzs0hUlkEXl/RiMoppmXdSyVcV/9rrf0C0v29u5Q8E0wHTY59
	/dl2k3ubASmeocaJWII8juEMlD4nTY3oNbYpjacCvwq8bm4F5j7u8J0ZVjUj90NXO9BYr3p+FjeFN
	R0HxO+IgRBU8v/Yh/eFa//hdz1fY0//QYw2AHhJdsdA3Nafj6AR4YDco8ELNaMYMnARUTHSew9knb
	12RocHMMKLz6xZ/aZLxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFnU-00038G-4x; Thu, 15 Aug 2019 13:28:08 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFn0-0002Nh-K5
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 13:27:50 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 646EBA1319;
 Thu, 15 Aug 2019 15:27:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id B3AtFTOrYdpl; Thu, 15 Aug 2019 15:27:30 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 15 Aug 2019 15:27:19 +0200
Message-Id: <20190815132719.16592-2-hauke@hauke-m.de>
In-Reply-To: <20190815132719.16592-1-hauke@hauke-m.de>
References: <20190815132719.16592-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-Spam-Note: CRM114 run bypassed due to message size (143300 bytes)
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
Subject: [OpenWrt-Devel] [PATCH 2/2] mac80211: Update to mac80211 5.3-rc4-1
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

The removed patches were applied upstream.
The type of the RT2X00_LIB_EEPROM config option was changed to bool,
because boolean is an invalid value and the new kconfig system
complained about this.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/mac80211/Makefile              |    8 +-
 .../patches/ath/070-ath_common_config.patch   |    2 +-
 .../ath/080-ath10k_thermal_config.patch       |    2 +-
 ...erpret-requested-txpower-in-EIRP-dom.patch |    2 +-
 .../patches/ath/402-ath_regd_optional.patch   |    2 +-
 .../patches/ath/542-ath9k_debugfs_diag.patch  |    6 +-
 .../ath/543-ath9k_entropy_from_adc.patch      |    8 +-
 .../patches/ath/545-ath9k_ani_ws_detect.patch |    4 +-
 .../ath/551-ath9k_ubnt_uap_plus_hsr.patch     |    2 +-
 ...21-ath10k_init_devices_synchronously.patch |    2 +-
 .../ath/930-ath10k_add_tpt_led_trigger.patch  |    4 +-
 ...-of-peer_bw_rxnss_override-parameter.patch |    8 +-
 ...dling-for-VHT160-in-recent-firmwares.patch |    2 +-
 ...rolling-support-for-various-chipsets.patch |   40 +-
 ...75-ath10k-use-tpt-trigger-by-default.patch |    6 +-
 ...980-ath10k-fix-max-antenna-gain-unit.patch |    8 +-
 ...-power-reduction-for-US-regulatory-d.patch |   10 +-
 ...source-files-to-using-SPDX-license-i.patch | 1223 -----------------
 ...-brcmfmac-fix-typos-in-code-comments.patch |   24 -
 ...cmfmac-use-strlcpy-instead-of-strcpy.patch |   26 -
 .../810-b43-gpio-mask-module-option.patch     |    2 +-
 .../brcm/812-b43-add-antenna-control.patch    |   14 +-
 .../814-b43-only-use-gpio-0-1-for-led.patch   |    2 +-
 .../patches/build/002-change_allconfig.patch  |    2 +-
 .../patches/build/050-lib80211_option.patch   |    5 +-
 .../patches/build/060-no_local_ssb_bcma.patch |    8 +-
 .../602-rt2x00-introduce-rt2x00eeprom.patch   |   14 +-
 ...isabling_bands_through_platform_data.patch |    2 +-
 ...c-loadable-via-OF-on-rt288x-305x-SoC.patch |    2 +-
 ...0-rt2x00-change-led-polarity-from-OF.patch |    2 +-
 .../611-rt2x00-add-AP+STA-support.patch       |    2 +-
 ...dd-support-for-external-PA-on-MT7620.patch |    6 +-
 ...-rt2x00-add-rf-self-txdc-calibration.patch |    8 +-
 .../rt2x00/983-rt2x00-add-r-calibration.patch |    8 +-
 .../984-rt2x00-add-rxdcoc-calibration.patch   |    8 +-
 .../985-rt2x00-add-rxiq-calibration.patch     |    8 +-
 .../986-rt2x00-add-TX-LOFT-calibration.patch  |    8 +-
 .../100-remove-cryptoapi-dependencies.patch   |    4 +-
 .../110-mac80211_keep_keys_on_stop_ap.patch   |    2 +-
 .../patches/subsys/130-disable-fils.patch     |    2 +-
 ...aes-cmac-switch-to-shash-CMAC-driver.patch |    2 +-
 .../132-mac80211-remove-cmac-dependency.patch |    2 +-
 .../subsys/150-disable_addr_notifier.patch    |    6 +-
 .../mac80211/patches/subsys/210-ap_scan.patch |    2 +-
 ...0211-add-hdrlen-to-ieee80211_tx_data.patch |   14 +-
 ...1-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch |   16 +-
 .../522-mac80211_configure_antenna_gain.patch |   40 +-
 .../utils/iw/patches/001-nl80211_h_sync.patch |  101 +-
 48 files changed, 231 insertions(+), 1450 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/brcm/100-v5.4-0001-brcmfmac-switch-source-files-to-using-SPDX-license-i.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/101-v5.4-brcmfmac-fix-typos-in-code-comments.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/102-v5.4-brcmfmac-use-strlcpy-instead-of-strcpy.patch

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 403ac5bd5e..3cc14944fe 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=5.2.8-1
+PKG_VERSION:=5.3-rc4-1
 PKG_RELEASE:=1
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.2.8/
-PKG_HASH:=d1ac22a9b7536f730a992292fb29c70355ffc42ea9f58610010ea196dc69b2e3
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.3-rc4/
+PKG_HASH:=b159557f1e9e3e88ee2edf60ee786cd9ffd477e386306ea249c4e9085695b932
 
 PKG_SOURCE:=backports-$(PKG_VERSION).tar.xz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
@@ -162,7 +162,7 @@ endef
 define KernelPackage/airo
   $(call KernelPackage/mac80211/Default)
   TITLE:=Cisco Aironet driver
-  DEPENDS+=@PCI_SUPPORT +@DRIVER_WEXT_SUPPORT +kmod-cfg80211 @TARGET_x86
+  DEPENDS+=@PCI_SUPPORT +@DRIVER_WEXT_SUPPORT +kmod-cfg80211 @TARGET_x86 @BROKEN
   FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/cisco/airo.ko
   AUTOLOAD:=$(call AutoProbe,airo)
 endef
diff --git a/package/kernel/mac80211/patches/ath/070-ath_common_config.patch b/package/kernel/mac80211/patches/ath/070-ath_common_config.patch
index cc84c1b5de..3d0b4d6b1a 100644
--- a/package/kernel/mac80211/patches/ath/070-ath_common_config.patch
+++ b/package/kernel/mac80211/patches/ath/070-ath_common_config.patch
@@ -1,7 +1,7 @@
 --- a/drivers/net/wireless/ath/Kconfig
 +++ b/drivers/net/wireless/ath/Kconfig
 @@ -1,6 +1,6 @@
- # SPDX-License-Identifier: GPL-2.0-only
+ # SPDX-License-Identifier: ISC
  config ATH_COMMON
 -	tristate
 +	tristate "ath.ko"
diff --git a/package/kernel/mac80211/patches/ath/080-ath10k_thermal_config.patch b/package/kernel/mac80211/patches/ath/080-ath10k_thermal_config.patch
index cef57f09c9..231a7cb393 100644
--- a/package/kernel/mac80211/patches/ath/080-ath10k_thermal_config.patch
+++ b/package/kernel/mac80211/patches/ath/080-ath10k_thermal_config.patch
@@ -37,7 +37,7 @@
  void ath10k_thermal_event_temperature(struct ath10k *ar, int temperature);
 --- a/local-symbols
 +++ b/local-symbols
-@@ -139,6 +139,7 @@ ATH10K_SNOC=
+@@ -141,6 +141,7 @@ ATH10K_SNOC=
  ATH10K_DEBUG=
  ATH10K_DEBUGFS=
  ATH10K_SPECTRAL=
diff --git a/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch b/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
index bbc388ec49..385eea0116 100644
--- a/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
+++ b/package/kernel/mac80211/patches/ath/356-Revert-ath9k-interpret-requested-txpower-in-EIRP-dom.patch
@@ -20,7 +20,7 @@ This reverts commit 71f5137bf010c6faffab50c0ec15374c59c4a411.
  	if (!chan)
 @@ -2989,9 +2990,14 @@ void ath9k_hw_apply_txpower(struct ath_h
  	channel = chan->chan;
- 	chan_pwr = min_t(int, channel->max_power * 2, MAX_RATE_POWER);
+ 	chan_pwr = min_t(int, channel->max_power * 2, MAX_COMBINED_POWER);
  	new_pwr = min_t(int, chan_pwr, reg->power_limit);
 +	max_gain = chan_pwr - new_pwr + channel->max_antenna_gain * 2;
 +
diff --git a/package/kernel/mac80211/patches/ath/402-ath_regd_optional.patch b/package/kernel/mac80211/patches/ath/402-ath_regd_optional.patch
index cae3c5c0dd..7824eab6cb 100644
--- a/package/kernel/mac80211/patches/ath/402-ath_regd_optional.patch
+++ b/package/kernel/mac80211/patches/ath/402-ath_regd_optional.patch
@@ -82,7 +82,7 @@
  	---help---
 --- a/local-symbols
 +++ b/local-symbols
-@@ -83,6 +83,7 @@ ADM8211=
+@@ -85,6 +85,7 @@ ADM8211=
  ATH_COMMON=
  WLAN_VENDOR_ATH=
  ATH_DEBUG=
diff --git a/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch b/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch
index b7633d26b1..7c60191d48 100644
--- a/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch
+++ b/package/kernel/mac80211/patches/ath/542-ath9k_debugfs_diag.patch
@@ -62,7 +62,7 @@
  	debugfs_create_devm_seqfile(sc->dev, "interrupt", sc->debug.debugfs_phy,
 --- a/drivers/net/wireless/ath/ath9k/hw.h
 +++ b/drivers/net/wireless/ath/ath9k/hw.h
-@@ -520,6 +520,12 @@ enum {
+@@ -521,6 +521,12 @@ enum {
  	ATH9K_RESET_COLD,
  };
  
@@ -75,7 +75,7 @@
  struct ath9k_hw_version {
  	u32 magic;
  	u16 devid;
-@@ -808,6 +814,8 @@ struct ath_hw {
+@@ -809,6 +815,8 @@ struct ath_hw {
  	u32 ah_flags;
  	s16 nf_override;
  
@@ -84,7 +84,7 @@
  	bool reset_power_on;
  	bool htc_reset_init;
  
-@@ -1073,6 +1081,7 @@ void ath9k_hw_check_nav(struct ath_hw *a
+@@ -1074,6 +1082,7 @@ void ath9k_hw_check_nav(struct ath_hw *a
  bool ath9k_hw_check_alive(struct ath_hw *ah);
  
  bool ath9k_hw_setpower(struct ath_hw *ah, enum ath9k_power_mode mode);
diff --git a/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch b/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
index 2e44b0095f..64bd6cacfd 100644
--- a/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
+++ b/package/kernel/mac80211/patches/ath/543-ath9k_entropy_from_adc.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ath/ath9k/hw.h
 +++ b/drivers/net/wireless/ath/ath9k/hw.h
-@@ -721,6 +721,7 @@ struct ath_spec_scan {
+@@ -722,6 +722,7 @@ struct ath_spec_scan {
   * @config_pci_powersave:
   * @calibrate: periodic calibration for NF, ANI, IQ, ADC gain, ADC-DC
   *
@@ -8,7 +8,7 @@
   * @spectral_scan_config: set parameters for spectral scan and enable/disable it
   * @spectral_scan_trigger: trigger a spectral scan run
   * @spectral_scan_wait: wait for a spectral scan run to finish
-@@ -743,6 +744,7 @@ struct ath_hw_ops {
+@@ -744,6 +745,7 @@ struct ath_hw_ops {
  			struct ath_hw_antcomb_conf *antconf);
  	void (*antdiv_comb_conf_set)(struct ath_hw *ah,
  			struct ath_hw_antcomb_conf *antconf);
@@ -18,7 +18,7 @@
  	void (*spectral_scan_trigger)(struct ath_hw *ah);
 --- a/drivers/net/wireless/ath/ath9k/ar9003_phy.c
 +++ b/drivers/net/wireless/ath/ath9k/ar9003_phy.c
-@@ -1945,6 +1945,26 @@ void ar9003_hw_init_rate_txpower(struct
+@@ -1927,6 +1927,26 @@ void ar9003_hw_init_rate_txpower(struct
  	}
  }
  
@@ -45,7 +45,7 @@
  void ar9003_hw_attach_phy_ops(struct ath_hw *ah)
  {
  	struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
-@@ -1981,6 +2001,7 @@ void ar9003_hw_attach_phy_ops(struct ath
+@@ -1963,6 +1983,7 @@ void ar9003_hw_attach_phy_ops(struct ath
  	priv_ops->set_radar_params = ar9003_hw_set_radar_params;
  	priv_ops->fast_chan_change = ar9003_hw_fast_chan_change;
  
diff --git a/package/kernel/mac80211/patches/ath/545-ath9k_ani_ws_detect.patch b/package/kernel/mac80211/patches/ath/545-ath9k_ani_ws_detect.patch
index 70db82a21e..48cc171134 100644
--- a/package/kernel/mac80211/patches/ath/545-ath9k_ani_ws_detect.patch
+++ b/package/kernel/mac80211/patches/ath/545-ath9k_ani_ws_detect.patch
@@ -79,7 +79,7 @@
  static const u8 ofdm2pwr[] = {
  	ALL_TARGET_LEGACY_6_24,
  	ALL_TARGET_LEGACY_6_24,
-@@ -1095,11 +1081,6 @@ static bool ar9003_hw_ani_control(struct
+@@ -1077,11 +1063,6 @@ static bool ar9003_hw_ani_control(struct
  	struct ath_common *common = ath9k_hw_common(ah);
  	struct ath9k_channel *chan = ah->curchan;
  	struct ar5416AniState *aniState = &ah->ani;
@@ -91,7 +91,7 @@
  	s32 value, value2;
  
  	switch (cmd & ah->ani_function) {
-@@ -1113,61 +1094,6 @@ static bool ar9003_hw_ani_control(struct
+@@ -1095,61 +1076,6 @@ static bool ar9003_hw_ani_control(struct
  		 */
  		u32 on = param ? 1 : 0;
  
diff --git a/package/kernel/mac80211/patches/ath/551-ath9k_ubnt_uap_plus_hsr.patch b/package/kernel/mac80211/patches/ath/551-ath9k_ubnt_uap_plus_hsr.patch
index c28054d58d..9c91767587 100644
--- a/package/kernel/mac80211/patches/ath/551-ath9k_ubnt_uap_plus_hsr.patch
+++ b/package/kernel/mac80211/patches/ath/551-ath9k_ubnt_uap_plus_hsr.patch
@@ -386,7 +386,7 @@
  #endif /* _LINUX_ATH9K_PLATFORM_H */
 --- a/local-symbols
 +++ b/local-symbols
-@@ -110,6 +110,7 @@ ATH9K_WOW=
+@@ -112,6 +112,7 @@ ATH9K_WOW=
  ATH9K_RFKILL=
  ATH9K_CHANNEL_CONTEXT=
  ATH9K_PCOEM=
diff --git a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
index 3a16b08a44..8221d78197 100644
--- a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
+++ b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
@@ -14,7 +14,7 @@ Signed-off-by: Sven Eckelmann <sven@open-mesh.com>
 
 --- a/drivers/net/wireless/ath/ath10k/core.c
 +++ b/drivers/net/wireless/ath/ath10k/core.c
-@@ -3003,6 +3003,16 @@ int ath10k_core_register(struct ath10k *
+@@ -3071,6 +3071,16 @@ int ath10k_core_register(struct ath10k *
  
  	queue_work(ar->workqueue, &ar->register_work);
  
diff --git a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
index 0170f52ed0..b1172cd17d 100644
--- a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
+++ b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8491,6 +8491,21 @@ static int ath10k_mac_init_rd(struct ath
+@@ -8669,6 +8669,21 @@ static int ath10k_mac_init_rd(struct ath
  	return 0;
  }
  
@@ -22,7 +22,7 @@
  int ath10k_mac_register(struct ath10k *ar)
  {
  	static const u32 cipher_suites[] = {
-@@ -8814,6 +8829,12 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8995,6 +9010,12 @@ int ath10k_mac_register(struct ath10k *a
  
  	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
  
diff --git a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
index 47b8af208a..c99ba55955 100644
--- a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
+++ b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
@@ -23,7 +23,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  3 files changed, 52 insertions(+), 23 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -2479,7 +2479,7 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2515,7 +2515,7 @@ static void ath10k_peer_assoc_h_vht(stru
  	const u16 *vht_mcs_mask;
  	u8 ampdu_factor;
  	u8 max_nss, vht_mcs;
@@ -32,7 +32,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  
  	if (WARN_ON(ath10k_mac_vif_chan(vif, &def)))
  		return;
-@@ -2539,23 +2539,45 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2575,23 +2575,45 @@ static void ath10k_peer_assoc_h_vht(stru
  		__le16_to_cpu(vht_cap->vht_mcs.tx_highest);
  	arg->peer_vht_rates.tx_mcs_set = ath10k_peer_assoc_h_vht_limit(
  		__le16_to_cpu(vht_cap->vht_mcs.tx_mcs_map), vht_mcs_mask);
@@ -92,7 +92,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  }
  
  static void ath10k_peer_assoc_h_qos(struct ath10k *ar,
-@@ -2707,9 +2729,9 @@ static int ath10k_peer_assoc_prepare(str
+@@ -2743,9 +2765,9 @@ static int ath10k_peer_assoc_prepare(str
  	ath10k_peer_assoc_h_crypto(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_rates(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_ht(ar, vif, sta, arg);
@@ -121,7 +121,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  static int
 --- a/drivers/net/wireless/ath/ath10k/wmi.h
 +++ b/drivers/net/wireless/ath/ath10k/wmi.h
-@@ -6469,7 +6469,19 @@ struct wmi_10_2_peer_assoc_complete_cmd
+@@ -6478,7 +6478,19 @@ struct wmi_10_2_peer_assoc_complete_cmd
  	__le32 info0; /* WMI_PEER_ASSOC_INFO0_ */
  } __packed;
  
diff --git a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
index 719f98ecc3..65f42520cb 100644
--- a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
+++ b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
@@ -13,7 +13,7 @@ v2: fix trailing whitespace issue and fix some typos within the commit note
  2 files changed, 8 insertions(+), 10 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -4537,13 +4537,6 @@ static struct ieee80211_sta_vht_cap ath1
+@@ -4573,13 +4573,6 @@ static struct ieee80211_sta_vht_cap ath1
  		vht_cap.cap |= val;
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index bb80564ec7..97b7550e34 100644
--- a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -114,7 +114,7 @@ v13:
  ath10k_core-$(CONFIG_DEV_COREDUMP) += coredump.o
 --- a/local-symbols
 +++ b/local-symbols
-@@ -142,6 +142,7 @@ ATH10K_DEBUG=
+@@ -144,6 +144,7 @@ ATH10K_DEBUG=
  ATH10K_DEBUGFS=
  ATH10K_SPECTRAL=
  ATH10K_THERMAL=
@@ -131,8 +131,8 @@ v13:
 +#include "leds.h"
  
  unsigned int ath10k_debug_mask;
- static unsigned int ath10k_cryptmode_param;
-@@ -55,6 +56,7 @@ static const struct ath10k_hw_params ath
+ EXPORT_SYMBOL(ath10k_debug_mask);
+@@ -60,6 +61,7 @@ static const struct ath10k_hw_params ath
  		.dev_id = QCA988X_2_0_DEVICE_ID,
  		.bus = ATH10K_BUS_PCI,
  		.name = "qca988x hw2.0",
@@ -140,7 +140,7 @@ v13:
  		.patch_load_addr = QCA988X_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
-@@ -123,6 +125,7 @@ static const struct ath10k_hw_params ath
+@@ -130,6 +132,7 @@ static const struct ath10k_hw_params ath
  		.dev_id = QCA9887_1_0_DEVICE_ID,
  		.bus = ATH10K_BUS_PCI,
  		.name = "qca9887 hw1.0",
@@ -148,7 +148,7 @@ v13:
  		.patch_load_addr = QCA9887_HW_1_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
-@@ -297,6 +300,7 @@ static const struct ath10k_hw_params ath
+@@ -337,6 +340,7 @@ static const struct ath10k_hw_params ath
  		.dev_id = QCA99X0_2_0_DEVICE_ID,
  		.bus = ATH10K_BUS_PCI,
  		.name = "qca99x0 hw2.0",
@@ -156,7 +156,7 @@ v13:
  		.patch_load_addr = QCA99X0_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.otp_exe_param = 0x00000700,
-@@ -337,6 +341,7 @@ static const struct ath10k_hw_params ath
+@@ -378,6 +382,7 @@ static const struct ath10k_hw_params ath
  		.dev_id = QCA9984_1_0_DEVICE_ID,
  		.bus = ATH10K_BUS_PCI,
  		.name = "qca9984/qca9994 hw1.0",
@@ -164,7 +164,7 @@ v13:
  		.patch_load_addr = QCA9984_HW_1_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -384,6 +389,7 @@ static const struct ath10k_hw_params ath
+@@ -426,6 +431,7 @@ static const struct ath10k_hw_params ath
  		.dev_id = QCA9888_2_0_DEVICE_ID,
  		.bus = ATH10K_BUS_PCI,
  		.name = "qca9888 hw2.0",
@@ -172,9 +172,9 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -2720,6 +2726,10 @@ int ath10k_core_start(struct ath10k *ar,
- 	if (status)
+@@ -2788,6 +2794,10 @@ int ath10k_core_start(struct ath10k *ar,
  		goto err_hif_stop;
+ 	}
  
 +	status = ath10k_leds_start(ar);
 +	if (status)
@@ -183,7 +183,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -2976,9 +2986,18 @@ static void ath10k_core_register_work(st
+@@ -3044,9 +3054,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -202,7 +202,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3024,6 +3043,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3092,6 +3111,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -221,7 +221,7 @@ v13:
  
  #include "htt.h"
  #include "htc.h"
-@@ -1150,6 +1151,13 @@ struct ath10k {
+@@ -1170,6 +1171,13 @@ struct ath10k {
  	} testmode;
  
  	struct {
@@ -237,7 +237,7 @@ v13:
  		u32 fw_warm_reset_counter;
 --- a/drivers/net/wireless/ath/ath10k/hw.h
 +++ b/drivers/net/wireless/ath/ath10k/hw.h
-@@ -511,6 +511,7 @@ struct ath10k_hw_params {
+@@ -514,6 +514,7 @@ struct ath10k_hw_params {
  	const char *name;
  	u32 patch_load_addr;
  	int uart_pin;
@@ -456,7 +456,7 @@ v13:
  {
 --- a/drivers/net/wireless/ath/ath10k/wmi-tlv.c
 +++ b/drivers/net/wireless/ath/ath10k/wmi-tlv.c
-@@ -4311,6 +4311,8 @@ static const struct wmi_ops wmi_tlv_ops
+@@ -4364,6 +4364,8 @@ static const struct wmi_ops wmi_tlv_ops
  	.gen_echo = ath10k_wmi_tlv_op_gen_echo,
  	.gen_vdev_spectral_conf = ath10k_wmi_tlv_op_gen_vdev_spectral_conf,
  	.gen_vdev_spectral_enable = ath10k_wmi_tlv_op_gen_vdev_spectral_enable,
@@ -517,7 +517,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -9004,6 +9047,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -9029,6 +9072,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -527,7 +527,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9074,6 +9120,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -9099,6 +9145,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -536,7 +536,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9146,6 +9194,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -9171,6 +9219,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -545,7 +545,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -9217,6 +9267,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -9242,6 +9292,8 @@ static const struct wmi_ops wmi_10_2_4_o
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
  	.gen_bb_timing = ath10k_wmi_10_2_4_op_gen_bb_timing,
@@ -554,7 +554,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9297,6 +9349,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -9322,6 +9374,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
@@ -565,7 +565,7 @@ v13:
  int ath10k_wmi_attach(struct ath10k *ar)
 --- a/drivers/net/wireless/ath/ath10k/wmi.h
 +++ b/drivers/net/wireless/ath/ath10k/wmi.h
-@@ -2998,6 +2998,41 @@ enum wmi_10_4_feature_mask {
+@@ -3005,6 +3005,41 @@ enum wmi_10_4_feature_mask {
  
  };
  
diff --git a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
index 6ff81d7151..8922ffed81 100644
--- a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
+++ b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
@@ -16,9 +16,9 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
 
 --- a/drivers/net/wireless/ath/ath10k/core.h
 +++ b/drivers/net/wireless/ath/ath10k/core.h
-@@ -1198,6 +1198,10 @@ struct ath10k {
- 	struct work_struct radar_confirmation_work;
+@@ -1219,6 +1219,10 @@ struct ath10k {
  	struct ath10k_bus_params bus_param;
+ 	struct completion peer_delete_done;
  
 +#ifdef CPTCFG_MAC80211_LEDS
 +	const char *led_default_trigger;
@@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8846,7 +8846,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9027,7 +9027,7 @@ int ath10k_mac_register(struct ath10k *a
  	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
index 9c729e70f9..f60163f941 100644
--- a/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
+++ b/package/kernel/mac80211/patches/ath/980-ath10k-fix-max-antenna-gain-unit.patch
@@ -20,7 +20,7 @@ Forwarded: https://patchwork.kernel.org/patch/10986723/
 
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -1009,7 +1009,7 @@ static int ath10k_monitor_vdev_start(str
+@@ -1041,7 +1041,7 @@ static int ath10k_monitor_vdev_start(str
  	arg.channel.min_power = 0;
  	arg.channel.max_power = channel->max_power * 2;
  	arg.channel.max_reg_power = channel->max_reg_power * 2;
@@ -28,8 +28,8 @@ Forwarded: https://patchwork.kernel.org/patch/10986723/
 +	arg.channel.max_antenna_gain = channel->max_antenna_gain;
  
  	reinit_completion(&ar->vdev_setup_done);
- 
-@@ -1451,7 +1451,7 @@ static int ath10k_vdev_start_restart(str
+ 	reinit_completion(&ar->vdev_delete_done);
+@@ -1487,7 +1487,7 @@ static int ath10k_vdev_start_restart(str
  	arg.channel.min_power = 0;
  	arg.channel.max_power = chandef->chan->max_power * 2;
  	arg.channel.max_reg_power = chandef->chan->max_reg_power * 2;
@@ -38,7 +38,7 @@ Forwarded: https://patchwork.kernel.org/patch/10986723/
  
  	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
  		arg.ssid = arvif->u.ap.ssid;
-@@ -3132,7 +3132,7 @@ static int ath10k_update_channel_list(st
+@@ -3168,7 +3168,7 @@ static int ath10k_update_channel_list(st
  			ch->min_power = 0;
  			ch->max_power = channel->max_power * 2;
  			ch->max_reg_power = channel->max_reg_power * 2;
diff --git a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
index 3c5386349e..9fbb254127 100644
--- a/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
+++ b/package/kernel/mac80211/patches/ath/981-ath10k-adjust-tx-power-reduction-for-US-regulatory-d.patch
@@ -28,7 +28,7 @@ Forwarded: no
 
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -977,6 +977,40 @@ static inline int ath10k_vdev_setup_sync
+@@ -1009,6 +1009,40 @@ static inline int ath10k_vdev_setup_sync
  	return ar->last_wmi_vdev_start_status;
  }
  
@@ -69,7 +69,7 @@ Forwarded: no
  static int ath10k_monitor_vdev_start(struct ath10k *ar, int vdev_id)
  {
  	struct cfg80211_chan_def *chandef = NULL;
-@@ -1009,7 +1043,8 @@ static int ath10k_monitor_vdev_start(str
+@@ -1041,7 +1075,8 @@ static int ath10k_monitor_vdev_start(str
  	arg.channel.min_power = 0;
  	arg.channel.max_power = channel->max_power * 2;
  	arg.channel.max_reg_power = channel->max_reg_power * 2;
@@ -78,8 +78,8 @@ Forwarded: no
 +						channel->max_antenna_gain);
  
  	reinit_completion(&ar->vdev_setup_done);
- 
-@@ -1451,7 +1486,8 @@ static int ath10k_vdev_start_restart(str
+ 	reinit_completion(&ar->vdev_delete_done);
+@@ -1487,7 +1522,8 @@ static int ath10k_vdev_start_restart(str
  	arg.channel.min_power = 0;
  	arg.channel.max_power = chandef->chan->max_power * 2;
  	arg.channel.max_reg_power = chandef->chan->max_reg_power * 2;
@@ -89,7 +89,7 @@ Forwarded: no
  
  	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
  		arg.ssid = arvif->u.ap.ssid;
-@@ -3132,7 +3168,8 @@ static int ath10k_update_channel_list(st
+@@ -3168,7 +3204,8 @@ static int ath10k_update_channel_list(st
  			ch->min_power = 0;
  			ch->max_power = channel->max_power * 2;
  			ch->max_reg_power = channel->max_reg_power * 2;
diff --git a/package/kernel/mac80211/patches/brcm/100-v5.4-0001-brcmfmac-switch-source-files-to-using-SPDX-license-i.patch b/package/kernel/mac80211/patches/brcm/100-v5.4-0001-brcmfmac-switch-source-files-to-using-SPDX-license-i.patch
deleted file mode 100644
index 5362177980..0000000000
--- a/package/kernel/mac80211/patches/brcm/100-v5.4-0001-brcmfmac-switch-source-files-to-using-SPDX-license-i.patch
+++ /dev/null
@@ -1,1223 +0,0 @@
-From daeccac2d5e7a6179ffff63e40b4a59bc3376a05 Mon Sep 17 00:00:00 2001
-From: Arend van Spriel <arend.vanspriel@broadcom.com>
-Date: Thu, 16 May 2019 14:04:09 +0200
-Subject: [PATCH] brcmfmac: switch source files to using SPDX license
- identifier
-
-With ISC license text in place under the LICENSES folder switch
-to using the SPDX license identifier to refer to the ISC license.
-
-Reviewed-by: Hante Meuleman <hante.meuleman@broadcom.com>
-Reviewed-by: Pieter-Paul Giesberts <pieter-paul.giesberts@broadcom.com>
-Reviewed-by: Franky Lin <franky.lin@broadcom.com>
-Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/Makefile | 14 ++------------
- .../broadcom/brcm80211/brcmfmac/Makefile         | 14 ++------------
- .../wireless/broadcom/brcm80211/brcmfmac/bcdc.c  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/bcdc.h  | 13 +------------
- .../broadcom/brcm80211/brcmfmac/bcmsdh.c         | 13 +------------
- .../broadcom/brcm80211/brcmfmac/btcoex.c         | 13 +------------
- .../broadcom/brcm80211/brcmfmac/btcoex.h         | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/bus.h   | 13 +------------
- .../broadcom/brcm80211/brcmfmac/cfg80211.c       | 13 +------------
- .../broadcom/brcm80211/brcmfmac/cfg80211.h       | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/chip.c  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/chip.h  | 13 +------------
- .../broadcom/brcm80211/brcmfmac/common.c         | 13 +------------
- .../broadcom/brcm80211/brcmfmac/common.h         | 16 +++-------------
- .../broadcom/brcm80211/brcmfmac/commonring.c     | 16 +++-------------
- .../broadcom/brcm80211/brcmfmac/commonring.h     | 16 +++-------------
- .../wireless/broadcom/brcm80211/brcmfmac/core.c  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/core.h  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/debug.c | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/debug.h | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/dmi.c   | 13 +------------
- .../broadcom/brcm80211/brcmfmac/feature.c        | 13 +------------
- .../broadcom/brcm80211/brcmfmac/feature.h        | 13 +------------
- .../broadcom/brcm80211/brcmfmac/firmware.c       | 13 +------------
- .../broadcom/brcm80211/brcmfmac/firmware.h       | 13 +------------
- .../broadcom/brcm80211/brcmfmac/flowring.c       | 16 +++-------------
- .../broadcom/brcm80211/brcmfmac/flowring.h       | 16 +++-------------
- .../wireless/broadcom/brcm80211/brcmfmac/fweh.c  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/fweh.h  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/fwil.c  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/fwil.h  | 13 +------------
- .../broadcom/brcm80211/brcmfmac/fwil_types.h     | 13 +------------
- .../broadcom/brcm80211/brcmfmac/fwsignal.c       | 13 +------------
- .../broadcom/brcm80211/brcmfmac/fwsignal.h       | 14 +-------------
- .../broadcom/brcm80211/brcmfmac/msgbuf.c         | 16 +++-------------
- .../broadcom/brcm80211/brcmfmac/msgbuf.h         | 16 +++-------------
- .../wireless/broadcom/brcm80211/brcmfmac/of.c    | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/of.h    | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/p2p.c   | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/p2p.h   | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/pcie.c  | 16 +++-------------
- .../wireless/broadcom/brcm80211/brcmfmac/pcie.h  | 16 +++-------------
- .../wireless/broadcom/brcm80211/brcmfmac/pno.c   | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/pno.h   | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/proto.c | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/proto.h | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/sdio.c  | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/sdio.h  | 13 +------------
- .../broadcom/brcm80211/brcmfmac/tracepoint.c     | 13 +------------
- .../broadcom/brcm80211/brcmfmac/tracepoint.h     | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/usb.c   | 13 +------------
- .../wireless/broadcom/brcm80211/brcmfmac/usb.h   | 13 +------------
- .../broadcom/brcm80211/brcmfmac/vendor.c         | 13 +------------
- .../broadcom/brcm80211/brcmfmac/vendor.h         | 13 +------------
- 54 files changed, 74 insertions(+), 658 deletions(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/Makefile
-+++ b/drivers/net/wireless/broadcom/brcm80211/Makefile
-@@ -1,19 +1,9 @@
-+# SPDX-License-Identifier: ISC
- #
--# Makefile fragment for Broadcom 802.11n Networking Device Driver
-+# Makefile fragment for Broadcom 802.11 Networking Device Driver
- #
- # Copyright (c) 2010 Broadcom Corporation
- #
--# Permission to use, copy, modify, and/or distribute this software for any
--# purpose with or without fee is hereby granted, provided that the above
--# copyright notice and this permission notice appear in all copies.
--#
--# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
--# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
--# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
--# SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
--# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
--# OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
--# CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
- 
- # common flags
- subdir-ccflags-$(CPTCFG_BRCMDBG)	+= -DDEBUG
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/Makefile
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/Makefile
-@@ -1,19 +1,9 @@
-+# SPDX-License-Identifier: ISC
- #
--# Makefile fragment for Broadcom 802.11n Networking Device Driver
-+# Makefile fragment for Broadcom 802.11 Networking Device Driver
- #
- # Copyright (c) 2010 Broadcom Corporation
- #
--# Permission to use, copy, modify, and/or distribute this software for any
--# purpose with or without fee is hereby granted, provided that the above
--# copyright notice and this permission notice appear in all copies.
--#
--# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
--# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
--# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
--# SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
--# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
--# OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
--# CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
- 
- ccflags-y += \
- 	-I $(src) \
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- /*******************************************************************************
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef BRCMFMAC_BCDC_H
- #define BRCMFMAC_BCDC_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- /* ****************** SDIO CARD Interface Functions **************************/
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/slab.h>
- #include <linux/netdevice.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef WL_BTCOEX_H_
- #define WL_BTCOEX_H_
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #ifndef BRCMFMAC_BUS_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- /* Toplevel file. Relies on dhd_linux.c to send commands to the dongle. */
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #ifndef BRCMFMAC_CFG80211_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/kernel.h>
- #include <linux/delay.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef BRCMF_CHIP_H
- #define BRCMF_CHIP_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/kernel.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.h
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- #ifndef BRCMFMAC_COMMON_H
- #define BRCMFMAC_COMMON_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.c
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- 
- #include <linux/types.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/commonring.h
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- #ifndef BRCMFMAC_COMMONRING_H
- #define BRCMFMAC_COMMONRING_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/kernel.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- /****************
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/debug.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/debug.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/debugfs.h>
- #include <linux/netdevice.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/debug.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/debug.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #ifndef BRCMFMAC_DEBUG_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/dmi.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/dmi.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright 2018 Hans de Goede <hdegoede@redhat.com>
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/dmi.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/netdevice.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef _BRCMF_FEATURE_H
- #define _BRCMF_FEATURE_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/efi.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef BRCMFMAC_FIRMWARE_H
- #define BRCMFMAC_FIRMWARE_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- 
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.h
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- #ifndef BRCMFMAC_FLOWRING_H
- #define BRCMFMAC_FLOWRING_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/netdevice.h>
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- /* FWIL is the Firmware Interface Layer. In this module the support functions
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #ifndef _fwil_h_
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil_types.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil_types.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/types.h>
- #include <linux/module.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.h
-@@ -1,20 +1,8 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
--
- #ifndef FWSIGNAL_H_
- #define FWSIGNAL_H_
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- 
- /*******************************************************************************
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.h
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- #ifndef BRCMFMAC_MSGBUF_H
- #define BRCMFMAC_MSGBUF_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/init.h>
- #include <linux/of.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifdef CONFIG_OF
- void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/slab.h>
- #include <linux/netdevice.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef WL_CFGP2P_H_
- #define WL_CFGP2P_H_
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- 
- #include <linux/kernel.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.h
-@@ -1,16 +1,6 @@
--/* Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-+// SPDX-License-Identifier: ISC
-+/*
-+ * Copyright (c) 2014 Broadcom Corporation
-  */
- #ifndef BRCMFMAC_PCIE_H
- #define BRCMFMAC_PCIE_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2016 Broadcom
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #include <linux/netdevice.h>
- #include <linux/gcd.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2016 Broadcom
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef _BRCMF_PNO_H
- #define _BRCMF_PNO_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- 
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/proto.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef BRCMFMAC_PROTO_H
- #define BRCMFMAC_PROTO_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/types.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2010 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #ifndef	BRCMFMAC_SDIO_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2012 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/device.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2013 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #if !defined(BRCMF_TRACEPOINT_H_) || defined(TRACE_HEADER_MULTI_READ)
- #define BRCMF_TRACEPOINT_H_
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2011 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/kernel.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2011 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- #ifndef BRCMFMAC_USB_H
- #define BRCMFMAC_USB_H
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #include <linux/vmalloc.h>
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.h
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.h
-@@ -1,17 +1,6 @@
-+// SPDX-License-Identifier: ISC
- /*
-  * Copyright (c) 2014 Broadcom Corporation
-- *
-- * Permission to use, copy, modify, and/or distribute this software for any
-- * purpose with or without fee is hereby granted, provided that the above
-- * copyright notice and this permission notice appear in all copies.
-- *
-- * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
-- * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
-- * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
-- * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
-- * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
-- * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
-- * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-  */
- 
- #ifndef _vendor_h_
diff --git a/package/kernel/mac80211/patches/brcm/101-v5.4-brcmfmac-fix-typos-in-code-comments.patch b/package/kernel/mac80211/patches/brcm/101-v5.4-brcmfmac-fix-typos-in-code-comments.patch
deleted file mode 100644
index da359063c6..0000000000
--- a/package/kernel/mac80211/patches/brcm/101-v5.4-brcmfmac-fix-typos-in-code-comments.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-From b07e1ae2ce53a60af67009ef199603a588003e07 Mon Sep 17 00:00:00 2001
-From: Weitao Hou <houweitaoo@gmail.com>
-Date: Mon, 20 May 2019 20:28:25 +0800
-Subject: [PATCH] brcmfmac: fix typos in code comments
-
-fix lengh to length
-
-Signed-off-by: Weitao Hou <houweitaoo@gmail.com>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c
-@@ -303,7 +303,7 @@ brcmf_create_bsscfg(s32 bsscfgidx, char
- 		return brcmf_create_iovar(name, data, datalen, buf, buflen);
- 
- 	prefixlen = strlen(prefix);
--	namelen = strlen(name) + 1; /* lengh of iovar  name + null */
-+	namelen = strlen(name) + 1; /* length of iovar  name + null */
- 	iolen = prefixlen + namelen + sizeof(bsscfgidx_le) + datalen;
- 
- 	if (buflen < iolen) {
diff --git a/package/kernel/mac80211/patches/brcm/102-v5.4-brcmfmac-use-strlcpy-instead-of-strcpy.patch b/package/kernel/mac80211/patches/brcm/102-v5.4-brcmfmac-use-strlcpy-instead-of-strcpy.patch
deleted file mode 100644
index d6ddd841cc..0000000000
--- a/package/kernel/mac80211/patches/brcm/102-v5.4-brcmfmac-use-strlcpy-instead-of-strcpy.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From bbfab331e3abd9fa8767eea6bf5c4684cdd4b934 Mon Sep 17 00:00:00 2001
-From: Neo Jou <neojou@gmail.com>
-Date: Tue, 21 May 2019 17:12:20 +0800
-Subject: [PATCH] brcmfmac: use strlcpy() instead of strcpy()
-
-The function strcpy() is inherently not safe. Though the function
-works without problems here, it would be better to use other safer
-function, e.g. strlcpy(), to replace strcpy() still.
-
-Signed-off-by: Neo Jou <neojou@gmail.com>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
-@@ -258,7 +258,7 @@ int brcmf_c_preinit_dcmds(struct brcmf_i
- 
- 	/* query for 'ver' to get version info from firmware */
- 	memset(buf, 0, sizeof(buf));
--	strcpy(buf, "ver");
-+	strlcpy(buf, "ver", sizeof(buf));
- 	err = brcmf_fil_iovar_data_get(ifp, "ver", buf, sizeof(buf));
- 	if (err < 0) {
- 		bphy_err(drvr, "Retrieving version information failed, %d\n",
diff --git a/package/kernel/mac80211/patches/brcm/810-b43-gpio-mask-module-option.patch b/package/kernel/mac80211/patches/brcm/810-b43-gpio-mask-module-option.patch
index a5706374f1..b3f30943ab 100644
--- a/package/kernel/mac80211/patches/brcm/810-b43-gpio-mask-module-option.patch
+++ b/package/kernel/mac80211/patches/brcm/810-b43-gpio-mask-module-option.patch
@@ -22,7 +22,7 @@
  static int modparam_bad_frames_preempt;
  module_param_named(bad_frames_preempt, modparam_bad_frames_preempt, int, 0444);
  MODULE_PARM_DESC(bad_frames_preempt,
-@@ -2872,10 +2877,10 @@ static int b43_gpio_init(struct b43_wlde
+@@ -2867,10 +2872,10 @@ static int b43_gpio_init(struct b43_wlde
  	u32 mask, set;
  
  	b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_GPOUTSMSK, 0);
diff --git a/package/kernel/mac80211/patches/brcm/812-b43-add-antenna-control.patch b/package/kernel/mac80211/patches/brcm/812-b43-add-antenna-control.patch
index 6e3554701b..cd7b7583c9 100644
--- a/package/kernel/mac80211/patches/brcm/812-b43-add-antenna-control.patch
+++ b/package/kernel/mac80211/patches/brcm/812-b43-add-antenna-control.patch
@@ -9,7 +9,7 @@
  	antenna = b43_antenna_to_phyctl(antenna);
  	ctl = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_BEACPHYCTL);
  	/* We can't send beacons with short preamble. Would get PHY errors. */
-@@ -3287,8 +3287,8 @@ static int b43_chip_init(struct b43_wlde
+@@ -3282,8 +3282,8 @@ static int b43_chip_init(struct b43_wlde
  
  	/* Select the antennae */
  	if (phy->ops->set_rx_antenna)
@@ -20,7 +20,7 @@
  
  	if (phy->type == B43_PHYTYPE_B) {
  		value16 = b43_read16(dev, 0x005E);
-@@ -3988,7 +3988,6 @@ static int b43_op_config(struct ieee8021
+@@ -3983,7 +3983,6 @@ static int b43_op_config(struct ieee8021
  	struct b43_wldev *dev = wl->current_dev;
  	struct b43_phy *phy = &dev->phy;
  	struct ieee80211_conf *conf = &hw->conf;
@@ -28,7 +28,7 @@
  	int err = 0;
  
  	mutex_lock(&wl->mutex);
-@@ -4031,11 +4030,9 @@ static int b43_op_config(struct ieee8021
+@@ -4026,11 +4025,9 @@ static int b43_op_config(struct ieee8021
  	}
  
  	/* Antennas for RX and management frame TX. */
@@ -42,7 +42,7 @@
  
  	if (wl->radio_enabled != phy->radio_on) {
  		if (wl->radio_enabled) {
-@@ -5179,6 +5176,47 @@ static int b43_op_get_survey(struct ieee
+@@ -5174,6 +5171,47 @@ static int b43_op_get_survey(struct ieee
  	return 0;
  }
  
@@ -90,7 +90,7 @@
  static const struct ieee80211_ops b43_hw_ops = {
  	.tx			= b43_op_tx,
  	.conf_tx		= b43_op_conf_tx,
-@@ -5200,6 +5238,8 @@ static const struct ieee80211_ops b43_hw
+@@ -5195,6 +5233,8 @@ static const struct ieee80211_ops b43_hw
  	.sw_scan_complete	= b43_op_sw_scan_complete_notifier,
  	.get_survey		= b43_op_get_survey,
  	.rfkill_poll		= b43_rfkill_poll,
@@ -99,7 +99,7 @@
  };
  
  /* Hard-reset the chip. Do not call this directly.
-@@ -5501,6 +5541,8 @@ static int b43_one_core_attach(struct b4
+@@ -5496,6 +5536,8 @@ static int b43_one_core_attach(struct b4
  	if (!wldev)
  		goto out;
  
@@ -108,7 +108,7 @@
  	wldev->use_pio = b43_modparam_pio;
  	wldev->dev = dev;
  	wldev->wl = wl;
-@@ -5595,6 +5637,9 @@ static struct b43_wl *b43_wireless_init(
+@@ -5590,6 +5632,9 @@ static struct b43_wl *b43_wireless_init(
  
  	wiphy_ext_feature_set(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
diff --git a/package/kernel/mac80211/patches/brcm/814-b43-only-use-gpio-0-1-for-led.patch b/package/kernel/mac80211/patches/brcm/814-b43-only-use-gpio-0-1-for-led.patch
index bd163be960..2aa7612878 100644
--- a/package/kernel/mac80211/patches/brcm/814-b43-only-use-gpio-0-1-for-led.patch
+++ b/package/kernel/mac80211/patches/brcm/814-b43-only-use-gpio-0-1-for-led.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/broadcom/b43/main.c
 +++ b/drivers/net/wireless/broadcom/b43/main.c
-@@ -2889,6 +2889,14 @@ static int b43_gpio_init(struct b43_wlde
+@@ -2884,6 +2884,14 @@ static int b43_gpio_init(struct b43_wlde
  	} else if (dev->dev->chip_id == 0x5354) {
  		/* Don't allow overtaking buttons GPIOs */
  		set &= 0x2; /* 0x2 is LED GPIO on BCM5354 */
diff --git a/package/kernel/mac80211/patches/build/002-change_allconfig.patch b/package/kernel/mac80211/patches/build/002-change_allconfig.patch
index a071ae6370..368725d0c3 100644
--- a/package/kernel/mac80211/patches/build/002-change_allconfig.patch
+++ b/package/kernel/mac80211/patches/build/002-change_allconfig.patch
@@ -1,6 +1,6 @@
 --- a/kconf/conf.c
 +++ b/kconf/conf.c
-@@ -594,40 +594,12 @@ int main(int ac, char **av)
+@@ -598,40 +598,12 @@ int main(int ac, char **av)
  	case oldconfig:
  	case listnewconfig:
  	case olddefconfig:
diff --git a/package/kernel/mac80211/patches/build/050-lib80211_option.patch b/package/kernel/mac80211/patches/build/050-lib80211_option.patch
index f6e1f9be07..721e59661d 100644
--- a/package/kernel/mac80211/patches/build/050-lib80211_option.patch
+++ b/package/kernel/mac80211/patches/build/050-lib80211_option.patch
@@ -9,13 +9,14 @@
  	depends on m
  	default n
  	help
-@@ -196,15 +196,15 @@ config LIB80211
+@@ -196,16 +196,16 @@ config LIB80211
  	  Drivers should select this themselves if needed.
  
  config LIB80211_CRYPT_WEP
 -	tristate
 +	tristate "lib80211 WEP support"
  	depends on m
+ 	select BPAUTO_CRYPTO_LIB_ARC4
  
  config LIB80211_CRYPT_CCMP
 -	tristate
@@ -26,5 +27,5 @@
 -	tristate
 +	tristate "lib80211 TKIP support"
  	depends on m
+ 	select BPAUTO_CRYPTO_LIB_ARC4
  
- config LIB80211_DEBUG
diff --git a/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch b/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
index 5ef01cc61e..dce99bbbdb 100644
--- a/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
+++ b/package/kernel/mac80211/patches/build/060-no_local_ssb_bcma.patch
@@ -1,6 +1,6 @@
 --- a/local-symbols
 +++ b/local-symbols
-@@ -410,43 +410,6 @@ USB_SIERRA_NET=
+@@ -412,43 +412,6 @@ USB_SIERRA_NET=
  USB_VL600=
  USB_NET_CH9200=
  USB_NET_AQC111=
@@ -90,7 +90,7 @@
  config B43_PHY_G
 --- a/drivers/net/wireless/broadcom/b43/main.c
 +++ b/drivers/net/wireless/broadcom/b43/main.c
-@@ -2856,7 +2856,7 @@ static struct ssb_device *b43_ssb_gpio_d
+@@ -2851,7 +2851,7 @@ static struct ssb_device *b43_ssb_gpio_d
  {
  	struct ssb_bus *bus = dev->dev->sdev->bus;
  
@@ -99,7 +99,7 @@
  	return (bus->chipco.dev ? bus->chipco.dev : bus->pcicore.dev);
  #else
  	return bus->chipco.dev;
-@@ -4873,7 +4873,7 @@ static int b43_wireless_core_init(struct
+@@ -4868,7 +4868,7 @@ static int b43_wireless_core_init(struct
  	}
  	if (sprom->boardflags_lo & B43_BFL_XTAL_NOSLOW)
  		hf |= B43_HF_DSCRQ; /* Disable slowclock requests from ucode. */
@@ -192,7 +192,7 @@
  	select BRCMUTIL
 --- a/Kconfig.local
 +++ b/Kconfig.local
-@@ -1234,117 +1234,6 @@ config BACKPORTED_USB_NET_CH9200
+@@ -1240,117 +1240,6 @@ config BACKPORTED_USB_NET_CH9200
  config BACKPORTED_USB_NET_AQC111
  	tristate
  	default USB_NET_AQC111
diff --git a/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch b/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch
index 417ef32b3d..0c6e5a03b0 100644
--- a/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch
+++ b/package/kernel/mac80211/patches/rt2x00/602-rt2x00-introduce-rt2x00eeprom.patch
@@ -1,6 +1,6 @@
 --- a/local-symbols
 +++ b/local-symbols
-@@ -311,6 +311,7 @@ RT2X00_LIB_FIRMWARE=
+@@ -313,6 +313,7 @@ RT2X00_LIB_FIRMWARE=
  RT2X00_LIB_CRYPTO=
  RT2X00_LIB_LEDS=
  RT2X00_LIB_DEBUGFS=
@@ -31,7 +31,7 @@
  	bool
  
 +config RT2X00_LIB_EEPROM
-+	boolean
++	bool
 +
  config RT2X00_LIB_LEDS
  	bool
@@ -57,7 +57,7 @@
  struct rt2800_ops {
  	u32 (*register_read)(struct rt2x00_dev *rt2x00dev,
  			      const unsigned int offset);
-@@ -134,6 +136,15 @@ static inline int rt2800_read_eeprom(str
+@@ -135,6 +137,15 @@ static inline int rt2800_read_eeprom(str
  {
  	const struct rt2800_ops *rt2800ops = rt2x00dev->ops->drv;
  
@@ -105,7 +105,7 @@
  	.drv_init_registers	= rt2800mmio_init_registers,
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -691,6 +691,7 @@ enum rt2x00_capability_flags {
+@@ -694,6 +694,7 @@ enum rt2x00_capability_flags {
  	REQUIRE_HT_TX_DESC,
  	REQUIRE_PS_AUTOWAKE,
  	REQUIRE_DELAYED_RFKILL,
@@ -113,7 +113,7 @@
  
  	/*
  	 * Capabilities
-@@ -966,6 +967,11 @@ struct rt2x00_dev {
+@@ -970,6 +971,11 @@ struct rt2x00_dev {
  	const struct firmware *fw;
  
  	/*
@@ -127,7 +127,7 @@
  	DECLARE_KFIFO_PTR(txstatus_fifo, u32);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
-@@ -1412,6 +1412,10 @@ int rt2x00lib_probe_dev(struct rt2x00_de
+@@ -1418,6 +1418,10 @@ int rt2x00lib_probe_dev(struct rt2x00_de
  	INIT_DELAYED_WORK(&rt2x00dev->autowakeup_work, rt2x00lib_autowakeup);
  	INIT_WORK(&rt2x00dev->sleep_work, rt2x00lib_sleep);
  
@@ -138,7 +138,7 @@
  	/*
  	 * Let the driver probe the device to detect the capabilities.
  	 */
-@@ -1555,6 +1559,11 @@ void rt2x00lib_remove_dev(struct rt2x00_
+@@ -1561,6 +1565,11 @@ void rt2x00lib_remove_dev(struct rt2x00_
  	 * Free the driver data.
  	 */
  	kfree(rt2x00dev->drv_data);
diff --git a/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch b/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch
index 3372e0b3ab..513b692a1d 100644
--- a/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch
+++ b/package/kernel/mac80211/patches/rt2x00/606-rt2x00-allow_disabling_bands_through_platform_data.patch
@@ -37,7 +37,7 @@
  		num_rates += 4;
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -398,6 +398,7 @@ struct hw_mode_spec {
+@@ -400,6 +400,7 @@ struct hw_mode_spec {
  	unsigned int supported_bands;
  #define SUPPORT_BAND_2GHZ	0x00000001
  #define SUPPORT_BAND_5GHZ	0x00000002
diff --git a/package/kernel/mac80211/patches/rt2x00/609-rt2x00-make-wmac-loadable-via-OF-on-rt288x-305x-SoC.patch b/package/kernel/mac80211/patches/rt2x00/609-rt2x00-make-wmac-loadable-via-OF-on-rt288x-305x-SoC.patch
index 4cb892b3df..35714c04d2 100644
--- a/package/kernel/mac80211/patches/rt2x00/609-rt2x00-make-wmac-loadable-via-OF-on-rt288x-305x-SoC.patch
+++ b/package/kernel/mac80211/patches/rt2x00/609-rt2x00-make-wmac-loadable-via-OF-on-rt288x-305x-SoC.patch
@@ -13,7 +13,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800soc.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800soc.c
-@@ -220,10 +220,17 @@ static int rt2800soc_probe(struct platfo
+@@ -223,10 +223,17 @@ static int rt2800soc_probe(struct platfo
  	return rt2x00soc_probe(pdev, &rt2800soc_ops);
  }
  
diff --git a/package/kernel/mac80211/patches/rt2x00/610-rt2x00-change-led-polarity-from-OF.patch b/package/kernel/mac80211/patches/rt2x00/610-rt2x00-change-led-polarity-from-OF.patch
index 5ea402f5da..ed2f6173b5 100644
--- a/package/kernel/mac80211/patches/rt2x00/610-rt2x00-change-led-polarity-from-OF.patch
+++ b/package/kernel/mac80211/patches/rt2x00/610-rt2x00-change-led-polarity-from-OF.patch
@@ -8,7 +8,7 @@
  
  #include "rt2x00.h"
  #include "rt2800lib.h"
-@@ -9447,6 +9448,17 @@ static int rt2800_init_eeprom(struct rt2
+@@ -9526,6 +9527,17 @@ static int rt2800_init_eeprom(struct rt2
  	rt2800_init_led(rt2x00dev, &rt2x00dev->led_assoc, LED_TYPE_ASSOC);
  	rt2800_init_led(rt2x00dev, &rt2x00dev->led_qual, LED_TYPE_QUALITY);
  
diff --git a/package/kernel/mac80211/patches/rt2x00/611-rt2x00-add-AP+STA-support.patch b/package/kernel/mac80211/patches/rt2x00/611-rt2x00-add-AP+STA-support.patch
index 453129d66a..d909a2e6c6 100644
--- a/package/kernel/mac80211/patches/rt2x00/611-rt2x00-add-AP+STA-support.patch
+++ b/package/kernel/mac80211/patches/rt2x00/611-rt2x00-add-AP+STA-support.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
-@@ -1350,7 +1350,7 @@ static inline void rt2x00lib_set_if_comb
+@@ -1356,7 +1356,7 @@ static inline void rt2x00lib_set_if_comb
  	 */
  	if_limit = &rt2x00dev->if_limits_ap;
  	if_limit->max = rt2x00dev->ops->max_ap_intf;
diff --git a/package/kernel/mac80211/patches/rt2x00/650-rt2x00-add-support-for-external-PA-on-MT7620.patch b/package/kernel/mac80211/patches/rt2x00/650-rt2x00-add-support-for-external-PA-on-MT7620.patch
index 98eb8c0b7e..3f03a68f59 100644
--- a/package/kernel/mac80211/patches/rt2x00/650-rt2x00-add-support-for-external-PA-on-MT7620.patch
+++ b/package/kernel/mac80211/patches/rt2x00/650-rt2x00-add-support-for-external-PA-on-MT7620.patch
@@ -30,7 +30,7 @@ Signed-off-by: Tomislav Po=C5=BEega <pozega.tomislav@gmail.com>
   * EEPROM LNA
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -4279,6 +4279,45 @@ static void rt2800_config_channel(struct
+@@ -4360,6 +4360,45 @@ static void rt2800_config_channel(struct
  		rt2800_iq_calibrate(rt2x00dev, rf->channel);
  	}
  
@@ -76,7 +76,7 @@ Signed-off-by: Tomislav Po=C5=BEega <pozega.tomislav@gmail.com>
  	bbp = rt2800_bbp_read(rt2x00dev, 4);
  	rt2x00_set_field8(&bbp, BBP4_BANDWIDTH, 2 * conf_is_ht40(conf));
  	rt2800_bbp_write(rt2x00dev, 4, bbp);
-@@ -9476,7 +9515,8 @@ static int rt2800_init_eeprom(struct rt2
+@@ -9555,7 +9594,8 @@ static int rt2800_init_eeprom(struct rt2
  	 */
  	eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1);
  
@@ -86,7 +86,7 @@ Signed-off-by: Tomislav Po=C5=BEega <pozega.tomislav@gmail.com>
  		if (rt2x00_get_field16(eeprom,
  		    EEPROM_NIC_CONF1_EXTERNAL_TX0_PA_3352))
  		    __set_bit(CAPABILITY_EXTERNAL_PA_TX0,
-@@ -9487,6 +9527,18 @@ static int rt2800_init_eeprom(struct rt2
+@@ -9566,6 +9606,18 @@ static int rt2800_init_eeprom(struct rt2
  			      &rt2x00dev->cap_flags);
  	}
  
diff --git a/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch b/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
index ceec92d928..73413217b7 100644
--- a/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/982-rt2x00-add-rf-self-txdc-calibration.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8338,6 +8338,58 @@ static void rt2800_init_rfcsr_5592(struc
+@@ -8417,6 +8417,58 @@ static void rt2800_init_rfcsr_5592(struc
  	rt2800_led_open_drain_enable(rt2x00dev);
  }
  
@@ -59,7 +59,7 @@
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -8945,6 +8997,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9024,6 +9076,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rfcsr_write_dccal(rt2x00dev, 5, 0x00);
  	rt2800_rfcsr_write_dccal(rt2x00dev, 17, 0x7C);
  
@@ -69,7 +69,7 @@
  }
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -232,6 +232,7 @@ void rt2800_link_tuner(struct rt2x00_dev
+@@ -242,6 +242,7 @@ void rt2800_link_tuner(struct rt2x00_dev
  		       const u32 count);
  void rt2800_gain_calibration(struct rt2x00_dev *rt2x00dev);
  void rt2800_vco_calibration(struct rt2x00_dev *rt2x00dev);
@@ -79,7 +79,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -561,6 +561,7 @@ struct rt2x00lib_ops {
+@@ -563,6 +563,7 @@ struct rt2x00lib_ops {
  			    struct link_qual *qual, const u32 count);
  	void (*gain_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*vco_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch b/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
index 45edee8644..23dde9b07c 100644
--- a/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/983-rt2x00-add-r-calibration.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8390,6 +8390,160 @@ void rt2800_rf_self_txdc_cal(struct rt2x
+@@ -8469,6 +8469,160 @@ void rt2800_rf_self_txdc_cal(struct rt2x
  }
  EXPORT_SYMBOL_GPL(rt2800_rf_self_txdc_cal);
  
@@ -161,7 +161,7 @@
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -8997,6 +9151,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9076,6 +9230,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rfcsr_write_dccal(rt2x00dev, 5, 0x00);
  	rt2800_rfcsr_write_dccal(rt2x00dev, 17, 0x7C);
  
@@ -171,7 +171,7 @@
  	rt2800_bw_filter_calibration(rt2x00dev, false);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -233,6 +233,8 @@ void rt2800_link_tuner(struct rt2x00_dev
+@@ -243,6 +243,8 @@ void rt2800_link_tuner(struct rt2x00_dev
  void rt2800_gain_calibration(struct rt2x00_dev *rt2x00dev);
  void rt2800_vco_calibration(struct rt2x00_dev *rt2x00dev);
  void rt2800_rf_self_txdc_cal(struct rt2x00_dev *rt2x00dev);
@@ -182,7 +182,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -562,6 +562,8 @@ struct rt2x00lib_ops {
+@@ -564,6 +564,8 @@ struct rt2x00lib_ops {
  	void (*gain_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*vco_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rf_self_txdc_cal) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch b/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
index c6b996782c..3a638f82e3 100644
--- a/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/984-rt2x00-add-rxdcoc-calibration.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8544,6 +8544,71 @@ void rt2800_r_calibration(struct rt2x00_
+@@ -8623,6 +8623,71 @@ void rt2800_r_calibration(struct rt2x00_
  }
  EXPORT_SYMBOL_GPL(rt2800_r_calibration);
  
@@ -72,7 +72,7 @@
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9153,6 +9218,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9232,6 +9297,7 @@ static void rt2800_init_rfcsr_6352(struc
  
  	rt2800_r_calibration(rt2x00dev);
  	rt2800_rf_self_txdc_cal(rt2x00dev);
@@ -82,7 +82,7 @@
  }
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -235,6 +235,7 @@ void rt2800_vco_calibration(struct rt2x0
+@@ -245,6 +245,7 @@ void rt2800_vco_calibration(struct rt2x0
  void rt2800_rf_self_txdc_cal(struct rt2x00_dev *rt2x00dev);
  int rt2800_calcrcalibrationcode(struct rt2x00_dev *rt2x00dev, int d1, int d2);
  void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev);
@@ -92,7 +92,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -564,6 +564,7 @@ struct rt2x00lib_ops {
+@@ -566,6 +566,7 @@ struct rt2x00lib_ops {
  	void (*rf_self_txdc_cal) (struct rt2x00_dev *rt2x00dev);
  	int (*calcrcalibrationcode) (struct rt2x00_dev *rt2x00dev, int d1, int d2);
  	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
index 9881469d99..5bd53b7a21 100644
--- a/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/985-rt2x00-add-rxiq-calibration.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8609,6 +8609,386 @@ void rt2800_rxdcoc_calibration(struct rt
+@@ -8688,6 +8688,386 @@ void rt2800_rxdcoc_calibration(struct rt
  }
  EXPORT_SYMBOL_GPL(rt2800_rxdcoc_calibration);
  
@@ -387,7 +387,7 @@
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9221,6 +9601,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9300,6 +9680,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rxdcoc_calibration(rt2x00dev);
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
@@ -397,7 +397,7 @@
  static void rt2800_init_rfcsr(struct rt2x00_dev *rt2x00dev)
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.h
-@@ -236,6 +236,7 @@ void rt2800_rf_self_txdc_cal(struct rt2x
+@@ -246,6 +246,7 @@ void rt2800_rf_self_txdc_cal(struct rt2x
  int rt2800_calcrcalibrationcode(struct rt2x00_dev *rt2x00dev, int d1, int d2);
  void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev);
  void rt2800_rxdcoc_calibration(struct rt2x00_dev *rt2x00dev);
@@ -407,7 +407,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -565,6 +565,7 @@ struct rt2x00lib_ops {
+@@ -567,6 +567,7 @@ struct rt2x00lib_ops {
  	int (*calcrcalibrationcode) (struct rt2x00_dev *rt2x00dev, int d1, int d2);
  	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rxdcoc_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
index d3118ebb3b..464db9c921 100644
--- a/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
+++ b/package/kernel/mac80211/patches/rt2x00/986-rt2x00-add-TX-LOFT-calibration.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -8989,6 +8989,954 @@ restore_value:
+@@ -9068,6 +9068,954 @@ restore_value:
  }
  EXPORT_SYMBOL_GPL(rt2800_rxiq_calibration);
  
@@ -955,7 +955,7 @@
  static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
  				       bool set_bw, bool is_ht40)
  {
-@@ -9601,6 +10549,7 @@ static void rt2800_init_rfcsr_6352(struc
+@@ -9680,6 +10628,7 @@ static void rt2800_init_rfcsr_6352(struc
  	rt2800_rxdcoc_calibration(rt2x00dev);
  	rt2800_bw_filter_calibration(rt2x00dev, true);
  	rt2800_bw_filter_calibration(rt2x00dev, false);
@@ -982,7 +982,7 @@
  
  /* RT2800 driver data structure */
  struct rt2800_drv_data {
-@@ -237,6 +247,7 @@ int rt2800_calcrcalibrationcode(struct r
+@@ -247,6 +257,7 @@ int rt2800_calcrcalibrationcode(struct r
  void rt2800_r_calibration(struct rt2x00_dev *rt2x00dev);
  void rt2800_rxdcoc_calibration(struct rt2x00_dev *rt2x00dev);
  void rt2800_rxiq_calibration(struct rt2x00_dev *rt2x00dev);
@@ -992,7 +992,7 @@
  void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev);
 --- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
 +++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -566,6 +566,7 @@ struct rt2x00lib_ops {
+@@ -568,6 +568,7 @@ struct rt2x00lib_ops {
  	void (*r_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rxdcoc_calibration) (struct rt2x00_dev *rt2x00dev);
  	void (*rxiq_calibration) (struct rt2x00_dev *rt2x00dev);
diff --git a/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencies.patch b/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencies.patch
index 1a13fdc56f..f5ec895f0b 100644
--- a/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencies.patch
+++ b/package/kernel/mac80211/patches/subsys/100-remove-cryptoapi-dependencies.patch
@@ -648,7 +648,7 @@
 +++ b/net/mac80211/Kconfig
 @@ -6,8 +6,6 @@ config MAC80211
  	depends on CRYPTO
- 	depends on CRYPTO_ARC4
+ 	select BPAUTO_CRYPTO_LIB_ARC4
  	depends on CRYPTO_AES
 -	depends on CRYPTO_CCM
 -	depends on CRYPTO_GCM
@@ -687,7 +687,7 @@
  #endif /* AES_GMAC_H */
 --- a/net/mac80211/key.h
 +++ b/net/mac80211/key.h
-@@ -86,7 +86,7 @@ struct ieee80211_key {
+@@ -87,7 +87,7 @@ struct ieee80211_key {
  			 * Management frames.
  			 */
  			u8 rx_pn[IEEE80211_NUM_TIDS + 1][IEEE80211_CCMP_PN_LEN];
diff --git a/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_ap.patch b/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_ap.patch
index 59144f7310..dcc0ac4dfb 100644
--- a/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_ap.patch
+++ b/package/kernel/mac80211/patches/subsys/110-mac80211_keep_keys_on_stop_ap.patch
@@ -2,7 +2,7 @@ Used for AP+STA support in OpenWrt - preserve AP mode keys across STA reconnects
 
 --- a/net/mac80211/cfg.c
 +++ b/net/mac80211/cfg.c
-@@ -1162,7 +1162,6 @@ static int ieee80211_stop_ap(struct wiph
+@@ -1169,7 +1169,6 @@ static int ieee80211_stop_ap(struct wiph
  	sdata->vif.bss_conf.ftmr_params = NULL;
  
  	__sta_info_flush(sdata, true);
diff --git a/package/kernel/mac80211/patches/subsys/130-disable-fils.patch b/package/kernel/mac80211/patches/subsys/130-disable-fils.patch
index dd1ccc8597..f370dd52ee 100644
--- a/package/kernel/mac80211/patches/subsys/130-disable-fils.patch
+++ b/package/kernel/mac80211/patches/subsys/130-disable-fils.patch
@@ -21,7 +21,7 @@ Disable FILS support, since it pulls in crypto hash support
   * FILS AEAD for (Re)Association Request/Response frames
 --- a/net/mac80211/main.c
 +++ b/net/mac80211/main.c
-@@ -570,7 +570,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
+@@ -571,7 +571,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
  			   NL80211_FEATURE_MAC_ON_CREATE |
  			   NL80211_FEATURE_USERSPACE_MPM |
  			   NL80211_FEATURE_FULL_AP_CLIENT_STATE;
diff --git a/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-switch-to-shash-CMAC-driver.patch b/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-switch-to-shash-CMAC-driver.patch
index 0c5f85236e..9830602ab0 100644
--- a/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-switch-to-shash-CMAC-driver.patch
+++ b/package/kernel/mac80211/patches/subsys/131-Revert-mac80211-aes-cmac-switch-to-shash-CMAC-driver.patch
@@ -188,7 +188,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  #endif /* AES_CMAC_H */
 --- a/net/mac80211/key.h
 +++ b/net/mac80211/key.h
-@@ -91,7 +91,7 @@ struct ieee80211_key {
+@@ -92,7 +92,7 @@ struct ieee80211_key {
  		} ccmp;
  		struct {
  			u8 rx_pn[IEEE80211_CMAC_PN_LEN];
diff --git a/package/kernel/mac80211/patches/subsys/132-mac80211-remove-cmac-dependency.patch b/package/kernel/mac80211/patches/subsys/132-mac80211-remove-cmac-dependency.patch
index a259d5816b..2a9c09b4ad 100644
--- a/package/kernel/mac80211/patches/subsys/132-mac80211-remove-cmac-dependency.patch
+++ b/package/kernel/mac80211/patches/subsys/132-mac80211-remove-cmac-dependency.patch
@@ -2,7 +2,7 @@
 +++ b/net/mac80211/Kconfig
 @@ -6,7 +6,6 @@ config MAC80211
  	depends on CRYPTO
- 	depends on CRYPTO_ARC4
+ 	select BPAUTO_CRYPTO_LIB_ARC4
  	depends on CRYPTO_AES
 -	depends on CRYPTO_CMAC
  	depends on CRC32
diff --git a/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch b/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
index 39000e4f05..14ef714f68 100644
--- a/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
+++ b/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
@@ -1,6 +1,6 @@
 --- a/net/mac80211/main.c
 +++ b/net/mac80211/main.c
-@@ -313,7 +313,7 @@ void ieee80211_restart_hw(struct ieee802
+@@ -314,7 +314,7 @@ void ieee80211_restart_hw(struct ieee802
  }
  EXPORT_SYMBOL(ieee80211_restart_hw);
  
@@ -9,7 +9,7 @@
  static int ieee80211_ifa_changed(struct notifier_block *nb,
  				 unsigned long data, void *arg)
  {
-@@ -372,7 +372,7 @@ static int ieee80211_ifa_changed(struct
+@@ -373,7 +373,7 @@ static int ieee80211_ifa_changed(struct
  }
  #endif
  
@@ -52,7 +52,7 @@
   fail_ifa:
  #endif
  	rtnl_lock();
-@@ -1320,10 +1320,10 @@ void ieee80211_unregister_hw(struct ieee
+@@ -1319,10 +1319,10 @@ void ieee80211_unregister_hw(struct ieee
  	tasklet_kill(&local->tx_pending_tasklet);
  	tasklet_kill(&local->tasklet);
  
diff --git a/package/kernel/mac80211/patches/subsys/210-ap_scan.patch b/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
index 7e237a443e..634c531b00 100644
--- a/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
+++ b/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
@@ -1,6 +1,6 @@
 --- a/net/mac80211/cfg.c
 +++ b/net/mac80211/cfg.c
-@@ -2312,7 +2312,7 @@ static int ieee80211_scan(struct wiphy *
+@@ -2319,7 +2319,7 @@ static int ieee80211_scan(struct wiphy *
  		 * the  frames sent while scanning on other channel will be
  		 * lost)
  		 */
diff --git a/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch b/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch
index e88163eb5d..86d296f52a 100644
--- a/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch
+++ b/package/kernel/mac80211/patches/subsys/350-mac80211-add-hdrlen-to-ieee80211_tx_data.patch
@@ -97,7 +97,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 --- a/net/mac80211/wep.c
 +++ b/net/mac80211/wep.c
-@@ -86,11 +86,11 @@ static void ieee80211_wep_get_iv(struct
+@@ -65,11 +65,11 @@ static void ieee80211_wep_get_iv(struct
  
  static u8 *ieee80211_wep_add_iv(struct ieee80211_local *local,
  				struct sk_buff *skb,
@@ -110,7 +110,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	u8 *newhdr;
  
  	hdr->frame_control |= cpu_to_le16(IEEE80211_FCTL_PROTECTED);
-@@ -98,7 +98,6 @@ static u8 *ieee80211_wep_add_iv(struct i
+@@ -77,7 +77,6 @@ static u8 *ieee80211_wep_add_iv(struct i
  	if (WARN_ON(skb_headroom(skb) < IEEE80211_WEP_IV_LEN))
  		return NULL;
  
@@ -118,7 +118,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	newhdr = skb_push(skb, IEEE80211_WEP_IV_LEN);
  	memmove(newhdr, newhdr + IEEE80211_WEP_IV_LEN, hdrlen);
  
-@@ -157,6 +156,7 @@ int ieee80211_wep_encrypt_data(struct cr
+@@ -132,6 +131,7 @@ int ieee80211_wep_encrypt_data(struct ar
   */
  int ieee80211_wep_encrypt(struct ieee80211_local *local,
  			  struct sk_buff *skb,
@@ -126,7 +126,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  			  const u8 *key, int keylen, int keyidx)
  {
  	u8 *iv;
-@@ -166,7 +166,7 @@ int ieee80211_wep_encrypt(struct ieee802
+@@ -141,7 +141,7 @@ int ieee80211_wep_encrypt(struct ieee802
  	if (WARN_ON(skb_tailroom(skb) < IEEE80211_WEP_ICV_LEN))
  		return -1;
  
@@ -135,7 +135,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	if (!iv)
  		return -1;
  
-@@ -304,13 +304,14 @@ static int wep_encrypt_skb(struct ieee80
+@@ -275,13 +275,14 @@ static int wep_encrypt_skb(struct ieee80
  	struct ieee80211_key_conf *hw_key = info->control.hw_key;
  
  	if (!hw_key) {
@@ -154,13 +154,13 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  			return -1;
 --- a/net/mac80211/wep.h
 +++ b/net/mac80211/wep.h
-@@ -19,6 +19,7 @@ int ieee80211_wep_encrypt_data(struct cr
+@@ -18,6 +18,7 @@ int ieee80211_wep_encrypt_data(struct ar
  				size_t klen, u8 *data, size_t data_len);
  int ieee80211_wep_encrypt(struct ieee80211_local *local,
  			  struct sk_buff *skb,
 +			  unsigned int hdrlen,
  			  const u8 *key, int keylen, int keyidx);
- int ieee80211_wep_decrypt_data(struct crypto_cipher *tfm, u8 *rc4key,
+ int ieee80211_wep_decrypt_data(struct arc4_ctx *ctx, u8 *rc4key,
  			       size_t klen, u8 *data, size_t data_len);
 --- a/net/mac80211/wpa.c
 +++ b/net/mac80211/wpa.c
diff --git a/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch b/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch
index fe113958d9..7f0122e536 100644
--- a/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch
+++ b/package/kernel/mac80211/patches/subsys/351-mac80211-add-TX_NEEDS_ALIGNED4_SKBS-hw-flag.patch
@@ -20,9 +20,9 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/include/net/mac80211.h
 +++ b/include/net/mac80211.h
-@@ -2266,6 +2266,9 @@ struct ieee80211_txq {
-  * @IEEE80211_HW_EXT_KEY_ID_NATIVE: Driver and hardware are supporting Extended
-  *	Key ID and can handle two unicast keys per station for Rx and Tx.
+@@ -2274,6 +2274,9 @@ struct ieee80211_txq {
+  * @IEEE80211_HW_NO_AMPDU_KEYBORDER_SUPPORT: The card/driver can't handle
+  *	active Tx A-MPDU sessions with Extended Key IDs during rekey.
   *
 + * @IEEE80211_HW_TX_NEEDS_ALIGNED4_SKBS: Driver need aligned skbs to four-byte.
 + *	Padding will be added after ieee80211_hdr, before IV/LLC.
@@ -30,15 +30,15 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
   * @NUM_IEEE80211_HW_FLAGS: number of hardware flags, used for sizing arrays
   */
  enum ieee80211_hw_flags {
-@@ -2318,6 +2321,7 @@ enum ieee80211_hw_flags {
- 	IEEE80211_HW_SUPPORTS_MULTI_BSSID,
+@@ -2327,6 +2330,7 @@ enum ieee80211_hw_flags {
  	IEEE80211_HW_SUPPORTS_ONLY_HE_MULTI_BSSID,
  	IEEE80211_HW_EXT_KEY_ID_NATIVE,
+ 	IEEE80211_HW_NO_AMPDU_KEYBORDER_SUPPORT,
 +	IEEE80211_HW_TX_NEEDS_ALIGNED4_SKBS,
  
  	/* keep last, obviously */
  	NUM_IEEE80211_HW_FLAGS
-@@ -2611,6 +2615,40 @@ ieee80211_get_alt_retry_rate(const struc
+@@ -2620,6 +2624,40 @@ ieee80211_get_alt_retry_rate(const struc
  void ieee80211_free_txskb(struct ieee80211_hw *hw, struct sk_buff *skb);
  
  /**
@@ -294,10 +294,10 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  		rcu_read_unlock();
 --- a/net/mac80211/debugfs.c
 +++ b/net/mac80211/debugfs.c
-@@ -272,6 +272,7 @@ static const char *hw_flag_names[] = {
- 	FLAG(SUPPORTS_MULTI_BSSID),
+@@ -273,6 +273,7 @@ static const char *hw_flag_names[] = {
  	FLAG(SUPPORTS_ONLY_HE_MULTI_BSSID),
  	FLAG(EXT_KEY_ID_NATIVE),
+ 	FLAG(NO_AMPDU_KEYBORDER_SUPPORT),
 +	FLAG(TX_NEEDS_ALIGNED4_SKBS),
  #undef FLAG
  };
diff --git a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
index 7960039fd7..580e043f22 100644
--- a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
+++ b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
@@ -1,6 +1,6 @@
 --- a/include/net/cfg80211.h
 +++ b/include/net/cfg80211.h
-@@ -3322,6 +3322,7 @@ struct cfg80211_update_owe_info {
+@@ -3344,6 +3344,7 @@ struct cfg80211_update_owe_info {
   *	(as advertised by the nl80211 feature flag.)
   * @get_tx_power: store the current TX power into the dbm variable;
   *	return 0 if successful
@@ -8,7 +8,7 @@
   *
   * @set_wds_peer: set the WDS peer for a WDS interface
   *
-@@ -3634,6 +3635,7 @@ struct cfg80211_ops {
+@@ -3656,6 +3657,7 @@ struct cfg80211_ops {
  				enum nl80211_tx_power_setting type, int mbm);
  	int	(*get_tx_power)(struct wiphy *wiphy, struct wireless_dev *wdev,
  				int *dbm);
@@ -18,7 +18,7 @@
  				const u8 *addr);
 --- a/include/net/mac80211.h
 +++ b/include/net/mac80211.h
-@@ -1471,6 +1471,7 @@ enum ieee80211_smps_mode {
+@@ -1476,6 +1476,7 @@ enum ieee80211_smps_mode {
   *
   * @power_level: requested transmit power (in dBm), backward compatibility
   *	value only that is set to the minimum of all interfaces
@@ -26,7 +26,7 @@
   *
   * @chandef: the channel definition to tune to
   * @radar_enabled: whether radar detection is enabled
-@@ -1491,6 +1492,7 @@ enum ieee80211_smps_mode {
+@@ -1496,6 +1497,7 @@ enum ieee80211_smps_mode {
  struct ieee80211_conf {
  	u32 flags;
  	int power_level, dynamic_ps_timeout;
@@ -36,9 +36,9 @@
  	u8 ps_dtim_period;
 --- a/include/uapi/linux/nl80211.h
 +++ b/include/uapi/linux/nl80211.h
-@@ -2341,6 +2341,9 @@ enum nl80211_commands {
-  *	should be picking up the lowest tx power, either tx power per-interface
-  *	or per-station.
+@@ -2356,6 +2356,9 @@ enum nl80211_commands {
+  *
+  * @NL80211_ATTR_TWT_RESPONDER: Enable target wait time responder support.
   *
 + * @NL80211_ATTR_WIPHY_ANTENNA_GAIN: Configured antenna gain. Used to reduce
 + *	transmit power to stay within regulatory limits. u32, dBi.
@@ -46,9 +46,9 @@
   * @NUM_NL80211_ATTR: total number of nl80211_attrs available
   * @NL80211_ATTR_MAX: highest attribute number currently defined
   * @__NL80211_ATTR_AFTER_LAST: internal use
-@@ -2794,6 +2797,8 @@ enum nl80211_attrs {
- 	NL80211_ATTR_STA_TX_POWER_SETTING,
- 	NL80211_ATTR_STA_TX_POWER,
+@@ -2813,6 +2816,8 @@ enum nl80211_attrs {
+ 
+ 	NL80211_ATTR_TWT_RESPONDER,
  
 +	NL80211_ATTR_WIPHY_ANTENNA_GAIN,
 +
@@ -57,7 +57,7 @@
  	__NL80211_ATTR_AFTER_LAST,
 --- a/net/mac80211/cfg.c
 +++ b/net/mac80211/cfg.c
-@@ -2577,6 +2577,19 @@ static int ieee80211_get_tx_power(struct
+@@ -2584,6 +2584,19 @@ static int ieee80211_get_tx_power(struct
  	return 0;
  }
  
@@ -77,7 +77,7 @@
  static int ieee80211_set_wds_peer(struct wiphy *wiphy, struct net_device *dev,
  				  const u8 *addr)
  {
-@@ -3990,6 +4003,7 @@ const struct cfg80211_ops mac80211_confi
+@@ -3997,6 +4010,7 @@ const struct cfg80211_ops mac80211_confi
  	.set_wiphy_params = ieee80211_set_wiphy_params,
  	.set_tx_power = ieee80211_set_tx_power,
  	.get_tx_power = ieee80211_get_tx_power,
@@ -97,7 +97,7 @@
  
 --- a/net/mac80211/main.c
 +++ b/net/mac80211/main.c
-@@ -92,7 +92,7 @@ static u32 ieee80211_hw_conf_chan(struct
+@@ -93,7 +93,7 @@ static u32 ieee80211_hw_conf_chan(struct
  	struct ieee80211_sub_if_data *sdata;
  	struct cfg80211_chan_def chandef = {};
  	u32 changed = 0;
@@ -106,7 +106,7 @@
  	u32 offchannel_flag;
  
  	offchannel_flag = local->hw.conf.flags & IEEE80211_CONF_OFFCHANNEL;
-@@ -149,6 +149,12 @@ static u32 ieee80211_hw_conf_chan(struct
+@@ -150,6 +150,12 @@ static u32 ieee80211_hw_conf_chan(struct
  	}
  	rcu_read_unlock();
  
@@ -119,7 +119,7 @@
  	if (local->hw.conf.power_level != power) {
  		changed |= IEEE80211_CONF_CHANGE_POWER;
  		local->hw.conf.power_level = power;
-@@ -638,6 +644,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
+@@ -639,6 +645,7 @@ struct ieee80211_hw *ieee80211_alloc_hw_
  					 IEEE80211_RADIOTAP_MCS_HAVE_BW;
  	local->hw.radiotap_vht_details = IEEE80211_RADIOTAP_VHT_KNOWN_GI |
  					 IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH;
@@ -129,15 +129,15 @@
  	local->user_power_level = IEEE80211_UNSET_POWER_LEVEL;
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -571,6 +571,7 @@ const struct nla_policy nl80211_policy[N
- 	[NL80211_ATTR_PEER_MEASUREMENTS] =
- 		NLA_POLICY_NESTED(nl80211_pmsr_attr_policy),
- 	[NL80211_ATTR_AIRTIME_WEIGHT] = NLA_POLICY_MIN(NLA_U16, 1),
+@@ -574,6 +574,7 @@ const struct nla_policy nl80211_policy[N
+ 	[NL80211_ATTR_SAE_PASSWORD] = { .type = NLA_BINARY,
+ 					.len = SAE_PASSWORD_MAX_LEN },
+ 	[NL80211_ATTR_TWT_RESPONDER] = { .type = NLA_FLAG },
 +	[NL80211_ATTR_WIPHY_ANTENNA_GAIN] = { .type = NLA_U32 },
  };
  
  /* policy for the key attributes */
-@@ -2866,6 +2867,20 @@ static int nl80211_set_wiphy(struct sk_b
+@@ -2869,6 +2870,20 @@ static int nl80211_set_wiphy(struct sk_b
  		if (result)
  			return result;
  	}
diff --git a/package/network/utils/iw/patches/001-nl80211_h_sync.patch b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
index 5c0993a7b7..884261621e 100644
--- a/package/network/utils/iw/patches/001-nl80211_h_sync.patch
+++ b/package/network/utils/iw/patches/001-nl80211_h_sync.patch
@@ -1,5 +1,3 @@
-diff --git a/nl80211.h b/nl80211.h
-index 31ae5c7..9fb7370 100644
 --- a/nl80211.h
 +++ b/nl80211.h
 @@ -11,7 +11,7 @@
@@ -11,7 +9,23 @@ index 31ae5c7..9fb7370 100644
   *
   * Permission to use, copy, modify, and/or distribute this software for any
   * purpose with or without fee is hereby granted, provided that the above
-@@ -1065,6 +1065,26 @@
+@@ -235,6 +235,15 @@
+  */
+ 
+ /**
++ * DOC: SAE authentication offload
++ *
++ * By setting @NL80211_EXT_FEATURE_SAE_OFFLOAD flag drivers can indicate they
++ * support offloading SAE authentication for WPA3-Personal networks. In
++ * %NL80211_CMD_CONNECT the password for SAE should be specified using
++ * %NL80211_ATTR_SAE_PASSWORD.
++ */
++
++/**
+  * enum nl80211_commands - supported nl80211 commands
+  *
+  * @NL80211_CMD_UNSPEC: unspecified command to catch errors
+@@ -1065,6 +1074,26 @@
   *	indicated by %NL80211_ATTR_WIPHY_FREQ and other attributes
   *	determining the width and type.
   *
@@ -38,7 +52,7 @@ index 31ae5c7..9fb7370 100644
   * @NL80211_CMD_MAX: highest used command number
   * @__NL80211_CMD_AFTER_LAST: internal use
   */
-@@ -1285,6 +1305,10 @@ enum nl80211_commands {
+@@ -1285,6 +1314,10 @@ enum nl80211_commands {
  
  	NL80211_CMD_NOTIFY_RADAR,
  
@@ -49,7 +63,7 @@ index 31ae5c7..9fb7370 100644
  	/* add new commands above here */
  
  	/* used to define NL80211_CMD_MAX below */
-@@ -1565,6 +1589,12 @@ enum nl80211_commands {
+@@ -1565,6 +1598,12 @@ enum nl80211_commands {
   *	(a u32 with flags from &enum nl80211_wpa_versions).
   * @NL80211_ATTR_AKM_SUITES: Used with CONNECT, ASSOCIATE, and NEW_BEACON to
   *	indicate which key management algorithm(s) to use (an array of u32).
@@ -62,7 +76,7 @@ index 31ae5c7..9fb7370 100644
   *
   * @NL80211_ATTR_REQ_IE: (Re)association request information elements as
   *	sent out by the card, for ROAM and successful CONNECT events.
-@@ -2260,10 +2290,10 @@ enum nl80211_commands {
+@@ -2260,10 +2299,10 @@ enum nl80211_commands {
   *     &enum nl80211_external_auth_action value). This is used with the
   *     %NL80211_CMD_EXTERNAL_AUTH request event.
   * @NL80211_ATTR_EXTERNAL_AUTH_SUPPORT: Flag attribute indicating that the user
@@ -77,7 +91,7 @@ index 31ae5c7..9fb7370 100644
   *
   * @NL80211_ATTR_NSS: Station's New/updated  RX_NSS value notified using this
   *	u8 attribute. This is used with %NL80211_CMD_STA_OPMODE_CHANGED.
-@@ -2299,6 +2329,21 @@ enum nl80211_commands {
+@@ -2299,6 +2338,27 @@ enum nl80211_commands {
   *	This is also used for capability advertisement in the wiphy information,
   *	with the appropriate sub-attributes.
   *
@@ -93,13 +107,19 @@ index 31ae5c7..9fb7370 100644
 + *	should be picking up the lowest tx power, either tx power per-interface
 + *	or per-station.
 + *
++ * @NL80211_ATTR_SAE_PASSWORD: attribute for passing SAE password material. It
++ *	is used with %NL80211_CMD_CONNECT to provide password for offloading
++ *	SAE authentication for WPA3-Personal networks.
++ *
++ * @NL80211_ATTR_TWT_RESPONDER: Enable target wait time responder support.
++ *
 + * @NL80211_ATTR_WIPHY_ANTENNA_GAIN: Configured antenna gain. Used to reduce
 + *	transmit power to stay within regulatory limits. u32, dBi.
 + *
   * @NUM_NL80211_ATTR: total number of nl80211_attrs available
   * @NL80211_ATTR_MAX: highest attribute number currently defined
   * @__NL80211_ATTR_AFTER_LAST: internal use
-@@ -2748,6 +2793,12 @@ enum nl80211_attrs {
+@@ -2748,6 +2808,16 @@ enum nl80211_attrs {
  
  	NL80211_ATTR_PEER_MEASUREMENTS,
  
@@ -107,12 +127,16 @@ index 31ae5c7..9fb7370 100644
 +	NL80211_ATTR_STA_TX_POWER_SETTING,
 +	NL80211_ATTR_STA_TX_POWER,
 +
++	NL80211_ATTR_SAE_PASSWORD,
++
++	NL80211_ATTR_TWT_RESPONDER,
++
 +	NL80211_ATTR_WIPHY_ANTENNA_GAIN,
 +
  	/* add attributes here, update the policy in nl80211.c */
  
  	__NL80211_ATTR_AFTER_LAST,
-@@ -2791,7 +2842,7 @@ enum nl80211_attrs {
+@@ -2791,14 +2861,14 @@ enum nl80211_attrs {
  
  #define NL80211_MAX_SUPP_RATES			32
  #define NL80211_MAX_SUPP_HT_RATES		77
@@ -121,7 +145,15 @@ index 31ae5c7..9fb7370 100644
  #define NL80211_TKIP_DATA_OFFSET_ENCR_KEY	0
  #define NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY	16
  #define NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY	24
-@@ -3125,6 +3176,10 @@ enum nl80211_sta_bss_param {
+ #define NL80211_HT_CAPABILITY_LEN		26
+ #define NL80211_VHT_CAPABILITY_LEN		12
+ #define NL80211_HE_MIN_CAPABILITY_LEN           16
+-#define NL80211_HE_MAX_CAPABILITY_LEN           51
++#define NL80211_HE_MAX_CAPABILITY_LEN           54
+ #define NL80211_MAX_NR_CIPHER_SUITES		5
+ #define NL80211_MAX_NR_AKM_SUITES		2
+ 
+@@ -3125,6 +3195,10 @@ enum nl80211_sta_bss_param {
   *	might not be fully accurate.
   * @NL80211_STA_INFO_CONNECTED_TO_GATE: set to true if STA has a path to a
   *	mesh gate (u8, 0 or 1)
@@ -132,7 +164,7 @@ index 31ae5c7..9fb7370 100644
   * @__NL80211_STA_INFO_AFTER_LAST: internal
   * @NL80211_STA_INFO_MAX: highest possible station info attribute
   */
-@@ -3168,6 +3223,9 @@ enum nl80211_sta_info {
+@@ -3168,6 +3242,9 @@ enum nl80211_sta_info {
  	NL80211_STA_INFO_RX_MPDUS,
  	NL80211_STA_INFO_FCS_ERROR_COUNT,
  	NL80211_STA_INFO_CONNECTED_TO_GATE,
@@ -142,7 +174,7 @@ index 31ae5c7..9fb7370 100644
  
  	/* keep last */
  	__NL80211_STA_INFO_AFTER_LAST,
-@@ -3277,8 +3335,10 @@ enum nl80211_mpath_flags {
+@@ -3277,8 +3354,10 @@ enum nl80211_mpath_flags {
   * 	&enum nl80211_mpath_flags;
   * @NL80211_MPATH_INFO_DISCOVERY_TIMEOUT: total path discovery timeout, in msec
   * @NL80211_MPATH_INFO_DISCOVERY_RETRIES: mesh path discovery retries
@@ -154,7 +186,7 @@ index 31ae5c7..9fb7370 100644
   * @__NL80211_MPATH_INFO_AFTER_LAST: internal use
   */
  enum nl80211_mpath_info {
-@@ -3290,6 +3350,8 @@ enum nl80211_mpath_info {
+@@ -3290,6 +3369,8 @@ enum nl80211_mpath_info {
  	NL80211_MPATH_INFO_FLAGS,
  	NL80211_MPATH_INFO_DISCOVERY_TIMEOUT,
  	NL80211_MPATH_INFO_DISCOVERY_RETRIES,
@@ -163,7 +195,7 @@ index 31ae5c7..9fb7370 100644
  
  	/* keep last */
  	__NL80211_MPATH_INFO_AFTER_LAST,
-@@ -3618,6 +3680,14 @@ enum nl80211_reg_rule_attr {
+@@ -3618,6 +3699,14 @@ enum nl80211_reg_rule_attr {
   *	value as specified by &struct nl80211_bss_select_rssi_adjust.
   * @NL80211_SCHED_SCAN_MATCH_ATTR_BSSID: BSSID to be used for matching
   *	(this cannot be used together with SSID).
@@ -178,7 +210,7 @@ index 31ae5c7..9fb7370 100644
   * @NL80211_SCHED_SCAN_MATCH_ATTR_MAX: highest scheduled scan filter
   *	attribute number currently defined
   * @__NL80211_SCHED_SCAN_MATCH_ATTR_AFTER_LAST: internal use
-@@ -3630,6 +3700,7 @@ enum nl80211_sched_scan_match_attr {
+@@ -3630,6 +3719,7 @@ enum nl80211_sched_scan_match_attr {
  	NL80211_SCHED_SCAN_MATCH_ATTR_RELATIVE_RSSI,
  	NL80211_SCHED_SCAN_MATCH_ATTR_RSSI_ADJUST,
  	NL80211_SCHED_SCAN_MATCH_ATTR_BSSID,
@@ -186,11 +218,10 @@ index 31ae5c7..9fb7370 100644
  
  	/* keep last */
  	__NL80211_SCHED_SCAN_MATCH_ATTR_AFTER_LAST,
-@@ -4114,6 +4185,27 @@ enum nl80211_channel_type {
- 	NL80211_CHAN_HT40PLUS
+@@ -4115,6 +4205,27 @@ enum nl80211_channel_type {
  };
  
-+/**
+ /**
 + * enum nl80211_key_mode - Key mode
 + *
 + * @NL80211_KEY_RX_TX: (Default)
@@ -211,10 +242,19 @@ index 31ae5c7..9fb7370 100644
 +	NL80211_KEY_SET_TX
 +};
 +
- /**
++/**
   * enum nl80211_chan_width - channel width definitions
   *
-@@ -4357,6 +4449,9 @@ enum nl80211_key_default_types {
+  * These values are used with the %NL80211_ATTR_CHANNEL_WIDTH
+@@ -4319,6 +4430,7 @@ enum nl80211_mfp {
+ enum nl80211_wpa_versions {
+ 	NL80211_WPA_VERSION_1 = 1 << 0,
+ 	NL80211_WPA_VERSION_2 = 1 << 1,
++	NL80211_WPA_VERSION_3 = 1 << 2,
+ };
+ 
+ /**
+@@ -4357,6 +4469,9 @@ enum nl80211_key_default_types {
   * @NL80211_KEY_DEFAULT_TYPES: A nested attribute containing flags
   *	attributes, specifying what a key should be set as default as.
   *	See &enum nl80211_key_default_types.
@@ -224,7 +264,7 @@ index 31ae5c7..9fb7370 100644
   * @__NL80211_KEY_AFTER_LAST: internal
   * @NL80211_KEY_MAX: highest key attribute
   */
-@@ -4370,6 +4465,7 @@ enum nl80211_key_attributes {
+@@ -4370,6 +4485,7 @@ enum nl80211_key_attributes {
  	NL80211_KEY_DEFAULT_MGMT,
  	NL80211_KEY_TYPE,
  	NL80211_KEY_DEFAULT_TYPES,
@@ -232,7 +272,16 @@ index 31ae5c7..9fb7370 100644
  
  	/* keep last */
  	__NL80211_KEY_AFTER_LAST,
-@@ -5315,6 +5411,21 @@ enum nl80211_feature_flags {
+@@ -5223,7 +5339,7 @@ enum nl80211_feature_flags {
+ 	NL80211_FEATURE_TDLS_CHANNEL_SWITCH		= 1 << 28,
+ 	NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR		= 1 << 29,
+ 	NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR	= 1 << 30,
+-	NL80211_FEATURE_ND_RANDOM_MAC_ADDR		= 1 << 31,
++	NL80211_FEATURE_ND_RANDOM_MAC_ADDR		= 1U << 31,
+ };
+ 
+ /**
+@@ -5315,6 +5431,24 @@ enum nl80211_feature_flags {
   *      able to rekey an in-use key correctly. Userspace must not rekey PTK keys
   *      if this flag is not set. Ignoring this can leak clear text packets and/or
   *      freeze the connection.
@@ -251,10 +300,13 @@ index 31ae5c7..9fb7370 100644
 + *
 + * @NL80211_EXT_FEATURE_STA_TX_PWR: This driver supports controlling tx power
 + *	to a station.
++ *
++ * @NL80211_EXT_FEATURE_SAE_OFFLOAD: Device wants to do SAE authentication in
++ *	station mode (SAE password is passed as part of the connect command).
   *
   * @NUM_NL80211_EXT_FEATURES: number of extended features.
   * @MAX_NL80211_EXT_FEATURES: highest extended feature index.
-@@ -5355,6 +5466,11 @@ enum nl80211_ext_feature_index {
+@@ -5355,6 +5489,12 @@ enum nl80211_ext_feature_index {
  	NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT,
  	NL80211_EXT_FEATURE_CAN_REPLACE_PTK0,
  	NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER,
@@ -263,10 +315,11 @@ index 31ae5c7..9fb7370 100644
 +	NL80211_EXT_FEATURE_SCHED_SCAN_BAND_SPECIFIC_RSSI_THOLD,
 +	NL80211_EXT_FEATURE_EXT_KEY_ID,
 +	NL80211_EXT_FEATURE_STA_TX_PWR,
++	NL80211_EXT_FEATURE_SAE_OFFLOAD,
  
  	/* add new features before the definition below */
  	NUM_NL80211_EXT_FEATURES,
-@@ -5606,9 +5722,14 @@ enum nl80211_crit_proto_id {
+@@ -5606,9 +5746,14 @@ enum nl80211_crit_proto_id {
   * Used by cfg80211_rx_mgmt()
   *
   * @NL80211_RXMGMT_FLAG_ANSWERED: frame was answered by device/driver.
-- 
2.20.1



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
