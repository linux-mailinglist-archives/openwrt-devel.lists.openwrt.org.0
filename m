Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1373C813FD
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 10:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KeZbbQKc0yaPg9TlAHvTpNtYXyfw8P9H05IhCX/2Q+o=; b=XVxdnNQesfAptqzMGhxVBmKGf
	2pOWRZl9pqsgZ7ZIYS6PqYz/nztUV5YbVKL64OiKpZS0iflzYwVsr9sKoEtXLE1CmSrQqD/vlO53Z
	GfqvYVX3Gav7pHEWZHultBDlIUZmGfgP0cTp3m/k2FHhzJ3hhe90j5myTncgv5WHPSj2V356ZTXhA
	flgRj/hf5Doo+NNIXEaNVX/D6yO7hgfB1XfMkjNuatwM2tvEO/Lp3sBqoUVz8cMUkBQ+VGQ488CTR
	EBNFFWORHB1yTP6sKsWR8v4DX2tFb2ArDtWiEMfYD6RJE+uB+1BUf4PfwSqaBkutL5LOzH17sglUb
	0zc1bfGRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huY8R-0008RA-29; Mon, 05 Aug 2019 08:14:27 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huY87-0008Qp-AO
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 08:14:10 +0000
Received: by mail-pl1-x62d.google.com with SMTP id k8so36184667plt.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 01:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sKEg8v4ImuaIGD4Vmv5rFaoPAtZmrtSnmNkePzu4pG8=;
 b=FKghhxJhtyqnjZ6x0F88slRl9Sl/NRkJC8TSf5K6nkujT7W4VS/y7EbxP5zAWeIACi
 jCznuVVj5zv9XKllXfzESnrpPAmV1TgxIIm3Mr+CQtkdx7OoV6OZeMxwnB/rorX4EvMX
 TDNt1vRedCVLqDLufPZAfaPSU8GWLyta62BF9Ny7SfeBjMYfhRrsRu+sWfIJx8vn1fQp
 ULMeP5zEv57gypZQ4WjsH6m2MNOjVkSl+PKnBUSERl0d8XejncvvrJXTUCWUZi6VIgV1
 SwOZiwWoW0Qm8m1A9CeEWiFHoKWMQFwopF2VhQo5b1P1CS7bfoskzC9jcdSDbaAr94EE
 tEKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sKEg8v4ImuaIGD4Vmv5rFaoPAtZmrtSnmNkePzu4pG8=;
 b=hujZN2ahRPammCkQxCMxxnMmniulkMLjih2l0H087+J2VNBgm7r4siMKAzFpbqM/On
 hw46extcV9/uqPU4AoLhAVh5dXQAUYxxbzFMyeDKKVFSiBNDINPV+Y2f7xfkclJRlIuM
 dlN3j4w9hBUGJkp68kYzLR5WksyqoXjIpgb3k56ppT86/ApizHOrONC8Ylx5xDBlhzqt
 YgcMBdTWaFk+3WtH65V+UxVjRHsPY2Iur3MrJIhnf3GlXAv1hR74F1Op+jhBEGXf5l1a
 Ifk119mnVuDEuJg8KgNKtKCCD6PA4T6ey3fGSvPMgEgSHbT/wWGn+wYhJ9AlpiS21kum
 o81Q==
X-Gm-Message-State: APjAAAWyXaBf2qmhX6D4553FHL/UbKGhuu9jzdG+8EXyX1YezUk/pQhI
 rfqNZpEAk/AzZY9sb7G4qI0cMtQXc/j5iC4nSQmhfW0td9s=
X-Google-Smtp-Source: APXvYqwTb1iE2C1yAIbCtXx/tWAGroLRsKEVX5v6ir78mh54uxxX+rUh35Qf0/aRwNYdloLRUZEiXV0N851f/LYqYIo=
X-Received: by 2002:a17:902:a714:: with SMTP id
 w20mr143616781plq.127.1564992845676; 
 Mon, 05 Aug 2019 01:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <3f82a09f-916b-3ba0-c595-b1d5fc7226cc@birger-koblitz.de>
