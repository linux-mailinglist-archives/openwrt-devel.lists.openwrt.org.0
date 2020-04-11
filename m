Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B131A53E9
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 00:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7pdFK0xiyT5qrh1/tIIV2C6NIwxDhmiC6wgGPAxK3pI=; b=kMO+IdhFHjc8LKtXpbV7fkOj3
	UkMJ8qPBz5U1H0duhWOEnEBnOimtY/UGKSEttWI5OKYW87yrBx/26sEmDJALTWX1BVWkGewIatqxh
	KwHNbEQnUSUmyqeRaZw995uyCYxyYdZkzIDQq1zLMrFciZQqEWq2eV0ViY4eif3xzudLDU0F08V8H
	VXTEU+OYt9lFiE/m3cseBuBchlZPBVAoM2CKn7MJo0sPgAUfRFFS7lg48uGRttenHhZP/ap4JxL1A
	08d4Nfki3idRnwNm8zTmKbj6cLsYk/rK/bZ1vHYQk0iMQBaAVNdGdiUog5ZF1b6TgCLFEuB5yOsCe
	hBFeKKx0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNOTW-0004jN-Hl; Sat, 11 Apr 2020 22:19:42 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNOTM-0004iO-P8
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 22:19:35 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MauJJ-1iqGZi29Qh-00cTs1; Sun, 12 Apr 2020 00:19:25 +0200
From: <mail@adrianschmutzler.de>
To: "'Li Zhang'" <li.zhang@gl-inet.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1586578695-23145-1-git-send-email-li.zhang@gl-inet.com>
In-Reply-To: <1586578695-23145-1-git-send-email-li.zhang@gl-inet.com>
Date: Sun, 12 Apr 2020 00:19:24 +0200
Message-ID: <017c01d6104f$42538940$c6fa9bc0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHfQwC2QQmhVi5ah+3SOPepNPhUbKhiFTIw
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:Hj5G/OrEif7L/2khYEkuEpuNAeqCLAmjpjNF5zCQjicoNK/5qBC
 RvpeQ3ThaEzf4MlvQdStlKFySv4/f9XQaSaevUyxpW8GofdZCsAZ3uxiOTHtaShjViIGEBG
 Vn/JhPng1QCk03po05EcmR052BcaBfGj78uSBZ2iv0lWx/p9tFbQ4AANEeW8HemBfFSsSRw
 xYsq2i7erHiUalJNcB2BQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:93At0IxZ1KM=:8m6Q+jr3WP7ToZyqV2eOXg
 +oaQBzEpn9hwCbkLPHtJzJv74WZAyKmLyFZ852b4P5b9VdbmkVvIi5D87b9Utxckow8iOz19N
 RR/PNxvjT87RY0rLPHwD4+zTn6NU9s46+orXOGlXK+6ktEhISpWvchhJIzAziBYedoOh4iv0d
 rFrbksvJhxR4hvFrE/Ksyy7Ip2j6VpeF0BSZYpSpAgHuTWnH0Bj3JZcohycttIiJyGIPzc17r
 DXp2Yo/s83p6a0eVQnhrztQxUXA4FBieeTmx4HngcTXk2bttg/jOxh1+yjhI+JjnAILOdDmmJ
 sAwa8EeJOyydeD0NB6wxJ4BjV2kXx5RtEyN3aFH3DSD8pY8FggCytr7z7PeJkyxKGrMwJP0bc
 uSGoE8AWh6kgcFEUI1uwNnfm8pKPmRI2LV130pDPxMHexM/nNlliak09L6RzmIBqpKs992kPs
 X9B4rVeMdiR0wJ+w3zXb24/R1OLUkoxhn/WKtBmpWNhZiAXp571oe1RbSf9HJsgANiab0sgnk
 B0kZCKCPkoCn1faNLaSN0OkUdQBiZsVHYRSsB1a4K3pnkbM7hENUPzcGyYp3OiXXa+ZDVXPtt
 ezi0A5wMOaypiEtPlQSqR/BipMzFWJ+grVVxYpAWYqaXZQYUs7YREXfdCDGO/rezfz+yRcdFq
 0745w4sjeliXGO8riC7NxOZlOG/9IzkxypA+qjfZEZZHtkMC9DO7TiLI5HjmInFsMvNC/SCNf
 K4oB5W4SHY/jmUfjo8oRIQOy2CTKT4BI6+bG/TsNuo+w5hr0UUd3nE+wTjdpckTNsJihVtwC/
 +fHCqB6Cw7T7tJ1kE+NHptRVIndi9Se/S3JuqWdXfhQpTdvSG2uI/SfzymHOdRu6qpPtFQq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_151933_118971_F120248D 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1000
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
Content-Type: multipart/mixed; boundary="===============0960889092353114143=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0960889092353114143==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=4ogQoWXhOZ0gSF=-="

