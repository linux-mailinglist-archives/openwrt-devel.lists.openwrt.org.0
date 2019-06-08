Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF5D3A093
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 17:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOAG2AabYTMwho9djKgJu8UoXUvrGVrylfMNcipqqmA=; b=U7sjMlOSmAWPhj
	4UPnBVu8ls91x7+lNCHbaveQhvUC9i7xdzse+aPlDFIzmH4+jM0G9ogQqLzuFprsytStq2JiUJ6JF
	OpDJQazIHA+7Db4ddYXbD/YAQRteKqYqwERyAG0mrubeu0xdRMQqfnWAfZVvlohlr3ASIDPYnDq5R
	ULe3dhEBqyuS5PC9o+WoFgB4BBp44EF9SNRPyGYU8Tt4mKDczoLIvzIMlWKTeCaT1FoKiIsE99guG
	jGRAmrVZTsXp74+zodwyL9dZ1ywJIVfOKKA5lDtQCht6XQuAq3apvguAYjtujs1dhmH9DD2iAWwMv
	+BaiopLtitWcW3qHtK/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZdh3-0006Ua-5o; Sat, 08 Jun 2019 15:55:45 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZdgh-0006M3-R0
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 15:55:25 +0000
Received: by mail-pf1-x429.google.com with SMTP id j2so2854037pfe.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 08:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ng4M8KlwQ2ePIzklqM0YE0UdsI3uK7LqiYIzYW1MwTk=;
 b=DLNbqgYJOdQnR7JNNJ8h7zuRaRGm0YkunuTjwUplV0GjqW/qXr0yPyMv0WNlAn2MyX
 fU+34cGzuAym5rwBTdRbUfLmYWDKkfbjDWbwcb+QBLXibeUa8y41E05Dl5PoRbauXf6f
 sydlcYmth43kBO+LjdBKoHP/OA0Jg7zX8ZF7lpDLWixvOScn5Uy7ETTO2/G3dfs1Q0in
 6bhiVY2mHiImG937WmEeMR6T8+a9FZxbEATC04asqdZTRF5s4uPYn8FZSYAC/KVaP1Mw
 AbR24OD102lbKeOwYRUu/i+/5gbqLlHqr/Jt1guk/ygfPCkVncgWFnqAyJ1jLuQwgsiW
 fCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ng4M8KlwQ2ePIzklqM0YE0UdsI3uK7LqiYIzYW1MwTk=;
 b=Ri7SKQ7zOaeGjhV9SX6fqvy7R4dN1jzTRCz7BkKDnUwPhfW1uplvT/ihL/lDm7P9X9
 /RhZHayX/oXp5gI40yNOTZN2L/DbdWCMzplcejS7R1SU1tZgUgmLZlEplmfPmHSBGRA6
 9aUYkw7UvpqKFkj0op+6x67LcCcdTWz/UEwroz4t4GBsnscIYB+aAm8iQBkR3tTOj3Xn
 A5xcKXVLcvtvUOJrOGJ2uhXIGy/zsI0kd88CfkUGrh1VALfXHHYfdamL2jlgZQQa5grW
 e/t3Wh4LHfdf+Np4kgA0KNEG+R5O+nj+7+2iYfbNAvp4bVlapKbolwqus7YxR2gA3Jzz
 SaIg==
X-Gm-Message-State: APjAAAVXyaOdhbU7G2eUpYvpZOrK6odhTMSc+OwzUuYkcxwLL6Yu4iTq
 YQySvVFZFPaX6UzmzuGADKA=
X-Google-Smtp-Source: APXvYqz2OsbN8I72yQMzcl9EN1D8SVzHd2CsqDATGdmEqK/CQFlJPrs+Gsyub2Zfr23YBMD5fPkIZw==
X-Received: by 2002:a65:448a:: with SMTP id l10mr7907761pgq.53.1560009323020; 
 Sat, 08 Jun 2019 08:55:23 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id d19sm5004249pjs.22.2019.06.08.08.55.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 08:55:22 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: ynezz@true.cz
Date: Sat,  8 Jun 2019 15:54:42 +0000
Message-Id: <20190608155442.16632-2-yszhou4tech@gmail.com>
In-Reply-To: <20190608155442.16632-1-yszhou4tech@gmail.com>
References: <20190608155442.16632-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_085523_871726_B9972BB3 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: port HiWiFi HC6361 from ar71xx
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

