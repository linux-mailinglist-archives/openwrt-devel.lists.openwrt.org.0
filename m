Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FCC130941
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 17:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P6JP2+rKghS5eoOg1YhLQspBZzPHAUbnTjk8jtldtt4=; b=uqCoOkJ0ewz2W8h+EMrwy73rU
	pATiH2LXaYySikkr5LOPJ8rqc5SC0/9neS9cR2U8LRTc89HITqmluAwf9sCKIfgPkV7yC7G38+uAi
	Y2iJkJ4YhO5fY1kve4fsmY5qC/gUFc+tQIMmSWA/ogjwh9LemAQXYoR7vXYUKWEIDWF5VRSlyq2aI
	MwbMnjIDM4DVvN2jlBFW37LpDLmW7OegyKamFCOkTwezJJs2zsXvz9hS4RKp01GEOWayMx98fw6pa
	W/IY4Gc3ldQaQ+ObLNh/n2pA+MfOJkNowekhyKgzucpWN7xLNaFVzZgIcmeaHYNiXkUGfnhs/MeWm
	3TuYuL/Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io9E6-0001Eq-0x; Sun, 05 Jan 2020 16:58:06 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io9Dv-0001EQ-HI
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 16:57:57 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MlwJv-1jW2hH3qvT-00iyp2; Sun, 05 Jan 2020 17:57:53 +0100
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
	<openwrt-devel@lists.openwrt.org>
References: <20200105141756.23473-1-hauke@hauke-m.de>
 <00b701d5c3e6$74e07860$5ea16920$@adrianschmutzler.de>
 <7965c401-38c7-d16e-e1b4-1bd0e84316d5@hauke-m.de>
In-Reply-To: <7965c401-38c7-d16e-e1b4-1bd0e84316d5@hauke-m.de>
Date: Sun, 5 Jan 2020 17:57:52 +0100
Message-ID: <00cb01d5c3e9$44fceb80$cef6c280$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIuF+HeIBVU/ZlJzrne0jxHuiAM+AGPyW9GAhv3+WOnDkO+sA==
X-Provags-ID: V03:K1:SjGedJVwomnBfOv/2CEj4CUpvqxce2o2lvUrCOMhk21cKp3FIxp
 1idd6igUL3UkZ0LjTSKigx5WqW0U7G/U+F2pPOzv/sQLDNe690F32ddrRGfo0/gXuDhfhlP
 G3vK/ZEi0/6k8bfiTB+YIHe2XzxWNHwtMIx+gxJc7bBno+tQLtuA8ANHxojxBe7i/NYXXpT
 JeTPuPzLh+WLGMh8F2rsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rDKM2T+tu84=:VUAzpzUSdYHYUjYg2C4pMN
 crAelZ6qkGjWFBmDXiUKSHXCI91wcaMTbLFXRvzpClE34o31ib/+86RlVDBeD1IYq8Kx1ycu0
 8puhIn4mUFV6eGZaxlz13RKYEeuufunylaC0ywb7ttbiXi/bUVyXbYXCoQUX32JYX6F7ofctG
 j7pH+ZBF6Cx+Lz58insbZ8o2LJ318WfISD0oyR5pDC+MzZHjEWryuOIQOHR+VvNycAdGZSjqe
 NT5yKIo+Ycv5kS3H5hHKqphIowMHoJJ4M6iEGn4jQu1TKOgxMJM8zR0oiLMsomwxH6eDGREyJ
 gqqIbuYcxymDuVDJ1LAKBpcGX8UGDLSajwTUIgNuGLtz2qZbKKyuE0c28LXpXJrgUQbBoGjLG
 R5QVuY0Br6op1ixlLm7FskYalM1BjOyPDmvFQwfzvvgQrvOJluV3njQPsw0G6/09VmMnsszKq
 2SzpgSeifitqVYcE6PucXoZNSHNNnZVwzv7PYCVNXNrANCDUClAkdjnFoDIegfpa+gfyxVg9m
 wE5CGNEhRLzn3jl9O2LwuI+zVwwn5nYT7CT+6L+27jxM9kr/XPI8m5j+kKaeZ7YydTK6tGcyK
 paT1Rsc20WIKKD2vAfdWvu35JZmgX/cgedZ7u1ls/szQ6cDXVlVgMAwZqqgD3W82iw7ye3tv/
 eZRw2fzsArrI+2xlIp4bDDL8ho5SnQbZUYofwMT3WMdFd5d+QEK0AM/MY7D+wNoL9RCh2oOxw
 n3Bb9BCJuLT6gsk3cTL4AzMXn3BDRqW0kcLjugJTOH55vY5jLWXe/Zqy+0IbSzE0uytb3HhOp
 71l4uYHcXByMCF0QR86fxX4K8YobD1RO9z3mqnaEiu9PRgltg8njxJ2XWk+l9pwpDlKGZqPiH
 yLc+ng8C1R7BDM+f0svgoVGirXrkG9t68FM0SnT/o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_085755_864231_81AFD7EA 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
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
Cc: dev@kresin.me
Content-Type: multipart/mixed; boundary="===============8736203855880736727=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8736203855880736727==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=mhdSlI84rK3DYZ=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=mhdSlI84rK3DYZ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> When I use sysupgrade in 18.06 it executes the platform_check_image()=20
> functions which calls nand_do_platform_check("mir3g",=20
> "/tmp/openwrt-19.07-ramips-mt7621-xiaomi_mir3g-squashfs-sysupgrade.bin")=
=20
> https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dblob;f=3Dtarget/linu=
x/ramips/base-files/lib/upgrade/platform.sh;h=3Dffdc5e73e0ede286c1039681095=
4a230c8ea32fc;hb=3Drefs/heads/openwrt-18.06#l296
> The nand_do_platform_check() function is located here:=20
> https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dblob;f=3Dpackage/bas=
e-files/files/lib/upgrade/nand.sh;h=3D42f488c118fab514de7d2aee78bc431f7b8be=
157;hb=3Drefs/heads/openwrt-18.06#l317
> It calls this:=20
> local control_length=3D`(tar xf $tar_file sysupgrade-$board_name/CONTROL=
=20
> -O | wc -c) 2> /dev/null`=20
> which expands to=20
> tar xf=20
> /tmp/openwrt-19.07-ramips-mt7621-xiaomi_mir3g-squashfs-sysupgrade.bin=20
> sysupgrade-mir3g/CONTROL=20
> This file does not exists:=20
> sysupgrade-mir3g/CONTROL=20
> But this is there:=20
> sysupgrade-xiaomi_mir3g/CONTROL=20

