Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA129D4F8F
	for <lists+openwrt-devel@lfdr.de>; Sat, 12 Oct 2019 14:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R0y9qdll8nVRPktbKYsTj9nsk07OJQ16TcPoJat0mnA=; b=QOibJqfWEy/Uhd
	TKX8VqqU2Ac54CqVK27/bRCONcL/Wt3uMYb4JvExqvS/d8EUEct43sseBK9DDYVHZrK5Zy0yjBZF4
	C4zmk124wzZoTc/vABaFZitICXSvGLPBloGO0DuYcyydJ/u1+O/YvWoWtBcLU+e5O7NV6h/cWcH5B
	n5dTCFM19Dul+jex094HNeFoUjQAH9IPYoL92RruiIgYbsFssPCmosscQ9wRBG2PS58fQM7sxsHQ6
	Kr3CtmZIep5yar16S79Vns46c5pKVX/bZcDM16HdEaJ8DZ8XHvkD4wFEw8DSAV3kN/Q+blxvVb9kB
	6/gaJURUVdHnRCC9dy6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJGGp-0003VF-6P; Sat, 12 Oct 2019 12:13:15 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJGGf-0003Tt-Ge
 for openwrt-devel@lists.openwrt.org; Sat, 12 Oct 2019 12:13:08 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id B73F8A36C5;
 Sat, 12 Oct 2019 14:12:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id QkBvX7B4MIPn; Sat, 12 Oct 2019 14:12:49 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 12 Oct 2019 14:12:34 +0200
Message-Id: <20191012121235.14841-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_051305_868365_8623D0DA 
X-CRM114-Status: GOOD (  25.28  )
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
Subject: [OpenWrt-Devel] [PATCH 1/2] mac80211: Update to version 5.3.6
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
 package/kernel/mac80211/Makefile              |   6 +-
 ...roduce-ath_dynack_set_timeout-routin.patch |  19 ++-
 ...perly-set-last-timeout-timestamp-in-.patch |   5 -
 ...-max-timeout-according-to-channel-wi.patch |  18 ++-
 ...-ackto-to-max-timeout-in-ath_dynack_.patch |   5 -
 ...s-on-start-to-fix-AP-mode-regression.patch | 113 ------------------
 ...-rt2x00-clear-up-IV-s-on-key-removal.patch |  55 ---------
 ...ble-TX_PIN_CFG_LNA_PE_-bits-per-band.patch |  70 -----------
 .../mac80211/patches/subsys/210-ap_scan.patch |   2 +-
 ...al-BSS-receive-time-to-survey-inform.patch |   2 +-
 .../500-mac80211_configure_antenna_gain.patch |   8 +-
 11 files changed, 23 insertions(+), 280 deletions(-)
 delete mode 100644 package/kernel/mac80211/patches/rt2x00/010-rt2x00-clear-IV-s-on-start-to-fix-AP-mode-regression.patch
 delete mode 100644 package/kernel/mac80211/patches/rt2x00/011-rt2x00-clear-up-IV-s-on-key-removal.patch
 delete mode 100644 package/kernel/mac80211/patches/rt2x00/016-rt2x00-revert-rt2800-enable-TX_PIN_CFG_LNA_PE_-bits-per-band.patch

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Makefile
index 3cc14944fe..9f72cb0f63 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=mac80211
 
-PKG_VERSION:=5.3-rc4-1
+PKG_VERSION:=5.3.6-1
 PKG_RELEASE:=1
-PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.3-rc4/
-PKG_HASH:=b159557f1e9e3e88ee2edf60ee786cd9ffd477e386306ea249c4e9085695b932
+PKG_SOURCE_URL:=@KERNEL/linux/kernel/projects/backports/stable/v5.3.6/
+PKG_HASH:=16ded706945999543a73e2349d36b8003eeb2b097970ea1ad80344b9f56393a3
 
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
diff --git a/package/kernel/mac80211/patches/rt2x00/010-rt2x00-clear-IV-s-on-start-to-fix-AP-mode-regression.patch b/package/kernel/mac80211/patches/rt2x00/010-rt2x00-clear-IV-s-on-start-to-fix-AP-mode-regression.patch
deleted file mode 100644
index 8859c0dd9e..0000000000
--- a/package/kernel/mac80211/patches/rt2x00/010-rt2x00-clear-IV-s-on-start-to-fix-AP-mode-regression.patch
+++ /dev/null
@@ -1,113 +0,0 @@
-From patchwork Mon Aug 19 11:20:07 2019
-Content-Type: text/plain; charset="utf-8"
-MIME-Version: 1.0
-Content-Transfer-Encoding: 7bit
-X-Patchwork-Submitter: Stanislaw Gruszka <sgruszka@redhat.com>
-X-Patchwork-Id: 11100685
-X-Patchwork-Delegate: kvalo@adurom.com
-Return-Path: <linux-wireless-owner@kernel.org>
-From: Stanislaw Gruszka <sgruszka@redhat.com>
-To: linux-wireless@vger.kernel.org
-Subject: [PATCH 5.3] rt2x00: clear IV's on start to fix AP mode regression
-Date: Mon, 19 Aug 2019 13:20:07 +0200
-Message-Id: <1566213607-6723-1-git-send-email-sgruszka@redhat.com>
-Sender: linux-wireless-owner@vger.kernel.org
-List-ID: <linux-wireless.vger.kernel.org>
-X-Mailing-List: linux-wireless@vger.kernel.org
-
-To do not brake HW restart we should keep initialization vectors data.
-I assumed that on start the data is already initialized to zeros, but
-that not true on some scenarios and we should clear it. So add
-additional flag to check if we are under HW restart and clear IV's
-data if we are not.
-
-Patch fixes AP mode regression.
-
-Reported-and-tested-by: Emil Karlson <jekarl@iki.fi>
-Fixes: 710e6cc1595e ("rt2800: do not nullify initialization vector data")
-Signed-off-by: Stanislaw Gruszka <sgruszka@redhat.com>
----
- drivers/net/wireless/ralink/rt2x00/rt2800lib.c |  9 +++++++++
- drivers/net/wireless/ralink/rt2x00/rt2x00.h    |  1 +
- drivers/net/wireless/ralink/rt2x00/rt2x00dev.c | 13 ++++++++-----
- 3 files changed, 18 insertions(+), 5 deletions(-)
-
---- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -6095,6 +6095,15 @@ static int rt2800_init_registers(struct
- 	}
- 
- 	/*
-+	 * Clear encryption initialization vectors on start, but keep them
-+	 * for watchdog reset. Otherwise we will have wrong IVs and not be
-+	 * able to keep connections after reset.
-+	 */
-+	if (!test_bit(DEVICE_STATE_RESET, &rt2x00dev->flags))
-+		for (i = 0; i < 256; i++)
-+			rt2800_register_write(rt2x00dev, MAC_IVEIV_ENTRY(i), 0);
-+
-+	/*
- 	 * Clear all beacons
- 	 */
- 	for (i = 0; i < 8; i++)
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00.h
-@@ -658,6 +658,7 @@ enum rt2x00_state_flags {
- 	DEVICE_STATE_ENABLED_RADIO,
- 	DEVICE_STATE_SCANNING,
- 	DEVICE_STATE_FLUSHING,
-+	DEVICE_STATE_RESET,
- 
- 	/*
- 	 * Driver configuration
---- a/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
-@@ -1256,13 +1256,14 @@ static int rt2x00lib_initialize(struct r
- 
- int rt2x00lib_start(struct rt2x00_dev *rt2x00dev)
- {
--	int retval;
-+	int retval = 0;
- 
- 	if (test_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags)) {
- 		/*
- 		 * This is special case for ieee80211_restart_hw(), otherwise
- 		 * mac80211 never call start() two times in row without stop();
- 		 */
-+		set_bit(DEVICE_STATE_RESET, &rt2x00dev->flags);
- 		rt2x00dev->ops->lib->pre_reset_hw(rt2x00dev);
- 		rt2x00lib_stop(rt2x00dev);
- 	}
-@@ -1273,14 +1274,14 @@ int rt2x00lib_start(struct rt2x00_dev *r
- 	 */
- 	retval = rt2x00lib_load_firmware(rt2x00dev);
- 	if (retval)
--		return retval;
-+		goto out;
- 
- 	/*
- 	 * Initialize the device.
- 	 */
- 	retval = rt2x00lib_initialize(rt2x00dev);
- 	if (retval)
--		return retval;
-+		goto out;
- 
- 	rt2x00dev->intf_ap_count = 0;
- 	rt2x00dev->intf_sta_count = 0;
-@@ -1289,11 +1290,13 @@ int rt2x00lib_start(struct rt2x00_dev *r
- 	/* Enable the radio */
- 	retval = rt2x00lib_enable_radio(rt2x00dev);
- 	if (retval)
--		return retval;
-+		goto out;
- 
- 	set_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags);
- 
--	return 0;
-+out:
-+	clear_bit(DEVICE_STATE_RESET, &rt2x00dev->flags);
-+	return retval;
- }
- 
- void rt2x00lib_stop(struct rt2x00_dev *rt2x00dev)
diff --git a/package/kernel/mac80211/patches/rt2x00/011-rt2x00-clear-up-IV-s-on-key-removal.patch b/package/kernel/mac80211/patches/rt2x00/011-rt2x00-clear-up-IV-s-on-key-removal.patch
deleted file mode 100644
index 7f3f139e9f..0000000000
--- a/package/kernel/mac80211/patches/rt2x00/011-rt2x00-clear-up-IV-s-on-key-removal.patch
+++ /dev/null
@@ -1,55 +0,0 @@
-From patchwork Fri Aug 23 12:48:03 2019
-Content-Type: text/plain; charset="utf-8"
-MIME-Version: 1.0
-Content-Transfer-Encoding: 7bit
-X-Patchwork-Submitter: Stanislaw Gruszka <sgruszka@redhat.com>
-X-Patchwork-Id: 11111605
-X-Patchwork-Delegate: kvalo@adurom.com
-From: Stanislaw Gruszka <sgruszka@redhat.com>
-To: linux-wireless@vger.kernel.org
-Subject: [PATCH 5.3] rt2x00: clear up IV's on key removal
-Date: Fri, 23 Aug 2019 14:48:03 +0200
-Message-Id: <1566564483-31088-1-git-send-email-sgruszka@redhat.com>
-Sender: linux-wireless-owner@vger.kernel.org
-List-ID: <linux-wireless.vger.kernel.org>
-X-Mailing-List: linux-wireless@vger.kernel.org
-
-After looking at code I realized that my previous fix
-95844124385e ("rt2x00: clear IV's on start to fix AP mode regression")
-was incomplete. We can still have wrong IV's after re-keyring.
-To fix that, clear up IV's also on key removal.
-
-Fixes: 710e6cc1595e ("rt2800: do not nullify initialization vector data")
-Signed-off-by: Stanislaw Gruszka <sgruszka@redhat.com>
----
- drivers/net/wireless/ralink/rt2x00/rt2800lib.c | 19 ++++++++++++-------
- 1 file changed, 12 insertions(+), 7 deletions(-)
-
---- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -1654,13 +1654,18 @@ static void rt2800_config_wcid_attr_ciph
- 
- 	offset = MAC_IVEIV_ENTRY(key->hw_key_idx);
- 
--	rt2800_register_multiread(rt2x00dev, offset,
--				  &iveiv_entry, sizeof(iveiv_entry));
--	if ((crypto->cipher == CIPHER_TKIP) ||
--	    (crypto->cipher == CIPHER_TKIP_NO_MIC) ||
--	    (crypto->cipher == CIPHER_AES))
--		iveiv_entry.iv[3] |= 0x20;
--	iveiv_entry.iv[3] |= key->keyidx << 6;
-+	if (crypto->cmd == SET_KEY) {
-+		rt2800_register_multiread(rt2x00dev, offset,
-+					  &iveiv_entry, sizeof(iveiv_entry));
-+		if ((crypto->cipher == CIPHER_TKIP) ||
-+		    (crypto->cipher == CIPHER_TKIP_NO_MIC) ||
-+		    (crypto->cipher == CIPHER_AES))
-+			iveiv_entry.iv[3] |= 0x20;
-+		iveiv_entry.iv[3] |= key->keyidx << 6;
-+	} else {
-+		memset(&iveiv_entry, 0, sizeof(iveiv_entry));
-+	}
-+
- 	rt2800_register_multiwrite(rt2x00dev, offset,
- 				   &iveiv_entry, sizeof(iveiv_entry));
- }
diff --git a/package/kernel/mac80211/patches/rt2x00/016-rt2x00-revert-rt2800-enable-TX_PIN_CFG_LNA_PE_-bits-per-band.patch b/package/kernel/mac80211/patches/rt2x00/016-rt2x00-revert-rt2800-enable-TX_PIN_CFG_LNA_PE_-bits-per-band.patch
deleted file mode 100644
index 3fcf231870..0000000000
--- a/package/kernel/mac80211/patches/rt2x00/016-rt2x00-revert-rt2800-enable-TX_PIN_CFG_LNA_PE_-bits-per-band.patch
+++ /dev/null
@@ -1,70 +0,0 @@
-From patchwork Thu Aug 29 11:29:59 2019
-Content-Type: text/plain; charset="utf-8"
-MIME-Version: 1.0
-Content-Transfer-Encoding: 7bit
-X-Patchwork-Submitter: Stanislaw Gruszka <sgruszka@redhat.com>
-X-Patchwork-Id: 11121089
-X-Patchwork-Delegate: kvalo@adurom.com
-From: Stanislaw Gruszka <sgruszka@redhat.com>
-To: linux-wireless@vger.kernel.org
-Subject: [PATCH 5.3] Revert "rt2800: enable TX_PIN_CFG_LNA_PE_ bits per band"
-Date: Thu, 29 Aug 2019 13:29:59 +0200
-Message-Id: <1567078199-3645-1-git-send-email-sgruszka@redhat.com>
-Sender: linux-wireless-owner@vger.kernel.org
-List-ID: <linux-wireless.vger.kernel.org>
-X-Mailing-List: linux-wireless@vger.kernel.org
-
-This reverts commit 9ad3b55654455258a9463384edb40077439d879f.
-
-As reported by Sergey:
-
-"I got some problem after upgrade kernel to 5.2 version (debian testing
-linux-image-5.2.0-2-amd64). 5Ghz client  stopped to see AP.
-Some tests with 1metre distance between client-AP: 2.4Ghz  -22dBm, for
-5Ghz - 53dBm !, for longer distance (8m + walls) 2.4 - 61dBm, 5Ghz not
-visible."
-
-It was identified that rx signal level degradation was caused by
-9ad3b5565445 ("rt2800: enable TX_PIN_CFG_LNA_PE_ bits per band").
-So revert this commit.
-
-Cc: <stable@vger.kernel.org> # v5.1+
-Reported-and-tested-by: Sergey Maranchuk <slav0nic0@gmail.com>
-Signed-off-by: Stanislaw Gruszka <sgruszka@redhat.com>
----
- drivers/net/wireless/ralink/rt2x00/rt2800lib.c | 18 ++++++------------
- 1 file changed, 6 insertions(+), 12 deletions(-)
-
---- a/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-+++ b/drivers/net/wireless/ralink/rt2x00/rt2800lib.c
-@@ -4242,24 +4242,18 @@ static void rt2800_config_channel(struct
- 	switch (rt2x00dev->default_ant.rx_chain_num) {
- 	case 3:
- 		/* Turn on tertiary LNAs */
--		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A2_EN,
--				   rf->channel > 14);
--		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G2_EN,
--				   rf->channel <= 14);
-+		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A2_EN, 1);
-+		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G2_EN, 1);
- 		/* fall-through */
- 	case 2:
- 		/* Turn on secondary LNAs */
--		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A1_EN,
--				   rf->channel > 14);
--		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G1_EN,
--				   rf->channel <= 14);
-+		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A1_EN, 1);
-+		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G1_EN, 1);
- 		/* fall-through */
- 	case 1:
- 		/* Turn on primary LNAs */
--		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A0_EN,
--				   rf->channel > 14);
--		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G0_EN,
--				   rf->channel <= 14);
-+		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_A0_EN, 1);
-+		rt2x00_set_field32(&tx_pin, TX_PIN_CFG_LNA_PE_G0_EN, 1);
- 		break;
- 	}
- 
diff --git a/package/kernel/mac80211/patches/subsys/210-ap_scan.patch b/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
index 634c531b00..11115f45bc 100644
--- a/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
+++ b/package/kernel/mac80211/patches/subsys/210-ap_scan.patch
@@ -1,6 +1,6 @@
 --- a/net/mac80211/cfg.c
 +++ b/net/mac80211/cfg.c
