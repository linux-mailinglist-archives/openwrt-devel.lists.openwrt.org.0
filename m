Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E8D106960
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:58:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byZWD/AHKnugdTyxe8ILUiXtPxKIglHu9f8dtHZFsAM=; b=K+DZs4SlsirSVG
	40cKSSvr4yythqotysTQt3pbKbio89+NWVow/nS8OpNGXz12PsO0Jfp218eB9evd1yzTvlUImRMUp
	jdXl77NWNVkO2HtrzrE3Xfw8W7IW/R6uQIEEF+SUfw6IbNyZNdeGPWDU8TeZG7IjiY91z8076ZdyC
	Kwf+3/oEsnSl4FXbjTp7EEEHMOQOkRU1TWlcMb2aG6H+xAPrndmd5FF8GqnBpm3X/ChIzlrPzBN8C
	SeXDxJLk4kWht99ytN8+pDg2JZFr8ffMVrQZZsAH+mGmvjzPou6NWlI7MXmtnTs2M0d1uMV0NfU9m
	OuzfztXYelng4aXW8+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5hY-0000b9-GR; Fri, 22 Nov 2019 09:58:08 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fR-0006ft-Aa
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:01 +0000
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6FAD0100005;
 Fri, 22 Nov 2019 09:55:46 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:35 +0100
Message-Id: <20191122095541.688125-2-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015557_539494_250E99E0 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/7] package/utils/busybox: add optional
 selinux support
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 package/utils/busybox/Makefile | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile
index c0f3007e5d..bad4598525 100644
--- a/package/utils/busybox/Makefile
+++ b/package/utils/busybox/Makefile
@@ -17,7 +17,7 @@ PKG_SOURCE_URL:=https://www.busybox.net/downloads \
 		http://sources.buildroot.net
 PKG_HASH:=d0f940a72f648943c1f2211e0e3117387c31d765137d92bd8284a3fb9752a998
 
-PKG_BUILD_DEPENDS:=BUSYBOX_CONFIG_PAM:libpam
+PKG_BUILD_DEPENDS:=BUSYBOX_CONFIG_PAM:libpam BUSYBOX_CONFIG_SELINUX:libselinux
 PKG_BUILD_PARALLEL:=1
 PKG_CHECK_FORMAT_SECURITY:=0
 
@@ -45,7 +45,7 @@ define Package/busybox
   MAINTAINER:=Felix Fietkau <nbd@nbd.name>
   TITLE:=Core utilities for embedded Linux
   URL:=http://busybox.net/
-  DEPENDS:=+BUSYBOX_CONFIG_PAM:libpam +BUSYBOX_CONFIG_NTPD:jsonfilter
+  DEPENDS:=+BUSYBOX_CONFIG_PAM:libpam +BUSYBOX_CONFIG_NTPD:jsonfilter +BUSYBOX_CONFIG_SELINUX:libselinux
   MENU:=1
 endef
 
@@ -76,6 +76,9 @@ LDLIBS += $(call BUSYBOX_IF_ENABLED,PAM,pam pam_misc pthread)
 ifeq ($(CONFIG_USE_GLIBC),y)
   LDLIBS += $(call BUSYBOX_IF_ENABLED,NSLOOKUP_OPENWRT,resolv)
 endif
+ifeq ($(CONFIG_BUSYBOX_CONFIG_SELINUX),y)
+  LDLIBS += selinux sepol
+endif
 
 TARGET_CFLAGS += -flto
 TARGET_LDFLAGS += -flto=jobserver -fuse-linker-plugin
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
