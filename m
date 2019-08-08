Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A446C8609E
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 13:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JXr2rSrFriGD39yG3DFSJA5EFxsjtcB9tikdwgm/RWk=; b=JaXUytC4agESTb9Wzx6zXLIou
	uWZ5FUle0dqAfJMsXHSVFbDWy6vKcB2VCWM3CLnHJAP3DPIUnrpbJu7p8xetnQtLnraCBSn2/VExb
	vcRfjn9j58v1gZPIfSmrplO7B1KJmZoZfvHYVsKd7rQQssY9QjZpymnb1tUd5ZQ70tseHqiX2gglZ
	20lvxEaRTZdMQqyREB+JI72hVk8XZ0899he3gcQbGtY/SHzS0y33Gazz2jFnqf2Tl2yH7sEi/IfUz
	H+3/m2WHLX9zjsvfnlt7COIEny1OQHhSvkloWOLKgN8q7Iw3ja7kWa9zKmJZxEvkYhvfg9YhByd70
	+64gX8DIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgLT-0000Yb-Ii; Thu, 08 Aug 2019 11:12:35 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgLC-0000VG-8K
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 11:12:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Movrq-1ifWp23Q5u-00qW4f; Thu, 08
 Aug 2019 13:12:10 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tom Psyborg'" <pozega.tomislav@gmail.com>
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
 <20190806131039.51484-2-freifunk@adrianschmutzler.de>
 <CAKR_QVJo-ooRvEi=ODftEsrr0avW3_5TUcMO9eSud5EpOTtfZA@mail.gmail.com>
 <022201d54d3b$90d19080$b274b180$@adrianschmutzler.de>
 <CAKR_QVJbDBvNhon0UgHLMO+SkG5zu5iFsLcY-iD=aaJcFme2Tg@mail.gmail.com>
 <017001d54d67$676f8630$364e9290$@adrianschmutzler.de>
In-Reply-To: <017001d54d67$676f8630$364e9290$@adrianschmutzler.de>
Date: Thu, 8 Aug 2019 13:12:10 +0200
Message-ID: <00e401d54dda$1fc01930$5f404b90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQEB+24oOP0+hQ7HGqEJP9eZ0+GFFAFVG5ecAak0eYsCYVWdfQFjdvzRAV3LKzyoVrWpIA==
Content-Language: de
X-Provags-ID: V03:K1:k4uKY8pp3TNmN8IHMjdYx/JTOEIcPEEjXruYKO5EdEkC5mRo+Fo
 NA16QG3qpuXVwKGfgM191M95DOenV19XDLnUFZ+YOvYKqkMInUGmjvyjVW7LK2JYzpnFMRZ
 PXTzx8EVJDYl3UeKbLSUO+JaFPwwNZHXq00G73HzGX/1ywcY1IZDdNfHRIMglFyFmJaq/+l
 9gnaiYtc5Wd8YQkzz6lcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nw2TI7/g4Cc=:2ynz7BHcaquc8jW3T0D+Vr
 DQeotQOWoiMF8OLFbXY0+gNNgwO81v+KvP/jV+et4zdiGV+j8b8sC0H1jTDCL+nuFlGsWZDl5
 jsJc4AYYgNmeO9C1Kn/4T0Jfs6bNf/NGwn5x93jT4QI3lCILtCDYZwSrF6TI75LAs6yaBpc7B
 qdY8PhJYBmI970JfWufEBPiA0EEV9i8RBTbhjyso0sGkS2Pp+9eB5zNQjUBCtnrTHbMEauNx8
 xMzvuGIlnkZjxaUoqtOFU0jYkHQZ+HnpWEvLfWSDIBx4jMbp2G1IjbgC70J4Bmj7Tbohe5ugu
 QivjUCaU8UYJVd9ZXmFUUs27P6gGKQEnZwatfdzfB4Ug4WNUaK4AvybcC+ljyVByVDW4WwhaA
 na9UGb4t680o4tQg0gp98yJSmmlKE11FdAYWaFlA7TQl2z8LV6xILpvj00Sg2hR75MWFP8Zub
 +wGM8l3Hdj9xlwcogGatrSpinBT5AZeNcCfj2HLQAGAEozTuLmkp7U+AtrUIRsfuAoAac/ynF
 cV23I8c6Q5sOKgpKCoy28euLo77ygSdVD+28YLgoN6E7Uoe+02f11PUDhbQ7Bwc8L6bzyj1Ht
 KyZ8xhoEcryUnV/plQVezWDBBiT/Vzmm0Tw7+Om3EaC+Mb7DL434RkT+W+2RxHufiqZ4lzz9O
 YVAGriP4KBO7Cz5NM4pq4PB/MVeTDsf1+oi29VuteVjHgkYXJqN6TX7zppUtyaSI9gDAEcCUP
 rTuuVrQGkjmD3+mgn7bemUY4EYcFFESVB8Jf0VH27CzifN6gjlV6CIDxnEE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_041218_592805_779B32A7 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common
 TP-Link definitions
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
Content-Type: multipart/mixed; boundary="===============8415363005005394794=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8415363005005394794==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=lIhAUx7qlRoBMW=-="

