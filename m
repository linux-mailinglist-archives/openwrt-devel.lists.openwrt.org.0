Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B036C055
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 19:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sdyLhma58x2E9wnOjSSJhD8FPKaeUQr/tWtfyZ/aX8=; b=tRPSjRkqqHKptp
	6Xl+OoJRnm7m1u1KrOmJ69HSp0eaGElYMSVO8FRqzlDdEwezKuCdbh2CzpGCZXb7aFPZUDKBGi8pB
	TraHQwj1usdPv+avGqKw9kUwS5ZD2N8L5aLoJbDHLyV2XdEvIwaM900hxf0XepR+kNZAgnBblKbSN
	M3hVxMn66HPeldD6H+AsyrfUJnVN9RiSE9AgVKgnlBVHMnzZd3YIR49/jR0tzaSZMHSSvga+8Uji2
	argr3eMDTTYzIC0QxbvIPq747NBpsGqflkZECW7+NWLjtzWQGLYvHw6tLJz821qC6XP5DAxYUtADs
	IfjAMdVhW7bNcRVJwBBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnf1-00074m-2v; Wed, 17 Jul 2019 17:24:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnneZ-0006qL-MZ
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 17:23:45 +0000
Received: by mail-lj1-x244.google.com with SMTP id z28so24485487ljn.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 10:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PO66KXLrAIQZcGnbmsv7B3LNHLu3YFOFwutSzAGx6I8=;
 b=cw4cQo73R+obYDNawcbMk+139xuL/zQXbqg43t2bYsXsRvd7bbZ42iSHbUbfkTrQWz
 be2iFkJgNNrsw/unZTlbDPdXtAi0M4REofPKVvVhUTBuCDjAltCYCbeeGkMQfYsCveeL
 R96L1zBf9va67A2aDq1j0l+29P4BuSe6W0xAQzH2s+mM30j6qJ1BKjYKDPrVKrAo0BwV
 ucWuRSp1NtU5vLFDTJepVtQvmcyOhr9frwob+CTylcc5Tf3GqCWJ1Dq398XvHVzI8iUS
 Mw4huNhrtMejf4TPE2D/2DGpFGqMFzTvZamZ5A6w77DIYN2f5Pq9udDk+47+7xwDC2zb
 GHxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PO66KXLrAIQZcGnbmsv7B3LNHLu3YFOFwutSzAGx6I8=;
 b=CHJgAmnKDydttLGnVVwGYY3taA5oUTmvMuMT0Yu/5Amp135+SDfOYqEWBuAB0jZE5y
 SDz5/3K2X4f9CetwyEipVBpYs3oKW+W8z3tuB7jl71YdrpfZtvoqagln8qWOJXUIwTYX
 G6/rveFomrpRcHjaYz/m5fMntcShR79Db7CcihTH4ZZC5pFDW3nbAnmcENXxdII2T1YV
 Euhrx84HjrDuixNDYnjY8SetFoHb9qsuukHoBJ3xXxdCZe2T8tdHHMRw2DAOxNpwcG+p
 faQrgKkdIoo9dMR6imlLS6CMVxD9th3H8G/bP08Fw0p2jECQgxENzpEilMKoB0yfiwUM
 EY8g==
X-Gm-Message-State: APjAAAV0Ch3F5i/Tei4mloR3iCYBvx51/l//R4fTxkAAeirNdZmYxUS5
 vfVo3fP9geK0AsSb0DzftVjPig==
X-Google-Smtp-Source: APXvYqwhO9Bp9BS2TbMfzOlGSFzC1eUs8wGneYHyNHcGLrWkmHDaE5czRzJLcmP1O7fJH7oNcXvlGA==
X-Received: by 2002:a2e:8849:: with SMTP id z9mr21308618ljj.203.1563384221787; 
 Wed, 17 Jul 2019 10:23:41 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id c1sm3543659lfh.13.2019.07.17.10.23.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 10:23:40 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 17 Jul 2019 19:23:32 +0200
Message-Id: <20190717172332.8286-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717172332.8286-1-linus.walleij@linaro.org>
References: <20190717172332.8286-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_102343_768263_7EF194AE 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] gemini: Enable flash boot on reference
 design type
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The flash layout on the Storlink reference design for Gemini
is using 2 MB flash for the kernel, and it also insists on
overwriting the partition table with default values on every
boot. The same is true for the SQ201. This poses a problem
on recent OpenWrt firmware as the base zImage is bigger
than 2 MB.

At the same time there is a ramdisk partition of 6 MB that we
don't really need. The partition table looks like this:

Creating 7 MTD partitions on "30000000.flash":
0x000000000000-0x000000016000 : "BOOT"
0x000000120000-0x000000320000 : "Kern"
0x000000320000-0x000000920000 : "Ramdisk"
0x000000920000-0x000000f20000 : "Application"
0x000000f20000-0x000000f40000 : "VCTL"
0x000000f40000-0x000000fe0000 : "CurConf"
0x000000fe0000-0x000001000000 : "FIS directory"

