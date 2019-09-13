Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9273DB2624
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 21:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAQF0CHHjAwyWEUsZR/i6B/ISkJS2VcLd+2OnW8G77Y=; b=JJJ7Ri9NKE+KE7
	Jd1RVAtMxrJ09iZuvnMQOgMdkaF6hvsMzl4dr2r8xNF038e5MnHTMIyGFpBdp0T8nBX510TRmAD29
	10YgFPB8s7IskOfYsi4U8MEfe3skWh71UoQoVyGj44N3JW+TjJkrrKQvR4wd207FhJEk//sGYy54W
	j0EqlBCbblLq3uGprTCDDmnlYsp5swkqsvQxObmw483AY4oP8t5n3xSH4pXNZZlDsnmqLzDNDAaL8
	ggdmP7Ft5zEWWPKQcwcxo4Ette+FuTp2kfG94aCYTWookBZ9VeBV0w592dAMPaRTlKBn4eNeQgrlw
	Znoaqv0K2IjLd2EqcZ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8rKM-00055d-JN; Fri, 13 Sep 2019 19:33:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8rKC-00055G-AM
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 19:33:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id y135so2556978wmc.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 12:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qCnatCSLM7Gts1OcnBwjJJW4blk5TOb+ymZ/Gn6qEmQ=;
 b=BHmt2s3jow1TSteJRioQaeGBqQyhDHdCK9sY0B5D2L8MWgi2/O7TywUJKNz7/CbZqG
 oG8vfkNzdKZnj49L04uj7orVzm9HkLih+yc/ffRCBJ692Rqt08pHzjVmwtad5v0l/Lvf
 Jj/VHZSJKah67pNLxmJDdzW912ls6wly5R/n9NIJZAbf0V1qvh2BLeKZD8UpgW7lC+GB
 j74YuJ4AaGlyDU8rgkquoCsu+aIs6YHhmvD7rRG3lUckFYor3vA6tFBHO5bPCo8+rJDj
 z95Fb20GpOI4RmFxMF8Lhfxgfy8GQZ95ldE2zy+OBGPmUJTlzDh3yZpfS9PQ6ybK3mOj
 uucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qCnatCSLM7Gts1OcnBwjJJW4blk5TOb+ymZ/Gn6qEmQ=;
 b=heN06hTS/ynSruQqBTI8yfZv4XFyuYyaLxsSbfYUkPVHXHoC5kSgwk2UmwKo1XVdXQ
 nPQE76dGk2yW9Ugl7wRelg36VEbUC/iK2DEp5WtlPLJkNEMjOGe2wpRfqPHbgm2Wzf5x
 ZSbt1GDM+UMiUJpYRPjuRXJ5rXyjf4yVERlXG77eCVqj4ijzh7aeIyAStAMprU24he5D
 BlYirYbUCOj68+PMYornwFn+7p8efgeZynZUlaP4aw6whjcu5sKc0bZ6SsaEwggO91QF
 8ZTONmOL6wV0nDs13vk4ptUJoj3I4ofPNCInv6uZ58mw/ybQ1rZsC3kqeN1OdriY25Q6
 Em4g==
X-Gm-Message-State: APjAAAUCyJYHbq6Swn8xYPtRQE/Qv2X8aio+kB+shRweBTXxGWbnXgEu
 LSVkfVz4lpXIChXqBFZfM5knwzn0
X-Google-Smtp-Source: APXvYqxnMIuayz/0YddWcEJrsAk8NJcrBe5xm/gHDfMdUqpxX7jl6/K/62/Yi1/hc00kVxvbZCzeUg==
X-Received: by 2002:a7b:cf38:: with SMTP id m24mr4230367wmg.24.1568403220259; 
 Fri, 13 Sep 2019 12:33:40 -0700 (PDT)
