Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE700113687
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 21:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGaZVv1WscW3hOddDdUiMTGsD3OkYi6bH3/IHdk0GRo=; b=cezeTF+KE3gLl8
	a8ZAU8SQ9SO+qlsEcu3eMwmLx1pYuJIKRM9/Yn0hRHC3DvW9ydgOng6k5kLHYRSzRjhFuswAlh6k+
	XLqSNNCQ3oNgHVgd8CMWsxZYPejLdHlEKOWYM03tF6GTVlyoCBQlxJib2hCEi5T1TmUIoLIjeVHps
	FslmyLBhO5FIagfYPUYccyzD5vBNkX5yfZ7uA29olXiFCl6/kQzK+x9c5bLJbVd8gSe9WieIJ+tQY
	WSB5fUBjpiXGs4rFCbCkJm8+xl2LqlrYhHd3pvj63cD3VIThud6sXXBzXRIThykDIuJEeUpts7ZG+
	HMeOMjbCsH6DboIKS+lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbNl-000816-W2; Wed, 04 Dec 2019 20:36:22 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbNe-00080W-1R
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 20:36:16 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1icbNU-0000XU-Sg; Wed, 04 Dec 2019 21:36:07 +0100
Date: Wed, 4 Dec 2019 21:35:54 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20191204203554.GO1281@makrotopia.org>
References: <20191204181430.4675-1-linus.luessing@c0d3.blue>
 <d7dfd705-e311-4f63-b116-1b09dcb3e13b@o2.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7dfd705-e311-4f63-b116-1b09dcb3e13b@o2.pl>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_123614_407021_4C14AB63 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] imx6: Adding Ka-Ro electronics
 TX6U-8033 Module on MB7 baseboard support
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
Cc: Simon Wunderlich <sw@simonwunderlich.de>, openwrt-devel@lists.openwrt.org,
 Linus =?iso-8859-1?Q?L=FCssing?= <linus.luessing@c0d3.blue>,
 Linus =?iso-8859-1?Q?L=FCssing?= <ll@simonwunderlich.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Dec 04, 2019 at 07:52:32PM +0100, Tomasz Maciej Nowak wrote:
> Hi,
> small nit at the end.
> =

> W dniu 04.12.2019 o=A019:14, Linus L=FCssing pisze:
> > From: Linus L=FCssing <ll@simonwunderlich.de>
> > =

> > This adds support for the Ka-Ro MB7 board with a TX6U-8033 module.
> > =

> > Specification, according to Linux DTS commit:
> > =

> >     TX6U-8033:
> >     Processor    Freescale i.MX 6 Dual Lite, 800MHz
> >     RAM          1GiB DDR3 SDRAM
> >     ROM          4GiB eMMC
> >     Power supply Single 3.1V to 5.5V
> >     Size         31mm SO-DIMM
> >     Temp. Range  industrial grade (-40=B0C/-25=B0C to 105=B0C Tj)
> > =

> > The u-boot shipped by the vendor by default expects the following parti=
tion
> > layout:
> > =

> > MBR/MSDOS, disk-id '0cc66cc0' {
> > 	0cc66cc0-01 =3D> ext2, /vmlinuz
> > 	0cc66cc0-02 =3D> ext4, rootfs
> > }
> > =

> > TX6DL U-Boot > env print
> > append_bootargs=3Drootfstype=3Dext4
> > [...]
> > bootcmd_mmc=3Dsetenv autostart no;run bootargs_mmc;ext2load mmc 0 ${ker=
neladdr} vmlinuz
> > [...]
> > rootpart_uuid=3D0cc66cc0-02
> > [...]
> > =

> > This is also one of the reasons, why only ext4 rootfs support was added
> > and tested so far. No squashfs support yet.

OpenWrt allows to easily ignore or even filter bootloader cmdline, this
is needed on *most* devices out there. Please add squashfs regardless,
as some features of OpenWrt (overlayfs, factory-reset, ...) are only
available when using squashfs (+f2fs in this case) and it should not
be difficult to do so. Also the rootpart_uuid should not be relevant
when using OpenWrt.

Let me know if anything is not clear of if you need help achieving
this.


> > =

> > Other than that, nothing fancy needs to be added or preserved on the
> > eMMC.
> > =