LED name for WLAN changed from hiwifi:blue:wlan2p4 to hiwifi:blue:wlan,
to align with other boards

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 .../ath79/base-files/etc/board.d/01_leds      |   4 +
 .../linux/ath79/dts/ar9331_hiwifi_hc6361.dts  | 141 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |  12 ++
 3 files changed, 157 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9331_hiwifi_hc6361.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 626842b072..fdca6e9457 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -88,6 +88,10 @@ glinet,gl-ar300m-lite)
 glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
+hiwifi,hc6361)
+	ucidef_set_led_netdev "inet" "INET" "hiwifi:blue:internet" "eth1"
+	ucidef_set_led_wlan "wlan" "WLAN" "hiwifi:blue:wlan" "phy0tpt"
+	;;
 netgear,wnr612-v2|\
 on,n150r)
 	ucidef_set_led_netdev "wan" "WAN" "netgear:green:wan" "eth0"
diff --git a/target/linux/ath79/dts/ar9331_hiwifi_hc6361.dts b/target/linux/ath79/dts/ar9331_hiwifi_hc6361.dts
new file mode 100644
index 0000000000..227dafe741
--- /dev/null
+++ b/target/linux/ath79/dts/ar9331_hiwifi_hc6361.dts
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9331.dtsi"
+
+/ {
+	model = "HiWiFi HC6361";
+	compatible = "hiwifi,hc6361", "qca,ar9331";
+
+	aliases {
+		serial0 = &uart;
+		led-boot = &system;
+		led-failsafe = &system;
+		led-running = &system;
+		led-upgrade = &system;
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		wlan: wlan {
+			label = "hiwifi:blue:wlan";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+		system: system {
+			label = "hiwifi:blue:system";
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+		internet: internet {
+			label = "hiwifi:blue:internet";
+			gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	reg_usb_vbus: regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio 20 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&spi {
+	status = "okay";
+	num-cs = <1>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot: partition@0 {
+				reg = <0x0 0x10000>;
+				label = "u-boot";
+				read-only;
+			};
+
+			bdinfo: partition@10000 {
+				reg = <0x10000 0x10000>;
+				label = "bdinfo";
+				read-only;
+			};
+
+			firmware: partition@20000 {
+				compatible = "denx,uimage";
+				reg = <0x20000 0xfc0000>;
+				label = "firmware";
+			};
+
+			backup: partition@fe0000 {
+				reg = <0xfe0000 0x10000>;
+				label = "backup";
+				read-only;
+			};
+
+			art: partition@ff0000 {
+				reg = <0xff0000 0x10000>;
+				label = "art";
+				read-only;
+			};
+		};
+	};
+};
+
+&gpio {
+	status = "okay";
+};
+
+&uart {
+	status = "okay";
+};
+
+&eth0 {
+	status = "okay";
+	mtd-mac-address-ascii = <&bdinfo 0x18a>;
+	mtd-mac-address-increment = <1>;
+};
+
+&eth1 {
+	status = "okay";
+	mtd-mac-address-ascii = <&bdinfo 0x18a>;
+};
+
+&usb {
+	status = "okay";
+	dr_mode = "host";
+	vbus-supply = <&reg_usb_vbus>;
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+	mtd-mac-address-ascii = <&bdinfo 0x18a>;
+};
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index d5f67b88a6..d04ada88ab 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -406,6 +406,18 @@ define Device/glinet_gl-x750
 endef
 TARGET_DEVICES += glinet_gl-x750
 
+define Device/hiwifi_hc6361
+  ATH_SOC := ar9331
+  DEVICE_TITLE := HiWiFi HC6361
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-chipidea2 kmod-usb-storage \
+	kmod-fs-ext4 kmod-nls-iso8859-1 e2fsprogs
+  BOARDNAME := HiWiFi-HC6361
+  IMAGE_SIZE := 16128k
+  # ih_name must start with "tw150v1"
+  UIMAGE_NAME := tw150v1 OpenWrt Linux-$(LINUX_VERSION)
+endef
+TARGET_DEVICES += hiwifi_hc6361
+
 define Device/iodata_etg3-r
   ATH_SOC := ar9342
   DEVICE_TITLE := I-O DATA ETG3-R

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
