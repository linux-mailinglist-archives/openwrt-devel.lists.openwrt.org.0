Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAC7F172C
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 14:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1jz21Y6mEDL0hawM1pQDnb8o3ZIC424WgHo1x0gTRQ=; b=ROCUAob1TB3Ntl
	PP0dVCwr3BM4a6TIe5vUGgw+YCa1Yx74ZwhvzYPNj473qXYi+QoN0L3DxMma/QfaaQIJxAwJLgq2g
	tYTYu4sxmZVT+Sizpit7xiCcd4ykuDj2N9Fat8f79rMov15RukxGz2m2GNhHfks1vz/+vkHq8zOxH
	sP2Zvy/G7a7dywctGI5ksK34m6jPCYqxQwrJsffxL8EMKdqaG8VBcPYGIxuWoTqi5nW3v0zOXljhs
	EmqVGjEMYwaoFgyuKlU7RZx6XjzM7leHIeCb+EMyy/f6M8Pfc23T911yegzUNWKHUWj5hhnNSMJuH
	97HRqkhDbMxcfmS3/ulg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLPy-0007hS-1v; Wed, 06 Nov 2019 13:32:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLOP-0006B1-FC
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 13:30:42 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 718804430;
 Wed,  6 Nov 2019 14:30:35 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3f6cb6e0;
 Wed, 6 Nov 2019 14:30:25 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 14:30:27 +0100
Message-Id: <20191106133028.2350-9-ynezz@true.cz>
In-Reply-To: <20191106133028.2350-1-ynezz@true.cz>
References: <20191106133028.2350-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053037_866140_053320A5 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 19.07 08/12] hostapd: use config option
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Hauke Mehrtens <hauke@hauke-m.de>

Instead of patching the workaround away, just use the config option.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
(cherry picked from commit 9b4a27455c17c00698ce7ce24e0bcad419c6319e)
---
 .../hostapd/files/wpa_supplicant-basic.config        |  2 +-
 .../hostapd/files/wpa_supplicant-full.config         |  2 +-
 .../hostapd/files/wpa_supplicant-mini.config         |  2 +-
 .../services/hostapd/files/wpa_supplicant-p2p.config |  2 +-
 .../120-disable_bridge_packet_workaround.patch       | 12 ------------
 5 files changed, 4 insertions(+), 16 deletions(-)
 delete mode 100644 package/network/services/hostapd/patches/120-disable_bridge_packet_workaround.patch

diff --git a/package/network/services/hostapd/files/wpa_supplicant-basic.config b/package/network/services/hostapd/files/wpa_supplicant-basic.config
index 14f6e80896d7..f2fd20dbd772 100644
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
index 5f48d59eebaa..2e9328234a80 100644
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
index 9b1f03433f9f..a71ac9dfe31f 100644
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
index 03b9a6b65405..0edaf3d083b3 100644
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
index 090aaaa0db5d..000000000000
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

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
