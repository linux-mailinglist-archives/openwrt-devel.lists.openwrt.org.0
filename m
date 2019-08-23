Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860B19AB1C
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 11:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MYytWgbAQ5UA2tJW1cuDc8MVKywDXXRuBTaZvWiUHiU=; b=BhhAjjgtOZR3oG0By+iVsjG/Y
	jGMir1+m7DRF3NrKBBfByIVP2bNO1trT+hSugrmDvOklwCvLucIbjHLxkcKeCmx/AR1NuKw0KiPrz
	UQtXNmciweTdlTZ5pchvW1FqvRdg2oS55+nzXhNuHZ5R6287AHhDcbxylEdpvq42dWC05jCT/Tdu2
	7Y4jZyjTSPSzogaE0yRjfq/XAdh1Xu6x7UiKGPSpMVvFyGy99Tmllc/Vd3L6t+rWn0Xp4u8lXcWpT
	YhO81CD5/nsCZr+C/rtSYk12QDqfk8CZWX7ZTilx2sPQt3nkCBRUfha8J3L7E6EYPPncnNgTgp1qW
	/PHuTjflQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Xx-00047H-Mi; Fri, 23 Aug 2019 09:07:49 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15V4-00015G-FA
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 09:04:55 +0000
Received: by mail-pl1-x62c.google.com with SMTP id h3so5221520pls.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 02:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fUla/AeScFVtHw+XpdUTT5TDDshtqXept7QIroLO5f8=;
 b=V0F+fixDgNtwdO2WBfJSHcwTOvG6wWDgqxZ9Dp+/FldIWMUCkUvo4tDymS0K+rDt8V
 P2SoR6jrakEebe7kGpW7vwkvxDaov3dFhkvSyybjQvsnXvdlGch9PqBL0kMQEa1KAEt0
 66WbOCAZ+000DnYE0jFfJ8VkZQrrgh10KL1q4FLj4FlIW/PQi+/DWiLRnjjh3LN2b0I5
 xcmmXAG1KToX5839D5y0ubq8ZKWTzMqegVF2PgRIvrLEBPHZZDqRh1IxIixR+ewmd7tx
 0Qu+hxNQPR4ujveRtU1b1XyqpSuk6M1bNBGlEENythW8vZBOwnkkiULqzSM2D+PTaoXX
 ownA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fUla/AeScFVtHw+XpdUTT5TDDshtqXept7QIroLO5f8=;
 b=FehOiw79IizHxVjldvUJfjHwMa0Ix9cN8ljNkopHrTDvYvZmkkDIuSNeg5uY3D3uEV
 NT8AnVLrMigD3E97dIexwjxKZEjmlnUyU/D1wIDaabCZBENjWu1LsjxoefwlCYwTLF2U
 LUekOt8QPlom4lQ0xPCZtKjZdB4j48yDgfRIDLB+ma8w0Ph4qKaED0DqAhexPYTXt5O8
 YocW3WoD7yQ3aObxY8HHUodDVMDc32NhA/y2HyeJ3gpiuTSzSg07BFLpFyFcCxlr2nhU
 zP1CukJzdnV7STUkf4aFqKN6eAKMFD3ihbnmGu5Lk2BXROL/SSm8mzDXYsJnqykH8XaE
 FtKA==
X-Gm-Message-State: APjAAAVbm/6KE/A1rn7MG81xnruO5c6WhDb9bavM/rWfB7QgY2HVEC1n
 40vrLpDNabizffjWwSWjalEf/TT8tlY5BQlQA1w=
X-Google-Smtp-Source: APXvYqyS/mdrw/gVF2TRA4EDpemozF9nw+p5hWSnSA7482paAFB2XlJyLr4TTrTk0gkhOoMZ2eCRI7IebJxa5CZQXW0=
X-Received: by 2002:a17:902:3204:: with SMTP id
 y4mr3609373plb.156.1566551088114; 
 Fri, 23 Aug 2019 02:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <3f82a09f-916b-3ba0-c595-b1d5fc7226cc@birger-koblitz.de>
In-Reply-To: <3f82a09f-916b-3ba0-c595-b1d5fc7226cc@birger-koblitz.de>
From: =?UTF-8?B?R8OhYm9yIFZhcmdh?= <vargagab@gmail.com>
Date: Fri, 23 Aug 2019 11:04:36 +0200
Message-ID: <CADQ6-wscaDh7H84CrkpXbW=HfHSLtxvjSERzLf-GjpCBq7nbZA@mail.gmail.com>
To: Birger Koblitz <mail@birger-koblitz.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020450_992187_7BB62F56 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vargagab[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add Asus RT-AC85P
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7050073028255452374=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7050073028255452374==
Content-Type: multipart/alternative; boundary="0000000000002131b50590c5190f"

--0000000000002131b50590c5190f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

Although it looks like the Asus RT-AC85P and the Asus RT-AC65P models are
identical, but I have separated them into two dts and have introduced the
HW version into the names (for the new versions in the future).

I have an alternative installation method via SSH:

Note: The user/password for SSH is identical with the one used in the
Web-interface.

1. Complete the initial setup wizard.
2. Activate SSH under "Administration" -> "System".
3. Transfer the OpenWrt factory image via scp:
 > scp openwrt-ramips-mt7621-asus_rt-ac65p-r01-squashfs-factory.bin
admin@192.168.50.1:/tmp
4. Connect via SSH to the router.
 > ssh admin@192.168.50.1
5. Write the OpenWrt image to flash.
 > mtd-write -i
/tmp/openwrt-ramips-mt7621-asus_rt-ac65p-r01-squashfs-factory.bin -d linux
6. Reboot the router
 > reboot

Another thing: I don't know, if it's good method to replace the second
firmware partition with OpenWrt image during sysupgrade. When we don't do
that, than we have always a factory firmware on the secondary firmware
partition, so the back to the factory firmware would be much easier.

So, the new patch for the separated models:

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
b/target/linux/ramips/base-files/etc/board.d/02_network
index c0de9d4e50..110e921f38 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -300,6 +300,8 @@ ramips_setup_interfaces()
  ucidef_add_switch "switch0" \
  "0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
  ;;
+ asus,rt-ac65p-r01|\
+ asus,rt-ac85p-r01|\
  dlink,dir-860l-b1|\
  elecom,wrc-1167ghbk2-s|\
  elecom,wrc-1900gst|\
@@ -537,6 +539,10 @@ ramips_setup_macs()
  lan_mac=3D$(mtd_get_mac_binary factory 0xe000)
  wan_mac=3D$(mtd_get_mac_binary factory 0xe006)
  ;;
+ asus,rt-ac65p-r01|\
+ asus,rt-ac85p-r01)
+ wan_mac=3D$(mtd_get_mac_ascii u-boot-env et1macaddr)
+ ;;
  asus,rt-n56u)
  lan_mac=3D$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
  wan_mac=3D$(mtd_get_mac_binary factory 0x8004)
diff --git a/target/linux/ramips/base-files/lib/upgrade/platform.sh
b/target/linux/ramips/base-files/lib/upgrade/platform.sh
index a65492a309..7a50c61b1d 100755
--- a/target/linux/ramips/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh
@@ -18,9 +18,18 @@ platform_do_upgrade() {
  mikrotik,rbm33g)
  [ -z "$(rootfs_type)" ] && mtd erase firmware
  ;;
+ asus,rt-ac65p-r01|\
+ asus,rt-ac85p-r01)
+ echo "Backing up firmware"
+ dd if=3D/dev/mtd4 bs=3D1024 count=3D4096  > /tmp/backup_firmware.bin
+ dd if=3D/dev/mtd5 bs=3D1024 count=3D52224 >> /tmp/backup_firmware.bin
+ mtd -e firmware2 write /tmp/backup_firmware.bin firmware2
+ ;;
  esac

  case "$board" in
