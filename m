Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A486AD7BCD
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 18:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CkstA/nKh6cN9LijewnN4sqjMUJMVMZ4asWBpzRpq6o=; b=flCDeaiB9j2EH8X2//KHSxo1t
	16i5p832R/gTinVTIcei7jcF1f4C0Bk6CGj3aXHVy+Ndtdso8ogI+JIxuNjFamJw5iujpbiDJ54zU
	aJP9Wv532HHwEtalp8TZGGPHvplqX24boMLnkZcIvygGeR2+giNRNzSZ8N5wdNVKY2HRmNNVwU/iR
	sKG35jycmFojgISVhmNZ7oOLua+B2EPD1yot3zNj4ek9USIaOCcnI3sfmsWIiWs0tiH5KUjntiSQO
	O6dr8tQgoZ76vscUA22Q+HNvYPWOygC36qGw7/zHOBbDNBaTRlHv5ssQoYbjpQoI223qlWjr6WgRP
	WzzYB/bug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPoN-0001xR-7s; Tue, 15 Oct 2019 16:36:39 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPoG-0001we-CL
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 16:36:34 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M2wCi-1iLWGk0ZdE-003M8q; Tue, 15
 Oct 2019 18:36:26 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20191013221353.186756-1-mail@david-bauer.net>
 <006001d5827a$cdafa900$690efb00$@adrianschmutzler.de>
In-Reply-To: <006001d5827a$cdafa900$690efb00$@adrianschmutzler.de>
Date: Tue, 15 Oct 2019 18:36:25 +0200
Message-ID: <00f001d58376$b0210030$10630090$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIGbuacfD4/lhghODFtKO2MeGYSxQLUSRkKpuNtFEA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:XLB7DMdUj2Fi/vWDm87409XyC6tW7sbUvB6aCKL7B7bG7e2PQ7s
 je4ZjVVJrgWDdrmF/CEinaATvMSla7BplRLbE2OOLeUjY7Okocvhxf2/hgrGD5ZOUVz+2cE
 XBsi0DBAH6YgQTb2niooap+G2Vna+uxELsDp3DWTePLUyBpAGQzUhVi1X8l6CB+hrrMlC/o
 +N9wHXkYBV4OqaLkAgCwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9m7pAfhVEyk=:RZk5GkjFA/4EMJLCGWMVjK
 6dIEq5JmS84Up6U3uOV32YQb8rKlEthrsAqDFhE07XcViAOUugCLIjh2XaCNOVTUu7OuIxOPK
 hoHlgj/STCYWhnekV5bYA4mbuhIv1FaTUgbidB8ngKdx6xFQ7Q9On0FnfAj3Ffv1FMb7Gu8mt
 RAo2YsNeOfn8JuqTq2jqYn/fY+9tIpSaNA+K32J2zx5ZAkdc3ZgFhAAkwib/xE7Tv3XxZ/qfz
 UmqntDA93k9eR7ourRic+lzHoDeacXpk+pfTRTNhEDXfiapZe9FCtZNKVLCAyvafwpiUfNtHV
 K+3S0msCJIQQ5jg8wLiiRnaLCNoKW2W6589cawkonMqmBv1ZZkQg9+XkOHHNhGCfMalw+8zAE
 i3qugFVM2+3NJf5FaBRCVzueMM+O0S3OVjtDfHy+kJns4dbI7nvSoEJXWvDQNFl1d6j5fyNNV
 nj4161Z99odPv5Bwvqm+9J5jFenBwm6izcxFguNOET0roG9NHk35CUUMGaP4vvirQj3zf5Tb/
 fZMvpIxkQMAWQgGQ+tcmvLgAPfjY18IVQFqcDASfQlAREO3LquLTg+yNAwSzzrI356Ge4VbXU
 qTIRCEQPN0iQQ/nLLoVA/jmAcX8poun4Ran2AIv6oCkorVcV331G957ugfVbqPq0A8PlnHiFI
 h6CFI/c88Rm6DDL8sOzRhapEOWo2oR8qh6vPSWrZ/2OVW6JjibKFlTggFtvecuhfgQE4UQ7ia
 ruXNQRWLpvha4cbcCXjhx1jE+7X8zJvHi4VlS5GJ4sEU8lkTBu0a3HdhJljJRBpQmcgW0jmST
 nZK5fgYuMcjWUq6LtMPgh8EtYFHLvNXJCO8Gc+zDWT23qPBVAcGe+kpM3FSb4L8jFBoOaZj3C
 pVeCi3aIDI8jZ5CW1jdHawc1tQDYuVMBwORB7oKkk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_093632_714805_0FD9014B 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mpc85xx: correct TP-LINK TL-WDR4900 MAC
 addresses
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
Content-Type: multipart/mixed; boundary="===============4986797426322281203=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4986797426322281203==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=hDZVYYrsuL5Oc8=-="

