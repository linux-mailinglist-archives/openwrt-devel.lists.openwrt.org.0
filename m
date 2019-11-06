Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BA9F1723
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 14:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKquu2vjorAV7INs7SMe091bftQNEBb0d4Qwti8kFfE=; b=buYCAapdq5TCNe
	4Hfna+0qXfW97jFvA9H/Ynb52vK0WBmw1rLDBGI51iJmui6QyZrpQgTxB/R1TY0l3C8j9OmgoQxZu
	nfdU0Dcmzfz/gVxGWB6G0G1oLO3r8zuSuqhhpv1/oYNAUC37ilAZFdU253wy0SQPjnjJvrnflweoC
	5JFE7dVa3RY/ArKrZG0sk7XDo/bz3/21DtJNFVwOZwNUoAkRCCemqvtcJrgdJtcfFkvuQOvQusb2P
	hoXlUnGvjaeo1nAOWgeUdaPG/kn5nrGqvtq88TXxp5emIXWgBGbgbNlzMQRdpNdoP1T1OuRiaKZtj
	z1g+Xpz+A5JrRpiZKE3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLP3-0006el-5m; Wed, 06 Nov 2019 13:31:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLOM-00069D-DX
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 13:30:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4A19A442C;
 Wed,  6 Nov 2019 14:30:32 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 57325727;
 Wed, 6 Nov 2019 14:30:22 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 14:30:23 +0100
Message-Id: <20191106133028.2350-5-ynezz@true.cz>
In-Reply-To: <20191106133028.2350-1-ynezz@true.cz>
References: <20191106133028.2350-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053034_645135_4B2A5A64 
X-CRM114-Status: UNSURE (   7.13  )
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
Subject: [OpenWrt-Devel] [PATCH v2 19.07 04/12] hostapd: fix OWE settings in
 client mode
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
Cc: Jo-Philipp Wich <jo@mein.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jo-Philipp Wich <jo@mein.io>

This changes fixes the generation of the wpa_supplicant client configuration
in WPA3 OWE client mode. Instead of incorrectly emitting key_mgmt=NONE, use
the proper key_mgmt=OWE setting instead.

Signed-off-by: Jo-Philipp Wich <jo@mein.io>
(cherry picked from commit 4209b28d23b8bf28575af5e8904194f49b81532e)
---
 package/network/services/hostapd/Makefile         | 2 +-
 package/network/services/hostapd/files/hostapd.sh | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 233ef389ae50..e94d66211d9f 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=hostapd
-PKG_RELEASE:=9
+PKG_RELEASE:=10
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 78fb736dd78c..96cfc13a7db0 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -795,6 +795,7 @@ wpa_supplicant_add_network() {
 		none) ;;
 		owe)
 			hostapd_append_wpa_key_mgmt
+			key_mgmt="$wpa_key_mgmt"
 		;;
 		wep)
 			local wep_keyidx=0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
