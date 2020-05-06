Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE241C7C7A
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 23:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5onl4FG2vVFvL9NGhQL6wCYMkO3lzVd4wzerLr8zmzw=; b=YoUrbZbE8Tfs0g
	rTZL3Wv2nBbhr5mcQwe/Cnqg0AQLkoEx8NIRf/Q+EKKLSqSF7QI3AJYCqrP3eMdvSBMpYcKCa0yU/
	FxdmKdRzkIacArKgevdTjIW9gxJ5IWgRCiMdPvE9w1Q/ulFSK1oINQhoOWqGldCH/o7CPyAIUga97
	CbMErNJjMTje0rJL95qBiLJcRXup0xpoSjW9kQ6A53b1OLWEfVr0yaqeNHHJA8sj+JM50xXdAtiCK
	0HZcvQx/qtps0sWqv5ZFzTGO6ozT/yBxo+CBMUgMUoJZI770Fh8uGvPnhvNUZ4+spQfcPWNTclX00
	IDGZAW/CHoYl8OdROIYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWRf6-0000cJ-BA; Wed, 06 May 2020 21:33:04 +0000
Received: from mout-p-201.mailbox.org ([2001:67c:2050::465:201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWReA-0008EK-Kr
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 21:32:11 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 49HVCp2V19zQl9T;
 Wed,  6 May 2020 23:31:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id wLs7me7EC_bH; Wed,  6 May 2020 23:31:45 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 May 2020 23:31:27 +0200
Message-Id: <20200506213130.15898-2-hauke@hauke-m.de>
In-Reply-To: <20200506213130.15898-1-hauke@hauke-m.de>
References: <20200506213130.15898-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 69254178B
X-Rspamd-Score: -3.91 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_143207_005929_0D34C994 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/4] mac80211: Update to version 5.4.36-1
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
Cc: hauke@hauke-m.de, foss@volatilesystems.org, koen.vandeputte@ncentric.com,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates the mac80211 backport to the latest minor version.

The removed patch was a backport from the upstream kernel which is now
integrated.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/mac80211/Makefile              |   8 +-
 ...-F2-blocksize-and-watermark-for-4359.patch |   2 +-
 .../subsys/140-tweak-TSQ-setting.patch        |   2 +-
 .../subsys/150-disable_addr_notifier.patch    |   8 +-
 .../300-mac80211-optimize-skb-resizing.patch  |  10 +-
 ...l-remove-divisions-in-tx-status-path.patch |   4 +-
 ...l_ht-replace-rate-stats-ewma-with-a-.patch |   8 +-
 ...l_ht-rename-prob_ewma-to-prob_avg-us.patch |   2 +-
 ...ore-skb-ack-code-to-its-own-function.patch |   4 +-
 ...the-size-of-ack_frame_id-to-make-roo.patch |   2 +-
 ...new-sta_info-getter-by-sta-vif-addrs.patch |   2 +-
 ...t-airtime-calculation-code-from-mt76.patch |   2 +-
 ...lement-Airtime-based-Queue-Limit-AQL.patch |  16 +-
 ...time-based-Queue-Limits-AQL-on-packe.patch |   4 +-
 ...Turn-AQL-into-an-NL80211_EXT_FEATURE.patch |  22 +--
 ...ta-frames-without-key-on-encrypted-l.patch | 148 ------------------
 .../500-mac80211_configure_antenna_gain.patch |   4 +-
 17 files changed, 50 insertions(+), 198 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/subsys/314-mac80211-drop-data-frames-without-key-on-encrypted-l.patch

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 26c5ef4b1a37..901c08b0de62 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=5.4.27-1
-PKG_RELEASE:=3
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.4.27/
-PKG_HASH:=4c853a2f4c4fcc81cf60a3d59c5efbdb60c3e4acda22996cb192443581753950
+PKG_VERSION:=5.4.36-1
+PKG_RELEASE:=1
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.4.36/
+PKG_HASH:=5b39734986fba3b9c24c521d0499a2dc9cb17267bb58c02d9a520205add2d16b
 
 PKG_SOURCE:=backports-$(PKG_VERSION).tar.xz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
diff --git a/package/kernel/mac80211/patches/brcm/114-v5.6-0002-brcmfmac-set-F2-blocksize-and-watermark-for-4359.patch b/package/kernel/mac80211/patches/brcm/114-v5.6-0002-brcmfmac-set-F2-blocksize-and-watermark-for-4359.patch
index bdfe2ae85f73..37ba7f360b3e 100644
--- a/package/kernel/mac80211/patches/brcm/114-v5.6-0002-brcmfmac-set-F2-blocksize-and-watermark-for-4359.patch
+++ b/package/kernel/mac80211/patches/brcm/114-v5.6-0002-brcmfmac-set-F2-blocksize-and-watermark-for-4359.patch
@@ -57,7 +57,7 @@ Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
  
  #ifdef DEBUG
  
-@@ -4206,6 +4208,19 @@ static void brcmf_sdio_firmware_callback
+@@ -4208,6 +4210,19 @@ static void brcmf_sdio_firmware_callback
  			brcmf_sdiod_writeb(sdiod, SBSDIO_DEVICE_CTL, devctl,
  					   &err);
  			break;
diff --git a/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch b/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch
index 64a92a16f6fd..fa12232f1bac 100644
--- a/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch
+++ b/package/kernel/mac80211/patches/subsys/140-tweak-TSQ-setting.patch
@@ -1,6 +1,6 @@
 --- a/net/mac80211/tx.c
 +++ b/net/mac80211/tx.c
-@@ -4024,6 +4024,12 @@ out:
+@@ -4048,6 +4048,12 @@ out:
  netdev_tx_t ieee80211_subif_start_xmit(struct sk_buff *skb,
  				       struct net_device *dev)
  {
diff --git a/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch b/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
index ab845c04e57b..3c5d1d63a860 100644
--- a/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
+++ b/package/kernel/mac80211/patches/subsys/150-disable_addr_notifier.patch
@@ -18,7 +18,7 @@
  static int ieee80211_ifa6_changed(struct notifier_block *nb,
  				  unsigned long data, void *arg)
  {
-@@ -1264,14 +1264,14 @@ int ieee80211_register_hw(struct ieee802
+@@ -1267,14 +1267,14 @@ int ieee80211_register_hw(struct ieee802
  
  	rtnl_unlock();
  
@@ -35,7 +35,7 @@
  	local->ifa6_notifier.notifier_call = ieee80211_ifa6_changed;
  	result = register_inet6addr_notifier(&local->ifa6_notifier);
  	if (result)
-@@ -1280,13 +1280,13 @@ int ieee80211_register_hw(struct ieee802
+@@ -1283,13 +1283,13 @@ int ieee80211_register_hw(struct ieee802
  
  	return 0;
  
@@ -51,8 +51,8 @@
 +#if defined(__disabled__CONFIG_INET) || defined(__disabled__CONFIG_IPV6)
   fail_ifa:
  #endif
- 	rtnl_lock();
-@@ -1314,10 +1314,10 @@ void ieee80211_unregister_hw(struct ieee
+ 	wiphy_unregister(local->hw.wiphy);
+@@ -1317,10 +1317,10 @@ void ieee80211_unregister_hw(struct ieee
  	tasklet_kill(&local->tx_pending_tasklet);
  	tasklet_kill(&local->tasklet);
  
diff --git a/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizing.patch b/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizing.patch
index 3847b19547b8..dcdb94565d6d 100644
--- a/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizing.patch
+++ b/package/kernel/mac80211/patches/subsys/300-mac80211-optimize-skb-resizing.patch
@@ -50,7 +50,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	if (WARN_ON_ONCE(skb_headroom(skb) < rtap_len)) {
 --- a/net/mac80211/tx.c
 +++ b/net/mac80211/tx.c
-@@ -1937,37 +1937,53 @@ static bool ieee80211_tx(struct ieee8021
+@@ -1943,37 +1943,53 @@ static bool ieee80211_tx(struct ieee8021
  }
  
  /* device xmit handlers */
@@ -123,7 +123,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  		wiphy_debug(local->hw.wiphy,
  			    "failed to reallocate TX buffer\n");
  		return -ENOMEM;
-@@ -1983,18 +1999,8 @@ void ieee80211_xmit(struct ieee80211_sub
+@@ -1989,18 +2005,8 @@ void ieee80211_xmit(struct ieee80211_sub
  	struct ieee80211_local *local = sdata->local;
  	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
  	struct ieee80211_hdr *hdr;
@@ -143,7 +143,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  		ieee80211_free_txskb(&local->hw, skb);
  		return;
  	}
-@@ -2784,29 +2790,13 @@ static struct sk_buff *ieee80211_build_h
+@@ -2790,29 +2796,13 @@ static struct sk_buff *ieee80211_build_h
  	}
  
  	skb_pull(skb, skip_header_bytes);
@@ -179,7 +179,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	}
  
  	if (encaps_data)
-@@ -3421,7 +3411,6 @@ static bool ieee80211_xmit_fast(struct i
+@@ -3427,7 +3417,6 @@ static bool ieee80211_xmit_fast(struct i
  	struct ieee80211_local *local = sdata->local;
  	u16 ethertype = (skb->data[12] << 8) | skb->data[13];
  	int extra_head = fast_tx->hdr_len - (ETH_HLEN - 2);
@@ -187,7 +187,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	struct ethhdr eth;
  	struct ieee80211_tx_info *info;
  	struct ieee80211_hdr *hdr = (void *)fast_tx->hdr;
-@@ -3473,10 +3462,7 @@ static bool ieee80211_xmit_fast(struct i
+@@ -3479,10 +3468,7 @@ static bool ieee80211_xmit_fast(struct i
  	 * as the may-encrypt argument for the resize to not account for
  	 * more room than we already have in 'extra_head'
  	 */
diff --git a/package/kernel/mac80211/patches/subsys/301-mac80211-minstrel-remove-divisions-in-tx-status-path.patch b/package/kernel/mac80211/patches/subsys/301-mac80211-minstrel-remove-divisions-in-tx-status-path.patch
index 0bdeded52981..91fb92f1b2b7 100644
--- a/package/kernel/mac80211/patches/subsys/301-mac80211-minstrel-remove-divisions-in-tx-status-path.patch
+++ b/package/kernel/mac80211/patches/subsys/301-mac80211-minstrel-remove-divisions-in-tx-status-path.patch
@@ -57,5 +57,5 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 -	mp->update_interval = 100;
 +	mp->update_interval = HZ / 10;
  
- #ifdef CPTCFG_MAC80211_DEBUGFS
- 	mp->fixed_rate_idx = (u32) -1;
+ 	minstrel_ht_init_cck_rates(mp);
+ 
diff --git a/package/kernel/mac80211/patches/subsys/302-mac80211-minstrel_ht-replace-rate-stats-ewma-with-a-.patch b/package/kernel/mac80211/patches/subsys/302-mac80211-minstrel_ht-replace-rate-stats-ewma-with-a-.patch
index bce9e753784a..78e8527a5c90 100644
--- a/package/kernel/mac80211/patches/subsys/302-mac80211-minstrel_ht-replace-rate-stats-ewma-with-a-.patch
+++ b/package/kernel/mac80211/patches/subsys/302-mac80211-minstrel_ht-replace-rate-stats-ewma-with-a-.patch
@@ -222,14 +222,14 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	mp->update_interval = HZ / 10;
 +	mp->new_avg = true;
  
- #ifdef CPTCFG_MAC80211_DEBUGFS
- 	mp->fixed_rate_idx = (u32) -1;
-@@ -1672,6 +1679,8 @@ minstrel_ht_alloc(struct ieee80211_hw *h
+ 	minstrel_ht_init_cck_rates(mp);
+ 
+@@ -1682,6 +1689,8 @@ static void minstrel_ht_add_debugfs(stru
  			   &mp->fixed_rate_idx);
  	debugfs_create_u32("sample_switch", S_IRUGO | S_IWUSR, debugfsdir,
  			   &mp->sample_switch);
 +	debugfs_create_bool("new_avg", S_IRUGO | S_IWUSR, debugfsdir,
 +			   &mp->new_avg);
+ }
  #endif
  
- 	minstrel_ht_init_cck_rates(mp);
diff --git a/package/kernel/mac80211/patches/subsys/303-mac80211-minstrel_ht-rename-prob_ewma-to-prob_avg-us.patch b/package/kernel/mac80211/patches/subsys/303-mac80211-minstrel_ht-rename-prob_ewma-to-prob_avg-us.patch
index 23419afb12c2..f4c4bdb94e90 100644
--- a/package/kernel/mac80211/patches/subsys/303-mac80211-minstrel_ht-rename-prob_ewma-to-prob_avg-us.patch
+++ b/package/kernel/mac80211/patches/subsys/303-mac80211-minstrel_ht-rename-prob_ewma-to-prob_avg-us.patch
@@ -379,7 +379,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	    minstrel_get_duration(mi->max_prob_rate) * 3 < sample_dur)
  		return -1;
  
-@@ -1705,7 +1705,7 @@ static u32 minstrel_ht_get_expected_thro
+@@ -1711,7 +1711,7 @@ static u32 minstrel_ht_get_expected_thro
  
  	i = mi->max_tp_rate[0] / MCS_GROUP_RATES;
  	j = mi->max_tp_rate[0] % MCS_GROUP_RATES;
diff --git a/package/kernel/mac80211/patches/subsys/306-mac80211-move-store-skb-ack-code-to-its-own-function.patch b/package/kernel/mac80211/patches/subsys/306-mac80211-move-store-skb-ack-code-to-its-own-function.patch
index 72e3d842d228..4f0a699c808d 100644
--- a/package/kernel/mac80211/patches/subsys/306-mac80211-move-store-skb-ack-code-to-its-own-function.patch
+++ b/package/kernel/mac80211/patches/subsys/306-mac80211-move-store-skb-ack-code-to-its-own-function.patch
@@ -13,7 +13,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
 
 --- a/net/mac80211/tx.c
 +++ b/net/mac80211/tx.c
-@@ -2439,6 +2439,33 @@ static int ieee80211_lookup_ra_sta(struc
+@@ -2445,6 +2445,33 @@ static int ieee80211_lookup_ra_sta(struc
  	return 0;
  }
  
@@ -47,7 +47,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  /**
   * ieee80211_build_hdr - build 802.11 header in the given frame
   * @sdata: virtual interface to build the header for
-@@ -2732,26 +2759,8 @@ static struct sk_buff *ieee80211_build_h
+@@ -2738,26 +2765,8 @@ static struct sk_buff *ieee80211_build_h
  	}
  
  	if (unlikely(!multicast && skb->sk &&
diff --git a/package/kernel/mac80211/patches/subsys/307-mac80211-Shrink-the-size-of-ack_frame_id-to-make-roo.patch b/package/kernel/mac80211/patches/subsys/307-mac80211-Shrink-the-size-of-ack_frame_id-to-make-roo.patch
index 9fe2a924df7a..ff25ceff6e18 100644
--- a/package/kernel/mac80211/patches/subsys/307-mac80211-Shrink-the-size-of-ack_frame_id-to-make-roo.patch
+++ b/package/kernel/mac80211/patches/subsys/307-mac80211-Shrink-the-size-of-ack_frame_id-to-make-roo.patch
@@ -56,7 +56,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	if (id < 0) {
 --- a/net/mac80211/tx.c
 +++ b/net/mac80211/tx.c
-@@ -2452,7 +2452,7 @@ static int ieee80211_store_ack_skb(struc
+@@ -2458,7 +2458,7 @@ static int ieee80211_store_ack_skb(struc
  
  		spin_lock_irqsave(&local->ack_status_lock, flags);
  		id = idr_alloc(&local->ack_status_frames, ack_skb,
diff --git a/package/kernel/mac80211/patches/subsys/308-mac80211-Add-new-sta_info-getter-by-sta-vif-addrs.patch b/package/kernel/mac80211/patches/subsys/308-mac80211-Add-new-sta_info-getter-by-sta-vif-addrs.patch
index 75558faac79f..a6b05f4b7497 100644
--- a/package/kernel/mac80211/patches/subsys/308-mac80211-Add-new-sta_info-getter-by-sta-vif-addrs.patch
+++ b/package/kernel/mac80211/patches/subsys/308-mac80211-Add-new-sta_info-getter-by-sta-vif-addrs.patch
@@ -41,7 +41,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  {
 --- a/net/mac80211/sta_info.h
 +++ b/net/mac80211/sta_info.h
-@@ -725,6 +725,10 @@ struct sta_info *sta_info_get(struct iee
+@@ -726,6 +726,10 @@ struct sta_info *sta_info_get(struct iee
  struct sta_info *sta_info_get_bss(struct ieee80211_sub_if_data *sdata,
  				  const u8 *addr);
  
diff --git a/package/kernel/mac80211/patches/subsys/309-mac80211-Import-airtime-calculation-code-from-mt76.patch b/package/kernel/mac80211/patches/subsys/309-mac80211-Import-airtime-calculation-code-from-mt76.patch
index 7bfe299cf483..7f049b8d0cc9 100644
--- a/package/kernel/mac80211/patches/subsys/309-mac80211-Import-airtime-calculation-code-from-mt76.patch
+++ b/package/kernel/mac80211/patches/subsys/309-mac80211-Import-airtime-calculation-code-from-mt76.patch
@@ -29,7 +29,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
 
 --- a/include/net/mac80211.h
 +++ b/include/net/mac80211.h
-@@ -6417,4 +6417,33 @@ void ieee80211_nan_func_match(struct iee
+@@ -6419,4 +6419,33 @@ void ieee80211_nan_func_match(struct iee
  			      struct cfg80211_nan_match_params *match,
  			      gfp_t gfp);
  
diff --git a/package/kernel/mac80211/patches/subsys/310-mac80211-Implement-Airtime-based-Queue-Limit-AQL.patch b/package/kernel/mac80211/patches/subsys/310-mac80211-Implement-Airtime-based-Queue-Limit-AQL.patch
index 690d57cb120e..b76286d15c68 100644
--- a/package/kernel/mac80211/patches/subsys/310-mac80211-Implement-Airtime-based-Queue-Limit-AQL.patch
+++ b/package/kernel/mac80211/patches/subsys/310-mac80211-Implement-Airtime-based-Queue-Limit-AQL.patch
@@ -182,7 +182,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	/* if the dir failed, don't put all the other things into the root! */
 --- a/net/mac80211/debugfs_sta.c
 +++ b/net/mac80211/debugfs_sta.c
-@@ -197,10 +197,12 @@ static ssize_t sta_airtime_read(struct f
+@@ -198,10 +198,12 @@ static ssize_t sta_airtime_read(struct f
  {
  	struct sta_info *sta = file->private_data;
  	struct ieee80211_local *local = sta->sdata->local;
@@ -196,7 +196,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	ssize_t rv;
  	int ac;
  
-@@ -212,19 +214,22 @@ static ssize_t sta_airtime_read(struct f
+@@ -213,19 +215,22 @@ static ssize_t sta_airtime_read(struct f
  		rx_airtime += sta->airtime[ac].rx_airtime;
  		tx_airtime += sta->airtime[ac].tx_airtime;
  		deficit[ac] = sta->airtime[ac].deficit;
@@ -227,7 +227,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
  	rv = simple_read_from_buffer(userbuf, count, ppos, buf, p - buf);
  	kfree(buf);
-@@ -236,7 +241,25 @@ static ssize_t sta_airtime_write(struct
+@@ -237,7 +242,25 @@ static ssize_t sta_airtime_write(struct
  {
  	struct sta_info *sta = file->private_data;
  	struct ieee80211_local *local = sta->sdata->local;
@@ -299,7 +299,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	}
  
  	for (i = 0; i < IEEE80211_NUM_TIDS; i++)
-@@ -1908,6 +1911,41 @@ void ieee80211_sta_register_airtime(stru
+@@ -1913,6 +1916,41 @@ void ieee80211_sta_register_airtime(stru
  }
  EXPORT_SYMBOL(ieee80211_sta_register_airtime);
  
@@ -343,7 +343,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  {
 --- a/net/mac80211/sta_info.h
 +++ b/net/mac80211/sta_info.h
-@@ -127,13 +127,21 @@ enum ieee80211_agg_stop_reason {
+@@ -128,13 +128,21 @@ enum ieee80211_agg_stop_reason {
  /* Debugfs flags to enable/disable use of RX/TX airtime in scheduler */
  #define AIRTIME_USE_TX		BIT(0)
  #define AIRTIME_USE_RX		BIT(1)
@@ -367,7 +367,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  /**
 --- a/net/mac80211/tx.c
 +++ b/net/mac80211/tx.c
-@@ -3676,7 +3676,8 @@ struct ieee80211_txq *ieee80211_next_txq
+@@ -3700,7 +3700,8 @@ struct ieee80211_txq *ieee80211_next_txq
  {
  	struct ieee80211_local *local = hw_to_local(hw);
  	struct ieee80211_txq *ret = NULL;
@@ -377,7 +377,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
  	spin_lock_bh(&local->active_txq_lock[ac]);
  
-@@ -3687,13 +3688,30 @@ struct ieee80211_txq *ieee80211_next_txq
+@@ -3711,13 +3712,30 @@ struct ieee80211_txq *ieee80211_next_txq
  	if (!txqi)
  		goto out;
  
@@ -410,7 +410,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  			list_move_tail(&txqi->schedule_order,
  				       &local->active_txqs[txqi->txq.ac]);
  			goto begin;
-@@ -3747,6 +3765,33 @@ void __ieee80211_schedule_txq(struct iee
+@@ -3771,6 +3789,33 @@ void __ieee80211_schedule_txq(struct iee
  }
  EXPORT_SYMBOL(__ieee80211_schedule_txq);
  
diff --git a/package/kernel/mac80211/patches/subsys/311-mac80211-Use-Airtime-based-Queue-Limits-AQL-on-packe.patch b/package/kernel/mac80211/patches/subsys/311-mac80211-Use-Airtime-based-Queue-Limits-AQL-on-packe.patch
index 103fc4fd52da..a0548d9d057a 100644
--- a/package/kernel/mac80211/patches/subsys/311-mac80211-Use-Airtime-based-Queue-Limits-AQL-on-packe.patch
+++ b/package/kernel/mac80211/patches/subsys/311-mac80211-Use-Airtime-based-Queue-Limits-AQL-on-packe.patch
@@ -112,7 +112,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  				if (sta->status_stats.lost_packets)
 --- a/net/mac80211/tx.c
 +++ b/net/mac80211/tx.c
-@@ -3553,6 +3553,9 @@ struct sk_buff *ieee80211_tx_dequeue(str
+@@ -3559,6 +3559,9 @@ struct sk_buff *ieee80211_tx_dequeue(str
  
  	WARN_ON_ONCE(softirq_count() == 0);
  
@@ -122,7 +122,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  begin:
  	spin_lock_bh(&fq->lock);
  
-@@ -3663,6 +3666,21 @@ begin:
+@@ -3687,6 +3690,21 @@ begin:
  	}
  
  	IEEE80211_SKB_CB(skb)->control.vif = vif;
diff --git a/package/kernel/mac80211/patches/subsys/313-mac80211-Turn-AQL-into-an-NL80211_EXT_FEATURE.patch b/package/kernel/mac80211/patches/subsys/313-mac80211-Turn-AQL-into-an-NL80211_EXT_FEATURE.patch
index 9129560f2410..389f2ae225eb 100644
--- a/package/kernel/mac80211/patches/subsys/313-mac80211-Turn-AQL-into-an-NL80211_EXT_FEATURE.patch
+++ b/package/kernel/mac80211/patches/subsys/313-mac80211-Turn-AQL-into-an-NL80211_EXT_FEATURE.patch
@@ -64,7 +64,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	NUM_NL80211_EXT_FEATURES,
 --- a/net/mac80211/debugfs_sta.c
 +++ b/net/mac80211/debugfs_sta.c
-@@ -201,8 +201,6 @@ static ssize_t sta_airtime_read(struct f
+@@ -202,8 +202,6 @@ static ssize_t sta_airtime_read(struct f
  	char *buf = kzalloc(bufsz, GFP_KERNEL), *p = buf;
  	u64 rx_airtime = 0, tx_airtime = 0;
  	s64 deficit[IEEE80211_NUM_ACS];
@@ -73,7 +73,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	ssize_t rv;
  	int ac;
  
-@@ -214,6 +212,56 @@ static ssize_t sta_airtime_read(struct f
+@@ -215,6 +213,56 @@ static ssize_t sta_airtime_read(struct f
  		rx_airtime += sta->airtime[ac].rx_airtime;
  		tx_airtime += sta->airtime[ac].tx_airtime;
  		deficit[ac] = sta->airtime[ac].deficit;
@@ -130,7 +130,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  		q_limit_l[ac] = sta->airtime[ac].aql_limit_low;
  		q_limit_h[ac] = sta->airtime[ac].aql_limit_high;
  		spin_unlock_bh(&local->active_txq_lock[ac]);
-@@ -221,12 +269,8 @@ static ssize_t sta_airtime_read(struct f
+@@ -222,12 +270,8 @@ static ssize_t sta_airtime_read(struct f
  	}
  
  	p += scnprintf(p, bufsz + buf - p,
@@ -143,7 +143,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  		q_depth[0], q_depth[1], q_depth[2], q_depth[3],
  		q_limit_l[0], q_limit_h[0], q_limit_l[1], q_limit_h[1],
  		q_limit_l[2], q_limit_h[2], q_limit_l[3], q_limit_h[3]),
-@@ -236,11 +280,10 @@ static ssize_t sta_airtime_read(struct f
+@@ -237,11 +281,10 @@ static ssize_t sta_airtime_read(struct f
  	return rv;
  }
  
@@ -156,7 +156,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	u32 ac, q_limit_l, q_limit_h;
  	char _buf[100] = {}, *buf = _buf;
  
-@@ -251,7 +294,7 @@ static ssize_t sta_airtime_write(struct
+@@ -252,7 +295,7 @@ static ssize_t sta_airtime_write(struct
  		return -EFAULT;
  
  	buf[sizeof(_buf) - 1] = '\0';
@@ -165,7 +165,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	    != 3)
  		return -EINVAL;
  
-@@ -261,17 +304,10 @@ static ssize_t sta_airtime_write(struct
+@@ -262,17 +305,10 @@ static ssize_t sta_airtime_write(struct
  	sta->airtime[ac].aql_limit_low = q_limit_l;
  	sta->airtime[ac].aql_limit_high = q_limit_h;
  
@@ -185,7 +185,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
  static ssize_t sta_agg_status_read(struct file *file, char __user *userbuf,
  					size_t count, loff_t *ppos)
-@@ -1001,6 +1037,10 @@ void ieee80211_sta_debugfs_add(struct st
+@@ -1002,6 +1038,10 @@ void ieee80211_sta_debugfs_add(struct st
  				    NL80211_EXT_FEATURE_AIRTIME_FAIRNESS))
  		DEBUGFS_ADD(airtime);
  
@@ -211,7 +211,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
 --- a/net/mac80211/sta_info.c
 +++ b/net/mac80211/sta_info.c
-@@ -1917,6 +1917,9 @@ void ieee80211_sta_update_pending_airtim
+@@ -1922,6 +1922,9 @@ void ieee80211_sta_update_pending_airtim
  {
  	int tx_pending;
  
@@ -223,7 +223,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  			atomic_add(tx_airtime,
 --- a/net/mac80211/sta_info.h
 +++ b/net/mac80211/sta_info.h
-@@ -127,7 +127,6 @@ enum ieee80211_agg_stop_reason {
+@@ -128,7 +128,6 @@ enum ieee80211_agg_stop_reason {
  /* Debugfs flags to enable/disable use of RX/TX airtime in scheduler */
  #define AIRTIME_USE_TX		BIT(0)
  #define AIRTIME_USE_RX		BIT(1)
@@ -233,7 +233,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	u64 rx_airtime;
 --- a/net/mac80211/tx.c
 +++ b/net/mac80211/tx.c
-@@ -3667,7 +3667,7 @@ begin:
+@@ -3691,7 +3691,7 @@ begin:
  
  	IEEE80211_SKB_CB(skb)->control.vif = vif;
  
@@ -242,7 +242,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  		u32 airtime;
  
  		airtime = ieee80211_calc_expected_tx_airtime(hw, vif, txq->sta,
-@@ -3789,7 +3789,7 @@ bool ieee80211_txq_airtime_check(struct
+@@ -3813,7 +3813,7 @@ bool ieee80211_txq_airtime_check(struct
  	struct sta_info *sta;
  	struct ieee80211_local *local = hw_to_local(hw);
  
diff --git a/package/kernel/mac80211/patches/subsys/314-mac80211-drop-data-frames-without-key-on-encrypted-l.patch b/package/kernel/mac80211/patches/subsys/314-mac80211-drop-data-frames-without-key-on-encrypted-l.patch
deleted file mode 100644
index 54e09af3b3a1..000000000000
--- a/package/kernel/mac80211/patches/subsys/314-mac80211-drop-data-frames-without-key-on-encrypted-l.patch
+++ /dev/null
@@ -1,148 +0,0 @@
-From a0761a301746ec2d92d7fcb82af69c0a6a4339aa Mon Sep 17 00:00:00 2001
-From: Johannes Berg <johannes.berg@intel.com>
-Date: Thu, 26 Mar 2020 15:09:42 +0200
-Subject: mac80211: drop data frames without key on encrypted links
-
-If we know that we have an encrypted link (based on having had
-a key configured for TX in the past) then drop all data frames
-in the key selection handler if there's no key anymore.
-
-This fixes an issue with mac80211 internal TXQs - there we can
-buffer frames for an encrypted link, but then if the key is no
-longer there when they're dequeued, the frames are sent without
-encryption. This happens if a station is disconnected while the
-frames are still on the TXQ.
-
-Detecting that a link should be encrypted based on a first key
-having been configured for TX is fine as there are no use cases
-for a connection going from with encryption to no encryption.
-With extended key IDs, however, there is a case of having a key
-configured for only decryption, so we can't just trigger this
-behaviour on a key being configured.
-
-Cc: stable@vger.kernel.org
-Reported-by: Jouni Malinen <j@w1.fi>
-Signed-off-by: Johannes Berg <johannes.berg@intel.com>
-Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
----
- net/mac80211/debugfs_sta.c |  3 ++-
- net/mac80211/key.c         | 20 ++++++++++++--------
- net/mac80211/sta_info.h    |  1 +
- net/mac80211/tx.c          | 12 +++++++++---
- 4 files changed, 24 insertions(+), 12 deletions(-)
-
---- a/net/mac80211/debugfs_sta.c
-+++ b/net/mac80211/debugfs_sta.c
-@@ -5,7 +5,7 @@
-  * Copyright 2007	Johannes Berg <johannes@sipsolutions.net>
-  * Copyright 2013-2014  Intel Mobile Communications GmbH
-  * Copyright(c) 2016 Intel Deutschland GmbH
-- * Copyright (C) 2018 - 2019 Intel Corporation
-+ * Copyright (C) 2018 - 2020 Intel Corporation
-  */
- 
- #include <linux/debugfs.h>
-@@ -78,6 +78,7 @@ static const char * const sta_flag_names
- 	FLAG(MPSP_OWNER),
- 	FLAG(MPSP_RECIPIENT),
- 	FLAG(PS_DELIVER),
-+	FLAG(USES_ENCRYPTION),
- #undef FLAG
- };
- 
---- a/net/mac80211/key.c
-+++ b/net/mac80211/key.c
-@@ -6,7 +6,7 @@
-  * Copyright 2007-2008	Johannes Berg <johannes@sipsolutions.net>
-  * Copyright 2013-2014  Intel Mobile Communications GmbH
-  * Copyright 2015-2017	Intel Deutschland GmbH
-- * Copyright 2018-2019  Intel Corporation
-+ * Copyright 2018-2020  Intel Corporation
-  */
- 
- #include <linux/if_ether.h>
-@@ -262,22 +262,29 @@ static void ieee80211_key_disable_hw_acc
- 			  sta ? sta->sta.addr : bcast_addr, ret);
- }
- 
--int ieee80211_set_tx_key(struct ieee80211_key *key)
-+static int _ieee80211_set_tx_key(struct ieee80211_key *key, bool force)
- {
- 	struct sta_info *sta = key->sta;
- 	struct ieee80211_local *local = key->local;
- 
- 	assert_key_lock(local);
- 
-+	set_sta_flag(sta, WLAN_STA_USES_ENCRYPTION);
-+
- 	sta->ptk_idx = key->conf.keyidx;
- 
--	if (!ieee80211_hw_check(&local->hw, AMPDU_KEYBORDER_SUPPORT))
-+	if (force || !ieee80211_hw_check(&local->hw, AMPDU_KEYBORDER_SUPPORT))
- 		clear_sta_flag(sta, WLAN_STA_BLOCK_BA);
- 	ieee80211_check_fast_xmit(sta);
- 
- 	return 0;
- }
- 
-+int ieee80211_set_tx_key(struct ieee80211_key *key)
-+{
-+	return _ieee80211_set_tx_key(key, false);
-+}
-+
- static void ieee80211_pairwise_rekey(struct ieee80211_key *old,
- 				     struct ieee80211_key *new)
- {
-@@ -441,11 +448,8 @@ static int ieee80211_key_replace(struct
- 		if (pairwise) {
- 			rcu_assign_pointer(sta->ptk[idx], new);
- 			if (new &&
--			    !(new->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX)) {
--				sta->ptk_idx = idx;
--				clear_sta_flag(sta, WLAN_STA_BLOCK_BA);
--				ieee80211_check_fast_xmit(sta);
--			}
-+			    !(new->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX))
-+				_ieee80211_set_tx_key(new, true);
- 		} else {
- 			rcu_assign_pointer(sta->gtk[idx], new);
- 		}
---- a/net/mac80211/sta_info.h
-+++ b/net/mac80211/sta_info.h
-@@ -98,6 +98,7 @@ enum ieee80211_sta_info_flags {
- 	WLAN_STA_MPSP_OWNER,
- 	WLAN_STA_MPSP_RECIPIENT,
- 	WLAN_STA_PS_DELIVER,
-+	WLAN_STA_USES_ENCRYPTION,
- 
- 	NUM_WLAN_STA_FLAGS,
- };
---- a/net/mac80211/tx.c
-+++ b/net/mac80211/tx.c
-@@ -590,10 +590,13 @@ ieee80211_tx_h_select_key(struct ieee802
- 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx->skb);
- 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)tx->skb->data;
- 
--	if (unlikely(info->flags & IEEE80211_TX_INTFL_DONT_ENCRYPT))
-+	if (unlikely(info->flags & IEEE80211_TX_INTFL_DONT_ENCRYPT)) {
- 		tx->key = NULL;
--	else if (tx->sta &&
--		 (key = rcu_dereference(tx->sta->ptk[tx->sta->ptk_idx])))
-+		return TX_CONTINUE;
-+	}
-+
-+	if (tx->sta &&
-+	    (key = rcu_dereference(tx->sta->ptk[tx->sta->ptk_idx])))
- 		tx->key = key;
- 	else if (ieee80211_is_group_privacy_action(tx->skb) &&
- 		(key = rcu_dereference(tx->sdata->default_multicast_key)))
-@@ -654,6 +657,9 @@ ieee80211_tx_h_select_key(struct ieee802
- 		if (!skip_hw && tx->key &&
- 		    tx->key->flags & KEY_FLAG_UPLOADED_TO_HARDWARE)
- 			info->control.hw_key = &tx->key->conf;
-+	} else if (!ieee80211_is_mgmt(hdr->frame_control) && tx->sta &&
-+		   test_sta_flag(tx->sta, WLAN_STA_USES_ENCRYPTION)) {
-+		return TX_DROP;
- 	}
- 
- 	return TX_CONTINUE;
diff --git a/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch b/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch
index a32f1b8e4dbc..ca028dd833a7 100644
--- a/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch
+++ b/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch
@@ -129,7 +129,7 @@
  	local->hw.max_mtu = IEEE80211_MAX_DATA_LEN;
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -630,6 +630,7 @@ const struct nla_policy nl80211_policy[N
+@@ -628,6 +628,7 @@ const struct nla_policy nl80211_policy[N
  					.len = SAE_PASSWORD_MAX_LEN },
  	[NL80211_ATTR_TWT_RESPONDER] = { .type = NLA_FLAG },
  	[NL80211_ATTR_HE_OBSS_PD] = NLA_POLICY_NESTED(he_obss_pd_policy),
@@ -137,7 +137,7 @@
  };
  
  /* policy for the key attributes */
-@@ -2994,6 +2995,20 @@ static int nl80211_set_wiphy(struct sk_b
+@@ -2992,6 +2993,20 @@ static int nl80211_set_wiphy(struct sk_b
  		if (result)
  			return result;
  	}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
