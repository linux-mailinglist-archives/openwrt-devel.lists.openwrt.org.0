Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9379F142EB7
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 16:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A+NRBrh5e5NUilfKUcM6lFDA7mwZ6ItVlp/tUMgRD7Y=; b=C1APslEDtd7xGTJXupp/1FJ7R
	2cA7F1lxbi83qZkktI1nLE5EqWEqI+MYTXB8xORBUsCMmBTOua7dWUtv7kPupfezR1/MEQfONmFFY
	MHu3YVgRf4rBm/ZKgJz41cII85HNCVOLLj9hauYFfoHCD2hOfma6hiwcToJ0/MNpo3XvLroZbInB1
	bUpxotV0TjiJPyFJbtHqC6GvskwpZTrVxu/MGm7s2bGZZtvhBgjyXX4BjE3VZyaEglBCczXbzNrnT
	+6LpLfcIscgnE4jm03O8kEBiiRZhj+L4dYRRuhSEjZogir//3o0Du6FpE34CFkf8MC7rGTN/oO9e8
	9sdf/NDOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYx7-0004YQ-5g; Mon, 20 Jan 2020 15:26:57 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYwv-0004Xz-Fe
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 15:26:50 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MZAvp-1j6TFg3sZt-00V5zz; Mon, 20
 Jan 2020 16:26:41 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
 <20200118012115.46148-2-freifunk@adrianschmutzler.de>
 <e7d275e5-3565-6c5b-df76-3a44321063a3@o2.pl>
In-Reply-To: <e7d275e5-3565-6c5b-df76-3a44321063a3@o2.pl>
Date: Mon, 20 Jan 2020 16:26:41 +0100
Message-ID: <023301d5cfa6$043376a0$0c9a63e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQEtgLuWYMLunuNaJTXpYwsJtYV8ngJ3gUz/AgoYUh6pIDz7UA==
X-Provags-ID: V03:K1:VSk2SNhQ4E7x0P0SJCGhEhoRyJMZA9thMqj5hIM9xRli+kvQ5JG
 NFY9xgPli8x0n7FZVk4Ny33FoR2r2+wq4Coyiud1i/SUel7/l2i9SUFp57d1iazKhmMsvy9
 a0Jr4e9ISd/q4Ympp/izsY6hnnZqabYta3yQyN0R4sgJtkI5peTxF5eCj0tzZnSTJxy9iGE
 jA9lrXMzvuTsWWznpIWgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8FwXhi4Rsa4=:drPF0vhfIMkxtNUWPRXQHf
 TSkQZjlcMIBF0/4hjzaaoY4i5UpBDI47Z8R78ugReVZtEEg0/h/B2LzGHmEH8fB6vYbdFddx0
 eANdvOkB8X/Dw3eEPEujdLLXGxIsLxc8KbeQtYLe2A5cocRdH1Wl55Hz1qsiohouMESNIEMJ/
 vCsidWbpVExrakOI+YhmDzWuxh7WFATvayYsMtPlxtJN9lfGyHsXZYkKU++3DQFpm55i/290m
 xq96ONUc1iopF/Wy5nPcMpxUjH9sQyIiikX0ro02usbh9ar3tVoqQoonnw/Qi5SKr0CRZ2HxJ
 T3Be+xjn/XKf8xbBA8iLTPofQZtxfSqsapDLx8kh3uciZ+6DB2WzSXO0Zk8FFRn56fJKougHK
 e25+VrtoD7to0CHJ7+aBFyDzCMDYThZsh3HKcdNVR0jUtDGkRn0Dnkmyaz7F0FvoU28GWDB/P
 YUYSpQfzlp3g3tifrMQZ4uqX0OxZut99f+/XeM8Eqt6/DD1sSYqIo3gBVOvEP1ayVcntoqY2B
 /Dut2CJiAn6JwFq1Em7RZP6LblGtPRuGTnPPF2qFttZONvhq4nmzbcRv4PMnfNuvV372dNqkx
 QyOReEuPQApXvNP8D0FhbK0kgRTeZmc/I0cVEZPgDYgxYJDo+l7EykCa2xHknFQ2yFrkleogB
 lLLDaOA5IFTLbcnAjeMhMYoNTAghmNH+ELe8TzIS2HV1aeg1rgoZQ4aiBXWJ9ckfM9Xs+0gIZ
 aaNSfqyeKGzCxH6OZ5/eturzMcj20whoYpr2BUY/5Jc78MQPYrwZSaTbQHAAt8wHLwkLERWqr
 ASCKt0pJvBIgN5Cd36DCCKNZ2V7eyxesb7eBJyZUfxPrMO/XXW94v+wsmtwU4oiIgCq48YkIk
 mEPRcYkjmo7GO0/r/n6AJXn9tXYVSLanunXXKGDxM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_072645_817399_93851A86 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] mvebu: use SOC to derive DEVICE_DTS
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
Content-Type: multipart/mixed; boundary="===============6981765118118390267=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6981765118118390267==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=vFTpXoZMNqmtVO=-="

