Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DB9105D7F
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 01:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eVy75ias6eDDJSxz0vbz1jqt/xye/VsEE9oCEiVQopI=; b=hKwEtnYeRThBJm
	E9/ohTLWiQNImxL2nDLA3hLfgmh6V6wDte8q+EF7g6HxEPyhteuBDyOyZFU9mRltij/RzJpV0X7sY
	8ZTdKorXsARp92nxnK+c5fcnE8zzarGBWUfGPbDx/MzpsUGaUFnQg4neUID0ybx1KXvQ0vB8hmhdB
	ddcmlITDRw35TAvXC1YUY7QFTgBYJQyx8zIhIQP3KbOsr2+oE58MU/0kOGYuvvhHZ91rvFZYsTJZC
	TuBh6JoIex+POJJbpO/JH0k+4Re2wYZ69T4Le+1sVcPqo/nELN5MAV8+PMdWQ1O+EjL3rfZHCCaMD
	xjhIwg1er0f7lROkI0qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXwSF-0003zy-RN; Fri, 22 Nov 2019 00:05:43 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXwS5-0003zJ-HL
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 00:05:38 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 47JxX32z4VzQjkp;
 Fri, 22 Nov 2019 01:05:23 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id aVc9pmED0Nxm; Fri, 22 Nov 2019 01:05:19 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 01:05:15 +0100
Message-Id: <20191122000515.14886-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_160533_900816_63F32099 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 19.07] mac80211: update to version 4.19.85
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
 package/kernel/mac80211/Makefile              |  6 +-
 ...fix-tx99-with-monitor-mode-interface.patch | 92 ------------------
 ...upport-for-using-active-monitor-inte.patch | 96 -------------------
 .../patches/ath/404-regd_no_assoc_hints.patch | 10 +-
 ...21-ath10k_init_devices_synchronously.patch |  2 +-
 .../ath/930-ath10k_add_tpt_led_trigger.patch  |  4 +-
 ...-of-peer_bw_rxnss_override-parameter.patch |  8 +-
 ...dling-for-VHT160-in-recent-firmwares.patch |  2 +-
 ...rolling-support-for-various-chipsets.patch | 28 +++---
 ...75-ath10k-use-tpt-trigger-by-default.patch |  2 +-
 ...ilable-channels-via-DT-ieee80211-fre.patch | 39 --------
 ...001-brcmfmac-fix-wrong-strnchr-usage.patch | 38 --------
 ...e-buffer-for-obtaining-firmware-capa.patch | 28 ------
 ...-Add-airtime-statistics-and-settings.patch |  8 +-
 ...te-hash-for-fq-without-holding-fq-lo.patch | 56 +++++++----
 ...nd-deauth-when-expiring-inactive-STA.patch |  6 +-
 ...t-to-changes-to-skb_get_hash_perturb.patch | 68 -------------
 .../522-mac80211_configure_antenna_gain.patch |  4 +-
 18 files changed, 76 insertions(+), 421 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/ath/381-ath9k-fix-tx99-with-monitor-mode-interface.patch
 delete mode 100644 package/kernel/mac80211/patches/ath/395-ath9k-add-back-support-for-using-active-monitor-inte.patch
 delete mode 100644 package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/302-v4.20-0001-brcmfmac-fix-wrong-strnchr-usage.patch
 delete mode 100644 package/kernel/mac80211/patches/brcm/304-v4.20-0002-brcmfmac-increase-buffer-for-obtaining-firmware-capa.patch
 delete mode 100644 package/kernel/mac80211/patches/subsys/370-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 8545f23298..ed104a53fc 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=4.19.79-1
+PKG_VERSION:=4.19.85-1
 PKG_RELEASE:=1
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.79/
-PKG_HASH:=ee03b16949e4968092cfed3cd763ff4682bc29fa3b52ebc239aa915583413cf3
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.85/
+PKG_HASH:=6a92df43e8c3e2410638d84dfd18773d667757532dd0a911227c9b7d65aee34d
 
 PKG_SOURCE:=backports-$(PKG_VERSION).tar.xz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
