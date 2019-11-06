Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052D5F172D
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 14:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBgkGkoKcViNiaQWo96reL3jCLj+NIdVNnjpJgnkK1s=; b=BiY1oLgIeA+SkC
	I66Z7PbbMUPOz4AMr4ft1+COCcSS+EyLH2L7GIAijRvc0Mg3UeZG4csbmgL7dlEnRGy4Qm3K0xd0L
	idQ5LyHRoWjfiedbuc9cSrEed8madExuNMpth2Ymg6NZ/B8TuZDPb54aDt+Uv9gqRth+/eofvv2bM
	KViMLupscOyS5YcxEGjolA6z+1Anh1peLJMeNEgEy7Ar4edYDCO6zNJBMz3dsH5jefcz5sg7KfPMQ
	u9QsHaEorn0mL5N6v1HCfwquAE3JOunQzndqQAWzsXNWpYWqf26V64oP7u1u1nd+DMdOj+/cM23P5
	e1d7iQEVMkR2TWJ7R9bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLQ9-0007zf-Vv; Wed, 06 Nov 2019 13:32:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLOR-0006CX-8y
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 13:30:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BBBEF4431;
 Wed,  6 Nov 2019 14:30:35 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a867741a;
 Wed, 6 Nov 2019 14:30:25 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 14:30:28 +0100
Message-Id: <20191106133028.2350-10-ynezz@true.cz>
In-Reply-To: <20191106133028.2350-1-ynezz@true.cz>
References: <20191106133028.2350-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053039_532168_571118D6 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 19.07 09/12] hostapd: Remove unneeded
 patch
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Hauke Mehrtens <hauke@hauke-m.de>

All the content of this function is proceeded by IEEE8021X_EAPOL no code
accesses the ssid variable outside of this ifdef.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
(cherry picked from commit 0d86bf518aaefa57bef577d09a18aff03eccb70c)
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
index b912c3991b24..000000000000
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
index 1c4efed6321c..a8597edae4fb 100644
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
index 18db9bc9c02d..b1450ef6dbc9 100644
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
index f69bb388a6b0..8d0307c3a28c 100644
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
index 5916619fa503..f8d420652979 100644
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
index 7ead342fd88b..b740378090a7 100644
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
index 566a6d74da18..4b63b6fd785c 100644
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
index 8f6bf90dc41c..0eb0a4a3baef 100644
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
  

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
