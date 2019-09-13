Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E665B1B74
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 12:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9gNMAOe3eCBhfnqbWwBcBbUlQdPgGKWFOkR5SL2kkc=; b=TNQppNmak6tSOZ
	17MGb8e6lDzAc2tQihZCVbxr3EMfAvx3Wr3fs3Qd/cBB64FL2QRCs7YvnDp9W9gcrgqyfXxrVcDnT
	DWd8Pn2AotP8NwLjL9uYqMHF6coDDYdagniQAYjvB1ZXfZUl8RTZXpTifzYhWaB70LQgS6u2CdHNU
	QjRYPE6SkgfIHNXMdtgI3K45qaFTxOO3Z5ICltyz1/JzL7BSjINCLLkauYuq0Htf306mM0gscDwg8
	/EQp5DYuOsSyzo7INonkTfKL11CgqEQgZRn6xH8sFvkPmZioKTHfwphSaT7drhXT9QgSZwcnt7ShQ
	pmOjTkcy6HU02DpWKp2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8idY-0003Gh-0v; Fri, 13 Sep 2019 10:17:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8idL-0003Du-2g
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 10:16:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id q14so31479806wrm.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 03:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oX7TsM5mZqj81Qw+vNazfT/rIjjATFxNQxjQM2zaNgQ=;
 b=Ayk7a2CcF3Izl3YawT6WKutbOqvf8IBF5ccCry0he7Njt/shZfCYOmWtKGZKAr6m5U
 0Q/jUMhMZoldkJ8+J8wFEHr42TlXbhPNyHYLeWa6Og8FJs7oDINDz09T8lsRRDSC11Ko
 qAQMt4aju1R42HlSXcxfgJ4Fjs0VmG5QMYtf84nsdIss35PsCWlzcwJSGDzuyB7Z9FAh
 ulPpJnYqsHVTMI/0VODTt1a4ZRqs0MXXWDhZ2O0tYh0EdQn9r7HmVlPFri/KzDw/3EYy
 prARpJR5ZtrCubJfsIhDWSLQGLbP20U02BNSxDzJm/f0/BmXiruCZEAjgRJYqlPgdIeY
 NQgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oX7TsM5mZqj81Qw+vNazfT/rIjjATFxNQxjQM2zaNgQ=;
 b=URNy8/ORQ9OA+pr5H1tljUX5Am/LB2DIoJh3JT7gtq9dPF07JrQmxa3/szY7HBA8h8
 H4s4XUt3hgz2jpv/MR+a5nRxFZ+naEaWHHiGmLoi57pdRSOA5qCCGkZg1A8WqrlWrhVx
 bTElT8W0+qzpnwMBfXoluXTvzt/j0PrLHVCsTWPWuUDowrxvTOZeBbwEopNB9nLBoiqU
 TOcC8fEloWGdzQ6TmoplruAAvysnL4XEi62Km1A93qx4SmBC7rHg6NhMlelUE5fYsyjU
 IashXp84IvQd1qrK1LarnZfrwh+2Sl9iGIr6TjNBuztqQU/WuyjG4uRuixnbFC3ulLW+
 mkkg==
X-Gm-Message-State: APjAAAVzAnl4mxYtqizCf7G9hxqAPpB1QAC4PGGAKmXku5Qy77dLV0yc
 YYPS4Vw7NQ6GdMauNdQtOr5dH+Om
X-Google-Smtp-Source: APXvYqw1hWhWSHyXDx6FQyjWa80zKjzwnl7TqGemWdAC/9rSUY4NbE+sEqok4Loth91ahPkucZIi0A==
X-Received: by 2002:adf:dd0b:: with SMTP id a11mr41646224wrm.42.1568369808729; 
 Fri, 13 Sep 2019 03:16:48 -0700 (PDT)
Received: from localhost.localdomain (93-143-190-12.adsl.net.t-com.hr.
 [93.143.190.12])
 by smtp.gmail.com with ESMTPSA id y3sm2489604wmg.2.2019.09.13.03.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 03:16:48 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Sep 2019 12:15:39 +0200
