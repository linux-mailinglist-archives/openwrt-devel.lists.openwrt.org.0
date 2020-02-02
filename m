Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4BE14FE96
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 18:21:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i4DCGx/ljbnU8bucOW+OxdOjjlfSERVF+cRXbad2zdE=; b=riC3iIzgp8Y76aObod2hB5C+9
	F+4KoBnPE7Vxq0ec5a2MF+POFmwCXmsWpcf5N4xdsYPQmjKKhGAPzWxICSBisdRt0sz1KHsuMxl2S
	DhG09TfKLvug2RkSjMYKFW/NKccajV5CqriZBhjU6f4/fWQOEHx3trOhz1G8j1wXFjEzfF11jHIvU
	nx3uSGAlHCGLZgMjaLuIVQEfLP6Z5+crg9qNRekXfR+Ala5RbQi/R17lrdFZwmJ7nk85ceaBTyJt1
	sogEWBuKEbz2HcsJPblak8tgo4bhm14n9z53Dgp22jXLzgRd8LUiBqZCpd4n/JTjiyj4fYDwGFa/n
	oLT9fbNuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyIvT-0006y3-QZ; Sun, 02 Feb 2020 17:20:51 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyIvM-0006xc-8s
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 17:20:46 +0000
Received: from desktop ([188.195.207.249]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MUGNZ-1j6NuO2JsJ-00RHk5; Sun, 02 Feb 2020 18:20:39 +0100
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200202124828.2100-1-freifunk@adrianschmutzler.de>
 <a49ff1f2-a4ac-df8d-14be-4e9d3e111eee@gmail.com>
In-Reply-To: <a49ff1f2-a4ac-df8d-14be-4e9d3e111eee@gmail.com>
Date: Sun, 2 Feb 2020 18:20:38 +0100
Message-ID: <00fe01d5d9ed$171fe360$455faa20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIXiMytygonP3R5G0DMOzc5KfUG+QLr8toFp21n+9A=
Content-Language: de
X-Provags-ID: V03:K1:W2/hKsmjCgsgYDwwZ8NUBn3UJTzGRjn5nucx8Lu2MCD9w2OWs9t
 OWNzBEAj19pQbhQvNK4uOtC5pY0J89qD5g0ZcrPWr7JPU3epC3cgR6oKjqyvIvAjuMXB/z2
 pH9cc1CeQlhdD9iXPr5qqjQCkHxF13aRDh+kfglMdlK3rTrcxrRmxFVYzCk6F1EwF3E1Lkz
 NT0dreaD2TaTkdY/XrUJQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:awOvXi4FW0I=:X4eaLC/5TI7kjfNS3Ti5HB
 RlhOZVuzODooeZtBOulm3h1EdimTZRYaLTwnTpSdF7zEaEPMN1Il1rvvzRyLE/PEVgGGg/JhT
 c/oMR7eJNvY3nR5RgVRlTnRfK0OnvGcXkl8Z7E4SmGURjqRWenM2SDjrnW2hnPhWoXZOtp8L5
 ycw9MWjw7zHFadqTwTFRyZlT47ecPm/q29ymeTGeHS3eR3HDEfdyWyeLZ/hvtXMDPKm/pa6aV
 FDZ6xzny9t43Y2pbKq18F/WPVuWRLM2+IgULZnzr4D2bhb8HYblDfnAlfLJyRXiLsacGHzerB
 81cm2X1bboV7fH538nkfMQNJ5YgKxZNtR58GEBapl06CEf26WWTQh2hdQVEl7z+O5vfHhvdXs
 8slw/6HmO02dCyHeqk3TuShLS5Ra5CbUJzMGz4pkC9osoPURyt62q1uGwcXUiny8PNlOx5a1X
 yGccGwWim5KM0GeLwQU9fVc3UN/q+XAUK5dL7snhqAgHHjnQB4PBBaAk0o0cILQwao4Ssc6nV
 c7uSgKCmOJ5G4zc1TTBDuccvTIOuSLEEkRSm9qLSOyTqMPgvUlvSEVFtfo5csy+iaQUI2z9yJ
 03lJlqm5M9M7saJi4N29m/yGDhi+P91Zh6CSGBcmN/C5NfykFMNeMArUEas5kGUd6fLucRrAN
 NnflFzSdI9glQcSO3/wlyDbAIkgcDptwLg9EXZ87UDp72fT5Jwd9ED75Qtp7FZR7Gw4vPo/km
 cq18FjNxj4fZrHZA7CxxVxAvqcTpFnGKfAERiEYrZL0tgXpKKNUX/DDipRh0YYvNoXBDER3W6
 Ai3QnGyngWKchZl2PNCZtxOG5KSrVQHrlSSX+QCLKaMxn+n3IiPluXWBNwIREV/qJPNI+EL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_092044_650618_F16C9CAA 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA variable
 for common build sequence
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
Content-Type: multipart/mixed; boundary="===============5241954153471271480=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5241954153471271480==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=Hgjk4mHVMwaNOt=-="

This is a multipart message in MIME format.

--=-=Hgjk4mHVMwaNOt=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Piotr Dymacz
> Sent: Sonntag, 2. Februar 2020 18:02
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA
> variable for common build sequence
>=20
> Hi Adrian,
>=20
> On 02.02.2020 13:48, Adrian Schmutzler wrote:
> > This introduce a variable KERNEL_LZMA to replace the frequently used
> > sequence "kernel-bin | append-dtb | lzma", similar to the KERNEL_DTB
> > variable in ramips target.
>=20
> So in results we will have:
>=20
> ramips: KERNEL_DTB   =3D kernel-bin | append-dtb | lzma
>   ath79: KERNEL_LZMA :=3D kernel-bin | append-dtb | lzma
>=20
> Is there any reason to use different var name in ath79?

In ath79 we have some cases where gzip is used instead of lzma, e.g.
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/image/com=
mon-tp-link.mk#L42

Thus, if we use KERNEL_DTB for the case with lzma, it would be misleading, =
as the name only tells us about the DTB.
So, we could either just use " KERNEL_DTB  :=3D kernel-bin | append-dtb ", =
which is too short to be helpful IMO, or use a more indicative name for the=
 VARIABLE, which I thought I found. Actually, I would consider it more corr=
ect to change the name for ramips, too.
We could also use KERNEL_DTB_LZMA of course, but I do not think this will r=
eally bring a benefit.

Best

Adrian

>=20
> Also, see: https://chris.beams.io/posts/git-commit/#imperative
>=20
> --
> Cheers,
> Piotr
>=20
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >   target/linux/ath79/image/Makefile           |  5 +++--
> >   target/linux/ath79/image/common-mikrotik.mk |  4 ++--
> >   target/linux/ath79/image/common-tp-link.mk  | 14 ++++++--------
> >   target/linux/ath79/image/generic-tp-link.mk |  5 ++---
> >   target/linux/ath79/image/generic-ubnt.mk    |  2 +-
> >   target/linux/ath79/image/generic.mk         | 10 +++++-----
> >   6 files changed, 19 insertions(+), 21 deletions(-)
> >
> > diff --git a/target/linux/ath79/image/Makefile
> > b/target/linux/ath79/image/Makefile
> > index a28658ec0b..71ffa4b429 100644
> > --- a/target/linux/ath79/image/Makefile
> > +++ b/target/linux/ath79/image/Makefile
> > @@ -52,6 +52,7 @@ define Build/relocate-kernel
> >   	rm -rf $@.relocate
> >   endef
> >
> > +KERNEL_LZMA :=3D kernel-bin | append-dtb | lzma
> >
> >   define Device/Default
> >     DEVICE_DTS_DIR :=3D ../dts
> > @@ -59,8 +60,8 @@ define Device/Default
> >     PROFILES =3D Default
> >     MTDPARTS :=3D
> >     BLOCKSIZE :=3D 64k
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | uImage lzma
> > -  KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | uImage lzma
> > +  KERNEL :=3D $(KERNEL_LZMA) | uImage lzma  KERNEL_INITRAMFS :=3D
> > + $(KERNEL_LZMA) | uImage lzma
> >     COMPILE :=3D
> >     SUPPORTED_DEVICES :=3D $(subst _,$(comma),$(1))
> >     IMAGES :=3D sysupgrade.bin
> > diff --git a/target/linux/ath79/image/common-mikrotik.mk
> > b/target/linux/ath79/image/common-mikrotik.mk
> > index 292237c76a..6531619fe9 100644
> > --- a/target/linux/ath79/image/common-mikrotik.mk
> > +++ b/target/linux/ath79/image/common-mikrotik.mk
> > @@ -2,6 +2,6 @@ define Device/mikrotik
> >   	DEVICE_VENDOR :=3D MikroTik
> >   	DEVICE_PACKAGES :=3D rbextract rbcfg
> >   	LOADER_TYPE :=3D elf
> > -	KERNEL :=3D kernel-bin | append-dtb | lzma | loader-kernel
> > -	KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | loader-
> kernel
> > +	KERNEL :=3D $(KERNEL_LZMA) | loader-kernel
> > +	KERNEL_INITRAMFS :=3D $(KERNEL_LZMA) | loader-kernel
> >   endef
> > diff --git a/target/linux/ath79/image/common-tp-link.mk
> > b/target/linux/ath79/image/common-tp-link.mk
> > index a9fccd0fe6..abce4095c4 100644
> > --- a/target/linux/ath79/image/common-tp-link.mk
> > +++ b/target/linux/ath79/image/common-tp-link.mk
> > @@ -14,8 +14,8 @@ define Device/tplink-v1
> >     TPLINK_HWREV :=3D 0x1
> >     TPLINK_HEADER_VERSION :=3D 1
> >     LOADER_TYPE :=3D gz
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma
> > -  KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma |
> > tplink-v1-header
> > +  KERNEL :=3D $(KERNEL_LZMA)
> > +  KERNEL_INITRAMFS :=3D $(KERNEL_LZMA) | tplink-v1-header
> >     IMAGES +=3D factory.bin
> >     IMAGE/sysupgrade.bin :=3D tplink-v1-image sysupgrade | append-
> metadata
> >     IMAGE/factory.bin :=3D tplink-v1-image factory @@ -26,8 +26,7 @@
> > define Device/tplink-nolzma
> >     LOADER_FLASH_OFFS :=3D 0x22000
> >     COMPILE :=3D loader-$(1).gz
> >     COMPILE/loader-$(1).gz :=3D loader-okli-compile
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c=
49 |
> \
> > -	loader-okli $(1) 7680
> > +  KERNEL :=3D $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli
> > + $(1) 7680
> >     KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | gzip | tplink-v1-he=
ader
> >   endef
> >
> > @@ -63,7 +62,7 @@ endef
> >
> >   define Device/tplink-safeloader
> >     $(Device/tplink-v1)
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-v1-header -O
> > +  KERNEL :=3D $(KERNEL_LZMA) | tplink-v1-header -O
> >     IMAGE/sysupgrade.bin :=3D append-rootfs | tplink-safeloader sysupgr=
ade
> | \
> >       append-metadata | check-size $$$$(IMAGE_SIZE)
> >     IMAGE/factory.bin :=3D append-rootfs | tplink-safeloader factory @@
> > -71,7 +70,7 @@ endef
> >
> >   define Device/tplink-safeloader-uimage
> >     $(Device/tplink-safeloader)
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma
> > +  KERNEL :=3D $(KERNEL_LZMA) | uImageArcher lzma
> >   endef
> >
> >   define Device/tplink-safeloader-okli @@ -80,6 +79,5 @@ define
> > Device/tplink-safeloader-okli
> >     LOADER_FLASH_OFFS :=3D 0x43000
> >     COMPILE :=3D loader-$(1).elf
> >     COMPILE/loader-$(1).elf :=3D loader-okli-compile
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c=
49 |
> \
> > -	loader-okli $(1) 12288
> > +  KERNEL :=3D $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli
> > + $(1) 12288
> >   endef
> > diff --git a/target/linux/ath79/image/generic-tp-link.mk
> > b/target/linux/ath79/image/generic-tp-link.mk
> > index f1a603dc6d..30e6f979c4 100644
> > --- a/target/linux/ath79/image/generic-tp-link.mk
> > +++ b/target/linux/ath79/image/generic-tp-link.mk
> > @@ -203,9 +203,8 @@ define Device/tplink_archer-d50-v1
> >     TPLINK_FLASHLAYOUT :=3D 8Mqca
> >     TPLINK_HWREVADD :=3D 0x00000000
> >     TPLINK_HVERSION :=3D 3
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma
> > -  KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | \
> > -	tplink-v2-header -s -V "ver. 1.0"
> > +  KERNEL :=3D $(KERNEL_LZMA)
> > +  KERNEL_INITRAMFS :=3D $(KERNEL_LZMA) | tplink-v2-header -s -V "ver.
> 1.0"
> >     IMAGES :=3D sysupgrade.bin
> >     IMAGE/sysupgrade.bin :=3D tplink-v2-image -s -V "ver. 2.0" | append-
> metadata | \
> >   	check-size $$$$(IMAGE_SIZE)
> > diff --git a/target/linux/ath79/image/generic-ubnt.mk
> > b/target/linux/ath79/image/generic-ubnt.mk
> > index ffae83eda5..bbacd393cb 100644
> > --- a/target/linux/ath79/image/generic-ubnt.mk
> > +++ b/target/linux/ath79/image/generic-ubnt.mk
> > @@ -220,7 +220,7 @@ define Device/ubnt_routerstation_common
> >     IMAGES :=3D factory.bin
> >     IMAGE/factory.bin :=3D append-rootfs | pad-rootfs | mkubntimage | \
> >   	check-size $$$$(IMAGE_SIZE)
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
> > +  KERNEL :=3D $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
> >     KERNEL_INITRAMFS :=3D kernel-bin | append-dtb
> >   endef
> >
> > diff --git a/target/linux/ath79/image/generic.mk
> > b/target/linux/ath79/image/generic.mk
> > index 1bc7b2d68e..7555ce4024 100644
> > --- a/target/linux/ath79/image/generic.mk
> > +++ b/target/linux/ath79/image/generic.mk
> > @@ -105,7 +105,7 @@ define Device/adtran_bsap1880
> >     SOC :=3D ar7161
> >     DEVICE_VENDOR :=3D Adtran/Bluesocket
> >     DEVICE_PACKAGES +=3D -swconfig -uboot-envtools fconfig
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
> > +  KERNEL :=3D $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
> >     KERNEL_INITRAMFS :=3D kernel-bin | append-dtb
> >     IMAGE_SIZE :=3D 11200k
> >     IMAGES +=3D kernel.bin rootfs.bin
> > @@ -151,7 +151,7 @@ define Device/avm_fritz300e
> >     SOC :=3D ar7242
> >     DEVICE_VENDOR :=3D AVM
> >     DEVICE_MODEL :=3D FRITZ!WLAN Repeater 300E
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | eva-image
> > +  KERNEL :=3D $(KERNEL_LZMA) | eva-image
> >     KERNEL_INITRAMFS :=3D $$(KERNEL)
> >     IMAGE_SIZE :=3D 15232k
> >     IMAGE/sysupgrade.bin :=3D append-kernel | pad-to 64k | \ @@ -166,7
> > +166,7 @@ define Device/avm_fritz4020
> >     DEVICE_VENDOR :=3D AVM
> >     DEVICE_MODEL :=3D FRITZ!Box 4020
> >     IMAGE_SIZE :=3D 15232k
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | eva-image
> > +  KERNEL :=3D $(KERNEL_LZMA) | eva-image
> >     KERNEL_INITRAMFS :=3D $$(KERNEL)
> >     IMAGE/sysupgrade.bin :=3D append-kernel | pad-to 64k | \
> >   	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs |
> > pad-rootfs | \ @@ -712,7 +712,7 @@ define Device/jjplus_ja76pf2
> >     IMAGES :=3D kernel.bin rootfs.bin
> >     IMAGE/kernel.bin :=3D append-kernel
> >     IMAGE/rootfs.bin :=3D append-rootfs | pad-rootfs
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
> > +  KERNEL :=3D $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
> >     KERNEL_INITRAMFS :=3D kernel-bin | append-dtb
> >     IMAGE_SIZE :=3D 16000k
> >     SUPPORTED_DEVICES +=3D ja76pf2
> > @@ -992,7 +992,7 @@ define Device/pisen_wmb001n
> >     COMPILE/loader-$(1).bin :=3D loader-okli-compile
> >     COMPILE/loader-$(1).uImage :=3D append-loader-okli $(1) | pad-to 64=
k |
> lzma | \
> >   	uImage lzma
> > -  KERNEL :=3D kernel-bin | append-dtb | lzma | uImage lzma -M
> > 0x4f4b4c49
> > +  KERNEL :=3D $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49
> >     IMAGES +=3D factory.bin
> >     IMAGE/factory.bin :=3D $$(IMAGE/sysupgrade.bin) | pisen_wmb001n-
> factory $(1)
> >   endef
> >
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=Hgjk4mHVMwaNOt=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl43BOYACgkQoNyKO7qx
AnAdYBAAwYWopMYQb7rEwZMV1Dx0i3S5lV8B7j53SSot69Ygly6arP9TWrhobnVu
inYp1vitTLy+scabqj719cs96dBKY1jiLcxDM+8r7CxJRfcb5WvkfjceWbM/3Iq1
sG1Z0ZwGh+MgHI3GnyjUTE8Xs6tp8jyzb2Ee+qCCytbjlXvBuKtnY2+87yFL2dmO
gVRloitp3rehu3li3SX01cTkX9mmVRaNEjMe4JFNmYvBXgjP4EO3OqYxxtLTz6QL
ytsp69FyHRBpnOZD27e6F1d+YW/YKv5LBJMx3SnImC+PMW5GrkNBPhHbHyPwyhCx
Fwh7+gUp0FMzehlA8ahj3oiW+7k+2T9wQbTakmAIZGRChVA8HphRmNgitqFLtPWK
BbcLGKRjZDpiS3BLQC2cOoEJxvNzIwkf/joXbikUzPTa3y3sKjZ6vLeSBYvS2cwa
q8s+oKmtyLh3BuTyheHAABdj/2NtnzGu0+dK0pgiz7IP6XUCZfs4ZAhrgXuMfBzz
QWdRKRxPwoGfUrqoC+H9lr6jRCTZwrR00iHxi2LIzma+AicSCy5MU7k2bxbWL1f5
KA5cD32W67HCniPfgOI4xWS5772D9yHzm60lQ8ncxJln4dy+AyvZjWZShk9kx5ob
NXkTE56uJEjpAzBhUcvS5m3460duQnsyd1aeZ/voUuiVAeZBHvY=
=Txwr
-----END PGP SIGNATURE-----


--=-=Hgjk4mHVMwaNOt=-=--



--===============5241954153471271480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5241954153471271480==--


