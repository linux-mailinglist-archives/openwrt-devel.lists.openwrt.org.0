Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE52CACF72
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 17:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVP4GvMW1x87QNk1R+ccmL35WeQSxEdqHoy2Q+pST6I=; b=qQ0+zxaO/f21au
	isFKkYvukpaXBC8PsGe3LuA7Ze+2W5WZaK2X3KJLLv3Lg2Hz/ik8KQnZQZAkqzYrqCftokPHzEx9F
	XWfTL6PxrrH8EZLy/WAGbKmp6ZJwBdBAQ8NeNoOxFAQqH/H3DSH+yo5tAfE1ovu614xlF1+msIM6v
	AluiDXU9L8mLfD/zvFEHFXKD7W+lAJLRVss9/h1/nGlRDdFL0sBCabJEPCRRxeVmZPZS9POuIFwK2
	hjfbV1R5sXf8R3tEY3URQsRyUT3Y0jQQXBJ9WV9YQ3Qduf9HRCnIYW4rcv5YN7JgDZi7tPXPat/K/
	VroJ1TERGxuaNdp9OQWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6z0k-0004Ar-5c; Sun, 08 Sep 2019 15:21:54 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6yzL-0002fB-1S
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 15:20:34 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id CC1D3A1176;
 Sun,  8 Sep 2019 17:20:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id FGFuuhAwTh40; Sun,  8 Sep 2019 17:20:18 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 17:20:03 +0200
Message-Id: <20190908152007.24810-4-hauke@hauke-m.de>
In-Reply-To: <20190908152007.24810-1-hauke@hauke-m.de>
References: <20190908152007.24810-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_082027_610731_9D131A75 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/7] hostapd: update to version 2.9
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
 package/network/services/hostapd/Makefile     |   6 +-
 .../hostapd/files/hostapd-basic.config        |  16 +-
 .../hostapd/files/hostapd-full.config         |  16 +-
 .../hostapd/files/hostapd-mini.config         |  16 +-
 .../hostapd/files/wpa_supplicant-basic.config |  13 ++
 .../hostapd/files/wpa_supplicant-full.config  |  13 ++
 .../hostapd/files/wpa_supplicant-mini.config  |  13 ++
 .../hostapd/files/wpa_supplicant-p2p.config   |  13 ++
 ...ompletion-callback-to-complete-mesh-.patch |  18 +-
 ...-frequency-as-pri-sec-channel-switch.patch |   2 +-
 ...rnel-driver-DFS-handler-in-userspace.patch |   6 +-
 ...annel-attributes-before-running-Mesh.patch |   6 +-
 ...hannels-to-be-selected-if-dfs-is-ena.patch |  14 +-
 ...-do-not-allow-pri-sec-channel-switch.patch |   2 +-
 ...sh-do-not-use-offchan-mgmt-tx-on-DFS.patch |   6 +-
 ...-fix-channel-switch-error-during-CAC.patch |  12 +-
 ...18-mesh-make-forwarding-configurable.patch |  28 +--
 ...-in-storing-of-external_auth-SSID-BS.patch |  82 ---------
 ...-Fix-ENGINE-support-with-OpenSSL-1.1.patch |  39 ----
 ...ix-race-condition-in-mesh-mpm-new-pe.patch |   2 +-
 .../hostapd/patches/110-no_eapol_fix.patch    |   2 +-
 .../hostapd/patches/200-multicall.patch       |  48 ++---
 .../services/hostapd/patches/300-noscan.patch |   4 +-
 .../hostapd/patches/301-mesh-noscan.patch     |  10 +-
 .../patches/310-rescan_immediately.patch      |   2 +-
 .../patches/330-nl80211_fix_set_freq.patch    |   4 +-
 .../patches/340-reload_freq_change.patch      |  26 +--
 .../341-mesh-ctrl-iface-channel-switch.patch  |   2 +-
 .../patches/350-nl80211_del_beacon_bss.patch  |  10 +-
 .../patches/360-ctrl_iface_reload.patch       |   4 +-
 .../hostapd/patches/370-ap_sta_support.patch  | 167 +-----------------
 .../patches/380-disable_ctrl_iface_mib.patch  |  30 ++--
 .../patches/390-wpa_ie_cap_workaround.patch   |   4 +-
 .../patches/410-limit_debug_messages.patch    |  12 +-
 .../patches/420-indicate-features.patch       |   4 +-
 .../patches/430-hostapd_cli_ifdef.patch       |   4 +-
 ...dd-new-config-params-to-be-used-with.patch |   6 +-
 ...-use-new-parameters-during-ibss-join.patch |   4 +-
 .../patches/463-add-mcast_rate-to-11s.patch   |   8 +-
 .../patches/464-fix-mesh-obss-check.patch     |   2 +-
 .../patches/500-lto-jobserver-support.patch   |   4 +-
 .../hostapd/patches/600-ubus_support.patch    |  48 ++---
 42 files changed, 271 insertions(+), 457 deletions(-)
 delete mode 100644 package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch
 delete mode 100644 package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 1697038ccc..a723af2c5f 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -11,9 +11,9 @@ PKG_RELEASE:=1
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2019-04-21
-PKG_SOURCE_VERSION:=63962824309bb428e5f73d9caae08fcb949fbe36
-PKG_MIRROR_HASH:=b31e09b22284785f84ee4d2dfc2b8fa94cad5d7375d957bf2862a50cb5bc1475
+PKG_SOURCE_DATE:=2019-08-08
+PKG_SOURCE_VERSION:=ca8c2bd28ad53f431d6ee60ef754e98cfdb4c17b
+PKG_MIRROR_HASH:=9d9f1c60afa5324ee17219bd3ec61c1a6fa4043b4187da9bb44e59025d3ed31d
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=BSD-3-Clause
diff --git a/package/network/services/hostapd/files/hostapd-basic.config b/package/network/services/hostapd/files/hostapd-basic.config
index 9bf3928b0d..3773d08ac3 100644
--- a/package/network/services/hostapd/files/hostapd-basic.config
+++ b/package/network/services/hostapd/files/hostapd-basic.config
@@ -108,11 +108,18 @@ CONFIG_RSN_PREAUTH=y
 #CONFIG_EAP_GPSK_SHA256=y
 
 # EAP-FAST for the integrated EAP server
-# Note: If OpenSSL is used as the TLS library, OpenSSL 1.0 or newer is needed
-# for EAP-FAST support. Older OpenSSL releases would need to be patched, e.g.,
-# with openssl-0.9.8x-tls-extensions.patch, to add the needed functions.
 #CONFIG_EAP_FAST=y
 
+# EAP-TEAP for the integrated EAP server
+# Note: The current EAP-TEAP implementation is experimental and should not be
+# enabled for production use. The IETF RFC 7170 that defines EAP-TEAP has number
+# of conflicting statements and missing details and the implementation has
+# vendor specific workarounds for those and as such, may not interoperate with
+# any other implementation. This should not be used for anything else than
+# experimentation and interoperability testing until those issues has been
+# resolved.
+#CONFIG_EAP_TEAP=y
+
 # Wi-Fi Protected Setup (WPS)
 #CONFIG_WPS=y
 # Enable UPnP support for external WPS Registrars
@@ -376,6 +383,9 @@ CONFIG_TLS=internal
 # Experimental implementation of draft-harkins-owe-07.txt
 #CONFIG_OWE=y
 
+# Airtime policy support
+#CONFIG_AIRTIME_POLICY=y
+
 # Override default value for the wpa_disable_eapol_key_retries configuration
 # parameter. See that parameter in hostapd.conf for more details.
 #CFLAGS += -DDEFAULT_WPA_DISABLE_EAPOL_KEY_RETRIES=1
diff --git a/package/network/services/hostapd/files/hostapd-full.config b/package/network/services/hostapd/files/hostapd-full.config
index f2e220004f..3099f8c2e9 100644
--- a/package/network/services/hostapd/files/hostapd-full.config
+++ b/package/network/services/hostapd/files/hostapd-full.config
@@ -108,11 +108,18 @@ CONFIG_EAP_TTLS=y
 #CONFIG_EAP_GPSK_SHA256=y
 
 # EAP-FAST for the integrated EAP server
-# Note: If OpenSSL is used as the TLS library, OpenSSL 1.0 or newer is needed
-# for EAP-FAST support. Older OpenSSL releases would need to be patched, e.g.,
-# with openssl-0.9.8x-tls-extensions.patch, to add the needed functions.
 CONFIG_EAP_FAST=y
 
+# EAP-TEAP for the integrated EAP server
+# Note: The current EAP-TEAP implementation is experimental and should not be
+# enabled for production use. The IETF RFC 7170 that defines EAP-TEAP has number
+# of conflicting statements and missing details and the implementation has
+# vendor specific workarounds for those and as such, may not interoperate with
+# any other implementation. This should not be used for anything else than
+# experimentation and interoperability testing until those issues has been
+# resolved.
+#CONFIG_EAP_TEAP=y
+
 # Wi-Fi Protected Setup (WPS)
 CONFIG_WPS=y
 # Enable UPnP support for external WPS Registrars
@@ -376,6 +383,9 @@ CONFIG_TAXONOMY=y
 # Experimental implementation of draft-harkins-owe-07.txt
 #CONFIG_OWE=y
 
+# Airtime policy support
+#CONFIG_AIRTIME_POLICY=y
+
 # Override default value for the wpa_disable_eapol_key_retries configuration
 # parameter. See that parameter in hostapd.conf for more details.
 #CFLAGS += -DDEFAULT_WPA_DISABLE_EAPOL_KEY_RETRIES=1
diff --git a/package/network/services/hostapd/files/hostapd-mini.config b/package/network/services/hostapd/files/hostapd-mini.config
index b8dd53d52b..362bb22a05 100644
--- a/package/network/services/hostapd/files/hostapd-mini.config
+++ b/package/network/services/hostapd/files/hostapd-mini.config
@@ -108,11 +108,18 @@ CONFIG_RSN_PREAUTH=y
 #CONFIG_EAP_GPSK_SHA256=y
 
 # EAP-FAST for the integrated EAP server
-# Note: If OpenSSL is used as the TLS library, OpenSSL 1.0 or newer is needed
-# for EAP-FAST support. Older OpenSSL releases would need to be patched, e.g.,
-# with openssl-0.9.8x-tls-extensions.patch, to add the needed functions.
 #CONFIG_EAP_FAST=y
 
+# EAP-TEAP for the integrated EAP server
+# Note: The current EAP-TEAP implementation is experimental and should not be
+# enabled for production use. The IETF RFC 7170 that defines EAP-TEAP has number
+# of conflicting statements and missing details and the implementation has
+# vendor specific workarounds for those and as such, may not interoperate with
+# any other implementation. This should not be used for anything else than
+# experimentation and interoperability testing until those issues has been
+# resolved.
+#CONFIG_EAP_TEAP=y
+
 # Wi-Fi Protected Setup (WPS)
 #CONFIG_WPS=y
 # Enable UPnP support for external WPS Registrars
@@ -376,6 +383,9 @@ CONFIG_TLS=internal
 # Experimental implementation of draft-harkins-owe-07.txt
 #CONFIG_OWE=y
 
+# Airtime policy support
+#CONFIG_AIRTIME_POLICY=y
+
 # Override default value for the wpa_disable_eapol_key_retries configuration
 # parameter. See that parameter in hostapd.conf for more details.
 #CFLAGS += -DDEFAULT_WPA_DISABLE_EAPOL_KEY_RETRIES=1
diff --git a/package/network/services/hostapd/files/wpa_supplicant-basic.config b/package/network/services/hostapd/files/wpa_supplicant-basic.config
index c93cf783a3..14f6e80896 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-basic.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-basic.config
@@ -111,6 +111,16 @@ CONFIG_DRIVER_WIRED=y
 # EAP-FAST
 #CONFIG_EAP_FAST=y
 
+# EAP-TEAP
+# Note: The current EAP-TEAP implementation is experimental and should not be
+# enabled for production use. The IETF RFC 7170 that defines EAP-TEAP has number
+# of conflicting statements and missing details and the implementation has
+# vendor specific workarounds for those and as such, may not interoperate with
+# any other implementation. This should not be used for anything else than
+# experimentation and interoperability testing until those issues has been
+# resolved.
+#CONFIG_EAP_TEAP=y
+
 # EAP-GTC
 #CONFIG_EAP_GTC=y
 
@@ -120,6 +130,9 @@ CONFIG_DRIVER_WIRED=y
 # EAP-SIM (enable CONFIG_PCSC, if EAP-SIM is used)
 #CONFIG_EAP_SIM=y
 
+# Enable SIM simulator (Milenage) for EAP-SIM
+#CONFIG_SIM_SIMULATOR=y
+
 # EAP-PSK (experimental; this is _not_ needed for WPA-PSK)
 #CONFIG_EAP_PSK=y
 
diff --git a/package/network/services/hostapd/files/wpa_supplicant-full.config b/package/network/services/hostapd/files/wpa_supplicant-full.config
index 10b4d15ea2..5f48d59eeb 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-full.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-full.config
@@ -111,6 +111,16 @@ CONFIG_EAP_TTLS=y
 # EAP-FAST
 CONFIG_EAP_FAST=y
 
+# EAP-TEAP
+# Note: The current EAP-TEAP implementation is experimental and should not be
+# enabled for production use. The IETF RFC 7170 that defines EAP-TEAP has number
+# of conflicting statements and missing details and the implementation has
+# vendor specific workarounds for those and as such, may not interoperate with
+# any other implementation. This should not be used for anything else than
+# experimentation and interoperability testing until those issues has been
+# resolved.
+#CONFIG_EAP_TEAP=y
+
 # EAP-GTC
 CONFIG_EAP_GTC=y
 
@@ -120,6 +130,9 @@ CONFIG_EAP_OTP=y
 # EAP-SIM (enable CONFIG_PCSC, if EAP-SIM is used)
 #CONFIG_EAP_SIM=y
 
