Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B2D18CF4
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 17:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2enxvkJrAyssGVAwskKtHDSSMFdRY+qT3PMPwpio2s=; b=FnnLxFZDh4UI3v
	jKO8F8rqac0MIPdSEhkXmqRYHBPQkH69BogK+GxK1rYiSZd1Jzk5BJeyofGDHeQWayOHSRJ7WNJ+N
	URccm8UcK5M8U2I9cwfLokVe+1Chv/UslnecuWenM7obDdvgK+yCaTsGkRiBMfxtcMrYvW+/ORFnd
	zdl6cKW5XaAoi6FOTTOmd0RXIFSKV5EngaiAu4gWQGydJEw8my+64sQna4TRIPIdtpT4ezazVe478
	V0nG57NzmUFFPFj/ihj8AtJi3iua25K+dcAPEe/2Lrxhpj9mDafv4fJrB/3hHwtwr7TkuOe5VMQiv
	Fc7FUR+nhZIpyMyaoRow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOky8-0003lH-2T; Thu, 09 May 2019 15:28:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkxq-0003dc-VJ
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 15:28:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id d12so3631695wrm.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 May 2019 08:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YHfvFyCGZVvW2Lwt0NEn9nht9JDwvQ8D7R4NovkB2as=;
 b=fQ1aNdvxn4uOKO5owH3420+HVy5VT5mOOfaiXVlB1OMnPStya3FS7zmyUviWYkzZuy
 Zkqfar1IWXWoe4cI93OyzNMXi1xVd7aboVKqeIqdl+chcRuerw6htiupSf0XaVcgKY5a
 h14gOdjfxUZADCkml7sNuUkJE2Dz/Q9daLSPvJ3TwbQIMpk78adWP1ZA/xMPcMohqcbZ
 iK/VTP6+JO9G6VbqNn07LaH5uLbo3NuOKBVCZ/2D5MMRb0W9aYF/n6IooyRvEwepuZxx
 X7aPx9tBdnEV2SZNvkczfSl3D8Xl2dgDMSV4TJmLtF0+wEhwbglMxBz3tP0Fjs466cmF
 EhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YHfvFyCGZVvW2Lwt0NEn9nht9JDwvQ8D7R4NovkB2as=;
 b=meVTT77Nlaz7pOSL1SeARQ7Z16coGeDXU+NXpkFRVYzALp7ZVPBn83Cw6hp13VIRbv
 H7QVBS9pGYVH5U6ROQxYAT7EEG9Z5iLSzi6gjxowZCxY8o5JV9LqtL0GyHXXwsqNY6F8
 sUrt2+kL7wFYT46eEfWvEuRZLmZTvt5QOgckvoicWGGfqWsml1S0wYwsKXiQA1ZFcFwh
 7PAAe+m08kh5BFLdwa4vo/8zCTZNusn9OyxPqKl8tS5vwCx6P+qce3s9IZ1xdkacBD11
 RQp0JtvJ5+DiaPOH0pczMEmmuSiJZMIqVC3wxpdHD9zvxerHwm7FR10hLSdJZNxAw28D
 ZRDQ==
X-Gm-Message-State: APjAAAWDfGeIWVkHBDg5urcgedbSLfTdfUjMBxHYZO5194tn/boJb3g/
 cmjWcRprdxLDhSH1zQMRLPo1ockg
X-Google-Smtp-Source: APXvYqwBWvGv4AerEL7yLjBkbYbpn+K5GGTyzh6WAHJ/fhocZh2DZx1erXKvfpHNumIp1/RyHcorgQ==
X-Received: by 2002:adf:9f4a:: with SMTP id f10mr3711765wrg.13.1557415684858; 
 Thu, 09 May 2019 08:28:04 -0700 (PDT)
Received: from localhost.localdomain (93-137-250-241.adsl.net.t-com.hr.
 [93.137.250.241])
 by smtp.gmail.com with ESMTPSA id c9sm1395400wrv.62.2019.05.09.08.28.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 08:28:04 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 17:27:58 +0200
Message-Id: <20190509152758.20998-2-robimarko@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509152758.20998-1-robimarko@gmail.com>
References: <20190509152758.20998-1-robimarko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_082807_106427_DFAF0F0E 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ath10k-ct: Update to current version
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

This patch updates ath10k-ct to current version.
Changes are:
     ath10k-ct:  Fix printing PN in peer stats.

     Previous logic was incorrect.  Also add set-special API to enable
     returning PN.