diff --git a/package/kernel/mac80211/patches/ath/381-ath9k-fix-tx99-with-monitor-mode-interface.patch b/package/kernel/mac80211/patches/ath/381-ath9k-fix-tx99-with-monitor-mode-interface.patch
deleted file mode 100644
index d5c37825fd..0000000000
--- a/package/kernel/mac80211/patches/ath/381-ath9k-fix-tx99-with-monitor-mode-interface.patch
+++ /dev/null
@@ -1,92 +0,0 @@
-From: Felix Fietkau <nbd@nbd.name>
-Date: Mon, 20 Aug 2018 11:35:05 +0200
-Subject: [PATCH] ath9k: fix tx99 with monitor mode interface
-
-Tx99 is typically configured via a monitor mode interface, which does
-not get added to the driver as a vif. Since the code currently expects
-a configured virtual interface for tx99, enabling tx99 via debugfs fails.
-Since the vif is not needed anyway, remove all checks for it.
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
-
---- a/drivers/net/wireless/ath/ath9k/ath9k.h
-+++ b/drivers/net/wireless/ath/ath9k/ath9k.h
-@@ -1074,7 +1074,6 @@ struct ath_softc {
- 
- 	struct ath_spec_scan_priv spec_priv;
- 
--	struct ieee80211_vif *tx99_vif;
- 	struct sk_buff *tx99_skb;
- 	bool tx99_state;
- 	s16 tx99_power;
---- a/drivers/net/wireless/ath/ath9k/main.c
-+++ b/drivers/net/wireless/ath/ath9k/main.c
-@@ -1251,15 +1251,10 @@ static int ath9k_add_interface(struct ie
- 	struct ath_vif *avp = (void *)vif->drv_priv;
- 	struct ath_node *an = &avp->mcast_node;
- 
--	mutex_lock(&sc->mutex);
-+	if (IS_ENABLED(CPTCFG_ATH9K_TX99))
-+		return -EOPNOTSUPP;
- 
--	if (IS_ENABLED(CPTCFG_ATH9K_TX99)) {
--		if (sc->cur_chan->nvifs >= 1) {
--			mutex_unlock(&sc->mutex);
--			return -EOPNOTSUPP;
--		}
--		sc->tx99_vif = vif;
--	}
-+	mutex_lock(&sc->mutex);
- 
- 	ath_dbg(common, CONFIG, "Attach a VIF of type: %d\n", vif->type);
- 	sc->cur_chan->nvifs++;
-@@ -1342,7 +1337,6 @@ static void ath9k_remove_interface(struc
- 	ath9k_p2p_remove_vif(sc, vif);
- 
- 	sc->cur_chan->nvifs--;
--	sc->tx99_vif = NULL;
- 	if (!ath9k_is_chanctx_enabled())
- 		list_del(&avp->list);
- 
---- a/drivers/net/wireless/ath/ath9k/tx99.c
-+++ b/drivers/net/wireless/ath/ath9k/tx99.c
-@@ -54,12 +54,6 @@ static struct sk_buff *ath9k_build_tx99_
- 	struct ieee80211_hdr *hdr;
- 	struct ieee80211_tx_info *tx_info;
- 	struct sk_buff *skb;
--	struct ath_vif *avp;
--
--	if (!sc->tx99_vif)
--		return NULL;
--
--	avp = (struct ath_vif *)sc->tx99_vif->drv_priv;
- 
- 	skb = alloc_skb(len, GFP_KERNEL);
- 	if (!skb)
-@@ -77,14 +71,11 @@ static struct sk_buff *ath9k_build_tx99_
- 	memcpy(hdr->addr2, hw->wiphy->perm_addr, ETH_ALEN);
- 	memcpy(hdr->addr3, hw->wiphy->perm_addr, ETH_ALEN);
- 
--	hdr->seq_ctrl |= cpu_to_le16(avp->seq_no);
--
- 	tx_info = IEEE80211_SKB_CB(skb);
- 	memset(tx_info, 0, sizeof(*tx_info));
- 	rate = &tx_info->control.rates[0];
- 	tx_info->band = sc->cur_chan->chandef.chan->band;
- 	tx_info->flags = IEEE80211_TX_CTL_NO_ACK;
--	tx_info->control.vif = sc->tx99_vif;
- 	rate->count = 1;
- 	if (ah->curchan && IS_CHAN_HT(ah->curchan)) {
- 		rate->flags |= IEEE80211_TX_RC_MCS;
---- a/drivers/net/wireless/ath/ath9k/xmit.c
-+++ b/drivers/net/wireless/ath/ath9k/xmit.c
-@@ -2974,7 +2974,7 @@ int ath9k_tx99_send(struct ath_softc *sc
- 		return -EINVAL;
- 	}
- 
--	ath_set_rates(sc->tx99_vif, NULL, bf);
-+	ath_set_rates(NULL, NULL, bf);
- 
- 	ath9k_hw_set_desc_link(sc->sc_ah, bf->bf_desc, bf->bf_daddr);
- 	ath9k_hw_tx99_start(sc->sc_ah, txctl->txq->axq_qnum);
diff --git a/package/kernel/mac80211/patches/ath/395-ath9k-add-back-support-for-using-active-monitor-inte.patch b/package/kernel/mac80211/patches/ath/395-ath9k-add-back-support-for-using-active-monitor-inte.patch
deleted file mode 100644
index 7f30de9862..0000000000
--- a/package/kernel/mac80211/patches/ath/395-ath9k-add-back-support-for-using-active-monitor-inte.patch
+++ /dev/null
@@ -1,96 +0,0 @@
-From: Felix Fietkau <nbd@nbd.name>
-Date: Sat, 22 Sep 2018 15:20:50 +0200
-Subject: [PATCH] ath9k: add back support for using active monitor interfaces
- for tx99
-
-Various documented examples on how to set up tx99 with ath9k rely
-on setting up a regular monitor interface for setting the channel.
-My previous patch "ath9k: fix tx99 with monitor mode interface" made
-it possible to set it up this way again. However, it was removing support
-for using an active monitor interface, which is required for controlling
-the bitrate as well, since the bitrate is not passed down with a regular
-monitor interface.
-
-This patch partially reverts the previous one, but keeps support for using
-a regular monitor interface to keep documented steps working in cases
-where the bitrate does not matter
-
-Fixes: d9c52fd17cb48 ("ath9k: fix tx99 with monitor mode interface")
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
-
---- a/drivers/net/wireless/ath/ath9k/ath9k.h
-+++ b/drivers/net/wireless/ath/ath9k/ath9k.h
-@@ -1074,6 +1074,7 @@ struct ath_softc {
- 
- 	struct ath_spec_scan_priv spec_priv;
- 
-+	struct ieee80211_vif *tx99_vif;
- 	struct sk_buff *tx99_skb;
- 	bool tx99_state;
- 	s16 tx99_power;
---- a/drivers/net/wireless/ath/ath9k/main.c
-+++ b/drivers/net/wireless/ath/ath9k/main.c
-@@ -1251,8 +1251,13 @@ static int ath9k_add_interface(struct ie
- 	struct ath_vif *avp = (void *)vif->drv_priv;
- 	struct ath_node *an = &avp->mcast_node;
- 
--	if (IS_ENABLED(CPTCFG_ATH9K_TX99))
--		return -EOPNOTSUPP;
-+	if (IS_ENABLED(CPTCFG_ATH9K_TX99)) {
-+		if (sc->cur_chan->nvifs >= 1) {
-+			mutex_unlock(&sc->mutex);
-+			return -EOPNOTSUPP;
-+		}
-+		sc->tx99_vif = vif;
-+	}
- 
- 	mutex_lock(&sc->mutex);
- 
-@@ -1337,6 +1342,7 @@ static void ath9k_remove_interface(struc
- 	ath9k_p2p_remove_vif(sc, vif);
- 
- 	sc->cur_chan->nvifs--;
-+	sc->tx99_vif = NULL;
- 	if (!ath9k_is_chanctx_enabled())
- 		list_del(&avp->list);
- 
---- a/drivers/net/wireless/ath/ath9k/tx99.c
-+++ b/drivers/net/wireless/ath/ath9k/tx99.c
-@@ -54,6 +54,7 @@ static struct sk_buff *ath9k_build_tx99_
- 	struct ieee80211_hdr *hdr;
- 	struct ieee80211_tx_info *tx_info;
- 	struct sk_buff *skb;
-+	struct ath_vif *avp;
- 
- 	skb = alloc_skb(len, GFP_KERNEL);
- 	if (!skb)
-@@ -71,11 +72,17 @@ static struct sk_buff *ath9k_build_tx99_
- 	memcpy(hdr->addr2, hw->wiphy->perm_addr, ETH_ALEN);
- 	memcpy(hdr->addr3, hw->wiphy->perm_addr, ETH_ALEN);
- 
-+	if (sc->tx99_vif) {
-+		avp = (struct ath_vif *) sc->tx99_vif->drv_priv;
-+		hdr->seq_ctrl |= cpu_to_le16(avp->seq_no);
-+	}
-+
- 	tx_info = IEEE80211_SKB_CB(skb);
- 	memset(tx_info, 0, sizeof(*tx_info));
- 	rate = &tx_info->control.rates[0];
- 	tx_info->band = sc->cur_chan->chandef.chan->band;
- 	tx_info->flags = IEEE80211_TX_CTL_NO_ACK;
-+	tx_info->control.vif = sc->tx99_vif;
- 	rate->count = 1;
- 	if (ah->curchan && IS_CHAN_HT(ah->curchan)) {
- 		rate->flags |= IEEE80211_TX_RC_MCS;
---- a/drivers/net/wireless/ath/ath9k/xmit.c
-+++ b/drivers/net/wireless/ath/ath9k/xmit.c
-@@ -2974,7 +2974,7 @@ int ath9k_tx99_send(struct ath_softc *sc
- 		return -EINVAL;
- 	}
- 
--	ath_set_rates(NULL, NULL, bf);
-+	ath_set_rates(sc->tx99_vif, NULL, bf);
- 
- 	ath9k_hw_set_desc_link(sc->sc_ah, bf->bf_desc, bf->bf_daddr);
- 	ath9k_hw_tx99_start(sc->sc_ah, txctl->txq->axq_qnum);
diff --git a/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch b/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
index d4c7318377..266b750e4b 100644
--- a/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
+++ b/package/kernel/mac80211/patches/ath/404-regd_no_assoc_hints.patch
@@ -1,6 +1,6 @@
 --- a/net/wireless/reg.c
 +++ b/net/wireless/reg.c
-@@ -3021,6 +3021,8 @@ void regulatory_hint_country_ie(struct w
+@@ -3027,6 +3027,8 @@ void regulatory_hint_country_ie(struct w
  	enum environment_cap env = ENVIRON_ANY;
  	struct regulatory_request *request = NULL, *lr;
  
@@ -9,11 +9,11 @@
  	/* IE len must be evenly divisible by 2 */
  	if (country_ie_len & 0x01)
  		return;
-@@ -3227,6 +3229,7 @@ static void restore_regulatory_settings(
+@@ -3252,6 +3254,7 @@ static bool is_wiphy_all_set_reg_flag(en
  
  void regulatory_hint_disconnect(void)
  {
 +	return;
- 	pr_debug("All devices are disconnected, going to restore regulatory settings\n");
- 	restore_regulatory_settings(false);
- }
+ 	/* Restore of regulatory settings is not required when wiphy(s)
+ 	 * ignore IE from connected access point but clearance of beacon hints
+ 	 * is required when wiphy(s) supports beacon hints.
diff --git a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
index 47ecc9c655..bf9d5cbd97 100644
--- a/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
+++ b/package/kernel/mac80211/patches/ath/921-ath10k_init_devices_synchronously.patch
@@ -14,7 +14,7 @@ Signed-off-by: Sven Eckelmann <sven@open-mesh.com>
 
 --- a/drivers/net/wireless/ath/ath10k/core.c
 +++ b/drivers/net/wireless/ath/ath10k/core.c
-@@ -2720,6 +2720,16 @@ int ath10k_core_register(struct ath10k *
+@@ -2735,6 +2735,16 @@ int ath10k_core_register(struct ath10k *
  	ar->chip_id = chip_id;
  	queue_work(ar->workqueue, &ar->register_work);
  
diff --git a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
index dd7a4392b8..911086355e 100644
--- a/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
+++ b/package/kernel/mac80211/patches/ath/930-ath10k_add_tpt_led_trigger.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8286,6 +8286,21 @@ static int ath10k_mac_init_rd(struct ath
+@@ -8287,6 +8287,21 @@ static int ath10k_mac_init_rd(struct ath
  	return 0;
  }
  
@@ -22,7 +22,7 @@
  int ath10k_mac_register(struct ath10k *ar)
  {
  	static const u32 cipher_suites[] = {
-@@ -8575,6 +8590,12 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8577,6 +8592,12 @@ int ath10k_mac_register(struct ath10k *a
  
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
diff --git a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
index 406165ab9c..d4097a2c84 100644
--- a/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
+++ b/package/kernel/mac80211/patches/ath/972-ath10k_fix-crash-due-to-wrong-handling-of-peer_bw_rxnss_override-parameter.patch
@@ -23,7 +23,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  3 files changed, 52 insertions(+), 23 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -2473,7 +2473,7 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2474,7 +2474,7 @@ static void ath10k_peer_assoc_h_vht(stru
  	const u16 *vht_mcs_mask;
  	u8 ampdu_factor;
  	u8 max_nss, vht_mcs;
@@ -32,7 +32,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  
  	if (WARN_ON(ath10k_mac_vif_chan(vif, &def)))
  		return;
-@@ -2533,23 +2533,45 @@ static void ath10k_peer_assoc_h_vht(stru
+@@ -2534,23 +2534,45 @@ static void ath10k_peer_assoc_h_vht(stru
  		__le16_to_cpu(vht_cap->vht_mcs.tx_highest);
  	arg->peer_vht_rates.tx_mcs_set = ath10k_peer_assoc_h_vht_limit(
  		__le16_to_cpu(vht_cap->vht_mcs.tx_mcs_map), vht_mcs_mask);
@@ -92,7 +92,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  }
  
  static void ath10k_peer_assoc_h_qos(struct ath10k *ar,
-@@ -2701,9 +2723,9 @@ static int ath10k_peer_assoc_prepare(str
+@@ -2702,9 +2724,9 @@ static int ath10k_peer_assoc_prepare(str
  	ath10k_peer_assoc_h_crypto(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_rates(ar, vif, sta, arg);
  	ath10k_peer_assoc_h_ht(ar, vif, sta, arg);
@@ -105,7 +105,7 @@ v9: use SM/MS macros from code.h to simplify shift/mask handling
  }
 --- a/drivers/net/wireless/ath/ath10k/wmi.c
 +++ b/drivers/net/wireless/ath/ath10k/wmi.c
-@@ -7357,12 +7357,7 @@ ath10k_wmi_peer_assoc_fill_10_4(struct a
+@@ -7365,12 +7365,7 @@ ath10k_wmi_peer_assoc_fill_10_4(struct a
  	struct wmi_10_4_peer_assoc_complete_cmd *cmd = buf;
  
  	ath10k_wmi_peer_assoc_fill_10_2(ar, buf, arg);
diff --git a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
index 42eed5d304..a7cf89fec9 100644
--- a/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
+++ b/package/kernel/mac80211/patches/ath/973-ath10k_fix-band_center_freq-handling-for-VHT160-in-recent-firmwares.patch
@@ -13,7 +13,7 @@ v2: fix trailing whitespace issue and fix some typos within the commit note
  2 files changed, 8 insertions(+), 10 deletions(-)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -4477,13 +4477,6 @@ static struct ieee80211_sta_vht_cap ath1
+@@ -4478,13 +4478,6 @@ static struct ieee80211_sta_vht_cap ath1
  		vht_cap.cap |= val;
  	}
  
diff --git a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index 50ed63b065..8447118b80 100644
--- a/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/mac80211/patches/ath/974-ath10k_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -140,7 +140,7 @@ v13:
  		.patch_load_addr = QCA988X_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
-@@ -129,6 +131,7 @@ static const struct ath10k_hw_params ath
+@@ -131,6 +133,7 @@ static const struct ath10k_hw_params ath
  		.id = QCA9887_HW_1_0_VERSION,
  		.dev_id = QCA9887_1_0_DEVICE_ID,
  		.name = "qca9887 hw1.0",
@@ -148,7 +148,7 @@ v13:
  		.patch_load_addr = QCA9887_HW_1_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
-@@ -293,6 +296,7 @@ static const struct ath10k_hw_params ath
+@@ -300,6 +303,7 @@ static const struct ath10k_hw_params ath
  		.id = QCA99X0_HW_2_0_DEV_VERSION,
  		.dev_id = QCA99X0_2_0_DEVICE_ID,
  		.name = "qca99x0 hw2.0",
@@ -156,7 +156,7 @@ v13:
  		.patch_load_addr = QCA99X0_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.otp_exe_param = 0x00000700,
-@@ -331,6 +335,7 @@ static const struct ath10k_hw_params ath
+@@ -339,6 +343,7 @@ static const struct ath10k_hw_params ath
  		.id = QCA9984_HW_1_0_DEV_VERSION,
  		.dev_id = QCA9984_1_0_DEVICE_ID,
  		.name = "qca9984/qca9994 hw1.0",
@@ -164,7 +164,7 @@ v13:
  		.patch_load_addr = QCA9984_HW_1_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -374,6 +379,7 @@ static const struct ath10k_hw_params ath
+@@ -383,6 +388,7 @@ static const struct ath10k_hw_params ath
  		.id = QCA9888_HW_2_0_DEV_VERSION,
  		.dev_id = QCA9888_2_0_DEVICE_ID,
  		.name = "qca9888 hw2.0",
@@ -172,7 +172,7 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -2441,6 +2447,10 @@ int ath10k_core_start(struct ath10k *ar,
+@@ -2456,6 +2462,10 @@ int ath10k_core_start(struct ath10k *ar,
  	if (status)
  		goto err_hif_stop;
  
@@ -183,7 +183,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -2695,9 +2705,18 @@ static void ath10k_core_register_work(st
+@@ -2710,9 +2720,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -202,7 +202,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -2741,6 +2760,8 @@ void ath10k_core_unregister(struct ath10
+@@ -2756,6 +2775,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -405,7 +405,7 @@ v13:
 +#endif /* _LEDS_H_ */
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -33,6 +33,7 @@
+@@ -34,6 +34,7 @@
  #include "wmi-tlv.h"
  #include "wmi-ops.h"
  #include "wow.h"
@@ -475,7 +475,7 @@ v13:
  static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
 --- a/drivers/net/wireless/ath/ath10k/wmi.c
 +++ b/drivers/net/wireless/ath/ath10k/wmi.c
-@@ -7177,6 +7177,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
+@@ -7185,6 +7185,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
  	return skb;
  }
  
@@ -525,7 +525,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -8788,6 +8831,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -8796,6 +8839,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -535,7 +535,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -8858,6 +8904,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -8866,6 +8912,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -544,7 +544,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -8929,6 +8977,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -8937,6 +8985,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -553,7 +553,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -8999,6 +9049,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -9007,6 +9057,8 @@ static const struct wmi_ops wmi_10_2_4_o
  	.gen_pdev_enable_adaptive_cca =
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
@@ -562,7 +562,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9078,6 +9130,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -9086,6 +9138,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
diff --git a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
index 44e838441e..a75bf93c7b 100644
--- a/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
+++ b/package/kernel/mac80211/patches/ath/975-ath10k-use-tpt-trigger-by-default.patch
@@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/drivers/net/wireless/ath/ath10k/mac.c
 +++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -8607,7 +8607,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -8609,7 +8609,7 @@ int ath10k_mac_register(struct ath10k *a
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch b/package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
deleted file mode 100644
index 3551216a68..0000000000
--- a/package/kernel/mac80211/patches/ath/976-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From bbf0a8af2261bc7ae39b227ff6a1e9f45a008c27 Mon Sep 17 00:00:00 2001
-From: Sven Eckelmann <sven.eckelmann@openmesh.com>
-Date: Mon, 30 Jul 2018 17:31:41 +0200
-Subject: [PATCH] ath10k: Limit available channels via DT ieee80211-freq-limit
-
-Tri-band devices (1x 2.4GHz + 2x 5GHz) often incorporate special filters in
-the RX and TX path. These filtered channel can in theory still be used by
-the hardware but the signal strength is reduced so much that it makes no
-sense.
-
-There is already a DT property to limit the available channels but ath10k
-has to manually call this functionality to limit the currrently set wiphy
-channels further.
-
-Signed-off-by: Sven Eckelmann <sven.eckelmann@openmesh.com>
-
-Forwarded: https://patchwork.kernel.org/patch/10549245/
----
- drivers/net/wireless/ath/ath10k/mac.c | 2 ++
- 1 file changed, 2 insertions(+)
-
---- a/drivers/net/wireless/ath/ath10k/mac.c
-+++ b/drivers/net/wireless/ath/ath10k/mac.c
-@@ -18,6 +18,7 @@
- 
- #include "mac.h"
- 
-+#include <net/cfg80211.h>
- #include <net/mac80211.h>
- #include <linux/etherdevice.h>
- #include <linux/acpi.h>
-@@ -8394,6 +8395,7 @@ int ath10k_mac_register(struct ath10k *a
- 		ar->hw->wiphy->bands[NL80211_BAND_5GHZ] = band;
- 	}
- 
-+	wiphy_read_of_freq_limits(ar->hw->wiphy);
- 	ath10k_mac_setup_ht_vht_cap(ar);
- 
- 	ar->hw->wiphy->interface_modes =
diff --git a/package/kernel/mac80211/patches/brcm/302-v4.20-0001-brcmfmac-fix-wrong-strnchr-usage.patch b/package/kernel/mac80211/patches/brcm/302-v4.20-0001-brcmfmac-fix-wrong-strnchr-usage.patch
deleted file mode 100644
index 8267b37864..0000000000
--- a/package/kernel/mac80211/patches/brcm/302-v4.20-0001-brcmfmac-fix-wrong-strnchr-usage.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From cb18e2e9ec71d42409a51b83546686c609780dde Mon Sep 17 00:00:00 2001
-From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
-Date: Wed, 22 Aug 2018 15:22:15 +0200
-Subject: [PATCH] brcmfmac: fix wrong strnchr usage
-
-strnchr takes arguments in the order of its name: string, max bytes to
-read, character to search for. Here we're passing '\n' aka 10 as the
-buffer size, and searching for sizeof(buf) aka BRCMF_DCMD_SMLEN aka
-256 (aka '\0', since it's implicitly converted to char) within those 10
-bytes.
-
-Just interchanging the last two arguments would still leave a bug,
-because if we've been successful once, there are not sizeof(buf)
-characters left after the new value of p.
-
-Since clmver is immediately afterwards passed as a %s argument, I assume
-that it is actually a properly nul-terminated string. For that case, we
-have strreplace().
-
-Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
-Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c | 4 +---
- 1 file changed, 1 insertion(+), 3 deletions(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
-@@ -296,9 +296,7 @@ int brcmf_c_preinit_dcmds(struct brcmf_i
- 		/* Replace all newline/linefeed characters with space
- 		 * character
- 		 */
--		ptr = clmver;
--		while ((ptr = strnchr(ptr, '\n', sizeof(buf))) != NULL)
--			*ptr = ' ';
-+		strreplace(clmver, '\n', ' ');
- 
- 		brcmf_dbg(INFO, "CLM version = %s\n", clmver);
- 	}
diff --git a/package/kernel/mac80211/patches/brcm/304-v4.20-0002-brcmfmac-increase-buffer-for-obtaining-firmware-capa.patch b/package/kernel/mac80211/patches/brcm/304-v4.20-0002-brcmfmac-increase-buffer-for-obtaining-firmware-capa.patch
deleted file mode 100644
index 11fb4bce45..0000000000
--- a/package/kernel/mac80211/patches/brcm/304-v4.20-0002-brcmfmac-increase-buffer-for-obtaining-firmware-capa.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From: Arend van Spriel <arend.vanspriel@broadcom.com>
-Date: Wed, 5 Sep 2018 09:48:59 +0200
-Subject: [PATCH] brcmfmac: increase buffer for obtaining firmware capabilities
-
-When obtaining the firmware capability a buffer is provided of 512
-bytes. However, if all features in firmware are supported the buffer
-needs to be 565 bytes as otherwise truncated information is retrieved
-from firmware. Increasing the buffer to 768 bytes on stack.
-
-Reviewed-by: Hante Meuleman <hante.meuleman@broadcom.com>
-Reviewed-by: Pieter-Paul Giesberts <pieter-paul.giesberts@broadcom.com>
-Reviewed-by: Franky Lin <franky.lin@broadcom.com>
-Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
----
- drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c
-+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c
-@@ -178,7 +178,7 @@ static void brcmf_feat_iovar_data_set(st
- 	ifp->fwil_fwerr = false;
- }
- 
--#define MAX_CAPS_BUFFER_SIZE	512
-+#define MAX_CAPS_BUFFER_SIZE	768
- static void brcmf_feat_firmware_capabilities(struct brcmf_if *ifp)
- {
- 	char caps[MAX_CAPS_BUFFER_SIZE];
diff --git a/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch b/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
index 9078fc2596..9dac46842d 100644
--- a/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
+++ b/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
@@ -148,7 +148,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	MAX_NL80211_EXT_FEATURES = NUM_NL80211_EXT_FEATURES - 1
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -462,6 +462,7 @@ static const struct nla_policy nl80211_p
+@@ -463,6 +463,7 @@ static const struct nla_policy nl80211_p
  	[NL80211_ATTR_TXQ_QUANTUM] = { .type = NLA_U32 },
  	[NL80211_ATTR_HE_CAPABILITY] = { .type = NLA_BINARY,
  					 .len = NL80211_HE_MAX_CAPABILITY_LEN },
@@ -156,7 +156,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  };
  
  /* policy for the key attributes */
-@@ -4702,6 +4703,11 @@ static int nl80211_send_station(struct s
+@@ -4703,6 +4704,11 @@ static int nl80211_send_station(struct s
  	PUT_SINFO(PLID, plid, u16);
  	PUT_SINFO(PLINK_STATE, plink_state, u8);
  	PUT_SINFO_U64(RX_DURATION, rx_duration);
@@ -168,7 +168,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
  	switch (rdev->wiphy.signal_type) {
  	case CFG80211_SIGNAL_TYPE_MBM:
-@@ -5338,6 +5344,15 @@ static int nl80211_set_station(struct sk
+@@ -5339,6 +5345,15 @@ static int nl80211_set_station(struct sk
  			nla_get_u8(info->attrs[NL80211_ATTR_OPMODE_NOTIF]);
  	}
  
@@ -184,7 +184,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	/* Include parameters for TDLS peer (will check later) */
  	err = nl80211_set_station_tdls(info, &params);
  	if (err)
-@@ -5476,6 +5491,15 @@ static int nl80211_new_station(struct sk
+@@ -5477,6 +5492,15 @@ static int nl80211_new_station(struct sk
  			return -EINVAL;
  	}
  
diff --git a/package/kernel/mac80211/patches/subsys/354-mac80211-calculate-hash-for-fq-without-holding-fq-lo.patch b/package/kernel/mac80211/patches/subsys/354-mac80211-calculate-hash-for-fq-without-holding-fq-lo.patch
index 3084a4ba32..b5a49dbfe0 100644
--- a/package/kernel/mac80211/patches/subsys/354-mac80211-calculate-hash-for-fq-without-holding-fq-lo.patch
+++ b/package/kernel/mac80211/patches/subsys/354-mac80211-calculate-hash-for-fq-without-holding-fq-lo.patch
@@ -10,37 +10,53 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/include/net/fq_impl.h
 +++ b/include/net/fq_impl.h
-@@ -107,21 +107,23 @@ begin:
+@@ -107,29 +107,31 @@ begin:
  	return skb;
  }
  
-+static u32 fq_flow_idx(struct fq *fq, struct sk_buff *skb)
-+{
-+	u32 hash = skb_get_hash_perturb(skb, fq->perturbation);
-+
-+	return reciprocal_scale(hash, fq->flows_cnt);
-+}
-+
- static struct fq_flow *fq_flow_classify(struct fq *fq,
+-static struct fq_flow *fq_flow_classify(struct fq *fq,
 -					struct fq_tin *tin,
-+					struct fq_tin *tin, u32 idx,
- 					struct sk_buff *skb,
- 					fq_flow_get_default_t get_default_func)
+-					struct sk_buff *skb,
+-					fq_flow_get_default_t get_default_func)
++static u32 fq_flow_idx(struct fq *fq, struct sk_buff *skb)
  {
- 	struct fq_flow *flow;
+-	struct fq_flow *flow;
 -	u32 hash;
 -	u32 idx;
- 
- 	lockdep_assert_held(&fq->lock);
- 
+-
+-	lockdep_assert_held(&fq->lock);
+-
+ #if LINUX_VERSION_IS_GEQ(5,3,10) || \
+     LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
+     LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
+     LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
+     LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
+-	hash = skb_get_hash_perturb(skb, &fq->perturbation);
++	u32 hash = skb_get_hash_perturb(skb, &fq->perturbation);
+ #else
 -	hash = skb_get_hash_perturb(skb, fq->perturbation);
++	u32 hash = skb_get_hash_perturb(skb, fq->perturbation);
+ #endif
 -	idx = reciprocal_scale(hash, fq->flows_cnt);
- 	flow = &fq->flows[idx];
--
+-	flow = &fq->flows[idx];
+ 
++	return reciprocal_scale(hash, fq->flows_cnt);
++}
++
++static struct fq_flow *fq_flow_classify(struct fq *fq,
++					struct fq_tin *tin, u32 idx,
++					struct sk_buff *skb,
++					fq_flow_get_default_t get_default_func)
++{
++	struct fq_flow *flow;
++
++	lockdep_assert_held(&fq->lock);
++
++	flow = &fq->flows[idx];
  	if (flow->tin && flow->tin != tin) {
  		flow = get_default_func(fq, tin, idx, skb);
  		tin->collisions++;
-@@ -153,7 +155,7 @@ static void fq_recalc_backlog(struct fq
+@@ -161,7 +163,7 @@ static void fq_recalc_backlog(struct fq
  }
  
  static void fq_tin_enqueue(struct fq *fq,
@@ -49,7 +65,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  			   struct sk_buff *skb,
  			   fq_skb_free_t free_func,
  			   fq_flow_get_default_t get_default_func)
-@@ -163,7 +165,7 @@ static void fq_tin_enqueue(struct fq *fq
+@@ -171,7 +173,7 @@ static void fq_tin_enqueue(struct fq *fq
  
  	lockdep_assert_held(&fq->lock);
  
diff --git a/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch b/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch
index 5b5acded9a..61b6d2b8d4 100644
--- a/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch
+++ b/package/kernel/mac80211/patches/subsys/365-mac80211-IBSS-send-deauth-when-expiring-inactive-STA.patch
@@ -78,7 +78,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	}
  
  	/* flush out frame - make sure the deauth was actually sent */
-@@ -4371,7 +4372,7 @@ void ieee80211_mgd_quiesce(struct ieee80
+@@ -4369,7 +4370,7 @@ void ieee80211_mgd_quiesce(struct ieee80
  		 * cfg80211 won't know and won't actually abort those attempts,
  		 * thus we need to do that ourselves.
  		 */
@@ -87,7 +87,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  					       IEEE80211_STYPE_DEAUTH,
  					       WLAN_REASON_DEAUTH_LEAVING,
  					       false, frame_buf);
-@@ -5351,7 +5352,7 @@ int ieee80211_mgd_deauth(struct ieee8021
+@@ -5349,7 +5350,7 @@ int ieee80211_mgd_deauth(struct ieee8021
  			   ieee80211_get_reason_code_string(req->reason_code));
  
  		drv_mgd_prepare_tx(sdata->local, sdata, 0);
@@ -96,7 +96,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  					       IEEE80211_STYPE_DEAUTH,
  					       req->reason_code, tx,
  					       frame_buf);
-@@ -5371,7 +5372,7 @@ int ieee80211_mgd_deauth(struct ieee8021
+@@ -5369,7 +5370,7 @@ int ieee80211_mgd_deauth(struct ieee8021
  			   ieee80211_get_reason_code_string(req->reason_code));
  
  		drv_mgd_prepare_tx(sdata->local, sdata, 0);
diff --git a/package/kernel/mac80211/patches/subsys/370-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch b/package/kernel/mac80211/patches/subsys/370-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
deleted file mode 100644
index c138055986..0000000000
--- a/package/kernel/mac80211/patches/subsys/370-backports-Adapt-to-changes-to-skb_get_hash_perturb.patch
+++ /dev/null
@@ -1,68 +0,0 @@
-From e3c57dd949835419cee8d3b45db38de58bf6ebd5 Mon Sep 17 00:00:00 2001
-From: Hauke Mehrtens <hauke@hauke-m.de>
-Date: Mon, 18 Nov 2019 01:13:37 +0100
-Subject: [PATCH] backports: Adapt to changes to skb_get_hash_perturb()
-
-The skb_get_hash_perturb() function now takes a siphash_key_t instead of
-an u32. This was changed in commit 55667441c84f ("net/flow_dissector:
-switch to siphash"). Use the correct type in the fq header file
-depending on the kernel version.
-
-Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
----
- include/net/fq.h      | 8 ++++++++
- include/net/fq_impl.h | 8 ++++++++
- 2 files changed, 16 insertions(+)
-
---- a/include/net/fq.h
-+++ b/include/net/fq.h
-@@ -70,7 +70,15 @@ struct fq {
- 	struct list_head backlogs;
- 	spinlock_t lock;
- 	u32 flows_cnt;
-+#if LINUX_VERSION_IS_GEQ(5,3,10) || \
-+    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
-+    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
-+    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
-+    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
-+	siphash_key_t	perturbation;
-+#else
- 	u32 perturbation;
-+#endif
- 	u32 limit;
- 	u32 memory_limit;
- 	u32 memory_usage;
---- a/include/net/fq_impl.h
-+++ b/include/net/fq_impl.h
-@@ -109,7 +109,15 @@ begin:
- 
- static u32 fq_flow_idx(struct fq *fq, struct sk_buff *skb)
- {
-+#if LINUX_VERSION_IS_GEQ(5,3,10) || \
-+    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
-+    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
-+    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
-+    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
-+	u32 hash = skb_get_hash_perturb(skb, &fq->perturbation);
-+#else
- 	u32 hash = skb_get_hash_perturb(skb, fq->perturbation);
-+#endif
- 
- 	return reciprocal_scale(hash, fq->flows_cnt);
- }
-@@ -309,7 +317,15 @@ static int fq_init(struct fq *fq, int fl
- 	INIT_LIST_HEAD(&fq->backlogs);
- 	spin_lock_init(&fq->lock);
- 	fq->flows_cnt = max_t(u32, flows_cnt, 1);
-+#if LINUX_VERSION_IS_GEQ(5,3,10) || \
-+    LINUX_VERSION_IN_RANGE(4,19,83, 4,20,0) || \
-+    LINUX_VERSION_IN_RANGE(4,14,153, 4,15,0) || \
-+    LINUX_VERSION_IN_RANGE(4,9,200, 4,10,0) || \
-+    LINUX_VERSION_IN_RANGE(4,4,200, 4,5,0)
-+	get_random_bytes(&fq->perturbation, sizeof(fq->perturbation));
-+#else
- 	fq->perturbation = prandom_u32();
-+#endif
- 	fq->quantum = 300;
- 	fq->limit = 8192;
- 	fq->memory_limit = 16 << 20; /* 16 MBytes */
diff --git a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
index e0c3d24f74..4c4eb7917e 100644
--- a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
+++ b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
@@ -129,7 +129,7 @@
  	local->user_power_level = IEEE80211_UNSET_POWER_LEVEL;
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -463,6 +463,7 @@ static const struct nla_policy nl80211_p
+@@ -464,6 +464,7 @@ static const struct nla_policy nl80211_p
  	[NL80211_ATTR_HE_CAPABILITY] = { .type = NLA_BINARY,
  					 .len = NL80211_HE_MAX_CAPABILITY_LEN },
  	[NL80211_ATTR_AIRTIME_WEIGHT] = NLA_POLICY_MIN(NLA_U16, 1),
@@ -137,7 +137,7 @@
  };
  
  /* policy for the key attributes */
-@@ -2622,6 +2623,20 @@ static int nl80211_set_wiphy(struct sk_b
+@@ -2623,6 +2624,20 @@ static int nl80211_set_wiphy(struct sk_b
  		if (result)
  			return result;
  	}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
