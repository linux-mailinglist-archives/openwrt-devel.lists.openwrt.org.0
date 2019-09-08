Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B541AACF71
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 17:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZIf5t77fN31X+ISguBwZ7jLqZ+LdT80Wtu0N/PEwbY=; b=hSsc5GuPAwBJgU
	GUOi42sucVeu131/9ciCf8Lt8OmhHSu/0V9xZAusBjKAxLawJhUE4yqI40zOcxI+izyoxywqWL97L
	BZ2Pux6ZF8ryn5GZRujhdIGUUYJ1WlbeF5IOjPxuIXFrgXugBJgUKhHMvMx9mNqaK7wo+SwJ8/2ff
	4umiJnVz/mvX3oAsgSKnDyzEd32CPekfqUmsk25x3I69tN8QjRm4v4Dg1ctHBQvqxyK32ULRWxlUo
	uVzFspHD6MFS1H8JAjC53pXYLC8K9nwlydy+3mOoQAT7Ax1n7ss6SxqOG6q/dmEQ+dpnkJSBBv3OW
	V8CJcUK/d4mbrYUbe6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6z0U-0003sU-CI; Sun, 08 Sep 2019 15:21:38 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6yzI-0002df-1x
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 15:20:27 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id E9C53A10F1;
 Sun,  8 Sep 2019 17:20:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id dt7YdCKHzmpA; Sun,  8 Sep 2019 17:20:19 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 17:20:05 +0200
Message-Id: <20190908152007.24810-6-hauke@hauke-m.de>
In-Reply-To: <20190908152007.24810-1-hauke@hauke-m.de>
References: <20190908152007.24810-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_082024_524197_CF7ADA09 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/7] hostapd: Remove unneeded patch
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

All the content of this function is proceeded by IEEE8021X_EAPOL no code
accesses the ssid variable outside of this ifdef.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../hostapd/patches/110-no_eapol_fix.patch         | 14 --------------
 .../services/hostapd/patches/200-multicall.patch   |  6 +++---
 .../services/hostapd/patches/301-mesh-noscan.patch |  4 ++--
 .../hostapd/patches/310-rescan_immediately.patch   |  2 +-
 .../hostapd/patches/370-ap_sta_support.patch       |  8 ++++----
 ...ant-add-new-config-params-to-be-used-with.patch |  2 +-
 .../hostapd/patches/464-fix-mesh-obss-check.patch  |  2 +-
 .../hostapd/patches/600-ubus_support.patch         |  4 ++--
 8 files changed, 14 insertions(+), 28 deletions(-)
 delete mode 100644 package/network/services/hostapd/patches/110-no_eapol_fix.patch

