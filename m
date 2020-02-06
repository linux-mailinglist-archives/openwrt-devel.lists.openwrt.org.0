Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95507154816
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 16:30:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jrwuLISweSBJGrNCYSKswP8dz1RmPycGFt8OfXcrzpo=; b=CIVz/wZrzvnb3VJ/iq/pdU7IB
	BO8NDxGflzmRGrtpDMQleTPuReC+MeqoFqPedbvoLj8oO1AO7IMCyiS6VPs2DKLuj+7iUNQ3qyDtM
	YKANuR1llo5zT9673QUFTT1Ol3GMvE2t3Qi9lXXOOB3i0p+1FoPTAgfXSouhdeH8SBVXUinIy6m3s
	F8/qGngpqu/K+xunSkwG6lvACp9PacfKjkq+46uQl4tvNJA5pnHbAj/y8+S95kFN8Bf93WtrVgouT
	R4Lp3OCmk81gPhVD2tTWiXympC7J1/6w8ET6wGxkaRZm6euqYdgu/2U5hYU9TOwK/u8tJpUStCdYX
	W6i2KCZRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj6L-0001t2-J2; Thu, 06 Feb 2020 15:29:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj6E-0001sc-Bc
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 15:29:52 +0000
Received: by mail-lf1-x143.google.com with SMTP id n25so4412778lfl.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 07:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/YV0EazKmqsZmWMeCKwot8Y55+Wkip+ljiFeAKesXng=;
 b=u1x/BLezXjWQim9WEJCqbpN8lIZa6N7F7GzI46ONBEpFUil3KtYPHJ2k+5HMAVHiip
 CKDAE8Lo7P8/JC8OWWWe3k49B2Rfl2m0lUIqQmMdO6lFZXHk4nuEGcKrrEUfGmagKm1C
 7WURETMA0ywV6wSc+mxTPJx8B1eF1mjaEEawBTsNh1OCmpIk4TunnjgmhFyJJ5D0M5NL
 HPE5jOSYzjjE9okBr/hY2Y20bYzoXHCxr/NRtzLrUysASsONWMNORcJBRjQE7czZK7Lb
 P3yD/KrOYlIPWy0JxrHmk5CrxXIuoWkZCy6YWyVeHOdpKhzjQTNFLeCMjSlqeNe9LDu1
 XuPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/YV0EazKmqsZmWMeCKwot8Y55+Wkip+ljiFeAKesXng=;
 b=osaJUIzr6QAVdRCogtfHKLkgk1hWhSIBM71vnTEmA95FTe0L11EQJm926AjDwG6/Te
 S54XNe8R6T4mUZD2JSS7QngmyHWl5z54w8CJbDDv2pTl04n3Rdqw9D7tIfWcix3EAH53
 KEq8vjgRDQ6eN5OEu1ACTCWv4XngRhtvpGx9DNWrKIwVJv8T7NwpUBecO90x47Rfw5MD
 GuUIxzP+MLEaRPS0i8xl83Pdx6f8mxXC5HOmxB7dLNIuSIcbrPVZ/sFrLqDZBDpnhKRm
 B0EDLdB7TatqHKZ2zWHT/0ePDxMXEY3ixKnKnZYvuCSMTU7LpnACPG/ewWd1Gz/1sd0u
 84Ag==
X-Gm-Message-State: APjAAAWA+KR1qhGjjgtyRuQRgV5IMY3GFjEDw7iG76kLWeNcbMFbRRjL
 YUgyuFNeDIoys6EcozJZCY4lHhWT
X-Google-Smtp-Source: APXvYqyUmC6raTFObv4G5CP14zfxHKWxBLR0EDUrS5jTMdKB9H29/ffFLHyQJdOjApzMlbahZkJCBA==
X-Received: by 2002:a19:3f16:: with SMTP id m22mr2121476lfa.116.1581002987061; 
 Thu, 06 Feb 2020 07:29:47 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id c22sm1424709lfc.93.2020.02.06.07.29.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Feb 2020 07:29:46 -0800 (PST)
