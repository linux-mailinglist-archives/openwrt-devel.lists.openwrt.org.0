Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9499319B4A0
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 19:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CqKFLkSkl/7o/3EcZkszEo/+zt8IIYes5ToIu5on+A4=; b=HRXWaXzMoyISsm
	Jr9uj8h1RwqHW0zlCaW5FEi9DPRA8CeQKfCcuK6PC9IyfwtMa6Q8103UPyS2Yp/Qzbj4QMGTQes0m
	vilrn158SyDNngwrZsRF08IlMd5qcbM90djFk6UufVKRpeOylnguZm+VKmeFYTwtNh2IhyUU6SGqS
	XMX4+D+NHKtUng4Z1NfrVkELXQgAVjiq6DKWw2+Yh9Q22A1LJBdCIPE8fN1gWwzXRedrkXLGYx0Uk
	XhUEe2U4RhJ8unE/HbZy6x+Y4TlL66NT7cLTTikslnUs1P6AxkSxW2Pp5ojoQdlVkgEHl+PhWAMfP
	CRc5CKV2vltqLy/8mySw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJh5R-0006gM-FG; Wed, 01 Apr 2020 17:23:33 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJh5M-0006fJ-6x
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 17:23:29 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jJh6q-0004jL-0D; Wed, 01 Apr 2020 17:25:00 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Date: Wed,  1 Apr 2020 10:23:12 -0700
Message-Id: <1585761792-26546-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_102328_290007_12716B6C 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] imx6: bootscript: use partition UUID for
 rootfs if possible
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Specifying root filesystem by device is non-deterministic for several
reasons:
 - USB device unmeration order is not garunteeed for USB storage devs
 - MMC devs ordering is determined by the instance of the MMC host
   controller including non-storage SDIO devices which can throw off
   numbering depending on kernel versions.

It is recommended to use partition UUID

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 target/linux/imx6/image/bootscript-ventana | 34 ++++++++++++++++++------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/target/linux/imx6/image/bootscript-ventana b/target/linux/imx6/image/bootscript-ventana
index 941afb5..734f74a 100644
--- a/target/linux/imx6/image/bootscript-ventana
+++ b/target/linux/imx6/image/bootscript-ventana
@@ -1,4 +1,4 @@
-echo "Gateworks Ventana OpenWrt Boot script v1.01"
+echo "Gateworks Ventana OpenWrt Boot script v1.02"
 
 # set some defaults
 # set some defaults
@@ -9,7 +9,7 @@ setenv bootargs console=${console},${baudrate}
 setenv loadaddr 10800000
 setenv fdt_addr 18000000
 
-# detect dtype and bootdev by looking for kernel on media the bootloader
+# detect dtype by looking for kernel on media the bootloader
 # has mounted (in order of preference: usb/mmc/sata)
 #
 # This assumes the bootloader has already started the respective subsystem
@@ -31,18 +31,9 @@ else
 	fi
 	echo "detected dtype:$dtype"
 fi
-if test -n "$bootdev" ; then
-	echo "Using bootdev from env: $bootdev"
-else
-	if itest.s "x${dtype}" == "xmmc" ; then
-		bootdev=mmcblk0p1
-	else
-		bootdev=sda1
-	fi
-fi
 
+echo "Booting from ${dtype}..."
 if itest.s "x${dtype}" == "xnand" ; then
-	echo "Booting from NAND..."
 	# fix partition name
 	#  OpenWrt kernel bug prevents partition name of 'rootfs' from booting
 	#  instead name the partition ubi which is what is looked for by
@@ -52,9 +43,24 @@ if itest.s "x${dtype}" == "xnand" ; then
 	setenv fsload ubifsload
 	setenv root "ubi0:ubi ubi.mtd=2 rootfstype=squashfs,ubifs"
 else
-	echo "Booting from block device ${bootdev}..."
 	setenv fsload "${fs}load ${dtype} ${disk}:1"
-	setenv root "root=/dev/${bootdev} rootfstype=${fs} rootwait rw"
+	part uuid ${dtype} ${disk}:1 uuid
+	if test -z "${uuid}"; then
+		# fallback to bootdev
+		if test -n "$bootdev" ; then
+			echo "Using bootdev from env: $bootdev"
+		else
+			if itest.s "x${dtype}" == "xmmc" ; then
+				bootdev=mmcblk0p1
+			else
+				bootdev=sda1
+			fi
+		fi
+		setenv root "root=/dev/${bootdev}"
+	else
+		setenv root "root=PARTUUID=${uuid}"
+	fi
+	setenv root "$root rootfstype=${fs} rootwait rw"
 fi
 
 setenv bootargs "${bootargs}" "${root}" "${video}" "${extra}"
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