diff --git a/package/network/services/hostapd/patches/110-no_eapol_fix.patch b/package/network/services/hostapd/patches/110-no_eapol_fix.patch
deleted file mode 100644
index b912c3991b..0000000000
--- a/package/network/services/hostapd/patches/110-no_eapol_fix.patch
+++ /dev/null
@@ -1,14 +0,0 @@
---- a/wpa_supplicant/wpa_supplicant.c
-+++ b/wpa_supplicant/wpa_supplicant.c
-@@ -297,9 +297,10 @@ void wpa_supplicant_cancel_auth_timeout(
-  */
- void wpa_supplicant_initiate_eapol(struct wpa_supplicant *wpa_s)
- {
-+	struct wpa_ssid *ssid = wpa_s->current_ssid;
-+
- #ifdef IEEE8021X_EAPOL
- 	struct eapol_config eapol_conf;
--	struct wpa_ssid *ssid = wpa_s->current_ssid;
- 
- #ifdef CONFIG_IBSS_RSN
- 	if (ssid->mode == WPAS_MODE_IBSS &&
diff --git a/package/network/services/hostapd/patches/200-multicall.patch b/package/network/services/hostapd/patches/200-multicall.patch
index 3766fe97c9..72472e48c8 100644
--- a/package/network/services/hostapd/patches/200-multicall.patch
+++ b/package/network/services/hostapd/patches/200-multicall.patch
@@ -253,7 +253,7 @@
  	struct wpa_supplicant *wpa_s;
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6097,7 +6097,6 @@ struct wpa_interface * wpa_supplicant_ma
+@@ -6096,7 +6096,6 @@ struct wpa_interface * wpa_supplicant_ma
  	return NULL;
  }
  
@@ -261,7 +261,7 @@
  /**
   * wpa_supplicant_match_existing - Match existing interfaces
   * @global: Pointer to global data from wpa_supplicant_init()
-@@ -6134,6 +6133,11 @@ static int wpa_supplicant_match_existing
+@@ -6133,6 +6132,11 @@ static int wpa_supplicant_match_existing
  
  #endif /* CONFIG_MATCH_IFACE */
  
@@ -273,7 +273,7 @@
  
  /**
   * wpa_supplicant_add_iface - Add a new network interface
-@@ -6390,6 +6394,8 @@ struct wpa_global * wpa_supplicant_init(
+@@ -6389,6 +6393,8 @@ struct wpa_global * wpa_supplicant_init(
  #ifndef CONFIG_NO_WPA_MSG
  	wpa_msg_register_ifname_cb(wpa_supplicant_msg_ifname_cb);
  #endif /* CONFIG_NO_WPA_MSG */
diff --git a/package/network/services/hostapd/patches/301-mesh-noscan.patch b/package/network/services/hostapd/patches/301-mesh-noscan.patch
index 18db9bc9c0..b1450ef6db 100644
--- a/package/network/services/hostapd/patches/301-mesh-noscan.patch
+++ b/package/network/services/hostapd/patches/301-mesh-noscan.patch
@@ -31,7 +31,7 @@
  	if (conf->hw_mode == HOSTAPD_MODE_IEEE80211A && ssid->vht) {
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2144,12 +2144,12 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2143,12 +2143,12 @@ void ibss_mesh_setup_freq(struct wpa_sup
  	int ieee80211_mode = wpas_mode_to_ieee80211_mode(ssid->mode);
  	enum hostapd_hw_mode hw_mode;
  	struct hostapd_hw_modes *mode = NULL;
@@ -46,7 +46,7 @@
  	unsigned int j, k;
  	struct hostapd_freq_params vht_freq;
  	int chwidth, seg0, seg1;
-@@ -2222,7 +2222,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2221,7 +2221,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
  		return;
  
  	/* Setup higher BW only for 5 GHz */
diff --git a/package/network/services/hostapd/patches/310-rescan_immediately.patch b/package/network/services/hostapd/patches/310-rescan_immediately.patch
index f69bb388a6..8d0307c3a2 100644
--- a/package/network/services/hostapd/patches/310-rescan_immediately.patch
+++ b/package/network/services/hostapd/patches/310-rescan_immediately.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -4475,7 +4475,7 @@ wpa_supplicant_alloc(struct wpa_supplica
+@@ -4474,7 +4474,7 @@ wpa_supplicant_alloc(struct wpa_supplica
  	if (wpa_s == NULL)
  		return NULL;
  	wpa_s->scan_req = INITIAL_SCAN_REQ;
diff --git a/package/network/services/hostapd/patches/370-ap_sta_support.patch b/package/network/services/hostapd/patches/370-ap_sta_support.patch
index 5916619fa5..f8d4206529 100644
--- a/package/network/services/hostapd/patches/370-ap_sta_support.patch
+++ b/package/network/services/hostapd/patches/370-ap_sta_support.patch
@@ -166,7 +166,7 @@
  /* Configure default/group WEP keys for static WEP */
  int wpa_set_wep_keys(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
  {
-@@ -941,12 +990,16 @@ void wpa_supplicant_set_state(struct wpa
+@@ -940,12 +989,16 @@ void wpa_supplicant_set_state(struct wpa
  
  		sme_sched_obss_scan(wpa_s, 1);
  
@@ -183,7 +183,7 @@
  		wpa_s->new_connection = 1;
  		wpa_drv_set_operstate(wpa_s, 0);
  #ifndef IEEE8021X_EAPOL
-@@ -2039,6 +2092,8 @@ void wpa_supplicant_associate(struct wpa
+@@ -2038,6 +2091,8 @@ void wpa_supplicant_associate(struct wpa
  			wpa_ssid_txt(ssid->ssid, ssid->ssid_len),
  			ssid->id);
  		wpas_notify_mesh_group_started(wpa_s, ssid);
@@ -192,7 +192,7 @@
  #else /* CONFIG_MESH */
  		wpa_msg(wpa_s, MSG_ERROR,
  			"mesh mode support not included in the build");
-@@ -5717,6 +5772,16 @@ static int wpa_supplicant_init_iface(str
+@@ -5716,6 +5771,16 @@ static int wpa_supplicant_init_iface(str
  			   sizeof(wpa_s->bridge_ifname));
  	}
  
@@ -209,7 +209,7 @@
  	/* RSNA Supplicant Key Management - INITIALIZE */
  	eapol_sm_notify_portEnabled(wpa_s->eapol, FALSE);
  	eapol_sm_notify_portValid(wpa_s->eapol, FALSE);
-@@ -6044,6 +6109,11 @@ static void wpa_supplicant_deinit_iface(
+@@ -6043,6 +6108,11 @@ static void wpa_supplicant_deinit_iface(
  	if (terminate)
  		wpa_msg(wpa_s, MSG_INFO, WPA_EVENT_TERMINATING);
  
diff --git a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
index 7ead342fd8..b740378090 100644
--- a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
+++ b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
@@ -174,7 +174,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
  	 * macsec_policy - Determines the policy for MACsec secure session
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -3267,6 +3267,12 @@ static void wpas_start_assoc_cb(struct w
+@@ -3266,6 +3266,12 @@ static void wpas_start_assoc_cb(struct w
  			params.beacon_int = ssid->beacon_int;
  		else
  			params.beacon_int = wpa_s->conf->beacon_int;
diff --git a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
index 566a6d74da..4b63b6fd78 100644
--- a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
+++ b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2217,11 +2217,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2216,11 +2216,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
  	for (j = 0; j < wpa_s->last_scan_res_used; j++) {
  		struct wpa_bss *bss = wpa_s->last_scan_res[j];
  
diff --git a/package/network/services/hostapd/patches/600-ubus_support.patch b/package/network/services/hostapd/patches/600-ubus_support.patch
index 9448011218..4c0099bddc 100644
--- a/package/network/services/hostapd/patches/600-ubus_support.patch
+++ b/package/network/services/hostapd/patches/600-ubus_support.patch
@@ -280,7 +280,7 @@
  CFLAGS += -DCONFIG_WNM_AP
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6298,6 +6298,8 @@ struct wpa_supplicant * wpa_supplicant_a
+@@ -6297,6 +6297,8 @@ struct wpa_supplicant * wpa_supplicant_a
  	}
  #endif /* CONFIG_P2P */
  
@@ -289,7 +289,7 @@
  	return wpa_s;
  }
  
-@@ -6324,6 +6326,8 @@ int wpa_supplicant_remove_iface(struct w
+@@ -6323,6 +6325,8 @@ int wpa_supplicant_remove_iface(struct w
  	struct wpa_supplicant *parent = wpa_s->parent;
  #endif /* CONFIG_MESH */
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
