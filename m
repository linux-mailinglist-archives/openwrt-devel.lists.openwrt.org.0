Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F63B1F16BF
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 12:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c+jG1gy8Q92PoMhd/Mbg+uF3Mfc2719UyxI7k5NSbuw=; b=j/eXFMFA5Ta1LHnGBiAxMO+CAY
	Y33wBF0/iuuybYdCMELt0vMX2PO/sUTO5XLvDfmMa9nRyv1iPv8vwuq/fuagrSAe6UOEw1DyYZTxO
	Jj1qCKhVIEXs9752artMH4Fb+PMmBC/u3nE65zscW+akK5glP41EcMUngOd2qlS3iBWxmPnUB1Tyy
	23c63/uSVI08XSGXsuDv5CnO3x+Uws12+52zu07ef81OGtdloezsGalLKTePqHPYnzEfCyxqmgrwV
	8cah+JEwtUBslwBr51TY3nNQlTp3kxgC2YTaB3jIR7CbEeONsPRJ/Hs/Q2L6+fz1IRqrpzXm6HvMY
	MqOmDbdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiF4f-0001HE-0S; Mon, 08 Jun 2020 10:32:13 +0000
Received: from mail.tintel.eu ([51.83.127.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiF3z-0000ar-JU
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 10:31:35 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id D97614482B65
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:57 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id t0zhHAGSCA7z for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 335954495F92
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 335954495F92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591611776;
 bh=lonhUQlhyLOTry6riXv74agFUYs05puZqqt3mgmd/P4=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=E0SnM71W/D3PqdWHbz8XtRd7uugkh1MIY5uOxoe+2RlGaYPu9/3VB5z+aQR1pHs5M
 dvxroxEc+a9wUQPWrrmUehkAJ8mfydf19rBYpGpQ85odXp5jNZoVzA9/dltW0qD0J5
 60ovdfN6dbF4Itqmq4mf5qx1givXJpPO+8zTptcg=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id SpKIDEBA3Fc9 for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:55 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id DF47D44881E6
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:01:46 +0200 (CEST)
Received: (nullmailer pid 1196141 invoked by uid 1000);
 Mon, 08 Jun 2020 09:36:31 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 12:36:30 +0300
Message-Id: <20200608093631.1196081-4-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608093631.1196081-1-stijn@linux-ipv6.be>
References: <20200608093631.1196081-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
X-Rspamd-Queue-Id: DF47D44881E6
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_033131_952065_0BDF893C 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH 3/4] ath79: use separate file for generic
 D-Link images
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Move the generic D-Link image definitions to a separate file, as is done
for several other vendors.

Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---
 target/linux/ath79/image/Makefile         |   1 +
 target/linux/ath79/image/generic-dlink.mk | 114 +++++++++++++++++++++
 target/linux/ath79/image/generic.mk       | 115 ----------------------
 3 files changed, 115 insertions(+), 115 deletions(-)
 create mode 100644 target/linux/ath79/image/generic-dlink.mk

diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image/Makefile
index 529baf8f57..6a286d3f1f 100644
--- a/target/linux/ath79/image/Makefile
+++ b/target/linux/ath79/image/Makefile
@@ -70,6 +70,7 @@ endef
 
 ifeq ($(SUBTARGET),generic)
 include ./generic.mk
+include ./generic-dlink.mk
 include ./generic-tp-link.mk
 include ./generic-ubnt.mk
 endif
diff --git a/target/linux/ath79/image/generic-dlink.mk b/target/linux/ath79/image/generic-dlink.mk
new file mode 100644
index 0000000000..96cb015a09
--- /dev/null
+++ b/target/linux/ath79/image/generic-dlink.mk
@@ -0,0 +1,114 @@
+define Device/dlink_dir-505
+  SOC := ar9330
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-505
+  IMAGE_SIZE := 7680k
+  DEVICE_PACKAGES := kmod-usb2
+  SUPPORTED_DEVICES += dir-505-a1
+endef
+TARGET_DEVICES += dlink_dir-505
+
+define Device/dlink_dir-825-b1
+  SOC := ar7161
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-825
+  DEVICE_VARIANT := B1
+  IMAGE_SIZE := 6208k
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | \
+	append-metadata | check-size
+  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
+	kmod-leds-reset kmod-owl-loader
+  SUPPORTED_DEVICES += dir-825-b1
+endef
+TARGET_DEVICES += dlink_dir-825-b1
+
+define Device/dlink_dir-825-c1
+  SOC := ar9344
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-825
+  DEVICE_VARIANT := C1
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset \
+	kmod-owl-loader
+  SUPPORTED_DEVICES += dir-825-c1
+  IMAGE_SIZE := 15936k
+  IMAGES := factory.bin sysupgrade.bin
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | \
+	pad-rootfs
+  IMAGE/factory.bin := $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE) 26 | \
+	append-string 00DB120AR9344-RT-101214-00 | check-size
+  IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | \
+	check-size
+endef
+TARGET_DEVICES += dlink_dir-825-c1
+
+define Device/dlink_dir-835-a1
+  SOC := ar9344
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-835
+  DEVICE_VARIANT := A1
+  DEVICE_PACKAGES := kmod-usb2 kmod-leds-reset kmod-owl-loader
+  SUPPORTED_DEVICES += dir-835-a1
+  IMAGE_SIZE := 15936k
+  IMAGES := factory.bin sysupgrade.bin
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | \
+	pad-rootfs
+  IMAGE/factory.bin := $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE) 26 | \
+	append-string 00DB120AR9344-RT-101214-00 | check-size
+  IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | \
+	check-size
+endef
+TARGET_DEVICES += dlink_dir-835-a1
+
+define Device/dlink_dir-842-c
+  SOC := qca9563
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-842
+  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma
+  KERNEL_INITRAMFS := $$(KERNEL) | seama
+  IMAGES += factory.bin
+  SEAMA_MTDBLOCK := 5
+  SEAMA_SIGNATURE := wrgac65_dlink.2015_dir842
+  # 64 bytes offset:
+  # - 28 bytes seama_header
+  # - 36 bytes of META data (4-bytes aligned)
+  IMAGE/default := append-kernel | uImage lzma | \
+	pad-offset $$$$(BLOCKSIZE) 64 | append-rootfs
+  IMAGE/sysupgrade.bin := $$(IMAGE/default) | seama | pad-rootfs | \
+	append-metadata | check-size
+  IMAGE/factory.bin := $$(IMAGE/default) | pad-rootfs -x 64 | seama | \
+	seama-seal | check-size
+  IMAGE_SIZE := 15680k
+endef
+
+define Device/dlink_dir-842-c1
+  $(Device/dlink_dir-842-c)
+  DEVICE_VARIANT := C1
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+endef
+TARGET_DEVICES += dlink_dir-842-c1
+
+define Device/dlink_dir-842-c2
+  $(Device/dlink_dir-842-c)
+  DEVICE_VARIANT := C2
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct
+endef
+TARGET_DEVICES += dlink_dir-842-c2
+
+define Device/dlink_dir-842-c3
+  $(Device/dlink_dir-842-c)
+  DEVICE_VARIANT := C3
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+endef
+TARGET_DEVICES += dlink_dir-842-c3
+
+define Device/dlink_dir-859-a1
+  $(Device/seama)
+  SOC := qca9563
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-859
+  DEVICE_VARIANT := A1
+  IMAGE_SIZE := 15872k
+  DEVICE_PACKAGES :=  kmod-usb2 kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
+  SEAMA_SIGNATURE := wrgac37_dlink.2013gui_dir859
+endef
+TARGET_DEVICES += dlink_dir-859-a1
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 45dfc6bdad..cba2f51697 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -458,121 +458,6 @@ define Device/devolo_magic-2-wifi
 endef
 TARGET_DEVICES += devolo_magic-2-wifi
 
