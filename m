Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E29B14D307
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 23:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0ef6Qg+SMvDY5kmJ/LEek4VmRMJHD974mcURXU1xak=; b=arcrOPgtdOwPdp
	/yJcFRyMcyWT1a8UbAaORHC0R9J/ma4/nZVWWw03mNmuhuReeLqDV4aMOFBlafU//SerBv7piUhqW
	sfR6FXKHgQsjbifr/2iYC/PwXmDef1DvIANuLXiY5sOFa9NmqM8nKyDfEpmeDmws2R0nPmAd7HyLo
	AtFiYuuS2MsAKOunGDxaniKocLHPlUhwrV5hpdFMHvpTmnonqMKwlWDoy7os0aEjMdXkFCopE48CN
	OFFSsr6fuifBuf8Pw1oY+MLotmMZJhhanAnefHRJUBeKv0AkXz9IT/JKNU6lOf2GKX7BouLin3vcH
	xymCBENgYH/nDdjSqkiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwviY-0005Xe-FG; Wed, 29 Jan 2020 22:21:50 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwviN-0005XF-1C
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 22:21:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id f24so845698lfh.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 14:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7HnO815kqKGeDP3sv4scReusKzuFstLnAr+5i/RSjw=;
 b=ZUyxWtgArdjDj39/QCVGI64WdtvUJstVZkLKEFESYGyQddU5tVbaaJ1pY+WNC9YyQu
 I+RmLRjK/mNWySELRkm6n1bddh8IcgEkICOlrNePufQp9vXfoR1PS1M10Ww2tuKkL+pD
 LPlliC1I2ogqc6+92Wtq+iNcdpWdzT19ZLdAmRuZxyoskenQdm0vCfDewtGeQVVH4ejx
 O+Cnva9TyhM6B4o4iZ8+4zE0bQEcAtBSyQCYx6LPHjkZpQKcbX7vLPZcTxqPLbRPAomz
 R68CrJWTb2oR+KrT3P/K1Zs+K2YPitSa5qtRFyZwNpg2YOg7GGFaPwkGU991I3dfjt5F
 PvwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7HnO815kqKGeDP3sv4scReusKzuFstLnAr+5i/RSjw=;
 b=WvsGVFT/S0GGTVXBiaSRSQQKHf9lYhVsghxAbuUhRTnplpdonMeHAdna7ZKGzi3C3I
 v9F7Os0E6FYmKZzGAABmZoOhjxNCk4MBRaQtLf4Ay04shEzI+joHsFE58gIDqozVgplH
 ImKPeDtS0VP7MCcU6H6VhytTL8pAaJRowYnu4xVuQU5Uayan1YNDWn8Vkx70KDawGndb
 q/W+WQRqp27qPMmYxBKIz0grx8m8nDq/Z21BT3QjxRKuTrbdkG3tw7rdgNa7peQVfmZW
 dEOIM2gceX6xYpPRGOCeuNuwv8Vn4FkCfQzfDp+PWrG5/LwWlS7OyH+mh1Q922vKvWwF
 ggDw==
X-Gm-Message-State: APjAAAV97Pz0StEo7/73GVfTWo9F1slM6jhMgkptjK0Gxp4yFrEe/A+0
 n2aAKV8iQAM3IJHTPVYRYUocawuL
X-Google-Smtp-Source: APXvYqzQB/j+m0RgHlBIy/rKHpava9V0P/SzDoTnwprShjj2RmbExzc5R85a191qdFgdLSZN/xAPMw==
X-Received: by 2002:ac2:5f74:: with SMTP id c20mr786353lfc.15.1580336495959;
 Wed, 29 Jan 2020 14:21:35 -0800 (PST)
Received: from frog.lan ([2a01:79c:cebd:585c::bd2])
 by smtp.gmail.com with ESMTPSA id g13sm1672238ljj.38.2020.01.29.14.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 14:21:35 -0800 (PST)
