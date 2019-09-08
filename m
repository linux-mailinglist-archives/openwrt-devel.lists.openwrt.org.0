Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B172ACF6D
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 17:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSNr270ROq/GMsey9OmPWW/YyXeSNBoUqIz+kdcO7UE=; b=es0ySwF/kshhkG
	xI/LZNiX7dhcpvQpHGC3KKS49TaW6pzKVnydLDQqZ2hGyL8s4p1qcsC+eBESCkhAubl7hix9fjqRe
	DQJ7+5vAFuKCdYWqfzm7P8L7LS+K4NoQ9adIpthbYVa2wbNFg+rqyKKLDwlVbjO2m0fsoye0st1jz
	HjHZVVSIbRoqb3xPN7xoBPrYldP6Cukiv0RsoG+rk4Xaoy1pCG3nrnOVExUKRL9xuU3lAQ3DTjSa0
	A88Qx8FKwMG1fPwcIKuN7xpSSOpwRVOt/0WWaUzAMOnhoin+4h1EDQvluxPF+7b/qsLc96h5L+KKj
	rX/NBJjRZARrHm5N3UpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6yzo-0002sc-4h; Sun, 08 Sep 2019 15:20:56 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6yzH-0002de-21
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 15:20:24 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id B749BA0D0E;
 Sun,  8 Sep 2019 17:20:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id wf3ZriTSmhJk; Sun,  8 Sep 2019 17:20:18 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 17:20:04 +0200
Message-Id: <20190908152007.24810-5-hauke@hauke-m.de>
In-Reply-To: <20190908152007.24810-1-hauke@hauke-m.de>
References: <20190908152007.24810-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_082023_565741_474D297A 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/7] hostapd: use config option
 CONFIG_NO_LINUX_PACKET_SOCKET_WAR
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
index 14f6e80896..f2fd20dbd7 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-basic.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-basic.config
@@ -308,7 +308,7 @@ CONFIG_BACKEND=file
 # in a bridge for EAPOL frames. This should be uncommented only if the kernel
 # is known to not have the regression issue in packet socket behavior with
 # bridge interfaces (commit 'bridge: respect RFC2863 operational state')').
-#CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
+CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
 
 # IEEE 802.11w (management frame protection), also known as PMF
 # Driver support is also needed for IEEE 802.11w.
diff --git a/package/network/services/hostapd/files/wpa_supplicant-full.config b/package/network/services/hostapd/files/wpa_supplicant-full.config
index 5f48d59eeb..2e9328234a 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-full.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-full.config
@@ -308,7 +308,7 @@ CONFIG_BACKEND=file
 # in a bridge for EAPOL frames. This should be uncommented only if the kernel
 # is known to not have the regression issue in packet socket behavior with
 # bridge interfaces (commit 'bridge: respect RFC2863 operational state')').
-#CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
+CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
 
 # IEEE 802.11w (management frame protection), also known as PMF
 # Driver support is also needed for IEEE 802.11w.
diff --git a/package/network/services/hostapd/files/wpa_supplicant-mini.config b/package/network/services/hostapd/files/wpa_supplicant-mini.config
index 9b1f03433f..a71ac9dfe3 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-mini.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-mini.config
@@ -308,7 +308,7 @@ CONFIG_BACKEND=file
 # in a bridge for EAPOL frames. This should be uncommented only if the kernel
 # is known to not have the regression issue in packet socket behavior with
 # bridge interfaces (commit 'bridge: respect RFC2863 operational state')').
-#CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
+CONFIG_NO_LINUX_PACKET_SOCKET_WAR=y
 
 # IEEE 802.11w (management frame protection), also known as PMF
 # Driver support is also needed for IEEE 802.11w.
diff --git a/package/network/services/hostapd/files/wpa_supplicant-p2p.config b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
index 03b9a6b654..0edaf3d083 100644
--- a/package/network/services/hostapd/files/wpa_supplicant-p2p.config
+++ b/package/network/services/hostapd/files/wpa_supplicant-p2p.config
@@ -308,7 +308,7 @@ CONFIG_BACKEND=file
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