This is a multipart message in MIME format.

--=-=4ogQoWXhOZ0gSF=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

some comments below (no full review yet).

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Li Zhang
> Sent: Samstag, 11. April 2020 06:18
> To: openwrt-devel@lists.openwrt.org
> Cc: Li Zhang <li.zhang@gl-inet.com>
> Subject: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-
> MV1000
>=20
> This patch adds supports for GL-MV1000.
>=20
> Specification:
> 	- SOC: Marvell Armada 88F3720 (1GHz)
> 	- Flash: 16MB
> 	- RAM: 1GB DDR4
> 	- Ethernet: 3x GE (1 WAN + 2 LAN)
> 	- EMMC: 8GB EMMC
> 	- MicroSD: 1x microSD slot
> 	- USB: 1x USB 2.0 port;1x USB 3.0 port(typec)
> 	- Button: 1x reset button
> 	- LED: 16x LEDs (3x GPIO controllable)
> 	- UART: 1x UART on PCB (JP1: 3.3V, RX, TX, GND)

Please add flashing instructions as well.

>=20
> Signed-off-by: Li Zhang <li.zhang@gl-inet.com>
> ---
>  package/boot/uboot-envtools/files/mvebu            |  3 +
>  .../linux/mvebu/base-files/etc/board.d/02_network  |  3 +-
> .../linux/mvebu/base-files/lib/upgrade/platform.sh | 19 ++++++
>  .../boot/dts/marvell/armada-gl-mv1000-emmc.dts     | 68
> +++++++++++++++++++
>  .../arm64/boot/dts/marvell/armada-gl-mv1000.dts    | 77
> ++++++++++++++++++++++
>  target/linux/mvebu/image/Makefile                  | 15 +++++
>  target/linux/mvebu/image/gen_mvebu_sdcard_img.sh   |  6 ++
>  .../mvebu/image/generic-arm64-emmc.bootscript      | 12 ++++
>  target/linux/mvebu/image/gl-mv1000.mk              | 27 ++++++++
>  9 files changed, 229 insertions(+), 1 deletion(-)  create mode 100644
> target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-
> mv1000-emmc.dts
>  create mode 100644 target/linux/mvebu/files-
> 4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
>  create mode 100644 target/linux/mvebu/image/generic-arm64-
> emmc.bootscript
>  create mode 100644 target/linux/mvebu/image/gl-mv1000.mk
>=20
> diff --git a/package/boot/uboot-envtools/files/mvebu
> b/package/boot/uboot-envtools/files/mvebu
> index c2e746d..d37c000 100644
> --- a/package/boot/uboot-envtools/files/mvebu
> +++ b/package/boot/uboot-envtools/files/mvebu
> @@ -24,6 +24,9 @@ globalscale,espressobin-v7-emmc|\
>  marvell,armada8040-mcbin)
>  	ubootenv_add_uci_config "/dev/mtd0" "0x3f0000" "0x10000"
> "0x10000" "1"
>  	;;
> +gl-mv1000)

The compatible/board name should follow the vendor,model scheme, just like =
it is used for the other devices.
Following your commit title, this would be "glinet,gl-mv1000". This applies=
 to the various cases where this is used below as well.

> +    ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x8000" "0x8000" "1"

Please take care of indent in your code. Indent should be like the rest of =
the file.
In several cases below (like for this line), you are using a different/rand=
om indent.

