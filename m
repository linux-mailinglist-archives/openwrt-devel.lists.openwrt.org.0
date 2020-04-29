Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBCA1BE469
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 18:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ngIZ2WJpI3mAy8yJfr8/kLHQXviCNOBokS3ZH2jl0A=; b=pPQTI0VGXhY1Yy
	LhMuQodM0YYBI0/PibX/m7FTWw816FfME718SkbvTjyu+rYBeWI8XnOghMT/uCgNKnp+MNR8S3oje
	rUbvyCNHM9Y74BOYF8+ToHNf+B6OHiaIZwRaQ8azl6HdlIwQUzJWBXnJMyAVVYbWwM1O0cDjkyHh7
	lGKEf/ucjV3dYmx3NEai7lsM8aJrfndroFKgZHf5n6+3e3hMVGyoMV0g4v0IUxY0aSTxQkCGjIjpv
	y9Q2MKDxjl5TLJBsWfxPHZpYBtZZcSJflfxojklRryFiwaC5zng4k2CZ/nMuyVxP/E4InoGtnNlcp
	63IpkQSmkPYzW1VGArnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq02-0006Np-Po; Wed, 29 Apr 2020 16:55:54 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpzq-0006H3-Cu
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 16:55:43 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03TGtUPE005371
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 10:55:30 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp@redfish-solutions.com>
In-Reply-To: <20200429135406.30705-1-fe@dev.tdt.de>
Date: Wed, 29 Apr 2020 10:55:30 -0600
Message-Id: <BBFD0D0B-5AC2-4F5F-9F7D-040F8A2D5588@redfish-solutions.com>
References: <20200429135406.30705-1-fe@dev.tdt.de>
To: Florian Eckert <fe@dev.tdt.de>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_095542_558474_87676D81 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: add gpio-it87
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
Cc: openwrt-devel@lists.openwrt.org, Eckert.Florian@googlemail.com,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



> On Apr 29, 2020, at 7:54 AM, Florian Eckert <fe@dev.tdt.de> wrote:
> 
> Since commit 910df3f06cc902ca2cb0ca8e963e9354c930df1a we have build in
> on all X86/64 platforms the gpio-it87 driver.
> 
> Since this change I am getting the following error message on boot.
>> kern.err kernel: [    1.009416] gpio_it87: no device
> 
> I do not have this device on my system. To prevent the nonsensical
> message and the loading of the module I have added this as a package, so
> that it can be installed later or during image building.
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
> package/kernel/linux/modules/other.mk | 18 ++++++++++++++++++
> target/linux/x86/64/config-4.19       |  2 +-
> target/linux/x86/64/config-5.4        |  2 +-
> 3 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
> index 43709228f9..a3fb0577f5 100644
> --- a/package/kernel/linux/modules/other.mk
> +++ b/package/kernel/linux/modules/other.mk
> @@ -295,6 +295,24 @@ endef
> $(eval $(call KernelPackage,gpio-pcf857x))
> 
> 
> +define KernelPackage/gpio-it87
> +  SUBMENU:=$(OTHER_MENU)
> +  DEPENDS:=@GPIO_SUPPORT @TARGET_x86
> +  TITLE:=GPIO support for IT87xx Super I/O chips
> +  KCONFIG:=CONFIG_GPIO_IT87
> +  FILES:=$(LINUX_DIR)/drivers/gpio/gpio-it87.ko
> +  AUTOLOAD:=$(call AutoLoad,25,gpio-it87,1)
> +endef
> +
> +define KernelPackage/gpio-it87/description
> +  This driver is tested with ITE IT8728 and IT8732 Super I/O chips, and
> +  supports the IT8761E, IT8613, IT8620E, and IT8628E Super I/O chips as
> +  well.
> +endef
> +
> +$(eval $(call KernelPackage,gpio-it87))
> +
> +
> define KernelPackage/ppdev
>   SUBMENU:=$(OTHER_MENU)
>   TITLE:=Parallel port support
> diff --git a/target/linux/x86/64/config-4.19 b/target/linux/x86/64/config-4.19
> index 00ed09a4a6..eafae899dd 100644
> --- a/target/linux/x86/64/config-4.19
> +++ b/target/linux/x86/64/config-4.19
> @@ -218,7 +218,7 @@ CONFIG_GPIOLIB=y
> CONFIG_GPIOLIB_IRQCHIP=y
> CONFIG_GPIO_ACPI=y
> CONFIG_GPIO_ICH=y
> -CONFIG_GPIO_IT87=y
> +# CONFIG_GPIO_IT87 is not set
> CONFIG_GPIO_LYNXPOINT=y
> CONFIG_GPIO_SCH=y
> CONFIG_GPIO_SYSFS=y
> diff --git a/target/linux/x86/64/config-5.4 b/target/linux/x86/64/config-5.4
> index 899668f77e..2a58983957 100644
> --- a/target/linux/x86/64/config-5.4
> +++ b/target/linux/x86/64/config-5.4
> @@ -199,7 +199,7 @@ CONFIG_GPIOLIB=y
> CONFIG_GPIOLIB_IRQCHIP=y
> CONFIG_GPIO_ACPI=y
> CONFIG_GPIO_ICH=y
> -CONFIG_GPIO_IT87=y
> +# CONFIG_GPIO_IT87 is not set
> CONFIG_GPIO_LYNXPOINT=y
> CONFIG_GPIO_SCH=y
> CONFIG_GPIO_SYSFS=y
> -- 
> 2.20.1
> 


Reviewed-by: Philip Prindeville <philipp@redfish-solutions.com>


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
