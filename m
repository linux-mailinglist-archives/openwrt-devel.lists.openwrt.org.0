Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59783833F5
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 16:30:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wepet9R89aN0ME/N+rhuLePM3L4TSNqS3f3t0X5Ygqw=; b=fX3Hi5oK8kjkvLzAXP/H/bd8W
	uNDAS3R26BW3tvALoFCXdQ4LHkmUAxJe1ctVwQUsMUplK+6GR2iLnMRXABHFg6MCs0rLRYEHxp5FK
	cLviJHP/34npBaXD1W+4Q3+uN7hwLeHnM1QoeZDa9XFo7hlX3jnPoVRUttMZqDQb16lXiivvI/eKR
	HfsvyO9urDbsYRmpyIVUCezzR5kT9bqEwmP7aevXmXznhmT5pZyv45c0xzHmvGp1InyChG8DK7KNh
	oiGU+0mJ4X5UCFAGyOLIuMvtLXBdaIt1A9gZTsgTxPcHJcoOfxj5G1Kju2IiRZMzLlQABswxd6wfW
	1TGkgXyQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0Tb-0004tD-SU; Tue, 06 Aug 2019 14:30:11 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0TS-00044S-OG
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 14:30:04 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M4s8v-1hwNNo2ZR1-0023Gz; Tue, 06
 Aug 2019 16:29:59 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190806155540.4e27407b@kosmio.komorska>
 <20190806160600.5f04e40e@kosmio.komorska>
In-Reply-To: <20190806160600.5f04e40e@kosmio.komorska>
Date: Tue, 6 Aug 2019 16:29:59 +0200
Message-ID: <013301d54c63$6d47c130$47d74390$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQOL7QHnymnlz/3+5VSVADj4hR324wKUFOdbo2xLVUA=
X-Provags-ID: V03:K1:ue1UWQnEY2X4cZezxVQb1joB/J4EfaVPR5kWQg4vN31tTxYVUpG
 r2L0L0ud/fG3e2M0X3AMXWJBdBH/rpGpJeU2na5Is6xRCUO22/pfC/I8V16wkgB45wLlS38
 gkC7JzS4GR23ehk+Wn3eQFHq96NMCl1QPcqYuZuMv0LC4aKLA1+K4wcooj7Gxb1f2J/E0Gk
 i8ZDImbOe1LqoGY++diVQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zq/MiCMeSco=:IZBiNV2+US+X2sbPXvPOUT
 /H/hDByjLFOl0YrxAdzsXGowbLF0P6615IY+IpSWMZhF7Jb4MuzLVe4lxjIj+dCJwo7V1z6Sa
 93T/vhm1hfagnxixRmIUh8+kIY7gxYm/dMkBF+B8S5VYQo0zFW/RwcidY1DfdSfV9mfIhg9jp
 g0dd4G46JyHXnOOI48ZJAMetrCNYyGHUpHGG6yMYTVYVAPIMHQmxRDcxlfhinLSyVW13YeeOp
 gHc751tq+MpKFkObrDnPRDSTUarnPnTWoPL04WWEfh7wQBcItS7ITkBeELxIw3967LeebYcLE
 lGCgq3e8bjp1qOumbdjgJ2YZm/HPhlIYzCcgu6tH3qAxRJCdA8lG1azFx5/gp02mzsQlkawnj
 LkvHoSYGG7Co0TiPlg7fSSMcAfSl7WVtGSD5YCDcTwUH9O97+uNrXWZXNGCyy7H3V+HxRt9/X
 geKAUe+TE9yc5B2rKOLujJuiDKGvd8URYIxAi2Z5ZIRIuGNE1J4i316UcI1Mj/XPZb8wcBW2Z
 vSiBYj2cwoPhhL/eOxgbU41NwB4uQMp+ttZL+UAsDIqgCX9PLKAvMeFfAXe0HGrFDiOvWUUiK
 3FxvBlN7bMsMKIu3x+vyzLL2i1nxv6+Q8rCEqoo+hRp2A7O4+24SyaY9fpDM+WAGjQ9x4iNvB
 uXhW8qvS8R1B2InNmA1DbMLEmeH6N58450A8pTDzaTv4861/dMR/KtkZMOuZ9hI9+6X5VJ4Zv
 rnt0o4kD7VRnv+KETIUY813eEyihojRbda/k9UwtVEJTExONLFop5n3pAms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_073003_092348_DD8A6702 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/5] ath79: add support for Netgear
 WNR1000 v2
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
Content-Type: multipart/mixed; boundary="===============2227815330131742262=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2227815330131742262==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=acp3dr1pF6sTYN=-="

This is a multipart message in MIME format.

--=-=acp3dr1pF6sTYN=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Michal Cieslakiewicz
> Sent: Dienstag, 6. August 2019 16:06
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH v2 4/5] ath79: add support for Netgear WN=
R1000 v2
>=20
> This patch adds ath79 support for Netgear WNR1000v2.
> Router was previously supported by ar71xx target only.
> Note: this is a 4_32 device with limited upgrade capabilities.
>=20

...

> diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts b/targe=
t/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
> new file mode 100644
> index 0000000000..a9eabb5a88
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
> @@ -0,0 +1,207 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar7240.dtsi"
> +
> +/ {
> +	model =3D "Netgear WNR1000 v2";
> +	compatible =3D "netgear,wnr1000-v2", "qca,ar7240";

compatible before model ...

In general, it looks to me like you can exploit wnr612-v2.dtsi here.
LEDs will require some care, but almost everything else is shared.
In that context, one might think whether there is a better name for the sha=
red DTSI then ...

For the image Makefile, the same comments as in previous patch are relevant.

Best

Adrian

--=-=acp3dr1pF6sTYN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1JjuYACgkQoNyKO7qx
AnCPhxAAz+XTvRsldGKKYnmbSwi8o3baDn5PpiagLw6GXrKYPvfSKJlAlS8Wcx2U
Bfsuiz6pd2DRKY01gDzSqDjQ8MyDyjKCqINqdmB+v26AWYnaU3a3uiuPndKXtD9I
2PvNL1lyQqgjO9lUmmte+kK6sFVxRb97/jz1axLc52sCOAhNrLpuLaPPb7vlSHqy
wppTNIC/75P+cibYl8vCS+cCWopXR2nzH6idKmrs1y//nth3nmAwcipu9UtepQ1i
ROXmW8kazmKtFsQ72YaR18Ps031RGkc68JKigye0XhZ9Yj5YAPS/X8r+npRky5zC
ovmca5F1GAySWsMN5k5oyT6++8Iac5gOVyYw1nenHiCpJ+kG+kE/r/kp1Oc/ko/1
L0e1T7jmKnXNQewQDw58JNMH4z0iRHzuonWyyqm5SojATAM6YCNrKD24R4wmqfyZ
/S0srQ1N62hCdIEtkwed+1LaM5+hO5RNu0lr7M0MBUCKNviargHVaE+QRZMhpDB3
B2pyhMApofJBV1n7LhJ3V/XIhzCz7E/b7Ke+qWeBG5X0pe1zUwdVJp8c8UZSs4W5
5iHIU3iIHMm+J74EHIbjn1oDbuHPzMboLKc8EdbfJHa18DQilA/nqEwDsI8mLQdv
pvexCquuMhw9EWGmpB4DUQrFn+9I+8lZEIO+CmLu+ueRPHJHhJQ=
=jwLU
-----END PGP SIGNATURE-----


--=-=acp3dr1pF6sTYN=-=--



--===============2227815330131742262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2227815330131742262==--


