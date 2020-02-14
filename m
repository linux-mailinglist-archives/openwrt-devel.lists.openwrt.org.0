Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D2C15DA7C
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Feb 2020 16:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XLWC4NZwRvzHlhBE3+B8ZwJ/O162LgK69LjLzh4pG70=; b=lh11UeJdV0IbaK
	xvEXobklT3gJr5k7kqf2BwEHSWDQIYDQMceH2x/s4mZMYc4I7zavKyaiv1yinyPJAYZ8EAja3igEG
	8ubRS6bRn0vHnXYIvtbs1rKwm67bu0ovDqgfqzKLaroSa2YaRRaLQA0yZ4reCZ1IbLZBX132bC/NP
	bs1kAkqWhFzbUPQf33FGS5TbAQeieRWQzrNkovPydcjwLQHeWTSZ8R6xoue6iZE6YVGt6blJRdErM
	wX0j04vLGnbfWfwR7hqfASr8CG+ezS5AwT6/fU4KOU5z89zrTjW3lOBJVO6edJPAwnXjw9A9kEPtm
	V+4ybRbxdXU8mQ7MgctQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cjj-0006Jz-3E; Fri, 14 Feb 2020 15:18:35 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cjb-0006JG-I4
 for openwrt-devel@lists.openwrt.org; Fri, 14 Feb 2020 15:18:29 +0000
