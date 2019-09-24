Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B30BCC58
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 18:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ch7SprnAWqdScq2flvbi7bt3ZjSqoSmegF0DAO8+tmE=; b=hMLoBdAMszxha4jbRcL90wIJ3
	/4U+OZgp1IVW+aDLP5aJETIrRXpGPhwAec/wg5bLZ1or6HuWJxuOzkbt50BqxIIX5gfMOMKwr6IVT
	rNAZ+93n7rW5OJDh0+MGn5N5+Bm0UBEri0M1kXbDzEUsIrLatiYWlLoFz1JmXxOka222zoZuVshYx
	YnCk8rr5425SEPm/fTEp8arB1Y7Y5oPqwFVhpfUv+jCmAZwxHwjvbQsv6YFYnd2vT2vogDjeBrwym
	qKRj6RtBHWbklFvGoqls6x8v1KyEsd5JeTQ6HLsS1fgMj2ayuVve7rSNMPE42nUD/k4quZLSoU3gQ
	f81WWcryw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCna0-0006B1-AM; Tue, 24 Sep 2019 16:22:20 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCnZK-0005tZ-J8
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 16:21:41 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MXXZf-1igDUr2CtD-00Z1To; Tue, 24 Sep 2019 18:21:22 +0200
From: <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>
References: <20190924104712.19812-1-kristian.evensen@gmail.com>
 <20190924104712.19812-3-kristian.evensen@gmail.com>
 <00b801d572cb$2755f550$7601dff0$@adrianschmutzler.de>
 <CAKfDRXhp++naehcrx2wXCLr7o20K3vUpLsJB2vk95f_CW8J-1g@mail.gmail.com>
In-Reply-To: <CAKfDRXhp++naehcrx2wXCLr7o20K3vUpLsJB2vk95f_CW8J-1g@mail.gmail.com>
Date: Tue, 24 Sep 2019 18:21:21 +0200
Message-ID: <003e01d572f4$1adc4e90$5094ebb0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQE48aeUHmlhzGInI3E9EeTxZNIyBQFrV36IAZgkTbICFcP2RKhLOToA
X-Provags-ID: V03:K1:ZcefQ8bJ0HBKeIm6rSGWQb/Sxnoufh/rOqkZuHTdE0+KxdFn1o2
 8gd+T4BMokG5uSdlNRBpwuDpPgo1TedkeXvgCYDj94XhIGT6UMM8ogR7agH5ZwEXgl5jRFq
 2w8A23FmtMchjvb0ldJc3f1gF+JWPUazPy9GsswYibSGoNEIpjAhkQlasLe0JW44cWIy7AH
 zm1UIN5uXSRZUxCWd+mFw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ilova85pwj0=:1Jw84ap8gov6hbnShIXAwC
 0u9fFcgkqiNXtz+NJAkj9Ampmd8HYAp3jQvC9uloFdAx84svkrp1y0DupBOcczqdjLCRen/WY
 Rd+vTDnFfrJQUitDDuDq+OOKVUOPw3QMScArXSAseT0AuklaQ6fcL2V5sqljPEirKi0a3GhvL
 xq9Wsrf4Ub3AD02HXHkSBNwmLWdExB2JsntaPw+5Agh2xBqXGVKdZWEjVsZcDrYVPahKxZYl6
 jWI/vLh1lGfXPxLd5IaS82rLjNTjSlH71VaUmwXVqxcRGPnzNOND5kz2F0G/Z7SUcf9jIBtmj
 J4EzaWc0c3iSwstw/mhqarz3OGJ3fyDJ5eDFKqULfRaKmBGLjZ/FTHYqvssEu2L7pbfucw0l/
 YG6lVF8qyCXhheNm+y7Q9qoNGDlt5/R3IbzRw73h8IhayrPWRtffHy2skqBNp4vLkjEMXAdbF
 B0VVFmPK3CNJyzb5gUNWiVdjS/HYcrSBjrOLWsxPqlfgErtNlBumvbL31LbQKAryalNvupjNa
 dAjlXuH9QlUyTp0iWK9yaNubtIHh1wPE6pY0byi+0mig6RhIOO/kOAMCgTfVU8a4+g+BO9kEa
 /4/IFdPmJk5gkjzKBdUvzCKsgkOWKxj7W3ZSoz/R5kevd9WyaqQrbUfUbJJRrKjcNKCV49a7Q
 W6XFHduKyYnYI34ma7uFDSHVE6K1Es1iOPKi4oPw/20SJpbxAcVdsa8AOuFzoiUNsjAH2LUc+
 gDTsyKr9WTPdZaZCBLqLd/we3Hr7JfWdGJ6pgYGSggczR5KvBNbdXoGs0CGCBLtB/6rredwA2
 H6zcOI6cJDs+2JkdiQ2jYDbVuPCUOuFwYsd29Y1NFW0eHFHUZr055yVohRWIPNYH/pt3X/5bf
 us0dTDyvWyyycNi6Ybaq9NHMTl26P/j8bnouStczg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_092139_043233_1521B193 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT
 WE1026-H
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
Cc: 'Alex Maclean' <monkeh@monkeh.net>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 musashino.open@gmail.com, 'Mathias Kresin' <dev@kresin.me>,
 =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="===============2790648045295104553=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2790648045295104553==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=9J4lfdUL8W1F7T=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=9J4lfdUL8W1F7T=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> I prefer consistency, so my preference would be staying with the initial
