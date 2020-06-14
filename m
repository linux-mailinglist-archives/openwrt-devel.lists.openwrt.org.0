Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7491F8A8D
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 22:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c2fmibk8O85HsGHRvi3U2BoyWiCCiHru6rig2Ok49cg=; b=tQKnP1SkaCp0bc99lPvfZOj1+
	RoUnTZzKfZeT9rpd4bkfTkA7uh0Jo6mRosI+nfbSt3k0wsye76f6Y8z9WxQxqwEMi71xdYkIZfwCz
	AZnlzpbjQPZvLwL2ItDCFHh3zTrsqySkgd4NBN6uFPbvg6a44TbUa/v+ekuhetn8TGyMixTlBlQ52
	R13IZQklZmO0j5vXgLPr3BkGbJTLNxGqXu+TQczT6LuAfWnLt52Tfi8aU1DO/Tzc078kh2ZI3YygF
	n26Wryw5z+d9aDz7Qw0dsDScrj7vM5ETgdxFOOHRbmwcujLDGnAbltCMaOzi6UOt2aN2Cggacf8Oc
	qsp9IAVZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkYzd-00013L-77; Sun, 14 Jun 2020 20:12:37 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkYzW-00012h-Bz
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 20:12:31 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MY6TD-1jQ47q3oaL-00YUut; Sun, 14 Jun 2020 22:12:27 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Pawe=C5=82_Dembicki'?= <paweldembicki@gmail.com>
References: <20200613200852.28760-1-freifunk@adrianschmutzler.de>
 <CAJN1KkzF_nwnw+3kphEuvObkfJ-KAxSExGyxxLZa86B076J7LA@mail.gmail.com>
In-Reply-To: <CAJN1KkzF_nwnw+3kphEuvObkfJ-KAxSExGyxxLZa86B076J7LA@mail.gmail.com>
Date: Sun, 14 Jun 2020 22:12:27 +0200
Message-ID: <003b01d64288$205364d0$60fa2e70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGbmVr9CTWdwHtZrwwvtfc8tYxfpgJoXUJHqTqX4kA=
Content-Language: de
X-Provags-ID: V03:K1:O1tRtQKwhh5ZZPmnzIla1Zfv7ZAnxPPeGE+4Pa6db762qKw3lSa
 4nDiQsaGM9rEzxLmPBvc5DfUH03/87bvR3hWhBPrmGC3FOVlFIZ7bIdbv31s7nyVsCngud6
 zVzmcj64X0NzYCIgAlEvAP5C85pybdKlLmJhtM0weHYum/q9ZunJ3LKnXSgljbAHkipHfO3
 nMHH7TOjCBeLfYdqd9Lhg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B0F807Inboo=:0HOb7uFVd1wImdb6XjCxFq
 jzzKyc+imikw/zfnznxZCJDGaxZ2kIUN3zP09Zl+ZlHf5m6MdY4Tb2xMvgvschAu1J3NFhFhN
 9PvkWY1FrZBIOsTK5hfXkow1kZaeMc3iAHrtCv+jS99qFCB2U2WfHCh+pge1DzpHnYFmW/IWG
 Gvf2lBZxrsiNiLMXJ2csE7JiDMqfVEkX9a39AcOs/WRMp3Y4KB/LjfX0BilZEztN72NuzzhIe
 wIDHy77CzY5i5XWNP60kkmrSkRuRm9UIlbzXqwqQ0jE1lfPnazpkwUpT+ZnkCByufg/T06ioJ
 LbcutHjfzvVFj/RpH9JRLy+S3XPFaGm0wlARXShHBmJrRw+CYDFImK6CaZH88b8lLHXaTj2OY
 PYF3cHKKSk/bjQ9MeuDOo81kS7VM4UKo19DESpnikr2P4ZRwfn3tlqoYtKoCAdUOZizAB/SQz
 tPqHrxjybetGsFRZPJ+QlqYgvde3xwcL6C3BvCzBOMYdfDU7Mu4LpsWQos7OJjCgNQk54Hh0n
 gmTwf/aBQeVxoYhwBLpJXS1Jk9Xc/GcdGPCIaRWP75vPFFW+wpLmPn/Be2ShuTUlC6OGbe4qy
 6S3m/J4aWWJMLymOPAhLwfraghIH862I5bwqWuBUGMp5H/D9diRFde0y5In7B6KnNpLeA7eBy
 jgyB2Q+vKUWCSvxFxGeRizkHKpfAC8p8gqdq2LgBAqhBQoiPPX6/hKxZx94WdCX+BarBS/9NN
 l7nuKH1i0I/hg9iBZ2C5pGe6RSzdKj3CC+KClzBgjkwT5fonFiJtkaH3kfrPKUx4UoOSX6XVb
 Myf9C1A96mnXIoYBtQnxWHhJvnGEhlWc8OPcXW8ZzigtqMEopi8rEVUXcz8r42i3QzIFwE4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_131230_697386_B5D1E716 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC PATCH] kirkwood: use real model names for
 Linksys devices
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7516111180479549977=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7516111180479549977==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=pLHXMvxVdaVBbh=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=pLHXMvxVdaVBbh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > +  SUPPORTED_DEVICES +=3D linksys,audi
>=20
> You didn't add "SUPPORTED_DEVICES" in mvebu. After movement to DSA,
> images have broken config after sysupgrade. Maybe at this moment drop
> this line?