Received: from buildfff.adridolf.com ([188.193.230.10]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N0Zfg-1jNRQx03S0-00wYy3 for <openwrt-devel@lists.openwrt.org>; Fri, 14
 Feb 2020 16:18:23 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Feb 2020 16:17:37 +0100
Message-Id: <20200214151737.15058-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:3BcqBi3NWrzfo6vutVutV7+d3L6/kiYeNMESLGro0ivec5HdeDC
 6zowNP7B8DW7G9iqDCCJPGV/Eo3kusULU8p3wAQszSQZopCBDqPWE6DA2SibZz8uJ1/2SQD
 AhQVXT//CQulx4WnMk2oy0hP3+3LU5gcumpiihI8mkvonpJsHEOCSCavaGFrQiu0i+Lz3EV
 +KSjAMGTAFYJ54jPJP+8w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x/SgypxCvzA=:lKhf3ss4hU1KgM4rzWLP9J
 OsDZJbQif8VAj7yAeJpj8/Umt6AvJxP7lSeXoK/qcUIX9xlPjU2XfSyKGYvGjEC0y1WIwfuS0
 vAu8t963Q/jxDEA0OqNsphmOE7vk2P1wH/fR2nCwRubh37mBrCNozXGWzWz/haFET63KENybc
 dtaX6v9/nRQrBIec2NbnykXWFnnj+HO8Utl5Hegm5zGeNq4DAqVT72sI3TdU4q96cW4dSXs3+
 NL6QKBhQZgPfdZFkWc53oPEHRyPqx92EcPEMzSZNKBuyd8JK6LV3E3+tv3VhKun0Sm1+P9sot
 MJmX9PwEthERhPJKcjCVSuBrnfWNtB3HqOfuJD04rK6txL0cMOxcRlsQQvUo6dxGGr20b8jXb
 SRWZcYSEDyB1kv81l70vGycdWERtWCegnlg96ySDVj9vgordG7BVP063uqqJIvRBHZEKgsN6J
 /qfkpKggNajrVUKP3mQl+s0gZEJuPmBcNdBtl0hJ12JU7kHhpMSjGjA73VNx5kWnySLkyMyjL
 1y0CDlkpvgLLq+WSN3EZ1qngTjmT9QVez0xf8WqvkI4uuNFxQZY+0RffFgfE/72Mqr+H3/kFY
 DLEbpRB0JBrgAtU3dc4wnHIn1e698Baxl+YMWpWzv7o2OScwFklTPVkt3GWac/uN4LWoqsa9c
 Rnwnkg/qxMWlJ/Q5SQs7zcimwudA4eU0WlhIh6eT8U/PcyhceF9Uc+FUtwpy8EFBc0QxxCM7b
 LicpgMb3mAQ/ItQDqgedIgO2V9K71AgK0LtgDNeTOfzibe/r5aabgsgd32OJX5tfhVAYAF4m2
 YpMkf8YcPgRw0RVKLVmWaphWuAJdyLedYD2QSmtx9RNgJ5YjymFD4pIzt5r7rftgTh9Yh7N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_071827_891034_0F89A12A 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link
 TL-WA701ND/730RE/801ND/901ND v1
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

This adds support for the various clones of the TL-WA830RE recently
supported in fb99ac6807f2 ("ath79: add support for TP-Link TL-WA830RE v1"):

- tplink,tl-wa701nd-v1
- tplink,tl-wa730re-v1
- tplink,tl-wa801nd-v1
- tplink,tl-wa830re-v1 (already supported)
- tplink,tl-wa901nd-v1

Since these devices are 100%-clones in ar71xx, this patch adds all
of them without run-testing (as this has been done for TL-WA830RE v1).

Specifications:
- SOC: Atheros AR7240
- CPU: 400MHz
- Flash: 4 MiB (Spansion S25FL032P)
- RAM: 32 MiB (Zentel A3S56D40FTP-G5)
- WLAN: Atheros AR9280 bgn 2x2
- Ethernet: 1 port (100M)

Flash instructions:
- install from u-boot with tftp (requires serial access)
  > setenv ipaddr a.b.c.d
  > setenv serverip e.f.g.h
  > tftpboot 0x80000000 \
      openwrt-ath79-tiny-tplink_tl-waxxxxx-v1-squashfs-factory.bin
  > erase 0x9f020000 +0x3c0000
  > cp.b 0x80000000 0x9f020000 0x3c0000
  > bootm 0x9f020000
- flash factory image from OEM WebUI
- sysupgrade from ar71xx image

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath79/dts/ar7240_tplink_tl-wa701nd-v1.dts |  9 +++++
 .../ath79/dts/ar7240_tplink_tl-wa730re-v1.dts |  9 +++++
 .../ath79/dts/ar7240_tplink_tl-wa801nd-v1.dts |  9 +++++
 .../ath79/dts/ar7240_tplink_tl-wa901nd-v1.dts |  9 +++++
 target/linux/ath79/image/tiny-tp-link.mk      | 40 +++++++++++++++++++
 .../ath79/tiny/base-files/etc/board.d/01_leds |  6 ++-
 .../tiny/base-files/etc/board.d/02_network    |  4 ++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  4 ++
 8 files changed, 89 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/ar7240_tplink_tl-wa701nd-v1.dts
 create mode 100644 target/linux/ath79/dts/ar7240_tplink_tl-wa730re-v1.dts
 create mode 100644 target/linux/ath79/dts/ar7240_tplink_tl-wa801nd-v1.dts
 create mode 100644 target/linux/ath79/dts/ar7240_tplink_tl-wa901nd-v1.dts

diff --git a/target/linux/ath79/dts/ar7240_tplink_tl-wa701nd-v1.dts b/target/linux/ath79/dts/ar7240_tplink_tl-wa701nd-v1.dts
new file mode 100644
index 0000000000..6dd50018b2
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_tplink_tl-wa701nd-v1.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240_tplink_tl-wa.dtsi"
+
+/ {
+	model = "TP-Link TL-WA701ND v1";
+	compatible = "tplink,tl-wa701nd-v1", "qca,ar7240";
+};
diff --git a/target/linux/ath79/dts/ar7240_tplink_tl-wa730re-v1.dts b/target/linux/ath79/dts/ar7240_tplink_tl-wa730re-v1.dts
new file mode 100644
index 0000000000..e1277a8128
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_tplink_tl-wa730re-v1.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240_tplink_tl-wa.dtsi"
+
+/ {
+	model = "TP-Link TL-WA730RE v1";
+	compatible = "tplink,tl-wa730re-v1", "qca,ar7240";
+};
diff --git a/target/linux/ath79/dts/ar7240_tplink_tl-wa801nd-v1.dts b/target/linux/ath79/dts/ar7240_tplink_tl-wa801nd-v1.dts
new file mode 100644
index 0000000000..2db22c0e21
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_tplink_tl-wa801nd-v1.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240_tplink_tl-wa.dtsi"
+
+/ {
+	model = "TP-Link TL-WA801ND v1";
+	compatible = "tplink,tl-wa801nd-v1", "qca,ar7240";
+};
diff --git a/target/linux/ath79/dts/ar7240_tplink_tl-wa901nd-v1.dts b/target/linux/ath79/dts/ar7240_tplink_tl-wa901nd-v1.dts
new file mode 100644
index 0000000000..5422e5c600
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_tplink_tl-wa901nd-v1.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240_tplink_tl-wa.dtsi"
+
+/ {
+	model = "TP-Link TL-WA901ND v1";
+	compatible = "tplink,tl-wa901nd-v1", "qca,ar7240";
+};
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/image/tiny-tp-link.mk
index 8f6f2fe14a..bba83236d8 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -66,6 +66,36 @@ define Device/tplink_tl-mr3420-v2
 endef
 TARGET_DEVICES += tplink_tl-mr3420-v2
 
+define Device/tplink_tl-wa701nd-v1
+  $(Device/tplink-4m)
+  SOC := ar7240
+  DEVICE_MODEL := TL-WA701ND
+  DEVICE_VARIANT := v1
+  TPLINK_HWID := 0x07010001
+  SUPPORTED_DEVICES += tl-wa901nd
+endef
+TARGET_DEVICES += tplink_tl-wa701nd-v1
+
+define Device/tplink_tl-wa730re-v1
+  $(Device/tplink-4m)
+  SOC := ar7240
+  DEVICE_MODEL := TL-WA730RE
+  DEVICE_VARIANT := v1
+  TPLINK_HWID := 0x07300001
+  SUPPORTED_DEVICES += tl-wa901nd
+endef
+TARGET_DEVICES += tplink_tl-wa730re-v1
+
+define Device/tplink_tl-wa801nd-v1
+  $(Device/tplink-4m)
+  SOC := ar7240
+  DEVICE_MODEL := TL-WA801ND
+  DEVICE_VARIANT := v1
+  TPLINK_HWID := 0x08010001
+  SUPPORTED_DEVICES += tl-wa901nd
+endef
+TARGET_DEVICES += tplink_tl-wa801nd-v1
+
 define Device/tplink_tl-wa830re-v1
   $(Device/tplink-4m)
   SOC := ar7240
@@ -101,6 +131,16 @@ define Device/tplink_tl-wa850re-v2
 endef
 TARGET_DEVICES += tplink_tl-wa850re-v2
 
+define Device/tplink_tl-wa901nd-v1
+  $(Device/tplink-4m)
+  SOC := ar7240
+  DEVICE_MODEL := TL-WA901ND
+  DEVICE_VARIANT := v1
+  TPLINK_HWID := 0x09010001
+  SUPPORTED_DEVICES += tl-wa901nd
+endef
+TARGET_DEVICES += tplink_tl-wa901nd-v1
+
 define Device/tplink_tl-wa901nd-v2
   $(Device/tplink-4m)
   SOC := ar9132
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
index e8c6852406..c62fdfd083 100755
--- a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
@@ -42,7 +42,11 @@ on,n150r)
 	;;
 tplink,tl-mr3020-v1|\
 tplink,tl-mr3040-v2|\
