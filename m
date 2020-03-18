Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB32189FDD
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 16:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TJrwYCNifQYhXXujU978cz15FmVxm8+MaFAtVpBOO7w=; b=YxZiqIvUugC42oisB1UCF9KMj
	OPxMfItM7G97l3lTrxdIPAu5+oV5yqiB8Eb5W2oeKMwjnr+2wicbyycwIfxRYlBWmEw7ogNAXVCIn
	fVMXcj0F/dg3ZYCP9+yxKfJ4JjXPCot7kd5APL0wheA8nYcRZI0pulRTHVst3/LKDO36c16k3B1XM
	aKXbByR4Yk87AyO3WArZGe3FgOBL/RP6EBfreR8HCbfNsjwIDyAE+qIFS082SeM8QLOuZqR0Rh+0i
	rjod51zctTCZmEHevoOmjteaC58bcSwymjXy6yzfhffK33NCRpPimqHHu1nhymhetv++7Fs5L0G5M
	GtWujcGiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEanX-0000SU-Jq; Wed, 18 Mar 2020 15:39:59 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEanQ-0000Rz-GK
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 15:39:54 +0000
Received: from desktop ([188.192.135.43]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MdeKd-1joCf91aKX-00ZcPO; Wed, 18 Mar 2020 16:39:50 +0100
From: <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200318151400.407596-1-tomek_n@o2.pl>
In-Reply-To: <20200318151400.407596-1-tomek_n@o2.pl>
Date: Wed, 18 Mar 2020 16:39:49 +0100
Message-ID: <016301d5fd3b$76206530$62612f90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQLpXD/GYhYBrBFK741nAJzpaSwdrqYnvjfQ
Content-Language: de
X-Provags-ID: V03:K1:C9XAz45FvHjFeDMzduGPMWaIs4DblwhjTSr7Mk6KeLbJo+1un3D
 N35/dMsmrsZKP74ZF5t5KUMRrJ/DVDqMus/4Flrd63fOSKRZtWxISRkF6MmONA44Lyw/Gyi
 MaLO3ExdFijA1gYbSY64chncsgChF5l5xgNL1riSFVTysyavK6954wcN73X6Ym9MI2FVHbp
 C6CbR1V78SqSpN0ov4GNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:h3FtYzVGnTM=:CB2c/qTTy0wmPeV/dJ/vaP
 /BfQVo6Hm7ktfU7u4RseEvKjpKCll84y4TLlK45PXWjS0FBtGdaIcNwvxS6FPYH0WlQszX4WG
 lbkkOzvWwJhybqpmiHQInKIqEzOcQWfEdT/WJwH7P0HLE7vQKJFdxU7HKpiWgf8v0bUxWwsHw
 UhsWMGHO95f0CO9dPdCgEOozDmsYp/1EfUQRWvPquwBIly+8OyAFLmzOAZOzRGB5zgiXWLfsc
 zgS0qhL32gk1LDJoG9JOAGZbUh6DNiEbSiTKQLxo28a9sissWeBVpEaMO1czrtl4cgsSUMFuZ
 2oo9GDwedXgJj/YQ0MOyu/k1VkJy1EEZVIVqIB3Tuc9MTzD8K4gbQrIARjNtwdAF1NYEqcdtq
 PeS5zpUGyRMyE/2W8D/ag5UU1+AVJjxa3oPouyV0CLmOWfTXkQcdBoQP1SzUO+PJN6b2hwLHt
 EUCqlcKKSo0gKsydcXEgecpTsh9oCoEHPUMKvutHAzPaY+QmUMr+62MGskYEIsG6rJKAH46pC
 JCpwReUx3V8hh0OXTn/GR914Yj0E+reBsIeWzkD6rDt0Fh2mggNng7elkGJVGN0kE9yGuRSdn
 GVEQUd5eOKtz+jM2SvH3jig+OWs6TP9xVZW3RDCV+R2FKvBpqONsoHWmOtM15ScTWttSNDrvP
 jB7n8kNl3njviX3EIlbw0tjEyBprge4wLRpYLIY2xrHJ+XTEz9S6DF8ltg/3oh3UtCWe4AITx
 /PV6vAk32EKN71yCH8AoUhUbljVswBaJbv4aRkEIDeEJ8E78pmg86xbuxFMNm6zWewlpydrlc
 IEXMVcbcLlki6f50mVcnQH7M68jYDRUeeR7OeTMIiSlJxpLUDv/bS7z6F4pb+w+T7xf/azA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_083952_837333_4733D9F6 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: cortexa9:,
 tegra: correct cpu subtype
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
Content-Type: multipart/mixed; boundary="===============7164035434506830082=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7164035434506830082==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=Ld2pJ0CVSsaL3p=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=Ld2pJ0CVSsaL3p=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

please split that into one patch per target.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tomasz Maciej Nowak
> Sent: Mittwoch, 18. M=C3=A4rz 2020 16:14
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] mvebu: cortexa9:, tegra: correct cpu
> subtype
>=20
> Armada 370 and Tegra 2 processors have only 16 double-precision registers.
> The change introduced by 8dcc1087602e ("toolchain: ARM: Fix toolchain
> compilation for gcc 8.x") switched accidentally the toolchain for mvebu
> cortexa9 subtarget and tegra target to cpu type with 32 double-precision
> registers. This stems from gcc defaults which assume "vfpv3-d32" if only
> "vfpv3" as mfpu is specified. That change resulted in unusable image, in
> which kernel will kill userspace as soon as causing "Illegal instruction".
>=20
> Ref: https://forum.openwrt.org/t/gcc-was-broken-on-mvebu-armada-370-
> device-after-commit-on-2019-03-25/43272
> Fixes: 8dcc1087602e ("toolchain: ARM: Fix toolchain compilation for gcc 8=
.x")
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> ---
>  target/linux/mvebu/cortexa9/target.mk | 2 +-
>  target/linux/tegra/Makefile           | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/target/linux/mvebu/cortexa9/target.mk
> b/target/linux/mvebu/cortexa9/target.mk
> index 2a75599bc9a3..cdd4d86e4936 100644
> --- a/target/linux/mvebu/cortexa9/target.mk
> +++ b/target/linux/mvebu/cortexa9/target.mk
> @@ -10,5 +10,5 @@ include $(TOPDIR)/rules.mk  ARCH:=3Darm
> BOARDNAME:=3DMarvell Armada 37x/38x/XP
>  CPU_TYPE:=3Dcortex-a9
> -CPU_SUBTYPE:=3Dvfpv3
> +CPU_SUBTYPE:=3Dvfpv3-d16
>  KERNELNAME:=3DzImage dtbs
> diff --git a/target/linux/tegra/Makefile b/target/linux/tegra/Makefile in=
dex
> 0b48fc16baa2..5dd4d439849e 100644
> --- a/target/linux/tegra/Makefile
> +++ b/target/linux/tegra/Makefile
> @@ -11,7 +11,7 @@ BOARD :=3D tegra
>  BOARDNAME :=3D NVIDIA Tegra
>  FEATURES :=3D audio boot-part display ext4 fpu gpio pci pcie rootfs-part=
 rtc
> squashfs usb  CPU_TYPE :=3D cortex-a9 -CPU_SUBTYPE :=3D vfpv3
> +CPU_SUBTYPE :=3D vfpv3-d16
>=20
>  KERNEL_PATCHVER :=3D 5.4
>  KERNEL_TESTING_PATCHVER :=3D 5.4
> --
> 2.25.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=Ld2pJ0CVSsaL3p=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5yQMIACgkQoNyKO7qx
AnCCeRAAsLLLdqW34Zi6noN5yA67A4HT1ES9E/ROWstgrOIWwcsKi/z9/xKloaMz
sQOlEXg3q5JnzLXhP1PVYlOvqLHNVM7S/Xpp8tZ9EruceYO/iFT1DOiKaw1LT3S1
UKNB1EsyS/G5wVCo3f89ztEopsC05mGunaB4gfeXtAGV9yHyo/s2CaBtcJznnsWf
DpyTfLjzwhmZoDr556UExZhXUD6dC5GlLwe2VnaznGx/6sYpJ/3g1xayNr/Sv0Ou
qy65m6o3k23kFhdRNmFGlWrNWmpDrau5MnWRhzLqVTJCCqbVsbkZlPG1h2D7FCgo
ND5OrETxrBPeGGRvAu1pNKg+Ydb21AVF3W4uB1ZRvSb5uwLtlNtDNQJB3mECGOsX
oDv/QLfB/xoVCwORR/+sr9bkmJAxWcRTcUivLJVgZaG2b6Z71tpIhvkTNUndxDk/
4rrd+gSrW1AYjOsQ1+Cd/0vG4LfGawtJ98qlwkhFacwB8+N+Varg2QDLyR7aOjiX
HVFeia5mFUW+o3JORSWQmXEIvJIjcxcQLplJZmFhEyiDPhkqz+oH/Apzej0bMAia
xhL0VRIdNGlqVq07afbOaaDGUGn1/Ir5OQlHuEucjVR1Ib9P+kiAOx6+yxTTOJ8o
SSxFUNCITogDGytwlHNEJf71NyUNtSTylV2qw8758ca1l9wTMIY=
=7JmV
-----END PGP SIGNATURE-----


--=-=Ld2pJ0CVSsaL3p=-=--



--===============7164035434506830082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7164035434506830082==--