-@@ -2319,7 +2319,7 @@ static int ieee80211_scan(struct wiphy *
+@@ -2314,7 +2314,7 @@ static int ieee80211_scan(struct wiphy *
  		 * the  frames sent while scanning on other channel will be
  		 * lost)
  		 */
diff --git a/package/kernel/mac80211/patches/subsys/350-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch b/package/kernel/mac80211/patches/subsys/350-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch
index af70b46fdc..99b17faccd 100644
--- a/package/kernel/mac80211/patches/subsys/350-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch
+++ b/package/kernel/mac80211/patches/subsys/350-cfg80211-add-local-BSS-receive-time-to-survey-inform.patch
@@ -64,7 +64,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	__NL80211_SURVEY_INFO_AFTER_LAST,
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -8694,6 +8694,10 @@ static int nl80211_send_survey(struct sk
+@@ -8729,6 +8729,10 @@ static int nl80211_send_survey(struct sk
  	    nla_put_u64_64bit(msg, NL80211_SURVEY_INFO_TIME_SCAN,
  			      survey->time_scan, NL80211_SURVEY_INFO_PAD))
  		goto nla_put_failure;
diff --git a/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch b/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch
index a76953933f..5977995b21 100644
--- a/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch
+++ b/package/kernel/mac80211/patches/subsys/500-mac80211_configure_antenna_gain.patch
@@ -57,7 +57,7 @@
  	__NL80211_ATTR_AFTER_LAST,
 --- a/net/mac80211/cfg.c
 +++ b/net/mac80211/cfg.c
-@@ -2584,6 +2584,19 @@ static int ieee80211_get_tx_power(struct
+@@ -2579,6 +2579,19 @@ static int ieee80211_get_tx_power(struct
  	return 0;
  }
  
@@ -77,7 +77,7 @@
  static int ieee80211_set_wds_peer(struct wiphy *wiphy, struct net_device *dev,
  				  const u8 *addr)
  {
-@@ -3997,6 +4010,7 @@ const struct cfg80211_ops mac80211_confi
+@@ -3992,6 +4005,7 @@ const struct cfg80211_ops mac80211_confi
  	.set_wiphy_params = ieee80211_set_wiphy_params,
  	.set_tx_power = ieee80211_set_tx_power,
  	.get_tx_power = ieee80211_get_tx_power,
@@ -129,7 +129,7 @@
  	local->user_power_level = IEEE80211_UNSET_POWER_LEVEL;
 --- a/net/wireless/nl80211.c
 +++ b/net/wireless/nl80211.c
-@@ -574,6 +574,7 @@ const struct nla_policy nl80211_policy[N
+@@ -607,6 +607,7 @@ const struct nla_policy nl80211_policy[N
  	[NL80211_ATTR_SAE_PASSWORD] = { .type = NLA_BINARY,
  					.len = SAE_PASSWORD_MAX_LEN },
  	[NL80211_ATTR_TWT_RESPONDER] = { .type = NLA_FLAG },
@@ -137,7 +137,7 @@
  };
  
  /* policy for the key attributes */
-@@ -2869,6 +2870,20 @@ static int nl80211_set_wiphy(struct sk_b
+@@ -2904,6 +2905,20 @@ static int nl80211_set_wiphy(struct sk_b
  		if (result)
  			return result;
  	}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
