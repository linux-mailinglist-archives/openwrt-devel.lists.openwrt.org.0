Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41C510F35D
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 00:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8TyxeGaxUbFTBbB7CkKrJFAEL1JnHWUaA2UYNeJOhKI=; b=WqBW8qEqBv4zL1
	B/FM06L0/yx6DSg7zrE7oSh/CE+AGeydBGbBrZw23l2tOhpQea8q5ut9UpwE7BifTMVuSqCr09eAf
	WSZMn+lyZHihuBV5ThMmLl65MPAd0HVrChW74aditdr4Bz6NhKWX4AQEFXVWipHB7sbVBdgl6F8gt
	JdTSf6XRULN34+kot1LTW/EAImjTPyWj+N5GWcqtVv7v2RLW16n2igOOSdNr4E3tRIc8ZbkivziHf
	+rqLboGrS5lRS14bAqhLFxrrUG2QFjPfdFW3nPXPfNi3OsMDuEEPI40nG7nvQnAqiMkNo2RS9+n4s
	DSddmNqYrJR8b8LxvDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibv5b-0001LI-F0; Mon, 02 Dec 2019 23:26:47 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibv5U-0001Kj-JM
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 23:26:43 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 474E0449472A;
 Tue,  3 Dec 2019 00:26:33 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id v1UQcMtjRILK; Tue,  3 Dec 2019 00:26:32 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id BCD394665172;
 Tue,  3 Dec 2019 00:26:31 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu BCD394665172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575329191;
 bh=U6FFOvbc96IPegROUCCZMcifvB74MygiG0u3IBxIZ1Q=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=CsXzxsugFlZbgbA8msYZiq8HWYWdJOcYaq0reFzzu1v1767oGdzunvKHvBslddbJk
 l6MXhV1hCVQztqntQeKeajXdIzQHYMZBMNawAXi2aRADxKY81lhmdJBq/Uyxu2/rOu
 jTp1mTguJ/RKnD1LzZASzHu22TKo0e+KgwX/vqTc=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id lY-4u3iGQyHY; Tue,  3 Dec 2019 00:26:31 +0100 (CET)
Received: from taz.sof.bg.adlevio.net (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb])
 by mail.tintel.eu (Postfix) with SMTP id AE9ED449472A;
 Tue,  3 Dec 2019 00:26:30 +0100 (CET)
Received: (nullmailer pid 952431 invoked by uid 1000);
 Mon, 02 Dec 2019 23:26:29 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Dec 2019 01:26:29 +0200
Message-Id: <20191202232629.952385-1-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: AE9ED449472A
X-Spamd-Result: default: False [0.00 / 15.00]; TAGGED_RCPT(0.00)[];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:24::adb]
X-Rspamd-Server: musltoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_152641_082751_C9DF8D6C 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti LiteBeam AC
 Gen2
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
Cc: pozega.tomislav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hardware:
* SoC: Atheros AR9342-BL1A
* RAM: 64MB DDR2 (Winbond W9751G6KB-25)
* Flash: 16MB SPI NOR (Macronix MX25L12835FZ2I-10G)
* Ethernet: 1x 10/100/1000 Mbps (Atheros AR8035-A) with 24V PoE support
* Wifi 2.4GHz: Atheros AR9340 v2
* WiFi 5GHz: Ubiquiti U-AME-G1-BR4A (rebranded QCA988X v2)
* LEDs: 1x Power, 1x Ethernet
* Buttons: 1x Reset
* UART: 1x TTL 115200n8, 3.3V RX TX GND, 3.3V pin closest to RJ45 port

The LEDs do not seem to be connected to any GPIO, so there is currently
no way to control them.