> naming scheme used for this "family" of devices.

I'm all about consistency. I just scanned the image definitions in ramips:

define Device/zbtlink_zbt-we1226
  DEVICE_VENDOR :=3D ZBTlink
  DEVICE_MODEL :=3D ZBT-WE1226

define Device/zbtlink_we1026-5g-16m
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-WE1026-5G

define Device/zbtlink_zbt-ape522ii
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-APE522II

define Device/zbtlink_zbt-cpe102
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-CPE102

define Device/zbtlink_zbt-wa05
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-WA05

define Device/zbtlink_zbt-we2026
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-WE2026

define Device/zbtlink_zbt-we826-16m
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-WE826
  DEVICE_VARIANT :=3D 16M

define Device/zbtlink_zbt-we826-32m
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-WE826
  DEVICE_VARIANT :=3D 32M

define Device/zbtlink_zbt-we826-e
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-WE826-E

define Device/zbtlink_zbt-wr8305rt
  DEVICE_VENDOR :=3D Zbtlink
  DEVICE_MODEL :=3D ZBT-WR8305RT

define Device/zbtlink_zbt-we1326
  DEVICE_VENDOR :=3D ZBT
  DEVICE_MODEL :=3D ZBT-WE1326

define Device/zbtlink_zbt-we3526
  DEVICE_VENDOR :=3D ZBT
  DEVICE_MODEL :=3D ZBT-WE3526

define Device/zbtlink_zbt-wg2626
  DEVICE_VENDOR :=3D ZBT
  DEVICE_MODEL :=3D ZBT-WG2626

define Device/zbtlink_zbt-wg3526-16m
  DEVICE_VENDOR :=3D ZBT
  DEVICE_MODEL :=3D ZBT-WG3526
  DEVICE_VARIANT :=3D 16M

define Device/zbtlink_zbt-wg3526-32m
  DEVICE_VENDOR :=3D ZBT
  DEVICE_MODEL :=3D ZBT-WG3526
  DEVICE_VARIANT :=3D 32M

The only device deviating from the pattern "zbtlink_zbt-something" is zbtli=
nk_we1026-5g-16m.

So, IMO the correct solution _in terms of consistency_ would be to rename z=
btlink_we1026-5g-16m to zbtlink_zbt-we1026-5g-16m and then adjust your devi=
ce support for the -H to that scheme.

Do you agree? If yes, you could either implement all changes within or befo=
re your patch 1/2. Or I could send a patch for that and you rebase on it.

What do you think?

(I will send a separate patch to unify the device vendor....)

Best

Adrian

--=-=9J4lfdUL8W1F7T=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2KQnoACgkQoNyKO7qx
AnDCEw/9Ga2viTgKBHMeF3aMtWp6c5Tj62FCBEHpNp1y5ju/+qyVML9rFLaz3BhI
MSUqF4j+kmooAEJ1D5rZBQ4IJPAofosrO3EwtlnbsszyFcWIo6EKysd2eUz2yHNY
U62fyy/wLBtNdb0/92b+gvMUDirNECNivhTIcv7QBhMVBZ3BdLAceu8B96emXYCI
el3+C1lR6S+zF3Yqg6qN/26U2FPBlR8Eye7E7zEHb6cAZFmZls5++/VXfxfORen5
hxb6Hk71fWy3Ijmg6tY+A4AzsMi/cUW5vBLN9/roMKTdT0csysEJCs9CTVD8HV+z
RxM+PLiCNgT2vtvJSzfwYR4nRsdpwzPLb+68v/qYJhkl0Yim27qAE1AqiFrm66j6
X4Qs7unfqjdrrnovD4gZ1S0yjnxqIpvkgnw+JZdnv+NfJmIFZiTS6o6k+u1n5V1I
9yXy8q5TstFeTpXScHfFDtNcHTNVdNR5cWQbXAdAYnB5GZXc44hZ8HeJgoSfoayn
8oOTBARt8AskYJA71NPYKrXfqNuErqT4gp/fFS3Nf+CkqRUmKWfgOx3FhAxqitPG
IUTVQWLza3IKoPnf2dsHVCzD4vmO3ICAgD566KATZIZmoDauyhAj4S2HyIU1YZFq
UjIiGG+oSPc/SltoAJMB4HgSjkm1BdTfN3Gd1RCD1BfIoZadcyM=
=z+Vb
-----END PGP SIGNATURE-----


--=-=9J4lfdUL8W1F7T=-=--



--===============2790648045295104553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2790648045295104553==--