Hmm, adding support for DSA has been already 45 days ago.
So there will be at least a few DSA devices out there that already have ada=
pted the new config (at least for viper, for audi somebody would have to bu=
ild his own image, so there might be much less), but still have the "audi"/=
"viper" name. Those would then be annoyed by the need to force upgrade.

On the other side, the users that may be hindered from destroying their net=
work config by the rename without keeping SUPPORTED_DEVICES might be many m=
ore; and the early adopters might be more ready to deal with the forced upg=
rade (where they could actually keep their config) than the others might be=
 with cleaning up a broken network config.

So, all in all I'm inclined to follow this suggestion, unless somebody has =
a strong point against it.
(I would also drop the BOARD_NAME then, and use DEVICE_DTS instead.)

Thanks for making me aware of this.

Best

Adrian=20

--=-=pLHXMvxVdaVBbh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7mhKgACgkQoNyKO7qx
AnBkXBAAy2WkRM+8OiY1c71qbw1Zguc51RfaKM3seogrRypcrYp1kfbmDerxKHfZ
rABcC6QVyXwrSSw8jCfk4ba99CCM9JMp7XrgHq7wqcoT4Jsjj6tHBuo5nFeNXk+r
ZqHvH1MkQB+rrtRak73IYKg9dJLyhodLejvv789HZVi67mFH4SCm1X/ym2FZXbj7
ofif8EDPSqqAj4TpwLIMykrz0w3Vd/joOYlDKUP5LarGin+5T/Q9wBYPW5CUdV7R
evtfonxy39hHzLHPQA40sLcB7tKjLwVEytx0hYPc8FcSHpmqXFfDVXf2qr6vmU7a
/Jre0AAE5oNqBnVyxoGspVBPEyDnc6KdecsMxuEirwbbkvO8TqaSMwn4O5NJCWD9
kz3b8sFraS+zARytMMscOClEPa8djMv/LTHY1sheRwEoe3hBbGAU7ZBhpCgORti5
Sj/G+OBAgtcca9974sPLu9RIiJNTSVbQlG+EczmvNqtsiQtiWdWEB9Pb0vu+UJcT
zqcB1fZOj/Eb/qIlX+FwaX20KBzGQpph879cphqJjCc5TAGBjAtMAiSE6HkrSVhI
DPecQ9T+m7mZSvH6SeXDnT4qfDG4BXC7SAcxIEi5ufaHiCUQZ7T82i5u8VPvNonV
GPIpevA4C5W7XzHwu8QIDNMlBeBMlptoWZYZek62wOp1n4PufJ0=
=UxRf
-----END PGP SIGNATURE-----


--=-=pLHXMvxVdaVBbh=-=--



--===============7516111180479549977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7516111180479549977==--