This is a multipart message in MIME format.

--=-=hDZVYYrsuL5Oc8=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Adrian Schmutzler
> Sent: Montag, 14. Oktober 2019 12:33
> To: 'David Bauer' <mail@david-bauer.net>; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] mpc85xx: correct TP-LINK TL-WDR4900 =
MAC addresses
>=20
> Hi,
>=20
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On=
 Behalf Of David Bauer
> > Sent: Montag, 14. Oktober 2019 00:14
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCH] mpc85xx: correct TP-LINK TL-WDR4900 MA=
C addresses
> >
> > This commit fixes TP-Link TL-WDR4900 v1 MAC address assignment.
> > Previously, the MAC addrss was read for the ethernet from the "config"
> > partition. However, the content of this partition is dependent on the
> > firmware which was previously installed on the device.
> >
> > Switch the MAC address source to the U-Boot partition, where the MAC
> > address is always present at a fixed partition. The partition was
> > previously already used for the WiFi MAC-addresses.
> >
> > Signed-off-by: David Bauer <mail@david-bauer.net>
>=20

This should be backported, at least for 19.07.

Best

Adrian

--=-=hDZVYYrsuL5Oc8=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2l9YYACgkQoNyKO7qx
AnAk5g//c3zSKRdT1f8QmMoUmFZuNdNG51TcJY0wATiHWyCXnby/gPlH5Cq8x1WI
i1nA+dsk8q1F73ncRZcpfj4ZH90wqyhu8oycbgZjScJ5e+rez1/zBRSgHKcaM2GN
eVWs8QUQdjDEiKnKWZxQarbCm3cm9pLwBWj0OwNfzQwrigIJVNaTCOVygCV4DfKA
VGF2YuCqXww4W/rkEmQiey5V6PxGnF4IMZpIlkxe504WQmhjABq0YKB/565vw3LV
MJyA4IJf0vbBeATmJ/gZID4/OPgeOOYvZi7jrDawbPdv4jYrHJ3wofIiuTEbFOlV
RbigI4uUEe00QQjqgrwHa5DCJV7QovlQPA+b2rQFsUMfTeES/R84ZMXe2n6Jgug9
1OMHTqe2ij5kPLyw/XzxVnbdbL7PVGAGNH8vHwlKwVq0frB1DLrQohy0mXGK0aMg
B4ohDnCXnjuBJb2UCI55724KkNy7ytwPFudtpj/7DEgCOzOlN44LQ5WMdt5my26w
OdsACxo34IHk6JXfmAjIvTrdbCKg1aKhpbs5AQoPM5vN2Q62cdxbhdze4TMmDLqB
kz8UMK+B3d/GCJ9WAzuqE/gy4R63F6/UPzq5UWXvJidV/ZoUp74v6Fkts4Pgc3Qb
ZLH6wuqb8xL3ob56waQmMwU80uSRjG6L+KM2+1iWsZbZh81/c8c=
=QvU6
-----END PGP SIGNATURE-----


--=-=hDZVYYrsuL5Oc8=-=--



--===============4986797426322281203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4986797426322281203==--