> +	;;
>  linksys,caiman|\
>  linksys,cobra|\
>  linksys,shelby)
> diff --git a/target/linux/mvebu/base-files/etc/board.d/02_network
> b/target/linux/mvebu/base-files/etc/board.d/02_network
> index 0881910..65f13f1 100755
> --- a/target/linux/mvebu/base-files/etc/board.d/02_network
> +++ b/target/linux/mvebu/base-files/etc/board.d/02_network
> @@ -18,7 +18,8 @@ cznic,turris-omnia)
>  globalscale,espressobin|\
>  globalscale,espressobin-emmc|\
>  globalscale,espressobin-v7|\
> -globalscale,espressobin-v7-emmc)
> +globalscale,espressobin-v7-emmc|\
> +gl-mv1000)
>  	ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
>  	;;
>  linksys,caiman|\
> diff --git a/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> b/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> index 58e7d83..840eb9c 100755
> --- a/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/mvebu/base-files/lib/upgrade/platform.sh
> @@ -19,6 +19,19 @@ platform_check_image() {
>  	esac
>  }
>=20
> +platform_do_upgrade_mv1000(){

That doesn't make sense IMO. Just use the boardname switch in platform_do_u=
pgrade(), and you won't need another function and switch-case.

> +    local firmware=3D`fw_printenv firmware | awk -F '=3D' '{print $2}'`
> +
> +    case "$firmware" in
> +    gl-mv1000-emmc)
> +        platform_do_upgrade_sdcard "$1"
> +        ;;
> +    *)
> +        default_do_upgrade "$1"
> +        ;;
> +    esac
> +}
> +
>  platform_do_upgrade() {
>  	case "$(board_name)" in
>=20
> 	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,sh
> elby|linksys,venom)
> @@ -28,6 +41,9 @@ platform_do_upgrade() {
>  	marvell,armada8040-mcbin|solidrun,clearfog-base-
> a1|solidrun,clearfog-pro-a1)
>  		platform_do_upgrade_sdcard "$1"
>  		;;
> +    gl-mv1000)
> +        platform_do_upgrade_mv1000 "$1"
> +        ;;

See above: Just add glinet,gl-mv1000-emmc case here, and remove gl-mv1000, =
as it will fall into default anyway.

>  	*)
>  		default_do_upgrade "$1"
>  		;;
> @@ -42,5 +58,8 @@ platform_copy_config() {
>  	marvell,armada8040-mcbin|solidrun,clearfog-base-
> a1|solidrun,clearfog-pro-a1)
>  		platform_copy_config_sdcard
>  		;;
> +    gl-mv1000)
> +        platform_copy_config_sdcard
> +        ;;
>  	esac
>  }
> diff --git a/target/linux/mvebu/files-
> 4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts
> b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-
> mv1000-emmc.dts
> new file mode 100644
> index 0000000..9e9c547
> --- /dev/null
> +++ b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-
> g
> +++ l-mv1000-emmc.dts

mvebu doesn't have support for kernel 4.14 anymore.

