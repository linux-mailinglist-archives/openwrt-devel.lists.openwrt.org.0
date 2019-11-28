Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364F010CDE4
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 18:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RjA04xLw6jAcfNoCtshy24qYoK0NqNLrYtkgUM5GBVg=; b=lM6ve6EPphyJq9eLPxqNWPfld
	97g4BVFOKgt94XW+ia7tnM0Nv5hFuG0rJIuSjsy2ynpU55aWdl1x3c4ePANxtsB2IFIGe3CZK+unE
	QmESs0MDuXPp6OniO/Na/5TslreLjCOqDZcA0qo0y9ly8NxjKqrbtuWyoVxHQyrenu+cNh8nmpgmQ
	LDDyXpotmzHrG9YLi/b/7Fb2jwsRj85cmR+6lUYa5/6U8EsvfDhzz6+KgvkHOyP5vbWgOAPYHbP05
	vpSdos1ZEHjzmDnBwf3i/1LyDKYEGDa03MVJUzMa5b/Pm3HTO+C6iR0utxgXtAgeL6Q0AKMvaXMo/
	VhseNljZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNcZ-0007ux-Ao; Thu, 28 Nov 2019 17:30:27 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNcO-0007uC-Ss
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 17:30:18 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MhlCa-1i5jla2O9I-00dn6V; Thu, 28
 Nov 2019 18:30:10 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Linus_L=C3=BCssing'?= <linus.luessing@c0d3.blue>,
 <openwrt-devel@lists.openwrt.org>
References: <20191128170635.4397-1-linus.luessing@c0d3.blue>
In-Reply-To: <20191128170635.4397-1-linus.luessing@c0d3.blue>
Date: Thu, 28 Nov 2019 18:30:10 +0100
Message-ID: <018101d5a611$7c3635c0$74a2a140$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKGPTOZaE7OCMr+yQWzW0bI4D6ijKY/panw
X-Provags-ID: V03:K1:KWZ9IkdI/sHLdTx6xWELLbAuuAoNqKgLqIyCoHUHE5TH4wdd3Wm
 Xay6pPX7lLrSXarNdAU5de6mBF82MskLBydybYHz9u8QHt1XOZE/PysEMod7D6Srp7nxIBN
 K7OXhcjYI7bMYYGIrLoE9zHWU7vIMEY3/QAbS9JXtGtbjU7P6hlI38LpHL0ldnItHTWBq/7
 1jo0ATdYv6Y0QPwRrfYng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DOb4R1MisQw=:Lr1rPmeOf9XoMea36QG2hT
 O0gcAe+PJ8vCLTWX/ZNnhgodLlxggM6cWY2nu6IbqnWf6STBDnpnyWXLXjSqS5k1phI3ziniV
 M+eoxVKaatLACmeq0qn1Jux0m3iZGFnKHp6x98P9q3v0F57tvwrq41YuETWaK93nD2os2aa0/
 bBGUnhfhpFSktoVy/eyrYKI9c4cI9yBawue9/PtUl6U7GMsDHYeWp1rE20mrvIkhl/UgDbFrM
 NQ4U9gcGrHIgBwuiHgWAJSpaQDHibiKzZB80D+8D2S7B0RSBeBdu0ky32DG5ApHV+IK5e2yhp
 CKysrvsJlSEBwf3KcjjBdlngPUA/VxXuAGIbu/O8/971p1HGTjIkNbiFReDppzj3odsi+xL4l
 N0Zny5EGEifbXDPfZ0h+dL4M/gtO6cRJnw46yIoOGAG68PEu79TiXt0adFVl5eWLzoN4eo2ID
 HgiQDGQnDA2BQ/G6AXzX2eonp4lC90Xd2TaIasZI5PgyBLU3hxgrk4JHwXu5reAU6AvGituvv
 n58p010rPdgGeNRE/1rX261GbG6bytLNTx76pwNd6kqmCSVe5BPR76S01+SOk0ukk+JmOyZrt
 KFyQ96u0dqF0nT9YjNfuCOryVTapgoplf9VE32oe/J94L/6IiyT6hW/dX+OGLxVMeoQPdB4nv
 sc62xCcM5ehEfvgRDDHz6lcmq71JnggQXN7eIl263bdeSscFcnlkmYxGjCJrBenBFc1NUPRDq
 Zj3j/nNc+I+y5QUDqb50PvzqTfHiiHdwBxZ7BhOM55yKthxNP8ZPlpEyoxCDAK0sLJZ1kv7u2
 sMz0dz7eviZagJYIoa+p0+l86i5r4t4SyGVZlX6YhmhNlY2IZ9soCF1L7mHb624hjp41ytghJ
 QX7IkX0T5z/wQTjv6y2hft6H3TKocK4jamRjs3eqw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_093017_231559_39C27414 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: Adding Ka-Ro electronics
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
Cc: =?utf-8?Q?'Linus_L=C3=BCssing'?= <ll@simonwunderlich.de>,
 'Simon Wunderlich' <sw@simonwunderlich.de>
