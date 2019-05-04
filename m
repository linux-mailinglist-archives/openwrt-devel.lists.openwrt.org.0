Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5003913AD9
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 17:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5/NB/EgsTVuWpi0lXYW/rq/qzkwfJnRo9s/aDWldPw=; b=Xp2EWOrWl+cpCH
	3Ib55JnOakCG4fFMKbfcgy23bcVmqSVn2WC2bx8yyqkQFJ/kqBCI3Decp7J22nWDotyJ2Loiw9Fba
	9xAKP12YJA8aluHutOxlPHUKcGyz7JajbuZs7KpYBNaMX5O7kWqweivAskY94uKnVYf208pUrRKzh
	SEDoh/Hir7nDL4LY7ADqfWFqdS76icDttSEa/VIljgzN31R0p5KX1yjFnYi0fzNxYg7VY0Q1t8hMY
	ZJdobRhtJYUwxca3ktHdVC5Apj0txeX7yrD8WAymRaD2qgGiCI2t6+GEjqr2jnVCWs7BnbnvS6Ega
	7QLDcTRPHjiq9h08KGew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMwPH-00066z-C0; Sat, 04 May 2019 15:16:55 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMwOo-0005gt-OY
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 15:16:30 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 27B18A01F1;
 Sat,  4 May 2019 17:16:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id APar8syC_LQn; Sat,  4 May 2019 17:16:14 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 May 2019 17:16:00 +0200
Message-Id: <20190504151602.7194-4-hauke@hauke-m.de>
In-Reply-To: <20190504151602.7194-1-hauke@hauke-m.de>
References: <20190504151602.7194-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_081627_115313_4F3253EB 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 4/6] hostapd: Remove unneeded patch
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
index 81b66f8ada..0000000000
--- a/package/network/services/hostapd/patches/110-no_eapol_fix.patch
+++ /dev/null
@@ -1,14 +0,0 @@
---- a/wpa_supplicant/wpa_supplicant.c
-+++ b/wpa_supplicant/wpa_supplicant.c
-@@ -296,9 +296,10 @@ void wpa_supplicant_cancel_auth_timeout(
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
index 7a3a10b895..13b73ebcdd 100644
--- a/package/network/services/hostapd/patches/200-multicall.patch
+++ b/package/network/services/hostapd/patches/200-multicall.patch
@@ -253,7 +253,7 @@
  	struct wpa_supplicant *wpa_s;
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6087,7 +6087,6 @@ struct wpa_interface * wpa_supplicant_ma
+@@ -6086,7 +6086,6 @@ struct wpa_interface * wpa_supplicant_ma
  	return NULL;
  }
  
@@ -261,7 +261,7 @@
  /**
   * wpa_supplicant_match_existing - Match existing interfaces
   * @global: Pointer to global data from wpa_supplicant_init()
-@@ -6124,6 +6123,11 @@ static int wpa_supplicant_match_existing
+@@ -6123,6 +6122,11 @@ static int wpa_supplicant_match_existing
  
  #endif /* CONFIG_MATCH_IFACE */
  
@@ -273,7 +273,7 @@
  
  /**
   * wpa_supplicant_add_iface - Add a new network interface
-@@ -6380,6 +6384,8 @@ struct wpa_global * wpa_supplicant_init(
+@@ -6379,6 +6383,8 @@ struct wpa_global * wpa_supplicant_init(
  #ifndef CONFIG_NO_WPA_MSG
  	wpa_msg_register_ifname_cb(wpa_supplicant_msg_ifname_cb);
  #endif /* CONFIG_NO_WPA_MSG */