> > Cc: Simon Wunderlich <sw@simonwunderlich.de>
> > Signed-off-by: Linus L=FCssing <ll@simonwunderlich.de>
> > ---
> > =

> > Changelog v2:
> > * removed wildcard board names
> > =

> >  target/linux/imx6/Makefile                    |   2 +-
> >  .../imx6/base-files/etc/board.d/02_network    |   3 +-
> >  target/linux/imx6/base-files/lib/imx6.sh      |   4 +
> >  .../base-files/lib/preinit/79_move_config     |   9 ++
> >  .../imx6/base-files/lib/upgrade/platform.sh   | 108 +++++++++++++++++-
> >  target/linux/imx6/image/Makefile              |  34 ++++++
> >  .../linux/imx6/image/gen_karo_sdcard_img.sh   |  26 +++++
> >  .../imx6/patches-4.14/100-bootargs.patch      |  13 +++
> >  tools/Makefile                                |   1 +
> >  9 files changed, 197 insertions(+), 3 deletions(-)
> >  create mode 100755 target/linux/imx6/image/gen_karo_sdcard_img.sh
> > =

> > diff --git a/target/linux/imx6/Makefile b/target/linux/imx6/Makefile
> > index ac4300f7eb..8083a54e16 100644
> > --- a/target/linux/imx6/Makefile
> > +++ b/target/linux/imx6/Makefile
> > @@ -20,6 +20,6 @@ include $(INCLUDE_DIR)/target.mk
> >  =

> >  KERNELNAME:=3DzImage dtbs
> >  =

> > -DEFAULT_PACKAGES +=3D uboot-envtools mkf2fs e2fsprogs blkid
> > +DEFAULT_PACKAGES +=3D uboot-envtools mkf2fs e2fsprogs blkid partx-utils
> >  =

> >  $(eval $(call BuildTarget))
> > diff --git a/target/linux/imx6/base-files/etc/board.d/02_network b/targ=
et/linux/imx6/base-files/etc/board.d/02_network
> > index 6ec667346d..c662be72b7 100755
> > --- a/target/linux/imx6/base-files/etc/board.d/02_network
> > +++ b/target/linux/imx6/base-files/etc/board.d/02_network
> > @@ -21,7 +21,8 @@ cubox-i |\
> >  *gw552x)
> >  	ucidef_set_interfaces_lan_wan 'eth0' 'eth1'
> >  	;;
> > -*wandboard)
> > +*wandboard |\
> > +tx6u-8033)
> >  	ucidef_set_interface_wan 'eth0'
> >  	;;
> >  esac
> > diff --git a/target/linux/imx6/base-files/lib/imx6.sh b/target/linux/im=
x6/base-files/lib/imx6.sh
> > index 68caaff15f..c4b87d1c21 100755
> > --- a/target/linux/imx6/base-files/lib/imx6.sh
> > +++ b/target/linux/imx6/base-files/lib/imx6.sh
> > @@ -99,6 +99,10 @@ imx6_board_detect() {
> >  		name=3D"wandboard"
> >  		;;
> >  =

> > +	"Ka-Ro electronics TX6U-8033 Module on MB7 baseboard")
> > +		name=3D"tx6u-8033"
> > +		;;
> > +
> >  	*)
> >  		name=3D"generic"
> >  		;;
> > diff --git a/target/linux/imx6/base-files/lib/preinit/79_move_config b/=
target/linux/imx6/base-files/lib/preinit/79_move_config
> > index bdf397c4fc..de7196c7a1 100644
> > --- a/target/linux/imx6/base-files/lib/preinit/79_move_config
> > +++ b/target/linux/imx6/base-files/lib/preinit/79_move_config
> > @@ -15,6 +15,15 @@ move_config() {
> >  			umount /boot
> >  		fi
> >  		;;
> > +	tx6u-8033)
> > +		local bootpart=3D/dev/mmcblk2p1
> > +
> > +		if [ -b $bootpart ]; then
> > +			mkdir -p /boot
> > +			mount -t ext2 -o rw,noatime $bootpart /boot
> > +			[ -f /boot/sysupgrade.tgz ] && mv -f /boot/sysupgrade.tgz /
> > +		fi
> > +		;;
> >  	esac
> >  }
> >  =

