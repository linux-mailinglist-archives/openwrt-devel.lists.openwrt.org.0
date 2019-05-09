Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B0618A8D
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 15:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ESYL0d8HlgqeRl+O2Da3AtMiVHlp9sTSXjaoJW1+K2w=; b=Zvdb5uMWIsNUjdhpvCfD3ca/i4
	t+pEKyfh01ldVFowaC1N51IU1G38+lolE2HLsW5VmaH31zFuCTBIV4KS1eX9naB+cepSdCl/TJNWi
	sdqZWfmFokw30MJ1Q1lwS+z1c4nCOVj/L4Kp02zqXVCLNGXiyDst/UzViK5fZa2EKx61Q0fYC7yWw
	Nb9cnAkiJZWwGWsr4jiGiitOOplAseWdH0C/PxiF/c0cTymuBhiDpbaqgUv+j0mdANVhTSIBGIy8D
	PgSeXgWsJARbcBseMYt+30uA7Y+8ftFf2reBZbSRn8oNg+5ygDvVvl4QeMHk/041+yCRgFIA/3i+u
	8YzhQCgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj5M-0006yg-Vn; Thu, 09 May 2019 13:27:45 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj4c-0005x6-TP
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 13:27:03 +0000
Received: (wp-smtpd smtp.tlen.pl 22058 invoked from network);
 9 May 2019 15:26:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557408414; bh=Dlzt0wlpqW9TfEj4dNSVn8ZdNSMYrjKZMSlTKTcXTf0=;
 h=From:To:Subject;
 b=xedk0n8FngLrXZTod6SbYFsO7r9Tx1GZJpN8PGssKbne2GfYttANHZPMKB0ccEFqP
 EZGPYCnY0eTaBO6b4Up3A1L0K5+dMSplTCFakFjgeNMUReJ+STyg9PdqDHeW6wWNHZ
 YAQM6Hn8z3YfuVRCAFtAQn+yKIwNvnL7SxNw99V0=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 9 May 2019 15:26:54 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 15:26:25 +0200
Message-Id: <20190509132628.4671-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509132628.4671-1-tomek_n@o2.pl>
References: <20190509132628.4671-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 59af802afd90abb56a8ba353cbd0e6a2
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [UaME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_062659_270506_A27D4F9D 
X-CRM114-Status: UNSURE (   6.81  )
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
Subject: [OpenWrt-Devel] [PATCH v2 5/8] mvebu: image: don't create
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