Installation via U-Boot, TFTP and serial console:
* Configure your TFTP server with IP 192.168.1.254
* Connect serial console and power up the device
* Hit any key to stop autoboot
* tftpboot 0x81000000 openwrt-ath79-generic-ubnt_litebeam-ac-gen2-initramfs-kernel.bin
* bootm 0x81000000
* copy openwrt-ath79-generic-ubnt_litebeam-ac-gen2-squashfs-sysupgrade.bin
  to /tmp
* sysupgrade /tmp/openwrt-ath79-generic-ubnt_litebeam-ac-gen2-squashfs-sysupgrade.bin

Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---

Notes:
    Instructions can be found to install OpenWrt via AirOS at [0]. Unfortunately
    they require an AirOS image, which can only be downloaded by accepting
    the EULA. As I do not want to accept this EULA, I have not been able to
    test these instructions and did not include them in the commit message.
    
    Also available in my staging tree at [1]
    
    [0] https://github.com/openwrt/openwrt/pull/689#issuecomment-493658317
    [1] https://git.openwrt.org/?p=openwrt/staging/stintel.git;a=shortlog;h=refs/heads/lbe-5ac-gen2

 .../dts/ar9342_ubnt_litebeam-ac-gen2.dts      | 39 +++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network |  1 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  1 +
 target/linux/ath79/image/generic-ubnt.mk      |  9 +++++
 4 files changed, 50 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9342_ubnt_litebeam-ac-gen2.dts

diff --git a/target/linux/ath79/dts/ar9342_ubnt_litebeam-ac-gen2.dts b/target/linux/ath79/dts/ar9342_ubnt_litebeam-ac-gen2.dts
new file mode 100644
index 0000000000..d7eacf44d0
--- /dev/null
+++ b/target/linux/ath79/dts/ar9342_ubnt_litebeam-ac-gen2.dts
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9342_ubnt_wa.dtsi"
+
+/ {
+	compatible = "ubnt,litebeam-ac-gen2", "ubnt,wa", "qca,ar9342";
+	model = "Ubiquiti LiteBeam AC Gen2";
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy-mask = <4>;
+	phy4: ethernet-phy@4 {
+		reg = <4>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	/* default for ar934x, except for 1000M and 10M */
+	pll-data = <0x02000000 0x00000101 0x00001313>;
+
+	mtd-mac-address = <&art 0x0>;
+
+	phy-mode = "rgmii-id";
+	phy-handle = <&phy4>;
+
+	gmac-config {
+		device = <&gmac>;
+		rxd-delay = <3>;
+		rxdv-delay = <3>;
+	};
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index e811f85f0e..c194def53d 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -40,6 +40,7 @@ ath79_setup_interfaces()
 	ubnt,bullet-m|\
 	ubnt,bullet-m-xw|\
 	ubnt,lap-120|\
+	ubnt,litebeam-ac-gen2|\
 	ubnt,nanobeam-ac|\
 	ubnt,nanostation-ac-loco|\
 	ubnt,rocket-m|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 062caf6ad5..55c6b74e74 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -17,6 +17,7 @@ case "$FIRMWARE" in
 	ubnt,unifiac-mesh|\
 	ubnt,unifiac-mesh-pro|\
 	ubnt,lap-120|\
+	ubnt,litebeam-ac-gen2|\
 	ubnt,nanobeam-ac|\
 	ubnt,nanostation-ac|\
 	ubnt,nanostation-ac-loco|\
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 19dbe2eb8b..7f59b6e841 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -128,6 +128,15 @@ define Device/ubnt_lap-120
 endef
 TARGET_DEVICES += ubnt_lap-120
 
+define Device/ubnt_litebeam-ac-gen2
+  $(Device/ubnt-wa)
+  DEVICE_TITLE := Ubiquiti LiteBeam AC Gen2
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  IMAGE_SIZE := 15744k
+  IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
+endef
+TARGET_DEVICES += ubnt_litebeam-ac-gen2
+
 define Device/ubnt_nanobeam-ac
   $(Device/ubnt-wa)
   DEVICE_MODEL := NanoBeam AC
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