To: Chuanhong Guo <gch981213@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200205144418.1859901-1-gch981213@gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <c56df957-d2bb-0065-76cd-749cf5063401@gmail.com>
Date: Thu, 6 Feb 2020 16:29:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200205144418.1859901-1-gch981213@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_072950_425006_3BAC5092 
X-CRM114-Status: GOOD (  34.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add new ar934x spi driver
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Chuanhong,

On 05.02.2020 15:44, Chuanhong Guo wrote:
> A new shift mode was introduced since ar934x which has a way better
> performance than current bitbang driver and can handle higher spi
> clock properly. This commit adds a new driver to make use of this
> new feature.
> This new driver has chipselect properly configured and we don't need
> cs-gpios hack in dts anymore. Remove them.

Don't you think that ~24h for review this kind of patch wasn't enough?

-- 
Cheers,
Piotr

> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
> The new shift mode in ar934x doesn't need all the bit-bang code in
> the old ath79-spi driver at all and there isn't much code that
> can be shared between two modes, so I decided to write a new
> driver for it.
> With this new driver, theoretical maximum spi clock could reach
> AHB_CLOCK / 2 and maximum clock suitable for SPI NOR is AHB_CLOCK / 4
> (50MHz on QCA953x). Flash reading speed can only reach 4.33MB/s
> though, probably due to register polling time between each 4 bytes
> transfer.
> 
> I'll try upstreaming this driver later when I figured out those
> documentation stuff.
> I'm aware that ar9331 appears to have the same feature but it's not
> mentioned in datasheet. I'd like to do some stability test later
> and add ar933x support in a separated commit.
> 
>   target/linux/ath79/config-4.19                |   1 +
>   target/linux/ath79/dts/ar9344_qihoo_c301.dts  |   1 -
>   target/linux/ath79/dts/ar934x.dtsi            |   2 +-
>   .../ath79/dts/qca9531_glinet_gl-ar300m.dtsi   |   1 -
>   target/linux/ath79/dts/qca953x.dtsi           |   4 +-
>   target/linux/ath79/dts/qca9557.dtsi           |   4 +-
>   .../ath79/dts/qca9563_glinet_gl-ar750s.dtsi   |   1 -
>   .../linux/ath79/dts/qca9563_netgear_wndr.dtsi |   1 -
>   target/linux/ath79/dts/qca956x.dtsi           |   4 +-
>   ...ovide-devm_platform_ioremap_resource.patch |  61 ++++
>   ...add-driver-for-ar934x-spi-controller.patch | 275 ++++++++++++++++++
>   11 files changed, 344 insertions(+), 11 deletions(-)
>   create mode 100644 target/linux/ath79/patches-4.19/0050-v5.1-drivers-provide-devm_platform_ioremap_resource.patch
>   create mode 100644 target/linux/ath79/patches-4.19/0051-spi-add-driver-for-ar934x-spi-controller.patch
> 
> diff --git a/target/linux/ath79/config-4.19 b/target/linux/ath79/config-4.19
> index be5e46ac76..d92da1fbe2 100644
> --- a/target/linux/ath79/config-4.19
> +++ b/target/linux/ath79/config-4.19
> @@ -211,6 +211,7 @@ CONFIG_SERIAL_AR933X_CONSOLE=y
>   CONFIG_SERIAL_AR933X_NR_UARTS=2
>   CONFIG_SERIAL_OF_PLATFORM=y
>   CONFIG_SPI=y
> +CONFIG_SPI_AR934X=y
>   CONFIG_SPI_ATH79=y
>   CONFIG_SPI_BITBANG=y
>   CONFIG_SPI_GPIO=y
> diff --git a/target/linux/ath79/dts/ar9344_qihoo_c301.dts b/target/linux/ath79/dts/ar9344_qihoo_c301.dts
> index 746c7f588e..46d1f4c4c8 100644
> --- a/target/linux/ath79/dts/ar9344_qihoo_c301.dts
> +++ b/target/linux/ath79/dts/ar9344_qihoo_c301.dts
> @@ -110,7 +110,6 @@
>   	status = "okay";
>   
>   	num-cs = <2>;
> -	cs-gpios= <0>, <0>;
>   
>   	flash@0 {
>   		#address-cells = <1>;
> diff --git a/target/linux/ath79/dts/ar934x.dtsi b/target/linux/ath79/dts/ar934x.dtsi
> index 8cd0b4e086..a5e97c1a51 100644
> --- a/target/linux/ath79/dts/ar934x.dtsi
> +++ b/target/linux/ath79/dts/ar934x.dtsi
> @@ -183,7 +183,7 @@
>   		};
>   
>   		spi: spi@1f000000 {
> -			compatible = "qca,ar9340-spi", "qca,ar7100-spi";
> +			compatible = "qca,ar934x-spi";
>   			reg = <0x1f000000 0x1c>;
>   
>   			clocks = <&pll ATH79_CLK_AHB>;
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> index f06305c47f..d769225fd4 100644
> --- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> @@ -76,7 +76,6 @@
>   	status = "okay";
>   
>   	num-cs = <2>;
> -	cs-gpios = <0>, <0>;
>   
>   	flash@0 {
>   		compatible = "jedec,spi-nor";
> diff --git a/target/linux/ath79/dts/qca953x.dtsi b/target/linux/ath79/dts/qca953x.dtsi
> index 73a6ad91e5..1db0ef4e5c 100644
> --- a/target/linux/ath79/dts/qca953x.dtsi
> +++ b/target/linux/ath79/dts/qca953x.dtsi
> @@ -201,8 +201,8 @@
>   		};
>   
>   		spi: spi@1f000000 {
> -			compatible = "qca,ar9530-spi", "qca,ar7100-spi";
> -			reg = <0x1f000000 0x10>;
> +			compatible = "qca,ar934x-spi";
> +			reg = <0x1f000000 0x1c>;
>   
>   			clocks = <&pll ATH79_CLK_AHB>;
>   			clock-names = "ahb";
> diff --git a/target/linux/ath79/dts/qca9557.dtsi b/target/linux/ath79/dts/qca9557.dtsi
> index d5d3f02544..fbd12e89cb 100644
> --- a/target/linux/ath79/dts/qca9557.dtsi
> +++ b/target/linux/ath79/dts/qca9557.dtsi
> @@ -292,8 +292,8 @@
>   		};
>   
>   		spi: spi@1f000000 {
> -			compatible = "qca,ar9557-spi", "qca,ar7100-spi";
> -			reg = <0x1f000000 0x10>;
> +			compatible = "qca,ar934x-spi";
> +			reg = <0x1f000000 0x1c>;
>   
>   			clocks = <&pll ATH79_CLK_AHB>;
>   			clock-names = "ahb";
> diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
> index 3e30a0fd0b..8a00029c65 100644
> --- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
> +++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
> @@ -75,7 +75,6 @@
>   	status = "okay";
>   
>   	num-cs = <2>;
> -	cs-gpios = <0>, <0>;
>   
>   	flash_nor: flash@0 {
>   		compatible = "jedec,spi-nor";
> diff --git a/target/linux/ath79/dts/qca9563_netgear_wndr.dtsi b/target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
> index bc06c5bd9d..29b422536f 100644
> --- a/target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
> +++ b/target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
> @@ -100,7 +100,6 @@
>   	status = "okay";
>   
>   	num-cs = <2>;
> -	cs-gpios = <0>, <0>;
>   
>   	flash@0 {
>   		compatible = "jedec,spi-nor";
> diff --git a/target/linux/ath79/dts/qca956x.dtsi b/target/linux/ath79/dts/qca956x.dtsi
> index 03541b86fb..5472ebec08 100644
> --- a/target/linux/ath79/dts/qca956x.dtsi
> +++ b/target/linux/ath79/dts/qca956x.dtsi
> @@ -215,8 +215,8 @@
>   		};
>   
>   		spi: spi@1f000000 {
> -			compatible = "qca,qca9560-spi", "qca,ar7100-spi";
> -			reg = <0x1f000000 0x10>;
> +			compatible = "qca,ar934x-spi";
> +			reg = <0x1f000000 0x1c>;
>   
>   			clocks = <&pll ATH79_CLK_AHB>;
>   			clock-names = "ahb";
> diff --git a/target/linux/ath79/patches-4.19/0050-v5.1-drivers-provide-devm_platform_ioremap_resource.patch b/target/linux/ath79/patches-4.19/0050-v5.1-drivers-provide-devm_platform_ioremap_resource.patch
> new file mode 100644
> index 0000000000..a52addbf95
> --- /dev/null
> +++ b/target/linux/ath79/patches-4.19/0050-v5.1-drivers-provide-devm_platform_ioremap_resource.patch
> @@ -0,0 +1,61 @@
> +From 7945f929f1a77a1c8887a97ca07f87626858ff42 Mon Sep 17 00:00:00 2001
> +From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> +Date: Wed, 20 Feb 2019 11:12:39 +0000
> +Subject: [PATCH] drivers: provide devm_platform_ioremap_resource()
> +
> +There are currently 1200+ instances of using platform_get_resource()
> +and devm_ioremap_resource() together in the kernel tree.
> +
> +This patch wraps these two calls in a single helper. Thanks to that
> +we don't have to declare a local variable for struct resource * and can
> +omit the redundant argument for resource type. We also have one
> +function call less.
> +
> +Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> +Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> +Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> +Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> +---
> + drivers/base/platform.c         | 18 ++++++++++++++++++
> + include/linux/platform_device.h |  3 +++
> + 2 files changed, 21 insertions(+)
> +
> +--- a/drivers/base/platform.c
> ++++ b/drivers/base/platform.c
> +@@ -80,6 +80,24 @@ struct resource *platform_get_resource(s
> + EXPORT_SYMBOL_GPL(platform_get_resource);
> +
> + /**
> ++ * devm_platform_ioremap_resource - call devm_ioremap_resource() for a platform
> ++ *				    device
> ++ *
> ++ * @pdev: platform device to use both for memory resource lookup as well as
> ++ *        resource managemend
> ++ * @index: resource index
> ++ */
> ++void __iomem *devm_platform_ioremap_resource(struct platform_device *pdev,
> ++					     unsigned int index)
> ++{
> ++	struct resource *res;
> ++
> ++	res = platform_get_resource(pdev, IORESOURCE_MEM, index);
> ++	return devm_ioremap_resource(&pdev->dev, res);
> ++}
> ++EXPORT_SYMBOL_GPL(devm_platform_ioremap_resource);
> ++
> ++/**
> +  * platform_get_irq - get an IRQ for a device
> +  * @dev: platform device
> +  * @num: IRQ number index
> +--- a/include/linux/platform_device.h
> ++++ b/include/linux/platform_device.h
> +@@ -51,6 +51,9 @@ extern struct device platform_bus;
> + extern void arch_setup_pdev_archdata(struct platform_device *);
> + extern struct resource *platform_get_resource(struct platform_device *,
> + 					      unsigned int, unsigned int);
> ++extern void __iomem *
> ++devm_platform_ioremap_resource(struct platform_device *pdev,
> ++			       unsigned int index);
> + extern int platform_get_irq(struct platform_device *, unsigned int);
> + extern int platform_irq_count(struct platform_device *);
> + extern struct resource *platform_get_resource_byname(struct platform_device *,
> diff --git a/target/linux/ath79/patches-4.19/0051-spi-add-driver-for-ar934x-spi-controller.patch b/target/linux/ath79/patches-4.19/0051-spi-add-driver-for-ar934x-spi-controller.patch
> new file mode 100644
> index 0000000000..8e24b39058
> --- /dev/null
> +++ b/target/linux/ath79/patches-4.19/0051-spi-add-driver-for-ar934x-spi-controller.patch
> @@ -0,0 +1,275 @@
> +From ca30c23e100c03cfd30a2dd90bc82a983b750765 Mon Sep 17 00:00:00 2001
> +From: Chuanhong Guo <gch981213@gmail.com>
> +Date: Wed, 5 Feb 2020 18:25:37 +0800
> +Subject: [PATCH] spi: add driver for ar934x spi controller
> +
> +This patch adds driver for SPI controller found in Qualcomm Atheros
> +AR934x/QCA95xx SoCs.
> +
> +Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> +---
> + drivers/spi/Kconfig      |   7 ++
> + drivers/spi/Makefile     |   1 +
> + drivers/spi/spi-ar934x.c | 230 +++++++++++++++++++++++++++++++++++++++
> + 3 files changed, 238 insertions(+)
> + create mode 100644 drivers/spi/spi-ar934x.c
> +
> +--- a/drivers/spi/Kconfig
> ++++ b/drivers/spi/Kconfig
> +@@ -61,6 +61,13 @@ config SPI_ALTERA
> + 	help
> + 	  This is the driver for the Altera SPI Controller.
> +
> ++config SPI_AR934X
> ++	tristate "Qualcomm Atheros AR934X/QCA95XX SPI controller driver"
> ++	depends on ATH79 || COMPILE_TEST
> ++	help
> ++	  This enables support for the SPI controller present on the
> ++	  Qualcomm Atheros AR934X/QCA95XX SoCs.
> ++
> + config SPI_ATH79
> + 	tristate "Atheros AR71XX/AR724X/AR913X SPI controller driver"
> + 	depends on ATH79 && GPIOLIB
> +--- a/drivers/spi/Makefile
> ++++ b/drivers/spi/Makefile
> +@@ -14,6 +14,7 @@ obj-$(CONFIG_SPI_LOOPBACK_TEST)		+= spi-
> +
> + # SPI master controller drivers (bus)
> + obj-$(CONFIG_SPI_ALTERA)		+= spi-altera.o
> ++obj-$(CONFIG_SPI_AR934X)		+= spi-ar934x.o
> + obj-$(CONFIG_SPI_ARMADA_3700)		+= spi-armada-3700.o
> + obj-$(CONFIG_SPI_ATMEL)			+= spi-atmel.o
> + obj-$(CONFIG_SPI_ATH79)			+= spi-ath79.o
> +--- /dev/null
> ++++ b/drivers/spi/spi-ar934x.c
> +@@ -0,0 +1,230 @@
> ++// SPDX-License-Identifier: GPL-2.0
> ++/*
> ++ * SPI controller driver for Qualcomm Atheros AR934x/QCA95xx SoCs
> ++ *
> ++ * Copyright (C) 2020 Chuanhong Guo <gch981213@gmail.com>
> ++ *
> ++ * Based on spi-mt7621.c:
> ++ * Copyright (C) 2011 Sergiy <piratfm@gmail.com>
> ++ * Copyright (C) 2011-2013 Gabor Juhos <juhosg@openwrt.org>
> ++ * Copyright (C) 2014-2015 Felix Fietkau <nbd@nbd.name>
> ++ */
> ++
> ++#include <linux/clk.h>
> ++#include <linux/io.h>
> ++#include <linux/iopoll.h>
> ++#include <linux/kernel.h>
> ++#include <linux/module.h>
> ++#include <linux/of_device.h>
> ++#include <linux/spi/spi.h>
> ++
> ++#define DRIVER_NAME "spi-ar934x"
> ++
> ++#define AR934X_SPI_REG_FS		0x00
> ++#define AR934X_SPI_ENABLE		BIT(0)
> ++
> ++#define AR934X_SPI_REG_CTRL		0x04
> ++#define AR934X_SPI_CLK_MASK		GENMASK(5, 0)
> ++
> ++#define AR934X_SPI_DATAOUT		0x10
> ++
> ++#define AR934X_SPI_REG_SHIFT_CTRL	0x14
> ++#define AR934X_SPI_SHIFT_EN		BIT(31)
> ++#define AR934X_SPI_SHIFT_CS(n)		BIT(28 + (n))
> ++#define AR934X_SPI_SHIFT_TERM		26
> ++#define AR934X_SPI_SHIFT_VAL(cs, term, count)			\
> ++	(AR934X_SPI_SHIFT_EN | AR934X_SPI_SHIFT_CS(cs) |	\
> ++	(term) << AR934X_SPI_SHIFT_TERM | (count))
> ++
> ++#define AR934X_SPI_DATAIN 0x18
> ++
> ++struct ar934x_spi {
> ++	struct spi_controller *ctlr;
> ++	void __iomem *base;
> ++	struct clk *clk;
> ++	unsigned int clk_freq;
> ++};
> ++
> ++static inline int ar934x_spi_clk_div(struct ar934x_spi *sp, unsigned int freq)
> ++{
> ++	int div = DIV_ROUND_UP(sp->clk_freq, freq * 2) - 1;
> ++
> ++	if (div < 0)
> ++		return 0;
> ++	else if (div > AR934X_SPI_CLK_MASK)
> ++		return -EINVAL;
> ++	else
> ++		return div;
> ++}
> ++
> ++static int ar934x_spi_setup(struct spi_device *spi)
> ++{
> ++	struct ar934x_spi *sp = spi_controller_get_devdata(spi->master);
> ++
> ++	if ((spi->max_speed_hz == 0) ||
> ++	    (spi->max_speed_hz > (sp->clk_freq / 2))) {
> ++		spi->max_speed_hz = sp->clk_freq / 2;
> ++	} else if (spi->max_speed_hz < (sp->clk_freq / 128)) {
> ++		dev_err(&spi->dev, "spi clock is too low\n");
> ++		return -EINVAL;
> ++	}
> ++
> ++	return 0;
> ++}
> ++
> ++static int ar934x_spi_transfer_one(struct spi_controller *master,
> ++				   struct spi_message *m)
> ++{
> ++	struct ar934x_spi *sp = spi_controller_get_devdata(master);
> ++	struct spi_transfer *t = NULL;
> ++	struct spi_device *spi = m->spi;
> ++	unsigned long trx_done, trx_cur;
> ++	int stat = 0;
> ++	u8 term = 0;
> ++	int div, i;
> ++	u32 reg;
> ++	const u8 *tx_buf;
> ++	u8 *buf;
> ++
> ++	m->actual_length = 0;
> ++	list_for_each_entry(t, &m->transfers, transfer_list) {
> ++		if (t->speed_hz)
> ++			div = ar934x_spi_clk_div(sp, t->speed_hz);
> ++		else
> ++			div = ar934x_spi_clk_div(sp, spi->max_speed_hz);
> ++		if (div < 0) {
> ++			stat = -EIO;
> ++			goto msg_done;
> ++		}
> ++
> ++		reg = ioread32(sp->base + AR934X_SPI_REG_CTRL);
> ++		reg &= ~AR934X_SPI_CLK_MASK;
> ++		reg |= div;
> ++		iowrite32(reg, sp->base + AR934X_SPI_REG_CTRL);
> ++		iowrite32(0, sp->base + AR934X_SPI_DATAOUT);
> ++
> ++		for (trx_done = 0; trx_done < t->len; trx_done += 4) {
> ++			trx_cur = t->len - trx_done;
> ++			if (trx_cur > 4)
> ++				trx_cur = 4;
> ++			else if (list_is_last(&t->transfer_list, &m->transfers))
> ++				term = 1;
> ++
> ++			if (t->tx_buf) {
> ++				tx_buf = t->tx_buf + trx_done;
> ++				reg = tx_buf[0];
> ++				for (i = 1; i < trx_cur; i++)
> ++					reg = reg << 8 | tx_buf[i];
> ++				iowrite32(reg, sp->base + AR934X_SPI_DATAOUT);
> ++			}
> ++
> ++			reg = AR934X_SPI_SHIFT_VAL(spi->chip_select, term,
> ++						   trx_cur * 8);
> ++			iowrite32(reg, sp->base + AR934X_SPI_REG_SHIFT_CTRL);
> ++			stat = readl_poll_timeout(
> ++				sp->base + AR934X_SPI_REG_SHIFT_CTRL, reg,
> ++				!(reg & AR934X_SPI_SHIFT_EN), 0, 5);
> ++			if (stat < 0)
> ++				goto msg_done;
> ++
> ++			if (t->rx_buf) {
> ++				reg = ioread32(sp->base + AR934X_SPI_DATAIN);
> ++				buf = t->rx_buf + trx_done;
> ++				for (i = 0; i < trx_cur; i++) {
> ++					buf[trx_cur - i - 1] = reg & 0xff;
> ++					reg >>= 8;
> ++				}
> ++			}
> ++		}
> ++		m->actual_length += t->len;
> ++	}
> ++
> ++msg_done:
> ++	m->status = stat;
> ++	spi_finalize_current_message(master);
> ++
> ++	return 0;
> ++}
> ++
> ++static const struct of_device_id ar934x_spi_match[] = {
> ++	{ .compatible = "qca,ar934x-spi" },
> ++	{},
> ++};
> ++MODULE_DEVICE_TABLE(of, ar934x_spi_match);
> ++
> ++static int ar934x_spi_probe(struct platform_device *pdev)
> ++{
> ++	struct spi_controller *ctlr;
> ++	struct ar934x_spi *sp;
> ++	void __iomem *base;
> ++	struct clk *clk;
> ++	int ret;
> ++
> ++	base = devm_platform_ioremap_resource(pdev, 0);
> ++	if (IS_ERR(base))
> ++		return PTR_ERR(base);
> ++
> ++	clk = devm_clk_get(&pdev->dev, NULL);
> ++	if (IS_ERR(clk)) {
> ++		dev_err(&pdev->dev, "failed to get clock\n");
> ++		return PTR_ERR(clk);
> ++	}
> ++
> ++	ret = clk_prepare_enable(clk);
> ++	if (ret)
> ++		return ret;
> ++
> ++	ctlr = spi_alloc_master(&pdev->dev, sizeof(*sp));
> ++	if (!ctlr) {
> ++		dev_info(&pdev->dev, "failed to allocate spi controller\n");
> ++		return -ENOMEM;
> ++	}
> ++
> ++	iowrite32(AR934X_SPI_ENABLE, base + AR934X_SPI_REG_FS);
> ++
> ++	ctlr->mode_bits = SPI_LSB_FIRST;
> ++	ctlr->setup = ar934x_spi_setup;
> ++	ctlr->transfer_one_message = ar934x_spi_transfer_one;
> ++	ctlr->bits_per_word_mask = SPI_BPW_MASK(8);
> ++	ctlr->dev.of_node = pdev->dev.of_node;
> ++	ctlr->num_chipselect = 3;
> ++
> ++	dev_set_drvdata(&pdev->dev, ctlr);
> ++
> ++	sp = spi_controller_get_devdata(ctlr);
> ++	sp->base = base;
> ++	sp->clk = clk;
> ++	sp->clk_freq = clk_get_rate(clk);
> ++	sp->ctlr = ctlr;
> ++
> ++	return devm_spi_register_controller(&pdev->dev, ctlr);
> ++}
> ++
> ++static int ar934x_spi_remove(struct platform_device *pdev)
> ++{
> ++	struct spi_controller *ctlr;
> ++	struct ar934x_spi *sp;
> ++
> ++	ctlr = dev_get_drvdata(&pdev->dev);
> ++	sp = spi_controller_get_devdata(ctlr);
> ++
> ++	clk_disable_unprepare(sp->clk);
> ++
> ++	return 0;
> ++}
> ++
> ++static struct platform_driver ar934x_spi_driver = {
> ++	.driver = {
> ++		.name = DRIVER_NAME,
> ++		.of_match_table = ar934x_spi_match,
> ++	},
> ++	.probe = ar934x_spi_probe,
> ++	.remove = ar934x_spi_remove,
> ++};
> ++
> ++module_platform_driver(ar934x_spi_driver);
> ++
> ++MODULE_DESCRIPTION("SPI controller driver for Qualcomm Atheros AR934x/QCA95xx");
> ++MODULE_AUTHOR("Chuanhong Guo <gch981213@gmail.com>");
> ++MODULE_LICENSE("GPL v2");
> ++MODULE_ALIAS("platform:" DRIVER_NAME);
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