I see. I wasn't aware that the "old" sysupgrade was effectively using the d=
evice node name here.

> The system does not find it and aborts.=20
> The control_length is set to 0 and we expect the file_type detection to=20
> work, but it does not because the ubi is inside the tar.=20
> The sysupgrade in 19.07 supports the SUPPORTED_DEVICES, the sysupgrade=20
> in 18.06 does not support the metadata fully.=20
> When we do the board rename between 19.07 and master it is fine, but we=20
> should not rename the board between 18.06 and 19.07.=20

Since ramips in 19.07 is mixed anyway, I have no objections left.

Best

Adrian=20

--=-=mhdSlI84rK3DYZ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4SFY0ACgkQoNyKO7qx
AnDkjg/+KVWygjvGp5K7kEw8z8tuKGgXLr3PWvxXm6pnW/IlFaKUNBYjH4+f1Z5d
dAYsBRvUj9DWdDQY60FfuS+Lxiev/LvcXmzyZGskVjAVpIJe3vytrFijYDUacSmP
H7nO/hstyJDJj9Ir7NCqCE5g68NgEL7A9E/tgLFUP8RmN2HK59tgPQNh1V9rRuGr
5mmj0laOnAzSx2V/XyD6uwgJZn1yDDZHy5/r+nhwmLIAlkRBeu3qB1eb5TQIPGln
fzh35qCpjiLyU6ExBmcoFtkiNR+p/6GTtEMGkFhYoP2zQmgl7T004rpohREqDJdv
GU256B7giQW9QRj/ulwh8NFLbZ6g44dI5bIGgCZAVf7+Mfmdl/s32fRQ5wLaNs7W
imd2qIHjHl0vANHQ3fTCle1+xzd1a0Q5RLAcDORmZDMLqLWJjvOicDd+ZEHH4aBz
tatPwRrwYZzYjwirsiz65EpyDr/PlzROvMIiFszsDCWcmMoGR1/kgyXnQQUHs+6g
rkNMSD5UmotrNtW5l/PwXM1hg/XySQQAkcJMYFGsfrJ8/5qT7fzjetBjC7xepZEx
JFfWsp16L26CUzeynfb6eHGZRFtzpvWjN4rGQhPbHahHy3BHK9Kuk6dQpQLpSQa5
uZrXo0VYiLxCMbDc45jaKWCOaflQENMNCL221qUT7VmVWBhtklA=
=sRNC
-----END PGP SIGNATURE-----


--=-=mhdSlI84rK3DYZ=-=--



--===============8736203855880736727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8736203855880736727==--


