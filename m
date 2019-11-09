Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30054F6036
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 17:07:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zISU0upJq4X3G+O2YaunVe/ROye4Z3z17GFtufdNa2s=; b=B0qXbVwpWFLxJQ
	rmx8C4lRqqhOssYVSpHPLd8XWe4KOZ3Klru1Fq0ylZnsFMD8bON2zi2rVtx9RMSywnItsNuAKc+tz
	23TZcSYYsyS3vfx4ejGmq6MmemMzPAbofo5RsUXiPkLZOhpibaMip8a4GNtANM0RzYQMIR868qCsV
	Lqwn4iMfHA8G1pKCLvjhg+Whg8lDJEMt++3PkMGnYHXwNWK119uZdE5asmGvAViki9VNBr7cCE5Rp
	gbj6ew5nwhmkDBD45glMB/RKaZb0MPPc/llTLDmQtLM1zHG4WVP24YU6nyXPWNxDkeFoGFFHtoExx
	eFMiA7M3S8V5+Pewbu3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTGY-00080y-A3; Sat, 09 Nov 2019 16:07:10 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTG0-0007gL-84
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 16:06:40 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 479MT26hfGzKmhg;
 Sat,  9 Nov 2019 17:06:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id DNi-SgS0TNyt; Sat,  9 Nov 2019 17:06:26 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  9 Nov 2019 17:06:04 +0100
Message-Id: <20191109160606.26657-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_080636_603384_5F6F559D 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/3] ath10-ct: Update to version 2019-11-07
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, greearb@candelatech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This version adds support for ath10k-ct based on kernel 5.4.
The patches are now also covering ath10k-ct based on kernel 5.4.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/ath10k-ct/Makefile             |   6 +-
 ...rt-for-configuring-management-packet.patch |   4 +-
 ...ble-out-of-bound-access-of-ath10k_ra.patch |   2 +-
 ...rect-multicast-broadcast-rate-settin.patch |   4 +-
 ...64-ath10k-commit-rates-from-mac80211.patch |  38 +-
 ...-the-vif-to-cancel_remain_on_channel.patch |   4 +-
 ...rolling-support-for-various-chipsets.patch | 552 +++++++++++++++++-
 ...h10k-4.16-use-tpt-trigger-by-default.patch |  45 +-
 ...ilable-channels-via-DT-ieee80211-fre.patch |   2 +-
 ...station-exists-before-forwarding-tx-.patch |  11 +
 10 files changed, 628 insertions(+), 40 deletions(-)

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index dbf75fe174..b32d1923f7 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=
 
 PKG_SOURCE_URL:=https://github.com/greearb/ath10k-ct.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2019-09-09
-PKG_SOURCE_VERSION:=5e8cd86f90dac966d12df6ece84ac41458d0e95f
-PKG_MIRROR_HASH:=dc1097f3a7b4b7e346918f206746d00a0b7df07ae3be9b89be55dfaef3cbbe45
+PKG_SOURCE_DATE:=2019-11-07
+PKG_SOURCE_VERSION:=080cd781e12dfc2a83f41c4de7a7257398943839
+PKG_MIRROR_HASH:=2a66e0188b699b4e240ae9d605f36a3bba072f33e6ce71e370b65dafcc5ad0db
 
 # Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
 # Probably this should match as closely as
