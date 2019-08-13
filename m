Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9C38B007
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 08:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfzynvTflkDcYA7I3A8CsJft7UsodhlTzmXkBefHryo=; b=X20a8bd1DgEt1j
	nh21OQXdRdGuXG1HeblGWPku0E6N2kjCvqylXqXdn64uL4K0mHc9qK3+2tMnh/T67g66RBSAd058J
	Wa0MSh/e2N3ZEjfSUFJl/tM2GXap3btvVtSx/6z/LGVH2h2NeKqCJ0WBoxaGaDb46CBL8qYa2sHFW
	isJZUV8NN2UY17GId7htz1r0x0f1oF56JmhmEwWAwFWfAGMixNysATB14v38hNWwD41KiI6m61SPL
	TrY4QDVnjj2XiZQA07wMf/kfTXL/DK9GNHHCE/tpuHPhMmmvUrMGa6zEyN1FQzu1aQT2grTr06+Tp
	iLgwh4UEKnqOdVtcKCFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQTX-0004mT-EY; Tue, 13 Aug 2019 06:40:07 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQSR-0004MB-Er
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 06:39:01 +0000
Received: by mail-ot1-x342.google.com with SMTP id e12so24233625otp.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 12 Aug 2019 23:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DFtx30B241ps4USyob/MzU+0yT+9vHxpY57iK321188=;
 b=EuFesMyuLOWmK0aEMadR6lcGMFBZco0Em99zHfTCMYoMbARoAOejFKwi7gK7AaEih1
 btC8MSMQw6SBPTxw3N+eYtyDonZybe1Z/0cYF8a1Iy7n9wFBPS0jVTIfuVuw534VAAJ2
 Ph3s0YoAVGQeeHhm15pNix7c5CPpf3e6vhLixtd6dTnmEAionC5ndefUGh/Xz4b733Gy
 gS/Pz8j45OKihrLkoMt1Qbge341i9jdyycl1El//ulYGLJhUD5ro4vqArlrPX5UJpBZY
 sZKTAqCSARvwfEuGHXSqEPBxameEAHR2hpl4xfALUplM2LJokBQkuVsYb6h+symiNHzM
 N74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DFtx30B241ps4USyob/MzU+0yT+9vHxpY57iK321188=;
 b=WMSYRrzje5DWrlVBCh+GkAhh8i3mnQu0quGevgf9Y60F/S2nsoHBtu7Fr4a157dosD
 O4usg8q1oytqaWvr1Cg42fJD10EViG+9RzQpA6NA7vbObSJ37E3gZHx4EUVS5LpI7b9z
 +XyK5JzeyqqN12xyDK63mucwV87vLQEiRFLYM5i2f2HvoYjBR3X5cBnZLl7izjvC9sJh
 uCxCbOowk0sp/CQMcXBJJHyyFYQYzdZv638AF3oOLBxc5w/fiuxpOt6sFRbtns48GzsI
 CaDnkwPIT20dP7Hlnq+uZcMXOr5Q41+S8y3erBSLY+Vge2HkzZjC60E5XA+GpTKO+O26
 tUnA==
X-Gm-Message-State: APjAAAWc4P3DxrFCD5pm7bytznF7OcBakYf+hCF7gRSqt/blLTTQN4X6
 Ny/s9WflrgZE+sR+X8YNF01eyd1V28ZngLeAyyYtA6MnKVs=
X-Google-Smtp-Source: APXvYqy34an5lLyHfuKIDP16ssZy7xg7IqjZ9zkdQgs3+6yQErpyllj3WFoSvRs3ttZelgVoUnYuJ29Lc3WeyOc2Fgg=
X-Received: by 2002:aca:df08:: with SMTP id w8mr474152oig.84.1565678335586;
 Mon, 12 Aug 2019 23:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <1564110675-20960-1-git-send-email-luochongjun@gl-inet.com>
In-Reply-To: <1564110675-20960-1-git-send-email-luochongjun@gl-inet.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 13 Aug 2019 14:38:44 +0800
Message-ID: <CAJsYDVLpM3O4yK3Q=41nvi0mJ7zUrAd-Rouhig0ZFASF8sdNoA@mail.gmail.com>
To: Luochongjun <luochongjun@gl-inet.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_233859_700757_ECADBA02 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi! Sorry for the late reply.
Here are 3 more nitpickings below:

On Fri, Jul 26, 2019 at 11:14 AM Luochongjun <luochongjun@gl-inet.com> wrote:
>
> This patch supports gl-ar750, which was previously supported by ar71xx.
>
> Specification:
> - SOC: QCA9531 (650MHz)
> - Flash: 16 MiB (W25Q128FVSG)
> - RAM: 128 MiB DDR2
> - Ethernet: 10/100: 2xLAN + 10/100: 1xWAN

A proper VLAN setup for the two LAN ports should be added in
target/linux/ath79/base-files/etc/board.d/02_network.

> - Wireless: 2.4GHz (bgn) and 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - LED: 3x LEDS (white)
>
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
>
> Signed-off-by: Luochongjun <luochongjun@gl-inet.com>
> ---
>  .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
>  target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 149 +++++++++++++++++++++
>  target/linux/ath79/image/generic.mk                |  10 ++
>  3 files changed, 160 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
>
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 4118685..5c9fa2f 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
> @@ -117,6 +117,7 @@ case "$FIRMWARE" in
>                 ath10kcal_extract "art" 20480 2116
>                 ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
>                 ;;
> +       glinet,gl-ar750|\
>         glinet,gl-ar750s)
>                 ath10kcal_extract "art" 20480 2116
>                 ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
> new file mode 100644
> index 0000000..b8f9735
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
> @@ -0,0 +1,149 @@
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

This hub_port node is only used for a usb-port LED trigger. It can be
dropped if you don't have a USB LED.

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
> +};
> diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
> index c5807f2..26b700d 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -486,6 +486,16 @@ define Device/glinet_gl-ar300m-nor
>  endef
>  TARGET_DEVICES += glinet_gl-ar300m-nor
>
> +define Device/glinet_gl-ar750
> +  ATH_SOC := qca9531
> +  DEVICE_VENDOR := GL.iNet
> +  DEVICE_MODEL := GL-AR750
> +  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct block-mount

block-mount shouldn't be included in DEVICE_PACKAGES.

> +  IMAGE_SIZE := 16000k
> +  SUPPORTED_DEVICES += gl-ar750
> +endef
> +TARGET_DEVICES += glinet_gl-ar750
> +
>  define Device/glinet_gl-ar750s
>    ATH_SOC := qca9563
>    DEVICE_VENDOR := GL.iNet
> --
> 2.7.4
>

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
