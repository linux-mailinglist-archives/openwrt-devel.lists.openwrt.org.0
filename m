Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB6417FF2
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 May 2019 20:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rk8Zo1MCrLgJ1Z04+rhHiZZU23x6STTt3SWK3pwHOgo=; b=sFcCnWxrFO0FUP6QbJF9ySK/Z
	ifAyI03uScxdOc2uGQdvzX/7NC9vBASSkwLiFIe/MWcZULHws4CswMXuv+cQLZ20MhBcYLJl0hZb1
	Hj/Mx384eyX9VO9Xn4agzZoZ9hRSNXnfIjxii1igx9uOgZB1cnZ+2BIZREA5HTUmbhj0BChlfqdw5
	mCpcxUj2EGNc4gs5tIfVee25ZL66S+ah8NXvRv0al0czWdWhf2rh0m3/8yKJA6+eth+3WEggHxbQV
	9zGbGTCO8OzRP9Xd8ElVGLYMpjWPw2shEvE0Z9tfddGNnlPJsKnF8gRHmYHE3QHZ5qP2qupEvdIpF
	uSj6S0sZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORSU-0005Iz-5G; Wed, 08 May 2019 18:38:26 +0000
Received: from [2a01:7c8:fff7:142:5054:ff:fe81:dadf] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORSM-0005IY-69
 for openwrt-devel@lists.openwrt.org; Wed, 08 May 2019 18:38:20 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 98FC015F581; Wed,  8 May 2019 20:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1557340691;
 bh=fO1qUkMVZ7hpE7UkD/WKgjJf5dOs9/kgYuKw0v5pIAc=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=ib8fqJ2l2abfvGsoewCXR2vDvjEECcrQG2CGC1hWD4/Em3PfFvnpIONPVzr20V5OR
 I8f9CmZdzrt2UgnhpnFi3f+enXwUxPv86JfmCucjcI1xAN4jyExnJX/yGrYpVXNL8T
 EZgOxVMAX20i1pZV8lnlqXMvgdO9O6Dqn3vznZcM=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 atalanta.volatilesystems.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.168.236.adsl.dyn.edpnet.net
 [213.219.168.236])
 by volatilesystems.org (Postfix) with ESMTPSA id 5C72215F569;
 Wed,  8 May 2019 20:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1557340690;
 bh=fO1qUkMVZ7hpE7UkD/WKgjJf5dOs9/kgYuKw0v5pIAc=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=WNN52j1iR4E+7L9RnZH4VKTgJWdkeJlWsnrtTm/tUdUxK4V6Tqp1RuA6mMJdNqFMp
 g3j8HJXDAzx54GnUQWcc25b7Yhle5i3RBE38R9qOm80px3LmJFJvCeP+mHuE/LPohv
 sNcRRGcRIVyGwfZOr4u05wCZLereiTFCFhywbfjY=
Date: Wed, 08 May 2019 20:38:09 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Petr =?UTF-8?b?xaB0ZXRpYXI=?= <ynezz@true.cz>
Message-Id: <1557340689.6377.0@mail.volatilesystems.org>
In-Reply-To: <1557137638-1558-1-git-send-email-ynezz@true.cz>
References: <1557087260-32680-3-git-send-email-ynezz@true.cz>
 <1557137638-1558-1-git-send-email-ynezz@true.cz>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_113818_523041_12119B02 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH v2] lantiq: image: build initramfs only
 for FRITZ7362SL
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
Cc: openwrt-devel@lists.openwrt.org, David Bauer <mail@david-bauer.net>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op maandag 6 mei 2019 om 12:13 schreef Petr =A9tetiar <ynezz@true.cz>:
> Commit "lantiq/xrx200: enable initramfs images" enabled creation of
> initramfs images for all devices in lantiq's xrx200 subtarget, just
> because FRITZ7362SL needs initramfs during OpenWrt instalation.
> =

> Then David Bauer informed me, that FRITZ!Box 7412 also needs an =

> initramfs
> for initial installation [1], so I've added this device into this =

> patch as
> well.
> =

> So this commit changes lantiq to selective-ramdisk feature and adds
> NEEDS_INITRAMFS=3D1 to FRITZ7362SL and FRITZ!Box 7412 devices only.

Hi Petr,

I think this is a nice solution to what up till now was a probably =

overly broad approach. I'm probably not familiar enough
with the whole buildroot, but would the other targets with the ramdisk =

feature not need similar scrutiny?

A quick grep from master:

$ git grep FEATURES target/linux/|grep ramdisk
target/linux/apm821xx/nand/target.mk:FEATURES +=3D nand pcie ramdisk =

squashfs usb
target/linux/apm821xx/sata/target.mk:FEATURES +=3D ext4 usb ramdisk =

