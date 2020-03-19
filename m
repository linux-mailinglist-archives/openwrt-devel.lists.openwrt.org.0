Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082CF18B252
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 12:30:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fympjUvIZ98mnBj29ttLgD59ElCtkOUN3BMq0w3gC0=; b=gazahkjM9vWBo/
	mx/m3w7X7QHNEmIYYmiGKFDznhqCWGYbIetkqJRw/PRAcxLRhKK4c49aWQZfhenVn1/RjoPXFew2l
	Yj5dnNSWX/glKPpDPeayMYcGdmV0Tc5HnHbebxMako1BGmNmf5g//okUsk0KOaBhYazCzK7DbZRYZ
	Tbhi61qnT87cRgnPSZvK/e2RZFzlskzSOMG3O36LZKBkdMqmxoq4bvcK6FDz6Z1KUJhxx+iOFPO0a
	3+vPc42A8B/hvNZ2l/h85xvkSnVb4SIiCbmcpIJEjEkcfKuSJCZ2QFDhNc2n9MdqztUEDfixQGzEP
	5nGYV2aOYrBL/oMmkXXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtN8-00060S-Ot; Thu, 19 Mar 2020 11:29:58 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtMp-0005pE-1s
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 11:29:40 +0000
Received: by mail-pg1-x530.google.com with SMTP id 37so1099708pgm.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Mar 2020 04:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6M2YiqXgxesRh/t4IZ8+WhMnlXmZ2LjfDeFCnB7JUcg=;
 b=sDOeK2JwQT9EpFxGt1tmd8Som9UuLCAwnorKK3IAhWWmExXNNQJrbEXjffvcf5PyWo
 K5OQ4/+cANhi8+7tptf4vSTQpzCzHvY8qgRTLHoxZ7ubSSdaQphFTsEWxXfdSj3Eh64p
 KvLlwF4lOtALLSrn4liuVbizn8skTCm/zKAgN75J/04xUEqpipJOkkVOCWe37blCJTFi
 8GAl5T39Dqng1mfe3/7Z3a2EPPlUr08zInL9AWWDqgFdvPhRBXnwRhlhXYhFOhHbppjT
 1D9oWVOroVRGiygAZ5BSkidAJYqPPx9cLyvumJ/+6O7tGRx/P8lu7gEnOKmBEiOJd6s1
 TRPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6M2YiqXgxesRh/t4IZ8+WhMnlXmZ2LjfDeFCnB7JUcg=;
 b=r7wNQs3TsPj0PDadyiDUuu9UOk7g4iBWfs6xNXNEHKU0h98dQQqqkQFsHRkIHb2Ava
 yvZzR/cp9p66lySawdRY/fIIdmC2+CFKzYQE1yTfTm9cD3RTo9aZm80VIAyeMEgZFhjt
 CCiNnsbqyZhwLQ3Mn1XWOMbJOizfxsp8x7P1edWFsve4mVh4DV/HDQHsXKDjYHmtWzQJ
 Z5HgP89L6cI6+vk4CabN14cnEKIXH9ma2N7T7U98zzhvdaedbS3vEIZdr0QFpCDDjT8P
 NXdW+f52mjZnXt3dfaeQRLj2qmdGneBj/SOqwIdTMblAoCR4OJpX7gBcCqSOBV1qR94o
 g9SA==
X-Gm-Message-State: ANhLgQ1vHKKWRehWQ/V3A1vQIKBYzh6MS9qcbSFovlACsia5q9I3SIle
 0LiIZJXHBM15k9UeQRR4uUAr0tpA6Uk=
X-Google-Smtp-Source: ADFU+vvi7ou0D8c3QNPPNr1P7mdLqIIm/twC8LTYg4XB89zgON6R4Un8Sp1UnvBra8mH9CsA57PD5g==
X-Received: by 2002:a63:e74b:: with SMTP id j11mr1509960pgk.145.1584617377746; 
 Thu, 19 Mar 2020 04:29:37 -0700 (PDT)
Received: from hawg.ptp ([2602:3f:e4ac:bf00::70])
 by smtp.gmail.com with ESMTPSA id k4sm2370782pfh.0.2020.03.19.04.29.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 04:29:37 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Mar 2020 04:27:28 -0700
Message-Id: <20200319112727.4016569-2-russell@personaltelco.net>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200311010605.2818827-1-russell@personaltelco.net>
References: <20200311010605.2818827-1-russell@personaltelco.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_042939_093331_658D30C2 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v5 1/1] ath79: add support for
 ubnt_bullet-m-ar7240 variant
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
Cc: Russell Senior <russell@personaltelco.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support for the Ubiquiti Bullet M (AR7240).