Received: from debian64.daheim (p5B0D729F.dip0.t-ipconnect.de. [91.13.114.159])
 by smtp.gmail.com with ESMTPSA id b5sm1204365wmj.18.2019.09.13.12.33.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 12:33:39 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i8rK6-00028q-LZ; Fri, 13 Sep 2019 21:33:38 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Sep 2019 21:33:38 +0200
Message-ID: <2343204.oxXBjeGyBX@debian64>
In-Reply-To: <20190913101537.18812-2-robimarko@gmail.com>
References: <20190913101537.18812-1-robimarko@gmail.com>
 <20190913101537.18812-2-robimarko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_123344_363228_EDE264D5 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ath10k-ct: update to version
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

On Friday, September 13, 2019 12:15:39 PM CEST Robert Marko wrote:
> Update the ath10k-ct driver version to 5e8cd86f90dac966d12df6ece84ac41458d0e95f
> to enable dynamic VLANs to work.
> Packages refreshed while bump.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> 
> Changes from v1:
> 	* Fixed wrong mirror hash

Watch out, there's a request to revert the ath10k-ct, since the
previous "ath10k-ct: update to HEAD of 2019-08-14 - 9e5ab2" patch
apparently broke 160MHz.

https://github.com/openwrt/openwrt/commit/e9d875a5371c89a3f351df5aec593ac90ba89ecc#commitcomment-34992683

I didn't see any 160MHz related fixes in the update here... So what to do?
Update or revert?

