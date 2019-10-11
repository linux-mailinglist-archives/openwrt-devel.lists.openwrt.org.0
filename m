Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006E6D400F
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 14:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ptK5IeqCsOcEu4uITQq8MqJWPcBErgzx77R2jRLTAQ0=; b=Dj5FAM6XykhDw38eAOtrRklTk
	VsKlTIKFUsty8cYgZmRKG3WS2hRDFaJB9tgzQ6XjzTJClnengJeql/dGbah/AuSfeyIArBD0Tj8Vp
	3iSYYqEqzPG/EGm6J7CtMppjxeqKd3b9ANue3ZqP/b78dEROLxRLUJ1nifJmbTz4keKrK4Xt5tU5j
	DLpinPsC5c44o5LrQmdxlOold7TBZx57+EbUIh1hArdoUfMHLReUV5KVDOZUmfTPEJyNmw7ea3fpS
	kcgny2plHQbY2MsT85j1OYBK5O9yoUokZJ9UulPYYE0wiXW/h2iLZBrVgdQ5pwJWZ9c1foC63s3Zp
	CGjMLBP/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuUo-0001pD-1S; Fri, 11 Oct 2019 12:58:14 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuUf-0001oZ-J9
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 12:58:07 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N3sye-1hsXxD1HZg-00znYD; Fri, 11
 Oct 2019 14:58:03 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>
References: <20191011111446.77a86e7b@kosmio.komorska>
 <20191011111709.344d3667@kosmio.komorska>
 <001e01d5801d$73318610$59949230$@adrianschmutzler.de>
 <20191011145141.7a5848e6@kosmio.komorska>
In-Reply-To: <20191011145141.7a5848e6@kosmio.komorska>
Date: Fri, 11 Oct 2019 14:58:03 +0200
Message-ID: <004e01d58033$8492d380$8db87a80$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHFckNLZYiPIwXRKnWMdxFuyzZjxwFhmhhWAoiReLYBvySKgqdINrKw
X-Provags-ID: V03:K1:dBmnpjVIcjedhs9huCNPcc6DoHbV5/cFCnf/hRh9TrQ6XU6sEf6
 hWoGZ5Lo9IbpFbSBAD26/O3TfCldthQqeopw1N8SJCkPm9U9CGQfZlaFCQU44o9lXzUb8Te
 qLAGBukwOmdVxmD9Qnt5l7lq1IG/n+wsHJyoZw1/dOV6aZB4rFyQa8T0QCJnwYMlZFKd7dF
 9Xvj4Q/+CrRoAhT7pMAsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:caJvDn2UxsQ=:jSQPRqfN2voHPJdKcFe8UI
 AQzI7+OBogzJwMaraGCNAdiYJviSNShk7xewoFmu2fIvLLLEUzWJ7/wmkqUxQdyEAvPb3WiTG
 oQlNOfOj5AlwBXF792jTsi7ieJ/C+2tfnwdUX2FOYbpJQneLgYANlhrhJrjEbvR5o0b36Mxp7
 0A8R+rGbMPdhr0Z7pcp+2bPm0bYiyILm93cYWAUqwRctqGl7/9lS/r+eZniWRLKj0EyfMXEKr
 jjts92RuHYlMSoqEvYbKorVz/qJa7uKRl8/RhFA+RViDVFF9epCgTyNl209U4snIX7gl/IZ1T
 cePKzwzb5oTRAC4GhgLHqcJnrLWCZaAL+SlECjp65mpGNq6WPebX/DSELcwVSCtsWB69LV2RR
 eE3RXB9S1Mp6J5jVseOJ9mymL7TTKkdVgadGFMDjEYT4rjh4ec8SzDMFTEyuaWtNsMeD4BssG
 4yNXiviuhM5nEhPllWSO47M93ZTh+Jis8UWj11K52bXkKIcb8n40xsZXblfrC0fhLS4qExudR
 z/yvS6/8usIrYDkFQW8cliPiUh3agwl++mqK5UIpJZ7vF8+gJUmAewF6DaahFklujUaoHekON
 dgtfoq/U+R/N5kKJTsGVQDXny2lS6SDBXoJYMqoocfPW2crU8vpzlBZvAYr5Mc3XOBURCAGbS
 XAwxKAlnoiLUQyefzcIIwFO7rrk+As6NE7m4Q9lwcFEeIhWWEFEyah6H4Rz7MAtiu9ALSCTFb
 iaXfOET8u7VT8kqX9mHdbaF1C0EL7n4Q7xQWJ49fyFYTeOeQHg8tBXzzZu9gTfmmnEAOY81qM
 bq8f/e9R7wicr+NeEwbaVPph0oov5KOOJrxODc0Iorp9IeOfMirsKRJZBCDpUHJlXvuCt1img
 jZcYKiJauwEZocNVGQ5TYXtnqvyPMB5CZBCPgNH7I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055805_921444_1582D7C0 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear
 WNDR4300
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
Content-Type: multipart/mixed; boundary="===============8664484637410197295=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8664484637410197295==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=80FTYoOL1FgZ9X=-="

