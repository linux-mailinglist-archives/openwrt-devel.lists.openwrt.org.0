Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A28ACF6F
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 17:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtXuzlTmcDif6uqCXD9eqlrAsg77Hp1KhuSUSLrodpQ=; b=ceNSR9tHvTMC1G
	XZVrW2FsRLwu3hP7Smfun7ZYKeK76rPbvEe8HsvwQQhMD5y8465mV5ej32Pf2P/Lb3yvDROwTuXdB
	HMZrDAJ60A9vCWgb2atbCLVUTwMAp2vibn7Km9Puf40Ju8QHi1AovFzluEDOnyKDd/97d9Qsh50FH
	9+M3mhGtPZESZ6JuWTPOgLx0jp786CBBrAKrQFp7He0ZecFfAldJ+AJJlXLGRIL5HfzaID2L1ljUj
	Jw7GYbMBFBdpZVgt7uomBlDYoEDxvQOYUSajmlNvOcNDdjHtjm9LSpAXPUUS+MGxhjbAnyUXTdf+4
	BlvobQuH0jEaZ6agVx8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6z06-0003Mw-UE; Sun, 08 Sep 2019 15:21:15 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6yzI-0002dW-1z
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 15:20:27 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 102CEA0D20;
 Sun,  8 Sep 2019 17:20:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id sCEFnGo81Z7e; Sun,  8 Sep 2019 17:20:17 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 17:20:02 +0200
Message-Id: <20190908152007.24810-3-hauke@hauke-m.de>
In-Reply-To: <20190908152007.24810-1-hauke@hauke-m.de>
References: <20190908152007.24810-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_082024_524576_C9D58432 
X-CRM114-Status: GOOD (  19.63  )
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
Subject: [OpenWrt-Devel] [PATCH 2/7] hostapd: backport some Fixes from
 upstream hostapd
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

These two patches are fixing some problems which are fixed in hostapd
master, but not in version 2.8.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...-in-storing-of-external_auth-SSID-BS.patch | 82 +++++++++++++++++++
 ...-Fix-ENGINE-support-with-OpenSSL-1.1.patch | 39 +++++++++
 2 files changed, 121 insertions(+)
 create mode 100644 package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch
 create mode 100644 package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch

diff --git a/package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch b/package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch
new file mode 100644
index 0000000000..8b29b08160
--- /dev/null
+++ b/package/network/services/hostapd/patches/040-Fix-a-regression-in-storing-of-external_auth-SSID-BS.patch
@@ -0,0 +1,82 @@
+From d42df8d6ce81d47aea8059c45e3db5c51897f7e8 Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <j@w1.fi>
+Date: Sun, 28 Apr 2019 16:24:32 +0300
+Subject: [PATCH] Fix a regression in storing of external_auth SSID/BSSID
+
+An earlier change in drivers_ops API for struct external_auth broke the
+way SSID and BSSID for an external authentication request were stored.
+The implementation depended on the memory array being available in the
+API struct with a use of memcpy() to copy the full structure even though
+when only SSID and BSSID was needed. Fix this by replacing that
+easy-to-break storing mechanism with explicit arrays for the exact set
+of needed information.
+
+Fixes: dd1a8cef4c05 ("Remove unnecessary copying of SSID and BSSID for external_auth")
+Signed-off-by: Jouni Malinen <j@w1.fi>
+---
+ wpa_supplicant/sme.c              | 19 ++++++++++++-------
+ wpa_supplicant/wpa_supplicant_i.h |  4 +++-
+ 2 files changed, 15 insertions(+), 8 deletions(-)
+
+--- a/wpa_supplicant/sme.c
++++ b/wpa_supplicant/sme.c
+@@ -965,9 +965,9 @@ static void sme_send_external_auth_statu
+ 
+ 	os_memset(&params, 0, sizeof(params));
+ 	params.status = status;
+-	params.ssid = wpa_s->sme.ext_auth.ssid;
+-	params.ssid_len = wpa_s->sme.ext_auth.ssid_len;
+-	params.bssid = wpa_s->sme.ext_auth.bssid;
++	params.ssid = wpa_s->sme.ext_auth_ssid;
++	params.ssid_len = wpa_s->sme.ext_auth_ssid_len;
++	params.bssid = wpa_s->sme.ext_auth_bssid;
+ 	wpa_drv_send_external_auth_status(wpa_s, &params);
+ }
+ 
+@@ -1032,8 +1032,13 @@ void sme_external_auth_trigger(struct wp
+ 		return;
+ 
+ 	if (data->external_auth.action == EXT_AUTH_START) {
+-		os_memcpy(&wpa_s->sme.ext_auth, data,
+-			  sizeof(struct external_auth));
++		if (!data->external_auth.bssid || !data->external_auth.ssid)
++			return;
++		os_memcpy(wpa_s->sme.ext_auth_bssid, data->external_auth.bssid,
++			  ETH_ALEN);
++		os_memcpy(wpa_s->sme.ext_auth_ssid, data->external_auth.ssid,
++			  data->external_auth.ssid_len);
++		wpa_s->sme.ext_auth_ssid_len = data->external_auth.ssid_len;
+ 		wpa_s->sme.seq_num = 0;
+ 		wpa_s->sme.sae.state = SAE_NOTHING;
+ 		wpa_s->sme.sae.send_confirm = 0;
+@@ -1091,7 +1096,7 @@ static int sme_sae_auth(struct wpa_suppl
+ 						wpa_s->current_ssid, 2);
+ 		else
+ 			sme_external_auth_send_sae_commit(
+-				wpa_s, wpa_s->sme.ext_auth.bssid,
++				wpa_s, wpa_s->sme.ext_auth_bssid,
+ 				wpa_s->current_ssid);
+ 		return 0;
+ 	}
+@@ -1110,7 +1115,7 @@ static int sme_sae_auth(struct wpa_suppl
+ 						wpa_s->current_ssid, 1);
+ 		else
+ 			sme_external_auth_send_sae_commit(
+-				wpa_s, wpa_s->sme.ext_auth.bssid,
++				wpa_s, wpa_s->sme.ext_auth_bssid,
+ 				wpa_s->current_ssid);
+ 		return 0;
+ 	}
+--- a/wpa_supplicant/wpa_supplicant_i.h
++++ b/wpa_supplicant/wpa_supplicant_i.h
+@@ -802,7 +802,9 @@ struct wpa_supplicant {
+ 		int sae_group_index;
+ 		unsigned int sae_pmksa_caching:1;
+ 		u16 seq_num;
+-		struct external_auth ext_auth;
++		u8 ext_auth_bssid[ETH_ALEN];
++		u8 ext_auth_ssid[SSID_MAX_LEN];
++		size_t ext_auth_ssid_len;
+ #endif /* CONFIG_SAE */
+ 	} sme;
+ #endif /* CONFIG_SME */
diff --git a/package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch b/package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch
new file mode 100644
index 0000000000..c130626884
--- /dev/null
+++ b/package/network/services/hostapd/patches/041-Fix-ENGINE-support-with-OpenSSL-1.1.patch
@@ -0,0 +1,39 @@
+From 6326fa0c408c266275f600d2a71eb974ab22be7e Mon Sep 17 00:00:00 2001
+From: David Woodhouse <dwmw2@infradead.org>
+Date: Sun, 28 Apr 2019 21:56:34 +0300
+Subject: [PATCH] Fix ENGINE support with OpenSSL 1.1+
+
+Commit 373c7969485 ("OpenSSL: Fix compile with OpenSSL 1.1.0 and
+deprecated APIs") removed a call to ENGINE_load_dynamic() for newer
+versions of OpenSSL, asserting that it should happen automatically.
+
+That appears not to be the case, and loading engines now fails because
+the dynamic engine isn't present.
+
+Fix it by calling ENGINE_load_builtin_engines(), which works for all
+versions of OpenSSL. Also remove the call to ERR_load_ENGINE_strings()
+because that should have happened when SSL_load_error_strings() is
+called anyway.
+
+Fixes: 373c79694859 ("OpenSSL: Fix compile with OpenSSL 1.1.0 and deprecated APIs")
+Signed-off-by: David Woodhouse <dwmw2@infradead.org>
+---
+ src/crypto/tls_openssl.c | 7 ++-----
+ 1 file changed, 2 insertions(+), 5 deletions(-)
+
+--- a/src/crypto/tls_openssl.c
++++ b/src/crypto/tls_openssl.c
+@@ -1071,11 +1071,8 @@ void * tls_init(const struct tls_config
+ 	}
+ 
+ #ifndef OPENSSL_NO_ENGINE
+-	wpa_printf(MSG_DEBUG, "ENGINE: Loading dynamic engine");
+-#if OPENSSL_VERSION_NUMBER < 0x10100000L
+-	ERR_load_ENGINE_strings();
+-	ENGINE_load_dynamic();
+-#endif /* OPENSSL_VERSION_NUMBER */
++	wpa_printf(MSG_DEBUG, "ENGINE: Loading builtin engines");
++	ENGINE_load_builtin_engines();
+ 
+ 	if (conf &&
+ 	    (conf->opensc_engine_path || conf->pkcs11_engine_path ||
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
