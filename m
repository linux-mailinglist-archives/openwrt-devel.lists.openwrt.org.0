Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3378A18A87
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 15:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YLwacXNvLrMEKQPEOmJ+doiAxwZpuGZKxSObgq4xBx8=; b=ne5DhwhoTs9pnUJMqvcvDUF8oF
	Y3gk1RqWYOyJIYqR2v2FcXXkrVIos2qQwDn7/cISWuQy/HXo2E/CCI493yJJQrcwQD2Qq1zRfrVwx
	C6TtcJi8YZMYLhQ95hknFHaBa4tVges+8w1bZF84C9X+p32xjooGEyjOshoEWVShhnQkW7TY0f0Uz
	S3CwTb7QLHDUPMIFkSrbImkBinU5htOgv/zp0LI2Z9YrE6TY/CKvy1SWe6fFD4dHwPjgx88XCFy3t
	QMs3us8DAnmQYS5ut1EaXhEHXgyA9+JbSXjJRTk2n0FPpgJZG3zQRcN0t/SNPpfkkFUox408nCqPf
	+eVsYzvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj4f-0005xD-9C; Thu, 09 May 2019 13:27:01 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj4W-0005wD-W6
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 13:26:55 +0000
Received: (wp-smtpd smtp.tlen.pl 11102 invoked from network);
 9 May 2019 15:26:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557408407; bh=GadcbN/eumP9iuPdj9Lt74HTBDYHIaVMTSh4QFX/01E=;
 h=From:To:Subject;
 b=XE8VrPJ/A1DGegDo6thwPeQoxMuWM+VP2bzsYC1MutttmikVg4YNX/hUT4Gb/jB69
 ry0bKfYdl9XI0+NpljlGEXTxov+3/+vff0K4uihe3KQ6pgzE95u76LsYkArOixrXxM
 cdBqCkuM5JflhzMU5RPuL6guV5rvRudmnOO1sSmA=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 9 May 2019 15:26:47 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 15:26:21 +0200
Message-Id: <20190509132628.4671-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509132628.4671-1-tomek_n@o2.pl>
References: <20190509132628.4671-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: eb21ae5015ed33bfddac75ee260192fc
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [IRME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_062653_352962_AA410E14 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 1/8] mvebu: remove unnecessary code
 building dtbs
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Even if dts is not included in upstream Makefile, it is built anyway by
recipe specified in include/image.mk. Also remove Build/dtb, it's not
used since 3f72f3a ("mvebu: clearfog: include DTB for all variants in
image").

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile                      | 10 +++-------
 .../linux/mvebu/patches-4.14/105-build_new_dtbs.patch  | 10 ----------
 2 files changed, 3 insertions(+), 17 deletions(-)
 delete mode 100644 target/linux/mvebu/patches-4.14/105-build_new_dtbs.patch

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 88790777d9..72b14e344b 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -15,10 +15,6 @@ KERNEL_LOADADDR := 0x00008000
 
 SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))
 
-define Build/dtb
-	$(call Image/BuildDTB,$(DTS_DIR)/$(DEVICE_DTS).dts,$@.dtb)
-endef
-
 define Build/boot-scr
 	rm -f $@-boot.scr
 	sed -e 's#@ROOT@#$(SIGNATURE)#g' \
@@ -29,7 +25,7 @@ endef
 define Build/boot-img
 	rm -f $@.boot
 	mkfs.fat -C $@.boot $$(( $(CONFIG_TARGET_KERNEL_PARTSIZE) * 1024 ))
-	$(foreach dts,$(DEVICE_DTS), mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb ::$(dts).dtb;)
+	$(foreach dts,$(DEVICE_DTS), mcopy -i $@.boot $(KDIR)/image-$(dts).dtb ::$(dts).dtb;)
 	mcopy -i $@.boot $(IMAGE_KERNEL) ::$(KERNEL_NAME)
 	-mcopy -i $@.boot $@-boot.scr ::boot.scr
 endef
@@ -37,7 +33,7 @@ endef
 define Build/boot-img-ext4
 	rm -fR $@.boot
 	mkdir -p $@.boot
-	$(foreach dts,$(DEVICE_DTS), $(CP) $(DTS_DIR)/$(dts).dtb $@.boot;)
+	$(foreach dts,$(DEVICE_DTS), $(CP) $(KDIR)/image-$(dts).dtb $@.boot/$(dts).dtb;)
 	$(CP) $(IMAGE_KERNEL) $@.boot/$(KERNEL_NAME)
 	-$(CP) $@-boot.scr $@.boot/boot.scr
 	make_ext4fs -J -l $(CONFIG_TARGET_KERNEL_PARTSIZE)M $@.bootimg $@.boot
@@ -70,7 +66,7 @@ define Build/omnia-medkit-initramfs
 	rm -rf $(dir $(IMAGE_KERNEL))boot
 	mkdir -p $(dir $(IMAGE_KERNEL))boot/boot/
 	cp $(KDIR)/zImage-initramfs $(dir $(IMAGE_KERNEL))boot/boot/zImage
-	cp $(DTS_DIR)/$(DEVICE_DTS).dtb $(dir $(IMAGE_KERNEL))boot/boot/dtb
+	cp $(KDIR)/image-$(DEVICE_DTS).dtb $(dir $(IMAGE_KERNEL))boot/boot/dtb
 	$(TAR) -rp --numeric-owner --owner=0 --group=0 --sort=name \
 		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
 		--file=$@ -C $(dir $(IMAGE_KERNEL))boot/ .
diff --git a/target/linux/mvebu/patches-4.14/105-build_new_dtbs.patch b/target/linux/mvebu/patches-4.14/105-build_new_dtbs.patch
deleted file mode 100644
index 92880b9971..0000000000
--- a/target/linux/mvebu/patches-4.14/105-build_new_dtbs.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -1027,6 +1027,7 @@ dtb-$(CONFIG_MACH_ARMADA_38X) += \
- 	armada-385-linksys-cobra.dtb \
- 	armada-385-linksys-rango.dtb \
- 	armada-385-linksys-shelby.dtb \
-+	armada-385-linksys-venom.dtb \
- 	armada-385-synology-ds116.dtb \
- 	armada-385-turris-omnia.dtb \
- 	armada-388-clearfog.dtb \
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
