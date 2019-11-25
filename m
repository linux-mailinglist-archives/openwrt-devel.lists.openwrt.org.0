Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478BC108FA2
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 15:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4/mrMc0U/+kC6B34+zR2I+H9DmicIGcUZyI8Kiwgzjs=; b=jgkOnty8C4/UTi5TlMAY6WTZw
	fw8uv817aLa+2MYs2Dp7xOBsVF8dxgOEJwvHF+NSy6D3A3D4XOzTmPvvE4Hxco9LkyDm59fOcBEaT
	qoI/d8ZhPG4SAy3K9EglxcVjEMifBezItRdnJSrxkNTba4LPRSM47Cb4dXD3U3QqPIQ2NZJiNpkOM
	OvKcxb4eCVKwWZ7ZU72XN0/ISdicQIXuKxvXXhhpJJr7NkzH5yK19QxNCX2ZWpfFax4OM2EMEZ35R
	MGCkvLl9OmGlxTNShn3kRkovZ6+vptIBrkadY6+6LQEvdISfXB9boshfqIEdv8iGEEU+ySaBt2cAX
	Q4Ggm9vSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZF55-0001uK-Ep; Mon, 25 Nov 2019 14:11:11 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZF4x-0001qi-5C
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 14:11:05 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MVMJ7-1iQcbg2fFn-00SO3l; Mon, 25
 Nov 2019 15:10:55 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191123131239.16691-1-pepe2k@gmail.com>
In-Reply-To: <20191123131239.16691-1-pepe2k@gmail.com>
Date: Mon, 25 Nov 2019 15:10:53 +0100
Message-ID: <02ad01d5a39a$2747ddd0$75d79970$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQGJkqr7w2ADRE3EbsxCbF9Mse0GC6g0Dpxw
X-Provags-ID: V03:K1:1cSwvdvUEcJHfcvDvbNLUrOpAEkpCyRn94Fig2iJR9qLcE1RDj2
 sFtWEURiEWsdjfckEcN5H1s7cCHvdUlYJ/yWLQFhT3bX9KPRudiydjAmen28wuOLNLuh0ow
 GiSHaK44ANM6in+zl1JC9y37D1PTzFPKC7XhwYOmvcU8YbIaqc8YeJadC5OoE4lNo81GDij
 EL19fp0LQZe+4veXv8FsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/4XihEVLS0s=:mg9/iZuucHPwC5FfFPBcl0
 1v8zVi7a0rMmVyGkpzF97pe3lTxIqhg7W9NEf04i+bMOKkAlskgYVO6O3o4PosFIDQaK/tfgE
 vNM8NrBnwOGi/jIm5OcHfUm63T6/y5SRQ1kTfmNjchdKe31/RUFe5PeQy3aQ/B1xT2YHf6QRn
 XFDdWM9kzM2HoAnwHmWbXEd9cSVxta/pxztt7huigH+BVW4clLo6msUMCMt2YPkfsvnELTvqH
 KVwY8zs+gYLarYj3lSF3qJUB7uuqvEZTcuWRupOwwXL4Ww4B1455uvbhOCpOZ+j/Qjr1Hq8Ep
 Ed479Hq8LNI6vJWZnVakoPfBkznA4bjBncajPoleaweRx8PcpWtK/hSNdlWAgjoovcGaY/WQa
 VaY+LyCGLIkTfW1Fk4AFVJ/tlSQT5K4tnIMlovI3bgDB/q+ZvliVXsc7KYGmvsAHzYq0TYsiW
 BWAu2Nw2qPXE1vDlXweioTH6toduLsiU7lzE5jcL+j/V84KSbgGZ6GtHfAaYPCg0xmJvbRvM3
 CPOysuKpozi/v/GBFncFp6eZY/xSvYHuV5kPVffrbie56+p82kqII2l7hSQjhfZRWk6ZYq3Gl
 hSDYCJQ4oGzpP9HmYn73i9MNSVUpHDpEKWgcOSQinOFxDRplwGuim6FNDVKfmoV3o6yesVn1V
 h5PMAGVHUotWBiZld5n5OFCezbT/1AMLF/8uX7XPcGuEyLHCzDqj01ctP1xIw4BdJC+RTUYn3
 2unyNWnGcopcQygX/kFlBncbwOFZl8Rh28Q27bPGfcRzrv2ed8+oTdGc60lpxylRb3mwwHNfa
 VmtaJ64AGYIr+9g1Nmiqq8lJV5Nofb7PLAZS7OOT6oBzNLysDeWrm4gyH70o0V6luqd3qCScq
 rZbSt3N/2QOob0aGDtfKakOPVjuRxOveROAZCiPEA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_061103_499161_9D6D3D85 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ramips: use upstream
 RAW_APPENDED_DTB instead of our OWRTDTB
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
Cc: ynezz@true.cz, gch981213@gmail.com, musashino.open@gmail.com
Content-Type: multipart/mixed; boundary="===============1932744168325873583=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1932744168325873583==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=xS0vN1kQVeqA8A=-="

