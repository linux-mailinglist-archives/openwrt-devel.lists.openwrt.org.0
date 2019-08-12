Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40C389DFD
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 14:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8+jQbPf2B71iqsozEtvJLQTYPvlxMc/TLF7Ic0pW/FA=; b=IyGZ+FKuhwygT1pK1RsyPtgAJ
	KSB0RPAbovkLCphPaZgj0AqyfGoIO5uUEVYhIIBmgAttU/APitQwZ55SsruT0LD6FWZ1v9ldwHslU
	tNVdGP/8zR/huT6p1+zTv2uRw+36F96QJJThh8yKloqpaRtAzg22Fy5oRPuHBG9/FBn67bFA7SmIy
	roSv6iw0067xpV7wkWx05glBZZ4dECdgfLQ/MibCN1uMy35Nh8jPCGABvq7EYSLE+Nntk0RDtT8ud
	VRcPLSfZuIW2ej1XwOo0dNXH7U3frlG9Cfhr2p32x+lLKVh7xN/q/SSp7/nf6L+3l4i3DRKnzOZhS
	ciq7un/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9JA-0005h8-7p; Mon, 12 Aug 2019 12:20:16 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9FN-000379-Ks
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 12:16:25 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MDyoU-1i75Pj0tYC-009yao; Mon, 12
 Aug 2019 14:16:19 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224252.3641e63f@kosmio.komorska>
In-Reply-To: <20190811224252.3641e63f@kosmio.komorska>
Date: Mon, 12 Aug 2019 14:16:18 +0200
Message-ID: <000001d55107$bf37e530$3da7af90$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQECHRWgK9NZjHBUix22RzISCgT6OAI1gNNsqIwoAlA=
Content-Language: de
X-Provags-ID: V03:K1:cZHeQQq3L/U7QSstcZyVxljqo+UeUPIKpExrIkFxsQjGNzXIdOH
 BpHe1RmMJN6pSM2VZMLOUaO32yPFshyBCJARrmNPGdw876/vtErocIR8uM8I9GQQSRP/tIC
 wHiYNou7nYRyjuNwqdluyhzFlXmQkToef97xisRgD+RkJdpverOp8c9Y0x8VYW1AINgGFbg
 gzfizgtzSQPvPyhiQQEeQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gEB3ZNwBiDg=:QQGeT2dCPTIFCUYFESiLet
 2usEDTZDxpPmIvy9FDmsQFEXaom+H+XSdcIQclVdFfrcANsFZvFZUmUoSlhDgyt9qQ8yr04m5
 g++lOZrkaAyl/XgKbUUrcxoqRxIx4xy9WDehfLhu5IRlswCAMyG5UVACIWdSgC5amHnLSKlsv
 NigqG6m31LKDC45N3GubHApfrVxBOhyuWJa+x3tGlMw1nPcfeVEQNIekhjHtiLBpdDbm+g1ff
 AztzsAmUn0SSg8/q4rvdVA8Phy4rx7U1vUie5uieksTcuMK66h+W3Kd3j/BQOgcotROwuK/WJ
 AQeOzHO9NqLORjl75Oi29ZAr+QtyaZMLhZdLPLhrghfQko5hTFJ9gdLe551wSrcJBZM2afCFb
 lVzkaRuKFYs+OE1qPZA9nf/GGnLBxNrU4B+Hs16SzkoFIr7a+/ziPNFrHoSI46N6m0n0WjIyQ
 UlzKV0BJmwGQE5wNVJFnYqUjP2cJE7xZKeNPbV7/QV/oCM/Ol9LX+Q1XZtIBmFAKqDbwTGTph
 OrKP3M/1WEblD5PwOtI7KGnboFkwr0V3yWq3+8FkFlesvIL5Beu1MiDBF26y3ql4JtI2gHG3G
 HkJvTztnXJa043SG3evV3QZ7mhrTfR3zDki6BJ06PWHeYWJAbJBOwW4QdOs4P6gcwlY5GFWmM
 /BTr3ihKpvUotzWoFpxdSHJDBiFymYSuKf+E8REA0Up/ttdzQl98XJssq/fSx6oYprLmAeblu
 /2csafjQm1EfkFeCJSHM1EnjmhjTx4PPwm8hn4+vXGXBspPqRLNpDNCOOhI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051622_143367_C1809F5E 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/5] ath79: WNR612v2: improve device
 support
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
Content-Type: multipart/mixed; boundary="===============2266950008602730439=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2266950008602730439==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=mfDa9J4lfdUL8W=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=mfDa9J4lfdUL8W=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

just two annotations below.

> -			uboot: partition@0 {
> +			partition@0 {

You could also just keep it. But that's just a matter of taste.

>  &pcie {
> @@ -116,6 +122,8 @@
>  	ath9k: wifi@0,0 {
>  		compatible =3D "pci168c,002b";
>  		reg =3D <0x0000 0 0 0 0>;
> +		mtd-mac-address =3D <&art 0x0>;
> +		mtd-mac-address-increment =3D <1>;

Calibration data is read here:
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/base-file=
s/etc/hotplug.d/firmware/10-ath9k-eeprom#L184

Does this device get a MAC address from calibration data? If yes, I would p=
refer that one to a calculated address and remove the entries in DTS.
If not, I wonder whether your setup here will persist or being overwritten =
by some "wrong" address during calibration anyway. (Then one would have to =
use ath9k_patch_fw_mac in the linked file.

Best

Adrian

--=-=mfDa9J4lfdUL8W=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1RWI8ACgkQoNyKO7qx
AnDfdQ//XOE2SV5gBMhmC2LyM9Mtb6ToV3kro1DFX6vT1dVZzUzr0R6qJVBHyeHB
WzQ9bcC1ssC0pmtSitaaNm4LGsYNjxerudfJLi0LO90MvJVvgaJ/7muHJoHCpF+D
oIwMMtITJelo+Aakr1YJB9EGOVuDo/69OUHkAe25mI8p/BGqfBk8zJfop5nrA5+P
aJNNMiZER1A6iJuf7T7fKhbp8mRCJSE6U8DsaXtw8DPrbRaI89O9TSaY5Zdk/zYW
avdC1vNBuFmidXEIGwc10sc0SkguSG+Lm4VVzPQm042C9Ke0Rr9YZ2GYNO3mSFTS
OR07uOk5Lh1bp3IWoB8JFScSLT07DlkKuUIsAG0k2q6PO8xoRN1bSX6I/5rbOg1A
KNR85v3wk5n399eEHbVtUilcNCfMlJEXus+x7WgnyZEm/A7dcp00+7arC0cJIkCQ
C2mGsCElyoNhOQq5eWvt4an6jYQ9qpdV3MrJGQ1DnZFG1eOFZbAsJqvBxG5RSvEk
zNVr0H/QdrXgsyA4DygLdk/IBqJuvyU/wIrinuOD8A5WAigI8XIn/UMR172D7cc0
VrvZCrknLTp/uFri/9BHauNyfcLQWLyWKb9yFirhPx23VmwowZn9pZOXY2m08lVj
Zped+oeZfJNrgx3VUBuP/XdrFE8ouNpT+ZBir23iAJO7tz8OJQI=
=+P52
-----END PGP SIGNATURE-----


--=-=mfDa9J4lfdUL8W=-=--



--===============2266950008602730439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2266950008602730439==--


