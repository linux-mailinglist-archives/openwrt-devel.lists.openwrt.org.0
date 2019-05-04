Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C78213AE0
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 17:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBY7W/3tD73tMS4Y1kGv1wvont1+/q+2w0hAhvsyFkA=; b=Q2S4oGVQmqY7Wl
	IkgYcBVdrhv5UvWz0V0E9Ssalkr1Bj+bVdDZ4YgxKiPw7N6hVOEVM9xcHfCBKCw9kzh7JwpZZx+mA
	BhSla/ra0s1XbhPsM89eMDkfHsyo2mX55vBsI66v2m80SZGysSZjbpc2laqPBJ9WsjIaY5A0V6Tvl
	TDDfERIKdSafX63tMXx/kMJocl6uZGdC/3yrS56QTe9ZQg2ayChkiR6VNAE+xhX00ZpwvO1x/RjCd
	pGZNu9NJdHSBn/GbLgyxfpFQBPV1FVOQoLH9u2VoEiGrXaf0FuPMxxk7WGM+/PWD39LVHnPM4DNr1
	Ilo+Cr/Tq20ndNeoCijw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMwPc-0006gi-VE; Sat, 04 May 2019 15:17:16 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMwOx-0005lO-0Y
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 15:16:40 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 46CBAA01E1;
 Sat,  4 May 2019 17:16:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id uaTPpqAmkZyH; Sat,  4 May 2019 17:16:14 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 May 2019 17:15:59 +0200
Message-Id: <20190504151602.7194-3-hauke@hauke-m.de>
In-Reply-To: <20190504151602.7194-1-hauke@hauke-m.de>
References: <20190504151602.7194-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_081635_918293_F81F6FC3 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 3/6] hostapd: use config option
 CONFIG_NO_LINUX_PACKET_SOCKET_WAR
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

Instead of patching the workaround away, just use the config option.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../hostapd/files/wpa_supplicant-basic.config        |  2 +-
 .../hostapd/files/wpa_supplicant-full.config         |  2 +-
 .../hostapd/files/wpa_supplicant-mini.config         |  2 +-
 .../services/hostapd/files/wpa_supplicant-p2p.config |  2 +-
 .../120-disable_bridge_packet_workaround.patch       | 12 ------------
 5 files changed, 4 insertions(+), 16 deletions(-)
 delete mode 100644 package/network/services/hostapd/patches/120-disable_bridge_packet_workaround.patch

diff --git a/package/network/services/hostapd/files/wpa_supplicant-basic.config b/package/network/services/hostapd/files/wpa_supplicant-basic.config
index c93cf783a3..e88d6c4935 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-basic.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-basic.config
@@ -295,7 +295,7 @@ CONFIG_BACKEND=file
 # in a bridge for EAPOL frames. This should be uncommented only if the kernel
 # is known to not have the regression issue in packet socket behavior with
 # bridge interfaces (commit 'bridge: respect RFC2863 operational state')').
-#CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
+CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
 
 # IEEE 802.11w (management frame protection), also known as PMF
 # Driver support is also needed for IEEE 802.11w.
diff --git a/package/network/services/hostapd/files/wpa_supplicant-full.config b/package/network/services/hostapd/files/wpa_supplicant-full.config
index 10b4d15ea2..61164bfe9a 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-full.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-full.config
@@ -295,7 +295,7 @@ CONFIG_BACKEND=file
 # in a bridge for EAPOL frames. This should be uncommented only if the kernel
 # is known to not have the regression issue in packet socket behavior with
 # bridge interfaces (commit 'bridge: respect RFC2863 operational state')').
-#CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
+CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
 
 # IEEE 802.11w (management frame protection), also known as PMF
 # Driver support is also needed for IEEE 802.11w.
diff --git a/package/network/services/hostapd/files/wpa_supplicant-mini.config b/package/network/services/hostapd/files/wpa_supplicant-mini.config
index 9ffcf7e2e4..fb7d42b940 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-mini.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-mini.config
@@ -295,7 +295,7 @@ CONFIG_BACKEND=file
 # in a bridge for EAPOL frames. This should be uncommented only if the kernel
 # is known to not have the regression issue in packet socket behavior with
 # bridge interfaces (commit 'bridge: respect RFC2863 operational state')').
-#CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
+CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
 
 # IEEE 802.11w (management frame protection), also known as PMF
 # Driver support is also needed for IEEE 802.11w.
diff --git a/package/network/services/hostapd/files/wpa_supplicant-p2p.config b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
index e2eb57bb38..1786d1ac64 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-p2p.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
@@ -295,7 +295,7 @@ CONFIG_BACKEND=file
 # in a bridge for EAPOL frames. This should be uncommented only if the kernel
 # is known to not have the regression issue in packet socket behavior with
 # bridge interfaces (commit 'bridge: respect RFC2863 operational state')').
-#CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
+CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
 
 # IEEE 802.11w (management frame protection), also known as PMF
 # Driver support is also needed for IEEE 802.11w.
diff --git a/package/network/services/hostapd/patches/120-disable_bridge_packet_workaround.patch b/package/network/services/hostapd/patches/120-disable_bridge_packet_workaround.patch
deleted file mode 100644
index 090aaaa0db..0000000000
--- a/package/network/services/hostapd/patches/120-disable_bridge_packet_workaround.patch
+++ /dev/null
@@ -1,12 +0,0 @@
---- a/src/l2_packet/l2_packet_linux.c
-+++ b/src/l2_packet/l2_packet_linux.c
-@@ -360,8 +360,7 @@ struct l2_packet_data * l2_packet_init_b
- 
- 	l2 = l2_packet_init(br_ifname, own_addr, protocol, rx_callback,
- 			    rx_callback_ctx, l2_hdr);
--	if (!l2)
--		return NULL;
-+	return l2;
- 
- #ifndef CONFIG_NO_LINUX_PACKET_SOCKET_WAR
- 	/*
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