> @@ -0,0 +1,68 @@
> +/*
> + * Device Tree file for GL.iNet GL-MV1000  */
> +
> +#include "armada-3720-espressobin.dts"
> +
> +/ {
> +       model =3D "GL.inet GL-MV1000 (Marvell)";
> +       compatible =3D "gl-mv1000";
> +};
> +
> +&spi0 {
> +        status =3D "okay";
> +
> +        flash@0 {
> +                reg =3D <0>;
> +                compatible =3D "jedec,spi-nor";
> +                spi-max-frequency =3D <104000000>;
> +                m25p,fast-read;
> +                partitions {
> +                        compatible =3D "fixed-partitions";
> +                        #address-cells =3D <1>;
> +                        #size-cells =3D <1>;
> +
> +                        partition@0 {
> +                                label =3D "u-boot";
> +                                reg =3D <0 0xf0000>;
> +                        };
> +
> +                        partition@f0000 {
> +                                label =3D "u-boot-env";
> +                                reg =3D <0Xf0000 0x8000>;
> +                        };
> +
> +                        art: partition@f8000 {
> +                                label =3D "art";
> +                                reg =3D <0xf8000 0x8000>;
> +                        };
> +
> +               };
> +        };
> +};
> +
> +&sdhci1 {
> +        wp-inverted;
> +        bus-width =3D <4>;
> +        cd-gpios =3D <&gpionb 17 GPIO_ACTIVE_LOW>;
> +        marvell,pad-type =3D "sd";
> +        no-1-8-v;
> +        vqmmc-supply =3D <&vcc_sd_reg1>;
> +        status =3D "okay";
> +};
> +
> +
> +&sdhci0 {
> +        bus-width =3D <8>;
> +        mmc-ddr-1_8v;
> +        mmc-hs400-1_8v;
> +        non-removable;
> +        no-sd;
> +        no-sdio;
> +        marvell,pad-type =3D "fixed-1-8v";
> +        status =3D "okay";
> +};
> +
> +&eth0 {
> +	mtd-mac-address =3D <&art 0x0>;
> +};
> diff --git a/target/linux/mvebu/files-
> 4.14/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
> b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-gl-
> mv1000.dts
> new file mode 100644
> index 0000000..5c8c236
> --- /dev/null
> +++ b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-
> g
> +++ l-mv1000.dts
> @@ -0,0 +1,77 @@
> +/*
> + * Device Tree file for GL.iNet GL-MV1000  */
> +
> +#include "armada-3720-espressobin.dts"
> +
> +/ {
> +       model =3D "GL.inet GL-MV1000 (Marvell)";
> +       compatible =3D "gl-mv1000";
> +};
> +
> +&spi0 {
> +        status =3D "okay";
> +
> +        flash@0 {
> +                reg =3D <0>;
> +                compatible =3D "jedec,spi-nor";
> +                spi-max-frequency =3D <104000000>;
> +                m25p,fast-read;
> +                partitions {
> +                        compatible =3D "fixed-partitions";
> +                        #address-cells =3D <1>;
> +                        #size-cells =3D <1>;
> +
> +                        partition@0 {
> +                                label =3D "u-boot";
> +                                reg =3D <0 0xf0000>;
> +                        };
> +
> +                        partition@f0000 {
> +                                label =3D "u-boot-env";
> +                                reg =3D <0Xf0000 0x8000>;
> +                        };
> +
> +                        art: partition@f8000 {
> +                                label =3D "art";
> +                                reg =3D <0xf8000 0x8000>;
> +                        };
> +
> +                        partition@100000{
> +                                label =3D "dtb";
> +                                reg =3D <0X100000 0x10000>;
> +                        };
> +
> +                        partition@110000 {
> +                                label =3D "firmware";
> +                                reg =3D <0X110000 0xef0000>;
> +                        };
> +               };
> +        };
> +};
> +
> +&sdhci1 {
> +        wp-inverted;
> +        bus-width =3D <4>;
> +        cd-gpios =3D <&gpionb 17 GPIO_ACTIVE_LOW>;
> +        marvell,pad-type =3D "sd";
> +        no-1-8-v;
> +        vqmmc-supply =3D <&vcc_sd_reg1>;
> +        status =3D "okay";
> +};
> +
> +
> +&sdhci0 {
> +        bus-width =3D <8>;
> +        mmc-ddr-1_8v;
> +        mmc-hs400-1_8v;
> +        non-removable;
> +        no-sd;
> +        no-sdio;
> +        marvell,pad-type =3D "fixed-1-8v";
> +        status =3D "okay";
> +};
> +
> +&eth0 {
> +	mtd-mac-address =3D <&art 0x0>;
> +};
> diff --git a/target/linux/mvebu/image/Makefile
> b/target/linux/mvebu/image/Makefile
> index 57e5a30..d1a4b63 100644
> --- a/target/linux/mvebu/image/Makefile
> +++ b/target/linux/mvebu/image/Makefile
> @@ -68,6 +68,11 @@ define Build/omnia-medkit-initramfs
>  		--file=3D$@ -C $(dir $(IMAGE_KERNEL))boot/ .
>  endef
>=20
> +define Build/pad-dtb
> +  (dd if=3D$(KDIR)/image-$(DEVICE_DTS).dtb bs=3D64k conv=3Dsync;dd if=3D=
$@) >
> +$@.new
> +  mv $@.new $@
> +endef
> +
>  define Device/Default
>    PROFILES :=3D Default
>    BOARD_NAME =3D $$(DEVICE_DTS)
> @@ -92,6 +97,15 @@ define Device/Default-arm64
>    KERNEL :=3D kernel-bin
>  endef
>=20
> +define Device/Default-arm64-emmc
> +  BOOT_SCRIPT :=3D generic-arm64-emmc
> +  DTS_DIR :=3D $(DTS_DIR)/marvell
> +  IMAGES :=3D emmc.img
> +  IMAGE/emmc.img :=3D boot-scr | boot-img-ext4 | sdcard-img-ext4 |
> +append-metadata
> +  KERNEL_NAME :=3D Image
> +  KERNEL :=3D kernel-bin
> +endef
> +
>  define Device/NAND-128K
>    BLOCKSIZE :=3D 128k
>    PAGESIZE :=3D 2048
> @@ -112,5 +126,6 @@ endef
>  include cortex-a9.mk
>  include cortex-a53.mk
>  include cortex-a72.mk
> +include gl-mv1000.mk
>=20
>  $(eval $(call BuildImage))
> diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> index e0230e4..7696872 100755
> --- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> +++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
> @@ -51,6 +51,12 @@ while [ "$#" -ge 3 ]; do
>  	shift; shift; shift
>  done
>=20
> +model=3D''
> +model=3D$(echo $OUTFILE | grep "gl-mv1000-emmc") [ "$model" !=3D "" ] &&=
 {
> +    ptgen_args=3D"$ptgen_args -t 83 -p 7093504"
> +}
> +
>  head=3D16
>  sect=3D63
>=20
> diff --git a/target/linux/mvebu/image/generic-arm64-emmc.bootscript
> b/target/linux/mvebu/image/generic-arm64-emmc.bootscript
> new file mode 100644
> index 0000000..4de4d39
> --- /dev/null
> +++ b/target/linux/mvebu/image/generic-arm64-emmc.bootscript
> @@ -0,0 +1,12 @@
> +setenv bootargs "root=3D/dev/mmcblk0p2 rw rootwait"
> +
> +if test -n "${console}"; then
> +	setenv bootargs "${bootargs} ${console}"
> +fi
> +
> +setenv mmcdev 0
> +
> +load mmc ${mmcdev}:1 ${fdt_addr} @DTB@.dtb load mmc ${mmcdev}:1
> +${kernel_addr} Image
> +
> +booti ${kernel_addr} - ${fdt_addr}
> diff --git a/target/linux/mvebu/image/gl-mv1000.mk
> b/target/linux/mvebu/image/gl-mv1000.mk
> new file mode 100644
> index 0000000..efce4bc
> --- /dev/null
> +++ b/target/linux/mvebu/image/gl-mv1000.mk
> @@ -0,0 +1,27 @@
> +ifeq ($(SUBTARGET),cortexa53)
> +
> +define Device/gl-mv1000

