Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D1D51C28
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 22:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mM4ZvKHnbNn7XkQWr5ocncNw6BAbRymBXjMQuUxz3M=; b=O4KLP9GyavOfh6
	05wzBbDKtEShNQtO/M48Ghl6hWsKRudBTh0MdiXOXKINzfngTRmyUTwEwOFR0yN/jY+aPGdgIVLVM
	7xXU0hhuSpLS9E64ln1ZFF94jDkl4vw+SetFzRvADrULwbNw0lqq3ImR+Q6QiNYa2swtoah6z7Ic1
	YZOK32D1auoH+2ssd8IR2JBJmEAVZYAZCTKbKfNhPxwSn0ehfJs8aRg1b0pMdDswmOTCYs2dDtMzF
	h/BTn/XPw8GXHpe+W4Um9ALHaLjDeC4Q/pxFSV68dw4ARkgzQ9eMKr/aCY//QdD5QwawfCk1sm+Lp
	IJBDeNADes2bfjq0HMkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVPY-0001Yp-Dn; Mon, 24 Jun 2019 20:17:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVPO-0001Y0-BZ
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 20:17:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id s15so601674wmj.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 13:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=25oc4sN2N+QkNkzojFOzkx57n+cv3CPhpjNTQsf0CSw=;
 b=gJ83PUNGDqVfWH6VTgCAE8R1JuWSoFWyn0ZNweEkpq5ZPmacJ0I+9zOsbWQOWj7DXY
 nxjXNdVnJJL9ltxi17pxFB+udPXcFzjw5oWjl8NKfROtbBmzjA3Wr9RYz8GP/rE3A4Uk
 V0d9wHvyBGUhfnyfBMbYxb9NbnaLJRpXceBND0Q8lpKCD6nxi/uTOy81CulxTOp72eX5
 SZmrmffnK72bCYeonUTOrXIDvJId+WeK3n+u24jfieXszWMdKG3oXLE019j+maNK3egs
 RYExkRYjWWUjKbHCkhVgbeNiesHYBFlxiB3AkPbjyM45ItEv/jgGUMpbn6iyWPq7EjDf
 nqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=25oc4sN2N+QkNkzojFOzkx57n+cv3CPhpjNTQsf0CSw=;
 b=VtKp782da2IL0tQdVHMY1g/SLHhOdTbnz4zvWBYIfoVGkkxz09pUx3YF1cH7Sk1cIQ
 c27x7cyyNqFArtiVX0W3yOeDuoG+iUrbxDuFCSNHr4gf+GhqBWA2MwkHSYLwOx7sxe6w
 +c5V4kWwMEmHdcoECNeA9wbQ6YjRv90fB4vLROjTrworcm7xVgiSFFNLx5SC4g+jBdVf
 3TpV1FGzt14jmuRBDCioTqMPFvXDJxMOIHIleCOAjqrnCGggNTM7S/ERRnb9oIHfIGuS
 PXbQ9ZoXU6xyidaqi+2gVWWGAdsB4ddkiYX58/S2AjQzJip8zpTmJVSSCfw1DiiYD2sb
 UkcA==
X-Gm-Message-State: APjAAAUH88dYc/dRZTGw07EiyLMDr4E3GTkmHUTVSWJiO+eDO/RSeSQM
 dw+mN99CbxK6TLPkcIwN92Y4GJJ0
X-Google-Smtp-Source: APXvYqym3C9zX1YjrefQL7vC0wMiJylb3Kot0ouIXKyr8d4m7ccqARgD9K+jEVZ4XJS3csoLxAwprg==
X-Received: by 2002:a05:600c:28d:: with SMTP id
 13mr17299632wmk.5.1561407462985; 
 Mon, 24 Jun 2019 13:17:42 -0700 (PDT)
Received: from debian64.daheim (pD9E29A68.dip0.t-ipconnect.de.
 [217.226.154.104])
 by smtp.gmail.com with ESMTPSA id o8sm11062154wrj.71.2019.06.24.13.17.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 13:17:42 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hfVPJ-0005DX-Q8; Mon, 24 Jun 2019 22:17:41 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Jun 2019 22:17:37 +0200