+# Enable SIM simulator (Milenage) for EAP-SIM
+#CONFIG_SIM_SIMULATOR=y
+
 # EAP-PSK (experimental; this is _not_ needed for WPA-PSK)
 #CONFIG_EAP_PSK=y
 
diff --git a/package/network/services/hostapd/files/wpa_supplicant-mini.config b/package/network/services/hostapd/files/wpa_supplicant-mini.config
index 9ffcf7e2e4..9b1f03433f 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-mini.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-mini.config
@@ -111,6 +111,16 @@ CONFIG_DRIVER_WIRED=y
 # EAP-FAST
 #CONFIG_EAP_FAST=y
 
+# EAP-TEAP
+# Note: The current EAP-TEAP implementation is experimental and should not be
+# enabled for production use. The IETF RFC 7170 that defines EAP-TEAP has number
+# of conflicting statements and missing details and the implementation has
+# vendor specific workarounds for those and as such, may not interoperate with
+# any other implementation. This should not be used for anything else than
+# experimentation and interoperability testing until those issues has been
+# resolved.
+#CONFIG_EAP_TEAP=y
+
 # EAP-GTC
 #CONFIG_EAP_GTC=y
 
@@ -120,6 +130,9 @@ CONFIG_DRIVER_WIRED=y
 # EAP-SIM (enable CONFIG_PCSC, if EAP-SIM is used)
 #CONFIG_EAP_SIM=y
 
+# Enable SIM simulator (Milenage) for EAP-SIM
+#CONFIG_SIM_SIMULATOR=y
+
 # EAP-PSK (experimental; this is _not_ needed for WPA-PSK)
 #CONFIG_EAP_PSK=y
 
diff --git a/package/network/services/hostapd/files/wpa_supplicant-p2p.config b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
index e2eb57bb38..03b9a6b654 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-p2p.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
@@ -111,6 +111,16 @@ CONFIG_EAP_TTLS=y
 # EAP-FAST
 CONFIG_EAP_FAST=y
 
+# EAP-TEAP
+# Note: The current EAP-TEAP implementation is experimental and should not be
+# enabled for production use. The IETF RFC 7170 that defines EAP-TEAP has number
+# of conflicting statements and missing details and the implementation has
+# vendor specific workarounds for those and as such, may not interoperate with
+# any other implementation. This should not be used for anything else than
+# experimentation and interoperability testing until those issues has been
+# resolved.
+#CONFIG_EAP_TEAP=y
+
 # EAP-GTC
 CONFIG_EAP_GTC=y
 
@@ -120,6 +130,9 @@ CONFIG_EAP_OTP=y
 # EAP-SIM (enable CONFIG_PCSC, if EAP-SIM is used)
 #CONFIG_EAP_SIM=y
 
+# Enable SIM simulator (Milenage) for EAP-SIM
+#CONFIG_SIM_SIMULATOR=y
+
 # EAP-PSK (experimental; this is _not_ needed for WPA-PSK)
 #CONFIG_EAP_PSK=y
 
diff --git a/package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch b/package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch
index ead1bcac90..3d99b3bfb9 100644
--- a/package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch
+++ b/package/network/services/hostapd/patches/004-mesh-use-setup-completion-callback-to-complete-mesh-.patch
@@ -25,7 +25,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 
 --- a/src/ap/hostapd.c
 +++ b/src/ap/hostapd.c