In-Reply-To: <3f82a09f-916b-3ba0-c595-b1d5fc7226cc@birger-koblitz.de>
From: =?UTF-8?B?R8OhYm9yIFZhcmdh?= <vargagab@gmail.com>
Date: Mon, 5 Aug 2019 10:13:54 +0200
Message-ID: <CADQ6-wuGGHSyB8uio2xe=5eFo1Z4KRedHeNH5Qwj5VU0N_xziA@mail.gmail.com>
To: Birger Koblitz <mail@birger-koblitz.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_011407_404062_D47F4B91 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vargagab[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============8749763335308112634=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8749763335308112634==
Content-Type: multipart/alternative; boundary="000000000000a48472058f5a4a3b"

--000000000000a48472058f5a4a3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As I wrote to Birger, I think the Asus RT-AC85P and the Asus RT-AC65P
boards - despite the Asus specifications and the Wikidevi informations -
are identical.

1. As you can see, the board ha 3 external and 1 internal antenna:
https://drive.google.com/open?id=3D1cOlX_P2O-UtMcjFVxJT54Sodn8cmxp0_
2. On the Asus RT-AC65P board are two MT7615N radios:
https://drive.google.com/open?id=3D1jfMKkwtNuOiYyegT2Mtu--n1QY6Xr3Vx,
https://drive.google.com/open?id=3D1TIVwYlEAraymv4y8piAARNIew6XVP7sY
3. The Asus factory firmware says too, that the device has a 600 Mbps and
an 1733 Mbps radio:
admin@RT-AC65P:/tmp/home/root# iwconfig ra0
ra0 RTWIFI SoftAP ESSID:"AC65p_24"
Mode:Managed Channel=3D3 Access Point: 04:92:26:47:56:08
Bit Rate=3D600 Mb/s

admin@RT-AC65P:/tmp/home/root# iwconfig rai0
rai0 RTWIFI SoftAP ESSID:"AC65p_5"
Mode:Managed Channel=3D36 Access Point: 04:92:26:47:56:0C
Bit Rate=3D1.732 Gb/s

Gabor Varga

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

--000000000000a48472058f5a4a3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As I wrote to Birger, I think the Asus RT-AC85P and the As=
us RT-AC65P boards - despite the Asus specifications and the Wikidevi infor=
mations - are identical.<div><br></div><div>1. As you can see, the board ha=
 3 external and 1 internal antenna:=C2=A0<a href=3D"https://drive.google.co=
m/open?id=3D1cOlX_P2O-UtMcjFVxJT54Sodn8cmxp0_">https://drive.google.com/ope=
n?id=3D1cOlX_P2O-UtMcjFVxJT54Sodn8cmxp0_</a></div><div>2. On the Asus RT-AC=
65P board are two MT7615N radios:=C2=A0<a href=3D"https://drive.google.com/=
open?id=3D1jfMKkwtNuOiYyegT2Mtu--n1QY6Xr3Vx">https://drive.google.com/open?=
id=3D1jfMKkwtNuOiYyegT2Mtu--n1QY6Xr3Vx</a>,=C2=A0<a href=3D"https://drive.g=
oogle.com/open?id=3D1TIVwYlEAraymv4y8piAARNIew6XVP7sY">https://drive.google=
.com/open?id=3D1TIVwYlEAraymv4y8piAARNIew6XVP7sY</a></div><div>3. The Asus =
factory firmware says too, that the device has a 600 Mbps and an 1733 Mbps =
radio:</div><div><span style=3D"color:rgb(0,0,0);font-family:Roboto,sans-se=
rif;font-size:14px;background-color:rgb(220,215,202)">admin@RT-AC65P:/tmp/h=
ome/root# iwconfig ra0</span><br style=3D"box-sizing:border-box;color:rgb(0=
,0,0);font-family:Roboto,sans-serif;font-size:14px;background-color:rgb(220=
,215,202)"><span style=3D"color:rgb(0,0,0);font-family:Roboto,sans-serif;fo=
nt-size:14px;background-color:rgb(220,215,202)">ra0 RTWIFI SoftAP ESSID:&qu=
ot;AC65p_24&quot;</span><br style=3D"box-sizing:border-box;color:rgb(0,0,0)=
;font-family:Roboto,sans-serif;font-size:14px;background-color:rgb(220,215,=
202)"><span style=3D"color:rgb(0,0,0);font-family:Roboto,sans-serif;font-si=
ze:14px;background-color:rgb(220,215,202)">Mode:Managed Channel=3D3 Access =
Point: 04:92:26:47:56:08</span><br style=3D"box-sizing:border-box;color:rgb=
(0,0,0);font-family:Roboto,sans-serif;font-size:14px;background-color:rgb(2=
20,215,202)"><span style=3D"color:rgb(0,0,0);font-family:Roboto,sans-serif;=
font-size:14px;background-color:rgb(220,215,202)">Bit Rate=3D600 Mb/s</span=
><br style=3D"box-sizing:border-box;color:rgb(0,0,0);font-family:Roboto,san=
s-serif;font-size:14px;background-color:rgb(220,215,202)"><br style=3D"box-=
sizing:border-box;color:rgb(0,0,0);font-family:Roboto,sans-serif;font-size:=
14px;background-color:rgb(220,215,202)"><span style=3D"color:rgb(0,0,0);fon=
t-family:Roboto,sans-serif;font-size:14px;background-color:rgb(220,215,202)=
">admin@RT-AC65P:/tmp/home/root# iwconfig rai0</span><br style=3D"box-sizin=
g:border-box;color:rgb(0,0,0);font-family:Roboto,sans-serif;font-size:14px;=
background-color:rgb(220,215,202)"><span style=3D"color:rgb(0,0,0);font-fam=
ily:Roboto,sans-serif;font-size:14px;background-color:rgb(220,215,202)">rai=
0 RTWIFI SoftAP ESSID:&quot;AC65p_5&quot;</span><br style=3D"box-sizing:bor=
der-box;color:rgb(0,0,0);font-family:Roboto,sans-serif;font-size:14px;backg=
round-color:rgb(220,215,202)"><span style=3D"color:rgb(0,0,0);font-family:R=
oboto,sans-serif;font-size:14px;background-color:rgb(220,215,202)">Mode:Man=
aged Channel=3D36 Access Point: 04:92:26:47:56:0C</span><br style=3D"box-si=
zing:border-box;color:rgb(0,0,0);font-family:Roboto,sans-serif;font-size:14=
px;background-color:rgb(220,215,202)"><span style=3D"color:rgb(0,0,0);font-=
family:Roboto,sans-serif;font-size:14px;background-color:rgb(220,215,202)">=
Bit Rate=3D1.732 Gb/s</span><br></div><div><span style=3D"color:rgb(0,0,0);=
font-family:Roboto,sans-serif;font-size:14px;background-color:rgb(220,215,2=
02)"><br></span></div>Gabor Varga</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">Birger Koblitz &lt;<a href=3D"mailto:mail@=
birger-koblitz.de">mail@birger-koblitz.de</a>&gt; ezt =C3=ADrta (id=C5=91po=
nt: 2019. aug. 4., V, 6:46):<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">ramips: add Asus RT-AC85P<br>
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

--000000000000a48472058f5a4a3b--


--===============8749763335308112634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8749763335308112634==--