+ asus,rt-ac65p-r01|\
+ asus,rt-ac85p-r01|\
  hiwifi,hc5962|\
  netgear,r6220|\
  netgear,r6350|\
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac65p-r01.dts
b/target/linux/ramips/dts/mt7621_asus_rt-ac65p-r01.dts
new file mode 100644
index 0000000000..3d2d1bfe6d
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac65p-r01.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621_asus_rt-ac85p.dtsi"
+
+/ {
+    compatible =3D "asus,rt-ac65p-r01", "mediatek,mt7621-soc";
+    model =3D "Asus RT-AC65P R01";
+};
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac85p-r01.dts
b/target/linux/ramips/dts/mt7621_asus_rt-ac85p-r01.dts
new file mode 100644
index 0000000000..115d52c71c
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p-r01.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621_asus_rt-ac85p.dtsi"
+
+/ {
+    compatible =3D "asus,rt-ac85p-r01", "mediatek,mt7621-soc";
+    model =3D "Asus RT-AC85P R01";
+};
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dtsi
b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dtsi
new file mode 100644
index 0000000000..aa1229ab03
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dtsi
@@ -0,0 +1,161 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+    aliases {
+        led-boot =3D &led_power;
+        led-failsafe =3D &led_power;
+        led-running =3D &led_power;
+        led-upgrade =3D &led_power;
+    };
+
+    chosen {
+        bootargs =3D "console=3DttyS0,57600";
+    };
+
+    palmbus: palmbus@1E000000 {
+        i2c@900 {
+            status =3D "okay";
+        };
+    };
+
+    keys {
+        compatible =3D "gpio-keys";
+
+        reset {
+            label =3D "reset";
+            gpios =3D <&gpio0 3 GPIO_ACTIVE_LOW>;
+            linux,code =3D <KEY_RESTART>;
+        };
+
+        wps {
+            label =3D "wps";
+            gpios =3D <&gpio0 6 GPIO_ACTIVE_LOW>;
+            linux,code =3D <KEY_WPS_BUTTON>;
+        };
+    };
+
+    leds {
+        compatible =3D "gpio-leds";
+
+        led_power: power {
+            label =3D "rt-ac85p:blue:power";
+            gpios =3D <&gpio0 4 GPIO_ACTIVE_LOW>;
+            linux,default-trigger =3D "phy0tpt";
+        };
+        wlan2g {
+            label =3D "rt-ac85p:blue:wlan2g";
+            gpios =3D <&gpio0 10 GPIO_ACTIVE_LOW>;
+            linux,default-trigger =3D "phy0radio";
+        };
+
+        wlan5g {
+            label =3D "rt-ac85p:blue:wlan5g";
+            gpios =3D <&gpio0 8 GPIO_ACTIVE_LOW>;
+            linux,default-trigger =3D "phy1radio";
+        };
+    };
+};
+
+&sdhci {
+    status =3D "okay";
+};
+
+&nand {
+    status =3D "okay";
+
+    partitions {
+        compatible =3D "fixed-partitions";
+        #address-cells =3D <1>;
+        #size-cells =3D <1>;
+
+        partition@0 {
+            label =3D "u-boot";
+            reg =3D <0x0 0xe0000>;
+            read-only;
+        };
+
+        partition@e0000 {
+            label =3D "u-boot-env";
+            reg =3D <0xe0000 0x100000>;
+            read-only;
+        };
+
+        factory: partition@1e0000 {
+            label =3D "factory";
+            reg =3D <0x1e0000 0x100000>;
+            read-only;
+        };
+
+        factory2: partition@2e0000 {
+            label =3D "factory2";
+            reg =3D <0x2e0000 0x100000>;
+            read-only;
+        };
+
+        partition@3e0000 {
+            label =3D "kernel";
+            reg =3D <0x3e0000 0x400000>;
+        };
+
+        partition@7e0000 {
+            label =3D "ubi";
+            reg =3D <0x7e0000 0x2e00000>;
+        };
+
+        partition@35e0000 {
+            label =3D "firmware2";
+            reg =3D <0x35e0000 0x3200000>;
+        };
+    };
+};
+
+&pcie {
+    status =3D "okay";
+};
+
+&pcie0 {
+    wifi0: wifi@0,0 {
+        compatible =3D "pci14c3,7603";
+        reg =3D <0x0000 0 0 0 0>;
+        mediatek,mtd-eeprom =3D <&factory 0x0000>;
+        ieee80211-freq-limit =3D <2400000 2500000>;
+        mtd-mac-address =3D <&factory 0x4>;
+    };
+};
+
+&pcie1 {
+    wifi1: wifi@0,0 {
+        compatible =3D "pci14c3,7662";
+        reg =3D <0x0000 0 0 0 0>;
+        mediatek,mtd-eeprom =3D <&factory 0x8000>;
+        ieee80211-freq-limit =3D <5000000 6000000>;
+        mtd-mac-address =3D <&factory 0x8004>;
+    };
+};
+
+&ethernet {
+    mtd-mac-address =3D <&factory 0xe000>;
+    mediatek,portmap =3D "wllll";
+    port@5 {
+        status =3D "disabled";
+    };
+};
+
+&i2c {
+    status =3D "disabled";
+};
+
+&pinctrl {
+    state_default: pinctrl0 {
+        gpio {
+            ralink,group =3D "uart2", "uart3", "i2c";
+            ralink,function =3D "gpio";
+        };
+    };
+};
diff --git a/target/linux/ramips/image/mt7621.mk
b/target/linux/ramips/image/mt7621.mk
index d32feb7eab..7efe2cdc7f 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -115,6 +115,40 @@ define Device/asus_rt-ac57u
 endef
 TARGET_DEVICES +=3D asus_rt-ac57u

+define Device/asus_rt-ac65p-r01
+  MTK_SOC :=3D mt7621
+  DEVICE_VENDOR :=3D ASUS
+  DEVICE_MODEL :=3D RT-AC65P
+  DEVICE_VARIANT :=3D R01
+  IMAGE_SIZE :=3D 51200k
+  UBINIZE_OPTS :=3D -E 5
+  BLOCKSIZE :=3D 128k
+  PAGESIZE :=3D 2048
+  KERNEL_SIZE :=3D 4096k
+  IMAGES +=3D factory.bin
+  IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
+  IMAGE/factory.bin :=3D append-kernel | pad-to $$(KERNEL_SIZE) | append-u=
bi
| check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES :=3D kmod-usb3 kmod-mt7615e wpad-basic uboot-envtools
+endef
+TARGET_DEVICES +=3D asus_rt-ac65p-r01
+
+define Device/asus_rt-ac85p-r01
+  MTK_SOC :=3D mt7621
+  DEVICE_VENDOR :=3D ASUS
+  DEVICE_MODEL :=3D RT-AC85P
+  DEVICE_VARIANT :=3D R01
+  IMAGE_SIZE :=3D 51200k
+  UBINIZE_OPTS :=3D -E 5
+  BLOCKSIZE :=3D 128k
+  PAGESIZE :=3D 2048
+  KERNEL_SIZE :=3D 4096k
+  IMAGES +=3D factory.bin
+  IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
+  IMAGE/factory.bin :=3D append-kernel | pad-to $$(KERNEL_SIZE) | append-u=
bi
| check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES :=3D kmod-usb3 kmod-mt7615e wpad-basic uboot-envtools
+endef
+TARGET_DEVICES +=3D asus_rt-ac85p-r01
+
 define Device/buffalo_wsr-1166dhp
   MTK_SOC :=3D mt7621
   IMAGE/sysupgrade.bin :=3D trx | pad-rootfs | append-metadata
diff --git
a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
index d50e689110..d2d69b4ff4 100644
---
a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
+++
b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
@@ -4256,7 +4256,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +#endif /* __NAND_DEF_H__ */
 --- /dev/null
 +++ b/drivers/mtd/nand/nand_device_list.h
