Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09768A434
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 19:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7e9Va2tjogeNIjJapqk/SBq7KvFba/a5CRdHbimQtRM=; b=tUuWeL+eHtZPk1VPYLjDzmfUB
	TlW9tQC7LbH0US+SSeXZD/w98RYrEG/55gxjt2ByltjZYtHDlz+kf70+Frbtr5WMhY45KFb0rcefV
	dipWZ1ILypjhKbH34bhQ4c+a45XktPvy/3YOd/AN4/JPLR6VYl2zofEu/QBa+X9Z8YmxrOQ9QusUg
	9JNiwnrZ9kyY8CWetMaVIz4cobYpIQhstNsWtEcneOQTW9xR6DgdpvhQ8j572Rrb1s4qASzz5eKaA
	DdsmTHNbY3dmlcRyaSEyHIoY3NBIWQW83hTIiIJmeBgxr2dG+tZQ5S1HgwvET5YpyLXQbGqlry2c5
	6z5lq02Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxE43-0002uL-9H; Mon, 12 Aug 2019 17:24:59 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE3v-0002u4-TS
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 17:24:53 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGz5f-1i1t1X0191-00E4e5; Mon, 12 Aug 2019 19:24:48 +0200
From: <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224252.3641e63f@kosmio.komorska>
 <000001d55107$bf37e530$3da7af90$@adrianschmutzler.de>
 <20190812162422.139de0d2@kosmio.komorska>
In-Reply-To: <20190812162422.139de0d2@kosmio.komorska>
Date: Mon, 12 Aug 2019 19:24:47 +0200
Message-ID: <00d401d55132$d755d980$86018c80$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQECHRWgK9NZjHBUix22RzISCgT6OAI1gNNsAdKXVjYCLwO6/qhschhg
X-Provags-ID: V03:K1:d6yecqqcXtVQ2k9Y3/eohrPkS+ei4yRX/RT8U5h+o7PUqJIZpL9
 n2a4+FKpIfWwRVpERNW3OQ51moTBU/7gSyxkj6Dn7WqXxDvb1owtEDgQ+X8jiUOl2ZFGmxO
 snS/ZjlU2UpHPW7YuuRAB9MzxhU2tygEtUUIenDclvXvLZJeUCVo7DjDngmyLq75fbyeC4y
 lZR49eSxHtNnYsMIIwGMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rfnJxOFcB6s=:4SaJ3QVnajegIyn5ShUAB8
 R8UUAHOFqywDNQNAXUihsPsXilu9XzY0ciOFC5XqBLFFLlA/zA5Br2TmA9SrIkuQIyNg5uDDH
 G8pHLjd3D2jEcJWN3veS4sJ9iHKRuD3MjXgOCr/rdU16PkQXyah5/jKc5GLHRPbpqDfCVoYZZ
 snC856S02Bg6p+cuFg1aQwgR84QxKU3FNz2F0CMA6UcLbezYMwUX1dXaTftnZYCXzvogskiru
 lvo3IeKbm7GknEga19dC7Og3iQlfzYuUDpdEaZ5cZyzxgxVQlPbmvgZepnZwNa/6i/jQIE4NU
 tjGuff6AOYbJZQNz//WDYqjDM8UMbMKKzb+D0bDA0BxrG4xteetdJYlBmgk1ze2V/zWyyYAqr
 ERljy6Z3uT6rAA3uZaaxjUOu87byYjGH9pj0cFMuPjaQF0BbfvxFwcJgvcr5M41EgDXlBhutx
 CeGno68q/m0+H122cfSRedqLRI83sOJLF3fp0Qzuvo63hV4f9o5ccMCia6qw6SZCW2eG6DmoK
 nu/3dnqcfiiclZHbiY64ZLa6vwXape9FauMZHwjx+30aO1kiQ7ZOH8AqbGJVOd5+Aejk0bY+k
 yK9CMgocRVFku44F6Mwrry0EnaNgmNiQvUbyA2YFsMBAIYlkfE3hetSc2uvSBXYUAX+2pgFkg
 8kXxqsEqXnQ0LIpEjpLeT+jP/lOifspXUCyASOfViyT2XhR6In8p4IfaoaDpmDAO0e9A6jJym
 xbZiJ1/NAlVT3l2qm3IvOVHR6zHV1iRDVWc89pLAanBNAK8CJ5LlSk3+sYI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_102452_245614_D6FBE7E4 
X-CRM114-Status: UNSURE (   4.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5761408169756651365=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5761408169756651365==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=M0VUfUkZ+1Pyi0=-="

This is a multipart message in MIME format.

--=-=M0VUfUkZ+1Pyi0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Hello Adrian,=20
> This 'uboot' label was used only for MAC address extraction from=20
> u-boot partition (kinda strange, I couldn't find a clue why it was=20
> expected there), so I decided to remove it.=20

Just out of curiosity:

Did you check what's in the relevant uboot locations?

So, are the addresses there, too (there are known cases of having the same =
addresses multiple times), or are they missing, so you are proposing a "fix=
" here?

Best

Adrian=20

--=-=M0VUfUkZ+1Pyi0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1RoNsACgkQoNyKO7qx
AnBAxA/+OAE435H+hClJc7xqdOWfVCz0VlNE9M5TBkWrvDK6rUftr4V1KM7Kxbg7
+ahwbQamNz+Zn5ncNFvNzJMRp+uIyr+X5NTuOW/9j+ML8lrvp/rjU8bDMaPDCEiJ
gWoLb72WfbV+aM9U0aNaSRLip91UrGv7UIdCEuPubSYFliE2QouNPIddEq2MxERg
ooXspA8vnC1dwAh1mTSWz2lJZ2cE93OPnm3Gb5m84p38INs3jiXlXWZjtFGEQydo
Hb09HB1zVpKGv/YLbnMD3l3/6gJqiWKlwAo2vlQpiJfWQGlt47LwbTwCwWzg25xP
Me/QaLc9e4yRwRC8L92AffXZ2z4H5THLr3KjgRp/y2dcUkg52E5tjU2VuzewBw45
Nu6hJp0jxhA4TeuTPmkkV6x4NB3NBUdrf3IcAJQRIhADWqX+OP58V7U/iHe4WnmN
b9oPuA2XytMcd57IW+bXmKUaBDbDS0d+BEmop+PiuLkkaVEzfy7QE/ZuhJi0jue0
7gFYnrjRFyf899DVVToI8PPpjbhwVNI4jbzHg+1dUdFQ/3ETPViz7Z+ycyhqsxux
ZDlFWwCAhiPF6cWZ5uix/rhqHlJxyz8TpQfcKFFjxRIXJ2MP/E3jUKsBK2XqjWQ5
B8vYkRIV5w8HLUIVHOH+vdVw3JYig1e0vpKgVhc48xwXi4NLFiU=
=gA3J
-----END PGP SIGNATURE-----


--=-=M0VUfUkZ+1Pyi0=-=--



--===============5761408169756651365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5761408169756651365==--