> > diff --git a/target/linux/imx6/base-files/lib/upgrade/platform.sh b/tar=
get/linux/imx6/base-files/lib/upgrade/platform.sh
> > index a090cc080b..9c9bed96fe 100755
> > --- a/target/linux/imx6/base-files/lib/upgrade/platform.sh
> > +++ b/target/linux/imx6/base-files/lib/upgrade/platform.sh
> > @@ -1,5 +1,5 @@
> >  #
> > -# Copyright (C) 2010-2015 OpenWrt.org
> > +# Copyright (C) 2010-2019 OpenWrt.org
> >  #
> >  =

> >  . /lib/imx6.sh
> > @@ -30,6 +30,102 @@ apalis_do_upgrade() {
> >  	umount /boot
> >  }
> >  =

> > +# (mostly) copied from brcm2708 platform.sh (which was copied from x86=
?)
> > +tx6u_8033_check_image() {
> > +	local diskdev partdev diff
> > +
> > +	[ "$#" -gt 1 ] && return 1
> > +
> > +	export_bootdevice && export_partdevice diskdev 0 || {
> > +		echo "Unable to determine upgrade device"
> > +		return 1
> > +	}
> > +
> > +	get_partitions "/dev/$diskdev" bootdisk
> > +
> > +	#extract the boot sector from the image
> > +	get_image "$@" | dd of=3D/tmp/image.bs count=3D1 bs=3D512b 2>/dev/null
> > +
> > +	get_partitions /tmp/image.bs image
> > +
> > +	#compare tables
> > +	diff=3D"$(grep -F -x -v -f /tmp/partmap.bootdisk /tmp/partmap.image)"
> > +
> > +	rm -f /tmp/image.bs /tmp/partmap.bootdisk /tmp/partmap.image
> > +
> > +	if [ -n "$diff" ]; then
> > +		echo "Partition layout has changed. Full image will be written."
> > +		ask_bool 0 "Abort" && exit 1
> > +		return 0
> > +	fi
> > +
> > +	return 0;
> > +}
> > +
> > +# (mostly) copied from brcm2708 platform.sh (which was copied from x86=
?)
> > +tx6u_8033_do_upgrade() {
> > +	local diskdev partdev diff
> > +
> > +	export_bootdevice && export_partdevice diskdev 0 || {
> > +		echo "Unable to determine upgrade device"
> > +		return 1
> > +	}
> > +
> > +	sync
> > +
> > +	if [ "$SAVE_PARTITIONS" =3D "1" ]; then
> > +		get_partitions "/dev/$diskdev" bootdisk
> > +
> > +		#extract the boot sector from the image
> > +		get_image "$@" | dd of=3D/tmp/image.bs count=3D1 bs=3D512b
> > +
> > +		get_partitions /tmp/image.bs image
> > +
> > +		#compare tables
> > +		diff=3D"$(grep -F -x -v -f /tmp/partmap.bootdisk /tmp/partmap.image)"
> > +	else
> > +		diff=3D1
> > +	fi
> > +
> > +	if [ -n "$diff" ]; then
> > +		get_image "$@" | dd of=3D"/dev/$diskdev" bs=3D2M conv=3Dfsync
> > +
> > +		# Separate removal and addtion is necessary; otherwise, partition 1
> > +		# will be missing if it overlaps with the old partition 2
> > +		partx -d - "/dev/$diskdev"
> > +		partx -a - "/dev/$diskdev"
> > +
> > +		return 0
> > +	fi
> > +
> > +	#iterate over each partition from the image and write it to the boot =
disk
> > +	while read part start size; do
> > +		if export_partdevice partdev $part; then
> > +			echo "Writing image to /dev/$partdev..."
> > +			get_image "$@" | dd of=3D"/dev/$partdev" ibs=3D"512" obs=3D1M skip=
=3D"$start" count=3D"$size" conv=3Dfsync
> > +		else
> > +			echo "Unable to find partition $part device, skipped."
> > +	fi
> > +	done < /tmp/partmap.image
> > +
> > +	#copy partition uuid
> > +	echo "Writing new UUID to /dev/$diskdev..."
> > +	get_image "$@" | dd of=3D"/dev/$diskdev" bs=3D1 skip=3D440 count=3D4 =
seek=3D440 conv=3Dfsync
> > +}
> > +
> > +# (mostly) copied from brcm2708 platform.sh (which was copied from x86=
?)
> > +tx6u_8033_copy_config() {
> > +	local partdev
> > +
> > +	if export_partdevice partdev 1; then
> > +		mkdir -p /boot
> > +		[ -f /boot/vmlinuz.img ] || mount -t ext4 -o rw,noatime "/dev/$partd=
ev" /boot
> > +		cp -af "$UPGRADE_BACKUP" "/boot/$BACKUP_FILE"
> > +		sync
> > +		unmount /boot
> > +	fi
> > +}
> > +
> >  platform_check_image() {
> >  	local board=3D$(board_name)
> >  =

> > @@ -41,6 +137,10 @@ platform_check_image() {
> >  		nand_do_platform_check $board $1
> >  		return $?;
> >  		;;
> > +	tx6u-8033)
> > +		tx6u_8033_check_image "$1"
> > +		return $?;
> > +		;;
> >  	esac
> >  =

> >  	echo "Sysupgrade is not yet supported on $board."
> > @@ -57,6 +157,9 @@ platform_do_upgrade() {
> >  	*gw5*)
> >  		nand_do_upgrade "$1"
> >  		;;
> > +	tx6u-8033)
> > +		tx6u_8033_do_upgrade "$1"
> > +		;;
> >  	esac
> >  }
> >  =