-@@ -0,0 +1,59 @@
+@@ -0,0 +1,60 @@
 +/* Copyright Statement:
 + *
 + * This software/firmware and related documentation ("MediaTek Software")
are
@@ -4308,6 +4308,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 + {0xC8DC, 0x909554, 5, 8, 512, 128, 2048, 64, 0x30C77fff, "F59L4G81A", 0}=
,
 + {0xECD3, 0x519558, 5, 8, 1024, 128, 2048, 64, 0x44333, "K9K8G8000", 0},
 +    {0xC2F1, 0x801DC2, 4, 8, 128, 128, 2048, 64, 0x30C77fff,
"MX30LF1G08AA", 0},
++    {0xC2F1, 0x809502, 4, 8, 128, 128, 2048, 64, 0x30C77fff,
"MX30LF1G18AC", 0},
 +    {0x98D3, 0x902676, 5, 8, 1024, 256, 4096, 224, 0x00C25332,
"TC58NVG3S0F", 0},
 +    {0x01DA, 0x909546, 5, 8, 256, 128, 2048, 128, 0x30C77fff,
"S34ML02G200TF", 0},
 +    {0x01DC, 0x909556, 5, 8, 512, 128, 2048, 128, 0x30C77fff,
"S34ML04G200TF", 0},



Birger Koblitz <mail@birger-koblitz.de> ezt =C3=ADrta (id=C5=91pont: 2019. =
aug. 4.,
V, 6:46):

> ramips: add Asus RT-AC85P
>
> SoC:    MediaTek MT7621AT dual-core @ 880MHz
> RAM:    256M (Winbond W632GG6KB-1)
> FLASH:    128MB (Macronix MX30LF1G18AC-TI)
> WiFi:    - 2.4GHz MediaTek MT7615N bgn
>     - 5GHz MediaTek MT7615N nac
> Switch: SoC integrated Gigabit Switch (4 x LAN, 1 x WAN)
> USB:    1 x USB 3.1 (Gen 1)
> BTN:    Reset, WPS
> LED:    - Power (blue)
>     - 5Ghz (blue)
>     - 2.4GHz (blue)
>     - Internet (blue)
>     - 4x LAN (blue)
>     (LAN/WAN leds are not controllable by GPIOs)
> UART:     UART is present as Pads marked J4 on the PCB.
>     3.3V - TX - RX - GND / 57600-8N1
>     3.3V is the square pad
> MAC:    The MAC address on the router-label matches the MAC of
>     the 2.4 GHz WiFi.
>     LAN and WAN MAC are identical: MAC_LABEL+4
>     5 GHz WiFi MAC: also MAC_LABEL+4
>
>
> Installation
> ------------
> Via U-Boot tftpd:
> Switch on device, within 2s press reset button and keep pressed
> until power LED starts blinking slowly.
> Upload factory image via tftp put, the router's ip is 192.168.1.1
> and expects the client on 192.168.1.75.
>
> The images also work on the Asus RT-AC65P models as tested by Gabor.
>
> Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>
> Tested-by: Gabor Varga <vargagab@gmail.com>
>
> ---
>
> v2: Corrected sorting of entries in 02_network
>     Model name corrected in .dts
>     Whitespace fixes in .dts
>     wifi0/1 labels added to wifi nodes in .dts
>     Device name capitalized in mt7621.mk
>
> v3: Added firmware backup to firmware2 partition before sysupgrade
>     Corrected modules included in image
>
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index 2f9a02256e..ab90041d92 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -231,6 +231,17 @@ ramips_setup_interfaces()
>          ucidef_add_switch "switch0" \
>              "0:lan" "1:wan" "6@eth0"
>          ;;
> +    asus,rt-ac85p|\
> +    dlink,dir-860l-b1|\
> +    elecom,wrc-1167ghbk2-s|\
> +    elecom,wrc-1900gst|\
> +    elecom,wrc-2533gst|\
> +    huawei,hg255d|\
> +    iodata,wn-ax1167gr|\
> +    iodata,wn-gx300gr)
> +        ucidef_add_switch "switch0" \
> +            "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
> +        ;;
>      asus,rt-n15|\
>      belkin,f9k1109v1|\
>      sitecom,wl-351)
> @@ -298,16 +309,6 @@ ramips_setup_interfaces()
>          ucidef_add_switch "switch0" \
>              "0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
>          ;;
> -    dlink,dir-860l-b1|\
> -    elecom,wrc-1167ghbk2-s|\
> -    elecom,wrc-1900gst|\
> -    elecom,wrc-2533gst|\
> -    huawei,hg255d|\
> -    iodata,wn-ax1167gr|\
> -    iodata,wn-gx300gr)
> -        ucidef_add_switch "switch0" \
> -            "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
> -        ;;
>      dlink,dwr-118-a1)
>          ucidef_add_switch "switch0" \
>              "1:lan:2" "2:lan:3" "3:lan:1" "4:lan:0" "5:wan" "6@eth0"
> @@ -531,6 +532,9 @@ ramips_setup_macs()
>          lan_mac=3D$(mtd_get_mac_binary factory 57344)
>          wan_mac=3D$(mtd_get_mac_binary factory 57350)
>          ;;
> +    asus,rt-ac85p)
> +        wan_mac=3D$(mtd_get_mac_ascii u-boot-env et1macaddr)
> +        ;;
>      asus,rt-n56u)
>          lan_mac=3D$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address=
)")
>          wan_mac=3D$(mtd_get_mac_binary factory 32772)
> diff --git a/target/linux/ramips/base-files/lib/upgrade/platform.sh
> b/target/linux/ramips/base-files/lib/upgrade/platform.sh
> index a65492a309..cd9d8ae650 100755
> --- a/target/linux/ramips/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh
> @@ -18,9 +18,16 @@ platform_do_upgrade() {
>      mikrotik,rbm33g)
>          [ -z "$(rootfs_type)" ] && mtd erase firmware
>          ;;
> +       asus,rt-ac85p)
> +        echo "Backing up firmware"
> +        dd if=3D/dev/mtd4 bs=3D1024 count=3D4096  > /tmp/backup_firmware=
.bin
> +        dd if=3D/dev/mtd5 bs=3D1024 count=3D52224 >> /tmp/backup_firmwar=
e.bin
> +        mtd -e firmware2 write /tmp/backup_firmware.bin firmware2
> +        ;;
>      esac
>
>      case "$board" in
> +    asus,rt-ac85p|\
>      hiwifi,hc5962|\
>      netgear,r6220|\
>      netgear,r6350|\
> diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
> b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
> new file mode 100644
> index 0000000000..7aea207fad
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
> @@ -0,0 +1,164 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +    compatible =3D "asus,rt-ac85p", "mediatek,mt7621-soc";
> +    model =3D "Asus RT-AC85P";
> +
> +    aliases {
> +        led-boot =3D &led_power;
> +        led-failsafe =3D &led_power;
> +        led-running =3D &led_power;
> +        led-upgrade =3D &led_power;
> +    };
> +
> +    chosen {
> +        bootargs =3D "console=3DttyS0,57600";
> +    };
> +
> +    palmbus: palmbus@1E000000 {
> +        i2c@900 {
> +            status =3D "okay";
> +        };
> +    };
> +
> +    keys {
> +        compatible =3D "gpio-keys";
> +
> +        reset {
> +            label =3D "reset";
> +            gpios =3D <&gpio0 3 GPIO_ACTIVE_LOW>;
> +            linux,code =3D <KEY_RESTART>;
> +        };
> +
> +        wps {
> +            label =3D "wps";
> +            gpios =3D <&gpio0 6 GPIO_ACTIVE_LOW>;
> +            linux,code =3D <KEY_WPS_BUTTON>;
> +        };
> +    };
> +
> +    leds {
> +        compatible =3D "gpio-leds";
> +
> +        led_power: power {
> +            label =3D "rt-ac85p:blue:power";
> +            gpios =3D <&gpio0 4 GPIO_ACTIVE_LOW>;
> +            linux,default-trigger =3D "phy0tpt";
> +        };
> +        wlan2g {
> +            label =3D "rt-ac85p:blue:wlan2g";
> +            gpios =3D <&gpio0 10 GPIO_ACTIVE_LOW>;
> +            linux,default-trigger =3D "phy0radio";
> +        };
> +
> +        wlan5g {
> +            label =3D "rt-ac85p:blue:wlan5g";
> +            gpios =3D <&gpio0 8 GPIO_ACTIVE_LOW>;
> +            linux,default-trigger =3D "phy1radio";
> +        };
> +    };
> +};
> +
> +&sdhci {
> +    status =3D "okay";
> +};
> +
> +&nand {
> +    status =3D "okay";
> +
> +    partitions {
> +        compatible =3D "fixed-partitions";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        partition@0 {
> +            label =3D "u-boot";
> +            reg =3D <0x0 0xe0000>;
> +            read-only;
> +        };
> +
> +        partition@e0000 {
> +            label =3D "u-boot-env";
> +            reg =3D <0xe0000 0x100000>;
> +            read-only;
> +        };
> +
> +        factory: partition@1e0000 {
> +            label =3D "factory";
> +            reg =3D <0x1e0000 0x100000>;
> +            read-only;
> +        };
> +
> +        factory2: partition@2e0000 {
> +            label =3D "factory2";
> +            reg =3D <0x2e0000 0x100000>;
> +            read-only;
> +        };
> +
> +        partition@3e0000 {
> +            label =3D "kernel";
> +            reg =3D <0x3e0000 0x400000>;
> +        };
> +
> +        partition@7e0000 {
> +            label =3D "ubi";
> +            reg =3D <0x7e0000 0x2e00000>;
> +        };
> +
> +        partition@35e0000 {
> +            label =3D "firmware2";
> +            reg =3D <0x35e0000 0x3200000>;
> +        };
> +    };
> +};
> +
> +&pcie {
> +    status =3D "okay";
> +};
> +
> +&pcie0 {
> +    wifi0: wifi@0,0 {
> +        compatible =3D "pci14c3,7603";
> +        reg =3D <0x0000 0 0 0 0>;
> +        mediatek,mtd-eeprom =3D <&factory 0x0000>;
> +        ieee80211-freq-limit =3D <2400000 2500000>;
> +        mtd-mac-address =3D <&factory 0x4>;
> +    };
> +};
> +
> +&pcie1 {
> +    wifi1: wifi@0,0 {
> +        compatible =3D "pci14c3,7662";
> +        reg =3D <0x0000 0 0 0 0>;
> +        mediatek,mtd-eeprom =3D <&factory 0x8000>;
> +        ieee80211-freq-limit =3D <5000000 6000000>;
> +        mtd-mac-address =3D <&factory 0x8004>;
> +    };
> +};
> +
> +&ethernet {
> +    mtd-mac-address =3D <&factory 0xe000>;
> +    mediatek,portmap =3D "wllll";
> +    port@5 {
> +        status =3D "disabled";
> +    };
> +};
> +
> +&i2c {
> +    status =3D "disabled";
> +};
> +
> +&pinctrl {
> +    state_default: pinctrl0 {
> +        gpio {
> +            ralink,group =3D "uart2", "uart3", "i2c";
> +            ralink,function =3D "gpio";
> +        };
> +    };
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index d86eb8cc34..c036a1c308 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -115,6 +115,22 @@ define Device/asus_rt-ac57u
>  endef
>  TARGET_DEVICES +=3D asus_rt-ac57u
>
> +define Device/asus_rt-ac85p
> +  MTK_SOC :=3D mt7621
> +  DEVICE_VENDOR :=3D ASUS
> +  DEVICE_MODEL :=3D RT-AC85P
> +  IMAGE_SIZE :=3D 51200k
> +  UBINIZE_OPTS :=3D -E 5
> +  BLOCKSIZE :=3D 128k
> +  PAGESIZE :=3D 2048
> +  KERNEL_SIZE :=3D 4096k
> +  IMAGES +=3D factory.bin
> +  IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
> +  IMAGE/factory.bin :=3D append-kernel | pad-to $$(KERNEL_SIZE) |
> append-ubi | check-size $$$$(IMAGE_SIZE)
> +  DEVICE_PACKAGES :=3D kmod-usb3 kmod-mt7615e wpad-basic uboot-envtools
> +endef
> +TARGET_DEVICES +=3D asus_rt-ac85p
> +
>  define Device/buffalo_wsr-1166dhp
>    MTK_SOC :=3D mt7621
>    IMAGE/sysupgrade.bin :=3D trx | pad-rootfs | append-metadata
> diff --git
> a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
> b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
> index d50e689110..d2d69b4ff4 100644
> ---
> a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
> +++
> b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
> @@ -4256,7 +4256,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
>  +#endif /* __NAND_DEF_H__ */
>  --- /dev/null
>  +++ b/drivers/mtd/nand/nand_device_list.h
> -@@ -0,0 +1,59 @@
> +@@ -0,0 +1,60 @@
>  +/* Copyright Statement:
>  + *
>  + * This software/firmware and related documentation ("MediaTek
> Software") are
> @@ -4308,6 +4308,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
>  +    {0xC8DC, 0x909554, 5, 8, 512, 128, 2048, 64, 0x30C77fff,
> "F59L4G81A", 0},
>  +    {0xECD3, 0x519558, 5, 8, 1024, 128, 2048, 64, 0x44333,
> "K9K8G8000", 0},
>  +    {0xC2F1, 0x801DC2, 4, 8, 128, 128, 2048, 64, 0x30C77fff,
> "MX30LF1G08AA", 0},
> ++    {0xC2F1, 0x809502, 4, 8, 128, 128, 2048, 64, 0x30C77fff,
> "MX30LF1G18AC", 0},
>  +    {0x98D3, 0x902676, 5, 8, 1024, 256, 4096, 224, 0x00C25332,
> "TC58NVG3S0F", 0},
>  +    {0x01DA, 0x909546, 5, 8, 256, 128, 2048, 128, 0x30C77fff,
> "S34ML02G200TF", 0},
>  +    {0x01DC, 0x909556, 5, 8, 512, 128, 2048, 128, 0x30C77fff,
> "S34ML04G200TF", 0},
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000002131b50590c5190f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Although it looks like the Asus RT-=
AC85P and the Asus RT-AC65P models are identical, but I have separated them=
 into two dts and have introduced the HW version into the names (for the ne=
w versions in the future).</div><div><br></div><div>I have an alternative i=
nstallation method via SSH:</div><br>Note: The user/password for SSH is ide=
ntical with the one used in the Web-interface.<br><br>1. Complete the initi=
al setup wizard.<br>2. Activate SSH under &quot;Administration&quot; -&gt; =
&quot;System&quot;.<br>3. Transfer the OpenWrt factory image via scp:<br>=
=C2=A0&gt; scp openwrt-ramips-mt7621-asus_rt-ac65p-r01-squashfs-factory.bin=
 admin@192.168.50.1:/tmp<br>4. Connect via SSH to the router.<br>=C2=A0&gt;=
 ssh <a href=3D"mailto:admin@192.168.50.1">admin@192.168.50.1</a><br>5. Wri=
te the OpenWrt image to flash.<br>=C2=A0&gt; mtd-write -i /tmp/openwrt-rami=
ps-mt7621-asus_rt-ac65p-r01-squashfs-factory.bin -d linux<br>6. Reboot the =
router<br>=C2=A0&gt; reboot<div><br></div><div>Another thing: I don&#39;t k=
now, if it&#39;s good method to replace the second firmware partition with =
OpenWrt image during sysupgrade. When we don&#39;t do that, than we have al=
ways a factory firmware on the secondary firmware partition, so the back to=
 the factory firmware would be much easier.</div><div><br></div><div>So, th=
e new patch for the separated models:</div><div><br></div><div>diff --git a=
/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramip=
s/base-files/etc/board.d/02_network<br>index c0de9d4e50..110e921f38 100755<=
br>--- a/target/linux/ramips/base-files/etc/board.d/02_network<br>+++ b/tar=
get/linux/ramips/base-files/etc/board.d/02_network<br>@@ -300,6 +300,8 @@ r=
amips_setup_interfaces()<br>=C2=A0		ucidef_add_switch &quot;switch0&quot; \=
<br>=C2=A0			&quot;0:lan:4&quot; &quot;1:lan:3&quot; &quot;2:lan:2&quot; &q=
uot;3:lan:1&quot; &quot;4:wan:5&quot; &quot;6@eth0&quot;<br>=C2=A0		;;<br>+=
	asus,rt-ac65p-r01|\<br>+	asus,rt-ac85p-r01|\<br>=C2=A0	dlink,dir-860l-b1|\=
<br>=C2=A0	elecom,wrc-1167ghbk2-s|\<br>=C2=A0	elecom,wrc-1900gst|\<br>@@ -5=
37,6 +539,10 @@ ramips_setup_macs()<br>=C2=A0		lan_mac=3D$(mtd_get_mac_bina=
ry factory 0xe000)<br>=C2=A0		wan_mac=3D$(mtd_get_mac_binary factory 0xe006=
)<br>=C2=A0		;;<br>+	asus,rt-ac65p-r01|\<br>+	asus,rt-ac85p-r01)<br>+		wan_=
mac=3D$(mtd_get_mac_ascii u-boot-env et1macaddr)<br>+		;;<br>=C2=A0	asus,rt=
-n56u)<br>=C2=A0		lan_mac=3D$(macaddr_setbit_la &quot;$(cat /sys/class/net/=
eth0/address)&quot;)<br>=C2=A0		wan_mac=3D$(mtd_get_mac_binary factory 0x80=
04)<br>diff --git a/target/linux/ramips/base-files/lib/upgrade/platform.sh =
b/target/linux/ramips/base-files/lib/upgrade/platform.sh<br>index a65492a30=
9..7a50c61b1d 100755<br>--- a/target/linux/ramips/base-files/lib/upgrade/pl=
atform.sh<br>+++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh<b=
r>@@ -18,9 +18,18 @@ platform_do_upgrade() {<br>=C2=A0	mikrotik,rbm33g)<br>=
=C2=A0		[ -z &quot;$(rootfs_type)&quot; ] &amp;&amp; mtd erase firmware<br>=
=C2=A0		;;<br>+	asus,rt-ac65p-r01|\<br>+	asus,rt-ac85p-r01)<br>+		echo &quo=
t;Backing up firmware&quot;<br>+		dd if=3D/dev/mtd4 bs=3D1024 count=3D4096 =
=C2=A0&gt; /tmp/backup_firmware.bin<br>+		dd if=3D/dev/mtd5 bs=3D1024 count=
=3D52224 &gt;&gt; /tmp/backup_firmware.bin<br>+		mtd -e firmware2 write /tm=
p/backup_firmware.bin firmware2<br>+		;;<br>=C2=A0	esac<br>=C2=A0<br>=C2=A0=
	case &quot;$board&quot; in<br>+	asus,rt-ac65p-r01|\<br>+	asus,rt-ac85p-r01=
|\<br>=C2=A0	hiwifi,hc5962|\<br>=C2=A0	netgear,r6220|\<br>=C2=A0	netgear,r6=
350|\<br>diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac65p-r01.dts =
b/target/linux/ramips/dts/mt7621_asus_rt-ac65p-r01.dts<br>new file mode 100=
644<br>index 0000000000..3d2d1bfe6d<br>--- /dev/null<br>+++ b/target/linux/=
ramips/dts/mt7621_asus_rt-ac65p-r01.dts<br>@@ -0,0 +1,9 @@<br>+// SPDX-Lice=
nse-Identifier: GPL-2.0-or-later OR MIT<br>+/dts-v1/;<br>+<br>+#include &qu=
ot;mt7621_asus_rt-ac85p.dtsi&quot;<br>+<br>+/ {<br>+ =C2=A0 =C2=A0compatibl=
e =3D &quot;asus,rt-ac65p-r01&quot;, &quot;mediatek,mt7621-soc&quot;;<br>+ =
=C2=A0 =C2=A0model =3D &quot;Asus RT-AC65P R01&quot;;<br>+};<br>diff --git =
a/target/linux/ramips/dts/mt7621_asus_rt-ac85p-r01.dts b/target/linux/ramip=
s/dts/mt7621_asus_rt-ac85p-r01.dts<br>new file mode 100644<br>index 0000000=
000..115d52c71c<br>--- /dev/null<br>+++ b/target/linux/ramips/dts/mt7621_as=
us_rt-ac85p-r01.dts<br>@@ -0,0 +1,9 @@<br>+// SPDX-License-Identifier: GPL-=
2.0-or-later OR MIT<br>+/dts-v1/;<br>+<br>+#include &quot;mt7621_asus_rt-ac=
85p.dtsi&quot;<br>+<br>+/ {<br>+ =C2=A0 =C2=A0compatible =3D &quot;asus,rt-=
ac85p-r01&quot;, &quot;mediatek,mt7621-soc&quot;;<br>+ =C2=A0 =C2=A0model =
=3D &quot;Asus RT-AC85P R01&quot;;<br>+};<br>diff --git a/target/linux/rami=
ps/dts/mt7621_asus_rt-ac85p.dtsi b/target/linux/ramips/dts/mt7621_asus_rt-a=
c85p.dtsi<br>new file mode 100644<br>index 0000000000..aa1229ab03<br>--- /d=
ev/null<br>+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dtsi<br>@@ -0=
,0 +1,161 @@<br>+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>+/d=
ts-v1/;<br>+<br>+#include &quot;mt7621.dtsi&quot;<br>+<br>+#include &lt;dt-=
bindings/gpio/gpio.h&gt;<br>+#include &lt;dt-bindings/input/input.h&gt;<br>=
+<br>+/ {<br>+ =C2=A0 =C2=A0aliases {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0led-b=
oot =3D &amp;led_power;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0led-failsafe =3D &a=
mp;led_power;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0led-running =3D &amp;led_powe=
r;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0led-upgrade =3D &amp;led_power;<br>+ =C2=
=A0 =C2=A0};<br>+<br>+ =C2=A0 =C2=A0chosen {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0bootargs =3D &quot;console=3DttyS0,57600&quot;;<br>+ =C2=A0 =C2=A0};<br>=
+<br>+ =C2=A0 =C2=A0palmbus: palmbus@1E000000 {<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0i2c@900 {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D &q=
uot;okay&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+ =C2=A0 =C2=A0};<br>=
+<br>+ =C2=A0 =C2=A0keys {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &=
quot;gpio-keys&quot;;<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0reset {<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;reset&quot;;<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpios =3D &lt;&amp;gpio0 3 GPIO_ACTIV=
E_LOW&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0linux,code =3D &lt=
;KEY_RESTART&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0wps {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =
=3D &quot;wps&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpios =
=3D &lt;&amp;gpio0 6 GPIO_ACTIVE_LOW&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0linux,code =3D &lt;KEY_WPS_BUTTON&gt;;<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0};<br>+ =C2=A0 =C2=A0};<br>+<br>+ =C2=A0 =C2=A0leds {<br>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;gpio-leds&quot;;<br>+<br>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0led_power: power {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0label =3D &quot;rt-ac85p:blue:power&quot;;<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0gpios =3D &lt;&amp;gpio0 4 GPIO_ACTIVE_LOW&gt;;<=
br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0linux,default-trigger =3D &qu=
ot;phy0tpt&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0wlan2g {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D =
&quot;rt-ac85p:blue:wlan2g&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0gpios =3D &lt;&amp;gpio0 10 GPIO_ACTIVE_LOW&gt;;<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0linux,default-trigger =3D &quot;phy0radio&quot;;=
<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0wl=
an5g {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;rt-ac8=
5p:blue:wlan5g&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpios =
=3D &lt;&amp;gpio0 8 GPIO_ACTIVE_LOW&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0linux,default-trigger =3D &quot;phy1radio&quot;;<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0};<br>+ =C2=A0 =C2=A0};<br>+};<br>+<br>+&amp;sdhci {<br=
>+ =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>+};<br>+<br>+&amp;nand {<br=
>+ =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>+<br>+ =C2=A0 =C2=A0partiti=
ons {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;fixed-partitions=
&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0#address-cells =3D &lt;1&gt;;<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0#size-cells =3D &lt;1&gt;;<br>+<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0partition@0 {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0label =3D &quot;u-boot&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0reg =3D &lt;0x0 0xe0000&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0read-only;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+<br>+ =C2=A0 =C2=A0=
 =C2=A0 =C2=A0partition@e0000 {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0label =3D &quot;u-boot-env&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0reg =3D &lt;0xe0000 0x100000&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0read-only;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0factory: partition@1e0000 {<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;factory&quot;;<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x1e0000 0x100000&gt;;<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read-only;<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0};<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0factory2: partition@2e0000 {<=
br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;factory2&quot=
;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x2e0000 0x100=
000&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read-only;<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0};<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0partition@3=
e0000 {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;kerne=
l&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x3e0000=
 0x400000&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0partition@7e0000 {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0label =3D &quot;ubi&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0reg =3D &lt;0x7e0000 0x2e00000&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<b=
r>+<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0partition@35e0000 {<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;firmware2&quot;;<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x35e0000 0x3200000&gt;;<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+ =C2=A0 =C2=A0};<br>+};<br>+<br>+&amp;pci=
e {<br>+ =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>+};<br>+<br>+&amp;pci=
e0 {<br>+ =C2=A0 =C2=A0wifi0: wifi@0,0 {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
mpatible =3D &quot;pci14c3,7603&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =
=3D &lt;0x0000 0 0 0 0&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0mediatek,mtd-ee=
prom =3D &lt;&amp;factory 0x0000&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0ieee8=
0211-freq-limit =3D &lt;2400000 2500000&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0mtd-mac-address =3D &lt;&amp;factory 0x4&gt;;<br>+ =C2=A0 =C2=A0};<br>+}=
;<br>+<br>+&amp;pcie1 {<br>+ =C2=A0 =C2=A0wifi1: wifi@0,0 {<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0compatible =3D &quot;pci14c3,7662&quot;;<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0reg =3D &lt;0x0000 0 0 0 0&gt;;<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0mediatek,mtd-eeprom =3D &lt;&amp;factory 0x8000&gt;;<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0ieee80211-freq-limit =3D &lt;5000000 6000000&gt;;<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0mtd-mac-address =3D &lt;&amp;factory 0x8004&gt;;<br=
>+ =C2=A0 =C2=A0};<br>+};<br>+<br>+&amp;ethernet {<br>+ =C2=A0 =C2=A0mtd-ma=
c-address =3D &lt;&amp;factory 0xe000&gt;;<br>+ =C2=A0 =C2=A0mediatek,portm=
ap =3D &quot;wllll&quot;;<br>+ =C2=A0 =C2=A0port@5 {<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0status =3D &quot;disabled&quot;;<br>+ =C2=A0 =C2=A0};<br>+};<br>+=
<br>+&amp;i2c {<br>+ =C2=A0 =C2=A0status =3D &quot;disabled&quot;;<br>+};<b=
r>+<br>+&amp;pinctrl {<br>+ =C2=A0 =C2=A0state_default: pinctrl0 {<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0gpio {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0ralink,group =3D &quot;uart2&quot;, &quot;uart3&quot;, &quot;i2c&quot;;<=
br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ralink,function =3D &quot;gpi=
o&quot;;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>+ =C2=A0 =C2=A0};<br>+};<br>=
diff --git a/target/linux/ramips/image/<a href=3D"http://mt7621.mk">mt7621.=
mk</a> b/target/linux/ramips/image/<a href=3D"http://mt7621.mk">mt7621.mk</=
a><br>index d32feb7eab..7efe2cdc7f 100644<br>--- a/target/linux/ramips/imag=
e/<a href=3D"http://mt7621.mk">mt7621.mk</a><br>+++ b/target/linux/ramips/i=
mage/<a href=3D"http://mt7621.mk">mt7621.mk</a><br>@@ -115,6 +115,40 @@ def=
ine Device/asus_rt-ac57u<br>=C2=A0endef<br>=C2=A0TARGET_DEVICES +=3D asus_r=
t-ac57u<br>=C2=A0<br>+define Device/asus_rt-ac65p-r01<br>+ =C2=A0MTK_SOC :=
=3D mt7621<br>+ =C2=A0DEVICE_VENDOR :=3D ASUS<br>+ =C2=A0DEVICE_MODEL :=3D =
RT-AC65P<br>+ =C2=A0DEVICE_VARIANT :=3D R01<br>+ =C2=A0IMAGE_SIZE :=3D 5120=
0k<br>+ =C2=A0UBINIZE_OPTS :=3D -E 5<br>+ =C2=A0BLOCKSIZE :=3D 128k<br>+ =
=C2=A0PAGESIZE :=3D 2048<br>+ =C2=A0KERNEL_SIZE :=3D 4096k<br>+ =C2=A0IMAGE=
S +=3D factory.bin<br>+ =C2=A0IMAGE/sysupgrade.bin :=3D sysupgrade-tar | ap=
pend-metadata<br>+ =C2=A0IMAGE/factory.bin :=3D append-kernel | pad-to $$(K=
ERNEL_SIZE) | append-ubi | check-size $$$$(IMAGE_SIZE)<br>+ =C2=A0DEVICE_PA=
CKAGES :=3D kmod-usb3 kmod-mt7615e wpad-basic uboot-envtools<br>+endef<br>+=
TARGET_DEVICES +=3D asus_rt-ac65p-r01<br>+<br>+define Device/asus_rt-ac85p-=
r01<br>+ =C2=A0MTK_SOC :=3D mt7621<br>+ =C2=A0DEVICE_VENDOR :=3D ASUS<br>+ =
=C2=A0DEVICE_MODEL :=3D RT-AC85P<br>+ =C2=A0DEVICE_VARIANT :=3D R01<br>+ =
=C2=A0IMAGE_SIZE :=3D 51200k<br>+ =C2=A0UBINIZE_OPTS :=3D -E 5<br>+ =C2=A0B=
LOCKSIZE :=3D 128k<br>+ =C2=A0PAGESIZE :=3D 2048<br>+ =C2=A0KERNEL_SIZE :=
=3D 4096k<br>+ =C2=A0IMAGES +=3D factory.bin<br>+ =C2=A0IMAGE/sysupgrade.bi=
n :=3D sysupgrade-tar | append-metadata<br>+ =C2=A0IMAGE/factory.bin :=3D a=
ppend-kernel | pad-to $$(KERNEL_SIZE) | append-ubi | check-size $$$$(IMAGE_=
SIZE)<br>+ =C2=A0DEVICE_PACKAGES :=3D kmod-usb3 kmod-mt7615e wpad-basic ubo=
ot-envtools<br>+endef<br>+TARGET_DEVICES +=3D asus_rt-ac85p-r01<br>+<br>=C2=
=A0define Device/buffalo_wsr-1166dhp<br>=C2=A0 =C2=A0MTK_SOC :=3D mt7621<br=
>=C2=A0 =C2=A0IMAGE/sysupgrade.bin :=3D trx | pad-rootfs | append-metadata<=
br>diff --git a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-s=
upport.patch b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-su=
pport.patch<br>index d50e689110..d2d69b4ff4 100644<br>--- a/target/linux/ra=
mips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch<br>+++ b/target/li=
nux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch<br>@@ -4256,=
7 +4256,7 @@ Signed-off-by: John Crispin &lt;<a href=3D"mailto:blogic@openw=
rt.org">blogic@openwrt.org</a>&gt;<br>=C2=A0+#endif /* __NAND_DEF_H__ */<br=
>=C2=A0--- /dev/null<br>=C2=A0+++ b/drivers/mtd/nand/nand_device_list.h<br>=
-@@ -0,0 +1,59 @@<br>+@@ -0,0 +1,60 @@<br>=C2=A0+/* Copyright Statement:<br=
>=C2=A0+ *<br>=C2=A0+ * This software/firmware and related documentation (&=
quot;MediaTek Software&quot;) are<br>@@ -4308,6 +4308,7 @@ Signed-off-by: J=
ohn Crispin &lt;<a href=3D"mailto:blogic@openwrt.org">blogic@openwrt.org</a=
>&gt;<br>=C2=A0+	{0xC8DC, 0x909554, 5, 8, 512, 128, 2048, 64, 0x30C77fff, &=
quot;F59L4G81A&quot;, 0},<br>=C2=A0+	{0xECD3, 0x519558, 5, 8, 1024, 128, 20=
48, 64, 0x44333, &quot;K9K8G8000&quot;, 0},<br>=C2=A0+ =C2=A0 =C2=A0{0xC2F1=
, 0x801DC2, 4, 8, 128, 128, 2048, 64, 0x30C77fff, &quot;MX30LF1G08AA&quot;,=
 0},<br>++ =C2=A0 =C2=A0{0xC2F1, 0x809502, 4, 8, 128, 128, 2048, 64, 0x30C7=
7fff, &quot;MX30LF1G18AC&quot;, 0},<br>=C2=A0+ =C2=A0 =C2=A0{0x98D3, 0x9026=
76, 5, 8, 1024, 256, 4096, 224, 0x00C25332, &quot;TC58NVG3S0F&quot;, 0},<br=
>=C2=A0+ =C2=A0 =C2=A0{0x01DA, 0x909546, 5, 8, 256, 128, 2048, 128, 0x30C77=
fff, &quot;S34ML02G200TF&quot;, 0},<br>=C2=A0+ =C2=A0 =C2=A0{0x01DC, 0x9095=
56, 5, 8, 512, 128, 2048, 128, 0x30C77fff, &quot;S34ML04G200TF&quot;, 0},<b=
r><div><br></div><div><br></div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Birger Koblitz &lt;<a href=3D"mailto:=
mail@birger-koblitz.de">mail@birger-koblitz.de</a>&gt; ezt =C3=ADrta (id=C5=
=91pont: 2019. aug. 4., V, 6:46):<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">ramips: add Asus RT-AC85P<br>
<br>
SoC:=C2=A0=C2=A0=C2=A0 MediaTek MT7621AT dual-core @ 880MHz<br>
RAM:=C2=A0=C2=A0=C2=A0 256M (Winbond W632GG6KB-1)<br>
FLASH:=C2=A0=C2=A0=C2=A0 128MB (Macronix MX30LF1G18AC-TI)<br>
WiFi:=C2=A0=C2=A0=C2=A0 - 2.4GHz MediaTek MT7615N bgn<br>
=C2=A0=C2=A0=C2=A0 - 5GHz MediaTek MT7615N nac<br>
Switch: SoC integrated Gigabit Switch (4 x LAN, 1 x WAN)<br>
USB:=C2=A0=C2=A0=C2=A0 1 x USB 3.1 (Gen 1)<br>
BTN:=C2=A0=C2=A0=C2=A0 Reset, WPS<br>
LED:=C2=A0=C2=A0=C2=A0 - Power (blue)<br>
=C2=A0=C2=A0=C2=A0 - 5Ghz (blue)<br>
=C2=A0=C2=A0=C2=A0 - 2.4GHz (blue)<br>
=C2=A0=C2=A0=C2=A0 - Internet (blue)<br>
=C2=A0=C2=A0=C2=A0 - 4x LAN (blue)<br>
=C2=A0=C2=A0=C2=A0 (LAN/WAN leds are not controllable by GPIOs)<br>
UART: =C2=A0=C2=A0=C2=A0 UART is present as Pads marked J4 on the PCB.<br>
=C2=A0=C2=A0=C2=A0 3.3V - TX - RX - GND / 57600-8N1<br>
=C2=A0=C2=A0=C2=A0 3.3V is the square pad<br>
MAC:=C2=A0=C2=A0=C2=A0 The MAC address on the router-label matches the MAC =
of<br>
=C2=A0=C2=A0=C2=A0 the 2.4 GHz WiFi.<br>
=C2=A0=C2=A0=C2=A0 LAN and WAN MAC are identical: MAC_LABEL+4<br>
=C2=A0=C2=A0=C2=A0 5 GHz WiFi MAC: also MAC_LABEL+4<br>
=C2=A0=C2=A0=C2=A0<br>
<br>
Installation<br>
------------<br>
Via U-Boot tftpd:<br>
Switch on device, within 2s press reset button and keep pressed<br>
until power LED starts blinking slowly.<br>
Upload factory image via tftp put, the router&#39;s ip is 192.168.1.1<br>
and expects the client on 192.168.1.75.<br>
<br>
The images also work on the Asus RT-AC65P models as tested by Gabor.<br>
<br>
Signed-off-by: Birger Koblitz &lt;<a href=3D"mailto:mail@birger-koblitz.de"=
 target=3D"_blank">mail@birger-koblitz.de</a>&gt;<br>
Tested-by: Gabor Varga &lt;<a href=3D"mailto:vargagab@gmail.com" target=3D"=
_blank">vargagab@gmail.com</a>&gt;<br>
<br>
---<br>
<br>
v2: Corrected sorting of entries in 02_network<br>
=C2=A0=C2=A0=C2=A0 Model name corrected in .dts<br>
=C2=A0=C2=A0=C2=A0 Whitespace fixes in .dts<br>
=C2=A0=C2=A0=C2=A0 wifi0/1 labels added to wifi nodes in .dts<br>
=C2=A0=C2=A0=C2=A0 Device name capitalized in <a href=3D"http://mt7621.mk" =
rel=3D"noreferrer" target=3D"_blank">mt7621.mk</a><br>
<br>
v3: Added firmware backup to firmware2 partition before sysupgrade<br>
=C2=A0=C2=A0=C2=A0 Corrected modules included in image<br>
<br>
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network<br>
b/target/linux/ramips/base-files/etc/board.d/02_network<br>
index 2f9a02256e..ab90041d92 100755<br>
--- a/target/linux/ramips/base-files/etc/board.d/02_network<br>
+++ b/target/linux/ramips/base-files/etc/board.d/02_network<br>
@@ -231,6 +231,17 @@ ramips_setup_interfaces()<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ucidef_add_switch &quot;switch0=
&quot; \<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;0:lan&=
quot; &quot;1:wan&quot; &quot;6@eth0&quot;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
+=C2=A0=C2=A0=C2=A0 asus,rt-ac85p|\<br>
+=C2=A0=C2=A0=C2=A0 dlink,dir-860l-b1|\<br>
+=C2=A0=C2=A0=C2=A0 elecom,wrc-1167ghbk2-s|\<br>
+=C2=A0=C2=A0=C2=A0 elecom,wrc-1900gst|\<br>
+=C2=A0=C2=A0=C2=A0 elecom,wrc-2533gst|\<br>
+=C2=A0=C2=A0=C2=A0 huawei,hg255d|\<br>
+=C2=A0=C2=A0=C2=A0 iodata,wn-ax1167gr|\<br>
+=C2=A0=C2=A0=C2=A0 iodata,wn-gx300gr)<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ucidef_add_switch &quot;switch0&quot=
; \<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;1:lan:4&quo=
t; &quot;2:lan:3&quot; &quot;3:lan:2&quot; &quot;4:lan:1&quot; &quot;0:wan&=
quot; &quot;6@eth0&quot;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 asus,rt-n15|\<br>
=C2=A0=C2=A0=C2=A0=C2=A0 belkin,f9k1109v1|\<br>
=C2=A0=C2=A0=C2=A0=C2=A0 sitecom,wl-351)<br>
@@ -298,16 +309,6 @@ ramips_setup_interfaces()<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ucidef_add_switch &quot;switch0=
&quot; \<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;0:lan:=
4&quot; &quot;1:lan:3&quot; &quot;2:lan:2&quot; &quot;3:lan:1&quot; &quot;4=
:wan:5&quot; &quot;6@eth0&quot;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
-=C2=A0=C2=A0=C2=A0 dlink,dir-860l-b1|\<br>
-=C2=A0=C2=A0=C2=A0 elecom,wrc-1167ghbk2-s|\<br>
-=C2=A0=C2=A0=C2=A0 elecom,wrc-1900gst|\<br>
-=C2=A0=C2=A0=C2=A0 elecom,wrc-2533gst|\<br>
-=C2=A0=C2=A0=C2=A0 huawei,hg255d|\<br>
-=C2=A0=C2=A0=C2=A0 iodata,wn-ax1167gr|\<br>
-=C2=A0=C2=A0=C2=A0 iodata,wn-gx300gr)<br>
-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ucidef_add_switch &quot;switch0&quot=
; \<br>
-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;1:lan:4&quo=
t; &quot;2:lan:3&quot; &quot;3:lan:2&quot; &quot;4:lan:1&quot; &quot;0:wan&=
quot; &quot;6@eth0&quot;<br>
-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 dlink,dwr-118-a1)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ucidef_add_switch &quot;switch0=
&quot; \<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;1:lan:=
2&quot; &quot;2:lan:3&quot; &quot;3:lan:1&quot; &quot;4:lan:0&quot; &quot;5=
:wan&quot; &quot;6@eth0&quot;<br>
@@ -531,6 +532,9 @@ ramips_setup_macs()<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 lan_mac=3D$(mtd_get_mac_binary =
factory 57344)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 wan_mac=3D$(mtd_get_mac_binary =
factory 57350)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
+=C2=A0=C2=A0=C2=A0 asus,rt-ac85p)<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 wan_mac=3D$(mtd_get_mac_ascii u-boot=
-env et1macaddr)<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 asus,rt-n56u)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 lan_mac=3D$(macaddr_setbit_la &=
quot;$(cat /sys/class/net/eth0/address)&quot;)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 wan_mac=3D$(mtd_get_mac_binary =
factory 32772)<br>
diff --git a/target/linux/ramips/base-files/lib/upgrade/platform.sh<br>
b/target/linux/ramips/base-files/lib/upgrade/platform.sh<br>
index a65492a309..cd9d8ae650 100755<br>
--- a/target/linux/ramips/base-files/lib/upgrade/platform.sh<br>
+++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh<br>
@@ -18,9 +18,16 @@ platform_do_upgrade() {<br>
=C2=A0=C2=A0=C2=A0=C2=A0 mikrotik,rbm33g)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 [ -z &quot;$(rootfs_type)&quot;=
 ] &amp;&amp; mtd erase firmware<br>
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 asus,rt-ac85p)<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 echo &quot;Backing up firmware&quot;=
<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 dd if=3D/dev/mtd4 bs=3D1024 count=3D=
4096=C2=A0 &gt; /tmp/backup_firmware.bin<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 dd if=3D/dev/mtd5 bs=3D1024 count=3D=
52224 &gt;&gt; /tmp/backup_firmware.bin<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 mtd -e firmware2 write /tmp/backup_f=
irmware.bin firmware2<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ;;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 esac<br>
=C2=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0 case &quot;$board&quot; in<br>
+=C2=A0=C2=A0=C2=A0 asus,rt-ac85p|\<br>
=C2=A0=C2=A0=C2=A0=C2=A0 hiwifi,hc5962|\<br>
=C2=A0=C2=A0=C2=A0=C2=A0 netgear,r6220|\<br>
=C2=A0=C2=A0=C2=A0=C2=A0 netgear,r6350|\<br>
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts<br>
b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts<br>
new file mode 100644<br>
index 0000000000..7aea207fad<br>
--- /dev/null<br>
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts<br>
@@ -0,0 +1,164 @@<br>
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
+/dts-v1/;<br>
+<br>
+#include &quot;mt7621.dtsi&quot;<br>
+<br>
+#include &lt;dt-bindings/gpio/gpio.h&gt;<br>
+#include &lt;dt-bindings/input/input.h&gt;<br>
+<br>
+/ {<br>
+=C2=A0=C2=A0=C2=A0 compatible =3D &quot;asus,rt-ac85p&quot;, &quot;mediate=
k,mt7621-soc&quot;;<br>
+=C2=A0=C2=A0=C2=A0 model =3D &quot;Asus RT-AC85P&quot;;<br>
+<br>
+=C2=A0=C2=A0=C2=A0 aliases {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 led-boot =3D &amp;led_power;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 led-failsafe =3D &amp;led_power;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 led-running =3D &amp;led_power;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 led-upgrade =3D &amp;led_power;<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 chosen {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 bootargs =3D &quot;console=3DttyS0,5=
7600&quot;;<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 palmbus: palmbus@1E000000 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 i2c@900 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D &quot;=
okay&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 keys {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 compatible =3D &quot;gpio-keys&quot;=
;<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reset {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;r=
eset&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpios =3D &lt;&am=
p;gpio0 3 GPIO_ACTIVE_LOW&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 linux,code =3D &l=
t;KEY_RESTART&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 wps {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;w=
ps&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpios =3D &lt;&am=
p;gpio0 6 GPIO_ACTIVE_LOW&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 linux,code =3D &l=
t;KEY_WPS_BUTTON&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 leds {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 compatible =3D &quot;gpio-leds&quot;=
;<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 led_power: power {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;r=
t-ac85p:blue:power&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpios =3D &lt;&am=
p;gpio0 4 GPIO_ACTIVE_LOW&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 linux,default-tri=
gger =3D &quot;phy0tpt&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 wlan2g {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;r=
t-ac85p:blue:wlan2g&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpios =3D &lt;&am=
p;gpio0 10 GPIO_ACTIVE_LOW&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 linux,default-tri=
gger =3D &quot;phy0radio&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 wlan5g {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;r=
t-ac85p:blue:wlan5g&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpios =3D &lt;&am=
p;gpio0 8 GPIO_ACTIVE_LOW&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 linux,default-tri=
gger =3D &quot;phy1radio&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+};<br>
+<br>
+&amp;sdhci {<br>
+=C2=A0=C2=A0=C2=A0 status =3D &quot;okay&quot;;<br>
+};<br>
+<br>
+&amp;nand {<br>
+=C2=A0=C2=A0=C2=A0 status =3D &quot;okay&quot;;<br>
+<br>
+=C2=A0=C2=A0=C2=A0 partitions {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 compatible =3D &quot;fixed-partition=
s&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 #address-cells =3D &lt;1&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 #size-cells =3D &lt;1&gt;;<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 partition@0 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;u=
-boot&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x0 0=
xe0000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 read-only;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 partition@e0000 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;u=
-boot-env&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0xe00=
00 0x100000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 read-only;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 factory: partition@1e0000 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;f=
actory&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x1e0=
000 0x100000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 read-only;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 factory2: partition@2e0000 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;f=
actory2&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x2e0=
000 0x100000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 read-only;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 partition@3e0000 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;k=
ernel&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x3e0=
000 0x400000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 partition@7e0000 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;u=
bi&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x7e0=
000 0x2e00000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 partition@35e0000 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 label =3D &quot;f=
irmware2&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x35e=
0000 0x3200000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+};<br>
+<br>
+&amp;pcie {<br>
+=C2=A0=C2=A0=C2=A0 status =3D &quot;okay&quot;;<br>
+};<br>
+<br>
+&amp;pcie0 {<br>
+=C2=A0=C2=A0=C2=A0 wifi0: wifi@0,0 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 compatible =3D &quot;pci14c3,7603&qu=
ot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x0000 0 0 0 0&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 mediatek,mtd-eeprom =3D &lt;&amp;fac=
tory 0x0000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ieee80211-freq-limit =3D &lt;2400000=
 2500000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 mtd-mac-address =3D &lt;&amp;factory=
 0x4&gt;;<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+};<br>
+<br>
+&amp;pcie1 {<br>
+=C2=A0=C2=A0=C2=A0 wifi1: wifi@0,0 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 compatible =3D &quot;pci14c3,7662&qu=
ot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 reg =3D &lt;0x0000 0 0 0 0&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 mediatek,mtd-eeprom =3D &lt;&amp;fac=
tory 0x8000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ieee80211-freq-limit =3D &lt;5000000=
 6000000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 mtd-mac-address =3D &lt;&amp;factory=
 0x8004&gt;;<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+};<br>
+<br>
+&amp;ethernet {<br>
+=C2=A0=C2=A0=C2=A0 mtd-mac-address =3D &lt;&amp;factory 0xe000&gt;;<br>
+=C2=A0=C2=A0=C2=A0 mediatek,portmap =3D &quot;wllll&quot;;<br>
+=C2=A0=C2=A0=C2=A0 port@5 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D &quot;disabled&quot;;<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+};<br>
+<br>
+&amp;i2c {<br>
+=C2=A0=C2=A0=C2=A0 status =3D &quot;disabled&quot;;<br>
+};<br>
+<br>
+&amp;pinctrl {<br>
+=C2=A0=C2=A0=C2=A0 state_default: pinctrl0 {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpio {<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ralink,group =3D =
&quot;uart2&quot;, &quot;uart3&quot;, &quot;i2c&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ralink,function =
=3D &quot;gpio&quot;;<br>
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>
+=C2=A0=C2=A0=C2=A0 };<br>
+};<br>
diff --git a/target/linux/ramips/image/<a href=3D"http://mt7621.mk" rel=3D"=
noreferrer" target=3D"_blank">mt7621.mk</a><br>
b/target/linux/ramips/image/<a href=3D"http://mt7621.mk" rel=3D"noreferrer"=
 target=3D"_blank">mt7621.mk</a><br>
index d86eb8cc34..c036a1c308 100644<br>
--- a/target/linux/ramips/image/<a href=3D"http://mt7621.mk" rel=3D"norefer=
rer" target=3D"_blank">mt7621.mk</a><br>
+++ b/target/linux/ramips/image/<a href=3D"http://mt7621.mk" rel=3D"norefer=
rer" target=3D"_blank">mt7621.mk</a><br>
@@ -115,6 +115,22 @@ define Device/asus_rt-ac57u<br>
=C2=A0endef<br>
=C2=A0TARGET_DEVICES +=3D asus_rt-ac57u<br>
=C2=A0<br>
+define Device/asus_rt-ac85p<br>
+=C2=A0 MTK_SOC :=3D mt7621<br>
+=C2=A0 DEVICE_VENDOR :=3D ASUS<br>
+=C2=A0 DEVICE_MODEL :=3D RT-AC85P<br>
+=C2=A0 IMAGE_SIZE :=3D 51200k<br>
+=C2=A0 UBINIZE_OPTS :=3D -E 5<br>
+=C2=A0 BLOCKSIZE :=3D 128k<br>
+=C2=A0 PAGESIZE :=3D 2048<br>
+=C2=A0 KERNEL_SIZE :=3D 4096k<br>
+=C2=A0 IMAGES +=3D factory.bin<br>
+=C2=A0 IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata<br>
+=C2=A0 IMAGE/factory.bin :=3D append-kernel | pad-to $$(KERNEL_SIZE) |<br>
append-ubi | check-size $$$$(IMAGE_SIZE)<br>
+=C2=A0 DEVICE_PACKAGES :=3D kmod-usb3 kmod-mt7615e wpad-basic uboot-envtoo=
ls<br>
+endef<br>
+TARGET_DEVICES +=3D asus_rt-ac85p<br>
+<br>
=C2=A0define Device/buffalo_wsr-1166dhp<br>
=C2=A0=C2=A0 MTK_SOC :=3D mt7621<br>
=C2=A0=C2=A0 IMAGE/sysupgrade.bin :=3D trx | pad-rootfs | append-metadata<b=
r>
diff --git<br>
a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch<b=
r>
b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch<b=
r>
index d50e689110..d2d69b4ff4 100644<br>
---<br>
a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch<b=
r>
+++<br>
b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch<b=
r>
@@ -4256,7 +4256,7 @@ Signed-off-by: John Crispin &lt;<a href=3D"mailto:blo=
gic@openwrt.org" target=3D"_blank">blogic@openwrt.org</a>&gt;<br>
=C2=A0+#endif /* __NAND_DEF_H__ */<br>
=C2=A0--- /dev/null<br>
=C2=A0+++ b/drivers/mtd/nand/nand_device_list.h<br>
-@@ -0,0 +1,59 @@<br>
+@@ -0,0 +1,60 @@<br>
=C2=A0+/* Copyright Statement:<br>
=C2=A0+ *<br>
=C2=A0+ * This software/firmware and related documentation (&quot;MediaTek<=
br>
Software&quot;) are<br>
@@ -4308,6 +4308,7 @@ Signed-off-by: John Crispin &lt;<a href=3D"mailto:blo=
gic@openwrt.org" target=3D"_blank">blogic@openwrt.org</a>&gt;<br>
=C2=A0+=C2=A0=C2=A0=C2=A0 {0xC8DC, 0x909554, 5, 8, 512, 128, 2048, 64, 0x30=
C77fff,<br>
&quot;F59L4G81A&quot;, 0},<br>
=C2=A0+=C2=A0=C2=A0=C2=A0 {0xECD3, 0x519558, 5, 8, 1024, 128, 2048, 64, 0x4=
4333,<br>
&quot;K9K8G8000&quot;, 0},<br>
=C2=A0+=C2=A0=C2=A0=C2=A0 {0xC2F1, 0x801DC2, 4, 8, 128, 128, 2048, 64, 0x30=
C77fff,<br>
&quot;MX30LF1G08AA&quot;, 0},<br>
++=C2=A0=C2=A0=C2=A0 {0xC2F1, 0x809502, 4, 8, 128, 128, 2048, 64, 0x30C77ff=
f,<br>
&quot;MX30LF1G18AC&quot;, 0},<br>
=C2=A0+=C2=A0=C2=A0=C2=A0 {0x98D3, 0x902676, 5, 8, 1024, 256, 4096, 224, 0x=
00C25332,<br>
&quot;TC58NVG3S0F&quot;, 0},<br>
=C2=A0+=C2=A0=C2=A0=C2=A0 {0x01DA, 0x909546, 5, 8, 256, 128, 2048, 128, 0x3=
0C77fff,<br>
&quot;S34ML02G200TF&quot;, 0},<br>
=C2=A0+=C2=A0=C2=A0=C2=A0 {0x01DC, 0x909556, 5, 8, 512, 128, 2048, 128, 0x3=
0C77fff,<br>
&quot;S34ML04G200TF&quot;, 0},<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000002131b50590c5190f--


--===============7050073028255452374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7050073028255452374==--

