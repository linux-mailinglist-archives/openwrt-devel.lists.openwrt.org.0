Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C234F344
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 04:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IisDZc49nc8Cl/tX4Q9qZQPxekFm+iadKf2+nBQvXwY=; b=l+MP4wU/GCDMFX
	IFyzBtNz472HGnq4dVrQWJS/MDoXxXSLO+0xacqC+blYpWBNCEmPhId4+jzrZud5FcklNRm4HPyxw
	YJRe5+HuRrH75ivXHr/Pp1yCbDslMJtND3d5sLOQT6OUXd3GcELHJCi0OursyfGNNc/F+WfcQV0a3
	nRpHXDmQVUWz8cejmq5qLd1w0/wgdu7WmIP1CjLKnq73SlLrj29ppL2JmbJtaqwTCKkxuyBJlWKA7
	O9e8GMR3SnAmRd/CKcBLReFZBtCSSDzghI5CLUHnXhmHvF8X/DwumUw0Fn2CuXG/pnTCLvJALoIuZ
	pyu+BIihIu4w+mPXkAPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heW2z-00029b-Eg; Sat, 22 Jun 2019 02:46:33 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heW2q-00029F-0Y
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 02:46:26 +0000
Received: by mail-ot1-x342.google.com with SMTP id l15so8162875otn.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 21 Jun 2019 19:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IYzH19HdcpsPYpEGcW7SBBId0Jcoinr+qGxHlJl918g=;
 b=ceHEDNcybsjKOfepQnhTUWIc9oTDfzLLFVSq+ukFq0qL6Dif11mFwk/GZZKAjV+fMI
 QVRxX2PVFfBcdrl4cvutwhcCoqJR0OjAGg4LiVG9gJrNc7WVmcpp7htZzL+Vs68Q5Ljy
 KT2k/IjVevhBSFlzK62zb6PtOUnKpxdMDmrduJH+NTtkWgqEaXU5GZbStS18yM0QLHVm
 9xHNE6RK6Uf52Wkv+bo7IcmS2USATskdICB1JyTgFUP+xunhvUXjhlZMSIMAHrVnrm52
 FKNu844rrygxbCqzw64Nuzscxx0QZ/rLfIfhKeMG29F68OvWTYFVWEKFZZ9zbiDEzaah
 XEOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IYzH19HdcpsPYpEGcW7SBBId0Jcoinr+qGxHlJl918g=;
 b=gPaDF9F+NVZIPHHpNyYmPkQDQk0N/B4oF0kLA82l00ojJBovPFUEmCSg4D4W8Fu9U9
 1Ih7TMGLsVMBc70zgfKy0tlsNEA2bBDnJZkBMfXNpWt8jTNEayTX+NnTTrHDbq6HY/M2
 socdjJvUAOKz+YX3qEAfyXaTdcOZFpbD8VI72xDNJIQLMzVfMOcUmYodv7vUG3lXgrb+
 RoQWC8GEVpDmMtSkvk1w0+K+5c46mRVB2MXIKhEs5A6kYjSMsG0tP61K+SRa0/NrpkMU
 KGT1okNPjnyMM/fVz2BH0UraEuN+zoXrqX9OHqO/G1QDNF1/DAEbOeRy1DoV3y2SwoxE
 ckWg==
X-Gm-Message-State: APjAAAXGnwik7DvqkVs09pTiCzF7nu7uhY3pXP0om+KeVTIqy9bf53Vk
 iNz9TTyGaVOwjmyWeR6iZwOk7S43IAL0V+/gXiHSlxJEOWU=
X-Google-Smtp-Source: APXvYqyIREp3CVt0lryHMuJnLph/5TR5FqNib03etou3rPm/F0s9axG6SIaxb7tU3b2M2VNBcS4tU5zvOM/3dmPrJo8=
X-Received: by 2002:a9d:12b1:: with SMTP id g46mr1637789otg.84.1561171582489; 
 Fri, 21 Jun 2019 19:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190621155023.16220-1-daniel@dd-wrt.com>
In-Reply-To: <20190621155023.16220-1-daniel@dd-wrt.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 22 Jun 2019 10:46:10 +0800
Message-ID: <CAJsYDVLOou-eiz_a9J5VuKcqczaG=88MCENhwg6YE5WqmOp_Jw@mail.gmail.com>
To: Daniel Danzberger <daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_194624_089373_30983439 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

Some comments inline :)

On Fri, Jun 21, 2019 at 11:50 PM Daniel Danzberger <daniel@dd-wrt.com> wrote:
>
> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>

When adding new device support, commit message should include a brief
description of the hardware and an installation guide.
You could check recent commits [1] for some examples.

