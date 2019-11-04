Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E905EEB22
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 22:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K6/4fdGTzsoi2/v9utiGoSDDkRd+thcc1WM+sz0ej00=; b=oQWtcoFjonZkAu
	4E3LBbbKO7rVvyY3y+SLSyEgPpFDxremBgEgqEOpXwT/99mx/3CiCnTpqClICuQwwuqqZSX0RqF8A
	U+4wAa9c+zo8PPRrGTsaem4cg2z1FB1aJGpHpNSzBVcIke8UOzg+Fo14DwBLP0bFOjuyoJuBMyT2C
	gTx8NZZ9olMwNZ2o6Jh6AGeG9Sh3ZOmbqOQb1oXiooymaGJoP9xzixGo1weSSLuD5JeChgRRTmTL8
	r029cTlpiOZQlAyT56xWfkLOUFFT0D6hnOugaEoUwSicHcRECWUu25AU5c6MBlCeAxeTXOJ7rbmtg
	d4dAwpkPAUVaMd3q/eqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjwu-0005F4-Os; Mon, 04 Nov 2019 21:31:44 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjwl-0005Eb-Rp
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 21:31:37 +0000
X-Originating-IP: 72.234.165.80
Received: from tb.home (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id CD3AE40004;
 Mon,  4 Nov 2019 21:31:26 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 Nov 2019 10:55:23 -1000
Message-Id: <20191104205521.13852-1-mail@aparcar.org>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_133136_037491_7EFE883F 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] build: unify SIGNATURE and make it
 reproducible
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
Cc: yszhou4tech@gmail.com, ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The SIGNATURE variable is a unique ID used as partition identifier for
x86, tegra and mvebu. This patch unifies the generation of SIGNATURE by
creating it once in include/image.mk instead differently for each
target.

Also make it reproducible by using SOURCE_DATE_EPOCH, resulting in equal
SIGNATURE valuess over multiple build with the same commit.

This is another step in the direction of reproducible OpenWrt images.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
I'm currently trying to step up my commit message game, please comment
if the message is unclear or confusing!

 include/image.mk                  | 2 ++
 target/linux/mvebu/image/Makefile | 2 --
 target/linux/tegra/image/Makefile | 2 --
 target/linux/x86/image/Makefile   | 1 -
 4 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/include/image.mk b/include/image.mk
index 940ae812ea..4884ad9fe2 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -45,6 +45,8 @@ IMG_PREFIX:=$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$
 IMG_ROOTFS:=$(IMG_PREFIX)-rootfs
 IMG_COMBINED:=$(IMG_PREFIX)-combined
 
+SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))
+
 MKFS_DEVTABLE_OPT := -D $(INCLUDE_DIR)/device_table.txt
 
 ifneq ($(CONFIG_BIG_ENDIAN),)
diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 967a1e4ee1..1c96a5e175 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -13,8 +13,6 @@ include $(INCLUDE_DIR)/image.mk
 
 KERNEL_LOADADDR := 0x00008000
 
-SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))
-
 define Build/boot-scr
 	rm -f $@-boot.scr
 	sed \
diff --git a/target/linux/tegra/image/Makefile b/target/linux/tegra/image/Makefile
index 2ce8659995..39073a47d2 100644
--- a/target/linux/tegra/image/Makefile
+++ b/target/linux/tegra/image/Makefile
@@ -7,8 +7,6 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
-SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))
-
 define Build/tegra-sdcard
 	rm -fR $@.boot
 	mkdir -p $@.boot
diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index ac70e771c8..73e468d38f 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -40,7 +40,6 @@ ifneq ($(GRUB_TERMINALS),)
   GRUB_TERMINAL_CONFIG := terminal_input $(GRUB_TERMINALS); terminal_output $(GRUB_TERMINALS)
 endif
 
-SIGNATURE:=$(shell perl -e 'printf("%08x", rand(0xFFFFFFFF))')
 ROOTPART:=$(call qstrip,$(CONFIG_TARGET_ROOTFS_PARTNAME))
 ROOTPART:=$(if $(ROOTPART),$(ROOTPART),PARTUUID=$(SIGNATURE)-02)
 
-- 
2.24.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
