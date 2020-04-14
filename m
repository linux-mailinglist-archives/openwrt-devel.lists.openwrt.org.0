Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ECE1A7753
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 11:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h6ttMdkwc3H4ynIEcJ4kr5i+aT8GssWeOhc/2N/+ZPg=; b=iLtx3mi1hAE0G5rAj1M5VNZGK
	Vbm+G4zvDIATbPdN3EmAuUFe6SLEFVMZeZ4uJc+JcOuT5Au8w9qWAOlpjD5ytqbSXCSlAwbrYxGtz
	Dp8fb4/VtMJlcw4DPdAVIPsORMRspSqwkf5dgNkuRkhG5NXfNcJTgBtec7vvvjBwM/grwA0OZn9UP
	v2v6RqxBU53b1L92cMjyROjHW2wzpNQjoJWMZYYLooBWFhpNkFKCB2TvXLBl9uqcQAloJJeTolbWT
	DeRbzdzwjlOvNAfd2uBis/WWgZKWUSbFUHGZIO4PCbQpBMl0EtqlsCgNFd0vOTD67XSAVjdYKN7jV
	+pLvaf6iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHqq-0003ux-9S; Tue, 14 Apr 2020 09:27:28 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHqi-0003uV-IL
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 09:27:22 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MwjO6-1j4zqJ1b1G-00yDX0; Tue, 14 Apr 2020 11:27:17 +0200
From: <mail@adrianschmutzler.de>
To: "'Chuanhong Guo'" <gch981213@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20200414064438.1172618-1-gch981213@gmail.com>
In-Reply-To: <20200414064438.1172618-1-gch981213@gmail.com>
Date: Tue, 14 Apr 2020 11:27:16 +0200
Message-ID: <001101d6123e$e3da86b0$ab8f9410$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQISpFEeq2hra7qghCTmY1pDLce8n6f/M68g
X-Provags-ID: V03:K1:KAJFcIo9evc3VdOYid+xNHJvYf2ryzIJMWQez1YMV+4+qZYvde1
 Qac67aQ8E7xWNiTvFTyvQWujl4tXYiLxgp257+Gve03UPuDt9cGwtsn3e7fAlrg1pvbFSwI
 Nq2QuvjFsfEvpRS/DraBAC4BJNboHKYBv+pjetfTkWI5aKm3BajcJWIk3jm39l15tfFZHZ0
 eziYa+EXQdVNTdKcuQGqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eWsMk7TY60Y=:Q/1Gj2+CvFBHkUbjTWuswR
 Janveq66f51DIIJY8tGLE3H8njoFiGtY2KbTy9bslGgTtqtf7lUfA1ByIF8SacN1+ge1df5ME
 LUail8Y/J2EmDoYATwr6sZR3l7l+7O68tD7W0aCx3TWSqpQmkRyejwGW38RtPZny7RsHRQnXU
 8LUBLyyBNpXKawCBeIvWmpp4lK4Q3c3PpGbMPTrRRLTc/5RYy87SqV62o8s8FTXemmwdii9dZ
 CKF+kuuIL/hRymF+A+OYYWz0moCFG+00zcu/nUC1LVqmCLVhe4LxM+WNxtpT1rWueFS0E3gW7
 vTbp5OwYWn5POUYzwiKGMHJDdRft2EpIuw2PmgGTyk9yUrtTEw6PIGGSecKqxeSAb8A9vufaN
 Z1geMdOhYaMZnuI9WJRneKtqxKAf44/O1jaYmXKymG2LCPQhrJvO4QMCQe9+F3VyylpHGpKrt
 505QKWoWGhr3D5txPWXOvrFIBE5CqwrgXrVgf2+91UHOXM1zJSVYHqtVzEmkI5vfeFtw7PE3y
 dgMGx21Onwng1T7H207YwTD+jXLDhRdU52BCG+dcxFzW7p07T4mvpp1svZiJCgBG2SKzS+BeQ
 7zPpWqHtt15UPp+DeWRsFucmwFMMHI+MVjUKzgLs/NK9+EKU3GDx6dJfDvW0yBrMnC4fG2M+B
 I7rNdFaB3XYpLZ4xfnIBhAZ5/3du+WklU1yqubAOq/M7ExjfSn5gyiPyLN6T9Tp53koj3msgS
 VgT+kGLVxSldIwi12iMjQXjrG7h1M6C+dkTB14XZuFStXknuuv1pRzhzetDJ7JFOEzFyTY3K+
 cL8Pkle/hTnpfmIU+eeJmgFSVfOAWL+Y4my2Jy9gNpzqEEbv2Y5Uf7r1krclm1ayDhwd01o
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_022720_897739_C3E3FB38 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader for
 all devices
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
Content-Type: multipart/mixed; boundary="===============0912342185869355068=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0912342185869355068==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=VpAyqJMT/nW/UW=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=VpAyqJMT/nW/UW=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

be aware that LZMA_TEXT_START=3D0x82000000, so this won't work on any 32 MB=
 RAM devices if I calculated right.