> ---
>  .../ramips/base-files/etc/board.d/02_network  |   5 +
>  target/linux/ramips/base-files/lib/ramips.sh  |   3 +
>  target/linux/ramips/dts/AP7621-001.dts        | 157 ++++++++++++++++++
>  target/linux/ramips/image/mt7621.mk           |  12 ++
>  target/linux/ramips/mt7621/config-4.14        |   1 +
>  5 files changed, 178 insertions(+)
>  create mode 100644 target/linux/ramips/dts/AP7621-001.dts
>
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
> index 52204eacbf..ee0c23eeb5 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -39,6 +39,11 @@ ramips_setup_interfaces()
>                 ucidef_add_switch "switch0" \
>                         "0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
>                 ;;
> +       ap7621-001)
> +               ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"

There is no need to explicitly define lan and wan interfaces here.
This will be handled by ucidef_add_switch.

> +               ucidef_set_interfaces relay ifname "'wwan' 'lan'" protocol relay
> +               ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
> +               ;;
>         3g150b|\
>         3g300m|\
>         a5-v11|\
> diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
> index 093303892c..2350e88354 100755
> --- a/target/linux/ramips/base-files/lib/ramips.sh
> +++ b/target/linux/ramips/base-files/lib/ramips.sh
> @@ -46,6 +46,9 @@ ramips_board_detect() {
>         *"ALL5003")
>                 name="all5003"
>                 ;;
> +       *"AP7621-001")
> +               name="ap7621-001"
> +               ;;

This board detection is deprecated.
The first compatible string will be used as board name if an entry
isn't added here.

>         *"AR670W")
>                 name="ar670w"
>                 ;;
> diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
> new file mode 100644
> index 0000000000..587c26457e
> --- /dev/null
> +++ b/target/linux/ramips/dts/AP7621-001.dts
> @@ -0,0 +1,157 @@
> +/dts-v1/;
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +       compatible = "asiarf,ap7621-001", "mediatek,mt7621-soc";
> +       model = "AP7621-001";
> +
> +       memory@0 {
> +               device_type = "memory";
> +               reg = <0x0 0x1c000000>, <0x20000000 0x4000000>;
> +       };
> +
> +       chosen {
> +               bootargs = "console=ttyS0,57600";
> +       };
> +
> +       palmbus: palmbus@1E000000 {
> +               i2c@900 {
> +                       status = "okay";
> +               };
> +       };

What is i2c used for? If there isn't something already connected on
board, it should be disabled.

