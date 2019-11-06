Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F333F1497
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:07:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HWxd92VbVc6RyuYiYhK3xOied7NKPDuJg8oioOPEYM=; b=lPxmGSqnq4c6/v
	1nMvhCJDIODXrYI7p/bVsFCFJWunD19pCy2kI9PiuTw3YGOVWhOD9AkAD3RThPUFvNYH5DYTyb2DF
	zw9cIxq23Uemg3ZjAOEm7tXuAH2aYC70TpoyA06dRWrpk49pMPlmoACfFqNvj3psr4S8wQjmWVOLT
	etYujfsfzBbSnpxuF+Ctd+6JjtJcdydWwTHXFfd51UvmeRMfVkX6F5f2lWYWzy3k/YZA6exmI4NtS
	yasDw9xDbMoFjZy3O4dYw3Zr0BsPPA98nGd0aJlun8UM1wDLdAKkSnRgPmJm11uE0/Wm4O8sMLSJH
	W8oRfjR9RD5YR76uNMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJ9p-0003eP-QR; Wed, 06 Nov 2019 11:07:25 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJ7z-0001SY-2Y
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:05:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id ED1EF6B2C;
 Wed,  6 Nov 2019 12:05:25 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 76e63568;
 Wed, 6 Nov 2019 12:05:16 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 12:05:13 +0100
Message-Id: <20191106110514.20413-9-ynezz@true.cz>
In-Reply-To: <20191106110514.20413-1-ynezz@true.cz>
References: <20191106110514.20413-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_030531_303225_1D8A4392 
X-CRM114-Status: UNSURE (   7.94  )
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
Subject: [OpenWrt-Devel] [PATCH 19.07 08/14] hostapd: mirror ieee80211w ap
 mode defaults in station mode
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

For AP mode, OpenWrt automatically sets ieee80211w to either 1 or 2, depending
on whether the encryption is set to sae-mixed, or sae/owe/eap suite-b.

Mirror the same defaults for client mode connections, in order to allow an
OpenWrt station to associate to an OpenWrt ap with SAE, OWE or Suite-B encryption
without the need to manually specify "option ieee80211w" on the station.

Signed-off-by: Jo-Philipp Wich <jo@mein.io>
(cherry picked from commit abb4f4075e791789fdb00731035e08a8cf51555f)
---
 package/network/services/hostapd/Makefile         | 2 +-
 package/network/services/hostapd/files/hostapd.sh | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index e94d66211d9f..63e7a5dea146 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=hostapd
-PKG_RELEASE:=10
+PKG_RELEASE:=11
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 96cfc13a7db0..fdbce815dff3 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -754,6 +754,15 @@ wpa_supplicant_add_network() {
 		ieee80211w ieee80211r \
 		multi_ap
 
+	case "$auth_type" in
+		sae|owe|eap192|eap-eap192)
+			set_default ieee80211w 2
+		;;
+		psk-sae)
+			set_default ieee80211w 1
+		;;
+	esac
+
 	set_default ieee80211r 0
 	set_default multi_ap 0
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