> > @@ -67,6 +170,9 @@ platform_copy_config() {
> >  	apalis*)
> >  		apalis_copy_config
> >  		;;
> > +	tx6u-8033)
> > +		tx6u_8033_copy_config
> > +		;;
> >  	esac
> >  }
> >  =

> > diff --git a/target/linux/imx6/image/Makefile b/target/linux/imx6/image=
/Makefile
> > index d1e9e9034e..34fb4a2690 100644
> > --- a/target/linux/imx6/image/Makefile
> > +++ b/target/linux/imx6/image/Makefile
> > @@ -113,6 +113,24 @@ define Build/apalis-emmc
> >  	$(Build/imx6-combined-image-clean)
> >  endef
> >  =

> > +define Build/karo-boot-img
> > +	$(RM) -rf $@.bootdir
> > +	mkdir $@.bootdir
> > +
> > +	$(CP) $(IMAGE_KERNEL) $@.bootdir/$(KERNEL_IMG)
> > +
> > +	genext2fs --block-size $(BLOCKSIZE:%k=3D%Ki) --size-in-blocks $$((102=
4 * 1024 * $(CONFIG_TARGET_KERNEL_PARTSIZE) / ($(subst k,* 1024,$(BLOCKSIZE=
))))) --root $@.bootdir $@.boot
> > +
> > +	# convert it to revision 1 - needed for u-boot ext2load
> > +	$(STAGING_DIR_HOST)/bin/tune2fs -O filetype $@.boot
> > +	$(STAGING_DIR_HOST)/bin/e2fsck -pDf $@.boot > /dev/null
> > +endef
> > +
> > +define Build/karo-sdcard-img
> > +	./gen_karo_sdcard_img.sh $@ $@.boot $(IMAGE_ROOTFS) $(CONFIG_TARGET_K=
ERNEL_PARTSIZE) $(CONFIG_TARGET_ROOTFS_PARTSIZE)
> > +endef
> > +
> > +
> >  #################################################
> >  # Devices
> >  #################################################
> > @@ -232,4 +250,20 @@ define Device/apalis
> >  endef
> >  TARGET_DEVICES +=3D apalis
> >  =

> > +define Device/tx6u-8033
> > +  DEVICE_TITLE :=3D Ka-Ro electronics TX6U-8033 Module on MB7 baseboard
> > +  DEVICE_DTS :=3D imx6dl-tx6u-8033
> > +  FILESYSTEMS :=3D ext4
> > +  BLOCKSIZE :=3D 4k
> > +  KERNEL_SUFFIX :=3D -zImage
> > +  KERNEL_NAME :=3D zImage
> > +  KERNEL :=3D kernel-bin
> > +  KERNEL_IMG :=3D vmlinuz
> > +  IMAGES :=3D factory.img.gz sysupgrade.img.gz
> > +  IMAGE_SIZE :=3D 3776m
> > +  IMAGE/sysupgrade.img.gz :=3D karo-boot-img | karo-sdcard-img | check=
-size $$$$(IMAGE_SIZE) | gzip | append-metadata
> > +  IMAGE/factory.img.gz :=3D karo-boot-img | karo-sdcard-img | check-si=
ze $$$$(IMAGE_SIZE) | gzip
> > +endef
> > +TARGET_DEVICES +=3D tx6u-8033
> > +
> >  $(eval $(call BuildImage))
> > diff --git a/target/linux/imx6/image/gen_karo_sdcard_img.sh b/target/li=
nux/imx6/image/gen_karo_sdcard_img.sh