-define Device/dlink_dir-505
-  SOC := ar9330
-  DEVICE_VENDOR := D-Link
-  DEVICE_MODEL := DIR-505
-  IMAGE_SIZE := 7680k
-  DEVICE_PACKAGES := kmod-usb2
-  SUPPORTED_DEVICES += dir-505-a1
-endef
-TARGET_DEVICES += dlink_dir-505
-
-define Device/dlink_dir-825-b1
-  SOC := ar7161
-  DEVICE_VENDOR := D-Link
-  DEVICE_MODEL := DIR-825
-  DEVICE_VARIANT := B1
-  IMAGE_SIZE := 6208k
-  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | \
-	append-metadata | check-size
-  DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb-ledtrig-usbport \
-	kmod-leds-reset kmod-owl-loader
-  SUPPORTED_DEVICES += dir-825-b1
-endef
-TARGET_DEVICES += dlink_dir-825-b1
-
-define Device/dlink_dir-825-c1
-  SOC := ar9344
-  DEVICE_VENDOR := D-Link
-  DEVICE_MODEL := DIR-825
-  DEVICE_VARIANT := C1
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-leds-reset \
-	kmod-owl-loader
-  SUPPORTED_DEVICES += dir-825-c1
-  IMAGE_SIZE := 15936k
-  IMAGES := factory.bin sysupgrade.bin
-  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | \
-	pad-rootfs
-  IMAGE/factory.bin := $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE) 26 | \
-	append-string 00DB120AR9344-RT-101214-00 | check-size
-  IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | \
-	check-size
-endef
-TARGET_DEVICES += dlink_dir-825-c1
-
-define Device/dlink_dir-835-a1
-  SOC := ar9344
-  DEVICE_VENDOR := D-Link
-  DEVICE_MODEL := DIR-835
-  DEVICE_VARIANT := A1
-  DEVICE_PACKAGES := kmod-usb2 kmod-leds-reset kmod-owl-loader
-  SUPPORTED_DEVICES += dir-835-a1
-  IMAGE_SIZE := 15936k
-  IMAGES := factory.bin sysupgrade.bin
-  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs | \
-	pad-rootfs
-  IMAGE/factory.bin := $$(IMAGE/default) | pad-offset $$$$(IMAGE_SIZE) 26 | \
-	append-string 00DB120AR9344-RT-101214-00 | check-size
-  IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | \
-	check-size
-endef
-TARGET_DEVICES += dlink_dir-835-a1
-
-define Device/dlink_dir-842-c
-  SOC := qca9563
-  DEVICE_VENDOR := D-Link
-  DEVICE_MODEL := DIR-842
-  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma
-  KERNEL_INITRAMFS := $$(KERNEL) | seama
-  IMAGES += factory.bin
-  SEAMA_MTDBLOCK := 5
-  SEAMA_SIGNATURE := wrgac65_dlink.2015_dir842
-  # 64 bytes offset:
-  # - 28 bytes seama_header
-  # - 36 bytes of META data (4-bytes aligned)
-  IMAGE/default := append-kernel | uImage lzma | \
-	pad-offset $$$$(BLOCKSIZE) 64 | append-rootfs
-  IMAGE/sysupgrade.bin := $$(IMAGE/default) | seama | pad-rootfs | \
-	append-metadata | check-size
-  IMAGE/factory.bin := $$(IMAGE/default) | pad-rootfs -x 64 | seama | \
-	seama-seal | check-size
-  IMAGE_SIZE := 15680k
-endef
-
-define Device/dlink_dir-842-c1
-  $(Device/dlink_dir-842-c)
-  DEVICE_VARIANT := C1
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
-endef
-TARGET_DEVICES += dlink_dir-842-c1
-
-define Device/dlink_dir-842-c2
-  $(Device/dlink_dir-842-c)
-  DEVICE_VARIANT := C2
-  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9888-ct
-endef
-TARGET_DEVICES += dlink_dir-842-c2
-
-define Device/dlink_dir-842-c3
-  $(Device/dlink_dir-842-c)
-  DEVICE_VARIANT := C3
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
-endef
-TARGET_DEVICES += dlink_dir-842-c3
-
-define Device/dlink_dir-859-a1
-  $(Device/seama)
-  SOC := qca9563
-  DEVICE_VENDOR := D-Link
-  DEVICE_MODEL := DIR-859
-  DEVICE_VARIANT := A1
-  IMAGE_SIZE := 15872k
-  DEVICE_PACKAGES :=  kmod-usb2 kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
-  SEAMA_SIGNATURE := wrgac37_dlink.2013gui_dir859
-endef
-TARGET_DEVICES += dlink_dir-859-a1
-
 define Device/elecom_wrc-1750ghbk2-i
   SOC := qca9563
   DEVICE_VENDOR := ELECOM
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
