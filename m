Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DB4D4FA0
	for <lists+openwrt-devel@lfdr.de>; Sat, 12 Oct 2019 14:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=95jDc02wB9xveBvzrk4MXp1z7LlzAxirNAcrtFkxMTs=; b=gaUM9f7AMhCbve
	qhYuEQjloqb5aM+uHdurTLSglFUkmKuJ9a+zINcnEntTHcb5MtvBtXuJsj0XcvBIODCOiWvMtt2dO
	uYnYzvrWMoh574GQSg+fe1lBB9/HiZfZfHHY5GkIyPhmZEElRlrusdjplPVZh2opmzlTwKvmLNFY9
	mRNQ060wMNiTeOILFvGPp2XkFMLET5DMux86W7GLGMbN6fYuI2HjZUEkC3Q40uQw2eaiv9nymfT7Z
	fI/tTiSlR5x7AZswEIDgy4oJGY2UGO/3hdz89539OcAn7b9Lh6TlWMeztWGxE9wsAiupSXG78soNb
	Zwh9aKA/jYnfe87fb44w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJGNz-0006p1-Fj; Sat, 12 Oct 2019 12:20:39 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJGNt-0006oT-EI
 for openwrt-devel@lists.openwrt.org; Sat, 12 Oct 2019 12:20:35 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 32FC8A2292;
 Sat, 12 Oct 2019 14:20:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id b9QyhPjN3puR; Sat, 12 Oct 2019 14:20:29 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 12 Oct 2019 14:20:22 +0200
Message-Id: <20191012122022.22459-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_052033_783955_AA4A2AE3 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 19.07] mac80211: Update to version 4.19.79
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
 package/kernel/mac80211/Makefile              |  6 +++---
 ...roduce-ath_dynack_set_timeout-routin.patch | 19 +++++++------------
 ...perly-set-last-timeout-timestamp-in-.patch |  5 -----
 ...-max-timeout-according-to-channel-wi.patch | 18 +++++++-----------
 ...-ackto-to-max-timeout-in-ath_dynack_.patch |  5 -----
 ...ratelimited-variants-of-err-and-warn.patch |  2 +-
 .../mac80211/patches/subsys/210-ap_scan.patch |  2 +-
 ...-Add-airtime-statistics-and-settings.patch |  8 ++++----
 .../522-mac80211_configure_antenna_gain.patch |  8 ++++----
 9 files changed, 27 insertions(+), 46 deletions(-)

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 103c7c4e19..70b80e8807 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=4.19.66-1
+PKG_VERSION:=4.19.79-1
 PKG_RELEASE:=1
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.66/
-PKG_HASH:=1f3c6a58cb45b247f6e473d1b52236bfbb41cb3e11e38a74526727e911b51a02
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v4.19.79/
+PKG_HASH:=ee03b16949e4968092cfed3cd763ff4682bc29fa3b52ebc239aa915583413cf3
 
 PKG_SOURCE:=backports-$(PKG_VERSION).tar.xz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/backports-$(PKG_VERSION)
diff --git a/package/kernel/mac80211/patches/ath/558-ath9k-dynack-introduce-ath_dynack_set_timeout-routin.patch b/package/kernel/mac80211/patches/ath/558-ath9k-dynack-introduce-ath_dynack_set_timeout-routin.patch
index e13a15026e..d765f88559 100644
--- a/package/kernel/mac80211/patches/ath/558-ath9k-dynack-introduce-ath_dynack_set_timeout-routin.patch
+++ b/package/kernel/mac80211/patches/ath/558-ath9k-dynack-introduce-ath_dynack_set_timeout-routin.patch
@@ -12,15 +12,12 @@ Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
  drivers/net/wireless/ath/ath9k/dynack.c | 37 ++++++++++++++-----------
  1 file changed, 21 insertions(+), 16 deletions(-)
 
-diff --git a/drivers/net/wireless/ath/ath9k/dynack.c b/drivers/net/wireless/ath/ath9k/dynack.c
-index f112fa5b2eac..38dbe25919f7 100644
 --- a/drivers/net/wireless/ath/ath9k/dynack.c
 +++ b/drivers/net/wireless/ath/ath9k/dynack.c
-@@ -78,6 +78,24 @@ static inline bool ath_dynack_bssidmask(struct ath_hw *ah, const u8 *mac)
- 	return true;
+@@ -79,6 +79,24 @@ static inline bool ath_dynack_bssidmask(
  }
  