Patches refreshed and tested on 8devices Jalapeno dev board(IPQ4019)

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/kernel/ath10k-ct/Makefile             |  6 +--
 .../081-ath10k-calibration-variant.patch      |  2 +-
 .../ath10k-ct/patches/100-kernel_compat.patch |  4 +-
 ...-IEs-for-variant-before-falling-back.patch |  8 +--
 ...rt-for-configuring-management-packet.patch |  4 +-
 ...ble-out-of-bound-access-of-ath10k_ra.patch |  2 +-
 ...rect-multicast-broadcast-rate-settin.patch |  4 +-
 ...64-ath10k-commit-rates-from-mac80211.patch |  6 +--
 ...rolling-support-for-various-chipsets.patch | 50 +++++++++----------
 ...h10k-4.16-use-tpt-trigger-by-default.patch |  8 +--
 ...ilable-channels-via-DT-ieee80211-fre.patch |  2 +-
 11 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index 63d702cc22..8ade145983 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=
 
 PKG_SOURCE_URL:=https://github.com/greearb/ath10k-ct.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2019-04-08
-PKG_SOURCE_VERSION:=9cd701a4f028b1643928a1f03c76e3f8c9e56a5b
-PKG_MIRROR_HASH:=0088fea964279842a105908f5ac573b84e43de3a9b434d427fb871390525dfee
+PKG_SOURCE_DATE:=2019-05-08
+PKG_SOURCE_VERSION:=f98b6dc4d27ea2d79a1577285d1d5cb0641b3eb4
+PKG_MIRROR_HASH:=ca2f0e9da25fc7140d26ddeeb8e929e172755aa0e41e4e92e5b87bb972b8ed41
 
 # Build the 4.19 ath10k-ct driver version.  Other options are "-4.16", or
 # leave un-defined for 4.7 kernel.  Probably this should match as closely as
