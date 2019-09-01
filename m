Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E66DA4BB9
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 22:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vsr8ypZ1FyW3IBl+3xPz64nLcKMLOxkfl3rGncJNIao=; b=ja8nHEub0LI2o1
	7XuIwHNPxQrkLHZVS9ENZ9BYfePVRejan6WBC/5hk/2JwzVKeQ9RiGYiwZ54jOIvbkG+1aX8In9on
	L+g8PvvBfhyjh9qJ6kbHKVCocNUN4+fPwWMHSGnVE+TAqmBNXuhUaIKftAbQhCMGdFJ2ObPo9KXxM
	vbDsiiV/p12s4iWAkqbnkLtvdPC0J/F4GxJVKaYTfDTP9OuWUdnGvnubE6ZIEYfmbBcpxT4pCxi/w
	ybiIO6/zkngr8NHw7JuSVlyS4c8EUZ6HkctJjA1sh6TD1RK9m+fR55bCa4f2bNnCz1Xx6VtiBDe47
	WeO3KTMOzL+02Ed5QUMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4WEs-00029S-R2; Sun, 01 Sep 2019 20:14:18 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WEj-00028Z-LY
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 20:14:11 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 669BAA1539;
 Sun,  1 Sep 2019 22:14:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id savzCgT7nP8V; Sun,  1 Sep 2019 22:14:01 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Sep 2019 22:13:43 +0200
Message-Id: <20190901201343.15960-2-hauke@hauke-m.de>
In-Reply-To: <20190901201343.15960-1-hauke@hauke-m.de>
References: <20190901201343.15960-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_131409_852724_9D53FD2A 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] uboot-envtools: Update to U-Boot
 version 2019.07
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/boot/uboot-envtools/Makefile                  | 8 ++++----
 package/boot/uboot-envtools/patches/001-compile.patch | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/package/boot/uboot-envtools/Makefile b/package/boot/uboot-envtools/Makefile
index 71b842b96e..4be043dcab 100644
--- a/package/boot/uboot-envtools/Makefile
+++ b/package/boot/uboot-envtools/Makefile
@@ -9,16 +9,16 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=uboot-envtools
 PKG_DISTNAME:=u-boot
-PKG_VERSION:=2018.03
-PKG_RELEASE:=3
+PKG_VERSION:=2019.07
+PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_SUBDIR:=$(PKG_DISTNAME)-$(PKG_VERSION)
 PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_DISTNAME)-$(PKG_VERSION)
 PKG_SOURCE_URL:=https://git.denx.de/u-boot.git
-PKG_SOURCE_VERSION:=f95ab1fb6e37f0601f397091bb011edf7a98b890
-PKG_MIRROR_HASH:=b50d8b6fe0d90b92c8c147457b1b4c2ed1cdb03191085cfc57fdad77c0bfffab
+PKG_SOURCE_VERSION:=e5aee22e4be75e75a854ab64503fc80598bc2004
+PKG_MIRROR_HASH:=58c1ecaf901b6bf65c5e872b5449b642694ae5acebf61f91f0d4bc20b4c654b7
 
 PKG_BUILD_DEPENDS:=fstools
 
diff --git a/package/boot/uboot-envtools/patches/001-compile.patch b/package/boot/uboot-envtools/patches/001-compile.patch
index f7ec9130d6..34072f309d 100644
--- a/package/boot/uboot-envtools/patches/001-compile.patch
+++ b/package/boot/uboot-envtools/patches/001-compile.patch
@@ -1,6 +1,6 @@
 --- a/tools/env/Makefile
 +++ b/tools/env/Makefile
-@@ -10,6 +10,10 @@
+@@ -8,6 +8,10 @@
  # with "CC" here for the maximum code reuse of scripts/Makefile.host.
  override HOSTCC = $(CC)
  
@@ -9,5 +9,5 @@
 +endif
 +
  # Compile for a hosted environment on the target
- HOST_EXTRACFLAGS  = $(patsubst -I%,-idirafter%, $(filter -I%, $(UBOOTINCLUDE))) \
- 		-idirafter $(srctree)/tools/env \
+ HOST_EXTRACFLAGS  = -I$(srctree)/tools \
+ 		$(patsubst -I%,-idirafter%, $(filter -I%, $(UBOOTINCLUDE))) \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