Content-Type: multipart/mixed; boundary="===============8003704923637801965=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8003704923637801965==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=vcie22L+AWvHEq=-="

This is a multipart message in MIME format.

--=-=vcie22L+AWvHEq=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

[...]

> -*wandboard)
> +*wandboard |\
> +*tx6u-8033)
>  	ucidef_set_interface_wan 'eth0'
>  	;;

Please do not use wildcard characters for the board name. This makes it rea=
lly ugly to change anything later, as you cannot grep for a particular devi=
ce.
Despite, I do not see any reason for introducing a wildcard for supporting =
a single device.

>  esac
> diff --git a/target/linux/imx6/base-files/lib/imx6.sh b/target/linux/imx6=
/base-
> files/lib/imx6.sh
> index 68caaff15f..c4b87d1c21 100755
> --- a/target/linux/imx6/base-files/lib/imx6.sh
> +++ b/target/linux/imx6/base-files/lib/imx6.sh
> @@ -99,6 +99,10 @@ imx6_board_detect() {
>  		name=3D"wandboard"
>  		;;
>=20
> +	"Ka-Ro electronics TX6U-8033 Module on MB7 baseboard")
> +		name=3D"tx6u-8033"
> +		;;
> +

I'm not familiar with this target, but I wonder why we do not use the compa=
tible here, but still define board names of our own (deviating from the com=
patible).
However, I admit that this currently is prevented by the default case below=
 and this might be a little bit off-topic for the subject of this PR.
Nevertheless, it would be an improvement.

>  	*)
>  		name=3D"generic"
>  		;;
> diff --git a/target/linux/imx6/base-files/lib/preinit/79_move_config
> b/target/linux/imx6/base-files/lib/preinit/79_move_config
> index bdf397c4fc..00e3570d1d 100644
> --- a/target/linux/imx6/base-files/lib/preinit/79_move_config
> +++ b/target/linux/imx6/base-files/lib/preinit/79_move_config
> @@ -15,6 +15,15 @@ move_config() {
>  			umount /boot
>  		fi
>  		;;
> +	*tx6u-8033*)

Please don't use wildcards.

> +		local bootpart=3D/dev/mmcblk2p1
> +
> +		if [ -b $bootpart ]; then
> +			mkdir -p /boot
> +			mount -t ext2 -o rw,noatime $bootpart /boot
> +			[ -f /boot/sysupgrade.tgz ] && mv -f
> /boot/sysupgrade.tgz /
> +		fi
> +		;;
>  	esac
>  }
>=20
> diff --git a/target/linux/imx6/base-files/lib/upgrade/platform.sh
> b/target/linux/imx6/base-files/lib/upgrade/platform.sh
> index a090cc080b..d6eef0c3eb 100755
> --- a/target/linux/imx6/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/imx6/base-files/lib/upgrade/platform.sh
> @@ -1,5 +1,5 @@
>  #
> -# Copyright (C) 2010-2015 OpenWrt.org
> +# Copyright (C) 2010-2019 OpenWrt.org
>  #
>=20
>  . /lib/imx6.sh
> @@ -30,6 +30,102 @@ apalis_do_upgrade() {
>  	umount /boot
>  }
>=20
> +# (mostly) copied from brcm2708 platform.sh (which was copied from x86?)
> +tx6u_8033_check_image() {
> +	local diskdev partdev diff
> +
> +	[ "$#" -gt 1 ] && return 1
> +
> +	export_bootdevice && export_partdevice diskdev 0 || {
> +		echo "Unable to determine upgrade device"
> +		return 1
> +	}
> +
> +	get_partitions "/dev/$diskdev" bootdisk
> +
> +	#extract the boot sector from the image
> +	get_image "$@" | dd of=3D/tmp/image.bs count=3D1 bs=3D512b 2>/dev/null
> +
> +	get_partitions /tmp/image.bs image
> +
> +	#compare tables
> +	diff=3D"$(grep -F -x -v -f /tmp/partmap.bootdisk /tmp/partmap.image)"
> +
> +	rm -f /tmp/image.bs /tmp/partmap.bootdisk /tmp/partmap.image
> +
> +	if [ -n "$diff" ]; then
> +		echo "Partition layout has changed. Full image will be written."
> +		ask_bool 0 "Abort" && exit 1
> +		return 0
> +	fi
> +
> +	return 0;
> +}
> +
> +# (mostly) copied from brcm2708 platform.sh (which was copied from x86?)
> +tx6u_8033_do_upgrade() {
> +	local diskdev partdev diff
> +
> +	export_bootdevice && export_partdevice diskdev 0 || {
> +		echo "Unable to determine upgrade device"
> +		return 1
> +	}
> +
> +	sync
> +
> +	if [ "$SAVE_PARTITIONS" =3D "1" ]; then
> +		get_partitions "/dev/$diskdev" bootdisk
> +
> +		#extract the boot sector from the image
> +		get_image "$@" | dd of=3D/tmp/image.bs count=3D1 bs=3D512b
> +
> +		get_partitions /tmp/image.bs image
> +
> +		#compare tables
> +		diff=3D"$(grep -F -x -v -f /tmp/partmap.bootdisk
> /tmp/partmap.image)"
> +	else
> +		diff=3D1
> +	fi
> +
> +	if [ -n "$diff" ]; then
> +		get_image "$@" | dd of=3D"/dev/$diskdev" bs=3D2M conv=3Dfsync
> +
> +		# Separate removal and addtion is necessary; otherwise, partition
> 1
> +		# will be missing if it overlaps with the old partition 2
> +		partx -d - "/dev/$diskdev"
> +		partx -a - "/dev/$diskdev"
> +
> +		return 0
> +	fi
> +
> +	#iterate over each partition from the image and write it to the boot di=
sk
> +	while read part start size; do
> +		if export_partdevice partdev $part; then
> +			echo "Writing image to /dev/$partdev..."
> +			get_image "$@" | dd of=3D"/dev/$partdev" ibs=3D"512"
> obs=3D1M skip=3D"$start" count=3D"$size" conv=3Dfsync
> +		else
> +			echo "Unable to find partition $part device, skipped."
> +	fi
> +	done < /tmp/partmap.image
> +
> +	#copy partition uuid
> +	echo "Writing new UUID to /dev/$diskdev..."
> +	get_image "$@" | dd of=3D"/dev/$diskdev" bs=3D1 skip=3D440 count=3D4
> seek=3D440 conv=3Dfsync
> +}
> +
> +# (mostly) copied from brcm2708 platform.sh (which was copied from x86?)
> +tx6u_8033_copy_config() {
> +	local partdev
> +
> +	if export_partdevice partdev 1; then
> +		mkdir -p /boot
> +		[ -f /boot/vmlinuz.img ] || mount -t ext4 -o rw,noatime
> "/dev/$partdev" /boot
> +		cp -af "$UPGRADE_BACKUP" "/boot/$BACKUP_FILE"
> +		sync
> +		unmount /boot
> +	fi
> +}
> +
>  platform_check_image() {
>  	local board=3D$(board_name)
>=20
> @@ -41,6 +137,10 @@ platform_check_image() {
>  		nand_do_platform_check $board $1
>  		return $?;
>  		;;
> +	*tx6u-8033*)

Please don't use wildcards.

> +		tx6u_8033_check_image "$1"
> +		return $?;
> +		;;
>  	esac
>=20
>  	echo "Sysupgrade is not yet supported on $board."
> @@ -57,6 +157,9 @@ platform_do_upgrade() {
>  	*gw5*)
>  		nand_do_upgrade "$1"
>  		;;
> +	*tx6u-8033*)