squashfs rootfs-part boot-part
target/linux/ar71xx/mikrotik/target.mk:FEATURES +=3D squashfs ramdisk =

minor nand
target/linux/arc770/generic/target.mk:FEATURES +=3D ramdisk usb ext4
target/linux/archs38/generic/target.mk:FEATURES +=3D ext4 usb ramdisk
target/linux/armvirt/Makefile:FEATURES+=3Dcpiogz ext4 ramdisk squashfs =

targz
target/linux/ath79/Makefile:FEATURES:=3Dramdisk
target/linux/ipq40xx/Makefile:FEATURES:=3Dsquashfs fpu ramdisk nand
target/linux/ipq806x/Makefile:FEATURES:=3Dsquashfs nand fpu ramdisk
target/linux/kirkwood/Makefile:FEATURES:=3Dusb nand squashfs ramdisk
target/linux/lantiq/xrx200/target.mk:FEATURES:=3Dsquashfs atm nand ramdisk
target/linux/lantiq/xway/target.mk:FEATURES:=3Dsquashfs atm nand ramdisk
target/linux/lantiq/xway_legacy/target.mk:FEATURES:=3Dsquashfs atm =

ramdisk small_flash
target/linux/malta/Makefile:FEATURES:=3Dramdisk
target/linux/mediatek/Makefile:FEATURES:=3Dsquashfs nand ramdisk fpu
target/linux/mpc85xx/Makefile:FEATURES:=3Dsquashfs ramdisk
target/linux/mvebu/Makefile:FEATURES:=3Dfpu usb pci pcie gpio nand =

squashfs ramdisk boot-part rootfs-part
target/linux/octeon/Makefile:FEATURES:=3Dsquashfs ramdisk pci usb
target/linux/oxnas/Makefile:FEATURES:=3Dgpio ramdisk rtc squashfs
target/linux/ramips/mt7621/target.mk:FEATURES+=3Dnand ramdisk rtc usb =

minor
target/linux/ramips/rt305x/target.mk:FEATURES+=3Dusb ramdisk small_flash

Cheers

Stijn

> =

> Cc: David Bauer <mail@david-bauer.net>
> Cc: Stijn Segers <foss@volatilesystems.org>
> Signed-off-by: Petr =A9tetiar <ynezz@true.cz>
> ---
> =

>  Changes since v1:
> =

>   * added FRITZ!Box 7412 device
> =

>  target/linux/lantiq/image/Makefile   | 2 ++
>  target/linux/lantiq/xrx200/target.mk | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/target/linux/lantiq/image/Makefile =

> b/target/linux/lantiq/image/Makefile
> index fca3fce..994dee4 100644
> --- a/target/linux/lantiq/image/Makefile
> +++ b/target/linux/lantiq/image/Makefile
> @@ -674,6 +674,7 @@ define Device/avm_fritz7412
>    IMAGE_SIZE :=3D 49152k
>    DEVICE_TITLE :=3D AVM FRITZ!Box 7412
>    DEVICE_PACKAGES :=3D kmod-ath9k kmod-owl-loader wpad-mini =

> kmod-ltq-tapi kmod-ltq-vmmc fritz-tffs-nand fritz-caldata
> +  NEEDS_INITRAMFS :=3D 1
>  endef
>  TARGET_DEVICES +=3D avm_fritz7412
> =

> @@ -685,6 +686,7 @@ define Device/avm_fritz7362sl
>    DEVICE_DTS :=3D FRITZ7362SL
>    DEVICE_TITLE :=3D AVM FRITZ!Box 7362 SL
>    DEVICE_PACKAGES :=3D kmod-ath9k kmod-owl-loader wpad-basic =

> kmod-usb-dwc2 fritz-tffs
> +  NEEDS_INITRAMFS :=3D 1
>  endef
>  TARGET_DEVICES +=3D avm_fritz7362sl
> =

> diff --git a/target/linux/lantiq/xrx200/target.mk =

> b/target/linux/lantiq/xrx200/target.mk
> index 4d92b25..8740794 100644
> --- a/target/linux/lantiq/xrx200/target.mk
> +++ b/target/linux/lantiq/xrx200/target.mk
> @@ -1,7 +1,7 @@
>  ARCH:=3Dmips
>  SUBTARGET:=3Dxrx200
>  BOARDNAME:=3DXRX200
> -FEATURES:=3Dsquashfs atm nand ramdisk
> +FEATURES:=3Dsquashfs atm nand selective-ramdisk
>  CPU_TYPE:=3D24kc
> =

>  DEFAULT_PACKAGES+=3Dkmod-leds-gpio \
> --
> 1.9.1
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