Device/glinet_gl-mv1000

Best

Adrian

> +  KERNEL_NAME :=3D Image
> +  KERNEL_LOADADDR :=3D 0x000080000
> +  KERNEL :=3D kernel-bin | lzma | uImage lzma | pad-dtb
> +  DEVICE_TITLE :=3D GL.iNet GL-MV1000
> +  DEVICE_PACKAGES :=3D e2fsprogs ethtool mkf2fs kmod-fs-vfat kmod-usb2
> +kmod-usb3 kmod-usb-storage
> +  BLOCKSIZE :=3D 64k
> +  IMAGES :=3D sysupgrade.bin
> +  IMAGE_SIZE :=3D 15000k
> +  IMAGE/sysupgrade.bin :=3D append-kernel | pad-to $$$$(BLOCKSIZE) |
> +append-rootfs | pad-rootfs | append-metadata | check-size
> +$$$$(IMAGE_SIZE)
> +  DEVICE_DTS :=3D armada-gl-mv1000
> +  DTS_DIR :=3D $(DTS_DIR)/marvell
> +endef
> +TARGET_DEVICES +=3D gl-mv1000
> +
> +define Device/gl-mv1000-emmc
> +  $(call Device/Default-arm64-emmc)
> +  DEVICE_TITLE :=3D GL.iNet GL-MV1000 EMMC
> +  DEVICE_DTS :=3D armada-gl-mv1000-emmc
> +endef
> +
> +TARGET_DEVICES +=3D gl-mv1000-emmc
> +
> +endif
> +
> --
> 2.7.4
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=4ogQoWXhOZ0gSF=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6SQmkACgkQoNyKO7qx
AnANqg//fGbLiQyQ9kputOdDkGAzYge98H+sT1V2Ixy3Q9K/YZOWX1YX2BujQQy4
JW0zh1jzqSPrmdmOs9YXx7wi+ZTZvND1+nAcWNnJFNm9sD8Zgp37MUlCoXf++OCm
+4axQzPcP6SckYHBiZamMFUElF173bja58QeTnucquQlYHbl7RMPqEa4Bxt3WL1+
+1BYf8eFR+Yy02vZW3u+ks+7qqI15z3P6g1OPomUgSncsEH1Q/ZPBXz5wbjE3XF2
wmo3CLMoO85yPbP1gdW2tWBHsVGslCSkMMGi4AXg3gJgOBjOPa5ceTWR8wPH/72c
AwyBKAdEJr7GR8uCa3Mwy6lfO663lWmopatAPQy9CJGh8G4HWr12foqrffxmKUV/
Z1j4iZ+Gm9SPsTEbXsywY28sF0G6twgyB/ahk9b7n6Wwi7tZBhOWzI/8vUgDg/Qf
WKN/oT9fkKV+gkk5Fh9tbFWJtF1nh2WmPPmgZV9l8gZWN+SFMieOT0gb1kIHiF5c
X/B1zyhx0irUXOo1pGIqbfDg4mgbIcvymEXR7BqFCfZ8PnrLI6BhOW2oPwWtr+/d
Mh7VPEk2o13oArRCorHP4/DZg8aEIEXKRs/Esbh3uP26n5UxKZhaVAOJJ4JRK86c
Elqpa2nbm8dmA+etBROjKFMro9NC8oBGIYFYSyEX0E5wlt+2Zvc=
=cdqJ
-----END PGP SIGNATURE-----


--=-=4ogQoWXhOZ0gSF=-=--



--===============0960889092353114143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0960889092353114143==--