This is a multipart message in MIME format.

--=-=80FTYoOL1FgZ9X=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > Have you checked that there are no usable addresses in 0x1002 and
> > 0x5006?
> >
> Yes, there are wireless addresses inside calibration data at offsets you
> provided, and they are both equal to LAN MAC.

Okay, so for &wmac that would mean it should correctly read the address fro=
m calibration data even if you do not specify it.
Thus, you should be able to remove the mtd-mac-address for wmac and still h=
ave the correct MAC address.

For 0x5006 this is more interesting, as it implies that the vendor puts a "=
wrong" MAC address into the calibration data. However, since you have verif=
ied it, it seems appropriate to overwrite the address in calibration with m=
td-mac-address in this case.

Note that if you remove the mtd-mac-address for wmac, you will need to chan=
ge the label-mac-device alias to &eth0 then.

Best

Adrian

>=20
> Best regards
> Michal
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=80FTYoOL1FgZ9X=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2gfFoACgkQoNyKO7qx
AnDOzg/+MSZJhywgpCXHzq96l2/LFCP+iigHbrsc90mtgrtEGX/2fZMqRYYnq2KV
p7pN0b9LX2vn0kkYn5y0dlt/n64knNpl9IAPgnnfQabJy9L7qI9dYyiuYl6srpI4
OH9PLRuSBnCvZW7QX8bbLSR+T8lt2MnrhDCnwIxnAmWujhq2h5rFzH9K20EiowBQ
KrUFSEBm8ybPz8bfdggHj7hR88XWNu3S7iNb4aUsAIVOozU55vAIZe9o0m0fWeID
o6bJ0QPQkskeWZHN6Oj/RI3r+ZviRzGn87++/9rMm6w52BZjJD/zkGGqEtJXeVfD
REDhDhw+Rx6j/HqpiH1dYXeth5XzswlNrRzfVWzH8Q+kOwtb0ntSMMpLuECO7J2b
B1OW5P7ZVpgkyTnoYknoelhdE11IodvZHNWmcR4LODB8431ysY17xtjmVLCKVcwu
6l9BRtG+6ZgOffK7ja0a8taeWhGR4FMB6zCjBgX7Xgr2pRCr9OXqqPNXFJAPXIXr
ibMJdkdSyLAju1Zmbq7HMSBVXfgepGxUC9wyD3fcS2Ii0Coh+xpHBD76wMoY+grS
VBcJbRyIIoimNz2Ur9SwNyqNiFn6Er2yWH4i9VDBjg9VlapUJaR+8+nRIcMFYTSL
PlWzeb236b5rdiEog1/Z67XQ8WWypC5iVYhM9AiEdcIuc6NV5vU=
=ANdL
-----END PGP SIGNATURE-----


--=-=80FTYoOL1FgZ9X=-=--



--===============8664484637410197295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8664484637410197295==--


