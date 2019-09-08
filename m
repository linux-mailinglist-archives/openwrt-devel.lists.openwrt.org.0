Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF84ACF6E
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 17:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPETnS9Xw9LYNSgnhovP6O6OmdZp4uB0d79TZmhoZDI=; b=rPWPEm6AXK9gUF
	jcYnJIWUxlMqABqsfXePN/tNfz0QVZDOhIgstfiM4/ikQpjoMptwtGC4kExh54I9aIznMkJdOcNIg
	1XZpiiES/uk1YWtCOSIceRgrnIL5iZX01ndQv2OiTwcUl6r+0UgoiaxSuPyMFnrPGvrCfkN/xRZIo
	TEeJgHoPXAop7COM3GV3vez2DwLlECeNsyW7eWll0cNdIrBNIMY80yV4FuBT77GPYm7WxMvhwK3cP
	quY04W0GOw8gsFSqCXHLb22y+QhjOdtjU8OTEJCVkP5WtinKQAcV8c0zWYTgi6PHLAt/x2Yo/eDr5
	UZHWEXbs9vlCVtJfehYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6yzw-00035f-8N; Sun, 08 Sep 2019 15:21:04 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6yzI-0002di-CY
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 15:20:26 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 2A94FA10CC;
 Sun,  8 Sep 2019 17:20:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id zpxKGXbpeSlN; Sun,  8 Sep 2019 17:20:20 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 17:20:07 +0200
Message-Id: <20190908152007.24810-8-hauke@hauke-m.de>
In-Reply-To: <20190908152007.24810-1-hauke@hauke-m.de>
References: <20190908152007.24810-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_082024_595636_95098DDC 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 7/7] hostapd: Add mesh support for wpad full
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

This increases the size of the binary slightly:

old:
427722 wpad-wolfssl_2019-08-08-ca8c2bd2-1_mipsel_24kc.ipk
431696 wpad-openssl_2019-08-08-ca8c2bd2-1_mipsel_24kc.ipk

new:
442109 wpad-wolfssl_2019-08-08-ca8c2bd2-1_mipsel_24kc.ipk
445997 wpad-openssl_2019-08-08-ca8c2bd2-1_mipsel_24kc.ipk

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/hostapd/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index a723af2c5f..4f6420f503 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -95,11 +95,11 @@ endif
 
 ifeq ($(LOCAL_VARIANT),full)
   ifeq ($(SSL_VARIANT),openssl)
-    DRIVER_MAKEOPTS += CONFIG_TLS=openssl CONFIG_SAE=y CONFIG_OWE=y CONFIG_SUITEB192=y
+    DRIVER_MAKEOPTS += CONFIG_TLS=openssl CONFIG_SAE=y CONFIG_OWE=y CONFIG_SUITEB192=y CONFIG_AP=y CONFIG_MESH=y
     TARGET_LDFLAGS += -lcrypto -lssl
   endif
   ifeq ($(SSL_VARIANT),wolfssl)
-    DRIVER_MAKEOPTS += CONFIG_TLS=wolfssl CONFIG_WPS_NFC=1 CONFIG_SAE=y CONFIG_OWE=y CONFIG_SUITEB192=y
+    DRIVER_MAKEOPTS += CONFIG_TLS=wolfssl CONFIG_WPS_NFC=1 CONFIG_SAE=y CONFIG_OWE=y CONFIG_SUITEB192=y CONFIG_AP=y CONFIG_MESH=y
     TARGET_LDFLAGS += -lwolfssl
   endif
 endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