On boot the "Kern" partition is copied to RAM @0x01600000
and the "Ramdisk" partition is copied to RAM @0x00800000.
Then the kernel is executed.

The idea with this patch is to extend the "Kern" partition
with the "Ramdisk" partition to get a full 8 MB to use
for the kernel. Then we put the OpenWrt JFFS2 rootfs
inside the "Application" partition.

We create a small assembly loop that we prepend to the
"Kern" image that will copy the "Kern" from 0x0160000
and the "Ramdisk" from 0x00800000 and put them in
consecutive space at 0x00400000 and execute it from
there, using "Application" as rootfs.

We generate 3 main files:
- zImage - contains the assembly bootstrap loop and
  the first part of the generated kernel image
- rd.gz - contains the second part of the generated
  kernel image
- hddapp.tgz - contains the root filesystem

On the SQ201 I flash these manually using the native boot
loader PLATO, "Y" alternative for the zImage, "R" for
the rd.gz image and "A" for hddapp.tgz.

This works fine and I can now boot to prompt on the SQ201
with nothing but flash.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/image/Makefile            | 31 ++++++++++++++-----
 ...11-ARM-dts-Fix-up-SQ201-flash-access.patch |  2 +-
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index ebcff633ea8a..d6e7ba47e8f8 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -7,6 +7,10 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
+define Build/copy-kernel
+	$(MAKE) -C copy-kernel CROSS_COMPILE=$(TARGET_CROSS)
+endef
+
 # Cook a "WRGG" image, this board is apparently one in the D-Link
 # WRGG family and uses the exact same firmware format as other
 # D-Link devices.
@@ -76,18 +80,29 @@ endef
 
 # Create the default image format used by the StorLink reference design
 # SL93512r, Raidsonic NAS4220B and Itian Square One SQ201
-# with the squashfs and overlay inside the "rd.gz" file.
-# We pad it out to 6144K which is the size of the initramfs partition.
+# with the squashfs and overlay inside the "application" partition.
+#
+# These devices have a hard-coded partition table that the boot loader
+# constantly reflashes back, so we need to work around it like this:
 #
-# The "application" partition is just blank. You can put anything
-# there when using OpenWRT. We just use that to create the
-# "sysupgrade" firmware image.
+# 0x000000120000-0x000000320000 : "Kern" - small copy routine and first
+#                                 part of the kernel goes here
+# 0x000000320000-0x000000920000 : "Ramdisk" - second part of the kernel and
+#                                 some padding goes here
+# 0x000000920000-0x000000f20000 : "Application" - rootfs goes here
 define Build/storlink-default-images
 	mkdir -p $@.tmp
 
-	mv $@ $@.tmp/rd.gz
-	dd if=/dev/zero of=$@.tmp/hddapp.tgz bs=6144k count=1
-	cp $(IMAGE_KERNEL) $@.tmp/zImage
+	$(call Build/copy-kernel)
+	# "App" partition is the rootfs
+	mv $@ $@.tmp/hddapp.tgz
+	# 256 bytes copy routine
+	dd if=copy-kernel/copy-kernel.bin of=$@.tmp/zImage
+	$(call Image/pad-to,$@.tmp/zImage,512)
+	# Copy first part of the kernel into zImage
+	dd if=$(IMAGE_KERNEL) of=$@.tmp/zImage bs=1 seek=512 count=2096640
+	# Put the rest of the kernel into the "ramdisk"
+	dd if=$(IMAGE_KERNEL) of=$@.tmp/rd.gz bs=1 skip=2096640 count=6144k conv=sync
 	cp ./ImageInfo-$(1) $@.tmp/ImageInfo
 
 	sed -i -e "s/DATESTR/`date +%Y%m%d $(if $(SOURCE_DATE_EPOCH),--date "@$(SOURCE_DATE_EPOCH)")`/g" $@.tmp/ImageInfo
diff --git a/target/linux/gemini/patches-4.19/0011-ARM-dts-Fix-up-SQ201-flash-access.patch b/target/linux/gemini/patches-4.19/0011-ARM-dts-Fix-up-SQ201-flash-access.patch
index 7517d62ed31c..578e970c0fd9 100644
--- a/target/linux/gemini/patches-4.19/0011-ARM-dts-Fix-up-SQ201-flash-access.patch
+++ b/target/linux/gemini/patches-4.19/0011-ARM-dts-Fix-up-SQ201-flash-access.patch
@@ -20,7 +20,7 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
  
  	chosen {
 -		bootargs = "console=ttyS0,115200n8 root=/dev/sda1 rw rootwait";
-+		bootargs = "console=ttyS0,115200n8 root=/dev/mtdblock2 rw rootfstype=squashfs,jffs2 rootwait";
++		bootargs = "console=ttyS0,115200n8 root=/dev/mtdblock3 rw rootfstype=squashfs,jffs2 rootwait";
  		stdout-path = &uart0;
  	};
  
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
