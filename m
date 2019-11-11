Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE843F738D
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 13:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w8EG57BudQWU6fHwhPnhpSoADqR5lwPibVIE3lTHiTY=; b=dzDk0+Uylo+qQc/NAkfkFfGJ8
	v7mBTf8cy/2oBpOQRX3pgiOQ2JhIxd21RScr4cskyWvpf51+j6Ft2n/0rL5KZFjoEmo8QDNVaYo3Z
	/3buaCKqRP4p2J/Ih18JXO6eHlYrH/cza0JAsomTH3sm9lXtT0t/ZfxSSaNT6MslipT791NVN9c79
	B4uQrqlGh3PK55VGQo8OrsjIwMX5uIykuj1vXHZAJcY2nypsgSavoUNMOqXbYleY/s8GM9xQvCLPK
	AOXYs3vm2rmNgNkyjhbwLcK6ybIhWMxgNacHB5AKow/g2Q8xRi0vhyBPX+Xh6SzhyDD4flt2toGCt
	4C5MoGbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8Ps-0007JY-VI; Mon, 11 Nov 2019 12:03:32 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8Pk-0007IU-CE
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 12:03:26 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MiJdI-1i18SG3OcQ-00fOAo; Mon, 11
 Nov 2019 13:03:18 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Karl Palsson'" <karlp@tweak.net.au>
References: <010d01d59880$f2d30850$d87918f0$@adrianschmutzler.de>
 <GVwQMCk7GxfGpCwB6ivL6JfwHDJy8udQsNMFKIBS2391@mailpile>
In-Reply-To: <GVwQMCk7GxfGpCwB6ivL6JfwHDJy8udQsNMFKIBS2391@mailpile>
Date: Mon, 11 Nov 2019 13:03:17 +0100
Message-ID: <017901d59888$01a80360$04f80a20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGGMAKWIETr3+TQSVN2NGhscf0usAK0OoTPqA8MKHA=
X-Provags-ID: V03:K1:h78BWvqcGJ0gQsAxPGRWiZrSNH8zgRrJAXAQ8gskNdfADqmVTqw
 VsLoW7Mtq8u54H5aMNLz3+23/eU3BmG0eMIr6pZvHqeYBkJjBOgqtPzKz7PoyJPiTBqxGp6
 UZVTOaf1/mwHN7+I0qwJAPP8gmTPgFoT5D1tIfNbWf8oS9jM0lMD9TIsx6ydu03VRNDqTWx
 xGQmgZ/POErzBbA0FzgLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ejSsowPMRkw=:rQFlzMKhKAJL1HDT7TbXGQ
 QtMptjVES8uFAqFL6Ono6RA0k0uvAl+ABnfmd+xXrMcenqBxeHmc2zeyp36SF5wkQyGiagAYX
 VdFGzDTkufcaWS4TQci344+P3XfK5eUfFi3FTdvIXQvc8EX1X02y9S45lg8arWzj2faNuXhbR
 c3YryGW8GX7giY3yBK2rAnTTjfd8xjx9qfyvpT03Z8m0UM7YGct9HeZeXPcXgnxgGDCW13pJV
 h3C2T29PuC5zeDgnpwT1UBqrOyOmLf5quqXgXDhAuqgKIvSYxDtq1vL/vK1KBoBGSnEHfyHx1
 O3Uyb3fJMGWl68wtT7SnerN/OiR/rNeXFAIcIbP0lJciqfVUQ48z7AgBhXKVEIoCvqg+oWz7C
 4HwOpD8OTaIT4Z2Nb28K0QBOx8Zh73EwywzWHrPhNKctGEyNVc7RqS3QCNO6P5I4aWmXKe/GI
 +pUYMSv18ZxoTOLbnxJtPjaScmT6AzvmaJtY3lfJ7dnr2IUJX/ESam4qNMXAgYwwlRfgTBSd5
 ZlL+fPi+etUC4gqJ8Xa93GVcfmgIB2ir58KFFIo7JUb+GnvyaCQh3Rw/G90aBYTOQoOYTnie1
 lCLaPT+D598XAGGEvr+m5CvIWKZW9mkUk7+r03n4iOsHJjFfNkuRd4LG1eNyiVF1A5Npem5Vh
 xB+y/uwb5l59QeDCj6WFVb2voQUbFofewFT+SbuQs6aI3kzQyWeXxfRsBmmrniynlrVaVBsoB
 2ErgxarDE7jN1wnAxmkECkEYpJej3osv1HhrARPVAbB20hNdpaY2pgjy+z6/Y9seQkHVzmZCl
 5eT/W5QCYCAe5aaZFUwyACSqwfy9ZJ+GlShkuiQmVYHZalnHZc9ibx/adQMHiRwSDSZLezk06
 OHCR0USexbPJsELpQbVcIHz/ItoirgMLnmFStXDlc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_040324_707494_187BA610 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: 'Paul Fertser' <fercerpav@gmail.com>,
 'openwrt-devel' <openwrt-devel@lists.openwrt.org>, 'tmo26' <tmo26@gmx.de>
