Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BF311E5C9
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 15:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yfTt8fBKKyumgzTYKVht/xMk6HVr1xZKXrfbaB6DYtk=; b=INx9ofiKg0khUkghrOQYNRbu+
	XsLrvlDVmS+W7575heltOcQ06lrWG2vbXYGVhjeEnYF4AYS32rb7zXZp42mobIV8UNNoQVM2ACdSR
	GVfJO0PUFQNZCNSr/DMYMSwXPXMA/gp0POD5yBqbN2YxYOpVAnfX/hRK6bmVI5NkkY77B6keJ5UYl
	Lp58L2M07GHcR0mYwGuWX6xmf+DRVmGbPemedttV4y4dNAZNy9aUU4Tg+tcPCVSGNhZImdlNbdmKx
	B8GkYOEi6neTYYYmHnI5C5iy2GjZOBA18npAhTj/s5b6VKevI5xYqx0cugPGVdqaGoWJBEl8FPlUn
	Mv1aaMuBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifm9A-00051B-KC; Fri, 13 Dec 2019 14:42:24 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifm94-00050M-Bi
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 14:42:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M7auJ-1ieQhf0jxV-0086XQ; Fri, 13
 Dec 2019 15:42:14 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'John Crispin'" <john@phrozen.org>,
	<openwrt-devel@lists.openwrt.org>
References: <20191213111146.1492-1-freifunk@adrianschmutzler.de>
 <89b69073-cddb-5b08-d555-08efd97dd9f0@phrozen.org>
In-Reply-To: <89b69073-cddb-5b08-d555-08efd97dd9f0@phrozen.org>
Date: Fri, 13 Dec 2019 15:42:09 +0100
Message-ID: <015401d5b1c3$8269d290$873d77b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQChcodubREwFOH5EcLx/YwYcHcRCgGrWyzJqhNG1JA=
Content-Language: de
X-Provags-ID: V03:K1:W2dOp/Bm52ieQWON7tQGp+OudoLLWHI2q3KAYPo3NZ3zpUXtDuN
 rjJ4SixkJfApF2Db/VHAsmJANvKBP5Q5zXJm5h794vpf63r6bLyaJW+m+xdXjr/AM+QdNfN
 SdNemGCYFsNg2IsVCa1Ccf2QoDAqYyGg0F7wLX/IqQlZNiI7znso9sHbZVn0LEtglU5ymuT
 SE892QF6YWo8hzFAkzrxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KCSRbX1kPoo=:wJCUnSNcZmc+sPVhPSsWqT
 6VqP1pUUCT0Y6IAXKy7Bq3tDIy1NEadHHUZI9Z5FCRKKBYhDC1UbCU7cccuXrb+k5muxxJ74O
 ziW2uvgTEu0GjsWUTzj6D36QqkQF8QhfasGf9E0IIpLFymx7vyxj5wHsEmxDWwRrPm4EMASrM
 XclyTbxnkO4pAFVNVxhE0YEzLgtcJ4jZs6qTMhaC6KhiTt4Gqx/ncfVWsplkhliMv4ePGMMN/
 TUKum6d3BQUkegWFfsCLN3NLZuRAnV84pLaFpgkr1rCy3GZVKPnpipJyrp+W/MIOqQ0FQJ3DN
 EXZL10OOzKqe5qmrD0GMUwlc+dXSIWF5k8FtetToijBH6jiSLMy82A+0l1Lo4yGKJ3bIiet4m
 I0DsfXQl0JqSobebid+xGToScxFPCitMmzLqwFxLQzsxtkiusTluQpHdBq1E+YXoZUcU+uFiu
 x+TDWE727+UTaPlpziEDIW1R6jOSj4GTSYZ5f/IMR4tJZ60rQmABInNE/laWTBeQ55XOqxAId
 ev2M0kehkoqOG3IlZrsjmUoU5xyXp33znNstbtMZmj7JOV1XZ94pr4W1T9hjKFp5KQjJQgHTB
 IzrgagO8h/sbgRMCXzPLv6Vmre9vI4H62+1IcU2PnRmNIwnLIk/nHAwXh6Or1crob7847Qlbh
 rrwl+a1AjyPNLMDZZIujkS/KIDvVpjWS54wo8s9h5nL/qqQ0ifHNvUsFJqldBAVve9DNUA1wR
 P5dvGFl4YdFEp9+IOJQtFWlNz7Oq0hMaiFMN9e8WPxT7ZzB1+WMWkw0GG8+bPSRSf6/2sZL9H
 PZHUZA0PxWPDgRTj7sTya1xvHYFYZuUGSZYsn9sTETyEnm5u+f3oXO7QGxZqvLXQ9hX4f1wXE
 0c5jcsDuXpQ1IwkTXe0X687B8/5GkoZd5Sd1C+6f0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_064218_696597_66447C79 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFT PATCH v2] mediatek: split base-files into
 subtargets
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
Content-Type: multipart/mixed; boundary="===============8504667815131630195=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8504667815131630195==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=P9EugopMiQk/Y/=-="