-@@ -414,6 +414,8 @@ static void hostapd_free_hapd_data(struc
+@@ -423,6 +423,8 @@ static void hostapd_free_hapd_data(struc
  #ifdef CONFIG_MESH
  	wpabuf_free(hapd->mesh_pending_auth);
  	hapd->mesh_pending_auth = NULL;
@@ -34,7 +34,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  #endif /* CONFIG_MESH */
  
  	hostapd_clean_rrm(hapd);
-@@ -1980,6 +1982,13 @@ dfs_offload:
+@@ -2049,6 +2051,13 @@ dfs_offload:
  	if (hapd->setup_complete_cb)
  		hapd->setup_complete_cb(hapd->setup_complete_cb_ctx);
  
@@ -48,7 +48,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  	wpa_printf(MSG_DEBUG, "%s: Setup of interface done.",
  		   iface->bss[0]->conf->iface);
  	if (iface->interfaces && iface->interfaces->terminate_on_error > 0)
-@@ -2123,7 +2132,7 @@ int hostapd_setup_interface(struct hosta
+@@ -2192,7 +2201,7 @@ int hostapd_setup_interface(struct hosta
  	ret = setup_interface(iface);
  	if (ret) {
  		wpa_printf(MSG_ERROR, "%s: Unable to setup interface.",
@@ -79,16 +79,16 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  	}
  
  	if (ifmsh->mconf->security != MESH_CONF_SEC_NONE &&
-@@ -208,7 +209,7 @@ static int wpas_mesh_complete(struct wpa
- 		wpa_printf(MSG_ERROR,
+@@ -209,7 +210,7 @@ static int wpas_mesh_complete(struct wpa
  			   "mesh: RSN initialization failed - deinit mesh");
  		wpa_supplicant_mesh_deinit(wpa_s);
+ 		wpa_drv_leave_mesh(wpa_s);
 -		return -1;
 +		return;
  	}
  
  	if (ssid->key_mgmt & WPA_KEY_MGMT_SAE) {
-@@ -234,8 +235,6 @@ static int wpas_mesh_complete(struct wpa
+@@ -235,8 +236,6 @@ static int wpas_mesh_complete(struct wpa
  
  	if (!ret)
  		wpa_supplicant_set_state(wpa_s, WPA_COMPLETED);
@@ -97,7 +97,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  }
  
  
-@@ -262,6 +261,7 @@ static int wpa_supplicant_mesh_init(stru
+@@ -263,6 +262,7 @@ static int wpa_supplicant_mesh_init(stru
  	if (!ifmsh)
  		return -ENOMEM;
  
@@ -105,7 +105,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  	ifmsh->drv_flags = wpa_s->drv_flags;
  	ifmsh->num_bss = 1;
  	ifmsh->bss = os_calloc(wpa_s->ifmsh->num_bss,
-@@ -279,6 +279,8 @@ static int wpa_supplicant_mesh_init(stru
+@@ -280,6 +280,8 @@ static int wpa_supplicant_mesh_init(stru
  	bss->drv_priv = wpa_s->drv_priv;
  	bss->iface = ifmsh;
  	bss->mesh_sta_free_cb = mesh_mpm_free_sta;
@@ -114,7 +114,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  	frequency = ssid->frequency;
  	if (frequency != freq->freq &&
  	    frequency == freq->freq + freq->sec_channel_offset * 20) {
-@@ -517,7 +519,6 @@ int wpa_supplicant_join_mesh(struct wpa_
+@@ -521,7 +523,6 @@ int wpa_supplicant_join_mesh(struct wpa_
  		goto out;
  	}
  
diff --git a/package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch b/package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch
index 703c81d04c..4d77f2d206 100644
--- a/package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch
+++ b/package/network/services/hostapd/patches/005-mesh-update-ssid-frequency-as-pri-sec-channel-switch.patch
@@ -16,7 +16,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -286,6 +286,7 @@ static int wpa_supplicant_mesh_init(stru
+@@ -287,6 +287,7 @@ static int wpa_supplicant_mesh_init(stru
  	    frequency == freq->freq + freq->sec_channel_offset * 20) {
  		wpa_printf(MSG_DEBUG, "mesh: pri/sec channels switched");
  		frequency = freq->freq;
diff --git a/package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch b/package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch
index fb7772d481..76c43da8e2 100644
--- a/package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch
+++ b/package/network/services/hostapd/patches/006-mesh-inform-kernel-driver-DFS-handler-in-userspace.patch
@@ -16,7 +16,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 
 --- a/src/drivers/driver.h
 +++ b/src/drivers/driver.h
-@@ -1436,6 +1436,7 @@ struct wpa_driver_mesh_join_params {
+@@ -1477,6 +1477,7 @@ struct wpa_driver_mesh_join_params {
  #define WPA_DRIVER_MESH_FLAG_SAE_AUTH	0x00000004
  #define WPA_DRIVER_MESH_FLAG_AMPE	0x00000008
  	unsigned int flags;
@@ -26,7 +26,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  /**
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -9544,6 +9544,9 @@ static int nl80211_join_mesh(struct i802
+@@ -9624,6 +9624,9 @@ static int nl80211_join_mesh(struct i802
  
  	wpa_printf(MSG_DEBUG, "  * flags=%08X", params->flags);
  
@@ -38,7 +38,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  		goto fail;
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -308,6 +308,7 @@ static int wpa_supplicant_mesh_init(stru
+@@ -309,6 +309,7 @@ static int wpa_supplicant_mesh_init(stru
  		conf->country[0] = wpa_s->conf->country[0];
  		conf->country[1] = wpa_s->conf->country[1];
  		conf->country[2] = ' ';
diff --git a/package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch b/package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch
index 443fad944c..f04fcc49e8 100644
--- a/package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch
+++ b/package/network/services/hostapd/patches/007-mesh-apply-channel-attributes-before-running-Mesh.patch
@@ -13,7 +13,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -248,7 +248,7 @@ static int wpa_supplicant_mesh_init(stru
+@@ -249,7 +249,7 @@ static int wpa_supplicant_mesh_init(stru
  	struct mesh_conf *mconf;
  	int basic_rates_erp[] = { 10, 20, 55, 60, 110, 120, 240, -1 };
  	int rate_len;
@@ -22,7 +22,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  
  	if (!wpa_s->conf->user_mpm) {
  		/* not much for us to do here */
-@@ -385,6 +385,13 @@ static int wpa_supplicant_mesh_init(stru
+@@ -386,6 +386,13 @@ static int wpa_supplicant_mesh_init(stru
  		conf->basic_rates[rate_len] = -1;
  	}
  
@@ -36,7 +36,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  	if (wpa_drv_init_mesh(wpa_s)) {
  		wpa_msg(wpa_s, MSG_ERROR, "Failed to init mesh in driver");
  		return -1;
-@@ -396,8 +403,6 @@ static int wpa_supplicant_mesh_init(stru
+@@ -397,8 +404,6 @@ static int wpa_supplicant_mesh_init(stru
  		return -1;
  	}
  
diff --git a/package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch b/package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch
index e3afc97f82..37f7f635ea 100644
--- a/package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch
+++ b/package/network/services/hostapd/patches/011-mesh-Allow-DFS-channels-to-be-selected-if-dfs-is-ena.patch
@@ -13,7 +13,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2148,6 +2148,8 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2153,6 +2153,8 @@ void ibss_mesh_setup_freq(struct wpa_sup
  	struct hostapd_freq_params vht_freq;
  	int chwidth, seg0, seg1;
  	u32 vht_caps = 0;
@@ -22,7 +22,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  
  	freq->freq = ssid->frequency;
  
-@@ -2224,8 +2226,11 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2232,8 +2234,11 @@ void ibss_mesh_setup_freq(struct wpa_sup
  		return;
  
  	/* Check primary channel flags */
@@ -35,7 +35,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  
  	freq->channel = pri_chan->chan;
  
-@@ -2256,8 +2261,11 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2264,8 +2269,11 @@ void ibss_mesh_setup_freq(struct wpa_sup
  		return;
  
  	/* Check secondary channel flags */
@@ -48,7 +48,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  
  	if (ht40 == -1) {
  		if (!(pri_chan->flag & HOSTAPD_CHAN_HT40MINUS))
-@@ -2348,8 +2356,11 @@ skip_ht40:
+@@ -2356,8 +2364,11 @@ skip_ht40:
  			return;
  
  		/* Back to HT configuration if channel not usable */
@@ -60,8 +60,8 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 +				return;
  	}
  
- 	chwidth = VHT_CHANWIDTH_80MHZ;
-@@ -2369,10 +2380,11 @@ skip_ht40:
+ 	chwidth = CHANWIDTH_80MHZ;
+@@ -2377,10 +2388,11 @@ skip_ht40:
  				if (!chan)
  					continue;
  
@@ -75,4 +75,4 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 +						continue;
  
  				/* Found a suitable second segment for 80+80 */
- 				chwidth = VHT_CHANWIDTH_80P80MHZ;
+ 				chwidth = CHANWIDTH_80P80MHZ;
diff --git a/package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch b/package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch
index a09a91d7eb..778273e67c 100644
--- a/package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch
+++ b/package/network/services/hostapd/patches/013-mesh-do-not-allow-pri-sec-channel-switch.patch
@@ -19,7 +19,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -385,6 +385,7 @@ static int wpa_supplicant_mesh_init(stru
+@@ -386,6 +386,7 @@ static int wpa_supplicant_mesh_init(stru
  		conf->basic_rates[rate_len] = -1;
  	}
  
diff --git a/package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch b/package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch
index f1922552f6..8bac9082d7 100644
--- a/package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch
+++ b/package/network/services/hostapd/patches/015-mesh-do-not-use-offchan-mgmt-tx-on-DFS.patch
@@ -17,7 +17,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -7411,6 +7411,10 @@ static int wpa_driver_nl80211_send_actio
+@@ -7462,6 +7462,10 @@ static int wpa_driver_nl80211_send_actio
  	int ret = -1;
  	u8 *buf;
  	struct ieee80211_hdr *hdr;
@@ -28,7 +28,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  
  	wpa_printf(MSG_DEBUG, "nl80211: Send Action frame (ifindex=%d, "
  		   "freq=%u MHz wait=%d ms no_cck=%d)",
-@@ -7435,6 +7439,21 @@ static int wpa_driver_nl80211_send_actio
+@@ -7486,6 +7490,21 @@ static int wpa_driver_nl80211_send_actio
  		os_memset(bss->rand_addr, 0, ETH_ALEN);
  	}
  
@@ -50,7 +50,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  	if (is_ap_interface(drv->nlmode) &&
  	    (!(drv->capa.flags & WPA_DRIVER_FLAGS_OFFCHANNEL_TX) ||
  	     (int) freq == bss->freq || drv->device_ap_sme ||
-@@ -7446,7 +7465,7 @@ static int wpa_driver_nl80211_send_actio
+@@ -7497,7 +7516,7 @@ static int wpa_driver_nl80211_send_actio
  		ret = nl80211_send_frame_cmd(bss, freq, wait_time, buf,
  					     24 + data_len,
  					     &drv->send_action_cookie,
diff --git a/package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch b/package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch
index 1a8b291949..f2baf1d8b7 100644
--- a/package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch
+++ b/package/network/services/hostapd/patches/016-mesh-fix-channel-switch-error-during-CAC.patch
@@ -24,7 +24,7 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
  #include "ap/sta_info.h"
  #include "ap/hostapd.h"
  #include "ap/ieee802_11.h"
-@@ -204,6 +205,30 @@ static void wpas_mesh_complete_cb(void *
+@@ -204,6 +205,32 @@ static void wpas_mesh_complete_cb(void *
  		return;
  	}
  
@@ -41,11 +41,13 @@ Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
 +				ifmsh->conf->channel,
 +				ifmsh->conf->ieee80211n,
 +				ifmsh->conf->ieee80211ac,
++				ifmsh->conf->ieee80211ax,
 +				ifmsh->conf->secondary_channel,
-+				ifmsh->conf->vht_oper_chwidth,
-+				ifmsh->conf->vht_oper_centr_freq_seg0_idx,
-+				ifmsh->conf->vht_oper_centr_freq_seg1_idx,
-+				ifmsh->conf->vht_capab)) {
++				hostapd_get_oper_chwidth(ifmsh->conf),
++				hostapd_get_oper_centr_freq_seg0_idx(ifmsh->conf),
++				hostapd_get_oper_centr_freq_seg1_idx(ifmsh->conf),
++				ifmsh->current_mode->vht_capab,
++				&ifmsh->current_mode->he_capab[IEEE80211_MODE_AP])) {
 +			wpa_printf(MSG_ERROR, "Error updating mesh frequency params.");
 +			wpa_supplicant_mesh_deinit(wpa_s);
 +			return;
diff --git a/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch b/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch
index 9584417b57..af94fed4b8 100644
--- a/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch
+++ b/package/network/services/hostapd/patches/018-mesh-make-forwarding-configurable.patch
@@ -23,7 +23,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
 
 --- a/src/ap/ap_config.h
 +++ b/src/ap/ap_config.h
-@@ -50,6 +50,7 @@ struct mesh_conf {
+@@ -51,6 +51,7 @@ struct mesh_conf {
  	int dot11MeshRetryTimeout; /* msec */
  	int dot11MeshConfirmTimeout; /* msec */
  	int dot11MeshHoldingTimeout; /* msec */
@@ -31,7 +31,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  };
  
  #define MAX_STA_COUNT 2007
-@@ -645,6 +646,7 @@ struct hostapd_bss_config {
+@@ -666,6 +667,7 @@ struct hostapd_bss_config {
  
  #define MESH_ENABLED BIT(0)
  	int mesh;
@@ -41,7 +41,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  
 --- a/src/drivers/driver.h
 +++ b/src/drivers/driver.h
-@@ -1409,6 +1409,7 @@ struct wpa_driver_mesh_bss_params {
+@@ -1450,6 +1450,7 @@ struct wpa_driver_mesh_bss_params {
  #define WPA_DRIVER_MESH_CONF_FLAG_MAX_PEER_LINKS	0x00000004
  #define WPA_DRIVER_MESH_CONF_FLAG_HT_OP_MODE		0x00000008
  #define WPA_DRIVER_MESH_CONF_FLAG_RSSI_THRESHOLD	0x00000010
@@ -49,7 +49,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	/*
  	 * TODO: Other mesh configuration parameters would go here.
  	 * See NL80211_MESHCONF_* for all the mesh config parameters.
-@@ -1418,6 +1419,7 @@ struct wpa_driver_mesh_bss_params {
+@@ -1459,6 +1460,7 @@ struct wpa_driver_mesh_bss_params {
  	int peer_link_timeout;
  	int max_peer_links;
  	int rssi_threshold;
@@ -59,7 +59,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -9512,6 +9512,9 @@ static int nl80211_put_mesh_config(struc
+@@ -9592,6 +9592,9 @@ static int nl80211_put_mesh_config(struc
  	if (((params->flags & WPA_DRIVER_MESH_CONF_FLAG_AUTO_PLINKS) &&
  	     nla_put_u8(msg, NL80211_MESHCONF_AUTO_OPEN_PLINKS,
  			params->auto_plinks)) ||
@@ -79,7 +79,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	{ INT_RANGE(mesh_rssi_threshold, -255, 1) },
  #else /* CONFIG_MESH */
  	{ INT_RANGE(mode, 0, 4) },
-@@ -2868,6 +2869,7 @@ void wpa_config_set_network_defaults(str
+@@ -2869,6 +2870,7 @@ void wpa_config_set_network_defaults(str
  	ssid->dot11MeshRetryTimeout = DEFAULT_MESH_RETRY_TIMEOUT;
  	ssid->dot11MeshConfirmTimeout = DEFAULT_MESH_CONFIRM_TIMEOUT;
  	ssid->dot11MeshHoldingTimeout = DEFAULT_MESH_HOLDING_TIMEOUT;
@@ -87,7 +87,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	ssid->mesh_rssi_threshold = DEFAULT_MESH_RSSI_THRESHOLD;
  #endif /* CONFIG_MESH */
  #ifdef CONFIG_HT_OVERRIDES
-@@ -4088,6 +4090,7 @@ struct wpa_config * wpa_config_alloc_emp
+@@ -4089,6 +4091,7 @@ struct wpa_config * wpa_config_alloc_emp
  	config->user_mpm = DEFAULT_USER_MPM;
  	config->max_peer_links = DEFAULT_MAX_PEER_LINKS;
  	config->mesh_max_inactivity = DEFAULT_MESH_MAX_INACTIVITY;
@@ -95,7 +95,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	config->dot11RSNASAERetransPeriod =
  		DEFAULT_DOT11_RSNA_SAE_RETRANS_PERIOD;
  	config->fast_reauth = DEFAULT_FAST_REAUTH;
-@@ -4725,6 +4728,7 @@ static const struct global_parse_data gl
+@@ -4726,6 +4729,7 @@ static const struct global_parse_data gl
  	{ INT(user_mpm), 0 },
  	{ INT_RANGE(max_peer_links, 0, 255), 0 },
  	{ INT(mesh_max_inactivity), 0 },
@@ -113,7 +113,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  /*
   * The default dot11RSNASAERetransPeriod is defined as 40 ms in the standard,
   * but use 1000 ms in practice to avoid issues on low power CPUs.
-@@ -1326,6 +1327,14 @@ struct wpa_config {
+@@ -1327,6 +1328,14 @@ struct wpa_config {
  	int mesh_max_inactivity;
  
  	/**
@@ -138,7 +138,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	INT(frequency);
  	INT(fixed_freq);
  #ifdef CONFIG_ACS
-@@ -1471,6 +1472,9 @@ static void wpa_config_write_global(FILE
+@@ -1472,6 +1473,9 @@ static void wpa_config_write_global(FILE
  		fprintf(f, "mesh_max_inactivity=%d\n",
  			config->mesh_max_inactivity);
  
@@ -150,7 +150,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  		fprintf(f, "dot11RSNASAERetransPeriod=%d\n",
 --- a/wpa_supplicant/config_ssid.h
 +++ b/wpa_supplicant/config_ssid.h
-@@ -514,6 +514,11 @@ struct wpa_ssid {
+@@ -516,6 +516,11 @@ struct wpa_ssid {
  	int dot11MeshConfirmTimeout; /* msec */
  	int dot11MeshHoldingTimeout; /* msec */
  
@@ -172,7 +172,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	conf->dot11MeshMaxRetries = ssid->dot11MeshMaxRetries;
  	conf->dot11MeshRetryTimeout = ssid->dot11MeshRetryTimeout;
  	conf->dot11MeshConfirmTimeout = ssid->dot11MeshConfirmTimeout;
-@@ -325,6 +326,7 @@ static int wpa_supplicant_mesh_init(stru
+@@ -328,6 +329,7 @@ static int wpa_supplicant_mesh_init(stru
  	bss->conf->start_disabled = 1;
  	bss->conf->mesh = MESH_ENABLED;
  	bss->conf->ap_max_inactivity = wpa_s->conf->mesh_max_inactivity;
@@ -180,7 +180,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  
  	if (ieee80211_is_dfs(ssid->frequency, wpa_s->hw.modes,
  			     wpa_s->hw.num_modes) && wpa_s->conf->country[0]) {
-@@ -543,6 +545,10 @@ int wpa_supplicant_join_mesh(struct wpa_
+@@ -549,6 +551,10 @@ int wpa_supplicant_join_mesh(struct wpa_
  	}
  	params->conf.peer_link_timeout = wpa_s->conf->mesh_max_inactivity;
  
@@ -193,7 +193,7 @@ Signed-off-by: Daniel Golle <daniel@makrotopia.org>
  	if (wpa_supplicant_mesh_init(wpa_s, ssid, &params->freq)) {
 --- a/wpa_supplicant/mesh_mpm.c
 +++ b/wpa_supplicant/mesh_mpm.c
-@@ -295,9 +295,9 @@ static void mesh_mpm_send_plink_action(s
+@@ -305,9 +305,9 @@ static void mesh_mpm_send_plink_action(s
  		info = (bss->num_plinks > 63 ? 63 : bss->num_plinks) << 1;
  		/* TODO: Add Connected to Mesh Gate/AS subfields */
  		wpabuf_put_u8(buf, info);
diff --git a/package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch b/package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch
deleted file mode 100644
index 8b29b08160..0000000000
--- a/package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch
+++ /dev/null
@@ -1,82 +0,0 @@
-From d42df8d6ce81d47aea8059c45e3db5c51897f7e8 Mon Sep 17 00:00:00 2001
-From: Jouni Malinen <j@w1.fi>
-Date: Sun, 28 Apr 2019 16:24:32 +0300
-Subject: [PATCH] Fix a regression in storing of external_auth SSID/BSSID
-
-An earlier change in drivers_ops API for struct external_auth broke the
-way SSID and BSSID for an external authentication request were stored.
-The implementation depended on the memory array being available in the
-API struct with a use of memcpy() to copy the full structure even though
-when only SSID and BSSID was needed. Fix this by replacing that
-easy-to-break storing mechanism with explicit arrays for the exact set
-of needed information.
-
-Fixes: dd1a8cef4c05 ("Remove unnecessary copying of SSID and BSSID for external_auth")
-Signed-off-by: Jouni Malinen <j@w1.fi>
----
- wpa_supplicant/sme.c              | 19 ++++++++++++-------
- wpa_supplicant/wpa_supplicant_i.h |  4 +++-
- 2 files changed, 15 insertions(+), 8 deletions(-)
-
---- a/wpa_supplicant/sme.c
-+++ b/wpa_supplicant/sme.c
-@@ -965,9 +965,9 @@ static void sme_send_external_auth_statu
- 
- 	os_memset(&params, 0, sizeof(params));
- 	params.status = status;
--	params.ssid = wpa_s->sme.ext_auth.ssid;
--	params.ssid_len = wpa_s->sme.ext_auth.ssid_len;
--	params.bssid = wpa_s->sme.ext_auth.bssid;
-+	params.ssid = wpa_s->sme.ext_auth_ssid;
-+	params.ssid_len = wpa_s->sme.ext_auth_ssid_len;
-+	params.bssid = wpa_s->sme.ext_auth_bssid;
- 	wpa_drv_send_external_auth_status(wpa_s, &params);
- }
- 
-@@ -1032,8 +1032,13 @@ void sme_external_auth_trigger(struct wp
- 		return;
- 
- 	if (data->external_auth.action == EXT_AUTH_START) {
--		os_memcpy(&wpa_s->sme.ext_auth, data,
--			  sizeof(struct external_auth));
-+		if (!data->external_auth.bssid || !data->external_auth.ssid)
-+			return;
-+		os_memcpy(wpa_s->sme.ext_auth_bssid, data->external_auth.bssid,
-+			  ETH_ALEN);
-+		os_memcpy(wpa_s->sme.ext_auth_ssid, data->external_auth.ssid,
-+			  data->external_auth.ssid_len);
-+		wpa_s->sme.ext_auth_ssid_len = data->external_auth.ssid_len;
- 		wpa_s->sme.seq_num = 0;
- 		wpa_s->sme.sae.state = SAE_NOTHING;
- 		wpa_s->sme.sae.send_confirm = 0;
-@@ -1091,7 +1096,7 @@ static int sme_sae_auth(struct wpa_suppl
- 						wpa_s->current_ssid, 2);
- 		else
- 			sme_external_auth_send_sae_commit(
--				wpa_s, wpa_s->sme.ext_auth.bssid,
-+				wpa_s, wpa_s->sme.ext_auth_bssid,
- 				wpa_s->current_ssid);
- 		return 0;
- 	}
-@@ -1110,7 +1115,7 @@ static int sme_sae_auth(struct wpa_suppl
- 						wpa_s->current_ssid, 1);
- 		else
- 			sme_external_auth_send_sae_commit(
--				wpa_s, wpa_s->sme.ext_auth.bssid,
-+				wpa_s, wpa_s->sme.ext_auth_bssid,
- 				wpa_s->current_ssid);
- 		return 0;
- 	}
---- a/wpa_supplicant/wpa_supplicant_i.h
-+++ b/wpa_supplicant/wpa_supplicant_i.h
-@@ -802,7 +802,9 @@ struct wpa_supplicant {
- 		int sae_group_index;
- 		unsigned int sae_pmksa_caching:1;
- 		u16 seq_num;
--		struct external_auth ext_auth;
-+		u8 ext_auth_bssid[ETH_ALEN];
-+		u8 ext_auth_ssid[SSID_MAX_LEN];
-+		size_t ext_auth_ssid_len;
- #endif /* CONFIG_SAE */
- 	} sme;
- #endif /* CONFIG_SME */
diff --git a/package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch b/package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch
deleted file mode 100644
index c130626884..0000000000
--- a/package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From 6326fa0c408c266275f600d2a71eb974ab22be7e Mon Sep 17 00:00:00 2001
-From: David Woodhouse <dwmw2@infradead.org>
-Date: Sun, 28 Apr 2019 21:56:34 +0300
-Subject: [PATCH] Fix ENGINE support with OpenSSL 1.1+
-
-Commit 373c7969485 ("OpenSSL: Fix compile with OpenSSL 1.1.0 and
-deprecated APIs") removed a call to ENGINE_load_dynamic() for newer
-versions of OpenSSL, asserting that it should happen automatically.
-
-That appears not to be the case, and loading engines now fails because
-the dynamic engine isn't present.
-
-Fix it by calling ENGINE_load_builtin_engines(), which works for all
-versions of OpenSSL. Also remove the call to ERR_load_ENGINE_strings()
-because that should have happened when SSL_load_error_strings() is
-called anyway.
-
-Fixes: 373c79694859 ("OpenSSL: Fix compile with OpenSSL 1.1.0 and deprecated APIs")
-Signed-off-by: David Woodhouse <dwmw2@infradead.org>
----
- src/crypto/tls_openssl.c | 7 ++-----
- 1 file changed, 2 insertions(+), 5 deletions(-)
-
---- a/src/crypto/tls_openssl.c
-+++ b/src/crypto/tls_openssl.c
-@@ -1071,11 +1071,8 @@ void * tls_init(const struct tls_config
- 	}
- 
- #ifndef OPENSSL_NO_ENGINE
--	wpa_printf(MSG_DEBUG, "ENGINE: Loading dynamic engine");
--#if OPENSSL_VERSION_NUMBER < 0x10100000L
--	ERR_load_ENGINE_strings();
--	ENGINE_load_dynamic();
--#endif /* OPENSSL_VERSION_NUMBER */
-+	wpa_printf(MSG_DEBUG, "ENGINE: Loading builtin engines");
-+	ENGINE_load_builtin_engines();
- 
- 	if (conf &&
- 	    (conf->opensc_engine_path || conf->pkcs11_engine_path ||
diff --git a/package/network/services/hostapd/patches/051-wpa_supplicant-fix-race-condition-in-mesh-mpm-new-pe.patch b/package/network/services/hostapd/patches/051-wpa_supplicant-fix-race-condition-in-mesh-mpm-new-pe.patch
index 46bd1dc2ff..cca8d47488 100644
--- a/package/network/services/hostapd/patches/051-wpa_supplicant-fix-race-condition-in-mesh-mpm-new-pe.patch
+++ b/package/network/services/hostapd/patches/051-wpa_supplicant-fix-race-condition-in-mesh-mpm-new-pe.patch
@@ -14,7 +14,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/wpa_supplicant/mesh_mpm.c
 +++ b/wpa_supplicant/mesh_mpm.c
-@@ -685,11 +685,12 @@ static struct sta_info * mesh_mpm_add_pe
+@@ -710,11 +710,12 @@ static struct sta_info * mesh_mpm_add_pe
  	}
  
  	sta = ap_get_sta(data, addr);
diff --git a/package/network/services/hostapd/patches/110-no_eapol_fix.patch b/package/network/services/hostapd/patches/110-no_eapol_fix.patch
index 81b66f8ada..b912c3991b 100644
--- a/package/network/services/hostapd/patches/110-no_eapol_fix.patch
+++ b/package/network/services/hostapd/patches/110-no_eapol_fix.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -296,9 +296,10 @@ void wpa_supplicant_cancel_auth_timeout(
+@@ -297,9 +297,10 @@ void wpa_supplicant_cancel_auth_timeout(
   */
  void wpa_supplicant_initiate_eapol(struct wpa_supplicant *wpa_s)
  {
diff --git a/package/network/services/hostapd/patches/200-multicall.patch b/package/network/services/hostapd/patches/200-multicall.patch
index 7a3a10b895..3766fe97c9 100644
--- a/package/network/services/hostapd/patches/200-multicall.patch
+++ b/package/network/services/hostapd/patches/200-multicall.patch
@@ -18,7 +18,7 @@
  OBJS += ../src/ap/vlan_init.o
  OBJS += ../src/ap/vlan_ifconfig.o
  OBJS += ../src/ap/vlan.o
-@@ -360,10 +362,14 @@ CFLAGS += -DCONFIG_MBO
+@@ -366,10 +368,14 @@ CFLAGS += -DCONFIG_MBO
  OBJS += ../src/ap/mbo_ap.o
  endif
  
@@ -36,7 +36,7 @@
  LIBS += $(DRV_AP_LIBS)
  
  ifdef CONFIG_L2_PACKET
-@@ -1286,6 +1292,12 @@ install: $(addprefix $(DESTDIR)$(BINDIR)
+@@ -1316,6 +1322,12 @@ install: $(addprefix $(DESTDIR)$(BINDIR)
  
  BCHECK=../src/drivers/build.hostapd
  
@@ -49,7 +49,7 @@
  hostapd: $(BCHECK) $(OBJS)
  	$(Q)$(CC) $(LDFLAGS) -o hostapd $(OBJS) $(LIBS)
  	@$(E) "  LD " $@
-@@ -1328,6 +1340,12 @@ ifeq ($(CONFIG_TLS), linux)
+@@ -1358,6 +1370,12 @@ ifeq ($(CONFIG_TLS), linux)
  HOBJS += ../src/crypto/crypto_linux.o
  endif
  
@@ -72,7 +72,7 @@
  
  ifndef CONFIG_NO_GITVER
  # Add VERSION_STR postfix for builds from a git repository
-@@ -362,7 +363,9 @@ endif
+@@ -363,7 +364,9 @@ endif
  ifdef CONFIG_IBSS_RSN
  NEED_RSN_AUTHENTICATOR=y
  CFLAGS += -DCONFIG_IBSS_RSN
@@ -82,7 +82,7 @@
  OBJS += ibss_rsn.o
  endif
  
-@@ -870,6 +873,10 @@ ifdef CONFIG_DYNAMIC_EAP_METHODS
+@@ -892,6 +895,10 @@ ifdef CONFIG_DYNAMIC_EAP_METHODS
  CFLAGS += -DCONFIG_DYNAMIC_EAP_METHODS
  LIBS += -ldl -rdynamic
  endif
@@ -93,7 +93,7 @@
  endif
  
  ifdef CONFIG_AP
-@@ -877,9 +884,11 @@ NEED_EAP_COMMON=y
+@@ -899,9 +906,11 @@ NEED_EAP_COMMON=y
  NEED_RSN_AUTHENTICATOR=y
  CFLAGS += -DCONFIG_AP
  OBJS += ap.o
@@ -105,7 +105,7 @@
  OBJS += ../src/ap/hostapd.o
  OBJS += ../src/ap/wpa_auth_glue.o
  OBJS += ../src/ap/utils.o
-@@ -961,6 +970,12 @@ endif
+@@ -983,6 +992,12 @@ endif
  ifdef CONFIG_HS20
  OBJS += ../src/ap/hs20.o
  endif
@@ -118,7 +118,7 @@
  endif
  
  ifdef CONFIG_MBO
-@@ -969,7 +984,9 @@ CFLAGS += -DCONFIG_MBO
+@@ -991,7 +1006,9 @@ CFLAGS += -DCONFIG_MBO
  endif
  
  ifdef NEED_RSN_AUTHENTICATOR
@@ -128,7 +128,7 @@
  NEED_AES_WRAP=y
  OBJS += ../src/ap/wpa_auth.o
  OBJS += ../src/ap/wpa_auth_ie.o
-@@ -1872,6 +1889,12 @@ wpa_priv: $(BCHECK) $(OBJS_priv)
+@@ -1899,6 +1916,12 @@ wpa_priv: $(BCHECK) $(OBJS_priv)
  
  $(OBJS_c) $(OBJS_t) $(OBJS_t2) $(OBJS) $(BCHECK) $(EXTRA_progs): .config
  
@@ -141,7 +141,7 @@
  wpa_supplicant: $(BCHECK) $(OBJS) $(EXTRA_progs)
  	$(Q)$(LDO) $(LDFLAGS) -o wpa_supplicant $(OBJS) $(LIBS) $(EXTRALIBS)
  	@$(E) "  LD " $@
-@@ -1972,6 +1995,12 @@ endif
+@@ -1999,6 +2022,12 @@ endif
  	$(Q)sed -e 's|\@BINDIR\@|$(BINDIR)|g' $< >$@
  	@$(E) "  sed" $<
  
@@ -156,7 +156,7 @@
  wpa_cli.exe: wpa_cli
 --- a/src/drivers/driver.h
 +++ b/src/drivers/driver.h
-@@ -5551,8 +5551,8 @@ union wpa_event_data {
+@@ -5657,8 +5657,8 @@ union wpa_event_data {
   * Driver wrapper code should call this function whenever an event is received
   * from the driver.
   */
@@ -167,7 +167,7 @@
  
  /**
   * wpa_supplicant_event_global - Report a driver event for wpa_supplicant
-@@ -5564,7 +5564,7 @@ void wpa_supplicant_event(void *ctx, enu
+@@ -5670,7 +5670,7 @@ void wpa_supplicant_event(void *ctx, enu
   * Same as wpa_supplicant_event(), but we search for the interface in
   * wpa_global.
   */
@@ -178,8 +178,8 @@
  /*
 --- a/src/ap/drv_callbacks.c
 +++ b/src/ap/drv_callbacks.c
-@@ -1568,8 +1568,8 @@ static void hostapd_event_wds_sta_interf
- }
+@@ -1656,8 +1656,8 @@ err:
+ #endif /* CONFIG_OWE */
  
  
 -void wpa_supplicant_event(void *ctx, enum wpa_event_type event,
@@ -189,7 +189,7 @@
  {
  	struct hostapd_data *hapd = ctx;
  #ifndef CONFIG_NO_STDOUT_DEBUG
-@@ -1803,7 +1803,7 @@ void wpa_supplicant_event(void *ctx, enu
+@@ -1902,7 +1902,7 @@ void wpa_supplicant_event(void *ctx, enu
  }
  
  
@@ -231,7 +231,7 @@
  	os_memset(&global, 0, sizeof(global));
 --- a/wpa_supplicant/events.c
 +++ b/wpa_supplicant/events.c
-@@ -4176,8 +4176,8 @@ static void wpas_event_assoc_reject(stru
+@@ -4184,8 +4184,8 @@ static void wpas_event_assoc_reject(stru
  }
  
  
@@ -242,7 +242,7 @@
  {
  	struct wpa_supplicant *wpa_s = ctx;
  	int resched;
-@@ -4951,7 +4951,7 @@ void wpa_supplicant_event(void *ctx, enu
+@@ -4967,7 +4967,7 @@ void wpa_supplicant_event(void *ctx, enu
  }
  
  
@@ -253,7 +253,7 @@
  	struct wpa_supplicant *wpa_s;
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6087,7 +6087,6 @@ struct wpa_interface * wpa_supplicant_ma
+@@ -6097,7 +6097,6 @@ struct wpa_interface * wpa_supplicant_ma
  	return NULL;
  }
  
@@ -261,7 +261,7 @@
  /**
   * wpa_supplicant_match_existing - Match existing interfaces
   * @global: Pointer to global data from wpa_supplicant_init()
-@@ -6124,6 +6123,11 @@ static int wpa_supplicant_match_existing
+@@ -6134,6 +6133,11 @@ static int wpa_supplicant_match_existing
  
  #endif /* CONFIG_MATCH_IFACE */
  
@@ -273,7 +273,7 @@
  
  /**
   * wpa_supplicant_add_iface - Add a new network interface
-@@ -6380,6 +6384,8 @@ struct wpa_global * wpa_supplicant_init(
+@@ -6390,6 +6394,8 @@ struct wpa_global * wpa_supplicant_init(
  #ifndef CONFIG_NO_WPA_MSG
  	wpa_msg_register_ifname_cb(wpa_supplicant_msg_ifname_cb);
  #endif /* CONFIG_NO_WPA_MSG */
@@ -296,7 +296,7 @@
  
  #ifdef CONFIG_WPS
  static int gen_uuid(const char *txt_addr)
-@@ -677,6 +682,8 @@ int main(int argc, char *argv[])
+@@ -682,6 +687,8 @@ int main(int argc, char *argv[])
  		return -1;
  #endif /* CONFIG_DPP */
  
@@ -320,7 +320,7 @@
  {
 --- a/wpa_supplicant/eapol_test.c
 +++ b/wpa_supplicant/eapol_test.c
-@@ -29,7 +29,12 @@
+@@ -30,7 +30,12 @@
  #include "ctrl_iface.h"
  #include "pcsc_funcs.h"
  #include "wpas_glue.h"
@@ -333,7 +333,7 @@
  
  const struct wpa_driver_ops *const wpa_drivers[] = { NULL };
  
-@@ -1296,6 +1301,10 @@ static void usage(void)
+@@ -1292,6 +1297,10 @@ static void usage(void)
  	       "option several times.\n");
  }
  
@@ -344,7 +344,7 @@
  
  int main(int argc, char *argv[])
  {
-@@ -1316,6 +1325,8 @@ int main(int argc, char *argv[])
+@@ -1312,6 +1321,8 @@ int main(int argc, char *argv[])
  	if (os_program_init())
  		return -1;
  
diff --git a/package/network/services/hostapd/patches/300-noscan.patch b/package/network/services/hostapd/patches/300-noscan.patch
index 73e6a4ede2..4c3728bc8f 100644
--- a/package/network/services/hostapd/patches/300-noscan.patch
+++ b/package/network/services/hostapd/patches/300-noscan.patch
@@ -1,6 +1,6 @@
 --- a/hostapd/config_file.c
 +++ b/hostapd/config_file.c
-@@ -3390,6 +3390,10 @@ static int hostapd_config_fill(struct ho
+@@ -3411,6 +3411,10 @@ static int hostapd_config_fill(struct ho
  			bss->ieee80211w = 1;
  #endif /* CONFIG_OCV */
  #ifdef CONFIG_IEEE80211N
@@ -13,7 +13,7 @@
  	} else if (os_strcmp(buf, "ht_capab") == 0) {
 --- a/src/ap/ap_config.h
 +++ b/src/ap/ap_config.h
-@@ -803,6 +803,8 @@ struct hostapd_config {
+@@ -934,6 +934,8 @@ struct hostapd_config {
  
  	int ht_op_mode_fixed;
  	u16 ht_capab;
diff --git a/package/network/services/hostapd/patches/301-mesh-noscan.patch b/package/network/services/hostapd/patches/301-mesh-noscan.patch
index 7f2374424c..18db9bc9c0 100644
--- a/package/network/services/hostapd/patches/301-mesh-noscan.patch
+++ b/package/network/services/hostapd/patches/301-mesh-noscan.patch
@@ -20,7 +20,7 @@
  	INT(fixed_freq);
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -358,6 +358,8 @@ static int wpa_supplicant_mesh_init(stru
+@@ -361,6 +361,8 @@ static int wpa_supplicant_mesh_init(stru
  			   frequency);
  		goto out_free;
  	}
@@ -31,8 +31,8 @@
  	if (conf->hw_mode == HOSTAPD_MODE_IEEE80211A && ssid->vht) {
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2139,12 +2139,12 @@ void ibss_mesh_setup_freq(struct wpa_sup
- {
+@@ -2144,12 +2144,12 @@ void ibss_mesh_setup_freq(struct wpa_sup
+ 	int ieee80211_mode = wpas_mode_to_ieee80211_mode(ssid->mode);
  	enum hostapd_hw_mode hw_mode;
  	struct hostapd_hw_modes *mode = NULL;
 -	int ht40plus[] = { 36, 44, 52, 60, 100, 108, 116, 124, 132, 149, 157,
@@ -46,7 +46,7 @@
  	unsigned int j, k;
  	struct hostapd_freq_params vht_freq;
  	int chwidth, seg0, seg1;
-@@ -2214,7 +2214,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2222,7 +2222,7 @@ void ibss_mesh_setup_freq(struct wpa_sup
  		return;
  
  	/* Setup higher BW only for 5 GHz */
@@ -57,7 +57,7 @@
  	for (chan_idx = 0; chan_idx < mode->num_channels; chan_idx++) {
 --- a/wpa_supplicant/config_ssid.h
 +++ b/wpa_supplicant/config_ssid.h
-@@ -916,6 +916,8 @@ struct wpa_ssid {
+@@ -918,6 +918,8 @@ struct wpa_ssid {
  	 */
  	int no_auto_peer;
  
diff --git a/package/network/services/hostapd/patches/310-rescan_immediately.patch b/package/network/services/hostapd/patches/310-rescan_immediately.patch
index 0bf93a6ec2..f69bb388a6 100644
--- a/package/network/services/hostapd/patches/310-rescan_immediately.patch
+++ b/package/network/services/hostapd/patches/310-rescan_immediately.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -4465,7 +4465,7 @@ wpa_supplicant_alloc(struct wpa_supplica
+@@ -4475,7 +4475,7 @@ wpa_supplicant_alloc(struct wpa_supplica
  	if (wpa_s == NULL)
  		return NULL;
  	wpa_s->scan_req = INITIAL_SCAN_REQ;
diff --git a/package/network/services/hostapd/patches/330-nl80211_fix_set_freq.patch b/package/network/services/hostapd/patches/330-nl80211_fix_set_freq.patch
index 0ab114f86f..13343e22e6 100644
--- a/package/network/services/hostapd/patches/330-nl80211_fix_set_freq.patch
+++ b/package/network/services/hostapd/patches/330-nl80211_fix_set_freq.patch
@@ -1,7 +1,7 @@
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -4434,7 +4434,7 @@ static int nl80211_set_channel(struct i8
- 		   freq->freq, freq->ht_enabled, freq->vht_enabled,
+@@ -4431,7 +4431,7 @@ static int nl80211_set_channel(struct i8
+ 		   freq->freq, freq->ht_enabled, freq->vht_enabled, freq->he_enabled,
  		   freq->bandwidth, freq->center_freq1, freq->center_freq2);
  
 -	msg = nl80211_drv_msg(drv, 0, set_chan ? NL80211_CMD_SET_CHANNEL :
diff --git a/package/network/services/hostapd/patches/340-reload_freq_change.patch b/package/network/services/hostapd/patches/340-reload_freq_change.patch
index 81c20970e7..369586769c 100644
--- a/package/network/services/hostapd/patches/340-reload_freq_change.patch
+++ b/package/network/services/hostapd/patches/340-reload_freq_change.patch
@@ -1,6 +1,6 @@
 --- a/src/ap/hostapd.c
 +++ b/src/ap/hostapd.c
-@@ -103,6 +103,25 @@ static void hostapd_reload_bss(struct ho
+@@ -108,6 +108,26 @@ static void hostapd_reload_bss(struct ho
  #endif /* CONFIG_NO_RADIUS */
  
  	ssid = &hapd->conf->ssid;
@@ -9,10 +9,11 @@
 +			 hapd->iconf->channel,
 +			 hapd->iconf->ieee80211n,
 +			 hapd->iconf->ieee80211ac,
++			 hapd->iconf->ieee80211ax,
 +			 hapd->iconf->secondary_channel,
-+			 hapd->iconf->vht_oper_chwidth,
-+			 hapd->iconf->vht_oper_centr_freq_seg0_idx,
-+			 hapd->iconf->vht_oper_centr_freq_seg1_idx);
++			 hostapd_get_oper_chwidth(hapd->iconf),
++			 hostapd_get_oper_centr_freq_seg0_idx(hapd->iconf),
++			 hostapd_get_oper_centr_freq_seg1_idx(hapd->iconf));
 +
 +	if (hapd->iface->current_mode) {
 +		if (hostapd_prepare_rates(hapd->iface, hapd->iface->current_mode)) {
@@ -26,7 +27,7 @@
  	if (!ssid->wpa_psk_set && ssid->wpa_psk && !ssid->wpa_psk->next &&
  	    ssid->wpa_passphrase_set && ssid->wpa_passphrase) {
  		/*
-@@ -200,6 +219,7 @@ int hostapd_reload_config(struct hostapd
+@@ -205,6 +225,7 @@ int hostapd_reload_config(struct hostapd
  	struct hostapd_data *hapd = iface->bss[0];
  	struct hostapd_config *newconf, *oldconf;
  	size_t j;
@@ -34,7 +35,7 @@
  
  	if (iface->config_fname == NULL) {
  		/* Only in-memory config in use - assume it has been updated */
-@@ -250,21 +270,20 @@ int hostapd_reload_config(struct hostapd
+@@ -255,24 +276,20 @@ int hostapd_reload_config(struct hostapd
  	}
  	iface->conf = newconf;
  
@@ -59,11 +60,14 @@
 -		hapd->iconf->ieee80211ac = oldconf->ieee80211ac;
 -		hapd->iconf->ht_capab = oldconf->ht_capab;
 -		hapd->iconf->vht_capab = oldconf->vht_capab;
--		hapd->iconf->vht_oper_chwidth = oldconf->vht_oper_chwidth;
--		hapd->iconf->vht_oper_centr_freq_seg0_idx =
--			oldconf->vht_oper_centr_freq_seg0_idx;
--		hapd->iconf->vht_oper_centr_freq_seg1_idx =
--			oldconf->vht_oper_centr_freq_seg1_idx;
+-		hostapd_set_oper_chwidth(hapd->iconf,
+-					 hostapd_get_oper_chwidth(oldconf));
+-		hostapd_set_oper_centr_freq_seg0_idx(
+-			hapd->iconf,
+-			hostapd_get_oper_centr_freq_seg0_idx(oldconf));
+-		hostapd_set_oper_centr_freq_seg1_idx(
+-			hapd->iconf,
+-			hostapd_get_oper_centr_freq_seg1_idx(oldconf));
  		hapd->conf = newconf->bss[j];
  		hostapd_reload_bss(hapd);
  	}
diff --git a/package/network/services/hostapd/patches/341-mesh-ctrl-iface-channel-switch.patch b/package/network/services/hostapd/patches/341-mesh-ctrl-iface-channel-switch.patch
index e3b19a3d35..70fb01b8e5 100644
--- a/package/network/services/hostapd/patches/341-mesh-ctrl-iface-channel-switch.patch
+++ b/package/network/services/hostapd/patches/341-mesh-ctrl-iface-channel-switch.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/ap.c
 +++ b/wpa_supplicant/ap.c
-@@ -1373,15 +1373,35 @@ int ap_switch_channel(struct wpa_supplic
+@@ -1378,15 +1378,35 @@ int ap_switch_channel(struct wpa_supplic
  
  
  #ifdef CONFIG_CTRL_IFACE
diff --git a/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch b/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch
index 8343595ecc..c3ce2b474d 100644
--- a/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch
+++ b/package/network/services/hostapd/patches/350-nl80211_del_beacon_bss.patch
@@ -1,6 +1,6 @@
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -2722,10 +2722,15 @@ static int wpa_driver_nl80211_del_beacon
+@@ -2721,10 +2721,15 @@ static int wpa_driver_nl80211_del_beacon
  	struct nl_msg *msg;
  	struct wpa_driver_nl80211_data *drv = bss->drv;
  
@@ -18,7 +18,7 @@
  	return send_and_recv_msgs(drv, msg, NULL, NULL);
  }
  
-@@ -5036,7 +5041,7 @@ static void nl80211_teardown_ap(struct i
+@@ -5042,7 +5047,7 @@ static void nl80211_teardown_ap(struct i
  		nl80211_mgmt_unsubscribe(bss, "AP teardown");
  
  	nl80211_put_wiphy_data_ap(bss);
@@ -27,7 +27,7 @@
  }
  
  
-@@ -7302,8 +7307,6 @@ static int wpa_driver_nl80211_if_remove(
+@@ -7353,8 +7358,6 @@ static int wpa_driver_nl80211_if_remove(
  	} else {
  		wpa_printf(MSG_DEBUG, "nl80211: First BSS - reassign context");
  		nl80211_teardown_ap(bss);
@@ -36,7 +36,7 @@
  		nl80211_destroy_bss(bss);
  		if (!bss->added_if)
  			i802_set_iface_flags(bss, 0);
-@@ -7693,7 +7696,6 @@ static int wpa_driver_nl80211_deinit_ap(
+@@ -7744,7 +7747,6 @@ static int wpa_driver_nl80211_deinit_ap(
  	if (!is_ap_interface(drv->nlmode))
  		return -1;
  	wpa_driver_nl80211_del_beacon(bss);
@@ -44,7 +44,7 @@
  
  	/*
  	 * If the P2P GO interface was dynamically added, then it is
-@@ -7713,7 +7715,6 @@ static int wpa_driver_nl80211_stop_ap(vo
+@@ -7764,7 +7766,6 @@ static int wpa_driver_nl80211_stop_ap(vo
  	if (!is_ap_interface(drv->nlmode))
  		return -1;
  	wpa_driver_nl80211_del_beacon(bss);
diff --git a/package/network/services/hostapd/patches/360-ctrl_iface_reload.patch b/package/network/services/hostapd/patches/360-ctrl_iface_reload.patch
index c0108c7ce0..1706abb0ad 100644
--- a/package/network/services/hostapd/patches/360-ctrl_iface_reload.patch
+++ b/package/network/services/hostapd/patches/360-ctrl_iface_reload.patch
@@ -78,7 +78,7 @@
  
  #ifdef CONFIG_IEEE80211W
  #ifdef NEED_AP_MLME
-@@ -3172,6 +3229,8 @@ static int hostapd_ctrl_iface_receive_pr
+@@ -3195,6 +3252,8 @@ static int hostapd_ctrl_iface_receive_pr
  	} else if (os_strncmp(buf, "VENDOR ", 7) == 0) {
  		reply_len = hostapd_ctrl_iface_vendor(hapd, buf + 7, reply,
  						      reply_size);
@@ -89,7 +89,7 @@
  #ifdef RADIUS_SERVER
 --- a/src/ap/ctrl_iface_ap.c
 +++ b/src/ap/ctrl_iface_ap.c
-@@ -872,7 +872,13 @@ int hostapd_parse_csa_settings(const cha
+@@ -874,7 +874,13 @@ int hostapd_parse_csa_settings(const cha
  
  int hostapd_ctrl_iface_stop_ap(struct hostapd_data *hapd)
  {
diff --git a/package/network/services/hostapd/patches/370-ap_sta_support.patch b/package/network/services/hostapd/patches/370-ap_sta_support.patch
index 79dc3f56e8..5916619fa5 100644
--- a/package/network/services/hostapd/patches/370-ap_sta_support.patch
+++ b/package/network/services/hostapd/patches/370-ap_sta_support.patch
@@ -110,7 +110,7 @@
  			break;
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -126,6 +126,55 @@ static void wpas_update_fils_connect_par
+@@ -127,6 +127,55 @@ static void wpas_update_fils_connect_par
  #endif /* CONFIG_FILS && IEEE8021X_EAPOL */
  
  
@@ -166,7 +166,7 @@
  /* Configure default/group WEP keys for static WEP */
  int wpa_set_wep_keys(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
  {
-@@ -940,12 +989,16 @@ void wpa_supplicant_set_state(struct wpa
+@@ -941,12 +990,16 @@ void wpa_supplicant_set_state(struct wpa
  
  		sme_sched_obss_scan(wpa_s, 1);
  
@@ -183,7 +183,7 @@
  		wpa_s->new_connection = 1;
  		wpa_drv_set_operstate(wpa_s, 0);
  #ifndef IEEE8021X_EAPOL
-@@ -2035,6 +2088,8 @@ void wpa_supplicant_associate(struct wpa
+@@ -2039,6 +2092,8 @@ void wpa_supplicant_associate(struct wpa
  			wpa_ssid_txt(ssid->ssid, ssid->ssid_len),
  			ssid->id);
  		wpas_notify_mesh_group_started(wpa_s, ssid);
@@ -192,7 +192,7 @@
  #else /* CONFIG_MESH */
  		wpa_msg(wpa_s, MSG_ERROR,
  			"mesh mode support not included in the build");
-@@ -5707,6 +5762,16 @@ static int wpa_supplicant_init_iface(str
+@@ -5717,6 +5772,16 @@ static int wpa_supplicant_init_iface(str
  			   sizeof(wpa_s->bridge_ifname));
  	}
  
@@ -209,7 +209,7 @@
  	/* RSNA Supplicant Key Management - INITIALIZE */
  	eapol_sm_notify_portEnabled(wpa_s->eapol, FALSE);
  	eapol_sm_notify_portValid(wpa_s->eapol, FALSE);
-@@ -6034,6 +6099,11 @@ static void wpa_supplicant_deinit_iface(
+@@ -6044,6 +6109,11 @@ static void wpa_supplicant_deinit_iface(
  	if (terminate)
  		wpa_msg(wpa_s, MSG_INFO, WPA_EVENT_TERMINATING);
  
@@ -246,7 +246,7 @@
  
 --- a/hostapd/ctrl_iface.c
 +++ b/hostapd/ctrl_iface.c
-@@ -2385,6 +2385,11 @@ static int hostapd_ctrl_iface_chan_switc
+@@ -2408,6 +2408,11 @@ static int hostapd_ctrl_iface_chan_switc
  	if (ret)
  		return ret;
  
@@ -260,7 +260,7 @@
  		/* Save CHAN_SWITCH VHT config */
 --- a/src/ap/beacon.c
 +++ b/src/ap/beacon.c
-@@ -1397,11 +1397,6 @@ int ieee802_11_set_beacon(struct hostapd
+@@ -1403,11 +1403,6 @@ int ieee802_11_set_beacon(struct hostapd
  	struct wpabuf *beacon, *proberesp, *assocresp;
  	int res, ret = -1;
  
@@ -272,156 +272,3 @@
  	hapd->beacon_set_done = 1;
  
  	if (ieee802_11_build_ap_params(hapd, &params) < 0)
---- a/src/drivers/driver.h
-+++ b/src/drivers/driver.h
-@@ -4544,6 +4544,13 @@ enum wpa_event_type {
- 	EVENT_CH_SWITCH,
- 
- 	/**
-+	 * EVENT_CH_SWITCH - AP or GO will switch channels soon
-+	 *
-+	 * Described in wpa_event_data.ch_switch
-+	 * */
-+	EVENT_CH_SWITCH_STARTED,
-+
-+	/**
- 	 * EVENT_WNM - Request WNM operation
- 	 *
- 	 * This event can be used to request a WNM operation to be performed.
-@@ -5381,6 +5388,7 @@ union wpa_event_data {
- 
- 	/**
- 	 * struct ch_switch
-+	 * @count: countdown until channel switch
- 	 * @freq: Frequency of new channel in MHz
- 	 * @ht_enabled: Whether this is an HT channel
- 	 * @ch_offset: Secondary channel offset
-@@ -5389,6 +5397,7 @@ union wpa_event_data {
- 	 * @cf2: Center frequency 2
- 	 */
- 	struct ch_switch {
-+		int count;
- 		int freq;
- 		int ht_enabled;
- 		int ch_offset;
---- a/src/drivers/driver_nl80211_event.c
-+++ b/src/drivers/driver_nl80211_event.c
-@@ -534,7 +534,8 @@ static int calculate_chan_offset(int wid
- static void mlme_event_ch_switch(struct wpa_driver_nl80211_data *drv,
- 				 struct nlattr *ifindex, struct nlattr *freq,
- 				 struct nlattr *type, struct nlattr *bw,
--				 struct nlattr *cf1, struct nlattr *cf2)
-+				 struct nlattr *cf1, struct nlattr *cf2,
-+				 struct nlattr *count)
- {
- 	struct i802_bss *bss;
- 	union wpa_event_data data;
-@@ -592,11 +593,15 @@ static void mlme_event_ch_switch(struct
- 		data.ch_switch.cf1 = nla_get_u32(cf1);
- 	if (cf2)
- 		data.ch_switch.cf2 = nla_get_u32(cf2);
-+	if (count)
-+		data.ch_switch.count = nla_get_u32(count);
- 
- 	bss->freq = data.ch_switch.freq;
- 	drv->assoc_freq = data.ch_switch.freq;
- 
--	wpa_supplicant_event(bss->ctx, EVENT_CH_SWITCH, &data);
-+	wpa_supplicant_event(bss->ctx,
-+			     count ? EVENT_CH_SWITCH_STARTED : EVENT_CH_SWITCH,
-+			     &data);
- }
- 
- 
-@@ -2508,6 +2513,7 @@ static void do_process_drv_event(struct
- 				   tb[NL80211_ATTR_PMK],
- 				   tb[NL80211_ATTR_PMKID]);
- 		break;
-+	case NL80211_CMD_CH_SWITCH_STARTED_NOTIFY:
- 	case NL80211_CMD_CH_SWITCH_NOTIFY:
- 		mlme_event_ch_switch(drv,
- 				     tb[NL80211_ATTR_IFINDEX],
-@@ -2515,7 +2521,8 @@ static void do_process_drv_event(struct
- 				     tb[NL80211_ATTR_WIPHY_CHANNEL_TYPE],
- 				     tb[NL80211_ATTR_CHANNEL_WIDTH],
- 				     tb[NL80211_ATTR_CENTER_FREQ1],
--				     tb[NL80211_ATTR_CENTER_FREQ2]);
-+				     tb[NL80211_ATTR_CENTER_FREQ2],
-+				     tb[NL80211_ATTR_CH_SWITCH_COUNT]);
- 		break;
- 	case NL80211_CMD_DISCONNECT:
- 		mlme_event_disconnect(drv, tb[NL80211_ATTR_REASON_CODE],
---- a/wpa_supplicant/events.c
-+++ b/wpa_supplicant/events.c
-@@ -4176,6 +4176,60 @@ static void wpas_event_assoc_reject(stru
- }
- 
- 
-+static void
-+supplicant_ch_switch_started(struct wpa_supplicant *wpa_s,
-+			    union wpa_event_data *data)
-+{
-+	char buf[256];
-+	size_t len = sizeof(buf);
-+	char *cmd = NULL;
-+	int width = 20;
-+	int ret;
-+
-+	if (!wpa_s->hostapd)
-+		return;
-+
-+	wpa_msg(wpa_s, MSG_INFO, WPA_EVENT_CHANNEL_SWITCH
-+		"count=%d freq=%d ht_enabled=%d ch_offset=%d ch_width=%s cf1=%d cf2=%d",
-+		data->ch_switch.count,
-+		data->ch_switch.freq,
-+		data->ch_switch.ht_enabled,
-+		data->ch_switch.ch_offset,
-+		channel_width_to_string(data->ch_switch.ch_width),
-+		data->ch_switch.cf1,
-+		data->ch_switch.cf2);
-+
-+	switch (data->ch_switch.ch_width) {
-+	case CHAN_WIDTH_20_NOHT:
-+	case CHAN_WIDTH_20:
-+		width = 20;
-+		break;
-+	case CHAN_WIDTH_40:
-+		width = 40;
-+		break;
-+	case CHAN_WIDTH_80:
-+		width = 80;
-+		break;
-+	case CHAN_WIDTH_160:
-+	case CHAN_WIDTH_80P80:
-+		width = 160;
-+		break;
-+	}
-+
-+	asprintf(&cmd, "CHAN_SWITCH %d %d sec_channel_offset=%d center_freq1=%d center_freq2=%d, bandwidth=%d auto-ht\n",
-+		data->ch_switch.count - 1,
-+		data->ch_switch.freq,
-+		data->ch_switch.ch_offset,
-+		data->ch_switch.cf1,
-+		data->ch_switch.cf2,
-+		width);
-+	ret = wpa_ctrl_request(wpa_s->hostapd, cmd, os_strlen(cmd), buf, &len, NULL);
-+	free(cmd);
-+
-+	if (ret < 0)
-+		wpa_printf(MSG_ERROR, "\nFailed to reload hostapd AP interfaces\n");
-+}
-+
- void supplicant_event(void *ctx, enum wpa_event_type event,
- 		      union wpa_event_data *data)
- {
-@@ -4461,6 +4515,10 @@ void supplicant_event(void *ctx, enum wp
- 				       data->rx_from_unknown.wds);
- 		break;
- #endif /* CONFIG_AP */
-+	case EVENT_CH_SWITCH_STARTED:
-+		supplicant_ch_switch_started(wpa_s, data);
-+		break;
-+
- 	case EVENT_CH_SWITCH:
- 		if (!data || !wpa_s->current_ssid)
- 			break;
diff --git a/package/network/services/hostapd/patches/380-disable_ctrl_iface_mib.patch b/package/network/services/hostapd/patches/380-disable_ctrl_iface_mib.patch
index 86f8ba48c3..7f16d3a12a 100644
--- a/package/network/services/hostapd/patches/380-disable_ctrl_iface_mib.patch
+++ b/package/network/services/hostapd/patches/380-disable_ctrl_iface_mib.patch
@@ -12,7 +12,7 @@
  else
 --- a/hostapd/ctrl_iface.c
 +++ b/hostapd/ctrl_iface.c
-@@ -2997,6 +2997,7 @@ static int hostapd_ctrl_iface_receive_pr
+@@ -3020,6 +3020,7 @@ static int hostapd_ctrl_iface_receive_pr
  						      reply_size);
  	} else if (os_strcmp(buf, "STATUS-DRIVER") == 0) {
  		reply_len = hostapd_drv_status(hapd, reply, reply_size);
@@ -20,7 +20,7 @@
  	} else if (os_strcmp(buf, "MIB") == 0) {
  		reply_len = ieee802_11_get_mib(hapd, reply, reply_size);
  		if (reply_len >= 0) {
-@@ -3038,6 +3039,7 @@ static int hostapd_ctrl_iface_receive_pr
+@@ -3061,6 +3062,7 @@ static int hostapd_ctrl_iface_receive_pr
  	} else if (os_strncmp(buf, "STA-NEXT ", 9) == 0) {
  		reply_len = hostapd_ctrl_iface_sta_next(hapd, buf + 9, reply,
  							reply_size);
@@ -30,7 +30,7 @@
  			reply_len = -1;
 --- a/wpa_supplicant/Makefile
 +++ b/wpa_supplicant/Makefile
-@@ -935,6 +935,9 @@ ifdef CONFIG_FILS
+@@ -957,6 +957,9 @@ ifdef CONFIG_FILS
  OBJS += ../src/ap/fils_hlp.o
  endif
  ifdef CONFIG_CTRL_IFACE
@@ -51,7 +51,7 @@
  		if (wpa_s->ap_iface) {
  			pos += ap_ctrl_iface_wpa_get_status(wpa_s, pos,
  							    end - pos,
-@@ -9968,6 +9968,7 @@ char * wpa_supplicant_ctrl_iface_process
+@@ -9962,6 +9962,7 @@ char * wpa_supplicant_ctrl_iface_process
  			reply_len = -1;
  	} else if (os_strncmp(buf, "NOTE ", 5) == 0) {
  		wpa_printf(MSG_INFO, "NOTE: %s", buf + 5);
@@ -59,7 +59,7 @@
  	} else if (os_strcmp(buf, "MIB") == 0) {
  		reply_len = wpa_sm_get_mib(wpa_s->wpa, reply, reply_size);
  		if (reply_len >= 0) {
-@@ -9980,6 +9981,7 @@ char * wpa_supplicant_ctrl_iface_process
+@@ -9974,6 +9975,7 @@ char * wpa_supplicant_ctrl_iface_process
  				reply_size - reply_len);
  #endif /* CONFIG_MACSEC */
  		}
@@ -67,7 +67,7 @@
  	} else if (os_strncmp(buf, "STATUS", 6) == 0) {
  		reply_len = wpa_supplicant_ctrl_iface_status(
  			wpa_s, buf + 6, reply, reply_size);
-@@ -10461,6 +10463,7 @@ char * wpa_supplicant_ctrl_iface_process
+@@ -10458,6 +10460,7 @@ char * wpa_supplicant_ctrl_iface_process
  		reply_len = wpa_supplicant_ctrl_iface_bss(
  			wpa_s, buf + 4, reply, reply_size);
  #ifdef CONFIG_AP
@@ -75,7 +75,7 @@
  	} else if (os_strcmp(buf, "STA-FIRST") == 0) {
  		reply_len = ap_ctrl_iface_sta_first(wpa_s, reply, reply_size);
  	} else if (os_strncmp(buf, "STA ", 4) == 0) {
-@@ -10469,12 +10472,15 @@ char * wpa_supplicant_ctrl_iface_process
+@@ -10466,12 +10469,15 @@ char * wpa_supplicant_ctrl_iface_process
  	} else if (os_strncmp(buf, "STA-NEXT ", 9) == 0) {
  		reply_len = ap_ctrl_iface_sta_next(wpa_s, buf + 9, reply,
  						   reply_size);
@@ -109,7 +109,7 @@
  
  #ifdef CONFIG_P2P_MANAGER
  static int p2p_manager_disconnect(struct hostapd_data *hapd, u16 stype,
-@@ -761,12 +763,12 @@ int hostapd_ctrl_iface_status(struct hos
+@@ -763,12 +765,12 @@ int hostapd_ctrl_iface_status(struct hos
  			return len;
  		len += ret;
  	}
@@ -126,7 +126,7 @@
  		if (os_snprintf_error(buflen - len, ret))
 --- a/src/ap/ieee802_1x.c
 +++ b/src/ap/ieee802_1x.c
-@@ -2579,6 +2579,7 @@ static const char * bool_txt(Boolean val
+@@ -2706,6 +2706,7 @@ static const char * bool_txt(Boolean val
  	return val ? "TRUE" : "FALSE";
  }
  
@@ -134,7 +134,7 @@
  
  int ieee802_1x_get_mib(struct hostapd_data *hapd, char *buf, size_t buflen)
  {
-@@ -2765,6 +2766,7 @@ int ieee802_1x_get_mib_sta(struct hostap
+@@ -2892,6 +2893,7 @@ int ieee802_1x_get_mib_sta(struct hostap
  	return len;
  }
  
@@ -144,7 +144,7 @@
  static void ieee802_1x_wnm_notif_send(void *eloop_ctx, void *timeout_ctx)
 --- a/src/ap/wpa_auth.c
 +++ b/src/ap/wpa_auth.c
-@@ -4112,6 +4112,7 @@ static const char * wpa_bool_txt(int val
+@@ -4116,6 +4116,7 @@ static const char * wpa_bool_txt(int val
  	return val ? "TRUE" : "FALSE";
  }
  
@@ -152,7 +152,7 @@
  
  #define RSN_SUITE "%02x-%02x-%02x-%d"
  #define RSN_SUITE_ARG(s) \
-@@ -4256,7 +4257,7 @@ int wpa_get_mib_sta(struct wpa_state_mac
+@@ -4264,7 +4265,7 @@ int wpa_get_mib_sta(struct wpa_state_mac
  
  	return len;
  }
@@ -163,7 +163,7 @@
  {
 --- a/src/rsn_supp/wpa.c
 +++ b/src/rsn_supp/wpa.c
-@@ -2481,6 +2481,8 @@ static u32 wpa_key_mgmt_suite(struct wpa
+@@ -2502,6 +2502,8 @@ static u32 wpa_key_mgmt_suite(struct wpa
  }
  
  
@@ -172,7 +172,7 @@
  #define RSN_SUITE "%02x-%02x-%02x-%d"
  #define RSN_SUITE_ARG(s) \
  ((s) >> 24) & 0xff, ((s) >> 16) & 0xff, ((s) >> 8) & 0xff, (s) & 0xff
-@@ -2564,6 +2566,7 @@ int wpa_sm_get_mib(struct wpa_sm *sm, ch
+@@ -2585,6 +2587,7 @@ int wpa_sm_get_mib(struct wpa_sm *sm, ch
  
  	return (int) len;
  }
@@ -182,7 +182,7 @@
  
 --- a/wpa_supplicant/ap.c
 +++ b/wpa_supplicant/ap.c
-@@ -1231,7 +1231,7 @@ int wpas_ap_wps_nfc_report_handover(stru
+@@ -1236,7 +1236,7 @@ int wpas_ap_wps_nfc_report_handover(stru
  #endif /* CONFIG_WPS */
  
  
diff --git a/package/network/services/hostapd/patches/390-wpa_ie_cap_workaround.patch b/package/network/services/hostapd/patches/390-wpa_ie_cap_workaround.patch
index 92b3d9b046..c879c3fb84 100644
--- a/package/network/services/hostapd/patches/390-wpa_ie_cap_workaround.patch
+++ b/package/network/services/hostapd/patches/390-wpa_ie_cap_workaround.patch
@@ -1,6 +1,6 @@
 --- a/src/common/wpa_common.c
 +++ b/src/common/wpa_common.c
-@@ -2079,6 +2079,31 @@ u32 wpa_akm_to_suite(int akm)
+@@ -2089,6 +2089,31 @@ u32 wpa_akm_to_suite(int akm)
  }
  
  
@@ -32,7 +32,7 @@
  int wpa_compare_rsn_ie(int ft_initial_assoc,
  		       const u8 *ie1, size_t ie1len,
  		       const u8 *ie2, size_t ie2len)
-@@ -2086,8 +2111,19 @@ int wpa_compare_rsn_ie(int ft_initial_as
+@@ -2096,8 +2121,19 @@ int wpa_compare_rsn_ie(int ft_initial_as
  	if (ie1 == NULL || ie2 == NULL)
  		return -1;
  
diff --git a/package/network/services/hostapd/patches/410-limit_debug_messages.patch b/package/network/services/hostapd/patches/410-limit_debug_messages.patch
index 624897cd02..e7c10d2662 100644
--- a/package/network/services/hostapd/patches/410-limit_debug_messages.patch
+++ b/package/network/services/hostapd/patches/410-limit_debug_messages.patch
@@ -1,6 +1,6 @@
 --- a/src/utils/wpa_debug.c
 +++ b/src/utils/wpa_debug.c
-@@ -205,7 +205,7 @@ void wpa_debug_close_linux_tracing(void)
+@@ -206,7 +206,7 @@ void wpa_debug_close_linux_tracing(void)
   *
   * Note: New line '\n' is added to the end of the text when printing to stdout.
   */
@@ -9,7 +9,7 @@
  {
  	va_list ap;
  
-@@ -252,8 +252,8 @@ void wpa_printf(int level, const char *f
+@@ -253,8 +253,8 @@ void wpa_printf(int level, const char *f
  }
  
  
@@ -20,7 +20,7 @@
  {
  	size_t i;
  
-@@ -379,20 +379,8 @@ static void _wpa_hexdump(int level, cons
+@@ -380,20 +380,8 @@ static void _wpa_hexdump(int level, cons
  #endif /* CONFIG_ANDROID_LOG */
  }
  
@@ -43,7 +43,7 @@
  {
  	size_t i, llen;
  	const u8 *pos = buf;
-@@ -505,20 +493,6 @@ static void _wpa_hexdump_ascii(int level
+@@ -506,20 +494,6 @@ static void _wpa_hexdump_ascii(int level
  }
  
  
@@ -64,7 +64,7 @@
  #ifdef CONFIG_DEBUG_FILE
  static char *last_path = NULL;
  #endif /* CONFIG_DEBUG_FILE */
-@@ -634,7 +608,7 @@ void wpa_msg_register_ifname_cb(wpa_msg_
+@@ -635,7 +609,7 @@ void wpa_msg_register_ifname_cb(wpa_msg_
  }
  
  
@@ -73,7 +73,7 @@
  {
  	va_list ap;
  	char *buf;
-@@ -672,7 +646,7 @@ void wpa_msg(void *ctx, int level, const
+@@ -673,7 +647,7 @@ void wpa_msg(void *ctx, int level, const
  }
  
  
diff --git a/package/network/services/hostapd/patches/420-indicate-features.patch b/package/network/services/hostapd/patches/420-indicate-features.patch
index fe5e2d89a3..1f8b049f36 100644
--- a/package/network/services/hostapd/patches/420-indicate-features.patch
+++ b/package/network/services/hostapd/patches/420-indicate-features.patch
@@ -8,7 +8,7 @@
  #include "crypto/random.h"
  #include "crypto/tls.h"
  #include "common/version.h"
-@@ -685,7 +686,7 @@ int main(int argc, char *argv[])
+@@ -690,7 +691,7 @@ int main(int argc, char *argv[])
  	wpa_supplicant_event = hostapd_wpa_event;
  	wpa_supplicant_event_global = hostapd_wpa_event_global;
  	for (;;) {
@@ -17,7 +17,7 @@
  		if (c < 0)
  			break;
  		switch (c) {
-@@ -722,6 +723,8 @@ int main(int argc, char *argv[])
+@@ -727,6 +728,8 @@ int main(int argc, char *argv[])
  			break;
  #endif /* CONFIG_DEBUG_LINUX_TRACING */
  		case 'v':
diff --git a/package/network/services/hostapd/patches/430-hostapd_cli_ifdef.patch b/package/network/services/hostapd/patches/430-hostapd_cli_ifdef.patch
index 3cb07d16d7..ca053bcdf6 100644
--- a/package/network/services/hostapd/patches/430-hostapd_cli_ifdef.patch
+++ b/package/network/services/hostapd/patches/430-hostapd_cli_ifdef.patch
@@ -32,7 +32,7 @@
  
  
  static int hostapd_cli_cmd_disassoc_imminent(struct wpa_ctrl *ctrl, int argc,
-@@ -1531,15 +1527,12 @@ static const struct hostapd_cli_cmd host
+@@ -1538,15 +1534,12 @@ static const struct hostapd_cli_cmd host
  	{ "disassociate", hostapd_cli_cmd_disassociate,
  	  hostapd_complete_stations,
  	  "<addr> = disassociate a station" },
@@ -48,7 +48,7 @@
  	{ "wps_pin", hostapd_cli_cmd_wps_pin, NULL,
  	  "<uuid> <pin> [timeout] [addr] = add WPS Enrollee PIN" },
  	{ "wps_check_pin", hostapd_cli_cmd_wps_check_pin, NULL,
-@@ -1564,7 +1557,6 @@ static const struct hostapd_cli_cmd host
+@@ -1571,7 +1564,6 @@ static const struct hostapd_cli_cmd host
  	  "<SSID> <auth> <encr> <key> = configure AP" },
  	{ "wps_get_status", hostapd_cli_cmd_wps_get_status, NULL,
  	  "= show current WPS status" },
diff --git a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
index a0869e9c1c..7ead342fd8 100644
--- a/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
+++ b/package/network/services/hostapd/patches/460-wpa_supplicant-add-new-config-params-to-be-used-with.patch
@@ -22,7 +22,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
  #include "common/defs.h"
  #include "common/ieee802_11_defs.h"
  #include "common/wpa_common.h"
-@@ -791,6 +792,9 @@ struct wpa_driver_associate_params {
+@@ -819,6 +820,9 @@ struct wpa_driver_associate_params {
  	 * responsible for selecting with which BSS to associate. */
  	const u8 *bssid;
  
@@ -162,7 +162,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
  
  
  #define DEFAULT_EAP_WORKAROUND ((unsigned int) -1)
-@@ -788,6 +790,9 @@ struct wpa_ssid {
+@@ -790,6 +792,9 @@ struct wpa_ssid {
  	 */
  	void *parent_cred;
  
@@ -174,7 +174,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
  	 * macsec_policy - Determines the policy for MACsec secure session
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -3258,6 +3258,12 @@ static void wpas_start_assoc_cb(struct w
+@@ -3267,6 +3267,12 @@ static void wpas_start_assoc_cb(struct w
  			params.beacon_int = ssid->beacon_int;
  		else
  			params.beacon_int = wpa_s->conf->beacon_int;
diff --git a/package/network/services/hostapd/patches/461-driver_nl80211-use-new-parameters-during-ibss-join.patch b/package/network/services/hostapd/patches/461-driver_nl80211-use-new-parameters-during-ibss-join.patch
index efae01a40a..54ac6a7e3c 100644
--- a/package/network/services/hostapd/patches/461-driver_nl80211-use-new-parameters-during-ibss-join.patch
+++ b/package/network/services/hostapd/patches/461-driver_nl80211-use-new-parameters-during-ibss-join.patch
@@ -10,7 +10,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
 
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -5295,7 +5295,7 @@ static int wpa_driver_nl80211_ibss(struc
+@@ -5323,7 +5323,7 @@ static int wpa_driver_nl80211_ibss(struc
  				   struct wpa_driver_associate_params *params)
  {
  	struct nl_msg *msg;
@@ -19,7 +19,7 @@ Signed-hostap: Antonio Quartulli <ordex@autistici.org>
  	int count = 0;
  
  	wpa_printf(MSG_DEBUG, "nl80211: Join IBSS (ifindex=%d)", drv->ifindex);
-@@ -5322,6 +5322,37 @@ retry:
+@@ -5350,6 +5350,37 @@ retry:
  	    nl80211_put_beacon_int(msg, params->beacon_int))
  		goto fail;
  
diff --git a/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch b/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch
index 041412654e..b1c0a59188 100644
--- a/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch
+++ b/package/network/services/hostapd/patches/463-add-mcast_rate-to-11s.patch
@@ -19,7 +19,7 @@ Tested-by: Simon Wunderlich <simon.wunderlich@openmesh.com>
 
 --- a/src/drivers/driver.h
 +++ b/src/drivers/driver.h
-@@ -1443,6 +1443,7 @@ struct wpa_driver_mesh_join_params {
+@@ -1484,6 +1484,7 @@ struct wpa_driver_mesh_join_params {
  #define WPA_DRIVER_MESH_FLAG_AMPE	0x00000008
  	unsigned int flags;
  	u8 handle_dfs;
@@ -29,7 +29,7 @@ Tested-by: Simon Wunderlich <simon.wunderlich@openmesh.com>
  /**
 --- a/src/drivers/driver_nl80211.c
 +++ b/src/drivers/driver_nl80211.c
-@@ -9532,6 +9532,18 @@ static int nl80211_put_mesh_id(struct nl
+@@ -9612,6 +9612,18 @@ static int nl80211_put_mesh_id(struct nl
  }
  
  
@@ -48,7 +48,7 @@ Tested-by: Simon Wunderlich <simon.wunderlich@openmesh.com>
  static int nl80211_put_mesh_config(struct nl_msg *msg,
  				   struct wpa_driver_mesh_bss_params *params)
  {
-@@ -9593,6 +9605,7 @@ static int nl80211_join_mesh(struct i802
+@@ -9673,6 +9685,7 @@ static int nl80211_join_mesh(struct i802
  	    nl80211_put_basic_rates(msg, params->basic_rates) ||
  	    nl80211_put_mesh_id(msg, params->meshid, params->meshid_len) ||
  	    nl80211_put_beacon_int(msg, params->beacon_int) ||
@@ -58,7 +58,7 @@ Tested-by: Simon Wunderlich <simon.wunderlich@openmesh.com>
  
 --- a/wpa_supplicant/mesh.c
 +++ b/wpa_supplicant/mesh.c
-@@ -491,6 +491,7 @@ int wpa_supplicant_join_mesh(struct wpa_
+@@ -494,6 +494,7 @@ int wpa_supplicant_join_mesh(struct wpa_
  
  	params->meshid = ssid->ssid;
  	params->meshid_len = ssid->ssid_len;
diff --git a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
index 5b7dc391e0..566a6d74da 100644
--- a/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
+++ b/package/network/services/hostapd/patches/464-fix-mesh-obss-check.patch
@@ -1,6 +1,6 @@
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -2212,11 +2212,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
+@@ -2217,11 +2217,13 @@ void ibss_mesh_setup_freq(struct wpa_sup
  	for (j = 0; j < wpa_s->last_scan_res_used; j++) {
  		struct wpa_bss *bss = wpa_s->last_scan_res[j];
  
diff --git a/package/network/services/hostapd/patches/500-lto-jobserver-support.patch b/package/network/services/hostapd/patches/500-lto-jobserver-support.patch
index 31c578537d..1edfb8e804 100644
--- a/package/network/services/hostapd/patches/500-lto-jobserver-support.patch
+++ b/package/network/services/hostapd/patches/500-lto-jobserver-support.patch
@@ -1,6 +1,6 @@
 --- a/hostapd/Makefile
 +++ b/hostapd/Makefile
-@@ -1302,14 +1302,14 @@ hostapd_multi.a: $(BCHECK) $(OBJS)
+@@ -1332,14 +1332,14 @@ hostapd_multi.a: $(BCHECK) $(OBJS)
  	@$(AR) cr $@ hostapd_multi.o $(OBJS)
  
  hostapd: $(BCHECK) $(OBJS)
@@ -19,7 +19,7 @@
  NOBJS = nt_password_hash.o ../src/crypto/ms_funcs.o $(SHA1OBJS)
 --- a/wpa_supplicant/Makefile
 +++ b/wpa_supplicant/Makefile
-@@ -1905,23 +1905,23 @@ wpa_supplicant_multi.a: .config $(BCHECK
+@@ -1932,23 +1932,23 @@ wpa_supplicant_multi.a: .config $(BCHECK
  	@$(AR) cr $@ wpa_supplicant_multi.o $(OBJS)
  
  wpa_supplicant: $(BCHECK) $(OBJS) $(EXTRA_progs)
diff --git a/package/network/services/hostapd/patches/600-ubus_support.patch b/package/network/services/hostapd/patches/600-ubus_support.patch
index d5b1e33e48..9448011218 100644
--- a/package/network/services/hostapd/patches/600-ubus_support.patch
+++ b/package/network/services/hostapd/patches/600-ubus_support.patch
@@ -14,7 +14,7 @@
  CFLAGS += -O0 -fprofile-arcs -ftest-coverage
 --- a/src/ap/hostapd.h
 +++ b/src/ap/hostapd.h
-@@ -13,6 +13,7 @@
+@@ -17,6 +17,7 @@
  #include "utils/list.h"
  #include "ap_config.h"
  #include "drivers/driver.h"
@@ -22,7 +22,7 @@
  
  #define OCE_STA_CFON_ENABLED(hapd) \
  	((hapd->conf->oce & OCE_STA_CFON) && \
-@@ -141,6 +142,7 @@ struct hostapd_data {
+@@ -145,6 +146,7 @@ struct hostapd_data {
  	struct hostapd_iface *iface;
  	struct hostapd_config *iconf;
  	struct hostapd_bss_config *conf;
@@ -32,7 +32,7 @@
  	unsigned int disabled:1;
 --- a/src/ap/hostapd.c
 +++ b/src/ap/hostapd.c
-@@ -374,6 +374,7 @@ static void hostapd_free_hapd_data(struc
+@@ -380,6 +380,7 @@ static void hostapd_free_hapd_data(struc
  	hapd->beacon_set_done = 0;
  
  	wpa_printf(MSG_DEBUG, "%s(%s)", __func__, hapd->conf->iface);
@@ -40,7 +40,7 @@
  	iapp_deinit(hapd->iapp);
  	hapd->iapp = NULL;
  	accounting_deinit(hapd);
-@@ -1314,6 +1315,8 @@ static int hostapd_setup_bss(struct host
+@@ -1377,6 +1378,8 @@ static int hostapd_setup_bss(struct host
  	if (hapd->driver && hapd->driver->set_operstate)
  		hapd->driver->set_operstate(hapd->drv_priv, 1);
  
@@ -49,7 +49,7 @@
  	return 0;
  }
  
-@@ -1828,6 +1831,7 @@ static int hostapd_setup_interface_compl
+@@ -1891,6 +1894,7 @@ static int hostapd_setup_interface_compl
  	if (err)
  		goto fail;
  
@@ -57,7 +57,7 @@
  	wpa_printf(MSG_DEBUG, "Completing interface initialization");
  	if (iface->conf->channel) {
  #ifdef NEED_AP_MLME
-@@ -2020,6 +2024,7 @@ dfs_offload:
+@@ -2087,6 +2091,7 @@ dfs_offload:
  
  fail:
  	wpa_printf(MSG_ERROR, "Interface initialization failed");
@@ -65,7 +65,7 @@
  	hostapd_set_state(iface, HAPD_IFACE_DISABLED);
  	wpa_msg(hapd->msg_ctx, MSG_INFO, AP_EVENT_DISABLED);
  #ifdef CONFIG_FST
-@@ -2489,6 +2494,7 @@ void hostapd_interface_deinit_free(struc
+@@ -2562,6 +2567,7 @@ void hostapd_interface_deinit_free(struc
  		   (unsigned int) iface->conf->num_bss);
  	driver = iface->bss[0]->driver;
  	drv_priv = iface->bss[0]->drv_priv;
@@ -75,7 +75,7 @@
  		   __func__, driver, drv_priv);
 --- a/src/ap/ieee802_11.c
 +++ b/src/ap/ieee802_11.c
-@@ -2029,7 +2029,7 @@ static void handle_auth(struct hostapd_d
+@@ -2032,7 +2032,7 @@ static void handle_auth(struct hostapd_d
  	u16 auth_alg, auth_transaction, status_code;
  	u16 resp = WLAN_STATUS_SUCCESS;
  	struct sta_info *sta = NULL;
@@ -84,7 +84,7 @@
  	u16 fc;
  	const u8 *challenge = NULL;
  	u32 session_timeout, acct_interim_interval;
-@@ -2040,6 +2040,11 @@ static void handle_auth(struct hostapd_d
+@@ -2043,6 +2043,11 @@ static void handle_auth(struct hostapd_d
  	char *identity = NULL;
  	char *radius_cui = NULL;
  	u16 seq_ctrl;
@@ -96,7 +96,7 @@
  
  	if (len < IEEE80211_HDRLEN + sizeof(mgmt->u.auth)) {
  		wpa_printf(MSG_INFO, "handle_auth - too short payload (len=%lu)",
-@@ -2201,6 +2206,13 @@ static void handle_auth(struct hostapd_d
+@@ -2204,6 +2209,13 @@ static void handle_auth(struct hostapd_d
  		resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
  		goto fail;
  	}
@@ -110,7 +110,7 @@
  	if (res == HOSTAPD_ACL_PENDING)
  		return;
  
-@@ -3699,7 +3711,7 @@ static void handle_assoc(struct hostapd_
+@@ -3862,7 +3874,7 @@ static void handle_assoc(struct hostapd_
  	u16 capab_info, listen_interval, seq_ctrl, fc;
  	u16 resp = WLAN_STATUS_SUCCESS, reply_res;
  	const u8 *pos;
@@ -119,7 +119,7 @@
  	struct sta_info *sta;
  	u8 *tmp = NULL;
  	struct hostapd_sta_wpa_psk_short *psk = NULL;
-@@ -3708,6 +3720,11 @@ static void handle_assoc(struct hostapd_
+@@ -3871,6 +3883,11 @@ static void handle_assoc(struct hostapd_
  #ifdef CONFIG_FILS
  	int delay_assoc = 0;
  #endif /* CONFIG_FILS */
@@ -131,7 +131,7 @@
  
  	if (len < IEEE80211_HDRLEN + (reassoc ? sizeof(mgmt->u.reassoc_req) :
  				      sizeof(mgmt->u.assoc_req))) {
-@@ -3887,6 +3904,14 @@ static void handle_assoc(struct hostapd_
+@@ -4050,6 +4067,14 @@ static void handle_assoc(struct hostapd_
  	}
  #endif /* CONFIG_MBO */
  
@@ -146,7 +146,7 @@
  	/*
  	 * sta->capability is used in check_assoc_ies() for RRM enabled
  	 * capability element.
-@@ -4114,6 +4139,7 @@ static void handle_disassoc(struct hosta
+@@ -4277,6 +4302,7 @@ static void handle_disassoc(struct hosta
  	wpa_printf(MSG_DEBUG, "disassocation: STA=" MACSTR " reason_code=%d",
  		   MAC2STR(mgmt->sa),
  		   le_to_host16(mgmt->u.disassoc.reason_code));
@@ -154,7 +154,7 @@
  
  	sta = ap_get_sta(hapd, mgmt->sa);
  	if (sta == NULL) {
-@@ -4179,6 +4205,8 @@ static void handle_deauth(struct hostapd
+@@ -4342,6 +4368,8 @@ static void handle_deauth(struct hostapd
  		" reason_code=%d",
  		MAC2STR(mgmt->sa), le_to_host16(mgmt->u.deauth.reason_code));
  
@@ -165,7 +165,7 @@
  		wpa_msg(hapd->msg_ctx, MSG_DEBUG, "Station " MACSTR " trying "
 --- a/src/ap/beacon.c
 +++ b/src/ap/beacon.c
-@@ -744,6 +744,12 @@ void handle_probe_req(struct hostapd_dat
+@@ -746,6 +746,12 @@ void handle_probe_req(struct hostapd_dat
  	struct hostapd_sta_wpa_psk_short *psk = NULL;
  	char *identity = NULL;
  	char *radius_cui = NULL;
@@ -178,7 +178,7 @@
  
  	if (len < IEEE80211_HDRLEN)
  		return;
-@@ -921,6 +927,12 @@ void handle_probe_req(struct hostapd_dat
+@@ -923,6 +929,12 @@ void handle_probe_req(struct hostapd_dat
  	}
  #endif /* CONFIG_P2P */
  
@@ -219,7 +219,7 @@
  		wpabuf_free(sta->p2p_ie);
 --- a/src/ap/sta_info.c
 +++ b/src/ap/sta_info.c
-@@ -423,6 +423,7 @@ void ap_handle_timer(void *eloop_ctx, vo
+@@ -424,6 +424,7 @@ void ap_handle_timer(void *eloop_ctx, vo
  			       HOSTAPD_LEVEL_INFO, "deauthenticated due to "
  			       "local deauth request");
  		ap_free_sta(hapd, sta);
@@ -227,7 +227,7 @@
  		return;
  	}
  
-@@ -577,6 +578,7 @@ skip_poll:
+@@ -578,6 +579,7 @@ skip_poll:
  			hapd, sta,
  			WLAN_REASON_PREV_AUTH_NOT_VALID);
  		ap_free_sta(hapd, sta);
@@ -235,7 +235,7 @@
  		break;
  	}
  }
-@@ -1273,6 +1275,7 @@ void ap_sta_set_authorized(struct hostap
+@@ -1284,6 +1286,7 @@ void ap_sta_set_authorized(struct hostap
  					  buf, ip_addr, keyid_buf);
  	} else {
  		wpa_msg(hapd->msg_ctx, MSG_INFO, AP_STA_DISCONNECTED "%s", buf);
@@ -245,7 +245,7 @@
  		    hapd->msg_ctx_parent != hapd->msg_ctx)
 --- a/src/ap/wpa_auth_glue.c
 +++ b/src/ap/wpa_auth_glue.c
-@@ -181,6 +181,7 @@ static void hostapd_wpa_auth_psk_failure
+@@ -185,6 +185,7 @@ static void hostapd_wpa_auth_psk_failure
  	struct hostapd_data *hapd = ctx;
  	wpa_msg(hapd->msg_ctx, MSG_INFO, AP_STA_POSSIBLE_PSK_MISMATCH MACSTR,
  		MAC2STR(addr));
@@ -268,7 +268,7 @@
  ifdef CONFIG_CODE_COVERAGE
  CFLAGS += -O0 -fprofile-arcs -ftest-coverage
  LIBS += -lgcov
-@@ -923,6 +929,9 @@ endif
+@@ -945,6 +951,9 @@ endif
  ifdef CONFIG_IEEE80211AX
  OBJS += ../src/ap/ieee802_11_he.o
  endif
@@ -280,7 +280,7 @@
  CFLAGS += -DCONFIG_WNM_AP
 --- a/wpa_supplicant/wpa_supplicant.c
 +++ b/wpa_supplicant/wpa_supplicant.c
-@@ -6288,6 +6288,8 @@ struct wpa_supplicant * wpa_supplicant_a
+@@ -6298,6 +6298,8 @@ struct wpa_supplicant * wpa_supplicant_a
  	}
  #endif /* CONFIG_P2P */
  
@@ -289,7 +289,7 @@
  	return wpa_s;
  }
  
-@@ -6314,6 +6316,8 @@ int wpa_supplicant_remove_iface(struct w
+@@ -6324,6 +6326,8 @@ int wpa_supplicant_remove_iface(struct w
  	struct wpa_supplicant *parent = wpa_s->parent;
  #endif /* CONFIG_MESH */
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
