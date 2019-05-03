Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C5213511
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 00:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lL2tV+8ys795lkxU7l4hw37ZORvdwkVBWTnN7/ZL+p0=; b=enYPqezg1OG7am
	n8q8CM91HbXXLMdZOOlk4E91Ccm3SZReb51Qux01+cs/ldIC9JEXXqbS4aJTHt4utRHgJjDEWZnZ3
	eXobIQIKaZfmtpBpKu4ProJFa8XmLoBXc6VFztM0FMaafiN3oqv91S2fJ8GZqLo88teYj1WDqkMA0
	Nc6PKqqJp0+5SkNd5eixzT2dTI7nABpEN4Jpk2vFGJGkKxjDp9Io/ZJYTbF1Z1LLg8ndYwTwrS8xN
	wKqui0oijxS04gTg6yhQvx9t02v3CWTLBRm6lYU1OZgOfLVYhLyYs6iyr7YVBu/3E+IrT3BizF1TW
	n19dkFz8m1NtHLyo3mYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMgEe-0002AW-Gw; Fri, 03 May 2019 22:00:52 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMgEW-0002A0-AG
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 22:00:47 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id B74ACA1179;
 Sat,  4 May 2019 00:00:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id rjBUGKVIx2Wu; Sat,  4 May 2019 00:00:26 +0200 (CEST)
To: Tomasz Maciej Nowak <tomek_n@o2.pl>, openwrt-devel@lists.openwrt.org
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-7-tomek_n@o2.pl>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <69de5f77-e694-d2bd-9c67-a94173c91243@hauke-m.de>
Date: Sat, 4 May 2019 00:00:25 +0200
MIME-Version: 1.0
In-Reply-To: <20190501174224.19089-7-tomek_n@o2.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_150044_663244_54A4F2BC 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 6/8] mvebu: add vendor to device names
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 5/1/19 7:42 PM, Tomasz Maciej Nowak wrote:
> Replace SoC names with vendors in device names, in few cases, and add
> vendor to developemnt boards for easier identyfying potential firmware to
> flash.

Will sysupgrade still work after this rename? Isn't there some script
which checks if the image is compatible with the currently installed image?

> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> ---
>  package/boot/uboot-mvebu/Makefile      |  2 +-
>  target/linux/mvebu/image/Makefile      |  1 -
>  target/linux/mvebu/image/cortex-a53.mk |  4 +--
>  target/linux/mvebu/image/cortex-a72.mk | 12 +++----
>  target/linux/mvebu/image/cortex-a9.mk  | 44 +++++++++++++++-----------
>  5 files changed, 34 insertions(+), 29 deletions(-)
> 
> diff --git a/package/boot/uboot-mvebu/Makefile b/package/boot/uboot-mvebu/Makefile
> index 61547acb27..06c574594b 100644
> --- a/package/boot/uboot-mvebu/Makefile
> +++ b/package/boot/uboot-mvebu/Makefile
> @@ -24,7 +24,7 @@ endef
>  
>  define U-Boot/clearfog
>    NAME:=SolidRun ClearFog A1
> -  BUILD_DEVICES:=armada-388-clearfog-base armada-388-clearfog-pro
> +  BUILD_DEVICES:=solidrun-clearfog-base solidrun-clearfog-pro
>    BUILD_SUBTARGET:=cortexa9
>    UBOOT_IMAGE:=u-boot-spl.kwb
>  endef
> diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
> index 240cc88642..fe74a12c65 100644
> --- a/target/linux/mvebu/image/Makefile
> +++ b/target/linux/mvebu/image/Makefile
> @@ -70,7 +70,6 @@ endef
>  
>  define Device/Default
>    PROFILES := Default
> -  DEVICE_DTS := $(1)
>    BOARD_NAME = $$(DEVICE_DTS)
>    KERNEL_NAME := zImage
>    KERNEL := kernel-bin | append-dtb | uImage none
> diff --git a/target/linux/mvebu/image/cortex-a53.mk b/target/linux/mvebu/image/cortex-a53.mk
> index a102f52481..4dd1e44665 100644
> --- a/target/linux/mvebu/image/cortex-a53.mk
> +++ b/target/linux/mvebu/image/cortex-a53.mk
> @@ -8,12 +8,12 @@ define Device/globalscale-espressobin
>  endef
>  TARGET_DEVICES += globalscale-espressobin
>  
> -define Device/armada-3720-db
> +define Device/marvell-armada-3720-db
>    $(call Device/Default-arm64)
>    DEVICE_TITLE := Marvell Armada 3720 Development Board DB-88F3720-DDR3
>    DEVICE_DTS := armada-3720-db
>    SUPPORTED_DEVICES := marvell,armada-3720-db
>  endef
> -TARGET_DEVICES += armada-3720-db
> +TARGET_DEVICES += marvell-armada-3720-db
>  
>  endif
> diff --git a/target/linux/mvebu/image/cortex-a72.mk b/target/linux/mvebu/image/cortex-a72.mk
> index 824f6b5d0f..3043f087cc 100644
> --- a/target/linux/mvebu/image/cortex-a72.mk
> +++ b/target/linux/mvebu/image/cortex-a72.mk
> @@ -1,30 +1,30 @@
>  ifeq ($(SUBTARGET),cortexa72)
>  
> -define Device/armada-macchiatobin
> +define Device/marvell-macchiatobin
>    $(call Device/Default-arm64)
>    DEVICE_TITLE := MACCHIATObin (SolidRun Armada 8040 Community Board)
>    DEVICE_PACKAGES += kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
>    DEVICE_DTS := armada-8040-mcbin
>    SUPPORTED_DEVICES := marvell,armada8040-mcbin
>  endef
> -TARGET_DEVICES += armada-macchiatobin
> +TARGET_DEVICES += marvell-macchiatobin
>  
> -define Device/armada-8040-db
> +define Device/marvell-armada-8040-db
>    $(call Device/Default-arm64)
>    DEVICE_TITLE := Marvell Armada 8040 DB board
>    DEVICE_DTS := armada-8040-db
>    IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
>    SUPPORTED_DEVICES := marvell,armada8040-db
>  endef
> -TARGET_DEVICES += armada-8040-db
> +TARGET_DEVICES += marvell-armada-8040-db
>  
> -define Device/armada-7040-db
> +define Device/marvell-armada-7040-db
>    $(call Device/Default-arm64)
>    DEVICE_TITLE := Marvell Armada 7040 DB board
>    DEVICE_DTS := armada-7040-db
>    IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
>    SUPPORTED_DEVICES := marvell,armada7040-db
>  endef
> -TARGET_DEVICES += armada-7040-db
> +TARGET_DEVICES += marvell-armada-7040-db
>  
>  endif
> diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
> index 252300b942..e5459dad1a 100644
> --- a/target/linux/mvebu/image/cortex-a9.mk
> +++ b/target/linux/mvebu/image/cortex-a9.mk
> @@ -61,57 +61,63 @@ define Device/linksys-wrt1900ac
>  endef
>  TARGET_DEVICES += linksys-wrt1900ac
>  
> -define Device/openblocks-ax3-4
> +define Device/plathome-openblocks-ax3-4
>    DEVICE_DTS := armada-xp-openblocks-ax3-4
> -  SUPPORTED_DEVICES := $(1)
> +  SUPPORTED_DEVICES := openblocks-ax3-4
>    BLOCKSIZE := 128k
>    PAGESIZE := 1
>    IMAGES += factory.img
>    IMAGE/factory.img := append-kernel | pad-to $$(BLOCKSIZE) | append-ubi
>    DEVICE_TITLE := Plat'Home OpenBlocks AX3
>  endef
> -TARGET_DEVICES += openblocks-ax3-4
> +TARGET_DEVICES += plathome-openblocks-ax3-4
>  
> -define Device/armada-385-db-ap
> +define Device/marvell-armada-385-db-ap
>    $(Device/NAND-256K)
> +  DEVICE_DTS := armada-385-db-ap
>    IMAGES += factory.img
>    KERNEL_SIZE := 8192k
>    DEVICE_TITLE := Marvell Armada 385 DB AP (DB-88F6820-AP)
>  endef
> -TARGET_DEVICES += armada-385-db-ap
> +TARGET_DEVICES += marvell-armada-385-db-ap
>  
> -define Device/armada-370-db
> +define Device/marvell-armada-370-db
>    $(Device/NAND-512K)
>    DEVICE_TITLE := Marvell Armada 370 DB (DB-88F6710-BP-DDR3)
> +  DEVICE_DTS := armada-370-db
>  endef
> -TARGET_DEVICES += armada-370-db
> +TARGET_DEVICES += marvell-armada-370-db
>  
> -define Device/armada-370-rd
> +define Device/marvell-armada-370-rd
>    $(Device/NAND-512K)
>    DEVICE_TITLE := Marvell Armada 370 RD (RD-88F6710-A1)
> +  DEVICE_DTS := armada-370-rd
>  endef
> -TARGET_DEVICES += armada-370-rd
> +TARGET_DEVICES += marvell-armada-370-rd
>  
> -define Device/armada-xp-db
> +define Device/marvell-armada-xp-db
>    $(Device/NAND-512K)
>    DEVICE_TITLE := Marvell Armada XP DB (DB-78460-BP)
> +  DEVICE_DTS := armada-xp-db
>  endef
> -TARGET_DEVICES += armada-xp-db
> +TARGET_DEVICES += marvell-armada-xp-db
>  
> -define Device/armada-xp-gp
> +define Device/marvell-armada-xp-gp
>    $(Device/NAND-512K)
>    DEVICE_TITLE := Marvell Armada XP GP (DB-MV784MP-GP)
> +  DEVICE_DTS := armada-xp-gp
>  endef
> -TARGET_DEVICES += armada-xp-gp
> +TARGET_DEVICES += marvell-armada-xp-gp
>  
> -define Device/armada-388-rd
> +define Device/marvell-armada-388-rd
>    DEVICE_TITLE := Marvell Armada 388 RD (RD-88F6820-AP)
> +  DEVICE_DTS := armada-388-rd
>    IMAGES := firmware.bin
>    IMAGE/firmware.bin := append-kernel | pad-to 256k | append-rootfs | pad-rootfs
>  endef
> -TARGET_DEVICES += armada-388-rd
> +TARGET_DEVICES += marvell-armada-388-rd
>  
> -define Device/armada-388-clearfog-pro
> +define Device/solidrun-clearfog-pro
>    KERNEL_INSTALL := 1
>    KERNEL := kernel-bin
>    DEVICE_TITLE := SolidRun ClearFog Pro
> @@ -123,9 +129,9 @@ define Device/armada-388-clearfog-pro
>    UBOOT := clearfog-u-boot-spl.kwb
>    BOOT_SCRIPT := clearfog
>  endef
> -TARGET_DEVICES += armada-388-clearfog-pro
> +TARGET_DEVICES += solidrun-clearfog-pro
>  
> -define Device/armada-388-clearfog-base
> +define Device/solidrun-clearfog-base
>    KERNEL_INSTALL := 1
>    KERNEL := kernel-bin
>    DEVICE_TITLE := SolidRun ClearFog Base
> @@ -136,7 +142,7 @@ define Device/armada-388-clearfog-base
>    UBOOT := clearfog-u-boot-spl.kwb
>    BOOT_SCRIPT := clearfog
>  endef
> -TARGET_DEVICES += armada-388-clearfog-base
> +TARGET_DEVICES += solidrun-clearfog-base
>  
>  define Device/globalscale-mirabox
>    $(Device/NAND-512K)
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
