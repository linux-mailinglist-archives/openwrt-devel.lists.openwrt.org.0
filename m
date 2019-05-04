Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DBB13ADA
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 17:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtXuzlTmcDif6uqCXD9eqlrAsg77Hp1KhuSUSLrodpQ=; b=SLQa4YmzyQkSh6
	KZVva1xGOYF/LcKqN9sHMxz8PZdDDpz3Sen3ykvOTMCM2x0JmnETuXj1ZcsbdgFp+jMHmEeEEfBdC
	fG7Wz0tP6aNWRF+qRtq2205ZFMicIyOX7Nte1f2vN3l4pXlS4wCjkNevt4TyvoSt9neE5b4hA2Y2b
	bPgZHJJlitGZ9fnvI8wFAWgpu4wDesYE9GNft4lKasGux8d/3SI846RhwHuBjqeYF9yYTeRK3LmFl
	UQL9AhTJXHp+jMNeqSH/mhECJAXd8sCEa9snxeIP7mNqt99tBXplv16e9SlxeTjvY/jDZM+Hsr0IW
	GMGouJWBPFwQGpaIYZVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMwP5-0005pm-Ly; Sat, 04 May 2019 15:16:43 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMwOo-0005gr-Oi
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 15:16:28 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 7990B4C839;
 Sat,  4 May 2019 17:16:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id 0GhkZT0qS4Zn; Sat,  4 May 2019 17:16:14 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 May 2019 17:15:58 +0200
Message-Id: <20190504151602.7194-2-hauke@hauke-m.de>
In-Reply-To: <20190504151602.7194-1-hauke@hauke-m.de>
References: <20190504151602.7194-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_081627_123842_FDF16E2E 
X-CRM114-Status: GOOD (  24.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/6] hostapd: backport some Fixes from
 upstream hostapd
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