diff --git a/package/network/services/hostapd/patches/301-mesh-noscan.patch b/package/network/services/hostapd/patches/301-mesh-noscan.patch
index 7f2374424c..e1a54a545e 100644
--- a/package/network/services/hostapd/patches/301-mesh-noscan.patch
+++ b/package/network/services/hostapd/patches/301-mesh-noscan.patch
@@ -31,7 +31,7 @@
  	if (conf->hw_mode == HOSTAPD_MODE_IEEE80211A && ssid->vht) {
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2139,12 +2139,12 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2138,12 +2138,12 @@ void ibss_mesh_setup_freq(struct wpa_sup
  {
  	enum hostapd_hw_mode hw_mode;
  	struct hostapd_hw_modes *mode = NULL;
@@ -46,7 +46,7 @@
  	unsigned int j, k;
  	struct hostapd_freq_params vht_freq;
  	int chwidth, seg0, seg1;
-@@ -2214,7 +2214,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2213,7 +2213,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
  		return;
  
  	/* Setup higher BW only for 5 GHz */
diff --git a/package/network/services/hostapd/patches/310-rescan_immediately.patch b/package/network/services/hostapd/patches/310-rescan_immediately.patch
index 0bf93a6ec2..00fd4ae794 100644
--- a/package/network/services/hostapd/patches/310-rescan_immediately.patch
+++ b/package/network/services/hostapd/patches/310-rescan_immediately.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -4465,7 +4465,7 @@ wpa_supplicant_alloc(struct wpa_supplica
+@@ -4464,7 +4464,7 @@ wpa_supplicant_alloc(struct wpa_supplica
  	if (wpa_s == NULL)
  		return NULL;
  	wpa_s->scan_req = INITIAL_SCAN_REQ;
diff --git a/package/network/services/hostapd/patches/370-ap_sta_support.patch b/package/network/services/hostapd/patches/370-ap_sta_support.patch
index 79dc3f56e8..7a1e0402f4 100644
--- a/package/network/services/hostapd/patches/370-ap_sta_support.patch
+++ b/package/network/services/hostapd/patches/370-ap_sta_support.patch
@@ -166,7 +166,7 @@
  /* Configure default/group WEP keys for static WEP */
  int wpa_set_wep_keys(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
  {
-@@ -940,12 +989,16 @@ void wpa_supplicant_set_state(struct wpa
+@@ -939,12 +988,16 @@ void wpa_supplicant_set_state(struct wpa
  
  		sme_sched_obss_scan(wpa_s, 1);
  
@@ -183,7 +183,7 @@
  		wpa_s->new_connection = 1;
  		wpa_drv_set_operstate(wpa_s, 0);
  #ifndef IEEE8021X_EAPOL
-@@ -2035,6 +2088,8 @@ void wpa_supplicant_associate(struct wpa
+@@ -2034,6 +2087,8 @@ void wpa_supplicant_associate(struct wpa
  			wpa_ssid_txt(ssid->ssid, ssid->ssid_len),
  			ssid->id);
  		wpas_notify_mesh_group_started(wpa_s, ssid);
@@ -192,7 +192,7 @@
  #else /* CONFIG_MESH */
  		wpa_msg(wpa_s, MSG_ERROR,
  			"mesh mode support not included in the build");
-@@ -5707,6 +5762,16 @@ static int wpa_supplicant_init_iface(str
+@@ -5706,6 +5761,16 @@ static int wpa_supplicant_init_iface(str
  			   sizeof(wpa_s->bridge_ifname));
  	}
  
@@ -209,7 +209,7 @@
  	/* RSNA Supplicant Key Management - INITIALIZE */
  	eapol_sm_notify_portEnabled(wpa_s->eapol, FALSE);
  	eapol_sm_notify_portValid(wpa_s->eapol, FALSE);
-@@ -6034,6 +6099,11 @@ static void wpa_supplicant_deinit_iface(
+@@ -6033,6 +6098,11 @@ static void wpa_supplicant_deinit_iface(
  	if (terminate)
  		wpa_msg(wpa_s, MSG_INFO, WPA_EVENT_TERMINATING);
  
diff --git a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
index a0869e9c1c..9a183644f5 100644
--- a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
+++ b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
@@ -174,7 +174,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
  	 * macsec_policy - Determines the policy for MACsec secure session
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -3258,6 +3258,12 @@ static void wpas_start_assoc_cb(struct w
+@@ -3257,6 +3257,12 @@ static void wpas_start_assoc_cb(struct w
  			params.beacon_int = ssid->beacon_int;
  		else
  			params.beacon_int = wpa_s->conf->beacon_int;
diff --git a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
index 5b7dc391e0..36da4f5bf7 100644
--- a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
+++ b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2212,11 +2212,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2211,11 +2211,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
  	for (j = 0; j < wpa_s->last_scan_res_used; j++) {
  		struct wpa_bss *bss = wpa_s->last_scan_res[j];
  
diff --git a/package/network/services/hostapd/patches/600-ubus_support.patch b/package/network/services/hostapd/patches/600-ubus_support.patch
index d5b1e33e48..f7bb34c520 100644
--- a/package/network/services/hostapd/patches/600-ubus_support.patch
+++ b/package/network/services/hostapd/patches/600-ubus_support.patch
@@ -280,7 +280,7 @@
  CFLAGS += -DCONFIG_WNM_AP
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6288,6 +6288,8 @@ struct wpa_supplicant * wpa_supplicant_a
+@@ -6287,6 +6287,8 @@ struct wpa_supplicant * wpa_supplicant_a
  	}
  #endif /* CONFIG_P2P */
  
@@ -289,7 +289,7 @@
  	return wpa_s;
  }
  
-@@ -6314,6 +6316,8 @@ int wpa_supplicant_remove_iface(struct w
+@@ -6313,6 +6315,8 @@ int wpa_supplicant_remove_iface(struct w
  	struct wpa_supplicant *parent = wpa_s->parent;
  #endif /* CONFIG_MESH */
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