diff --git a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
index e67003c5a7..526ec2f9b6 100644
--- a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
+++ b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
@@ -43,7 +43,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
  {
  	switch ((mcs_map >> (2 * nss)) & 0x3) {
-@@ -6405,9 +6421,10 @@ static void ath10k_bss_info_changed(stru
+@@ -6410,9 +6426,10 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -56,7 +56,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  
  	mutex_lock(&ar->conf_mutex);
  
-@@ -6613,6 +6630,30 @@ static void ath10k_bss_info_changed(stru
+@@ -6618,6 +6635,30 @@ static void ath10k_bss_info_changed(stru
  				    arvif->vdev_id,  ret);
  	}
  
diff --git a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
index a24029983c..197a6f5100 100644
--- a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
+++ b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
@@ -26,7 +26,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  		if (ath10k_rates[i].bitrate == bitrate)
  			return hw_value_prefix | ath10k_rates[i].hw_value;
  	}
-@@ -6636,22 +6636,22 @@ static void ath10k_bss_info_changed(stru
+@@ -6641,22 +6641,22 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
index f6fd75b7e5..dc53c260b8 100644
--- a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
+++ b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
@@ -17,7 +17,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6421,8 +6421,8 @@ static void ath10k_bss_info_changed(stru
+@@ -6426,8 +6426,8 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -28,7 +28,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
  	enum nl80211_band band;
  	const struct ieee80211_supported_band *sband;
  
-@@ -6595,7 +6595,11 @@ static void ath10k_bss_info_changed(stru
+@@ -6600,7 +6600,11 @@ static void ath10k_bss_info_changed(stru
  	if (changed & BSS_CHANGED_MCAST_RATE &&
  	    !WARN_ON(ath10k_mac_vif_chan(arvif->vif, &def))) {
  		band = def.chan->band;
diff --git a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
index aab435bccd..6b704ed85c 100644
--- a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
+++ b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
@@ -11,7 +11,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6617,6 +6617,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6622,6 +6622,7 @@ static void ath10k_bss_info_changed(stru
  			   "mac vdev %d mcast_rate %x\n",
  			   arvif->vdev_id, rate);
  
@@ -19,7 +19,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6625,6 +6626,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6630,6 +6631,7 @@ static void ath10k_bss_info_changed(stru
  				    "failed to set mcast rate on vdev %i: %d\n",
  				    arvif->vdev_id,  ret);
  
@@ -27,7 +27,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6651,6 +6653,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6656,6 +6658,7 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
@@ -37,7 +37,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  						hw_rate_code);
 --- a/ath10k-5.2/mac.c
 +++ b/ath10k-5.2/mac.c
-@@ -6732,6 +6732,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6737,6 +6737,7 @@ static void ath10k_bss_info_changed(stru
  			   "mac vdev %d mcast_rate %x\n",
  			   arvif->vdev_id, rate);
  
@@ -45,7 +45,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6740,6 +6741,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6745,6 +6746,7 @@ static void ath10k_bss_info_changed(stru
  				    "failed to set mcast rate on vdev %i: %d\n",
  				    arvif->vdev_id,  ret);
  
@@ -53,7 +53,33 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6766,6 +6768,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6771,6 +6773,7 @@ static void ath10k_bss_info_changed(stru
+ 			return;
+ 		}
+ 
++		arvif->mgt_rate[def.chan->band] = hw_rate_code;
+ 		vdev_param = ar->wmi.vdev_param->mgmt_rate;
+ 		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
+ 						hw_rate_code);
+--- a/ath10k-5.4/mac.c
++++ b/ath10k-5.4/mac.c
+@@ -6790,6 +6790,7 @@ static void ath10k_bss_info_changed(stru
+ 			   "mac vdev %d mcast_rate %x\n",
+ 			   arvif->vdev_id, rate);
+ 
++		arvif->mcast_rate[band] = rate;
+ 		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
+ 		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
+ 						vdev_param, rate);
+@@ -6798,6 +6799,7 @@ static void ath10k_bss_info_changed(stru
+ 				    "failed to set mcast rate on vdev %i: %d\n",
+ 				    arvif->vdev_id,  ret);
+ 
++		arvif->bcast_rate[band] = rate;
+ 		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
+ 		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
+ 						vdev_param, rate);
+@@ -6824,6 +6826,7 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch b/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch
index ee9667ccb0..f39c8212de 100644
--- a/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch
+++ b/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch
@@ -17,7 +17,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -7775,7 +7775,8 @@ exit:
+@@ -7780,7 +7780,8 @@ exit:
  	return ret;
  }
  
@@ -29,7 +29,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
 --- a/ath10k-5.2/mac.c
 +++ b/ath10k-5.2/mac.c
-@@ -7883,7 +7883,8 @@ exit:
+@@ -7888,7 +7888,8 @@ exit:
  	return ret;
  }
  
diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index ba42fc1d2d..943261d4a4 100644
--- a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -161,7 +161,7 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -3167,6 +3173,10 @@ int ath10k_core_start(struct ath10k *ar,
+@@ -3170,6 +3176,10 @@ int ath10k_core_start(struct ath10k *ar,
  			ath10k_wmi_check_apply_board_power_ctl_table(ar);
  	}
  
@@ -172,7 +172,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3421,9 +3431,18 @@ static void ath10k_core_register_work(st
+@@ -3424,9 +3434,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -191,7 +191,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3481,6 +3500,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3484,6 +3503,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -464,7 +464,7 @@ v13:
  static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
 --- a/ath10k-4.19/wmi.c
 +++ b/ath10k-4.19/wmi.c
-@@ -8070,6 +8070,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
+@@ -8071,6 +8071,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
  	return skb;
  }
  
@@ -514,7 +514,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -9821,6 +9864,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -9822,6 +9865,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -524,7 +524,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9891,6 +9937,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -9892,6 +9938,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -533,7 +533,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9969,6 +10017,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -9970,6 +10018,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -542,7 +542,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -10039,6 +10089,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -10040,6 +10090,8 @@ static const struct wmi_ops wmi_10_2_4_o
  	.gen_pdev_enable_adaptive_cca =
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
@@ -551,7 +551,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10119,6 +10171,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -10120,6 +10172,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
@@ -683,7 +683,7 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -3452,6 +3458,10 @@ int ath10k_core_start(struct ath10k *ar,
+@@ -3455,6 +3461,10 @@ int ath10k_core_start(struct ath10k *ar,
  			ath10k_wmi_check_apply_board_power_ctl_table(ar);
  	}
  
@@ -694,7 +694,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3708,9 +3718,18 @@ static void ath10k_core_register_work(st
+@@ -3711,9 +3721,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -713,7 +713,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3770,6 +3789,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3773,6 +3792,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -732,7 +732,7 @@ v13:
  
  #include "htt.h"
  #include "htc.h"
-@@ -1441,6 +1442,13 @@ struct ath10k {
+@@ -1445,6 +1446,13 @@ struct ath10k {
  	} testmode;
  
  	struct {
@@ -978,7 +978,7 @@ v13:
  static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
 --- a/ath10k-5.2/wmi.c
 +++ b/ath10k-5.2/wmi.c
-@@ -8286,6 +8286,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
+@@ -8295,6 +8295,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
  	return skb;
  }
  
@@ -1028,7 +1028,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -10058,6 +10101,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -10067,6 +10110,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -1038,7 +1038,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10128,6 +10174,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -10137,6 +10183,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -1047,7 +1047,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10207,6 +10255,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -10216,6 +10264,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -1056,7 +1056,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -10278,6 +10328,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -10287,6 +10337,8 @@ static const struct wmi_ops wmi_10_2_4_o
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
  	.gen_bb_timing = ath10k_wmi_10_2_4_op_gen_bb_timing,
@@ -1065,7 +1065,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10359,6 +10411,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -10368,6 +10420,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
@@ -1118,3 +1118,517 @@ v13:
  struct wmi_ext_resource_config_10_4_cmd {
  	/* contains enum wmi_host_platform_type */
  	__le32 host_platform_config;
+--- a/ath10k-5.4/Kconfig
++++ b/ath10k-5.4/Kconfig
+@@ -66,6 +66,16 @@ config ATH10K_DEBUGFS
+ 
+ 	  If unsure, say Y to make it easier to debug problems.
+ 
++config ATH10K_LEDS
++	bool "Atheros ath10k LED support"
++	depends on ATH10K
++	select MAC80211_LEDS
++	select LEDS_CLASS
++	select NEW_LEDS
++	default y
++	---help---
++	  This option is necessary, if you want LED support for chipset connected led pins. If unsure, say N.
++
+ config ATH10K_SPECTRAL
+ 	bool "Atheros ath10k spectral scan support"
+ 	depends on ATH10K_DEBUGFS
+--- a/ath10k-5.4/Makefile
++++ b/ath10k-5.4/Makefile
+@@ -19,6 +19,7 @@ ath10k_core-$(CONFIG_ATH10K_SPECTRAL) +=
+ ath10k_core-$(CONFIG_NL80211_TESTMODE) += testmode.o
+ ath10k_core-$(CONFIG_ATH10K_TRACING) += trace.o
+ ath10k_core-$(CONFIG_THERMAL) += thermal.o
++ath10k_core-$(CONFIG_ATH10K_LEDS) += leds.o
+ ath10k_core-$(CONFIG_MAC80211_DEBUGFS) += debugfs_sta.o
+ ath10k_core-$(CONFIG_PM) += wow.o
+ ath10k_core-$(CONFIG_DEV_COREDUMP) += coredump.o
+--- a/ath10k-5.4/core.c
++++ b/ath10k-5.4/core.c
+@@ -25,6 +25,7 @@
+ #include "testmode.h"
+ #include "wmi-ops.h"
+ #include "coredump.h"
++#include "leds.h"
+ 
+ /* Disable ath10k-ct DBGLOG output by default */
+ unsigned int ath10k_debug_mask = ATH10K_DBG_NO_DBGLOG;
+@@ -67,6 +68,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA988X_2_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca988x hw2.0",
++		.led_pin = 1,
+ 		.patch_load_addr = QCA988X_HW_2_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
+@@ -137,6 +139,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA9887_1_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca9887 hw1.0",
++		.led_pin = 1,
+ 		.patch_load_addr = QCA9887_HW_1_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_ALL,
+@@ -344,6 +347,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA99X0_2_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca99x0 hw2.0",
++		.led_pin = 17,
+ 		.patch_load_addr = QCA99X0_HW_2_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.otp_exe_param = 0x00000700,
+@@ -385,6 +389,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA9984_1_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca9984/qca9994 hw1.0",
++		.led_pin = 17,
+ 		.patch_load_addr = QCA9984_HW_1_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
+@@ -433,6 +438,7 @@ static const struct ath10k_hw_params ath
+ 		.dev_id = QCA9888_2_0_DEVICE_ID,
+ 		.bus = ATH10K_BUS_PCI,
+ 		.name = "qca9888 hw2.0",
++		.led_pin = 17,
+ 		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
+ 		.uart_pin = 7,
+ 		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
+@@ -3525,6 +3531,10 @@ int ath10k_core_start(struct ath10k *ar,
+ 			ath10k_wmi_check_apply_board_power_ctl_table(ar);
+ 	}
+ 
++	status = ath10k_leds_start(ar);
++	if (status)
++		goto err_hif_stop;
++
+ 	return 0;
+ 
+ err_hif_stop:
+@@ -3781,9 +3791,18 @@ static void ath10k_core_register_work(st
+ 		goto err_spectral_destroy;
+ 	}
+ 
++	status = ath10k_leds_register(ar);
++	if (status) {
++		ath10k_err(ar, "could not register leds: %d\n",
++			   status);
++		goto err_thermal_unregister;
++	}
++
+ 	set_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags);
+ 	return;
+ 
++err_thermal_unregister:
++	ath10k_thermal_unregister(ar);
+ err_spectral_destroy:
+ 	ath10k_spectral_destroy(ar);
+ err_debug_destroy:
+@@ -3843,6 +3862,8 @@ void ath10k_core_unregister(struct ath10
+ 	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
+ 		return;
+ 
++	ath10k_leds_unregister(ar);
++
+ 	ath10k_thermal_unregister(ar);
+ 	/* Stop spectral before unregistering from mac80211 to remove the
+ 	 * relayfs debugfs file cleanly. Otherwise the parent debugfs tree
+--- a/ath10k-5.4/core.h
++++ b/ath10k-5.4/core.h
+@@ -14,6 +14,7 @@
+ #include <linux/pci.h>
+ #include <linux/uuid.h>
+ #include <linux/time.h>
++#include <linux/leds.h>
+ 
+ #include "htt.h"
+ #include "htc.h"
+@@ -1465,6 +1466,13 @@ struct ath10k {
+ 	} testmode;
+ 
+ 	struct {
++		struct gpio_led wifi_led;
++		struct led_classdev cdev;
++		char label[48];
++		u32 gpio_state_pin;
++	} leds;
++
++	struct {
+ 		/* protected by data_lock */
+ 		u32 fw_crash_counter;
+ 		u32 fw_warm_reset_counter;
+--- a/ath10k-5.4/hw.h
++++ b/ath10k-5.4/hw.h
+@@ -518,6 +518,7 @@ struct ath10k_hw_params {
+ 	const char *name;
+ 	u32 patch_load_addr;
+ 	int uart_pin;
++	int led_pin;
+ 	u32 otp_exe_param;
+ 
+ 	/* Type of hw cycle counter wraparound logic, for more info
+--- /dev/null
++++ b/ath10k-5.4/leds.c
+@@ -0,0 +1,103 @@
++/*
++ * Copyright (c) 2005-2011 Atheros Communications Inc.
++ * Copyright (c) 2011-2017 Qualcomm Atheros, Inc.
++ * Copyright (c) 2018 Sebastian Gottschall <s.gottschall@dd-wrt.com>
++ * Copyright (c) 2018, The Linux Foundation. All rights reserved.
++ *
++ * Permission to use, copy, modify, and/or distribute this software for any
++ * purpose with or without fee is hereby granted, provided that the above
++ * copyright notice and this permission notice appear in all copies.
++ *
++ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
++ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
++ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
++ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
++ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
++ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
++ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
++ */
++
++#include <linux/leds.h>
++
++#include "core.h"
++#include "wmi.h"
++#include "wmi-ops.h"
++
++#include "leds.h"
++
++static int ath10k_leds_set_brightness_blocking(struct led_classdev *led_cdev,
++					       enum led_brightness brightness)
++{
++	struct ath10k *ar = container_of(led_cdev, struct ath10k,
++					 leds.cdev);
++	struct gpio_led *led = &ar->leds.wifi_led;
++
++	mutex_lock(&ar->conf_mutex);
++
++	if (ar->state != ATH10K_STATE_ON)
++		goto out;
++
++	ar->leds.gpio_state_pin = (brightness != LED_OFF) ^ led->active_low;
++	ath10k_wmi_gpio_output(ar, led->gpio, ar->leds.gpio_state_pin);
++
++out:
++	mutex_unlock(&ar->conf_mutex);
++
++	return 0;
++}
++
++int ath10k_leds_start(struct ath10k *ar)
++{
++	if (ar->hw_params.led_pin == 0)
++		/* leds not supported */
++		return 0;
++
++	/* under some circumstances, the gpio pin gets reconfigured
++	 * to default state by the firmware, so we need to
++	 * reconfigure it this behaviour has only ben seen on
++	 * QCA9984 and QCA99XX devices so far
++	 */
++	ath10k_wmi_gpio_config(ar, ar->hw_params.led_pin, 0,
++			       WMI_GPIO_PULL_NONE, WMI_GPIO_INTTYPE_DISABLE);
++	ath10k_wmi_gpio_output(ar, ar->hw_params.led_pin, 1);
++
++	return 0;
++}
++
++int ath10k_leds_register(struct ath10k *ar)
++{
++	int ret;
++
++	if (ar->hw_params.led_pin == 0)
++		/* leds not supported */
++		return 0;
++
++	snprintf(ar->leds.label, sizeof(ar->leds.label), "ath10k-%s",
++		 wiphy_name(ar->hw->wiphy));
++	ar->leds.wifi_led.active_low = 1;
++	ar->leds.wifi_led.gpio = ar->hw_params.led_pin;
++	ar->leds.wifi_led.name = ar->leds.label;
++	ar->leds.wifi_led.default_state = LEDS_GPIO_DEFSTATE_KEEP;
++
++	ar->leds.cdev.name = ar->leds.label;
++	ar->leds.cdev.brightness_set_blocking = ath10k_leds_set_brightness_blocking;
++
++	/* FIXME: this assignment doesn't make sense as it's NULL, remove it? */
++	ar->leds.cdev.default_trigger = ar->leds.wifi_led.default_trigger;
++
++	ret = led_classdev_register(wiphy_dev(ar->hw->wiphy), &ar->leds.cdev);
++	if (ret)
++		return ret;
++
++	return 0;
++}
++
++void ath10k_leds_unregister(struct ath10k *ar)
++{
++	if (ar->hw_params.led_pin == 0)
++		/* leds not supported */
++		return;
++
++	led_classdev_unregister(&ar->leds.cdev);
++}
++
+--- /dev/null
++++ b/ath10k-5.4/leds.h
+@@ -0,0 +1,41 @@
++/*
++ * Copyright (c) 2018, The Linux Foundation. All rights reserved.
++ *
++ * Permission to use, copy, modify, and/or distribute this software for any
++ * purpose with or without fee is hereby granted, provided that the above
++ * copyright notice and this permission notice appear in all copies.
++ *
++ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
++ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
++ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
++ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
++ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
++ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
++ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
++ */
++#ifndef _LEDS_H_
++#define _LEDS_H_
++
++#include "core.h"
++
++#ifdef CONFIG_ATH10K_LEDS
++void ath10k_leds_unregister(struct ath10k *ar);
++int ath10k_leds_start(struct ath10k *ar);
++int ath10k_leds_register(struct ath10k *ar);
++#else
++static inline void ath10k_leds_unregister(struct ath10k *ar)
++{
++}
++
++static inline int ath10k_leds_start(struct ath10k *ar)
++{
++	return 0;
++}
++
++static inline int ath10k_leds_register(struct ath10k *ar)
++{
++	return 0;
++}
++
++#endif
++#endif /* _LEDS_H_ */
+--- a/ath10k-5.4/mac.c
++++ b/ath10k-5.4/mac.c
+@@ -24,6 +24,7 @@
+ #include "wmi-tlv.h"
+ #include "wmi-ops.h"
+ #include "wow.h"
++#include "leds.h"
+ 
+ /*********/
+ /* Rates */
+--- a/ath10k-5.4/wmi-ops.h
++++ b/ath10k-5.4/wmi-ops.h
+@@ -218,7 +218,10 @@ struct wmi_ops {
+ 	struct sk_buff *(*gen_bb_timing)
+ 			(struct ath10k *ar,
+ 			 const struct wmi_bb_timing_cfg_arg *arg);
++	struct sk_buff *(*gen_gpio_config)(struct ath10k *ar, u32 gpio_num,
++					   u32 input, u32 pull_type, u32 intr_mode);
+ 
++	struct sk_buff *(*gen_gpio_output)(struct ath10k *ar, u32 gpio_num, u32 set);
+ };
+ 
+ int ath10k_wmi_cmd_send(struct ath10k *ar, struct sk_buff *skb, u32 cmd_id);
+@@ -1105,6 +1108,35 @@ ath10k_wmi_force_fw_hang(struct ath10k *
+ 	return ath10k_wmi_cmd_send(ar, skb, ar->wmi.cmd->force_fw_hang_cmdid);
+ }
+ 
++static inline int ath10k_wmi_gpio_config(struct ath10k *ar, u32 gpio_num,
++					 u32 input, u32 pull_type, u32 intr_mode)
++{
++	struct sk_buff *skb;
++
++	if (!ar->wmi.ops->gen_gpio_config)
++		return -EOPNOTSUPP;
++
++	skb = ar->wmi.ops->gen_gpio_config(ar, gpio_num, input, pull_type, intr_mode);
++	if (IS_ERR(skb))
++		return PTR_ERR(skb);
++
++	return ath10k_wmi_cmd_send(ar, skb, ar->wmi.cmd->gpio_config_cmdid);
++}
++
++static inline int ath10k_wmi_gpio_output(struct ath10k *ar, u32 gpio_num, u32 set)
++{
++	struct sk_buff *skb;
++
++	if (!ar->wmi.ops->gen_gpio_config)
++		return -EOPNOTSUPP;
++
++	skb = ar->wmi.ops->gen_gpio_output(ar, gpio_num, set);
++	if (IS_ERR(skb))
++		return PTR_ERR(skb);
++
++	return ath10k_wmi_cmd_send(ar, skb, ar->wmi.cmd->gpio_output_cmdid);
++}
++
+ static inline int
+ ath10k_wmi_dbglog_cfg(struct ath10k *ar, u64 module_enable, u32 log_level)
+ {
+--- a/ath10k-5.4/wmi-tlv.c
++++ b/ath10k-5.4/wmi-tlv.c
+@@ -4364,6 +4364,8 @@ static const struct wmi_ops wmi_tlv_ops
+ 	.gen_echo = ath10k_wmi_tlv_op_gen_echo,
+ 	.gen_vdev_spectral_conf = ath10k_wmi_tlv_op_gen_vdev_spectral_conf,
+ 	.gen_vdev_spectral_enable = ath10k_wmi_tlv_op_gen_vdev_spectral_enable,
++	/* .gen_gpio_config not implemented */
++	/* .gen_gpio_output not implemented */
+ };
+ 
+ static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
+--- a/ath10k-5.4/wmi.c
++++ b/ath10k-5.4/wmi.c
+@@ -8295,6 +8295,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
+ 	return skb;
+ }
+ 
++static struct sk_buff *ath10k_wmi_op_gen_gpio_config(struct ath10k *ar,
++						     u32 gpio_num, u32 input,
++						     u32 pull_type, u32 intr_mode)
++{
++	struct wmi_gpio_config_cmd *cmd;
++	struct sk_buff *skb;
++
++	skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
++	if (!skb)
++		return ERR_PTR(-ENOMEM);
++
++	cmd = (struct wmi_gpio_config_cmd *)skb->data;
++	cmd->pull_type = __cpu_to_le32(pull_type);
++	cmd->gpio_num = __cpu_to_le32(gpio_num);
++	cmd->input = __cpu_to_le32(input);
++	cmd->intr_mode = __cpu_to_le32(intr_mode);
++
++	ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi gpio_config gpio_num 0x%08x input 0x%08x pull_type 0x%08x intr_mode 0x%08x\n",
++		   gpio_num, input, pull_type, intr_mode);
++
++	return skb;
++}
++
++static struct sk_buff *ath10k_wmi_op_gen_gpio_output(struct ath10k *ar,
++						     u32 gpio_num, u32 set)
++{
++	struct wmi_gpio_output_cmd *cmd;
++	struct sk_buff *skb;
++
++	skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
++	if (!skb)
++		return ERR_PTR(-ENOMEM);
++
++	cmd = (struct wmi_gpio_output_cmd *)skb->data;
++	cmd->gpio_num = __cpu_to_le32(gpio_num);
++	cmd->set = __cpu_to_le32(set);
++
++	ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi gpio_output gpio_num 0x%08x set 0x%08x\n",
++		   gpio_num, set);
++
++	return skb;
++}
++
+ static struct sk_buff *
+ ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
+ 			     enum wmi_sta_ps_mode psmode)
+@@ -10092,6 +10135,9 @@ static const struct wmi_ops wmi_ops = {
+ 	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
+ 	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
+ 	.gen_echo = ath10k_wmi_op_gen_echo,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
++
+ 	/* .gen_bcn_tmpl not implemented */
+ 	/* .gen_prb_tmpl not implemented */
+ 	/* .gen_p2p_go_bcn_ie not implemented */
+@@ -10162,6 +10208,8 @@ static const struct wmi_ops wmi_10_1_ops
+ 	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
+ 	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
+ 	.gen_echo = ath10k_wmi_op_gen_echo,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ 	/* .gen_bcn_tmpl not implemented */
+ 	/* .gen_prb_tmpl not implemented */
+ 	/* .gen_p2p_go_bcn_ie not implemented */
+@@ -10241,6 +10289,8 @@ static const struct wmi_ops wmi_10_2_ops
+ 	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
+ 	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
+ 	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ 	/* .gen_pdev_enable_adaptive_cca not implemented */
+ };
+ 
+@@ -10312,6 +10362,8 @@ static const struct wmi_ops wmi_10_2_4_o
+ 		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
+ 	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
+ 	.gen_bb_timing = ath10k_wmi_10_2_4_op_gen_bb_timing,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ 	/* .gen_bcn_tmpl not implemented */
+ 	/* .gen_prb_tmpl not implemented */
+ 	/* .gen_p2p_go_bcn_ie not implemented */
+@@ -10393,6 +10445,8 @@ static const struct wmi_ops wmi_10_4_ops
+ 	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
+ 	.gen_echo = ath10k_wmi_op_gen_echo,
+ 	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
++	.gen_gpio_config = ath10k_wmi_op_gen_gpio_config,
++	.gen_gpio_output = ath10k_wmi_op_gen_gpio_output,
+ };
+ 
+ int ath10k_wmi_attach(struct ath10k *ar)
+--- a/ath10k-5.4/wmi.h
++++ b/ath10k-5.4/wmi.h
+@@ -3110,6 +3110,41 @@ enum wmi_10_4_feature_mask {
+ 
+ };
+ 
++/* WMI_GPIO_CONFIG_CMDID */
++enum {
++	WMI_GPIO_PULL_NONE,
++	WMI_GPIO_PULL_UP,
++	WMI_GPIO_PULL_DOWN,
++};
++
++enum {
++	WMI_GPIO_INTTYPE_DISABLE,
++	WMI_GPIO_INTTYPE_RISING_EDGE,
++	WMI_GPIO_INTTYPE_FALLING_EDGE,
++	WMI_GPIO_INTTYPE_BOTH_EDGE,
++	WMI_GPIO_INTTYPE_LEVEL_LOW,
++	WMI_GPIO_INTTYPE_LEVEL_HIGH
++};
++
++/* WMI_GPIO_CONFIG_CMDID */
++struct wmi_gpio_config_cmd {
++	__le32 gpio_num;             /* GPIO number to be setup */
++	__le32 input;                /* 0 - Output/ 1 - Input */
++	__le32 pull_type;            /* Pull type defined above */
++	__le32 intr_mode;            /* Interrupt mode defined above (Input) */
++} __packed;
++
++/* WMI_GPIO_OUTPUT_CMDID */
++struct wmi_gpio_output_cmd {
++	__le32 gpio_num;    /* GPIO number to be setup */
++	__le32 set;         /* Set the GPIO pin*/
++} __packed;
++
++/* WMI_GPIO_INPUT_EVENTID */
++struct wmi_gpio_input_event {
++	__le32 gpio_num;    /* GPIO number which changed state */
++} __packed;
++
+ struct wmi_ext_resource_config_10_4_cmd {
+ 	/* contains enum wmi_host_platform_type */
+ 	__le32 host_platform_config;
diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
index d730f9931f..42c8498df8 100644
--- a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
+++ b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
@@ -16,7 +16,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
 
 --- a/ath10k-4.19/core.h
 +++ b/ath10k-4.19/core.h
-@@ -1488,6 +1488,10 @@ struct ath10k {
+@@ -1489,6 +1489,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
@@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -9983,7 +9983,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9984,7 +9984,7 @@ int ath10k_mac_register(struct ath10k *a
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
  #ifdef CPTCFG_MAC80211_LEDS
@@ -53,7 +53,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  #endif
 --- a/ath10k-5.2/core.h
 +++ b/ath10k-5.2/core.h
-@@ -1543,6 +1543,10 @@ struct ath10k {
+@@ -1548,6 +1548,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
@@ -79,7 +79,44 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/ath10k-5.2/mac.c
 +++ b/ath10k-5.2/mac.c
-@@ -10179,7 +10179,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -10182,7 +10182,7 @@ int ath10k_mac_register(struct ath10k *a
+ 	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
+ 
+ #ifdef CPTCFG_MAC80211_LEDS
+-	ieee80211_create_tpt_led_trigger(ar->hw,
++	ar->led_default_trigger = ieee80211_create_tpt_led_trigger(ar->hw,
+ 		IEEE80211_TPT_LEDTRIG_FL_RADIO, ath10k_tpt_blink,
+ 		ARRAY_SIZE(ath10k_tpt_blink));
+ #endif
+--- a/ath10k-5.4/core.h
++++ b/ath10k-5.4/core.h
+@@ -1569,6 +1569,10 @@ struct ath10k {
+ 	u8 csi_data[4096];
+ 	u16 csi_data_len;
+ 
++#ifdef CPTCFG_MAC80211_LEDS
++	const char *led_default_trigger;
++#endif
++
+ 	/* must be last */
+ 	u8 drv_priv[0] __aligned(sizeof(void *));
+ };
+--- a/ath10k-5.4/leds.c
++++ b/ath10k-5.4/leds.c
+@@ -81,9 +81,7 @@ int ath10k_leds_register(struct ath10k *
+ 
+ 	ar->leds.cdev.name = ar->leds.label;
+ 	ar->leds.cdev.brightness_set_blocking = ath10k_leds_set_brightness_blocking;
+-
+-	/* FIXME: this assignment doesn't make sense as it's NULL, remove it? */
+-	ar->leds.cdev.default_trigger = ar->leds.wifi_led.default_trigger;
++	ar->leds.cdev.default_trigger = ar->led_default_trigger;
+ 
+ 	ret = led_classdev_register(wiphy_dev(ar->hw->wiphy), &ar->leds.cdev);
+ 	if (ret)
+--- a/ath10k-5.4/mac.c
++++ b/ath10k-5.4/mac.c
+@@ -10364,7 +10364,7 @@ int ath10k_mac_register(struct ath10k *a
  	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
index 8fe1fb8f97..f70cf0e797 100644
--- a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
+++ b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
@@ -29,7 +29,7 @@ Forwarded: https://patchwork.kernel.org/patch/10549245/
  #include <net/mac80211.h>
  #include <linux/etherdevice.h>
  #include <linux/acpi.h>
-@@ -9707,6 +9708,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9708,6 +9709,7 @@ int ath10k_mac_register(struct ath10k *a
  		ar->hw->wiphy->bands[NL80211_BAND_5GHZ] = band;
  	}
  
diff --git a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
index cd8967cb93..19696fd015 100644
--- a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
+++ b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
@@ -79,3 +79,14 @@ Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
  			spin_unlock_bh(&ar->data_lock);
  			rcu_read_unlock();
  			continue;
+--- a/ath10k-5.4/htt_rx.c
++++ b/ath10k-5.4/htt_rx.c
+@@ -2918,7 +2918,7 @@ do_generic:
+ 		spin_lock_bh(&ar->data_lock);
+ 
+ 		peer = ath10k_peer_find_by_id(ar, peer_id);
+-		if (!peer) {
++		if (!peer || !peer->sta) {
+ 			spin_unlock_bh(&ar->data_lock);
+ 			rcu_read_unlock();
+ 			continue;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
