Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E6D1AF9F9
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 14:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NMZ/m6ZGxtsOOLVAjcIjrnEiHoPZNikOlppdxYoDwTU=; b=MhhAhSdvXE5i4IXngpAr8C6c8
	ILcki1/uyD05GPxLKRm2SnHSLE8t3b1yOo69m6suO/qlBq4+hJUwcdRVHlzAxsy1y1hWxrCh+t/rg
	9uoG9S/7r7SrEOy1ZSbrW8eA+JHetOxKduDb9G34vJJt/rAgyjzS8N0R8OQon8h9idWpMTapI3QQU
	2Yh+sja50oPvPAEVcaXlgAPGIO+N+EudW/E6VYlD2rHf23CzG5M7dJX+Iz+BaT38XAlg9pIBXh8r7
	RQDMWPyuWVjLKKnNxSSMbOsL7dnL/hOOPLsbWBMharJzJlGCAiya8sIVvqP5Nvr6d9pk82drvFkwl
	aXY1sVPSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ95f-0005pw-Dg; Sun, 19 Apr 2020 12:30:27 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ95F-0005Hs-7F
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 12:30:03 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Ma1sQ-1jl1Si0BHg-00W155; Sun, 19 Apr 2020 14:29:56 +0200
From: <mail@adrianschmutzler.de>
To: "'Szabolcs Hubai'" <szab.hu@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20200416153146.4377-1-szab.hu@gmail.com>
 <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419003715.26284-2-szab.hu@gmail.com>
In-Reply-To: <20200419003715.26284-2-szab.hu@gmail.com>
Date: Sun, 19 Apr 2020 14:29:52 +0200
Message-ID: <00a301d61646$3bed0840$b3c718c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQL0dhLR5hkXWCP1Xd1+5I+zBvPv/ALP5V3AAhUztaumHHaUIA==
X-Provags-ID: V03:K1:Q2ZXbvZYKcTLNR25c34rD3F8MsF3U0xsT/AdyEvbJQiKxIn+P5D
 i1TNU7AAk8BMR+SVFFokdGJIlwpKNh8eLD5ykw8Qu0hLfCW9MX3WUksHrUtBv/x1AmqD+6z
 zsjXnWq+Ybo4ryb2b+K2vJUoI5p3kuMTZpivrEnhFRfQ1YJ4B//NxtGL1W9qhgEwA8UsHON
 +cdOiHaaCS2GStK/oYfIQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GO6F++WOjVw=:LK7XMKUpPo49abjya8r4NL
 LfkDGUp+XKhy3WpDyrmSI0tXVuAV2JFvm2ayDfvEhWvvoUWjDqNic7DK8xLRrVConQwqSQhmK
 tY/iYJQzMf/9w5dZJiIZY5fs+1zjDD5KpEi0YUvpfiaEMUaCyTsDpiIWL5Nnbr0bHHxCo2mV6
 x8rdnWGbmuRlw4X0u9sgtbZUrCuJ24Uw9UeM4a6g3If4CIWfQxsRDJcADIA9xP8nlrwK3DsmV
 LXPnvY5nhYm8/kjewxlYiEr21H0FGzXnJ3eHl7pbn6le2ZaN6KG4oS1l7Lu4qdKFoQbkCPeE0
 CWVI9OQPiPIDV3j3bowQc6CgBaTBGlyg2sfEqdNxnhrcayBWNjuwYbzCq/zUNrxQiF0YWMvTd
 V+0d0MYdly3RRnOqVQ+fNmaPWSFiYnqj5ikRhc8O42bIz9wHyrCxsEbgxsxRw6QvEh/iWxg53
 BzHBgPPy1ZEvI7GAWbzx+c687Q/ZlHGKpckBXVatY2VI8bYTMV3aY4/8J5zUSwSbRt21q/z9D
 oOKx8wEKxKihYvnsCyyw7cjM3yVRVbwEmcprGstYUsEWywJPq/e+wQ05mnw1iX+rfmXDt9Asx
 QNlCunvad3e/FfaHnATsQAglkC7OhyZsFkUzqegluTQOeBfWJGVreQVo/+iKbBqQh0mOgfZb4
 kye2Ttcb3UbG2k+/Fi3jEqPnVO+irwCwsQ2pDrrudW/3viW26raa7BjRy0jHw+rLuJEnd6K8O
 lqT3Io3G7rIwC9mDifsZMALL9qbZ6UjRcsUsu4CP/qgLZwKjUzDl/9NZgpp/vFlfUPHO+Oc2S
 39x1CVR72YvXP8HYCibkmyiqSsFHn63yDxAGrkCAY/cZQqxwcZdTVVWtLQ7lgddCsNvYqVP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_053001_609704_2902E85E 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: define image recipe for
 plain lzma-loader for advanced cases
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
Content-Type: multipart/mixed; boundary="===============1588601759641116972=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1588601759641116972==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=cbuygaQuA429SJ=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=cbuygaQuA429SJ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Szabolcs Hubai
> Sent: Sonntag, 19. April 2020 02:37
> To: openwrt-devel@lists.openwrt.org
> Cc: Szabolcs Hubai <szab.hu@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: define image recipe for plain
> lzma-loader for advanced cases
>=20
> This change allows to make other transformations to kernel before uImage
>=20
> Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
> ---
>  target/linux/ramips/image/Makefile | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>=20
> diff --git a/target/linux/ramips/image/Makefile
> b/target/linux/ramips/image/Makefile
> index f93ea8ab2a..707bc85f9a 100644
> --- a/target/linux/ramips/image/Makefile
> +++ b/target/linux/ramips/image/Makefile
> @@ -37,9 +37,14 @@ define Device/Default
>    IMAGE/sysupgrade.bin :=3D append-kernel | append-rootfs | pad-rootfs |
> append-metadata | check-size  endef
>=20
> -define Device/uimage-lzma-loader
> +define Device/lzma-loader
>    LOADER_TYPE :=3D bin
> -  KERNEL :=3D kernel-bin | append-dtb | lzma | loader-kernel | uImage no=
ne
> +  KERNEL :=3D kernel-bin | append-dtb | lzma | loader-kernel endef
> +
> +define Device/uimage-lzma-loader
> +  $(Device/lzma-loader)
> +  KERNEL +=3D | uImage none

