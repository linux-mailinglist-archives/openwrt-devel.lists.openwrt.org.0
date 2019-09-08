Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F537ACF70
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 17:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Muq3emJAl2Qnxeio2XO2p7KDMkVklzgk/Infhb8KQsc=; b=L9SYihdxl2r4z/
	kpixPTChf8vn90QFwRN8ydOvabPa+3qjhrpoz0iseUHIu/sxpXDXZ/y9xdMq+q+vdWAVwbYHAqh78
	xYiGtW7eBINTXjb7e24HPIsEYcHeunUNu8IqGiHsvbvpyPiRxZYzeZQ/WO8ghp8dxQj4oFXw0QqVU
	wvGkJmV/9YUnp4n9VCzyNMD1Hp6V7/AAA/8sCm5FcNduuI45KZLyyQpFjKFKl/J90anmkSRlwQ8xx
	SRhyuO7JnuceG4+qyPduj7nYXrZewltiXj7M5sHWsGBLX9PuQcM97TrR+YbupGqFPjO670FxpUQdh
	BIVKVpZQfmmcBFIX3bIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6z0K-0003db-O2; Sun, 08 Sep 2019 15:21:28 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6yzI-0002dx-Po
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 15:20:27 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id B0F91A1166;
 Sun,  8 Sep 2019 17:20:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id JCl1u_XqNQg7; Sun,  8 Sep 2019 17:20:19 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 17:20:06 +0200
Message-Id: <20190908152007.24810-7-hauke@hauke-m.de>
In-Reply-To: <20190908152007.24810-1-hauke@hauke-m.de>
References: <20190908152007.24810-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_082026_085691_B73F580C 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 6/7] hostapd: use getrandom syscall
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

hostapd will not use the getrandom() syscall and as a fallback use
/dev/random, the syscall is supported since Linux 3.17 and in the musl,
glibc and uclibc version used by OpenWrt.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/hostapd/files/hostapd-basic.config     | 2 +-
 package/network/services/hostapd/files/hostapd-full.config      | 2 +-
 package/network/services/hostapd/files/hostapd-mini.config      | 2 +-
 .../network/services/hostapd/files/wpa_supplicant-basic.config  | 2 +-
 .../network/services/hostapd/files/wpa_supplicant-full.config   | 2 +-
 .../network/services/hostapd/files/wpa_supplicant-mini.config   | 2 +-
 .../network/services/hostapd/files/wpa_supplicant-p2p.config    | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/package/network/services/hostapd/files/hostapd-basic.config b/package/network/services/hostapd/files/hostapd-basic.config
index 3773d08ac3..461b178433 100644
--- a/package/network/services/hostapd/files/hostapd-basic.config
+++ b/package/network/services/hostapd/files/hostapd-basic.config
@@ -262,7 +262,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # Should we use poll instead of select? Select is used by default.
 #CONFIG_ELOOP_POLL=y
diff --git a/package/network/services/hostapd/files/hostapd-full.config b/package/network/services/hostapd/files/hostapd-full.config
index 3099f8c2e9..5c9fbed2e4 100644
--- a/package/network/services/hostapd/files/hostapd-full.config
+++ b/package/network/services/hostapd/files/hostapd-full.config
@@ -262,7 +262,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # Should we use poll instead of select? Select is used by default.
 #CONFIG_ELOOP_POLL=y
diff --git a/package/network/services/hostapd/files/hostapd-mini.config b/package/network/services/hostapd/files/hostapd-mini.config
index 362bb22a05..f31e6467b0 100644
--- a/package/network/services/hostapd/files/hostapd-mini.config
+++ b/package/network/services/hostapd/files/hostapd-mini.config
@@ -262,7 +262,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # Should we use poll instead of select? Select is used by default.
 #CONFIG_ELOOP_POLL=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-basic.config b/package/network/services/hostapd/files/wpa_supplicant-basic.config
index f2fd20dbd7..e2bd1866c4 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-basic.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-basic.config
@@ -473,7 +473,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # IEEE 802.11n (High Throughput) support (mainly for AP mode)
 #CONFIG_IEEE80211N=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-full.config b/package/network/services/hostapd/files/wpa_supplicant-full.config
index 2e9328234a..e5a6752a8e 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-full.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-full.config
@@ -473,7 +473,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # IEEE 802.11n (High Throughput) support (mainly for AP mode)
 #CONFIG_IEEE80211N=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-mini.config b/package/network/services/hostapd/files/wpa_supplicant-mini.config
index a71ac9dfe3..6af4693c53 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-mini.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-mini.config
@@ -473,7 +473,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # IEEE 802.11n (High Throughput) support (mainly for AP mode)
 #CONFIG_IEEE80211N=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-p2p.config b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
index 0edaf3d083..b0ca395a5e 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-p2p.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
@@ -473,7 +473,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # IEEE 802.11n (High Throughput) support (mainly for AP mode)
 #CONFIG_IEEE80211N=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