diff --git a/package/kernel/ath10k-ct/patches/081-ath10k-calibration-variant.patch b/package/kernel/ath10k-ct/patches/081-ath10k-calibration-variant.patch
index 987a7d79e2..2b4273076b 100644
--- a/package/kernel/ath10k-ct/patches/081-ath10k-calibration-variant.patch
+++ b/package/kernel/ath10k-ct/patches/081-ath10k-calibration-variant.patch
@@ -98,7 +98,7 @@ Origin: upstream, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  	scnprintf(name, name_len,
  		  "bus=%s,vendor=%04x,device=%04x,subsystem-vendor=%04x,subsystem-device=%04x%s",
  		  ath10k_bus_str(ar->hif.bus),
-@@ -2977,7 +2999,11 @@ static int ath10k_core_probe_fw(struct a
+@@ -3014,7 +3036,11 @@ static int ath10k_core_probe_fw(struct a
  
  	ret = ath10k_core_check_smbios(ar);
  	if (ret)
diff --git a/package/kernel/ath10k-ct/patches/100-kernel_compat.patch b/package/kernel/ath10k-ct/patches/100-kernel_compat.patch
index 6fd254a57b..3f7db04376 100644
--- a/package/kernel/ath10k-ct/patches/100-kernel_compat.patch
+++ b/package/kernel/ath10k-ct/patches/100-kernel_compat.patch
@@ -97,7 +97,7 @@
  	ATH10K_DFS_STAT_INC(ar, pulses_total);
 --- a/ath10k-4.13/wmi.c
 +++ b/ath10k-4.13/wmi.c
-@@ -4030,7 +4030,7 @@ static void ath10k_dfs_radar_report(stru
+@@ -4033,7 +4033,7 @@ static void ath10k_dfs_radar_report(stru
  
  	ATH10K_DFS_STAT_INC(ar, pulses_detected);
  
@@ -108,7 +108,7 @@
  		return;
 --- a/ath10k-4.16/wmi.c
 +++ b/ath10k-4.16/wmi.c
-@@ -4105,7 +4105,7 @@ static void ath10k_dfs_radar_report(stru
+@@ -4117,7 +4117,7 @@ static void ath10k_dfs_radar_report(stru
  
  	ATH10K_DFS_STAT_INC(ar, pulses_detected);
  
diff --git a/package/kernel/ath10k-ct/patches/160-ath10k-search-all-IEs-for-variant-before-falling-back.patch b/package/kernel/ath10k-ct/patches/160-ath10k-search-all-IEs-for-variant-before-falling-back.patch
index 985bb02b28..c6820dea09 100644
--- a/package/kernel/ath10k-ct/patches/160-ath10k-search-all-IEs-for-variant-before-falling-back.patch
+++ b/package/kernel/ath10k-ct/patches/160-ath10k-search-all-IEs-for-variant-before-falling-back.patch
@@ -249,7 +249,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  		goto success;
 --- a/ath10k-4.16/core.c
 +++ b/ath10k-4.16/core.c
-@@ -1562,14 +1562,61 @@ out:
+@@ -1563,14 +1563,61 @@ out:
  	return ret;
  }
  
@@ -314,7 +314,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  
  	ar->normal_mode_fw.board = ath10k_fetch_fw_file(ar,
  							ar->hw_params.fw.dir,
-@@ -1607,73 +1654,28 @@ static int ath10k_core_fetch_board_data_
+@@ -1608,73 +1655,28 @@ static int ath10k_core_fetch_board_data_
  	data += magic_len;
  	len -= magic_len;
  
@@ -397,7 +397,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  	return 0;
  
  err:
-@@ -1682,12 +1684,12 @@ err:
+@@ -1683,12 +1685,12 @@ err:
  }
  
  static int ath10k_core_create_board_name(struct ath10k *ar, char *name,
@@ -412,7 +412,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  		scnprintf(variant, sizeof(variant), ",variant=%s",
  			  ar->id.bdf_ext);
  
-@@ -1713,21 +1715,31 @@ out:
+@@ -1714,21 +1716,31 @@ out:
  
  static int ath10k_core_fetch_board_file(struct ath10k *ar)
  {
diff --git a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
index 7c59d14ffc..10b1d384bd 100644
--- a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
+++ b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
@@ -43,7 +43,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
  {
  	switch ((mcs_map >> (2 * nss)) & 0x3) {
-@@ -6262,9 +6278,10 @@ static void ath10k_bss_info_changed(stru
+@@ -6333,9 +6349,10 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -56,7 +56,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  
  	mutex_lock(&ar->conf_mutex);
  
-@@ -6470,6 +6487,30 @@ static void ath10k_bss_info_changed(stru
+@@ -6541,6 +6558,30 @@ static void ath10k_bss_info_changed(stru
  				    arvif->vdev_id,  ret);
  	}
  
diff --git a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
index 5eba4f3542..f46bf4dc83 100644
--- a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
+++ b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
@@ -26,7 +26,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  		if (ath10k_rates[i].bitrate == bitrate)
  			return hw_value_prefix | ath10k_rates[i].hw_value;
  	}
-@@ -6493,22 +6493,22 @@ static void ath10k_bss_info_changed(stru
+@@ -6564,22 +6564,22 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
index ade1eb2d75..42d59e8e72 100644
--- a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
+++ b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
@@ -17,7 +17,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6278,8 +6278,8 @@ static void ath10k_bss_info_changed(stru
+@@ -6349,8 +6349,8 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -28,7 +28,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
  	enum nl80211_band band;
  	const struct ieee80211_supported_band *sband;
  
-@@ -6452,7 +6452,11 @@ static void ath10k_bss_info_changed(stru
+@@ -6523,7 +6523,11 @@ static void ath10k_bss_info_changed(stru
  	if (changed & BSS_CHANGED_MCAST_RATE &&
  	    !WARN_ON(ath10k_mac_vif_chan(arvif->vif, &def))) {
  		band = def.chan->band;
diff --git a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
index 43f5591bba..ec8248f67b 100644
--- a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
+++ b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
@@ -11,7 +11,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6474,6 +6474,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6545,6 +6545,7 @@ static void ath10k_bss_info_changed(stru
  			   "mac vdev %d mcast_rate %x\n",
  			   arvif->vdev_id, rate);
  
@@ -19,7 +19,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6482,6 +6483,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6553,6 +6554,7 @@ static void ath10k_bss_info_changed(stru
  				    "failed to set mcast rate on vdev %i: %d\n",
  				    arvif->vdev_id,  ret);
  
@@ -27,7 +27,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6508,6 +6510,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6579,6 +6581,7 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index 9069435d38..617505def9 100644
--- a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -161,8 +161,8 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -3042,6 +3048,10 @@ int ath10k_core_start(struct ath10k *ar,
- 						   ar->eeprom_overrides.rc_txbf_probe);
+@@ -3084,6 +3090,10 @@ int ath10k_core_start(struct ath10k *ar,
+ 			ath10k_wmi_check_apply_board_power_ctl_table(ar);
  	}
  
 +	status = ath10k_leds_start(ar);
@@ -172,7 +172,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3288,9 +3298,18 @@ static void ath10k_core_register_work(st
+@@ -3330,9 +3340,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -191,7 +191,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3348,6 +3367,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3390,6 +3409,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -210,7 +210,7 @@ v13:
  
  #include "htt.h"
  #include "htc.h"
-@@ -1255,6 +1256,13 @@ struct ath10k {
+@@ -1273,6 +1274,13 @@ struct ath10k {
  	} testmode;
  
  	struct {
@@ -455,7 +455,7 @@ v13:
  static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
 --- a/ath10k-4.16/wmi.c
 +++ b/ath10k-4.16/wmi.c
-@@ -7405,6 +7405,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
+@@ -7593,6 +7593,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
  	return skb;
  }
  
@@ -505,7 +505,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -9020,6 +9063,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -9235,6 +9278,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -515,7 +515,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9090,6 +9136,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -9305,6 +9351,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -524,7 +524,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9167,6 +9215,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -9383,6 +9431,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -533,7 +533,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -9237,6 +9287,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -9453,6 +9503,8 @@ static const struct wmi_ops wmi_10_2_4_o
  	.gen_pdev_enable_adaptive_cca =
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
@@ -542,7 +542,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9313,6 +9365,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -9529,6 +9581,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
@@ -553,7 +553,7 @@ v13:
  int ath10k_wmi_attach(struct ath10k *ar)
 --- a/ath10k-4.16/wmi.h
 +++ b/ath10k-4.16/wmi.h
-@@ -3011,6 +3011,41 @@ enum wmi_10_4_feature_mask {
+@@ -3013,6 +3013,41 @@ enum wmi_10_4_feature_mask {
  
  };
  
@@ -674,8 +674,8 @@ v13:
  		.patch_load_addr = QCA9888_HW_2_0_PATCH_LOAD_ADDR,
  		.uart_pin = 7,
  		.cc_wraparound_type = ATH10K_HW_CC_WRAP_SHIFTED_EACH,
-@@ -3103,6 +3109,10 @@ int ath10k_core_start(struct ath10k *ar,
- 						   ar->eeprom_overrides.rc_txbf_probe);
+@@ -3147,6 +3153,10 @@ int ath10k_core_start(struct ath10k *ar,
+ 			ath10k_wmi_check_apply_board_power_ctl_table(ar);
  	}
  
 +	status = ath10k_leds_start(ar);
@@ -685,7 +685,7 @@ v13:
  	return 0;
  
  err_hif_stop:
-@@ -3357,9 +3367,18 @@ static void ath10k_core_register_work(st
+@@ -3401,9 +3411,18 @@ static void ath10k_core_register_work(st
  		goto err_spectral_destroy;
  	}
  
@@ -704,7 +704,7 @@ v13:
  err_spectral_destroy:
  	ath10k_spectral_destroy(ar);
  err_debug_destroy:
-@@ -3417,6 +3436,8 @@ void ath10k_core_unregister(struct ath10
+@@ -3461,6 +3480,8 @@ void ath10k_core_unregister(struct ath10
  	if (!test_bit(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
  		return;
  
@@ -723,7 +723,7 @@ v13:
  
  #include "htt.h"
  #include "htc.h"
-@@ -1113,7 +1114,6 @@ struct ath10k {
+@@ -1132,7 +1133,6 @@ struct ath10k {
  	u32 low_5ghz_chan;
  	u32 high_5ghz_chan;
  	bool ani_enabled;
@@ -731,7 +731,7 @@ v13:
  	bool p2p;
  	bool ct_all_pkts_htt; /* CT firmware only: native-wifi for all pkts */
  
-@@ -1362,6 +1362,13 @@ struct ath10k {
+@@ -1383,6 +1383,13 @@ struct ath10k {
  	} testmode;
  
  	struct {
@@ -977,7 +977,7 @@ v13:
  static const struct wmi_peer_flags_map wmi_tlv_peer_flags_map = {
 --- a/ath10k-4.19/wmi.c
 +++ b/ath10k-4.19/wmi.c
-@@ -7881,6 +7881,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
+@@ -8070,6 +8070,49 @@ ath10k_wmi_op_gen_peer_set_param(struct
  	return skb;
  }
  
@@ -1027,7 +1027,7 @@ v13:
  static struct sk_buff *
  ath10k_wmi_op_gen_set_psmode(struct ath10k *ar, u32 vdev_id,
  			     enum wmi_sta_ps_mode psmode)
-@@ -9605,6 +9648,9 @@ static const struct wmi_ops wmi_ops = {
+@@ -9821,6 +9864,9 @@ static const struct wmi_ops wmi_ops = {
  	.fw_stats_fill = ath10k_wmi_main_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -1037,7 +1037,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9675,6 +9721,8 @@ static const struct wmi_ops wmi_10_1_ops
+@@ -9891,6 +9937,8 @@ static const struct wmi_ops wmi_10_1_ops
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
  	.gen_echo = ath10k_wmi_op_gen_echo,
@@ -1046,7 +1046,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9752,6 +9800,8 @@ static const struct wmi_ops wmi_10_2_ops
+@@ -9969,6 +10017,8 @@ static const struct wmi_ops wmi_10_2_ops
  	.gen_delba_send = ath10k_wmi_op_gen_delba_send,
  	.fw_stats_fill = ath10k_wmi_10x_op_fw_stats_fill,
  	.get_vdev_subtype = ath10k_wmi_op_get_vdev_subtype,
@@ -1055,7 +1055,7 @@ v13:
  	/* .gen_pdev_enable_adaptive_cca not implemented */
  };
  
-@@ -9822,6 +9872,8 @@ static const struct wmi_ops wmi_10_2_4_o
+@@ -10039,6 +10089,8 @@ static const struct wmi_ops wmi_10_2_4_o
  	.gen_pdev_enable_adaptive_cca =
  		ath10k_wmi_op_gen_pdev_enable_adaptive_cca,
  	.get_vdev_subtype = ath10k_wmi_10_2_4_op_get_vdev_subtype,
@@ -1064,7 +1064,7 @@ v13:
  	/* .gen_bcn_tmpl not implemented */
  	/* .gen_prb_tmpl not implemented */
  	/* .gen_p2p_go_bcn_ie not implemented */
-@@ -9902,6 +9954,8 @@ static const struct wmi_ops wmi_10_4_ops
+@@ -10119,6 +10171,8 @@ static const struct wmi_ops wmi_10_4_ops
  	.gen_pdev_bss_chan_info_req = ath10k_wmi_10_2_op_gen_pdev_bss_chan_info,
  	.gen_echo = ath10k_wmi_op_gen_echo,
  	.gen_pdev_get_tpc_config = ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config,
@@ -1075,7 +1075,7 @@ v13:
  int ath10k_wmi_attach(struct ath10k *ar)
 --- a/ath10k-4.19/wmi.h
 +++ b/ath10k-4.19/wmi.h
-@@ -3040,6 +3040,41 @@ enum wmi_10_4_feature_mask {
+@@ -3041,6 +3041,41 @@ enum wmi_10_4_feature_mask {
  
  };
  
diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
index 736ecbc454..394e06990c 100644
--- a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
+++ b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
@@ -16,7 +16,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
 
 --- a/ath10k-4.16/core.h
 +++ b/ath10k-4.16/core.h
-@@ -1346,6 +1346,10 @@ struct ath10k {
+@@ -1366,6 +1366,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
@@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/ath10k-4.16/mac.c
 +++ b/ath10k-4.16/mac.c
-@@ -9665,7 +9665,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9739,7 +9739,7 @@ int ath10k_mac_register(struct ath10k *a
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
  #ifdef CPTCFG_MAC80211_LEDS
@@ -53,7 +53,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  #endif
 --- a/ath10k-4.19/core.h
 +++ b/ath10k-4.19/core.h
-@@ -1459,6 +1459,10 @@ struct ath10k {
+@@ -1482,6 +1482,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
@@ -79,7 +79,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -9837,7 +9837,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9908,7 +9908,7 @@ int ath10k_mac_register(struct ath10k *a
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
index f68b35af7b..45619c9169 100644
--- a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
+++ b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
@@ -29,7 +29,7 @@ Forwarded: https://patchwork.kernel.org/patch/10549245/
  #include <net/mac80211.h>
  #include <linux/etherdevice.h>
  #include <linux/acpi.h>
-@@ -9561,6 +9562,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9632,6 +9633,7 @@ int ath10k_mac_register(struct ath10k *a
  		ar->hw->wiphy->bands[NL80211_BAND_5GHZ] = band;
  	}
  
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