-tplink,tl-wa830re-v1)
+tplink,tl-wa701nd-v1|\
+tplink,tl-wa730re-v1|\
+tplink,tl-wa801nd-v1|\
+tplink,tl-wa830re-v1|\
+tplink,tl-wa901nd-v1)
 	ucidef_set_led_netdev "lan" "LAN" "tp-link:green:lan" "eth0"
 	;;
 tplink,tl-mr3420-v2|\
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/02_network b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
index ff1e8110b4..29c55c98a1 100755
--- a/target/linux/ath79/tiny/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
@@ -32,9 +32,13 @@ ath79_setup_interfaces()
 	tplink,tl-mr10u|\
 	tplink,tl-mr3020-v1|\
 	tplink,tl-mr3040-v2|\
+	tplink,tl-wa701nd-v1|\
+	tplink,tl-wa730re-v1|\
+	tplink,tl-wa801nd-v1|\
 	tplink,tl-wa830re-v1|\
 	tplink,tl-wa850re-v1|\
 	tplink,tl-wa850re-v2|\
+	tplink,tl-wa901nd-v1|\
 	tplink,tl-wa901nd-v2|\
 	tplink,tl-wr703n)
 		ucidef_set_interface_lan "eth0"
diff --git a/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 0965a48743..6ae2dc5f94 100644
--- a/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -10,7 +10,11 @@ case "$FIRMWARE" in
 "ath9k-eeprom-pci-0000:00:00.0.bin")
 	case $board in
 	buffalo,whr-g301n|\
+	tplink,tl-wa701nd-v1|\
+	tplink,tl-wa730re-v1|\
+	tplink,tl-wa801nd-v1|\
 	tplink,tl-wa830re-v1|\
+	tplink,tl-wa901nd-v1|\
 	tplink,tl-wr841-v5|\
 	tplink,tl-wr941-v4)
 		caldata_extract "art" 0x1000 0xeb8
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