Message-Id: <20190913101537.18812-2-robimarko@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913101537.18812-1-robimarko@gmail.com>
References: <20190913101537.18812-1-robimarko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_031655_190271_6539FBB0 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath10k-ct: update to version
 2019-09-09
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

Update the ath10k-ct driver version to 5e8cd86f90dac966d12df6ece84ac41458d0e95f
to enable dynamic VLANs to work.
Packages refreshed while bump.

Signed-off-by: Robert Marko <robimarko@gmail.com>

Changes from v1:
	* Fixed wrong mirror hash
---
 package/kernel/ath10k-ct/Makefile                           | 6 +++---
 ...h10k-add-support-for-configuring-management-packet.patch | 4 ++--
 ...h10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch | 2 +-
 ...h10k-fix-incorrect-multicast-broadcast-rate-settin.patch | 4 ++--
 .../patches/164-ath10k-commit-rates-from-mac80211.patch     | 6 +++---
 ...-and-GPIO-controlling-support-for-various-chipsets.patch | 6 +++---
 .../202-ath10k-4.16-use-tpt-trigger-by-default.patch        | 4 ++--
 ...h10k-Limit-available-channels-via-DT-ieee80211-fre.patch | 2 +-
 ...h10k-Check-if-station-exists-before-forwarding-tx-.patch | 2 +-
 9 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index 05d30891f5..dbf75fe174 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=
 
 PKG_SOURCE_URL:=https://github.com/greearb/ath10k-ct.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2019-08-14
-PKG_SOURCE_VERSION:=9e5ab25027e0971fa24ccf93373324c08c4e992d
-PKG_MIRROR_HASH:=95dc42a5615f80528223859b4f9618feafb5a0a29a9eb4c4bc983f76c74fb535
+PKG_SOURCE_DATE:=2019-09-09
+PKG_SOURCE_VERSION:=5e8cd86f90dac966d12df6ece84ac41458d0e95f
+PKG_MIRROR_HASH:=dc1097f3a7b4b7e346918f206746d00a0b7df07ae3be9b89be55dfaef3cbbe45
 
 # Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
 # Probably this should match as closely as