Content-Type: multipart/mixed; boundary="===============1627087020066260070=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1627087020066260070==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=AEGDxnwKQu1vDv=-="

This is a multipart message in MIME format.

--=-=AEGDxnwKQu1vDv=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > > +=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 label =3D "dir-615-e4:green:power";=20
> >=20
> > Sorry for causing confusion here. I have had a look into ar71xx=20
> > mach files and they consistent use "d-link" as vendor for the=20
> > led labels. Thus, I think it makes more sense to revert that to=20
> > the previous version "d-link:green:power".=20
> Yes, and that used to be wrong :)=20
> Originally upstream said it was meant to be board name here,=20
> "d-link" was always wrong. (this was an interpretation debate on=20
> "uniqueness" see=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/Documentation/devicetree/bindings/leds/common.txt?id=3D116b8e164116be537f5=
0cdcce84d80be0facd0cf)

Well, just from the commit message and documentation only the "LED class de=
vice" has to be uniquely identified. That doesn't state in which set it has=
 to be unique. One could also interpret this in a way that only the LEDs in=
 a certain DTS (and thus for the device at hand) have to be unique, so you =
cannot label two of them "usb".

> Of course, nowadays, they actually say that label itself is=20
> deprecated, so if we're moving forwards, let's just use "color"=20
> and "function" attributes instead directly? (though the new=20
> attributes are only available since 2019-07-xx timeframes)

I'd like that, and I never understood why the device part was actually intr=
oduced there. However, I'm too new as a committer to decide on that.

> (Or=20
> just drop them, labels are always only needed if didn't name the=20
> node clearly enough, or wanted characters you weren't allowed in=20
> the node name)=20

Those labels are used for luci AFAIK, and I'm not really familiar with the =
mechanics of luci, so I cannot comment on this one.

Best

Adrian=20

--=-=AEGDxnwKQu1vDv=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3JTgUACgkQoNyKO7qx
AnA1cw/7BU4ibQlHG44hKdMZIzp1/LbmGIkMpRWTZe1lfvt9CQ5HI6hq+TtNdF6w
7h2FfxrnAd7WqI3azbEkzVSBXuZ5ZiE3bkYw0oz66DA30qfusfjYJCX2XANCJdXS
bvMV18pKAYFKwaccAjdK/cYUjReXMzgp5xPwow62bF/9wmgEQ1M8M3hSTD801TAy
Miu95nsxqoON60DL31kFvvn88kHHRasYvBweH7tVbbrhhEYA7Hnl4AQhQycbdtvC
AvUzJcTEk3jcQUkD8zxOJOZqugZGpGjx8/gypXSXuuIVoIA1YhgZTGxAMqfhlbmJ
Sns0e92T1O9gTUC0qOAfOSoKz9RSBWwGDL5QoJg++9JrfmyKHINLxfdSvPsbwrgz
DA1wTFD/Jz0RAMJn1DLz8XB4+3QkFm2sJzLolQ0dsjkHO8NtIly8KzK1A2WqUHb6
UY9x+VZ77X3ALEHVj8PGBr8her8GsTegj/TXH8DD+tPdtuJtCHziuAjFoh2M81/i
7RuRDWOTZ/Do0wN3jXIlg3Bdy5nL9ah4I/2oHRb+dCmBw56RN1WCTgo8NdCywVdt
WfWfvVXLQcWsd5Pef77TgQu0Ntg4HZlmo7rVgqAwYD55DBSIkOZ0ydVT6ZSjZr4y
c1PFY4g+ekYQ2gFJfJ7CnlLQSiy1mrlRJ93/64DeS9qhGTAN3Qs=
=yrh1
-----END PGP SIGNATURE-----


--=-=AEGDxnwKQu1vDv=-=--



--===============1627087020066260070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1627087020066260070==--


