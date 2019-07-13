Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361E86797E
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 11:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oj2aSpkvMWWB/1It65KGHjYtHgqTI35jjP5Z3eb7tQ=; b=WtbFlVQIPMXTjg
	NkKwy/w5/wIkyfNttNyxUergaU5GFAjg0V4lnUpnYpGyJZf/bc7caPWa1GRiIuWhrXRGo6jY8ZyAH
	5fZSj6VjDPqDaqnj8zEH5x1ymQ6qYpTYBLzGDe7Baxu6mBIalBf+dPKV5AtQKSe9VAvsa1CBpgsXY
	eVQeYupQhx1JC7p39tD+nTnxJfSAViWBtfdpLavZ7IUwGOYSPMF4Zc+gyGIEB/tqg+BUK2X0+P+Py
	73LjyrA+ogGItwZ1gGV1+wTrYwK6C3voSM4FSGPjyJmwqP47RXapoMM4I/y4YFDDCSdnCnIXTHg76
	rGnaSMBwGtBQRCY4VYHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmEHn-0002qT-A4; Sat, 13 Jul 2019 09:25:43 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmEHc-0002q4-OJ
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 09:25:34 +0000
Received: by mail-ot1-x344.google.com with SMTP id b7so11874367otl.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 02:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OCJo6xdsuIjDl4u8JyKv2tJehjgmRLSWcY0Wb7f+kSA=;
 b=P+FFHPOfC5dV0TT9ufHsB6o7OmQrsXSwz7auckECxAOD+ZtCmLALsbtnUUdEBiIKmF
 cBP6M0yMjlUmwFklO9AtWJXVe4+X6HxoEUcVe9UfpTHYjV0BD8r5k/xQE5zH63IaXFIS
 +uCJ8ZFrHsvNwx0p6iw5mKea83yQjwoVzIAnXH/Uo13bxxdQhIEEg4sww9YSw1S+xpmS
 kG4tu4RkDt2yxqyZWr7jtcusZSVovzoCGf4wgI0pVnH+pG/rCvf0sgKPoEE9TCTmoLJE
 5msCIElJXlLW1cOp1hiHwZV3S91u8tQv6tsz/3iD5dMiXdAdAq6BWU6bp+72YPvI/Kx5
 zu0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OCJo6xdsuIjDl4u8JyKv2tJehjgmRLSWcY0Wb7f+kSA=;
 b=KtQUMScUnAOSj6xqoz2JLwNQRcmCd3vPepNA3SPRrihoK+eR/+Mhia4pbQBJW3oNa/
 WMfxoRY3rRtwzD2PaAy/XSZES40FTx4SxIj6PxXrmfCIv0YGCl1ZC8FroZ10eZF333r7
 qqYNEKoFYqLTGQ109DVYSx9TSwgcWjdMObaeYpnL0LmsMHlUKHYu6zEXjC5Cw/LbTXd6
 YfR1nnb7DAF69IPwEbsA5ODnIG88eLWuT9w5OoA9G5c6mIfAWKmf3d/lcJC+ZVwNaVeV
 me2XLQyOT0ufO4+h2jtE3zvRmwGsYf0SCweGYVCo3oUSj8LiDpDSEzZVDDxUE6L3WZTs
 gjNg==
X-Gm-Message-State: APjAAAXpSQo0tx/8bF25VKNTFkO0NYbqCbXITrzdTKGjBnCGQ9Hp5rAi
 RTR+j71DUR0Puw882GoHlQIhYS+amR4hybNhV5o=
X-Google-Smtp-Source: APXvYqxWwkze7VRs6EiAZtU7mEB4WkbcOj2laKwDFFv36LINcEJoKEBV8ASB+BrFHOCbPgZQku4TRkWSha0MerMQWCU=
X-Received: by 2002:a9d:6c91:: with SMTP id c17mr8651939otr.181.1563009930132; 
 Sat, 13 Jul 2019 02:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <1561543343-2930-1-git-send-email-luochongjun@gl-inet.com>
In-Reply-To: <1561543343-2930-1-git-send-email-luochongjun@gl-inet.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 13 Jul 2019 17:25:19 +0800
Message-ID: <CAJsYDVK_nimffx65dcgOTCV98CZescuSoncYpsZdSmCb5PEvOA@mail.gmail.com>
To: Luochongjun <luochongjun@gl-inet.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_022532_795225_DD43C5F4 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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

Some comments inline:

On Wed, Jun 26, 2019 at 6:27 PM Luochongjun <luochongjun@gl-inet.com> wrote:
>
> This patch supports gl-ar750, which was previously supported by ar71xx.
>
> Specification:
> - SOC: QCA9531 (650MHz)
> - Flash: 16 MiB (W25Q128FVSG)
> - RAM: 128 MiB DDR2
> - Ethernet: 10/100: 2xLAN + 10/100: 1xWAN
> - Wireless: 2.4GHz (bgn) and 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - LED: 3x LEDS (white)
>
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
>
> Signed-off-by: luochongjun <luochongjun@gl-inet.com>
> ---
>  .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
>  target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 151 +++++++++++++++++++++
>  target/linux/ath79/image/generic.mk                |   8 ++
>  3 files changed, 160 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
>
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 8f0ea1d..6a9cb1c 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> @@ -116,6 +116,7 @@ case "$FIRMWARE" in
>                 ath10kcal_extract "art" 20480 2116
>                 ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
>                 ;;
> +       glinet,gl-ar750|\
>         glinet,gl-ar750s)
>                 ath10kcal_extract "art" 20480 2116
>                 ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
> new file mode 100644
> index 0000000..c20cdf5
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca953x.dtsi"
> +
> +/ {
> +       compatible = "glinet,gl-ar750", "qca,qca9531";
> +       model = "GL.iNet GL-AR750";
> +
> +       keys {
> +               compatible = "gpio-keys";
> +
> +               poll-interval = <20>;

"poll-interval" is for "gpio-keys-polled" and it specifies how often
it should check whether gpio value changed. You don't need this for
interrupt-based "gpio-keys" driver.

> +               pinctrl-names = "default";
> +               pinctrl-0 = <&jtag_disable_pins>;
> +
> +               reset {
> +                       label = "reset";
> +                       linux,code = <KEY_RESTART>;
> +                       gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               mode {
> +                       label = "mode";
> +                       linux,code = <BTN_0>;
> +                       gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               power {
> +                       label = "gl-ar750:white:power";
> +                       gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
> +                       default-state = "on";
> +               };
> +
> +               wlan2g {
> +                       label = "gl-ar750:white:wlan2g";
> +                       gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
> +                       linux,default-trigger = "phy1tpt";
> +               };
> +
> +               wlan5g {
> +                       label = "gl-ar750:white:wlan5g";
> +                       gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
> +                       linux,default-trigger = "phy0tpt";
> +               };
> +
> +       };
> +
> +       i2c {
> +               compatible = "i2c-gpio";
> +
> +               sda-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
> +               scl-gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
> +       };
> +
> +
> +};
> +
> +&pcie0 {
> +       status = "okay";
> +
> +       wifi@0,0 {
> +               compatible = "qcom,ath10k";
> +               reg = <0 0 0 0 0>;
> +               device_type = "pci";
> +       };
> +};
> +
> +&uart {
> +       status = "okay";
> +};
> +
> +&usb0 {
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       status = "okay";
> +
> +       hub_port: port@1 {
> +               reg = <1>;
> +               #trigger-source-cells = <0>;
> +       };
> +};
> +
> +&usb_phy {
> +       status = "okay";
> +};
> +
> +&spi {
> +       status = "okay";
> +       num-cs = <0>;
> +
> +       flash@0 {
> +               compatible = "jedec,spi-nor";
> +               reg = <0>;
> +               spi-max-frequency = <25000000>;
> +
> +               partitions {
> +                       compatible = "fixed-partitions";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +
> +                       partition@0 {
> +                               label = "u-boot";
> +                               reg = <0x000000 0x040000>;
> +                               read-only;
> +                       };
> +
> +                       partition@40000 {
> +                               label = "u-boot-env";
> +                               reg = <0x040000 0x010000>;
> +                               read-only;
> +                       };
> +
> +                       art: partition@50000 {
> +                               label = "art";
> +                               reg = <0x050000 0x010000>;
> +                               read-only;
> +                       };
> +
> +                       partition@60000 {
> +                               compatible = "denx,uimage";
> +                               label = "firmware";
> +                               reg = <0x060000 0xfa0000>;
> +                       };
> +               };
> +       };
> +};
> +
> +&eth0 {
> +       status = "okay";
> +       mtd-mac-address = <&art 0x0>;
> +       phy-handle = <&swphy4>;
> +};
> +
> +&eth1 {
> +       mtd-mac-address = <&art 0x0>;
> +       mtd-mac-address-increment = <1>;
> +};
> +
> +&wmac {
> +       status = "okay";
> +       mtd-cal-data = <&art 0x1000>;
> +       mtd-mac-address = <&art 0x1002>;

This is just the location of default mac address in art.
mtd-mac-address is only needed if the one in art is incorrect and you
need to specify a mac address stored elsewhere.
This line can be dropped.

> +};
> diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
> index d5f67b8..033cfa3 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -389,6 +389,14 @@ define Device/glinet_gl-ar300m-nor
>  endef
>  TARGET_DEVICES += glinet_gl-ar300m-nor
>
> +define Device/glinet_gl-ar750
> +  ATH_SOC := qca9531
> +  DEVICE_TITLE := GL.iNet GL-AR750

There's a recent splitting of DEVICE_TITLE [0]
You'd need to split this DEVICE_TITLE into DEVICE_VENDOR and DEVICE_MODEL

[0] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=8c3dbaf8b49233e275b2dce4e30dc0a2bf8c86c5

> +  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct

kmod-usb2 depends on kmod-usb-core and kmod-usb-core can be dropped here.

> +  IMAGE_SIZE := 16000k
> +endef
> +TARGET_DEVICES += glinet_gl-ar750
> +
>  define Device/glinet_gl-ar750s
>    ATH_SOC := qca9563
>    DEVICE_TITLE := GL.iNet GL-AR750S

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