Message-ID: <3007342.El8puCmMqZ@debian64>
In-Reply-To: <20190624161320.7316-1-daniel@dd-wrt.com>
References: <20190624161320.7316-1-daniel@dd-wrt.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_131746_404746_AD26DFD2 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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
Cc: gch981213@gmail.com, Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Monday, June 24, 2019 6:13:20 PM CEST Daniel Danzberger wrote:
>     SoC:    Mediatek MT7621A
>     CPU:    4x 880Mhz
>     Cache:  32 KB I-Cache and 32 KB D-Cach
>             256 KB L2 Cache (shared by Dual-Core)
>     RAM:    DDR3 512MB 16bits BUS
>     FLASH:  16MB
>     Switch: Mediatek Gigabit Switch (1 x LAN, 1 x WAN)
>     USB:    1x 3.0
>     PCI:    3x Mini PCIe
>     GPS:    Quectel L70B
>     BTN:    Reset
>     LED:    - Power
>             - Ethernet
>             - Wifi
>             - USB
>     UART:  UART is present as Pads with throughholes on the PCB.
> 	   They are located on left side.
>            3.3V - RX - GND - TX / 57600-8N1
>            3.3V is the square pad
> 
>     Installation
>     ------------
>     The stock image is a modified openwrt and can be overflashed via sysupgrade -F
> 
> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
> ---
>  .../ramips/base-files/etc/board.d/02_network  |   3 +
>  target/linux/ramips/dts/AP7621-001.dts        | 127 ++++++++++++++++++
>  target/linux/ramips/image/mt7621.mk           |  10 ++
>  3 files changed, 140 insertions(+)
>  create mode 100644 target/linux/ramips/dts/AP7621-001.dts
> 
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
> index 52204eacbf..ffd1689263 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -39,6 +39,9 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
>  		;;
> +	asiarf,ap7621-001)
> +		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
> +		;;
>  	3g150b|\
>  	3g300m|\
>  	a5-v11|\
> diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
> new file mode 100644
> index 0000000000..daab06ec90
> --- /dev/null
> +++ b/target/linux/ramips/dts/AP7621-001.dts
> @@ -0,0 +1,127 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +/dts-v1/;
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible = "asiarf,ap7621-001", "mediatek,mt7621-soc";
> +	model = "AP7621-001";

Oh boy, this is tricky.

<https://github.com/devicetree-org/devicetree-specification/blob/4b1dac80eaca45b4babf5299452a951008a5d864/source/devicenodes.rst>
'The recommended format ' (for the root node!) ' is "manufacturer,model-number".'

BUT. Thing is, this string here gets printed on the LuCI system
page and from past experience "Manugacturer Model" works best.

> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x1c000000>, <0x20000000 0x4000000>;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,57600";
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		wlan1 {
> +			label = "ap7621-001:orange:wlan1";
> +			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wlan0 {
> +			label = "ap7621-001:orange:wlan0";
> +			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&sdhci {
> +	status = "okay";
> +};
> +
> +&spi0 {
> +        status = "okay";
please use tabs here.

> +
> +        flash@0 {
> +                compatible = "jedec,spi-nor";
> +                reg = <0>;
> +                spi-max-frequency = <40000000>;
> +
> +		partitions {
this needs one more tab.
> +			compatible = "fixed-partitions";
> +                	#address-cells = <1>;
please use tabs to ident most of the properies 
for the rest of the node. (scripts/checkpatch.pl will
catch those lines)

> +                	#size-cells = <1>;
> +
> +                	partition@0 {
> +                	        label = "u-boot";
> +                	        reg = <0x0 0x30000>;
> +                	        read-only;
> +                	};
> +
> +                	partition@30000 {
> +                	        label = "u-boot-env";
> +                	        reg = <0x30000 0x2000>;
		needs read-only;
> +                	};
> +
> +                	partition@32000 {
> +                	        label = "2860";
> +                	        reg = <0x32000 0x4000>;
		needs read-only;

> +                	};
> +
> +                	partition@36000 {
> +                	        label = "rtdev";
> +                	        reg = <0x36000 0x2000>;
		needs read-only;

> +                	};
> +
> +                	partition@38000 {
> +                	        label = "Reserve";
> +                	        reg = <0x38000 0x8000>;
		needs read-only;

> +                	};
> +
> +                	factory: partition@40000 {
> +                	        label = "factory";
> +                	        reg = <0x40000 0x10000>;
> +                	        read-only;
> +                	};
> +
> +                	firmware: partition@50000 {
> +                	        label = "firmware";
> +                	        reg = <0x50000 0xfa0000>;
> +				compatible = "denx,uimage";
> +                	};
> +
> +                	partition@ff0000 {
> +                	        label = "nvram";
> +                	        reg = <0xff0000 0x10000>;
needs read-only;
> +                	};
> +		};
> +        };
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&ethernet {
> +	mtd-mac-address = <&factory 0xe000>;
> +	mediatek,portmap = "llllw";
> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group = "wdt", "jtag";
> +			ralink,function = "gpio";
> +		};
> +	};
> +};
> +
> diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
> index 2eb7feb5bf..c1e445f84c 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -640,3 +640,13 @@ define Device/zbt-wg3526-32M
>  	kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
>  endef
>  TARGET_DEVICES += zbt-wg3526-32M
> +
> +define Device/asiarf_ap7621-001
> +  DTS := AP7621-001
> +  IMAGE_SIZE := $(ralink_default_fw_size_16M)
> +  DEVICE_TITLE := AsiaRF AP7621-001
> +  DEVICE_PACKAGES := \
> +	kmod-sdhci-mt7620 kmod-mt76x2 kmod-usb3
> +endef
> +TARGET_DEVICES += asiarf_ap7621-001
> +
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