Please do not introduce another gen_*_sdcard_img.sh script.
See x86 for a more modern example of how to use OpenWrt on block
(eMMC and such) devices.

> > new file mode 100755
> > index 0000000000..362ce5838b
> > --- /dev/null
> > +++ b/target/linux/imx6/image/gen_karo_sdcard_img.sh
> > @@ -0,0 +1,26 @@
> > +#!/usr/bin/env bash
> > +
> > +set -x
> > +[ $# -eq 5 ] || {
> > +    echo "SYNTAX: $0 <file> <bootfs image> <rootfs image> <bootfs size=
> <rootfs size>"
> > +    exit 1
> > +}
> > +
> > +OUTPUT=3D"$1"
> > +BOOTFS=3D"$2"
> > +ROOTFS=3D"$3"
> > +BOOTFSSIZE=3D"$4"
> > +ROOTFSSIZE=3D"$5"
> > +
> > +head=3D4
> > +sect=3D63
> > +
> > +set `ptgen -o $OUTPUT -h $head -s $sect -l 4096 -t 83 -S 0x0cc66cc0 -p=
 ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
> > +
> > +BOOTOFFSET=3D"$(($1 / 512))"
> > +BOOTSIZE=3D"$(($2 / 512))"
> > +ROOTFSOFFSET=3D"$(($3 / 512))"
> > +ROOTFSSIZE=3D"$(($4 / 512))"
> > +
> > +dd bs=3D512 if=3D"$BOOTFS" of=3D"$OUTPUT" seek=3D"$BOOTOFFSET" conv=3D=
notrunc
> > +dd bs=3D512 if=3D"$ROOTFS" of=3D"$OUTPUT" seek=3D"$ROOTFSOFFSET" conv=
=3Dnotrunc
> > diff --git a/target/linux/imx6/patches-4.14/100-bootargs.patch b/target=
/linux/imx6/patches-4.14/100-bootargs.patch
> > index 0954391203..6c025e15db 100644
> > --- a/target/linux/imx6/patches-4.14/100-bootargs.patch
> > +++ b/target/linux/imx6/patches-4.14/100-bootargs.patch
> > @@ -1,3 +1,16 @@
> > +--- a/arch/arm/boot/dts/imx6dl-tx6u-8033.dts
> > ++++ b/arch/arm/boot/dts/imx6dl-tx6u-8033.dts
> > +@@ -51,6 +51,10 @@
> > + 		display =3D &display;
> > + 	};
> > + =

> > ++	chosen {
> > ++		bootargs =3D "console=3Dttymxc0,115200";
> > ++	};
> > ++
> > + 	backlight: backlight {
> > + 		compatible =3D "pwm-backlight";
> > + 		pwms =3D <&pwm2 0 500000 PWM_POLARITY_INVERTED>;
> >  --- a/arch/arm/boot/dts/imx6dl-wandboard.dts
> >  +++ b/arch/arm/boot/dts/imx6dl-wandboard.dts
> >  @@ -19,4 +19,8 @@
> > diff --git a/tools/Makefile b/tools/Makefile
> > index 2f57d25525..034e54c5d9 100644
> > --- a/tools/Makefile
> > +++ b/tools/Makefile
> > @@ -39,6 +39,7 @@ tools-$(BUILD_ISL) +=3D isl
> >  tools-$(CONFIG_USE_SPARSE) +=3D sparse
> >  tools-$(CONFIG_TARGET_apm821xx)$(CONFIG_TARGET_gemini) +=3D genext2fs
> >  tools-$(CONFIG_TARGET_tegra) +=3D cbootimage cbootimage-configs
> > +tools-$(CONFIG_TARGET_imx6) +=3D genext2fs
> =

> The target for genext2fs is already specified, merge it with previous def=
inition.
> =

> >  =

> >  # builddir dependencies
> >  $(curdir)/bison/compile :=3D $(curdir)/flex/compile
> > =

> =

> Regards
> =

> -- =

> TMN
> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