Please don't use wildcards.

> +		tx6u_8033_do_upgrade "$1"
> +		;;
>  	esac
>  }
>=20
> @@ -67,6 +170,9 @@ platform_copy_config() {
>  	apalis*)
>  		apalis_copy_config
>  		;;
> +	*tx6u-8033*)

Please don't use wildcards.

Best

Adrian=20

--=-=vcie22L+AWvHEq=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3gBB4ACgkQoNyKO7qx
AnB7KA/9GtGuJrdbXxonejaQoJFvtn8Tj7euTjU0LNdXA+Tr6qS+QZ8x8Ti2qhXt
WqDwQYa68TNexzN/rSaFEHepbUCW1HfVdiLt/E2OwRQ99GjlYPHOkPr1fp384fOS
p98QR2RePpZpIs3ZxiGL6aR+Gddfg99IrRR2UKGiv+Z6ikXcZLazbLm2CcWDDgz0
VmT2XGCDE+ADxZ8/60puvfzowN1W5RWCN05IQsRdzn9r8N8N6E272ZMkIYS08jPj
bxUJTMwdgrfh1hNllxKSjgW4rpxX2L2R0HP2Kw4xOXSAuElDRDViFEOsQMvlyjUW
AjjtPqaejnd3cISfMtWCbMi4QINWXNnEORNd4qGzK/ZufcQNA/tFFkTycKcvCfPZ
uAFwX/F0LjPyTXNoDzYqRGVH/oeKcAGLh1xr5kRA4W3IpEtq9P+RYXFN7qAKNcgH
U0fbWVAtpWuPfL8gCXw0x2V+wWFW0zjgu3YDuN9Q11eqF7qwqaCcsevOhtHWmoKZ
UrzlgMlTqJ/+kUMrLshxBcZMICXpMOKz6Zyadq0fB3awAXdmComlPCSBTJa6EeJv
XK88a3YI/vKP6kxdAqPhmbNAMi51/Rgdb2YA8H/i/XFTq3hKUWaLdwtfOE49vW7b
m+N0WEoBIx592wHMGgMHI3fY9BY2102M3QvYAUPmSj/+DKMglvo=
=/fiv
-----END PGP SIGNATURE-----


--=-=vcie22L+AWvHEq=-=--



--===============8003704923637801965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8003704923637801965==--