This is a multipart message in MIME format.

--=-=lIhAUx7qlRoBMW=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > Correct me if I'm wrong but I thought all the data beyond IMAGE_SIZE=20
> > remain intact by OpenWrt on firstboot. Experimenting with Archer C7 v1=
=20
> > recently I was able to flash OpenWrt image (ar71xx) and after reflashin=
g=20
> > tplink fw previous settings were still valid indicating config partitio=
n hasn't=20
> > been overwritten.=20
> > At least TL-MR22U has config partition of 64KB and Archer C7 has 128KB=
=20
> > - I've gone through GPL sources of Archer and it seems between two=20
> > firmware versions this partition was increased from 64 to 128KB, actual=
ly I=20
> > discovered this by hexdiff-ing u-boot versions from each firmware versi=
on=20
> Nevertheless, addressing this with IMAGE_SIZE would still be just a hack.=
=20
> If there is config data to be preserved, one should add a partition for i=
t. Then IMAGE_SIZE would just shrink according to the (then correct) firmwa=
re partition. Now that we have DTS files with individual partition > scheme=
s, this would be even easier than for ar71xx.
> Best=20
> Adrian=20

To put this in a more positive frame:

If you think that there is a config partition on C7v1 or other devices and =
you know where it is, please send a patch adding it as read-only partition =
in DTS.

Best

Adrian

--=-=lIhAUx7qlRoBMW=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1MA4YACgkQoNyKO7qx
AnA+zQ/8CtKlfyDNm0yQJcv8ZfV+JcE/Jf25fojS8FXOM+1djeROGX2VjgLioey3
wHC0gNmfkIhddP0kyAe8RNiuKA6q9sxFxOkSFTOFSr/TZ3FXJVYiRDy6CRsrzv3e
V40ncQSRCKO1Xb5s5MglYthpnrf7+2oNMLuXrw7xOLnqpZs7ifMM3JW6SBtjKc0W
O1Tl/0e5D1Rp+BmM4whbjhaDZcpVPaWkWQ/wzTHJK3Gzp6Kt9MiA3CnN73CDVKnn
DqiHs4tUSMKsrQnL4MkFoCR803tzHR62sQzggy03qKAJ3T629DY3Dgz8P1H2SwaZ
OinSL3jODOuapPDirJlE7sVwrkIPu3ZcuC9WiIq/McKkN8qu6l2yQkkzIa9mQ+J0
cyP2akxZNryIUPimx5YE30jtyLGIpIHHuEsfuO3rA3BU4vEHg8z8ttKEBcbKdlB5
qA5+6WMjVvqBZpDIbcNwfI3cSaxo3XnkKWDZziz0QwazJAlPTfz2CSk+FV0A3o6x
j+jp7ac1pKC+NhwB11nWd8/CLGE4YVQDqRoIqxutgAW7VavQQflNoABfuvPwRvIU
dinJqmDmYNDoFJF0fGjNeUXLQU1M/qN2YRA9S+cyFpNUrmamylMcDIyy77QW4s2C
mJp7/fssHM6T1DthaunGELurTtKCcdntYtNbd9xbsTbv6ar2Mi8=
=2Q2f
-----END PGP SIGNATURE-----


--=-=lIhAUx7qlRoBMW=-=--



--===============8415363005005394794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8415363005005394794==--