> ---
>  package/kernel/ath10k-ct/Makefile                           | 6 +++---
>  ...h10k-add-support-for-configuring-management-packet.patch | 4 ++--
>  ...h10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch | 2 +-
>  ...h10k-fix-incorrect-multicast-broadcast-rate-settin.patch | 4 ++--
>  .../patches/164-ath10k-commit-rates-from-mac80211.patch     | 6 +++---
>  ...-and-GPIO-controlling-support-for-various-chipsets.patch | 6 +++---
>  .../202-ath10k-4.16-use-tpt-trigger-by-default.patch        | 4 ++--
>  ...h10k-Limit-available-channels-via-DT-ieee80211-fre.patch | 2 +-
>  ...h10k-Check-if-station-exists-before-forwarding-tx-.patch | 2 +-
>  9 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
> index 05d30891f5..dbf75fe174 100644
> --- a/package/kernel/ath10k-ct/Makefile
> +++ b/package/kernel/ath10k-ct/Makefile
> @@ -8,9 +8,9 @@ PKG_LICENSE_FILES:=
>  
>  PKG_SOURCE_URL:=https://github.com/greearb/ath10k-ct.git
>  PKG_SOURCE_PROTO:=git
> -PKG_SOURCE_DATE:=2019-08-14
> -PKG_SOURCE_VERSION:=9e5ab25027e0971fa24ccf93373324c08c4e992d
> -PKG_MIRROR_HASH:=95dc42a5615f80528223859b4f9618feafb5a0a29a9eb4c4bc983f76c74fb535
> +PKG_SOURCE_DATE:=2019-09-09
> +PKG_SOURCE_VERSION:=5e8cd86f90dac966d12df6ece84ac41458d0e95f
> +PKG_MIRROR_HASH:=dc1097f3a7b4b7e346918f206746d00a0b7df07ae3be9b89be55dfaef3cbbe45
>  
>  # Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
>  # Probably this should match as closely as
> diff --git a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
> index d62a1cfcf5..e67003c5a7 100644
> --- a/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
> +++ b/package/kernel/ath10k-ct/patches/161-ath10k-add-support-for-configuring-management-packet.patch
> @@ -43,7 +43,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
>   static int ath10k_mac_get_max_vht_mcs_map(u16 mcs_map, int nss)
>   {
>   	switch ((mcs_map >> (2 * nss)) & 0x3) {
> -@@ -6388,9 +6404,10 @@ static void ath10k_bss_info_changed(stru
> +@@ -6405,9 +6421,10 @@ static void ath10k_bss_info_changed(stru
>   	struct cfg80211_chan_def def;
>   	u32 vdev_param, pdev_param, slottime, preamble;
>   	u16 bitrate, hw_value;
> @@ -56,7 +56,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
>   
>   	mutex_lock(&ar->conf_mutex);
>   
> -@@ -6596,6 +6613,30 @@ static void ath10k_bss_info_changed(stru
> +@@ -6613,6 +6630,30 @@ static void ath10k_bss_info_changed(stru
>   				    arvif->vdev_id,  ret);
>   	}
>   
> diff --git a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
> index ab360b7261..a24029983c 100644
> --- a/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
> +++ b/package/kernel/ath10k-ct/patches/162-ath10k-fix-possible-out-of-bound-access-of-ath10k_ra.patch
> @@ -26,7 +26,7 @@ Origin: backport, https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux
>   		if (ath10k_rates[i].bitrate == bitrate)
>   			return hw_value_prefix | ath10k_rates[i].hw_value;
>   	}
> -@@ -6619,22 +6619,22 @@ static void ath10k_bss_info_changed(stru
> +@@ -6636,22 +6636,22 @@ static void ath10k_bss_info_changed(stru
>   			return;
>   		}
>   
> diff --git a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
> index 2b550e76df..f6fd75b7e5 100644
> --- a/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
> +++ b/package/kernel/ath10k-ct/patches/163-ath10k-fix-incorrect-multicast-broadcast-rate-settin.patch
> @@ -17,7 +17,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
>  
>  --- a/ath10k-4.19/mac.c
>  +++ b/ath10k-4.19/mac.c
> -@@ -6404,8 +6404,8 @@ static void ath10k_bss_info_changed(stru
> +@@ -6421,8 +6421,8 @@ static void ath10k_bss_info_changed(stru
>   	struct cfg80211_chan_def def;
>   	u32 vdev_param, pdev_param, slottime, preamble;
>   	u16 bitrate, hw_value;
> @@ -28,7 +28,7 @@ Origin: other, https://patchwork.kernel.org/patch/10723033/
>   	enum nl80211_band band;
>   	const struct ieee80211_supported_band *sband;
>   
> -@@ -6578,7 +6578,11 @@ static void ath10k_bss_info_changed(stru
> +@@ -6595,7 +6595,11 @@ static void ath10k_bss_info_changed(stru
>   	if (changed & BSS_CHANGED_MCAST_RATE &&
>   	    !WARN_ON(ath10k_mac_vif_chan(arvif->vif, &def))) {
>   		band = def.chan->band;
> diff --git a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
> index b67ad2c3c4..aab435bccd 100644
> --- a/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
> +++ b/package/kernel/ath10k-ct/patches/164-ath10k-commit-rates-from-mac80211.patch
> @@ -11,7 +11,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
>  
>  --- a/ath10k-4.19/mac.c
>  +++ b/ath10k-4.19/mac.c
> -@@ -6600,6 +6600,7 @@ static void ath10k_bss_info_changed(stru
> +@@ -6617,6 +6617,7 @@ static void ath10k_bss_info_changed(stru
>   			   "mac vdev %d mcast_rate %x\n",
>   			   arvif->vdev_id, rate);
>   
> @@ -19,7 +19,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
>   		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
>   		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
>   						vdev_param, rate);
> -@@ -6608,6 +6609,7 @@ static void ath10k_bss_info_changed(stru
> +@@ -6625,6 +6626,7 @@ static void ath10k_bss_info_changed(stru
>   				    "failed to set mcast rate on vdev %i: %d\n",
>   				    arvif->vdev_id,  ret);
>   
> @@ -27,7 +27,7 @@ Signed-off-by: Sven Eckelmann <sven@narfation.org>
>   		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
>   		ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id,
>   						vdev_param, rate);
> -@@ -6634,6 +6636,7 @@ static void ath10k_bss_info_changed(stru
> +@@ -6651,6 +6653,7 @@ static void ath10k_bss_info_changed(stru
>   			return;
>   		}
>   
> diff --git a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
> index 38ec21f52f..ba42fc1d2d 100644
> --- a/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
> +++ b/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch
> @@ -210,7 +210,7 @@ v13:
>   
>   #include "htt.h"
>   #include "htc.h"
> -@@ -1137,7 +1138,6 @@ struct ath10k {
> +@@ -1138,7 +1139,6 @@ struct ath10k {
>   	u32 low_5ghz_chan;
>   	u32 high_5ghz_chan;
>   	bool ani_enabled;
> @@ -218,7 +218,7 @@ v13:
>   	bool p2p;
>   	bool ct_all_pkts_htt; /* CT firmware only: native-wifi for all pkts */
>   
> -@@ -1388,6 +1388,13 @@ struct ath10k {
> +@@ -1389,6 +1389,13 @@ struct ath10k {
>   	} testmode;
>   
>   	struct {
> @@ -562,7 +562,7 @@ v13:
>   int ath10k_wmi_attach(struct ath10k *ar)
>  --- a/ath10k-4.19/wmi.h
>  +++ b/ath10k-4.19/wmi.h
> -@@ -3044,6 +3044,41 @@ enum wmi_10_4_feature_mask {
> +@@ -3084,6 +3084,41 @@ enum wmi_10_4_feature_mask {
>   
>   };
>   
> diff --git a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
> index e5dd967a26..0e7a03ef6d 100644
> --- a/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
> +++ b/package/kernel/ath10k-ct/patches/202-ath10k-4.16-use-tpt-trigger-by-default.patch
> @@ -16,7 +16,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
>  
>  --- a/ath10k-4.19/core.h
>  +++ b/ath10k-4.19/core.h
> -@@ -1487,6 +1487,10 @@ struct ath10k {
> +@@ -1488,6 +1488,10 @@ struct ath10k {
>   	u8 csi_data[4096];
>   	u16 csi_data_len;
>   
> @@ -42,7 +42,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
>   	if (ret)
>  --- a/ath10k-4.19/mac.c
>  +++ b/ath10k-4.19/mac.c
> -@@ -9965,7 +9965,7 @@ int ath10k_mac_register(struct ath10k *a
> +@@ -9982,7 +9982,7 @@ int ath10k_mac_register(struct ath10k *a
>   	wiphy_ext_feature_set(ar->hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
>   
>   #ifdef CPTCFG_MAC80211_LEDS
> diff --git a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
> index 3a22fc74cb..d770948f79 100644
> --- a/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
> +++ b/package/kernel/ath10k-ct/patches/203-ath10k-Limit-available-channels-via-DT-ieee80211-fre.patch
> @@ -29,7 +29,7 @@ Forwarded: https://patchwork.kernel.org/patch/10549245/
>   #include <net/mac80211.h>
>   #include <linux/etherdevice.h>
>   #include <linux/acpi.h>
> -@@ -9689,6 +9690,7 @@ int ath10k_mac_register(struct ath10k *a
> +@@ -9706,6 +9707,7 @@ int ath10k_mac_register(struct ath10k *a
>   		ar->hw->wiphy->bands[NL80211_BAND_5GHZ] = band;
>   	}
>   
> diff --git a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
> index a2f3a3f41a..cd8967cb93 100644
> --- a/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
> +++ b/package/kernel/ath10k-ct/patches/976-ath10k-Check-if-station-exists-before-forwarding-tx-.patch
> @@ -70,7 +70,7 @@ Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>  
>  --- a/ath10k-5.2/htt_rx.c
>  +++ b/ath10k-5.2/htt_rx.c
> -@@ -2497,7 +2497,7 @@ do_generic:
> +@@ -2507,7 +2507,7 @@ do_generic:
>   		spin_lock_bh(&ar->data_lock);
>   
>   		peer = ath10k_peer_find_by_id(ar, peer_id);
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