From: michael.yartys@gmail.com
X-Google-Original-From: michael.yartys@protonmail.com
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Jan 2020 23:19:30 +0100
Message-Id: <20200129221930.312216-1-michael.yartys@protonmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_142139_080480_76C2CF6D 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michael.yartys[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ath10k-ct: update to 2020-01-29
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
Cc: Michael Yartys <michael.yartys@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Michael Yartys <michael.yartys@protonmail.com>

Changes:

ath10k-ct: Support better RSSI measurements.

When used with recent firmware, these changes allow the driver to
query per-chain noise-floor from the radio to better calculate the
per-chain RSSI. The per-chain RSSI is then summed to provide the
'combined RSSI'. This gives better per-chain RSSI as well as combined
RSSI, especially when running with more than 20Mhz bandwidths.

Refresh patches.

Signed-off-by: Michael Yartys <michael.yartys@protonmail.com>
---
 package/kernel/ath10k-ct/Makefile             |  6 +--
 ...rt-for-configuring-management-packet.patch |  4 +-
 ...ble-out-of-bound-access-of-ath10k_ra.patch |  2 +-
 ...rect-multicast-broadcast-rate-settin.patch |  4 +-
 ...64-ath10k-commit-rates-from-mac80211.patch | 12 +++---
 ...-the-vif-to-cancel_remain_on_channel.patch |  4 +-
 ...rolling-support-for-various-chipsets.patch | 38 +++++++++----------
 ...h10k-4.16-use-tpt-trigger-by-default.patch |  8 ++--
 ...ilable-channels-via-DT-ieee80211-fre.patch |  2 +-
 ...station-exists-before-forwarding-tx-.patch |  2 +-
 10 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index c29d28f41a..02df930729 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=
 
 PKG_SOURCE_URL:=https://github.com/greearb/ath10k-ct.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2019-09-09
-PKG_SOURCE_VERSION:=5e8cd86f90dac966d12df6ece84ac41458d0e95f
-PKG_MIRROR_HASH:=dc1097f3a7b4b7e346918f206746d00a0b7df07ae3be9b89be55dfaef3cbbe45
+PKG_SOURCE_DATE:=2020-01-29
+PKG_SOURCE_VERSION:=3e3d0adb3cc6c6cf56a05ff661796948f09c5aa8
+PKG_MIRROR_HASH:=6341de2d3b19b2a32205a1633bf9556815943a2cff38acbbe5f61c6c0164fdcc
 
 # Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
 # Probably this should match as closely as
diff --git a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
index e67003c5a7..f18afae327 100644
--- a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
+++ b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
@@ -43,7 +43,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
  {
  	switch ((mcs_map >> (2 * nss)) & 0x3) {
-@@ -6405,9 +6421,10 @@ static void ath10k_bss_info_changed(stru
+@@ -6413,9 +6429,10 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -56,7 +56,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  
  	mutex_lock(&ar->conf_mutex);
  
-@@ -6613,6 +6630,30 @@ static void ath10k_bss_info_changed(stru
+@@ -6621,6 +6638,30 @@ static void ath10k_bss_info_changed(stru
  				    arvif->vdev_id,  ret);
  	}
  
diff --git a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
index a24029983c..aa473e8fea 100644
--- a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
+++ b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
@@ -26,7 +26,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  		if (ath10k_rates[i].bitrate == bitrate)
  			return hw_value_prefix | ath10k_rates[i].hw_value;
  	}
-@@ -6636,22 +6636,22 @@ static void ath10k_bss_info_changed(stru
+@@ -6644,22 +6644,22 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
index f6fd75b7e5..fc866f49b5 100644
--- a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
+++ b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
@@ -17,7 +17,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6421,8 +6421,8 @@ static void ath10k_bss_info_changed(stru
+@@ -6429,8 +6429,8 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -28,7 +28,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
  	enum nl80211_band band;
  	const struct ieee80211_supported_band *sband;
  
-@@ -6595,7 +6595,11 @@ static void ath10k_bss_info_changed(stru
+@@ -6603,7 +6603,11 @@ static void ath10k_bss_info_changed(stru
  	if (changed & BSS_CHANGED_MCAST_RATE &&
  	    !WARN_ON(ath10k_mac_vif_chan(arvif->vif, &def))) {
  		band = def.chan->band;
diff --git a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
index aab435bccd..9a31164fcc 100644
--- a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
+++ b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
@@ -11,7 +11,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6617,6 +6617,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6625,6 +6625,7 @@ static void ath10k_bss_info_changed(stru
  			   "mac vdev %d mcast_rate %x\n",
  			   arvif->vdev_id, rate);
  
@@ -19,7 +19,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6625,6 +6626,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6633,6 +6634,7 @@ static void ath10k_bss_info_changed(stru
  				    "failed to set mcast rate on vdev %i: %d\n",
  				    arvif->vdev_id,  ret);
  
@@ -27,7 +27,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6651,6 +6653,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6659,6 +6661,7 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
@@ -37,7 +37,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  						hw_rate_code);
 --- a/ath10k-5.2/mac.c
 +++ b/ath10k-5.2/mac.c
-@@ -6732,6 +6732,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6742,6 +6742,7 @@ static void ath10k_bss_info_changed(stru
  			   "mac vdev %d mcast_rate %x\n",
  			   arvif->vdev_id, rate);
  
@@ -45,7 +45,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6740,6 +6741,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6750,6 +6751,7 @@ static void ath10k_bss_info_changed(stru
  				    "failed to set mcast rate on vdev %i: %d\n",
  				    arvif->vdev_id,  ret);
  
@@ -53,7 +53,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6766,6 +6768,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6776,6 +6778,7 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch b/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch
index ee9667ccb0..180b0d5bf7 100644
--- a/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch
+++ b/package/kernel/ath10k-ct/patches/170-mac80211-pass-the-vif-to-cancel_remain_on_channel.patch
@@ -17,7 +17,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -7775,7 +7775,8 @@ exit:
+@@ -7783,7 +7783,8 @@ exit:
  	return ret;
  }
  
@@ -29,7 +29,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
 --- a/ath10k-5.2/mac.c
 +++ b/ath10k-5.2/mac.c
-@@ -7883,7 +7883,8 @@ exit:
+@@ -7893,7 +7893,8 @@ exit:
  	return ret;
  }
  
diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index ba42fc1d2d..d526e2795b 100644
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
+@@ -3497,6 +3503,10 @@ int ath10k_core_start(struct ath10k *ar,
  			ath10k_wmi_check_apply_board_power_ctl_table(ar);
  	}
  
@@ -694,7 +694,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3708,9 +3718,18 @@ static void ath10k_core_register_work(st
+@@ -3753,9 +3763,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -713,7 +713,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3770,6 +3789,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3815,6 +3834,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -732,7 +732,7 @@ v13:
  
  #include "htt.h"
  #include "htc.h"
-@@ -1441,6 +1442,13 @@ struct ath10k {
+@@ -1447,6 +1448,13 @@ struct ath10k {
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
diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
index d730f9931f..db62631dfd 100644
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
+@@ -9987,7 +9987,7 @@ int ath10k_mac_register(struct ath10k *a
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
  #ifdef CPTCFG_MAC80211_LEDS
@@ -53,7 +53,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  #endif
 --- a/ath10k-5.2/core.h
 +++ b/ath10k-5.2/core.h
-@@ -1543,6 +1543,10 @@ struct ath10k {
+@@ -1550,6 +1550,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
@@ -79,7 +79,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/ath10k-5.2/mac.c
 +++ b/ath10k-5.2/mac.c
-@@ -10179,7 +10179,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -10187,7 +10187,7 @@ int ath10k_mac_register(struct ath10k *a
  	ar->hw->weight_multiplier = ATH10K_AIRTIME_WEIGHT_MULTIPLIER;
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
index 8fe1fb8f97..f47e9d64c0 100644
--- a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
+++ b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
@@ -29,7 +29,7 @@ Forwarded: https://patchwork.kernel.org/patch/10549245/
  #include <net/mac80211.h>
  #include <linux/etherdevice.h>
  #include <linux/acpi.h>
-@@ -9707,6 +9708,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9711,6 +9712,7 @@ int ath10k_mac_register(struct ath10k *a
  		ar->hw->wiphy->bands[NL80211_BAND_5GHZ] = band;
  	}
  
diff --git a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
index cd8967cb93..0ff885d95a 100644
--- a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
+++ b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
@@ -70,7 +70,7 @@ Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
 
 --- a/ath10k-5.2/htt_rx.c
 +++ b/ath10k-5.2/htt_rx.c
-@@ -2507,7 +2507,7 @@ do_generic:
+@@ -2568,7 +2568,7 @@ do_generic:
  		spin_lock_bh(&ar->data_lock);
  
  		peer = ath10k_peer_find_by_id(ar, peer_id);
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
