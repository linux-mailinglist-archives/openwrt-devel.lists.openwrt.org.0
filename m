Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0023E13ADE
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 17:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8itMHtf9nuwpD10n6XbJLsuIsewVvebHQpc3cbDTKg=; b=m1bwhY7ue7zRB4
	Q5SyR5IBu6bTwqMzgWog0iWrWwKP1innZZ0hJBmo2p1BpzwY8GXIeUUSIyDXBX4iHC5itEehE0qYw
	7TqpwGLEbwoilP47xz59uEdl9vnPQF9NUD2wwFfHWZDcnmYH3/Y+Hdgi2JXj8FYzozo9ESx4P9fV4
	HrSSmiyG3I0JfGshKtSGC4/Csoo1DIdYzgGeJgGnZvCnOH5tsxH+FZiFkSumeQ2EXYyvJDfuCIUfa
	v6amJ1rHHszMSblgJKHdNOpOe554eJ+AbqhtC+fDrFthEsGMt2fSMkB/rZyF4WiTWj0G1HO3eN4p+
	1PXoqhx3AsQGnrA9a+Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMwPR-0006Ol-Bu; Sat, 04 May 2019 15:17:05 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMwOq-0005hi-A2
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 15:16:30 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 1BA4DA012A;
 Sat,  4 May 2019 17:16:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id EQ5wadOxOJEf; Sat,  4 May 2019 17:16:15 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 May 2019 17:16:01 +0200
Message-Id: <20190504151602.7194-5-hauke@hauke-m.de>
In-Reply-To: <20190504151602.7194-1-hauke@hauke-m.de>
References: <20190504151602.7194-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_081628_686213_1FF614D9 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 5/6] hostapd: use getrandom syscall
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
index 9bf3928b0d..da39ba4dd5 100644
--- a/package/network/services/hostapd/files/hostapd-basic.config
+++ b/package/network/services/hostapd/files/hostapd-basic.config
@@ -255,7 +255,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # Should we use poll instead of select? Select is used by default.
 #CONFIG_ELOOP_POLL=y
diff --git a/package/network/services/hostapd/files/hostapd-full.config b/package/network/services/hostapd/files/hostapd-full.config
index f2e220004f..2a69c777d8 100644
--- a/package/network/services/hostapd/files/hostapd-full.config
+++ b/package/network/services/hostapd/files/hostapd-full.config
@@ -255,7 +255,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # Should we use poll instead of select? Select is used by default.
 #CONFIG_ELOOP_POLL=y
diff --git a/package/network/services/hostapd/files/hostapd-mini.config b/package/network/services/hostapd/files/hostapd-mini.config
index b8dd53d52b..fdd77cea10 100644
--- a/package/network/services/hostapd/files/hostapd-mini.config
+++ b/package/network/services/hostapd/files/hostapd-mini.config
@@ -255,7 +255,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # Should we use poll instead of select? Select is used by default.
 #CONFIG_ELOOP_POLL=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-basic.config b/package/network/services/hostapd/files/wpa_supplicant-basic.config
index e88d6c4935..414f5c07ca 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-basic.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-basic.config
@@ -460,7 +460,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # IEEE 802.11n (High Throughput) support (mainly for AP mode)
 #CONFIG_IEEE80211N=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-full.config b/package/network/services/hostapd/files/wpa_supplicant-full.config
index 61164bfe9a..f4cc241ab5 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-full.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-full.config
@@ -460,7 +460,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # IEEE 802.11n (High Throughput) support (mainly for AP mode)
 #CONFIG_IEEE80211N=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-mini.config b/package/network/services/hostapd/files/wpa_supplicant-mini.config
index fb7d42b940..fb8e49e75f 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-mini.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-mini.config
@@ -460,7 +460,7 @@ CONFIG_NO_RANDOM_POOL=y
 # Should we attempt to use the getrandom(2) call that provides more reliable
 # yet secure randomness source than /dev/random on Linux 3.17 and newer.
 # Requires glibc 2.25 to build, falls back to /dev/random if unavailable.
-#CONFIG_GETRANDOM=y
+CONFIG_GETRANDOM=y
 
 # IEEE 802.11n (High Throughput) support (mainly for AP mode)
 #CONFIG_IEEE80211N=y
diff --git a/package/network/services/hostapd/files/wpa_supplicant-p2p.config b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
index 1786d1ac64..012d82f9a3 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-p2p.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
@@ -460,7 +460,7 @@ CONFIG_NO_RANDOM_POOL=y
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
