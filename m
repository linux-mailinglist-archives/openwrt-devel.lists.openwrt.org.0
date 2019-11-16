Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66835FF57C
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MruEMcRYsQ8KZ+FJWHw5Iox+12391XfV+eZnl6G4Zs=; b=i7AFW76Oru3grb
	9cCrXV9aLU71n+7wjCKg5kEbaQmJcYiEgk9OBkd0pQXk2o1GMPA/qmcyJJzkTe6JNqaQ41sMgW0Eo
	fsALpc+FaGsUfUQL+f5kXVFEpmWPxnoRDYoGEGGCEnpj9U4OXEP/jHWKLlQmC37mJf0d7OvpcLt9x
	4lvWgVWrOFjNGwHuOffqNoy5JnnBrFypifVlMmmQVWxKAEDmt/LQalS/z/5ZJ31oM6z32AMB+kRIo
	I1w/kTyOSJUIRnhgb8SENCryXMXmDJVcZ2SzTB1oWWZJ+nMOHF9mgWqczNoJvW9BuHBEaxBnigfFo
	ZBhO+L4hWqWZEux+UAaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4eg-0008R4-5y; Sat, 16 Nov 2019 20:26:50 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4c1-0003m5-9n
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:24:07 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 6A98C57BF5; Sat, 16 Nov 2019 21:23:51 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 3415457BF1
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:51 +0100 (CET)
Received: (qmail 21433 invoked from network); 16 Nov 2019 21:23:51 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:51 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:44 +0100
Message-Id: <20191116202346.31885-16-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122405_511181_17F72EA5 
X-CRM114-Status: UNSURE (   6.59  )
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
Subject: [OpenWrt-Devel] [PATCH 15/17] ramips: disable A5-V11 by default
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

Disable the A5-V11 image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/72
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ramips/image/rt305x.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index de3d788563..cb2fe628bc 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -69,6 +69,7 @@ define Device/a5-v11
 	$$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | poray-header -B A5-V11 -F 4M
   DEVICE_TITLE := A5-V11
   DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
+  DEFAULT := n
 endef
 TARGET_DEVICES += a5-v11
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
