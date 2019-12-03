Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B29910FD7A
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 13:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S/dSTlFK+K5sD1yDPbuyqZkrDzo2kTcOpvAsv+gDU4M=; b=UlrivHkfx3EvPKLurboQR6luV
	uHseFWSs7BrxZ6NkEsUWkSyzdf+/AP0KqiXJY0Z0ctnK45NEkuNzpNq20GDQNu/fc7eojm4KHJL+i
	+946N9cPCfOACiqoTDvHKW7H9rPENMHG05jHFCpU7aYgwT6cJLCX+7BUxqD9NthycUXaD1eriN3ei
	EIFw6nOStBUGXHIofXVtgdItPlxNDnvp8ZH8aL6tEgW4BXbMmgtQAuNRirp8tbxVr6sUpwys9hNx/
	3+bfkO9I1rZ8mDvUKqtguBddWnhr1e+RDoXHKZWnQFsCqgV7L+GTmwD6gDRLVvEYozNtcxCMAbCGn
	AdJ75Z6Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic77Z-00039s-2C; Tue, 03 Dec 2019 12:17:37 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic77B-00032K-AQ
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 12:17:15 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mnac9-1htTAj2Rsr-00jVgF; Tue, 03
 Dec 2019 13:17:04 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
 <20191203120930.GC8181@meh.true.cz>
In-Reply-To: <20191203120930.GC8181@meh.true.cz>
Date: Tue, 3 Dec 2019 13:17:04 +0100
Message-ID: <010701d5a9d3$92f3c320$b8db4960$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGTXJoeUjZX+dYvmEdnKnqdj0FkCwKX8CklAfcicwACX0CtAgH8zkFEp+WUJWA=
X-Provags-ID: V03:K1:v7JerhqMZAde0Zb/jt1wn7R/Jg0zZdojo/D7jF6AGSKDXT6AMDV
 XR+NFgWF+UMQeYQ8+ZH8BkCFgh9vc5HVIY4GDCJsld6AW46bmfsa86TjjdnRI1ramq7C4b5
 dlQq4suZxy8TVWAEhulCI5V0Xmmo7u0o8otWc2uC6o24OIsWzHEVSHDwr/25FdVt7mTEov+
 lz6W4LFgkznepsYe/9N8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:APeSA0siN8g=:8Qi7rEpCh71cRgs6gm8kby
 hICGr6LwnrZi/PcVCoa+itur4FslkVcF1q0veObaLe38cfkn7I2b5WbLGuEt7s1GI8zOLxxEc
 hboLe/EZ23qnAyG4tjp0gM8CwY+ozUmQzRIfUyg2nh8nExp9y1B7LXdlKSl536UrbzrzRA/xU
 HL6VcfkRgJ6v4Fzv2Y73/vY2hoSD70E5bZyo92kJGYLgbouiE7rgqz3TURHTEm2ChTurE2LaY
 Y66kcZK7NLqgI7eNwGZV5QfvgOxTGngIezU/Lxo5+ZnGtyRrPN7+pG893Q+p2EHsB88AJ/jzA
 u0n4MkOiLKNkBu6AHPFd3k5DUneinYmtjMoeGTj+0fKcLT2A2iW5smgDCTaojD7/kyaj6tUii
 ILJDKDEsx4I6S6V5HQPBDM3RGWFMYnkQ3GR25NaB51EtaDT/Gj3hDaDQ5yoD26DBdnRj/++Rj
 5H8A/XzeHIWiIqOetfzqDAIPT1PvDVSwgD0SgDZhthcJt7pL5XoCl9IZwnwmlVUVgjsSnQiDW
 rWR47Xfn8hiouie5b2mr6Dac+yhbiZ35bihKxADJc2Vp0eOk2tMt1/g3PGQHsKqMgtnnXbLIn
 XDtbFSp4wIfsnZb/9ACug3C+CPMO6a438kHZB7liibnPmRZzWaI7snqWPGm1Z0zHSrltPaBh3
 RTV5y6MwEZVLKB2Tk4WD/mnOomyvjwvR5MGzCAKRFZc4jJ8gIm0A7n5ghe9qCDhNmlrXwSDON
 fSInxke+uPK6Sx6BF7Sih/53GpxvYF4hR1N5j/ycpnjH2+FYNt4KD8BO9uUvP8nbS66+xVDCN
 McjSxCPvd1H2DhLOzXEOieFKOALLlg3Cu4/i8lGWU9cPvxiiYWlAy5QrCLJTbsG97Eie2T1v7
 bGCNBNJSf0+IfLTGOqxDgyjzcLK9HGNTBUCXu20fA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_041713_690122_588B2799 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: 'Stijn Tintel' <stijn@linux-ipv6.be>, openwrt-devel@lists.openwrt.org,
 pozega.tomislav@gmail.com
