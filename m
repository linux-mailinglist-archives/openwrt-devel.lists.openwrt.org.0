Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B2B1D2D3F
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 12:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wnse48Sbc37DRgFeBpSkqMKLh/YEznedmc71Ola3dis=; b=cHEHz+zZFVsex8pyUDWMJg2xR
	7QliJT5FsO84YIbVwSMuO4bVNhxF99NCH5sC3HxwoQfSDBPSA73CX5iDyKlqbI8MghOFN3sQb4NXQ
	yl2IUyWgCSyx1y2qt4b48WBfApIKuERSHY73nQSIOV/VVBdqy3vsc1X/YVDWdBmx2dqHQBqUkwfLP
	fLJMGVhWIdrQsGGryQshULDKIeUNcP4vc+I2kGpMN2WwYg3qpV3pcCYBxepNzIN3Pw9pX2CMqRqn0
	PZuWBTYh8/bny16v+MSXE0iru8PKOA8DMyuTxRZNwDhdJMYj+URDH3I18sEEF18FybRKN7XF6omAU
	swTUZCILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZBQo-00075A-VN; Thu, 14 May 2020 10:49:38 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZBQg-00074Y-Q8
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 10:49:32 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M1HqM-1jXXXF3lMI-002qtb; Thu, 14 May 2020 12:49:23 +0200
From: <mail@adrianschmutzler.de>
To: <luochongjun@gl-inet.com>,
 "'openwrt-devel'" <openwrt-devel@lists.openwrt.org>
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>,
 <009701d629d6$18b45560$4a1d0020$@adrianschmutzler.de>
 <2020051418120647133255@gl-inet.com>+057423090DB61335
In-Reply-To: <2020051418120647133255@gl-inet.com>+057423090DB61335
Date: Thu, 14 May 2020 12:49:19 +0200
Message-ID: <013301d629dd$54ad8ee0$fe08aca0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQI8KFJQncMPzNJEUnXTrI7FbcNghgKXb3GGAQtwGBOnvk7SkA==
Content-Language: de
X-Provags-ID: V03:K1:BpdsDPzvNFFSNLoWl4GXOmfSBJ3oUg81iEqD1gh/xCxjngCYKv8
 AtBO2c/qPXzNg8DbN00oKiP0MDQqUjdS89f8KoHiQJIUTlpNX5y4wfHFoX+Nmc9lzOZ/E8/
 YEDdHtJ0MKuMkIdGo3TuztlGsn69TVg/hAV/CboQMosaOpl7NNNINQcH3pbnnPUe30FhnmN
 ki3u/aiY1dEzGiiMiIpXg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:87qi340kVeY=:ZXxJj/k2veIZ0OjFP32isY
 PUwW6ylA2E4JgsfZhFC9U4BA8hP8z4XOvpHR3ZRaPugi9W6XzjNWo9mmM1WcT0KlYB57SeyyB
 zY/riGraNdeTHMgLO7iOAVyUA3y358z1gkjGDiHsgCE5Al9gkL1PObvuyI39hjDEDa2gWSHjh
 hugHMAvmoXKkCbxIL/Ic/gy1suGr0NDx4Yh02BBlneOc5zpAr0EhnA13xybxhVvG/YZkRU/Gr
 GA5IzNtoakb/T+uTCKOkMcnG3bW2fqKeMhqGFtpMVddps9CMz5zCckMHvwXO+8njzI+s1Qhgl
 K3+qczeyjj6dJedo4cpje+F84d2kLC9v3zm1FhCcc8qDuX9Rf5kMb5x2CxJEvO+Yc0EvOiiii
 6DdD2D0BEnYeOwBtLi0uyxoOjDyBnKasgY8wmEdncx5zHNNtcRwmGVYFGTd+DdMJNa+1Grw+F
 QcKy5C0t6lHCVT6n4JxLBwK8cWkJg5U5D+KD8eIuWct9xiB4pWn/3s4ho5yWcCqTdYDpxaxpV
 385V61nuyRVmqPSQ7HYf23snyAKaRna6rrvh0n86o+2D1PIrQKVVTXX1o7p+aT3z/f6sNwTUf
 gEJIFODeGYRYS7rtKvB0aJe//xKTced737VM6R7S6jF04qHZWhGR2cnk5yvP9wGV9vfPTcqhC
 AlCDESOVBTzzkhDbyyIcSRYi1HMGLudxIgRdmIvXEF1iD8vz3tFPxlbccxtnnFxsIs4TmRPd1
 foXTd+qcaZTuv83uEQHUYOWmMYOZ5naXnuiQBgTxc9CE0yQcoVPZNk5Y1gLiI39DuvNtvfsei
 Haez65gQ1vmbsPEAgHp34ojrClE/zK5yRilDN4xbND5p8IXAhELKXqQ9b/AN3Yj4WSoA2ow
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_034931_169903_C15B1D03 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Content-Type: multipart/mixed; boundary="===============6214862837520552538=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6214862837520552538==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=341wVX1fAstN0Z=-="

