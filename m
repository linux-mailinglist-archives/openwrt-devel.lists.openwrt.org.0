Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC731B16C7
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 22:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZntzEhWNAiGDzKhirfgrTzUM/BxKubU2d7cafWuvr7I=; b=Dw9FPs33qpQqZgoAJ0kIS+iHX
	oz7xLt9NX9vQyrffjVU3Z1Nfwh31XjxeC+30qRx/4g6COiXZ3TSeNeyStZuVEw3kCO292fWFJcbH/
	NL0UTTRJqu4ajCNgRomQCvARSObJk1G30mZtjfJ15KS/6npeO4CcIYcu0UhuR1B5oSCw7QpXUtR2C
	OKEQeWhVGCArqG8LWQWzCom7XtkzvHT7jmqiDpmPUjWnzMphaR6uMdTmvukoOkjWr5bOt8b8aAniT
	W17mJqoLjEk6hsqL654veSZZ6095QW+fuh7zX8iIIIzEaU+ydw1tXnPpxqOnEF2higJF751+gUx83
	hVDucbXXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcu0-0005c4-6t; Mon, 20 Apr 2020 20:20:24 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQctp-0005RW-FS
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 20:20:15 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N3KY0-1jHVxh3GiI-010Pco for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr
 2020 22:20:11 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <02ee01d61750$59b49e00$0d1dda00$@adrianschmutzler.de>
In-Reply-To: <02ee01d61750$59b49e00$0d1dda00$@adrianschmutzler.de>
Date: Mon, 20 Apr 2020 22:20:11 +0200
Message-ID: <031101d61751$1866abe0$493403a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQMF6tgVWovA74XA6d4x+YzRNZjz76Yiy+Xg
Content-Language: de
X-Provags-ID: V03:K1:SAk6iB9uDuTYMR2d3RNt7eYt70anoeppSsi6vVmNStyaFEluWVV
 0EPGtKcEROv7iG1g/iC9nGuklkvC7+9wImcP+D42jq5EvUGj2z0ee7NW80cYWEkZPiLH73V
 a9NoYrmtNNu1bF0J5F6c3SYgFo5fiwowtGvGKw6mKy5R4FHrFzyffnHztfMj4ubD9pSM6TS
 4w9xBWfA+2hRyVuRnrUxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5x2USZ6QNeo=:W1xXADF6KbNJOuuAAD7O9i
 R+Nw0/1DFuJe34Xk2I7mCzEj3M0MR/oZM41g6LtQ9+sLeRQSyYTqZney/XIsJsRmaRg2ghRcf
 734pEIDY/mrOgprOpE4BmS8CQrsxyJOUOSeWzLZkPitcy3Wz54SKHYVnGvQ+XqNqp5fcuNsZ4
 By6svF5zGRWHCj64vTL7LXzi/ls/NHQsC7oF+k/Q5JJauCfgoGrO4e7dZoQuiI/ZN22uHFWGI
 r07n6qZ2+K3YT9fwabRIUmB9q75c4VNWauEINPFZjCZQHRVPqVR+7/LGdx+RjTGEn0SAPeRYu
 CiTZfyyFaxnnIdNxiO+GPWnVZIljBmoOXLAiSEM/FNyPX7vI9KHEgU44BMHtEg3AsSoP+kI6K
 tyquoyKtWOeAeU1M8Doa6O7wg7XIWx9mzxblrinO+yXiuMTKVaJdH1ELRhxej/4abSFZw3Vng
 S6voRUGDRa11B0gLSFSpF6Ae2GCaLxwQrAmUKs6byy9e5sm0Sn1RKD7mmtU3ZwOChz4Q1coZj
 sdCVqxMnA/9+3Za3gZP7XEEIV3zGKmmN1SnzLsatHO2O4Xr+tLINfYCOSv+iethuI6OEHaCig
 yVbjEgE+vXQQRkAh7PuSqSVSnGHqzTKi8FD/MxPw4G5OIWhBfKeUwdmFlX94CSXaZFjXgVBOq
 AqqMbLB0yNF0r3MEV02dn+RBrmxktd8MlMuA4TQOgOrcwxX2NmGCIuulG67l8K6f1tFDH79Dy
 40bVT9dnLEZZFAAuaRjH4JWmP68BwwV7fdVZcOmXIMp/1hh05QzBcCp5UrKAPCngGS8YT0e0m
 qre0b7pS0lDKsz/nRg9xkLf9UTgmoYPRpFgXB33NOAR6WwsoIFYG0g29WlBPJaOgr9rQeq9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_132013_831647_8AF1BA22 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] octeon: Remove support for kernel 4.14 and 4.19
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
Content-Type: multipart/mixed; boundary="===============0189334092153260846=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0189334092153260846==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=NTdb+pcXbjDqNS=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=NTdb+pcXbjDqNS=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After having proven that I'm stupid, just ignore the subject, and care abou=
t the rest:

I want to remove 4.14 and 4.19 for KIRKWOOD.

Sorry. Everything except the subject should be fine ...

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of mail@adrianschmutzler.de
> Sent: Montag, 20. April 2020 22:15
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] octeon: Remove support for kernel 4.14 and 4.19
>=20
> Hi all,
>=20
> since I cannot send a proper patch ATM, and it would be a trivial patch
> anyway, use this as a surrogate:
>=20
> octeon: Remove support for kernel 4.14 and 4.19
>=20
> kirkwood is moving to DSA on 5.4 [1], which will make kernel 4.14 and 4.19
> support broken on the affected devices.
> Support on kernel 5.4 seems to be running fine for 1.5 months on multiple
> devices now, while support for 4.19 has never left testing state.
>=20
> So, just drop kernel 4.14 and 4.19 to reduce the maintenance burden for t=
his
> target.
>=20
> [1] https://github.com/openwrt/openwrt/pull/2944
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

--=-=NTdb+pcXbjDqNS=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6eA/sACgkQoNyKO7qx
AnDGvw/6A/11F9Xmd2+AYuTGXTjKcelRE9UrgV6u6xsB68zdO02cO9+SUQVIAzA7
iTDryyQPfwkU3zlAx08y+iyKWMwRAIvMlZ32oNk4sDIe+bX5hXLe+CcxHEfQkUX2
MSgbrqfpnDaC+W3n9wmrEIsFoZkpTkkuH/qkCDpiUJiq3Rb8yPeMGBwAk0JLQgmZ
vqGhuGrE4sHBVMdMuM8UF3D5lnBtBKEePQCZChmlbS4wA/a5LNsTOPVXdomjCJRB
hubZjZ091gq+lnwUE8E/U6GtOt80+FI/TdkzChYLC+YnE+ToCM/8ybq/m/wU7/+x
1pM/9OEe+15H3KzWjsJQGRksXVXjQiSkSy2cNNRR7Le8prmhp3SbnPyP0rneVYzs
y9pPHB/yPOT/f6zTlrhB6EjMKGk8jO2r1RzfLvmLqM2/nQ1hl7DeEs878NQfhOI2
Mayoufb73hmyLSFQtgHnszr4SNens0+Wo1/j4R5bLq75aP7nMqv9ft6a7YUHFl12
YfFbHJoq8pskw3/KRQC7eYP5b/Jj3mvAiA9+jLv/zjnqZibZ4bVeje4L8jHQJNs5
jz0qU5DXii7KY2g49BwI0s0PfsxIARwzVpgFaaxc1PfreJc2J6LW3L9l2NZR4QjQ
Prh6383rFK6pB/rAmKTOASQ4cEK4qAs8DnJ879vEHq+lKzV45io=
=mEZU
-----END PGP SIGNATURE-----


--=-=NTdb+pcXbjDqNS=-=--



--===============0189334092153260846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0189334092153260846==--