This is a multipart message in MIME format.

--=-=xS0vN1kQVeqA8A=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

LGTM.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Piotr Dymacz
> Sent: Samstag, 23. November 2019 14:13
> To: openwrt-devel@lists.openwrt.org
> Cc: ynezz@true.cz; gch981213@gmail.com; musashino.open@gmail.com
> Subject: [OpenWrt-Devel] [PATCH 19.07] ramips: use upstream
> RAW_APPENDED_DTB instead of our OWRTDTB
>=20
> From: Chuanhong Guo <gch981213@gmail.com>
>=20
> Upstream kernel added support for RAW_APPENDED_DTB on ralink arch
> in the following commit:
> 02564fc89d3d ("ralink: Introduce fw_passed_dtb to arch/mips/ralink")
>=20
> Use upstream solution and get rid of our OWRTDTB hack.
> This commit set DEVICE_DTS to $$(DTS) instead of replacing DTS with
> DEVICE_DTS in device profile because DTS variable will be dropped
> in later commits.
>=20
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> [Tested on mt7621/mt76x8]
> Tested-by: Chuanhong Guo <gch981213@gmail.com>
> [Tested on rt305x/mt7620]
> Tested-by: INAGAKI Hiroshi <musashino.open@gmail.com>
> (cherry picked from commit 7a8d3432c739c6ff038295176e8b6324e92fc116)
> Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
> ---
>  target/linux/ramips/image/Makefile            | 11 +---
>  target/linux/ramips/image/mt7621.mk           |  2 +-
>  target/linux/ramips/image/rt3883.mk           |  2 +-
>  target/linux/ramips/mt7620/config-4.14        |  4 +-
>  target/linux/ramips/mt7621/config-4.14        |  4 +-
>  target/linux/ramips/mt76x8/config-4.14        |  4 +-
>  .../ramips/patches-4.14/0100-prom_fixes.patch | 66 -------------------
>  target/linux/ramips/rt305x/config-4.14        |  4 +-
>  target/linux/ramips/rt3883/config-4.14        |  4 +-
>  9 files changed, 15 insertions(+), 86 deletions(-)
>  delete mode 100644 target/linux/ramips/patches-4.14/0100-prom_fixes.patch
>=20
> diff --git a/target/linux/ramips/image/Makefile
> b/target/linux/ramips/image/Makefile
> index 0a32859bec..07251aebba 100644
> --- a/target/linux/ramips/image/Makefile
> +++ b/target/linux/ramips/image/Makefile
> @@ -19,12 +19,12 @@ loadaddr-$(CONFIG_TARGET_ramips_mt7621) :=3D
> 0x80001000
>=20
>  KERNEL_LOADADDR :=3D $(loadaddr-y)
>=20
> -KERNEL_DTB =3D kernel-bin | patch-dtb | lzma
> +KERNEL_DTB =3D kernel-bin | append-dtb | lzma
>  define Device/Default
> -  PROFILES =3D Default $$(DTS)
> -  KERNEL_DEPENDS =3D $$(wildcard ../dts/$$(DTS).dts)
> +  PROFILES =3D Default
>    KERNEL :=3D $(KERNEL_DTB) | uImage lzma
>    DEVICE_DTS_DIR :=3D ../dts
> +  DEVICE_DTS =3D $$(DTS)
>    IMAGES :=3D sysupgrade.bin
>    IMAGE_SIZE :=3D $(ralink_default_fw_size_8M)
>    SUPPORTED_DEVICES :=3D $(subst _,$(comma),$(1))
> @@ -52,11 +52,6 @@ define Build/jcg-header
>  	mv $@.new $@
>  endef
>=20
> -define Build/patch-dtb
> -	$(call Image/BuildDTB,../dts/$(DTS).dts,$@.dtb)
> -	$(STAGING_DIR_HOST)/bin/patch-dtb $@ $@.dtb
> -endef
> -
>  define Build/trx
>  	$(STAGING_DIR_HOST)/bin/trx $(1) \
>  		-o $@ \
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index f13e9c8a4f..fa222f7a89 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -106,7 +106,7 @@ define Device/dir-860l-b1
>    DTS :=3D DIR-860L-B1
>    BLOCKSIZE :=3D 64k
>    SEAMA_SIGNATURE :=3D wrgac13_dlink.2013gui_dir860lb
> -  KERNEL :=3D kernel-bin | patch-dtb | relocate-kernel | lzma | uImage l=
zma
> +  KERNEL :=3D kernel-bin | append-dtb | relocate-kernel | lzma | uImage =
lzma
>    IMAGE_SIZE :=3D $(ralink_default_fw_size_16M)
>    DEVICE_TITLE :=3D D-Link DIR-860L B1
>    DEVICE_PACKAGES :=3D kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport
> wpad-basic
> diff --git a/target/linux/ramips/image/rt3883.mk
> b/target/linux/ramips/image/rt3883.mk
> index 4844abd1b7..b783994357 100644
> --- a/target/linux/ramips/image/rt3883.mk
> +++ b/target/linux/ramips/image/rt3883.mk
> @@ -48,7 +48,7 @@ define Device/belkin_f9k1109v1
>    DEVICE_TITLE :=3D Belkin F9K1109 Version 1.0
>    DEVICE_PACKAGES :=3D kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
>    IMAGE_SIZE :=3D 7224k
> -  KERNEL :=3D kernel-bin | patch-dtb | lzma -d16 | uImage lzma
> +  KERNEL :=3D kernel-bin | append-dtb | lzma -d16 | uImage lzma
>    # Stock firmware checks for this uImage image name during upload.
>    UIMAGE_NAME :=3D N750F9K1103VB
>  endef
> diff --git a/target/linux/ramips/mt7620/config-4.14
> b/target/linux/ramips/mt7620/config-4.14
> index 05f3963d43..92a7a2fd38 100644
> --- a/target/linux/ramips/mt7620/config-4.14
> +++ b/target/linux/ramips/mt7620/config-4.14
> @@ -146,8 +146,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=3Dy
>  # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
>  CONFIG_MIPS_L1_CACHE_SHIFT=3D5
>  # CONFIG_MIPS_MACHINE is not set
> -CONFIG_MIPS_NO_APPENDED_DTB=3Dy
> -# CONFIG_MIPS_RAW_APPENDED_DTB is not set
> +# CONFIG_MIPS_NO_APPENDED_DTB is not set
> +CONFIG_MIPS_RAW_APPENDED_DTB=3Dy
>  CONFIG_MIPS_SPRAM=3Dy
>  CONFIG_MODULES_USE_ELF_REL=3Dy
>  # CONFIG_MT7621_WDT is not set
> diff --git a/target/linux/ramips/mt7621/config-4.14
> b/target/linux/ramips/mt7621/config-4.14
> index b279c69879..a2c58e030b 100644
> --- a/target/linux/ramips/mt7621/config-4.14
> +++ b/target/linux/ramips/mt7621/config-4.14
> @@ -173,9 +173,9 @@ CONFIG_MIPS_L1_CACHE_SHIFT=3D5
>  CONFIG_MIPS_MT=3Dy
>  CONFIG_MIPS_MT_FPAFF=3Dy
>  CONFIG_MIPS_MT_SMP=3Dy
> -CONFIG_MIPS_NO_APPENDED_DTB=3Dy
> +# CONFIG_MIPS_NO_APPENDED_DTB is not set
>  CONFIG_MIPS_PERF_SHARED_TC_COUNTERS=3Dy
> -# CONFIG_MIPS_RAW_APPENDED_DTB is not set
> +CONFIG_MIPS_RAW_APPENDED_DTB=3Dy
>  CONFIG_MIPS_SPRAM=3Dy
>  # CONFIG_MIPS_VPE_LOADER is not set
>  CONFIG_MODULES_USE_ELF_REL=3Dy
> diff --git a/target/linux/ramips/mt76x8/config-4.14
> b/target/linux/ramips/mt76x8/config-4.14
> index 5bcb948585..21cf070374 100644
> --- a/target/linux/ramips/mt76x8/config-4.14
> +++ b/target/linux/ramips/mt76x8/config-4.14
> @@ -143,8 +143,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=3Dy
>  # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
>  CONFIG_MIPS_L1_CACHE_SHIFT=3D5
>  # CONFIG_MIPS_MACHINE is not set
> -CONFIG_MIPS_NO_APPENDED_DTB=3Dy
> -# CONFIG_MIPS_RAW_APPENDED_DTB is not set
> +# CONFIG_MIPS_NO_APPENDED_DTB is not set
> +CONFIG_MIPS_RAW_APPENDED_DTB=3Dy
>  CONFIG_MIPS_SPRAM=3Dy
>  CONFIG_MODULES_USE_ELF_REL=3Dy
>  CONFIG_MT7621_WDT=3Dy
> diff --git a/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
> b/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
> deleted file mode 100644
> index 91ac3b22c4..0000000000
> --- a/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
> +++ /dev/null
> @@ -1,66 +0,0 @@
> -From 67b7bff0fd364c194e653f69baa623ba2141bd4c Mon Sep 17 00:00:00 2001
> -From: John Crispin <blogic@openwrt.org>
> -Date: Mon, 4 Aug 2014 18:46:02 +0200
> -Subject: [PATCH 07/53] MIPS: ralink: copy the commandline from the devic=
etree
> -
> -Signed-off-by: John Crispin <blogic@openwrt.org>
> ----
> - arch/mips/ralink/of.c |    2 ++
> - 1 file changed, 2 insertions(+)
> -
> ---- a/arch/mips/ralink/of.c
> -+++ b/arch/mips/ralink/of.c
> -@@ -3,7 +3,7 @@
> -  * under the terms of the GNU General Public License version 2 as publi=
shed
> -  * by the Free Software Foundation.
> -  *
> -- * Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
> -+ * Copyright (C) 2008-2014 Imre Kaloz <kaloz@openwrt.org>
> -  * Copyright (C) 2008-2009 Gabor Juhos <juhosg@openwrt.org>
> -  * Copyright (C) 2013 John Crispin <john@phrozen.org>
> -  */
> -@@ -66,6 +66,19 @@ static int __init early_init_dt_find_mem
> - 	return 0;
> - }
> -
> -+static int chosen_dtb;
> -+
> -+static int __init early_init_dt_find_chosen(unsigned long node, const c=
har
> *uname,
> -+				     int depth, void *data)
> -+{
> -+	if (depth =3D=3D 1 && !strcmp(uname, "chosen"))
> -+		chosen_dtb =3D 1;
> -+
> -+	return 0;
> -+}
> -+
> -+extern struct boot_param_header __image_dtb;
> -+
> - void __init plat_mem_setup(void)
> - {
> - 	void *dtb =3D NULL;
> -@@ -82,7 +95,11 @@ void __init plat_mem_setup(void)
> - 	else if (__dtb_start !=3D __dtb_end)
> - 		dtb =3D (void *)__dtb_start;
> -
> --	__dt_setup_arch(dtb);
> -+	__dt_setup_arch(&__image_dtb);
> -+
> -+	of_scan_flat_dt(early_init_dt_find_chosen, NULL);
> -+	if (chosen_dtb)
> -+		strlcpy(arcs_cmdline, boot_command_line,
> COMMAND_LINE_SIZE);
> -
> - 	strlcpy(arcs_cmdline, boot_command_line, COMMAND_LINE_SIZE);
> -
> ---- a/arch/mips/kernel/head.S
> -+++ b/arch/mips/kernel/head.S
> -@@ -85,6 +85,9 @@ EXPORT(__image_cmdline)
> - 	.fill	0x400
> - #endif /* CONFIG_IMAGE_CMDLINE_HACK */
> -
> -+	.ascii  "OWRTDTB:"
> -+	EXPORT(__image_dtb)
> -+	.fill   0x4000
> - 	__REF
> -
> - NESTED(kernel_entry, 16, sp)			# kernel entry point
> diff --git a/target/linux/ramips/rt305x/config-4.14
> b/target/linux/ramips/rt305x/config-4.14
> index 1f00bdaae9..60197a1eb8 100644
> --- a/target/linux/ramips/rt305x/config-4.14
> +++ b/target/linux/ramips/rt305x/config-4.14
> @@ -124,8 +124,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=3Dy
>  # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
>  CONFIG_MIPS_L1_CACHE_SHIFT=3D5
>  # CONFIG_MIPS_MACHINE is not set
> -CONFIG_MIPS_NO_APPENDED_DTB=3Dy
> -# CONFIG_MIPS_RAW_APPENDED_DTB is not set
> +# CONFIG_MIPS_NO_APPENDED_DTB is not set
> +CONFIG_MIPS_RAW_APPENDED_DTB=3Dy
>  CONFIG_MIPS_SPRAM=3Dy
>  CONFIG_MODULES_USE_ELF_REL=3Dy
>  # CONFIG_MTD_CFI_INTELEXT is not set
> diff --git a/target/linux/ramips/rt3883/config-4.14
> b/target/linux/ramips/rt3883/config-4.14
> index 046e3732e2..f16b09deb0 100644
> --- a/target/linux/ramips/rt3883/config-4.14
> +++ b/target/linux/ramips/rt3883/config-4.14
> @@ -138,8 +138,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=3Dy
>  # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
>  CONFIG_MIPS_L1_CACHE_SHIFT=3D5
>  # CONFIG_MIPS_MACHINE is not set
> -CONFIG_MIPS_NO_APPENDED_DTB=3Dy
> -# CONFIG_MIPS_RAW_APPENDED_DTB is not set
> +# CONFIG_MIPS_NO_APPENDED_DTB is not set
> +CONFIG_MIPS_RAW_APPENDED_DTB=3Dy
>  CONFIG_MIPS_SPRAM=3Dy
>  CONFIG_MODULES_USE_ELF_REL=3Dy
>  # CONFIG_MTD_CFI_INTELEXT is not set
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=xS0vN1kQVeqA8A=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3b4OoACgkQoNyKO7qx
AnBlMxAAsRBKKLffvLuYMKnrpO2aCMRg2ypaKlqcmht6vflV06B8/QTf81CkyOQ2
QlIJ305D0ZMpuMceOaMqWud1Vx46/+eZZzWN7zl8M7Rx6W9Dsknb+KF9YsguSu7v
NYKDW2Brkyd76uEuiGLRRhVNsaKWH7iGBIYrBG0v6mfBIiqZr4bl5NbGqAOQa1J0
N31qgyF8wTx30tRvRWBEn/Qvb7S5oLJ6ue4dyofNfZjTSZlbsuIJpMXxMVG2pVbO
n/JkTmiECmJ954OxTigU1aEbAq8E46f0I/ObHWdUl0TXZdWOVI6FYpji0HLbuCUk
uMQ0lUT5FKfJJLIIE2DS4MyFaYy4Ql2SFBS9/Epv/jLwPA7ZQVcDEwiKjO9mT0wG
A88ykBcOo5/tugI6v9Xw6OMSuiALy3nELYqlV2i9q4UIvo01JlKGadeysMLJn7u7
4BP2KSwSIJWe4H/LrAHRK4W7viya3CQigjK4anxQizK1Wpb3zHPzd+9tlg/lWdPs
B+gpcqseQXr0wBtJhhsBSsZcNEQf34ePMBSTKD229zaczPilh4+hQHkhubfvC5B8
7TUVIP+W2YPrduxsMObQYttiabrsC4qSnp9ao90bEZv/OvLYmy94sOoFVgjXx1Vz
EdNr6bbmtQCX8IUupilvCGbGCunTf2jJTTSswefQmXkGMbyx7hM=
=YdAJ
-----END PGP SIGNATURE-----


--=-=xS0vN1kQVeqA8A=-=--



--===============1932744168325873583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1932744168325873583==--


