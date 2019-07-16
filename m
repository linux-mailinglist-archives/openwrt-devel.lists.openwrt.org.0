Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2E56A696
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jul 2019 12:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jxvnAPaH/CTib8/j/QKsG+x9OML83B+H6epvx542gaA=; b=Y62fTbvirIzZ7J
	hBD/oB0Aq+un8NKzwzz3YdJEr39Y1edtrvdmgSj97OcTMBZYq7+k4LTAycb5E39Q+HmHk02yVeu7a
	PxCZFYzggyLAWVuLtoloL9FfUaeCESLi2E3ucunRG4V5OZpOW9R/ZCAcm0jzod761abySxpwU+W4e
	pXYmX4i2YfOY6jujuIjCP1QbgrM98ZUYGyVS8ISrZGs1X94WB1+VEuNSWBE8zPkv5Uye8tI33cQ+N
	EcPEsd6rx9NngO/DnO20oc3e8/hXZPPyf+md10cZK8+jXagWs+Cy12VdVeelA1vkzHQBIy7kNmjg6
	fcmKn18LQvro9lERqLWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKjo-0000bL-7b; Tue, 16 Jul 2019 10:31:12 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKjb-0000Yx-QH
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jul 2019 10:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=M5w8Kxqqt6MyRysDPOL1P5PolaWir3QsOrR1rPjew7g=; 
 b=B+SFkrSDk9aM30snjv9LNajDtAfSFupfQYm1KJumD740VMYoQK6hwUshIs15qPs6BGqID27Icm6MrjiYceHTV681B+snEUwwGOZjJcuf975/TdoThPN3B3udHySLcwjMWvvQ6STXNaS2s/J+CIqMsLpFHH0BADgGnFVKloSW3C0=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 16 Jul 2019 12:30:41 +0200
Message-Id: <20190716103041.15778-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a05:a1c7:1:b101:6da4:6fa2:b15:339e
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1hnKjY-0002vb-4N
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a05:a1c7:1:b101:6da4:6fa2:b15:339e]
 (helo=lappi.newmedia-net.de)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1hnKjY-0002vb-4N; Tue, 16 Jul 2019 12:30:56 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_033100_285699_DBB8AFD5 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-NV1
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

    SoC:    Mediatek MT7621A
    CPU:    4x 880Mhz
    Cache:  32 KB I-Cache and 32 KB D-Cach
            256 KB L2 Cache (shared by Dual-Core)
    RAM:    DDR3 512MB 16bits BUS
    FLASH:  16MB
    Switch: Mediatek Gigabit Switch (2 x LAN, 1 x WAN)
    POE:    (1x PD, 2x PSE)
    USB:    1x 3.0
    PCI:    3x Mini PCIe (3 USB2.0 + 2 x UIM interface)
    GPS:    Quectel L70B
    SIM:    2 Slots
    BTN:    Reset
    LED:    - Power
            - Ethernet
            - Wifi
            - USB
    UART:  UART is present as Pads with throughholes on the PCB.
	   They are located on left side.
           3.3V - RX - GND - TX / 57600-8N1
           3.3V is the square pad

    Installation
    ------------
    The stock image is a modified openwrt and can be overflashed via sysupgrade -F

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 target/linux/ramips/base-files/etc/board.d/02_network |  3 +++
 target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts  |  9 +++++++++
 target/linux/ramips/image/mt7621.mk                   | 10 ++++++++++
 3 files changed, 22 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index c3b7cd4390..c348b91a36 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -228,6 +228,9 @@ ramips_setup_interfaces()
 	asiarf,ap7621-001)
 		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
 		;;
+	asiarf,ap7621-nv1)
+		ucidef_add_switch "switch0" "0:wan" "2:lan" "3:lan" "6@eth0"
+		;;
 	asiarf,awapn2403)
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:wan" "6@eth0"
diff --git a/target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts b/target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts
new file mode 100644
index 0000000000..93af3950d2
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+#include "mt7621_asiarf_ap7621-001.dts"
+
+/ {
+	compatible = "asiarf,ap7621-nv1", "mediatek,mt7621-soc";
+	model = "AsiaRF AP7621-NV1";
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index e2928c80ce..1eb1a4cb99 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -106,6 +106,16 @@ define Device/asiarf_ap7621-001
 endef
 TARGET_DEVICES += asiarf_ap7621-001
 
+define Device/asiarf_ap7621-nv1
+  MTK_SOC := mt7621
+  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  DEVICE_VENDOR := AsiaRF
+  DEVICE_MODEL := AP7621-NV1
+  DEVICE_PACKAGES := \
+	kmod-sdhci-mt7620 kmod-mt76x2 kmod-usb3
+endef
+TARGET_DEVICES += asiarf_ap7621-nv1
+
 define Device/asus_rt-ac57u
   MTK_SOC := mt7621
   DEVICE_VENDOR := ASUS
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