> +
> +       gpio-keys-polled {

Rename this one to "keys" according to Generic Names Recommendation in
device tree specification. [2]

> +               compatible = "gpio-keys-polled";

Interrupt based gpio-keys can be used here instead of gpio-keys-polled.

> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               poll-interval = <20>;
> +
> +               reset {
> +                       label = "reset";
> +                       gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
> +                       linux,code = <KEY_RESTART>;
> +               };
> +       };
> +
> +       gpio-leds {

This should be renamed to "leds".

> +               compatible = "gpio-leds";
> +
> +               wlan1 {
> +                       label = "ap7621-001:orange:wlan1";
> +                       gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       gpio-leds {
> +               compatible = "gpio-leds";

gpio-leds supports multiple leds in the same platform device and there
is no need to create a second "leds" node here.
Just drop the above 4 lines so that one "leds" node contains both of your leds.

> +
> +               wlan0 {
> +                       label = "ap7621-001:orange:wlan0";
> +                       gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +};
> +
> +&sdhci {
> +       status = "okay";
> +};
> +
> +&spi0 {
> +        status = "okay";
> +
> +        m25p80@0 {

This one could be renamed to "flash@0"

> +                #address-cells = <1>;
> +                #size-cells = <1>;
> +                compatible = "jedec,spi-nor";
> +                reg = <0>;
> +                spi-max-frequency = <10000000>;

10MHz is a pretty low spi frequency. You could try if a higher
frequency (e.g. 40MHz) works for you.

> +                m25p,chunked-io = <32>;

This is for an old m25p80 driver hack that has been replaced. This
line can be dropped.

> +
> +                partition@0 {
> +                        label = "u-boot";
> +                        reg = <0x0 0x30000>;
> +                        read-only;
> +                };
> +
> +//              partition@30000 {
> +//                      label = "u-boot-env";
> +//                      reg = <0x30000 0x10000>;
> +//              };

These comment lines should be dropped.

> +
> +                partition@30000 {
> +                        label = "u-boot-env";
> +                        reg = <0x30000 0x2000>;
> +                };
> +
> +                partition@32000 {
> +                        label = "2860";
> +                        reg = <0x32000 0x4000>;
> +                };
> +
> +                partition@36000 {
> +                        label = "rtdev";
> +                        reg = <0x36000 0x2000>;
> +                };
> +
> +                partition@38000 {
> +                        label = "Reserve";
> +                        reg = <0x38000 0x8000>;
> +                };
> +
> +                factory: partition@40000 {
> +                        label = "factory";
> +                        reg = <0x40000 0x10000>;
> +                        read-only;
> +                };
> +
> +                firmware: partition@50000 {
> +                        label = "firmware";

Add a compatible string here:
 compatible = "denx,uimage";
and then you don't need CONFIG_MTD_SPLIT_FIRMWARE=y which is also deprecated.

> +                        reg = <0x50000 0xfa0000>;
> +                };
> +
> +                partition@ff0000 {
> +                        label = "nvram";
> +                        reg = <0xff0000 0x10000>;
> +                };
> +        };
> +};
> +
> +&pcie {
> +       status = "okay";
> +
> +       pcie0 {
> +               wifi@14c3,7662 {
> +                       compatible = "pci14c3,7662";
> +                       reg = <0x0000 0 0 0 0>;
> +                       mediatek,mtd-eeprom = <&factory 0x0000>;
> +//                     ieee80211-freq-limit = <2400000 2500000>;

Just drop this line if it isn't needed.

> +               };
> +       };
> +
> +       pcie1 {
> +               wifi@14c3,7662 {
> +                       compatible = "pci14c3,7662";
> +                       reg = <0x0000 0 0 0 0>;
> +                       mediatek,mtd-eeprom = <&factory 0x8000>;
> +//                     ieee80211-freq-limit = <5000000 6000000>;

same as above.

> +               };
> +       };
> +};
> +
> +&ethernet {
> +       mtd-mac-address = <&factory 0xe000>;
> +       mediatek,portmap = "llllw";
> +};
> +
> +&pinctrl {
> +       state_default: pinctrl0 {
> +               gpio {
> +                       ralink,group = "wdt", "jtag" ;

gpio11 12 and 18 is used, which belongs to uart2 and wdt group.
So this line should be:
ralink,group = "uart2", "wdt";

> +                       ralink,function = "gpio";
> +               };
> +       };
> +};
> +
> diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
> index 2eb7feb5bf..29e4111ce8 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -640,3 +640,15 @@ define Device/zbt-wg3526-32M
>         kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
>  endef
>  TARGET_DEVICES += zbt-wg3526-32M
> +
> +define Device/ap7621-001

image name should be manufacturer_model. In this case it should be
asiarf_ap7621-001

> +  DTS := AP7621-001
> +  IMAGE_SIZE := $(ralink_default_fw_size_16M)
> +  SUPPORTED_DEVICES += ap7621-001

If you use device tree based board detection as said above, this
SUPPORTED_DEVICES can be dropped.
sysupgrade checks board name against SUPPORTED_DEVICES and there is
one generated by replacing "_" with "," in image name.

> +  DEVICE_TITLE := AsiaRF AP7621-001
> +  DEVICE_PACKAGES := \
> +       kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-mt7603 kmod-mt76x2 \

Is there a SATA controller available?
And according to your device tree, this router uses mt76x2 for both
bands. mt7603 isn't needed here.

> +       kmod-usb3 kmod-usb-ledtrig-usbport

There isn't a usb led so usbport trigger can be dropped here.

> +endef
> +TARGET_DEVICES += ap7621-001
> +
> diff --git a/target/linux/ramips/mt7621/config-4.14 b/target/linux/ramips/mt7621/config-4.14
> index b279c69879..3e18fc162e 100644
> --- a/target/linux/ramips/mt7621/config-4.14
> +++ b/target/linux/ramips/mt7621/config-4.14
> @@ -192,6 +192,7 @@ CONFIG_MTD_SPLIT_SEAMA_FW=y
>  CONFIG_MTD_SPLIT_TPLINK_FW=y
>  CONFIG_MTD_SPLIT_TRX_FW=y
>  CONFIG_MTD_SPLIT_UIMAGE_FW=y
> +CONFIG_MTD_SPLIT_FIRMWARE=y

As said above, this is deprecated.

>  CONFIG_MTD_UBI=y
>  CONFIG_MTD_UBI_BEB_LIMIT=20
>  CONFIG_MTD_UBI_BLOCK=y
> --
> 2.20.1
>

Regards,
Chuanhong Guo

[1] https://git.openwrt.org/?p=openwrt/openwrt.git&a=search&h=HEAD&st=commit&s=add+support+for
[2] https://github.com/devicetree-org/devicetree-specification/blob/master/source/devicetree-basics.rst#generic-names-recommendation

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