This of course won't be a problem for mt7621, but if the same strategy is a=
pplied to other subtargets, LZMA_TEXT_START might be lowered then.
So, maybe it would make sense to lower that right away before testing if th=
at applies. (One obviously could also have subtarget-dependent values for t=
hat or just disable all 32 MB devices as well...) On ath79, for example, th=
is value was chosen differently to work on 32 MB RAM devices as well.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Chuanhong Guo
> Sent: Dienstag, 14. April 2020 08:45
> To: openwrt-devel@lists.openwrt.org
> Cc: Chuanhong Guo <gch981213@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader for
> all devices
>=20
> With current kernel reaching 5MB uncompressed, several devices failed to
> boot. They either fails on lzma decompression or ends up with a corrupted
> kernel image. We already faced this problem two years ago and it was solv=
ed
> by limiting LZMA dictionary size. Our own lzma-loader extracts data witho=
ut
> this limit just fine and lifting this limit saves 15KB kernel space when
> compressed.
> mediatek u-boot 1.1.3 comes with support for uncompressed uimage by
> default and ideally no vendor bother to remove this support.
> This commit uses uncompressed uimage with lzma-loader for all mt7621
> devices with default kernel template.
>=20
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
>=20
> D-Link DIR-860L B1 needs a different loader implementation and isn't
> covered by this patch.
> Please help testing this patch on top of current master:
> 75f19deb3a ramips: define image recipe for uncompressed uimage with
> loader 1. If your device fails to boot after 5.4 switch for mt7621:
>      Is the problem fixed by this patch?
> 2. Other devices:
>      Does this patch break your router?
>=20
> Thanks in advance!
>=20
>  target/linux/ramips/image/Makefile  | 4 ++++
> target/linux/ramips/image/mt7621.mk | 1 -
>  2 files changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/target/linux/ramips/image/Makefile
> b/target/linux/ramips/image/Makefile
> index a966ba4349..1fb37d7c6c 100644
> --- a/target/linux/ramips/image/Makefile
> +++ b/target/linux/ramips/image/Makefile
> @@ -27,7 +27,11 @@ LOADER_PLATFORM :=3D $(ldrplatform-y)  KERNEL_DTB =3D
> kernel-bin | append-dtb | lzma  define Device/Default
>    PROFILES =3D Default
> +ifeq ($(SUBTARGET),mt7621)
> +  $(Device/uimage-lzma-loader)
> +else
>    KERNEL :=3D $(KERNEL_DTB) | uImage lzma
> +endif
>    SOC :=3D $(DEFAULT_SOC)
>    DEVICE_DTS_DIR :=3D ../dts
>    DEVICE_DTS =3D $$(SOC)_$(1)
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 8980ff70d4..942308c29a 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -6,7 +6,6 @@ include ./common-tp-link.mk
>=20
>  DEFAULT_SOC :=3D mt7621
>=20
> -KERNEL_DTB +=3D -d21
>  DEVICE_VARS +=3D UIMAGE_MAGIC SERCOMM_HWNAME
>=20
>  # The OEM webinterface expects an kernel with initramfs which has the
> uImage
> --
> 2.25.2
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=VpAyqJMT/nW/UW=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6VgfEACgkQoNyKO7qx
AnCRdg//THD0Y1wU3t4nUtjv/wdJQDEhhPG6UIABNR/hvZj60LnqRZIuwYflB9nl
eXWT1dniY9Nd3IaeFNiKKG+6uMeuMeU6WWAE/gZ/Rv3osuQoUadDXe0vNpamW3Hc
1xuPCnARpkldydFfZCN+/bKtLaWzxe4lfJXCJpU2JDxN4cz89X5uLu7e+HfNTR9H
1lV/j8qzXYcgFT4gjBogrtWAxdBH72SeIesRVueoxxwf7mRDKEf543Y4VaZMTSHp
iVAwFaHT0ERqMzMHvP/f/I2HioruqEEmQWsst3Q/wG7/IEQ5UVL59MHZ6YM5c/ov
2BpZ9YsXt12/Y4JeEl79twT1CuXpPQY8+gfqFqTGlbFybDNYuCJLwnS30oZX6tV5
Ed4R/ANdri+VdsGrMKBxPwH/18uE1s3DA24OsB27ed2dhXEUXQ95gX5RmETryt2n
HDLatbxHszPh/oJm3EsXg3sfae33KRAedGwVckmj3ihBi98R+kF8F3NmZfHfGlGq
AxTLGlazzeR0uIGtmQ5CbCzzYJmgPXyd18o8tLuMDV4MN51Gj3mxoyDx+k0G4VCl
/3HopXD4HtlYbvwBYruXCW4I8Okq3oKzYgDYDDw3KHUftzNyeGERirWM5Q9c3Sy9
Sd0bqLphN+qztZGQIDm9KltOD2RGXn1UewdyFOVtkWG9oaRFLvE=
=+zRC
-----END PGP SIGNATURE-----


--=-=VpAyqJMT/nW/UW=-=--



--===============0912342185869355068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0912342185869355068==--


