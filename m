Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109AB4F0F6
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 01:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IabvtVR9zAO31e+k5HwiMyI3u64GgLEKiADduWjZpOQ=; b=UsAi5EnzF/JpDB
	8tSTT0I8WV6pk7D0GCeQR4Vqs4E0DK57vA0sHAJ39M2c104miANBGWH6KNR9VF7AuC1PtCDmvINPp
	USunescizsv6RiSkdy2GnUNnxm7PUjH3Myo9dU+5EeHB95ybBHNt7zRTtHLQXNEgXJBBDfJLsGWpj
	nVZb72bjhSJupqcIwnRkYXnPw3/Vqz/PFuXroM7mAsywQrcvC/lVnp4GJQsBh9jiaVvz6uv89i4Bm
	4c8X7h7bnBl+JKv9qydvXQWc8+JyXqjN6BhSuaVJ7eP8tYZGF49HusnUoAYYZlcmbnqkGDZej0rHF
	67K3XVs6Jb3J0QMsh47g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heSaP-00024g-HW; Fri, 21 Jun 2019 23:04:49 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heSZJ-00011c-Do
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 23:03:42 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,402,1557212400"; d="scan'208";a="38593587"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jun 2019 16:03:37 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Jun 2019 16:03:38 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 21 Jun 2019 16:03:34 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 21 Jun 2019 16:02:19 -0700
Message-ID: <1561158139-13473-12-git-send-email-sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561158139-13473-1-git-send-email-sandeep.sheriker@microchip.com>
References: <1561158139-13473-1-git-send-email-sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_160341_573672_1B39D1E1 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [at91][patch v2 11/11] at91:sam9x: create fit image
 and sdcard image
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
Cc: sandeep.sheriker@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

create fit image and sdcard image for at91sam9x25 &
at91sam9x35 boards.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/sam9x.mk | 44 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/target/linux/at91/image/sam9x.mk b/target/linux/at91/image/sam9x.mk
index 3aada4c..8893a92 100644
--- a/target/linux/at91/image/sam9x.mk
+++ b/target/linux/at91/image/sam9x.mk
@@ -5,6 +5,44 @@ define Device/default-nand
   MKUBIFS_OPTS := -m $$(PAGESIZE) -e 126KiB -c 2048
 endef
 
+define Build/at91-sdcard
+  $(if $(findstring ext4,$@), \
+  rm -f $@.boot
+  mkfs.fat -C $@.boot $(FAT32_BLOCKS)
+
+  mcopy -i $@.boot \
+	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb \
+	::$(DEVICE_NAME)-fit.itb
+
+  mcopy -i $@.boot \
+    $(BIN_DIR)/u-boot-at91sam9x5ek_mmc/u-boot.bin \
+    ::u-boot.bin
+
+  mcopy -i $@.boot \
+    $(BIN_DIR)/at91bootstrap-at91sam9x5eksd_uboot/at91bootstrap.bin \
+    ::BOOT.bin
+
+  $(CP) uboot-env.txt $@-uboot-env.txt
+  sed -i '2d;3d' $@-uboot-env.txt
+  sed -i '2i board='"$(DEVICE_NAME)"'' $@-uboot-env.txt
+  sed -i '3i board_name='"$(DEVICE_NAME)"'' $@-uboot-env.txt
+
+  mkenvimage -s 0x4000 -o $@-uboot.env $@-uboot-env.txt
+
+  mcopy -i $@.boot $@-uboot.env ::uboot.env
+
+  ./gen_at91_sdcard_img.sh \
+      $@.img \
+      $@.boot \
+      $(KDIR)/root.ext4 \
+      $(AT91_SD_BOOT_PARTSIZE) \
+      $(CONFIG_TARGET_ROOTFS_PARTSIZE)
+
+  gzip -nc9 $@.img > $@
+
+  rm -f $@.img $@.boot $@-uboot.env $@-uboot-env.txt)
+endef
+
 define Device/at91sam9263ek
   $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9263-EK
@@ -48,14 +86,16 @@ endef
 TARGET_DEVICES += at91sam9m10g45ek
 
 define Device/at91sam9x25ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9X25-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9x25ek
 
 define Device/at91sam9x35ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9X35-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9x35ek
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