Specifications:
- AR7240 SoC @ 400 MHz
- 32 MB RAM
- 8 MB SPI flash
- 1x 10/100 Mbps Ethernet, 24 Vdc PoE-in
- External antenna
- POWER/LAN green LEDs
- 4x RSSI LEDs (red, orange, green, green)
- UART (115200 8N1) on PCB

Flashing via WebUI:
  Upload the factory image via the stock firmware web UI.

  Attention: airOS firmware versions >= 5.6 have a new bootloader with
  an incompatible partition table!

  Please downgrade to <= 5.5 _before_ flashing OpenWrt!
  Refer to the device's Wiki page for further information.

Flashing via TFTP:
  Same procedure as other Ubiquiti M boards.

- Use a pointy tool (e.g., pen cap, paper clip) and keep the reset
  button on the device or on the PoE supply pressed
- Power on the device via PoE (keep reset button pressed)
- Keep pressing until LEDs flash alternatively LED1+LED3 =>
  LED2+LED4 => LED1+LED3, etc.
- Release reset button
- The device starts a TFTP server at 192.168.1.20
- Set a static IP on the computer (e.g., 192.168.1.21/24)
- Upload via tftp the factory image:
  $ tftp 192.168.1.20
  tftp> bin
  tftp> trace
  tftp> put openwrt-ath79-generic-xxxxx-ubnt_bullet-m-ar7240-squashfs-factory.bin

The "fixed-link" section of the device tree is needed to avoid errors like this:

  Generic PHY mdio.0:1f:04: Master/Slave resolution failed, maybe conflicting manual settings?

With "fixed-link", the errors go away and eth0 comes up reliably.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22 +++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |  1 +
 .../generic/base-files/etc/board.d/02_network |  2 ++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  1 +
 target/linux/ath79/image/generic-ubnt.mk      | 10 +++++++++
 5 files changed, 36 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts

diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
new file mode 100644
index 0000000000..58b35f5c8b
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
+
+/ {
+	compatible = "ubnt,bullet-m-ar7240", "ubnt,xm", "qca,ar7240";
+	model = "Ubiquiti Bullet M XM (AR7240)";
+};
+
+&eth0 {
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+};
+
+&eth1 {
+	compatible = "syscon", "simple-mfd";
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index 227ccf0dfe..2df7dca89d 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -250,6 +250,7 @@ tplink,tl-wr842n-v2)
 trendnet,tew-823dru)
 	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
 	;;
+ubnt,bullet-m-ar7240|\
 ubnt,bullet-m-ar7241|\
 ubnt,bullet-m-xw|\
 ubnt,nanostation-loco-m|\
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index dbb722482b..fc1fee4844 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -40,6 +40,7 @@ ath79_setup_interfaces()
 	tplink,re450-v1|\
 	tplink,re450-v2|\
 	tplink,tl-wr902ac-v1|\
+	ubnt,bullet-m-ar7240|\
 	ubnt,bullet-m-ar7241|\
 	ubnt,bullet-m-xw|\
 	ubnt,lap-120|\
@@ -446,6 +447,7 @@ ath79_setup_macs()
 		label_mac=$wan_mac
 		;;
 	ubnt,airrouter|\
+	ubnt,bullet-m-ar7240|\
 	ubnt,bullet-m-ar7241|\
 	ubnt,nanostation-loco-m|\
 	ubnt,nanostation-m|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 38f158896b..0cf8b43514 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -85,6 +85,7 @@ case "$FIRMWARE" in
 	tplink,tl-wr2543-v1|\
 	tplink,tl-wr842n-v1|\
 	ubnt,airrouter|\
+	ubnt,bullet-m-ar7240|\
 	ubnt,bullet-m-ar7241|\
 	ubnt,nanostation-loco-m|\
 	ubnt,nanostation-m|\
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 4902023089..ece5886ac6 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -113,6 +113,16 @@ define Device/ubnt_airrouter
 endef
 TARGET_DEVICES += ubnt_airrouter
 
+define Device/ubnt_bullet-m-ar7240
+  $(Device/ubnt-xm)
+  SOC := ar7240
+  DEVICE_MODEL := Bullet-M
+  DEVICE_VARIANT := XM (AR7240)
+  DEVICE_PACKAGES += rssileds
+  SUPPORTED_DEVICES += bullet-m-ar7240
+endef
+TARGET_DEVICES += ubnt_bullet-m-ar7240
+
 define Device/ubnt_bullet-m-ar7241
   $(Device/ubnt-xm)
   SOC := ar7241
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
