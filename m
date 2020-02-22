Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA5B169184
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 20:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcZJrOYqBbyl1hZ1ftWnA3kyBisN2SXHoBAmz+vP+xQ=; b=JHSaixfotldGnF
	WVupC2WJA0nsykcaOULB0z1vfLclKsxx4+gLezHeW7eMPxctKTaXa/0yh22MySU9HpfAJIT2HxBKD
	NKNIQxOaJGz4w0OdFnB36CE9lBBeoYLmZnmJl239DzG+n5wUbinI5AKmqZ+iCODyhRCJEF6eI4JWq
	hA61SLCpUv2XPH1pb0iWZq8djxUlfn3UdYyxst//nrplfYKQtXUW3cEWQxbPfOFbxRP0GE+To8eC1
	nXFBn3JZwi4ndSHC7mXUZjT+UaO3Oi1NgMWOG5QkoSRMV2EUXr7IBp8wl2VzHCMRG+Rd8Kp0g27hD
	0hZcF0jI2ZToV7JV6BUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5aSk-0000dg-Aq; Sat, 22 Feb 2020 19:29:18 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5aSB-0000AW-UQ
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 19:28:46 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 48Pyzq6MSwzKmTQ;
 Sat, 22 Feb 2020 20:28:39 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id hpWtVdMihZ-8; Sat, 22 Feb 2020 20:28:36 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 20:28:23 +0100
Message-Id: <20200222192824.24670-2-hauke@hauke-m.de>
In-Reply-To: <20200222192824.24670-1-hauke@hauke-m.de>
References: <20200222192824.24670-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_112844_290467_7CDE2DAB 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/3] ath10k-ct: Update to version
 2020-02-18
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, greearb@candelatech.com,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds AP vlans support.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/ath10k-ct/Makefile             |  6 ++--
 ...rolling-support-for-various-chipsets.patch | 36 +++++++++----------
 ...h10k-4.16-use-tpt-trigger-by-default.patch |  4 +--
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index 6317fc7912..62004cd490 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=
 
 PKG_SOURCE_URL:=https://github.com/greearb/ath10k-ct.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2020-01-29
-PKG_SOURCE_VERSION:=3e3d0adb3cc6c6cf56a05ff661796948f09c5aa8
-PKG_MIRROR_HASH:=6341de2d3b19b2a32205a1633bf9556815943a2cff38acbbe5f61c6c0164fdcc
+PKG_SOURCE_DATE:=2020-02-18
+PKG_SOURCE_VERSION:=bed49a5f6824fcd8757fd27f6b2a4f6ea933bf2f
+PKG_MIRROR_HASH:=4f16b1b44b0be6c2dba92754e78888533fdc6bfbf63ae673301a49c47c5e53ea
 
 # Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
 # Probably this should match as closely as
diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index d526e2795b..a7525841c6 100644
--- a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -161,7 +161,7 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -3170,6 +3176,10 @@ int ath10k_core_start(struct ath10k *ar,
+@@ -3176,6 +3182,10 @@ int ath10k_core_start(struct ath10k *ar,
  			ath10k_wmi_check_apply_board_power_ctl_table(ar);
  	}
  
@@ -172,7 +172,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3424,9 +3434,18 @@ static void ath10k_core_register_work(st
+@@ -3430,9 +3440,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -191,7 +191,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3484,6 +3503,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3490,6 +3509,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -218,7 +218,7 @@ v13:
  	bool p2p;
  	bool ct_all_pkts_htt; /* CT firmware only: native-wifi for all pkts */
  
-@@ -1389,6 +1389,13 @@ struct ath10k {
+@@ -1391,6 +1391,13 @@ struct ath10k {
  	} testmode;
  
  	struct {
@@ -514,7 +514,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -9822,6 +9865,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -9824,6 +9867,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -524,7 +524,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9892,6 +9938,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -9894,6 +9940,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -533,7 +533,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9970,6 +10018,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -9972,6 +10020,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -542,7 +542,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -10040,6 +10090,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -10042,6 +10092,8 @@ static const struct wmi_ops wmi_10_2_4_o
  	.gen_pdev_enable_adaptive_cca =
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
@@ -551,7 +551,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10120,6 +10172,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -10122,6 +10174,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
@@ -683,7 +683,7 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -3497,6 +3503,10 @@ int ath10k_core_start(struct ath10k *ar,
+@@ -3503,6 +3509,10 @@ int ath10k_core_start(struct ath10k *ar,
  			ath10k_wmi_check_apply_board_power_ctl_table(ar);
  	}
  
@@ -694,7 +694,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3753,9 +3763,18 @@ static void ath10k_core_register_work(st
+@@ -3759,9 +3769,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -713,7 +713,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3815,6 +3834,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3821,6 +3840,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -732,7 +732,7 @@ v13:
  
  #include "htt.h"
  #include "htc.h"
-@@ -1447,6 +1448,13 @@ struct ath10k {
+@@ -1449,6 +1450,13 @@ struct ath10k {
  	} testmode;
  
  	struct {
@@ -1028,7 +1028,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -10067,6 +10110,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -10069,6 +10112,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -1038,7 +1038,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10137,6 +10183,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -10139,6 +10185,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -1047,7 +1047,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10216,6 +10264,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -10218,6 +10266,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -1056,7 +1056,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -10287,6 +10337,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -10289,6 +10339,8 @@ static const struct wmi_ops wmi_10_2_4_o
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
  	.gen_bb_timing = ath10k_wmi_10_2_4_op_gen_bb_timing,
@@ -1065,7 +1065,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -10368,6 +10420,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -10370,6 +10422,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
index db62631dfd..1b6fd51acb 100644
--- a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
+++ b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
@@ -16,7 +16,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
 
 --- a/ath10k-4.19/core.h
 +++ b/ath10k-4.19/core.h
-@@ -1489,6 +1489,10 @@ struct ath10k {
+@@ -1491,6 +1491,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
@@ -53,7 +53,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  #endif
 --- a/ath10k-5.2/core.h
 +++ b/ath10k-5.2/core.h
-@@ -1550,6 +1550,10 @@ struct ath10k {
+@@ -1552,6 +1552,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