This is a multipart message in MIME format.

--=-=P9EugopMiQk/Y/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi John,

> -----Original Message-----
> From: John Crispin [mailto:john@phrozen.org]
> Sent: Freitag, 13. Dezember 2019 14:07
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [RFT PATCH v2] mediatek: split base-files in=
to
> subtargets
>=20
> On 13/12/2019 12:11, Adrian Schmutzler wrote:
> > This splits some base-files across subtargets, as done previously
> > on ath79 and ramips and also introduced for mt7629 subtarget here
> > already.
> >
> > While at it, apply the following fixes:
> > - Remove lots of trailing whitespaces
> > - Remove wildcard on unielec,u7623-02-emmc-512m
> > - Remove inconsistent quotation marks in cases
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Acked-by: John Crispin <john@phrozen.org>
> I'll be doing some cleanups to the target next week and will look at the
> plaform_check issue

Sounds to me like it will be easiest if you push this patch together with t=
he others then?

Best

Adrian

--=-=P9EugopMiQk/Y/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3zoz4ACgkQoNyKO7qx
AnDqOQ/9EYs9HXBKGnKwJvZSsoaqxNzW8lucX8BJE0ngv74OD+L0aoNu3ehq6pCF
Nixl7PLVeaCLmeI0LhQo2l1wg8iv/5d8S+IJaP8EDZOZaK32s/KhCFlGMYOngWS9
rtuZXIBnX2rrM3FZfjaLcFi5aiLwnoOAIhU30c6uduZ3ZHJ0PrMtuIHa5dWSIZtc
VCGgncdhzMvkiAKSoNFn90WHrWm/VGuzJZl4hxTU6qnWmNJOjs/uJsdVx7BdwWYq
oZfOmHGpDrWdXw5V3S1glwKcMH5UOPXb7nSE1nNtl10ByeEUwFYGq99C9YSkqyG7
7TQvVPTgkHaWRu54Fy1kynCCqQHHyy8M8jAWsH3DRl2qyYZRugCUCUW2NgYZCZMd
y/XyCgD5R4Xo1DC8TLmSXShgh3ymmU1leXrVZMyt8X9o5tZkUfOIwZjLZGl9YGke
DoDkthGxk0oIJ8vzgd/627DqM55b4m3KR216Lt9bmARhMxjQ6+XtWWowp1fjzSK2
LmC/l04xc/UoT7liF2H0oemIAJwrFRY/jJVYKcmkQmNj7NjyqDAWQSgZHHKARfZY
gpj/Ft9NYWHD/E+d30T0mbcJ8V7RKq821zTJWTmqPHsdtLSHxZV+egKDT0b7v9G2
gl4v/a+EZOTQfZQEUZOTB5Di6opR8f2fBQvlEYI8cRDkEjwnDSk=
=6833
-----END PGP SIGNATURE-----


--=-=P9EugopMiQk/Y/=-=--



--===============8504667815131630195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8504667815131630195==--


