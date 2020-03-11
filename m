Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E7180D1A
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 02:07:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zp77XaXh1rn34y/+35ONiOrOOTDbhCFQLsRItf85kVw=; b=HTPGQdWnL14p/a
	QO6nnpRIeOMdClGw0oyqb+HUp1a54ie5zAcbA0E4t4z4hE1uZzIudyx0Q0arApJXfzSG66Yz+QYag
	IoYjymfDiMFtL/ZXNscfluXT5osK4pNYojiACWDztLdcM/O859WJP2IwvWQ0GE/+xlO77xUIi3Dvs
	YCXjgjQRtg8HhWp306flUB9em6bsbFZzEA21h8XCCSvsO9JziViDEbgq0MQJN2+kuWzn1UZq0b98h
	FYSXqPPBq2XS+r6l84pxcPZPX9w4c17nUIKjiZl/V5dmueeR6bsSD6Bew2UVNgt6TohHYG3S/lLrV
	EDeiyYLUwd7YNGiXvRPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBpqF-0008FS-KD; Wed, 11 Mar 2020 01:07:23 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBpph-0007hn-5p
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 01:06:51 +0000
Received: by mail-pj1-x1036.google.com with SMTP id l36so105878pjb.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 18:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X4r9WYS6Iu7JRwKyfxzSlkvcp++KmtuGUl1p7YSaq6M=;
 b=IuLU51uRslE6UkzOCBFhqWzCxriZjups68q53F28uONrTvzUfr1atj45mnG3BA0Ymd
 6rlkqz5K8kiXHQoWicpZ+PIqvNfz1xlFTRK79Fw/ez3KshuFLzdHJe6BUkxDjUnA4gc/
 0kV7DMycIljwiZgJ1fkW4QyTD05mA5655CVguD1JKkJO+3wPKaPFwheRdEm/GvkcanO0
 ClVLyIWLgHo6H12sqjQvyayflrJlkAWZBwrhFYpLw4zg0PDQ3LBMURz0PxjX++NvAce0
 V5UdzHdGUFThMgCmiNDsChOu90B5+tt8EUeQaHeMzsnRwL6rpxf9EzYZQzB8XnpKNab9
 VSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X4r9WYS6Iu7JRwKyfxzSlkvcp++KmtuGUl1p7YSaq6M=;
 b=MISR5u/uSHfrhBYgrKjfjdRj3I7srUlBb7LWvX0iAAz0x8wzU8v6kIJKBrN5vJF78U
 PcPVkv8ICP5iRtKuMdbIrNpSnDQv0qNc9n5wWVNvN23KGhJCB+DFFl9cqLKq3y1/IO+9
 41Vh0ygaA2Bb8qzg+9AXU3LDKLHROlVT6lWaP1m0y+c/MlgTmcFYypO7iOf00+ndhuYu
 Kni+TZ9MPjxfkBNtwyTBjoETz4qUnxP8+wax0uBX3VY0q0kKcAWJNnfOa2Fg2096CGZn
 FlDcbW49omXcBuHjrFQOZSMwWNjg/AlSpk6RuPspbxcTSSGHfaKt9zukIaKJz+pMYrGT
 1gyA==
X-Gm-Message-State: ANhLgQ0JMHsZWZ2WFqyW4GKlbbWHWvsCXYiTRKubLTV+o3hsUiAZn0lx
 CBvL87nTMot7mETaOfuYoWLLouJFTSTNww==
X-Google-Smtp-Source: ADFU+vtyIjJ6OsMqRleHSGSCZxmZipHPGniI8GCGbeAnjDXQpGixbrLxmX6UQnSuz1QWGaSOArsMGg==
X-Received: by 2002:a17:90a:34c6:: with SMTP id m6mr730934pjf.13.1583888807804; 
 Tue, 10 Mar 2020 18:06:47 -0700 (PDT)
Received: from hawg.ptp ([2602:3f:e4ac:bf00::70])
 by smtp.gmail.com with ESMTPSA id m18sm46353680pgd.39.2020.03.10.18.06.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:06:47 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Mar 2020 18:06:04 -0700
Message-Id: <20200311010605.2818827-4-russell@personaltelco.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311010605.2818827-1-russell@personaltelco.net>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <20200311010605.2818827-1-russell@personaltelco.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_180649_270632_9B4C8778 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1036 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4 3/4] ath79: add support for
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

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22 +++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |  1 +
 .../generic/base-files/etc/board.d/02_network |  1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  1 +
 target/linux/ath79/image/generic-ubnt.mk      | 10 +++++++++
 5 files changed, 35 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts

diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
new file mode 100644
index 0000000000..99bf971eec
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
+	model = "Ubiquiti Bullet M AR7240";
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
index cf9dfd2b0d..98cdd6b7d4 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -245,6 +245,7 @@ tplink,tl-wr842n-v2)
 trendnet,tew-823dru)
 	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
 	;;
+ubnt,bullet-m-ar7240|\
 ubnt,bullet-m-ar7241|\
 ubnt,bullet-m-xw|\
 ubnt,nanostation-loco-m|\
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 24ba524c73..f0d96a1273 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -41,6 +41,7 @@ ath79_setup_interfaces()
 	tplink,re450-v1|\
 	tplink,re450-v2|\
 	tplink,tl-wr902ac-v1|\
+	ubnt,bullet-m-ar7240|\
 	ubnt,bullet-m-ar7241|\
 	ubnt,bullet-m-xw|\
 	ubnt,lap-120|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 225915ef3b..08d0e27acc 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -90,6 +90,7 @@ case "$FIRMWARE" in
 	tplink,tl-wr2543-v1|\
 	tplink,tl-wr842n-v1|\
 	ubnt,airrouter|\
+	ubnt,bullet-m-ar7240|\
 	ubnt,bullet-m-ar7241|\
 	ubnt,nanostation-loco-m|\
 	ubnt,nanostation-m|\
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 9752319209..5808d8f424 100644
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
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