Content-Type: multipart/mixed; boundary="===============9191084129858798100=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9191084129858798100==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=tIBpnBlVfkYfVC=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=tIBpnBlVfkYfVC=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Petr =C5=A0tetiar
> Sent: Dienstag, 3. Dezember 2019 13:10
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: 'Stijn Tintel' <stijn@linux-ipv6.be>; openwrt-devel@lists.openwrt.org;
> pozega.tomislav@gmail.com
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti Lite=
Beam
> AC Gen2
>=20
> Hi,
>=20
> > > I used the same as with other ubnt-wa devices. I'm not really up to d=
ate
> > > on this metadata thing. Do we normally not include it in factory imag=
es?
>=20
> Indeed, but you've added following extra line to your device:
>=20
>  IMAGE/factory.bin :=3D $$(IMAGE/sysupgrade.bin) | mkubntimage-split
>=20
> Which means, that you're constructing factory image from sysupgrade image=
, and
> sysupgrade images have this metadata included. I would just drop this lin=
e.
>=20
> > I'm also not sure whether we need the append-metadata, thus I wouldn't
> > deviate from the other ubnt-wa devices.
>=20
> I'm sure, that there is no need for this deviation from other ubnt-wa dev=
ices.

Other ubnt-wa do this, too, they just do not define it in parent node:

https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/image/gen=
eric-ubnt.mk#L127
and below that.

So, the question is whether it would make sense to remove the line for all =
the other ubnt-wa devices, too, then.

Best

Adrian


>=20
> -- ynezz
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=tIBpnBlVfkYfVC=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3mUjoACgkQoNyKO7qx
AnCNnxAAm7nzyGlkgwlA/Wd3zkT0vDbsdYVGi1Nv62pSX3Uu7vnw+A26s30dBFBR
ssJ0qYBOu+GTCRatX0IV5Qq8Eaom3kSLa55Ftjnfb6RBnjij57IWWxpJJ987HCqk
idalGTJSiG2bZVTdbC8FOOp9TysTJ5UBmxhR6hrKti9nPI7xtJgn+2C3BVjzNc+h
Ovlel842qG0nmysWWDqpxBxqcjmqnZdXvUxPml4Duhhp/h2UiwVcTOW1u3x0CEUH
CWQ30UnA01GwnTvqF8T45qdBGAqfkOYMJehA0GBVnHoioikWZ8mq8t1e+KaIwKqr
YiqJ3mpMYVdPQ4saFK0tQ7K4i97a2iT8UaoXMaRlNnOi8nQMrYmVnd/+bMgnjWWU
Ve4LW6ycrBNZ//rtzMGg1rtfa06Ye5QjqT4P78zTJckB4wQZFZiHNHSiUSLM4tYh
PxnN/skz7XNHpK8+9/6ZYO4uqtmuL1qQKqU2RDJFiJ+noKR2YB6RAipLdZDhnkJ9
ILCoa1O1MaWveUXQikfb7HFtM4lYaIN2TluEy3eu//uf8Ygvoq1DvHps3uqxwDk2
j0WoymEmzTMm1RsOQp5TDJKhZZGAjcfn7quZKEtQ835tTu9MtVpCVpqCvg7uwNdn
vfdBRHFBmFB6fv3hV9jcNVDhsQuix1/eYFLcXt27xcqYcsds6qQ=
=i5bd
-----END PGP SIGNATURE-----


--=-=tIBpnBlVfkYfVC=-=--



--===============9191084129858798100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9191084129858798100==--


