Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668AFFF56D
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDD8jxQlK8QckJ0XBXBs5UCU9gMFyQCya4l0FCWFICY=; b=AjIoGfu9ByXjoP
	QaxeqxK19L953UHJkJZC4+QgXsZzefwcdbaQ23VaIZDj9KvZFd+mbaEkNwxnrdn/4FwSxMsrH+7EA
	HT0Vuns4ROnpRHCQElrZHfDufHdN24LlfU+MafH/vUKksLIqCmC1lr/fKxoUO4DY1QGSVE29JhF4B
	CxRBknqVTUMfppwCq6rjulr54mj433YG/wOCVpodDUIeHqEJryQTAVomWFCjSuhwWkelhnPM4qYrF
	VHrxAroKdhb8mTWk1pS1A7m2JQiWwDE1ZHOBbFEdLW2OPX1eHTJI4e0vl731pQeLQ6f2dkl5uVeWU
	SnmEvvP5cAMTeRSZHCmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4c3-0003dw-Hw; Sat, 16 Nov 2019 20:24:07 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bn-0003cH-Sg
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:23:55 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 73E6C57BCF; Sat, 16 Nov 2019 21:23:48 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 224EF57BCA
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:48 +0100 (CET)
Received: (qmail 21274 invoked from network); 16 Nov 2019 21:23:48 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:48 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:31 +0100
Message-Id: <20191116202346.31885-3-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122352_092666_A82C9FCA 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 02/17] ar71xx: disable Netgear WNR612 v2 by
 default
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Disable the Netgear WNR612 v2 image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/4
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ar71xx/image/tiny-legacy-devices.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ar71xx/image/tiny-legacy-devices.mk b/target/linux/ar71xx/image/tiny-legacy-devices.mk
index bcf77de443..98d45557a6 100644
--- a/target/linux/ar71xx/image/tiny-legacy-devices.mk
+++ b/target/linux/ar71xx/image/tiny-legacy-devices.mk
@@ -110,6 +110,7 @@ LEGACY_DEVICES += WNR2000V4
 
 define LegacyDevice/REALWNR612V2
   DEVICE_TITLE := NETGEAR WNR612V2
+  DEFAULT := n
 endef
 LEGACY_DEVICES += REALWNR612V2
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