This is a multipart message in MIME format.

--=-=341wVX1fAstN0Z=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > +&wmac {
> > + status =3D "okay";
> > + mtd-cal-data =3D <&art 0x1000>;
> > + mtd-mac-address =3D <&art 0x1002>;
>=20
> mtd-mac-address can be dropped here, as it will be read from this offset =
by mtd-cal-data automatically.
> --->=C2=A0Will the offset of 0x2 be automatically added?

If you read caldata with mtd-cal-data, it will automatically apply a MAC ad=
dress found with offset +2 compared to the start of the caldata.

So, cal-data at 0x1000 will use MAC address from 0x1002
caldata at 0x4000 will use MAC address from 0x4002
etc.

mtd-mac-address for wmac is only needed if that region does _not_ contain a=
 proper/valid address, so you need to overwrite it with a sensible value (e=
.g. for many TP-Link devices, where there is only one valid MAC address in =
uboot partition, and all others need to be calculated with increments).

Further reading (still WIP): https://openwrt.org/docs/guide-developer/mac.a=
ddress#mac_address_pulled_by_driver


> > +  IMAGES +=3D factory.img
>=20
> Typically, GL.inet devices can be installed with sysupgrade, so a factory=
 image is not necessary? (And it's not set up anyway)
> I think this can be dropped.
> --->Many GL users like to use uboot to upgrade their firmware, so I think=
 it is necessary to generate a factory image.

I'm only used to the old SPI-only devices from GL.inet, where you could jus=
t do anything with the sysupgrade image.

However, if you need a separate factory for u-boot now, go for it. But then=
, I'd prefer it to have the .bin extension as well.

And you still need to add a recipe for it ...

Best

Adrian

--=-=341wVX1fAstN0Z=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl69IiwACgkQoNyKO7qx
AnCvKBAApGoUW3U0d6nxWXewDc4fNec/gymH/GIYxRD4fOjdRW5Gsc3I3HMqDXWY
8ykD61BiSDunF4wW5ulxPFH1MKWYLA5j4wcfcD/Zta0tKshUwGv2gGeqbzbcXAii
p0R6S5BIrCG0WPBpEgi4JRYtcqDHYYfS2kIz8qxQjaPU846wp9EK43GPtjS5ycSA
pSIn8ZF2okX1PH4pzdMpAkcK6IvheIRHNK/4onIC1iEHPJwktcEbVutnsYh52E8Y
y9yPNYgSe9imX7tOpGg/4W7oWMqzvrGwmifDs1MJc6hGMZOZB6N9xmn4fw10s8J4
eP2AVZFb9OyWElZWCHQgCMSOH+Td95ycIoFea+SgP9JnwHbnWI1p8090HrBIKUTU
AZqC5ZOzw9by7jM1DkKsdKD9Nd5Xzi/10DqNZ5/QtYRKAk/2ci5HB2JHqDOWMBmP
dWSeCVLHzPJ7Xoo3E7H8Nd8E463O7WM68VM6al2l9pSyjkMuBwnWscEKlLf8oKhh
EbFgyup6rkiIIjwE59YA8VyIDAh3U2Qd7cUA3YrxSR7w6uX7GI/Z69KrtqHAg+7U
qkfuZ8D1AsJUrcLUL8URQ5juwCBFzPVbYTyDFOs6hJPtGn+LhjWfa3i993joZN1i
8XtvgnpgSGRHS0mFtIpvpXYJXH21NS8VD3JXc/z7/qPM3I/qzQM=
=s+Kv
-----END PGP SIGNATURE-----


--=-=341wVX1fAstN0Z=-=--



--===============6214862837520552538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6214862837520552538==--