diff --git a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
index d62a1cfcf5..e67003c5a7 100644
--- a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
+++ b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
@@ -43,7 +43,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
  {
  	switch ((mcs_map >> (2 * nss)) & 0x3) {
-@@ -6388,9 +6404,10 @@ static void ath10k_bss_info_changed(stru
+@@ -6405,9 +6421,10 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -56,7 +56,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  
  	mutex_lock(&ar->conf_mutex);
  
-@@ -6596,6 +6613,30 @@ static void ath10k_bss_info_changed(stru
+@@ -6613,6 +6630,30 @@ static void ath10k_bss_info_changed(stru
  				    arvif->vdev_id,  ret);
  	}
  
diff --git a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
index ab360b7261..a24029983c 100644
--- a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
+++ b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
@@ -26,7 +26,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
  		if (ath10k_rates[i].bitrate == bitrate)
  			return hw_value_prefix | ath10k_rates[i].hw_value;
  	}
-@@ -6619,22 +6619,22 @@ static void ath10k_bss_info_changed(stru
+@@ -6636,22 +6636,22 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
index 2b550e76df..f6fd75b7e5 100644
--- a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
+++ b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
@@ -17,7 +17,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6404,8 +6404,8 @@ static void ath10k_bss_info_changed(stru
+@@ -6421,8 +6421,8 @@ static void ath10k_bss_info_changed(stru
  	struct cfg80211_chan_def def;
  	u32 vdev_param, pdev_param, slottime, preamble;
  	u16 bitrate, hw_value;
@@ -28,7 +28,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
  	enum nl80211_band band;
  	const struct ieee80211_supported_band *sband;
  
-@@ -6578,7 +6578,11 @@ static void ath10k_bss_info_changed(stru
+@@ -6595,7 +6595,11 @@ static void ath10k_bss_info_changed(stru
  	if (changed & BSS_CHANGED_MCAST_RATE &&
  	    !WARN_ON(ath10k_mac_vif_chan(arvif->vif, &def))) {
  		band = def.chan->band;
diff --git a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
index b67ad2c3c4..aab435bccd 100644
--- a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
+++ b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
@@ -11,7 +11,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
 
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -6600,6 +6600,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6617,6 +6617,7 @@ static void ath10k_bss_info_changed(stru
  			   "mac vdev %d mcast_rate %x\n",
  			   arvif->vdev_id, rate);
  
@@ -19,7 +19,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6608,6 +6609,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6625,6 +6626,7 @@ static void ath10k_bss_info_changed(stru
  				    "failed to set mcast rate on vdev %i: %d\n",
  				    arvif->vdev_id,  ret);
  
@@ -27,7 +27,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
  		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
  		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
  						vdev_param, rate);
-@@ -6634,6 +6636,7 @@ static void ath10k_bss_info_changed(stru
+@@ -6651,6 +6653,7 @@ static void ath10k_bss_info_changed(stru
  			return;
  		}
  
diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
index 38ec21f52f..ba42fc1d2d 100644
--- a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
+++ b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
@@ -210,7 +210,7 @@ v13:
  
  #include "htt.h"
  #include "htc.h"
-@@ -1137,7 +1138,6 @@ struct ath10k {
+@@ -1138,7 +1139,6 @@ struct ath10k {
  	u32 low_5ghz_chan;
  	u32 high_5ghz_chan;
  	bool ani_enabled;
@@ -218,7 +218,7 @@ v13:
  	bool p2p;
  	bool ct_all_pkts_htt; /* CT firmware only: native-wifi for all pkts */
  
-@@ -1388,6 +1388,13 @@ struct ath10k {
+@@ -1389,6 +1389,13 @@ struct ath10k {
  	} testmode;
  
  	struct {
@@ -562,7 +562,7 @@ v13:
  int ath10k_wmi_attach(struct ath10k *ar)
 --- a/ath10k-4.19/wmi.h
 +++ b/ath10k-4.19/wmi.h
-@@ -3044,6 +3044,41 @@ enum wmi_10_4_feature_mask {
+@@ -3084,6 +3084,41 @@ enum wmi_10_4_feature_mask {
  
  };
  
diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
index e5dd967a26..0e7a03ef6d 100644
--- a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
+++ b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
@@ -16,7 +16,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
 
 --- a/ath10k-4.19/core.h
 +++ b/ath10k-4.19/core.h
-@@ -1487,6 +1487,10 @@ struct ath10k {
+@@ -1488,6 +1488,10 @@ struct ath10k {
  	u8 csi_data[4096];
  	u16 csi_data_len;
  
@@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
  	if (ret)
 --- a/ath10k-4.19/mac.c
 +++ b/ath10k-4.19/mac.c
-@@ -9965,7 +9965,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9982,7 +9982,7 @@ int ath10k_mac_register(struct ath10k *a
  	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
  
  #ifdef CPTCFG_MAC80211_LEDS
diff --git a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
index 3a22fc74cb..d770948f79 100644
--- a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
+++ b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
@@ -29,7 +29,7 @@ Forwarded: https://patchwork.kernel.org/patch/10549245/
  #include <net/mac80211.h>
  #include <linux/etherdevice.h>
  #include <linux/acpi.h>
-@@ -9689,6 +9690,7 @@ int ath10k_mac_register(struct ath10k *a
+@@ -9706,6 +9707,7 @@ int ath10k_mac_register(struct ath10k *a
  		ar->hw->wiphy->bands[NL80211_BAND_5GHZ] = band;
  	}
  
diff --git a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
index a2f3a3f41a..cd8967cb93 100644
--- a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
+++ b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
@@ -70,7 +70,7 @@ Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
 
 --- a/ath10k-5.2/htt_rx.c
 +++ b/ath10k-5.2/htt_rx.c
-@@ -2497,7 +2497,7 @@ do_generic:
+@@ -2507,7 +2507,7 @@ do_generic:
  		spin_lock_bh(&ar->data_lock);
  
  		peer = ath10k_peer_find_by_id(ar, peer_id);
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
