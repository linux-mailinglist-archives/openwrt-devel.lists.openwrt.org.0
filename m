Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE11CC1CA5
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Sep 2019 10:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VeeLQvIWYltMBXmMdnACpO1hEYHed5DF44n9De3IQck=; b=agCDimpt31LwatuZwx/uGpWsF
	3HPHCVlv9sncVMmszfNEAHgqHXqN41OI4hcPwQiKzMKj5FHDwGISexWaBWFw/y4lO8F5Oem7vtfE8
	RbYGVeomO3IeV3pHPGPMHs3C/CMbuj4g5LxKaal1Gg8WnEM2/pu8x7MFouxiXHbLFCr1fyhLYcLtD
	TUw+GGhF7p3q5/nHHVNVM/Siqdk8gAs5Pi5fDWffpcYKiSCtp3cLWM/RlVlgfvU+w/hGpgCLZeNFF
	/BKHJTIUhuZjya4rHRaiUAu8VhPtAIM+EdqwgLLQKMKDLNRc89kmO2nO02tItSYnjjsiULhsfOyep
	+tnd/1u3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqqi-0003eC-33; Mon, 30 Sep 2019 08:16:04 +0000
Received: from outpost1.zedat.fu-berlin.de ([130.133.4.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqq7-0003Au-62
 for openwrt-devel@lists.openwrt.org; Mon, 30 Sep 2019 08:15:29 +0000
Received: from inpost2.zedat.fu-berlin.de ([130.133.4.69])
 by outpost.zedat.fu-berlin.de (Exim 4.85)
 with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (envelope-from <borgers@mi.fu-berlin.de>)
 id <1iEqpx-001HAh-OS>; Mon, 30 Sep 2019 10:15:17 +0200
Received: from freifunk-gw.boh1-r1.syseleven.net ([109.68.230.69]
 helo=mi.fu-berlin.de) by inpost2.zedat.fu-berlin.de (Exim 4.85)
 with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (envelope-from <borgers@mi.fu-berlin.de>)
 id <1iEqpw-001nA9-BX>; Mon, 30 Sep 2019 10:15:17 +0200
Received: by mi.fu-berlin.de (sSMTP sendmail emulation);
 Mon, 30 Sep 2019 10:15:12 +0200
Date: Mon, 30 Sep 2019 10:15:12 +0200
From: Philipp Borgers <borgers@mi.fu-berlin.de>
To: Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Message-ID: <20190930081512.GC72052@mi.fu-berlin.de>
References: <20190929215515.GB1681@lud.localdomain>
MIME-Version: 1.0
In-Reply-To: <20190929215515.GB1681@lud.localdomain>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Originating-IP: 109.68.230.69
X-ZEDAT-Hint: A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011527_413701_1B224AE6 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [130.133.4.66 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [Battlemesh] ImageBuilder frontend projects,
 or how to generate custom OpenWrt images
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7827992379507667366=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7827992379507667366==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m51xatjYGsM+13rf"
Content-Disposition: inline


--m51xatjYGsM+13rf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

you should take look at the Freifunk Berlin firmware and the Gluon project:

https://github.com/freifunk-berlin/firmware

https://gluon.readthedocs.io/en/v2019.1.x/

The Freifunk Berlin firmware uses uci-defaults scripts quite a lot for sett=
ing
default configuration or changing configuration on upgrades:

https://github.com/freifunk-berlin/firmware-packages/tree/master/defaults

Both projects are under active development and used by a lot of Freifunk
communities in Germany.

Best Philipp

On Sun, Sep 29, 2019 at 11:55:15PM +0200, Baptiste Jonglez wrote:
> Hi,
>=20
> In my community network we are changing the way we generate OpenWrt
> firmware images, and I took this opportunity to look at the existing
> methods based on the OpenWrt ImageBuilder and/or SDK.
>=20
> In the end, I found way more projects than I thought would exist!
>=20
> I documented everything I found here: https://openwrt.org/docs/guide-deve=
loper/imagebuilder_frontends
>=20
> Please add any project that I may have missed, and feel free to fix or ad=
d more
> details if you don't like the description of your project.
>=20
> As a side-note, does anybody use uci-defaults scripts? https://openwrt.or=
g/docs/guide-developer/uci-defaults
> It seems like the best way to implement customization without having to
> update file templates with each OpenWrt release, but during my quick
> overview tour I haven't noticed any project using this method.
>=20
> Thanks,
> Baptiste



> _______________________________________________
> Battlemesh mailing list
> Battlemesh@ml.ninux.org
> https://ml.ninux.org/mailman/listinfo/battlemesh


--m51xatjYGsM+13rf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJGbeeQnohIptwWDbVSokz+8AxvEFAl2RuZAACgkQVSokz+8A
xvGBdg/+Iczc1ZOGQRfLlsEw7oXR4TIaUBnb3FGc+6gq38H/8OwvsOsJCWk0fgYb
TmTOl34fdwXZqvjX+m4RD8TeUY1Z2D9HpTOkx73WybFbotcL/bIBLxbBbnF8rbR7
mjaHOMblOqKVMCxGDkQJjah/YjPA729vu7TObzppd78ww/q/EgWxJpfND+CNVPyM
N2s0i85J64uaQAPWD4+DT1dDXnYw2CIuOSgBPyqou6ExJKu0idbD47NxWIo7B0Up
DjpZcNXv+owFDwmRVdHBL2x5ah9Me8tM4Hlr6Z4q3LMMFTA0yzLJICpdiSbDsfH5
6XK9wpFt+dHH4zzsX1rwCTrbBaFnvJIVjuz6CE+HvNZfcuxC0PPSvRXPaZef99Km
+ou7ToEMs9kTO9wU599JKqHkzFZa0+C6du3FRew4CeacjXF3fxalixwPyjEmvFtG
qdsk5f/T0dwDelOrnmpr5ERTC+Fx184RFukZ88+lit19ZL0G+kIhvQX3klltFE4P
i38EF/T7iCVGJT7378M6mMUaMT3gh6GZ/bAMSHoi4FzlwTYqrsl2C5VVumFnNx03
xe29++rj2aNSWMNRi2LYgczvktWyiUSZUAKV9zun6u4DL2CLp0hpywnoXfa2rcuo
hCjfnurOOtOkwOEiMpoABE3oABubuun2kEX4jmzTB/oYV9pANug=
=Ypza
-----END PGP SIGNATURE-----

--m51xatjYGsM+13rf--


--===============7827992379507667366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7827992379507667366==--