-+/**
+ /**
 + * ath_dynack_set_timeout - configure timeouts/slottime registers
 + * @ah: ath hw
 + * @to: timeout value
@@ -38,10 +35,11 @@ index f112fa5b2eac..38dbe25919f7 100644
 +	ath9k_hw_set_cts_timeout(ah, to);
 +}
 +
- /**
++/**
   * ath_dynack_compute_ackto - compute ACK timeout as the maximum STA timeout
   * @ah: ath hw
-@@ -86,7 +104,6 @@ static inline bool ath_dynack_bssidmask(struct ath_hw *ah, const u8 *mac)
+  *
+@@ -86,7 +104,6 @@ static inline bool ath_dynack_bssidmask(
   */
  static void ath_dynack_compute_ackto(struct ath_hw *ah)
  {
@@ -49,7 +47,7 @@ index f112fa5b2eac..38dbe25919f7 100644
  	struct ath_dynack *da = &ah->dynack;
  	struct ath_node *an;
  	int to = 0;
-@@ -96,15 +113,8 @@ static void ath_dynack_compute_ackto(struct ath_hw *ah)
+@@ -96,15 +113,8 @@ static void ath_dynack_compute_ackto(str
  			to = an->ackto;
  
  	if (to && da->ackto != to) {
@@ -66,7 +64,7 @@ index f112fa5b2eac..38dbe25919f7 100644
  	}
  }
  
-@@ -198,10 +208,7 @@ void ath_dynack_sample_tx_ts(struct ath_hw *ah, struct sk_buff *skb,
+@@ -198,10 +208,7 @@ void ath_dynack_sample_tx_ts(struct ath_
  		    ieee80211_is_assoc_resp(hdr->frame_control) ||
  		    ieee80211_is_auth(hdr->frame_control)) {
  			ath_dbg(common, DYNACK, "late ack\n");
@@ -89,6 +87,3 @@ index f112fa5b2eac..38dbe25919f7 100644
  }
  EXPORT_SYMBOL(ath_dynack_reset);
  
--- 
-2.17.1
-
diff --git a/package/kernel/mac80211/patches/ath/559-ath9k-dynack-properly-set-last-timeout-timestamp-in-.patch b/package/kernel/mac80211/patches/ath/559-ath9k-dynack-properly-set-last-timeout-timestamp-in-.patch
index 9504af1419..5a2aac2782 100644
--- a/package/kernel/mac80211/patches/ath/559-ath9k-dynack-properly-set-last-timeout-timestamp-in-.patch
+++ b/package/kernel/mac80211/patches/ath/559-ath9k-dynack-properly-set-last-timeout-timestamp-in-.patch
@@ -14,8 +14,6 @@ Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
  drivers/net/wireless/ath/ath9k/dynack.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
-diff --git a/drivers/net/wireless/ath/ath9k/dynack.c b/drivers/net/wireless/ath/ath9k/dynack.c
-index 38dbe25919f7..398ea872751f 100644
 --- a/drivers/net/wireless/ath/ath9k/dynack.c
 +++ b/drivers/net/wireless/ath/ath9k/dynack.c
 @@ -338,7 +338,7 @@ void ath_dynack_reset(struct ath_hw *ah)
@@ -27,6 +25,3 @@ index 38dbe25919f7..398ea872751f 100644
  	da->ackto = ackto;
  
  	da->st_rbf.t_rb = 0;
--- 
-2.17.1
-
diff --git a/package/kernel/mac80211/patches/ath/560-ath9k-dynack-set-max-timeout-according-to-channel-wi.patch b/package/kernel/mac80211/patches/ath/560-ath9k-dynack-set-max-timeout-according-to-channel-wi.patch
index f40289cca4..876b113aba 100644
--- a/package/kernel/mac80211/patches/ath/560-ath9k-dynack-set-max-timeout-according-to-channel-wi.patch
+++ b/package/kernel/mac80211/patches/ath/560-ath9k-dynack-set-max-timeout-according-to-channel-wi.patch
@@ -12,11 +12,9 @@ Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
  drivers/net/wireless/ath/ath9k/dynack.c | 38 +++++++++++++++++++------
  1 file changed, 30 insertions(+), 8 deletions(-)
 
-diff --git a/drivers/net/wireless/ath/ath9k/dynack.c b/drivers/net/wireless/ath/ath9k/dynack.c
-index 398ea872751f..fe9181533de3 100644
 --- a/drivers/net/wireless/ath/ath9k/dynack.c
 +++ b/drivers/net/wireless/ath/ath9k/dynack.c
-@@ -20,11 +20,30 @@
+@@ -20,12 +20,31 @@
  
  #define COMPUTE_TO		(5 * HZ)
  #define LATEACK_DELAY		(10 * HZ)
@@ -25,7 +23,7 @@ index 398ea872751f..fe9181533de3 100644
  #define EWMA_LEVEL		96
  #define EWMA_DIV		128
  
-+/**
+ /**
 + * ath_dynack_get_max_to - set max timeout according to channel width
 + * @ah: ath hw
 + *
@@ -46,10 +44,11 @@ index 398ea872751f..fe9181533de3 100644
 +	return 600;
 +}
 +
- /**
++/**
   * ath_dynack_ewma - EWMA (Exponentially Weighted Moving Average) calculation
   *
-@@ -126,15 +145,16 @@ static void ath_dynack_compute_ackto(struct ath_hw *ah)
+  */
+@@ -126,15 +145,16 @@ static void ath_dynack_compute_ackto(str
   */
  static void ath_dynack_compute_to(struct ath_hw *ah)
  {
@@ -70,7 +69,7 @@ index 398ea872751f..fe9181533de3 100644
  	while (da->st_rbf.h_rb != da->st_rbf.t_rb &&
  	       da->ack_rbf.h_rb != da->ack_rbf.t_rb) {
  		ack_ts = da->ack_rbf.tstamp[da->ack_rbf.h_rb];
-@@ -150,7 +170,7 @@ static void ath_dynack_compute_to(struct ath_hw *ah)
+@@ -150,7 +170,7 @@ static void ath_dynack_compute_to(struct
  		if (ack_ts > st_ts->tstamp + st_ts->dur) {
  			ackto = ack_ts - st_ts->tstamp - st_ts->dur;
  
@@ -79,7 +78,7 @@ index 398ea872751f..fe9181533de3 100644
  				sta = ieee80211_find_sta_by_ifaddr(ah->hw, dst,
  								   src);
  				if (sta) {
-@@ -207,8 +227,10 @@ void ath_dynack_sample_tx_ts(struct ath_hw *ah, struct sk_buff *skb,
+@@ -207,8 +227,10 @@ void ath_dynack_sample_tx_ts(struct ath_
  		if (ieee80211_is_assoc_req(hdr->frame_control) ||
  		    ieee80211_is_assoc_resp(hdr->frame_control) ||
  		    ieee80211_is_auth(hdr->frame_control)) {
@@ -91,6 +90,3 @@ index 398ea872751f..fe9181533de3 100644
  			if (sta) {
  				struct ath_node *an;
  
--- 
-2.17.1
-
diff --git a/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch b/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch
index 5b75096e19..6495bf01b0 100644
--- a/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch
+++ b/package/kernel/mac80211/patches/ath/561-ath9k-dynack-set-ackto-to-max-timeout-in-ath_dynack_.patch
@@ -16,8 +16,6 @@ Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
  drivers/net/wireless/ath/ath9k/dynack.c | 20 +++++++++++++-------
  1 file changed, 13 insertions(+), 7 deletions(-)
 
-diff --git a/drivers/net/wireless/ath/ath9k/dynack.c b/drivers/net/wireless/ath/ath9k/dynack.c
-index fe9181533de3..f786be04d0ac 100644
 --- a/drivers/net/wireless/ath/ath9k/dynack.c
 +++ b/drivers/net/wireless/ath/ath9k/dynack.c
 @@ -321,11 +321,9 @@ EXPORT_SYMBOL(ath_dynack_sample_ack_ts);
@@ -73,6 +71,3 @@ index fe9181533de3..f786be04d0ac 100644
  
  	ah->hw->wiphy->features |= NL80211_FEATURE_ACKTO_ESTIMATION;
  }
--- 
-2.17.1
-
diff --git a/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch b/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch
index bea1884489..d06f502f5e 100644
--- a/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch
+++ b/package/kernel/mac80211/patches/rt2x00/020-cfg80211-add-ratelimited-variants-of-err-and-warn.patch
@@ -25,7 +25,7 @@ Signed-off-by: Stanislaw Gruszka <sgruszka@redhat.com>
 
 --- a/include/net/cfg80211.h
 +++ b/include/net/cfg80211.h
-@@ -6597,6 +6597,11 @@ int cfg80211_external_auth_request(struc
+@@ -6612,6 +6612,11 @@ bool cfg80211_iftype_allowed(struct wiph
  #define wiphy_info(wiphy, format, args...)			\
  	dev_info(&(wiphy)->dev, format, ##args)
  
diff --git a/package/kernel/mac80211/patches/subsys/210-ap_scan.patch b/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
index fcc173da69..ca5fb40483 100644
--- a/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
+++ b/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
@@ -1,6 +1,6 @@
 --- a/net/mac80211/cfg.c
 +++ b/net/mac80211/cfg.c
-@@ -2237,7 +2237,7 @@ static int ieee80211_scan(struct wiphy *
+@@ -2238,7 +2238,7 @@ static int ieee80211_scan(struct wiphy *
  		 * the  frames sent while scanning on other channel will be
  		 * lost)
  		 */
diff --git a/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch b/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
index 338e247307..9078fc2596 100644
--- a/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
+++ b/package/kernel/mac80211/patches/subsys/321-cfg80211-Add-airtime-statistics-and-settings.patch
@@ -148,7 +148,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	MAX_NL80211_EXT_FEATURES = NUM_NL80211_EXT_FEATURES - 1
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -430,6 +430,7 @@ static const struct nla_policy nl80211_p
+@@ -462,6 +462,7 @@ static const struct nla_policy nl80211_p
  	[NL80211_ATTR_TXQ_QUANTUM] = { .type = NLA_U32 },
  	[NL80211_ATTR_HE_CAPABILITY] = { .type = NLA_BINARY,
  					 .len = NL80211_HE_MAX_CAPABILITY_LEN },
@@ -156,7 +156,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  };
  
  /* policy for the key attributes */
-@@ -4664,6 +4665,11 @@ static int nl80211_send_station(struct s
+@@ -4702,6 +4703,11 @@ static int nl80211_send_station(struct s
  	PUT_SINFO(PLID, plid, u16);
  	PUT_SINFO(PLINK_STATE, plink_state, u8);
  	PUT_SINFO_U64(RX_DURATION, rx_duration);
@@ -168,7 +168,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  
  	switch (rdev->wiphy.signal_type) {
  	case CFG80211_SIGNAL_TYPE_MBM:
-@@ -5300,6 +5306,15 @@ static int nl80211_set_station(struct sk
+@@ -5338,6 +5344,15 @@ static int nl80211_set_station(struct sk
  			nla_get_u8(info->attrs[NL80211_ATTR_OPMODE_NOTIF]);
  	}
  
@@ -184,7 +184,7 @@ Signed-off-by: Johannes Berg <johannes.berg@intel.com>
  	/* Include parameters for TDLS peer (will check later) */
  	err = nl80211_set_station_tdls(info, &params);
  	if (err)
-@@ -5438,6 +5453,15 @@ static int nl80211_new_station(struct sk
+@@ -5476,6 +5491,15 @@ static int nl80211_new_station(struct sk
  			return -EINVAL;
  	}
  
diff --git a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
index 4dcd7b5fcc..e0c3d24f74 100644
--- a/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
+++ b/package/kernel/mac80211/patches/subsys/522-mac80211_configure_antenna_gain.patch
@@ -57,7 +57,7 @@
  	__NL80211_ATTR_AFTER_LAST,
 --- a/net/mac80211/cfg.c
 +++ b/net/mac80211/cfg.c
-@@ -2505,6 +2505,19 @@ static int ieee80211_get_tx_power(struct
+@@ -2506,6 +2506,19 @@ static int ieee80211_get_tx_power(struct
  	return 0;
  }
  
@@ -77,7 +77,7 @@
  static int ieee80211_set_wds_peer(struct wiphy *wiphy, struct net_device *dev,
  				  const u8 *addr)
  {
-@@ -3872,6 +3885,7 @@ const struct cfg80211_ops mac80211_confi
+@@ -3873,6 +3886,7 @@ const struct cfg80211_ops mac80211_confi
  	.set_wiphy_params = ieee80211_set_wiphy_params,
  	.set_tx_power = ieee80211_set_tx_power,
  	.get_tx_power = ieee80211_get_tx_power,
@@ -129,7 +129,7 @@
  	local->user_power_level = IEEE80211_UNSET_POWER_LEVEL;
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -431,6 +431,7 @@ static const struct nla_policy nl80211_p
+@@ -463,6 +463,7 @@ static const struct nla_policy nl80211_p
  	[NL80211_ATTR_HE_CAPABILITY] = { .type = NLA_BINARY,
  					 .len = NL80211_HE_MAX_CAPABILITY_LEN },
  	[NL80211_ATTR_AIRTIME_WEIGHT] = NLA_POLICY_MIN(NLA_U16, 1),
@@ -137,7 +137,7 @@
  };
  
  /* policy for the key attributes */
-@@ -2588,6 +2589,20 @@ static int nl80211_set_wiphy(struct sk_b
+@@ -2622,6 +2623,20 @@ static int nl80211_set_wiphy(struct sk_b
  		if (result)
  			return result;
  	}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