IMO, this is more complicated to read than just keeping the full command.
Since it's only two lines of which one is different, I'd prefer to just add=
 the lzma-loader without referencing:

define Device/lzma-loader
  LOADER_TYPE :=3D bin
  KERNEL :=3D kernel-bin | append-dtb | lzma | loader-kernel
endef

(with no change to uimage-lzma-loader)

This should also be consistent with the rest, I don't think we use KERNEL +=
=3D | ... anywhere.

Best

Adrian=20

--=-=cbuygaQuA429SJ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6cRDsACgkQoNyKO7qx
AnDohA/+MhmCttYeUaN8q/wOyIILZVHYs0MrkzJHMBs0bCVA7x4NnHSS0I38GEV8
a2Ak7nmFZ72c8WOtB/UlcrJM9nPAyvGgYDWVOP1rXLZFGd2+QFQboB5L0r8Enrrs
SwXCbGtwSit6UpRfbvF8kGTjH8DYrodqVoydKgTWTQ2uSaosHr9XKgCAjlmWsPCh
1zmj71TKf7K3vm7qeR8HLzMQ2g9l0HLxd3MLblCF3BSU1hyJ3IVnsDrVVZu5fyGk
5yG3uhMDr2Y0B7r4QN2S77bILBjFDAg/L4XIPGysi8OUi5BP3jiZNMNDb4z+/B0Z
zLzR1XU+OZcVQz1A5tiMb66uc9rXeUcFztX1cGpKMdX+prJPOFrMd3+P7s7cZvJH
M8rXAKk0c9K8JBqX5R1IMpvzYCnUDffT7qMmK/hgTHvJkDbosOPkO/jru8TRUY0M
AITga0g8HtO4lSEAFb7nW79Y8tPd1j8nglK61FqyUCYhwS1TRMw25YvbPE/dwGim
jzsceX3Qv0ihRecWTH16JFqvIypnRJgFjpzBCRnqWUvVG3th2O/DAWyycRPockj4
X8nsUkVsQW1KsWq1TOVj7QJeH5OhmhKXsaeMgANlvtYzUWVeTFa7+THzRvXN/XQP
0n4mWEzCJwlwIoDfWryvJeSvruWEAguiGBRig1TW4FrsR5bFIUI=
=ts/H
-----END PGP SIGNATURE-----


--=-=cbuygaQuA429SJ=-=--



--===============1588601759641116972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1588601759641116972==--