This is a multipart message in MIME format.

--=-=vFTpXoZMNqmtVO=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Tomasz Maciej Nowak
> Sent: Montag, 20. Januar 2020 16:08
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] mvebu: use SOC to derive
> DEVICE_DTS
>=20
> W dniu 18.01.2020 o=C2=A002:21, Adrian Schmutzler pisze:
> > This introduces the SOC variable to mvebu target to derive some of
> > the DEVICE_DTS variables based on the SOC prefix and the device
> > definition name.
> >
> > Since DTS names and compatible are inconsistent also in the kernel
> > for this target, the scheme cannot be applied to all devices, though.
> >
> > While at it, change the DTS name of the armada-3720-udpu to lower-case,
> > which is the common practice for DTS file names.
>=20
> Well, this (uDPU change) will be reverted anyway, when kernel 5.4 will be
> introduced, since in upstream it's upper case. So it makes no sense.

thanks for the info, I actually didn't check kernel here.
Although I dislike this inconsistency and wonder how it got accepted into k=
ernel, you're right that it makes no sense to have it lower-case in OpenWrt=
 then and I will change it back.

Best

Adrian

>=20
> For the rest
> Acked-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
>=20
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >  .../{armada-3720-uDPU.dts =3D> armada-3720-udpu.dts}     |  0
> >  target/linux/mvebu/image/Makefile                      |  1 +
> >  target/linux/mvebu/image/cortex-a53.mk                 | 10 +++++-----
> >  target/linux/mvebu/image/cortex-a9.mk                  |  6 +++---
> >  .../patches-4.19/530-add_armada-3820-uDPU-dts.patch    |  2 +-
> >  5 files changed, 10 insertions(+), 9 deletions(-)
> >  rename target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/{arma=
da-
> 3720-uDPU.dts =3D> armada-3720-udpu.dts} (100%)
> >
> > diff --git a/target/linux/mvebu/files-
> 4.19/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-3720-
> udpu.dts
> > similarity index 100%
> > rename from target/linux/mvebu/files-
> 4.19/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> > rename to target/linux/mvebu/files-
> 4.19/arch/arm64/boot/dts/marvell/armada-3720-udpu.dts
> > diff --git a/target/linux/mvebu/image/Makefile
> b/target/linux/mvebu/image/Makefile
> > index 6dd7bde7ae..c08b113b36 100644
> > --- a/target/linux/mvebu/image/Makefile
> > +++ b/target/linux/mvebu/image/Makefile
> > @@ -77,6 +77,7 @@ endef
> >
> >  define Device/Default
> >    PROFILES :=3D Default
> > +  DEVICE_DTS =3D $$(SOC)-$(lastword $(subst _, ,$(1)))
> >    BOARD_NAME =3D $$(DEVICE_DTS)
> >    KERNEL_NAME :=3D zImage
> >    KERNEL :=3D kernel-bin | append-dtb | uImage none
> > diff --git a/target/linux/mvebu/image/cortex-a53.mk
> b/target/linux/mvebu/image/cortex-a53.mk
> > index e58a3c42b9..c9d06ddbad 100644
> > --- a/target/linux/mvebu/image/cortex-a53.mk
> > +++ b/target/linux/mvebu/image/cortex-a53.mk
> > @@ -6,7 +6,7 @@ define Device/globalscale_espressobin
> >    DEVICE_ALT0_VENDOR :=3D Marvell
> >    DEVICE_ALT0_MODEL :=3D Armada 3700 Community Board
> >    DEVICE_ALT0_VARIANT :=3D Non-eMMC
> > -  DEVICE_DTS :=3D armada-3720-espressobin
> > +  SOC :=3D armada-3720
> >  endef
> >  TARGET_DEVICES +=3D globalscale_espressobin
> >
> > @@ -18,7 +18,7 @@ define Device/globalscale_espressobin-emmc
> >    DEVICE_ALT0_VENDOR :=3D Marvell
> >    DEVICE_ALT0_MODEL :=3D Armada 3700 Community Board
> >    DEVICE_ALT0_VARIANT :=3D eMMC
> > -  DEVICE_DTS :=3D armada-3720-espressobin-emmc
> > +  SOC :=3D armada-3720
> >  endef
> >  TARGET_DEVICES +=3D globalscale_espressobin-emmc
> >
> > @@ -30,7 +30,7 @@ define Device/globalscale_espressobin-v7
> >    DEVICE_ALT0_VENDOR :=3D Marvell
> >    DEVICE_ALT0_MODEL :=3D Armada 3700 Community Board
> >    DEVICE_ALT0_VARIANT :=3D V7 Non-eMMC
> > -  DEVICE_DTS :=3D armada-3720-espressobin-v7
> > +  SOC :=3D armada-3720
> >  endef
> >  TARGET_DEVICES +=3D globalscale_espressobin-v7
> >
> > @@ -42,7 +42,7 @@ define Device/globalscale_espressobin-v7-emmc
> >    DEVICE_ALT0_VENDOR :=3D Marvell
> >    DEVICE_ALT0_MODEL :=3D Armada 3700 Community Board
> >    DEVICE_ALT0_VARIANT :=3D V7 eMMC
> > -  DEVICE_DTS :=3D armada-3720-espressobin-v7-emmc
> > +  SOC :=3D armada-3720
> >  endef
> >  TARGET_DEVICES +=3D globalscale_espressobin-v7-emmc
> >
> > @@ -58,7 +58,7 @@ define Device/methode_udpu
> >    $(call Device/Default-arm64)
> >    DEVICE_VENDOR :=3D Methode
> >    DEVICE_MODEL :=3D micro-DPU (uDPU)
> > -  DEVICE_DTS :=3D armada-3720-uDPU
> > +  SOC :=3D armada-3720
> >    KERNEL_LOADADDR :=3D 0x00080000
> >    KERNEL_INITRAMFS :=3D kernel-bin | gzip | fit gzip
> $$(DTS_DIR)/$$(DEVICE_DTS).dtb
> >    KERNEL_INITRAMFS_SUFFIX :=3D .itb
> > diff --git a/target/linux/mvebu/image/cortex-a9.mk
> b/target/linux/mvebu/image/cortex-a9.mk
> > index 389082e426..79253049c7 100644
> > --- a/target/linux/mvebu/image/cortex-a9.mk
> > +++ b/target/linux/mvebu/image/cortex-a9.mk
> > @@ -93,7 +93,7 @@ define Device/plathome_openblocks-ax3-4
> >    DEVICE_VENDOR :=3D Plat'Home
> >    DEVICE_MODEL :=3D OpenBlocks AX3
> >    DEVICE_VARIANT :=3D 4 ports
> > -  DEVICE_DTS :=3D armada-xp-openblocks-ax3-4
> > +  SOC :=3D armada-xp
> >    SUPPORTED_DEVICES +=3D openblocks-ax3-4
> >    BLOCKSIZE :=3D 128k
> >    PAGESIZE :=3D 1
> > @@ -193,7 +193,7 @@ define Device/globalscale_mirabox
> >    $(Device/NAND-512K)
> >    DEVICE_VENDOR :=3D Globalscale
> >    DEVICE_MODEL :=3D Mirabox
> > -  DEVICE_DTS :=3D armada-370-mirabox
> > +  SOC :=3D armada-370
> >    SUPPORTED_DEVICES +=3D mirabox
> >  endef
> >  TARGET_DEVICES +=3D globalscale_mirabox
> > @@ -212,7 +212,7 @@ define Device/cznic_turris-omnia
> >    IMAGE/$$(IMAGE_PREFIX)-sysupgrade.img.gz :=3D boot-img | sdcard-img =
| gzip
> | append-metadata
> >    IMAGE/omnia-medkit-$$(IMAGE_PREFIX)-initramfs.tar.gz :=3D omnia-medk=
it-
> initramfs | gzip
> >    IMAGE_NAME =3D $$(2)
> > -  DEVICE_DTS :=3D armada-385-turris-omnia
> > +  SOC :=3D armada-385
> >    SUPPORTED_DEVICES +=3D armada-385-turris-omnia
> >  endef
> >  TARGET_DEVICES +=3D cznic_turris-omnia
> > diff --git a/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-
> dts.patch b/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-
> dts.patch
> > index bd4f0aef9a..635e141c69 100644
> > --- a/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch
> > +++ b/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-
> dts.patch
> > @@ -4,7 +4,7 @@
> >   # Mvebu SoC Family
> >   dtb-$(CONFIG_ARCH_MVEBU) +=3D armada-3720-db.dtb
> >   dtb-$(CONFIG_ARCH_MVEBU) +=3D armada-3720-espressobin.dtb
> > -+dtb-$(CONFIG_ARCH_MVEBU) +=3D armada-3720-uDPU.dtb
> > ++dtb-$(CONFIG_ARCH_MVEBU) +=3D armada-3720-udpu.dtb
> >   dtb-$(CONFIG_ARCH_MVEBU) +=3D armada-7040-db.dtb
> >   dtb-$(CONFIG_ARCH_MVEBU) +=3D armada-8040-db.dtb
> >   dtb-$(CONFIG_ARCH_MVEBU) +=3D armada-8040-mcbin.dtb
> >
>=20
>=20
> --
> TMN
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=vFTpXoZMNqmtVO=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4lxqsACgkQoNyKO7qx
AnDPUBAAgObfWiLn+W6jrBodRJaGvHmApRagt4mu9Z6Mt03QraPY6aQ7ot4eRSdX
MCCd/yMMs3dtxr9SoiPJmpGmFOawp5PNBP6Eu0pK58Ru71M8FquVanWxRQ5eXZHa
T78tul76iGuJ38XMoM2U43dioZpEoMfGi36GdsWjVROK4b1xnqn6JA/lC+fRp1WL
oNkVDZ7bx8J6pnDezvmXZWCKaUl+D/bv/78QHMPaJrqJLfN8A4pCDlTDBb+OXzu+
QD1A5vtxxrs4aSBhkr/TVRKA3LWKyqRgopT8RSILIosTBhJtVM8nN3/xocY9bWnv
ZFmmqC2nt+XeVYpxH3DZtaI0h8EE2XxJoNnFEii74lqdKECx1HimY4kS5AwucK4G
4xqALJv4+HhQigpmkhlwQhNFilntU4QzHtV0V5FVvJ1GExgsIedmvSRN8mzS0Erd
ZJcB2lDHIcxvJEhIbfBi1OcwTDJgVzL2e2C2cP3mcOairjlrLWw6D47tzGHGMf9t
FluoClcpTVlpdUUJ7rPntHHyn81JPng0KtlehUruUo0F1qhgyH8LAZ4rjXo/E9vz
6IaH6Y/1yGwCl30SnhNl+Cv0p5+QQ89zyXCsc1mfjt6iTwisZk4aGZrOutKxDfKZ
FwxrrzUvJ7ftNoTkzhKeWmSP33oF13n3e7KmS00CEhmCe5T8dV8=
=AzKl
-----END PGP SIGNATURE-----


--=-=vFTpXoZMNqmtVO=-=--



--===============6981765118118390267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6981765118118390267==--


