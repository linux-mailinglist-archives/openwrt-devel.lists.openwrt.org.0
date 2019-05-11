Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CEF1A8D8
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 19:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ESYL0d8HlgqeRl+O2Da3AtMiVHlp9sTSXjaoJW1+K2w=; b=qAtZDfXFrJBlzF/HZBBNmIhciF
	mjnK3VWxXKerlJv+yPJfsPtVbe2YRhwysyN05cSzBZIzU2/13fcAWkkDWQHbYQkciaHSuM9j3E1Oo
	MXBszkJFYfXKJ+fOJ/kX6FXk4G6+Ms546ZIrKOj/xX1uLtPf9UQeFE3Q4L4GaOAu0xNxQWe6hhTWd
	ZZZm+FGz6CWEaxFRNzLg98sT9ICJ4WCPoZw9YQ60dkbN06ALT8TiGnY+0VM4blaPal3DNcsIi9X6J
	Qut//2qfbVQcQH9eVhft/zk1vJdeUZBL9WzMkWPRAFmWpaiZFq+AMR/pgLVcs9y3ohDN+6fYxMFJO
	YL+4XiCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPVx8-0006YO-Fn; Sat, 11 May 2019 17:38:30 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPVwU-0005pO-GQ
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 17:37:53 +0000
Received: (wp-smtpd smtp.tlen.pl 15546 invoked from network);
 11 May 2019 19:37:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557596267; bh=Dlzt0wlpqW9TfEj4dNSVn8ZdNSMYrjKZMSlTKTcXTf0=;
 h=From:To:Subject;
 b=lTm7tJQ0iNwnqyT5R6/UagOsCC3rTNWLcuTwd/MM/zcL5Lc1bDkZydoxwVhCXWuiw
 0JvDNW+M+2HYghMJWm5Ad8+WtMMA4OsFBdsrl60QeAcHdqyUuq4d4XBqdiMXjJklzF
 FE8zlDXGc0hBbGj3y3n1vmWy1IUfFe6gaVdQsEsY=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 May 2019 19:37:47 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 19:37:32 +0200
Message-Id: <20190511173735.5549-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190511173735.5549-1-tomek_n@o2.pl>
References: <20190511173735.5549-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 282b6abd253b66951576116b3515a5ef
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EZO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_103750_702790_66104356 
X-CRM114-Status: UNSURE (   6.69  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 5/8] mvebu: image: don't create
 unnecessarily shell variables
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

Use make syntax to pass the U-Boot image location and boot with root
partitions size, instead of relying on shell functions and variables.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile              | 18 ++++++------------
 .../linux/mvebu/image/gen_mvebu_sdcard_img.sh  |  4 ++--
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 108b569c07..9084b3e028 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -42,25 +42,19 @@ define Build/boot-img-ext4
 endef
 
 define Build/sdcard-img
-	if [ -n "$(UBOOT)" ]; then UBOOT="$(STAGING_DIR_IMAGE)/$(UBOOT)"; fi; \
-	BOOTFS_SIZE=$$(( $(CONFIG_TARGET_KERNEL_PARTSIZE) * 1024 * 2 )); \
-	ROOTFS_SIZE=$$(( $(CONFIG_TARGET_ROOTFS_PARTSIZE) * 1024 * 2 )); \
 	SIGNATURE="$(SIGNATURE)" \
 	./gen_mvebu_sdcard_img.sh $@ \
-		$$UBOOT \
-		c $$BOOTFS_SIZE $@.boot \
-		83 $$ROOTFS_SIZE $(IMAGE_ROOTFS)
+		$(if $(UBOOT),$(STAGING_DIR_IMAGE)/$(UBOOT)) \
+		c $(CONFIG_TARGET_KERNEL_PARTSIZE) $@.boot \
+		83 $(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS)
 endef
 
 define Build/sdcard-img-ext4
-	if [ -n "$(UBOOT)" ]; then UBOOT="$(STAGING_DIR_IMAGE)/$(UBOOT)"; fi; \
-	BOOTFS_SIZE=$$(( $(CONFIG_TARGET_KERNEL_PARTSIZE) * 1024 * 2 )); \
-	ROOTFS_SIZE=$$(( $(CONFIG_TARGET_ROOTFS_PARTSIZE) * 1024 * 2 )); \
 	SIGNATURE="$(SIGNATURE)" \
 	./gen_mvebu_sdcard_img.sh $@ \
-		$$UBOOT \
-		83 $$BOOTFS_SIZE $@.bootimg \
-		83 $$ROOTFS_SIZE $(IMAGE_ROOTFS)
+		$(if $(UBOOT),$(STAGING_DIR_IMAGE)/$(UBOOT)) \
+		83 $(CONFIG_TARGET_KERNEL_PARTSIZE) $@.bootimg \
+		83 $(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS)
 endef
 
 define Build/omnia-medkit-initramfs
diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index 67416ed80c..e0230e48b6 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -18,7 +18,7 @@
 #
 
 usage() {
-	echo "$0 <outfile> [<bootloader> <type_partitionN> <sectors_partitionN> <img_partitionN>]?"
+	echo "$0 <outfile> [<bootloader> <type_partitionN> <size_partitionN> <img_partitionN>]?"
 }
 
 # always require first 2 or 3 arguments
@@ -46,7 +46,7 @@ dd if=/dev/zero of="$OUTFILE" bs=512 count=1 >/dev/null
 printf "Done\n"
 
 while [ "$#" -ge 3 ]; do
-	ptgen_args="$ptgen_args -t $1 -p $(($2 / 2 + 256))"
+	ptgen_args="$ptgen_args -t $1 -p $(($2 * 1024 + 256))"
 	parts="$parts$3 "
 	shift; shift; shift
 done
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
