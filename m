Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7781A23C1
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 16:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0G0oGcUVaVa2L5BAfs5+qxVnGo2bYGjPAbZVHsA1c1I=; b=LcCxYTzAA8Fpo5M0TM4mzREOW
	6pBTYwTKLpCCWrTZVNvTzJphka9M0B6Q029q/2JUMGWzQgVi9eDWinOSmtkgN2T6X8V+ncWoQIkMr
	7eCYoGq7m0eWe6tnh9A8vty3XJ+sLFEiCpd6RBs6b7precud5jqlrVka0AFy+eZ6xI8Dr8KRe1APW
	fPC4EQOF3WNGgx5HSH/ErywyMT4/ZQ5m16F5MTnQbV2XYrI9TfMy02ea4B0Rv8C/beb+xow3E+IRK
	DDl3JdZn+lVAMNe++FeT7g/njG1w5JYCUsYiZphe3Gv2iwIxUMn23OObrUVuyDhqEgqmUbZjjESdA
	9XeJOz4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBLU-0003Gl-Ll; Wed, 08 Apr 2020 14:06:24 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBLO-0003GE-H2
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 14:06:20 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MRCFw-1jgzyd0qMm-00NC17; Wed, 08 Apr 2020 16:06:15 +0200
From: <mail@adrianschmutzler.de>
To: "'Tobias Schramm'" <t.schramm@manjaro.org>
References: <20200408104716.3644779-1-t.schramm@manjaro.org>
 <20200408104716.3644779-2-t.schramm@manjaro.org>
 <012401d60d9a$6c95f560$45c1e020$@adrianschmutzler.de>
 <15a5edb1-6b68-d480-2e64-bb82037f4417@manjaro.org>
In-Reply-To: <15a5edb1-6b68-d480-2e64-bb82037f4417@manjaro.org>
Date: Wed, 8 Apr 2020 16:06:14 +0200
Message-ID: <016501d60dae$dde28990$99a79cb0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQHkf13riykCMy8CQEUiyF1LlGSzzQJO+Ci7ARSJeRMAX8GVPqg0RLww
X-Provags-ID: V03:K1:yhi6ulMtqxMzCtryId1SK6Byth7bjn7UjSPRqZDkRf8/f/UMI5e
 WmC1b9HPF9YR8BIbKVoGtHz+hlxJVabIpuinxJcmTOogDx7r3mSJNrscrwrXX+ME+xX0kna
 uaSsbE/2sB9tvate9TdXMKgT4+ybDFbTy8nrcmpcc93mZVjG1fqIvfzOIc7VuCtYmMSUxiu
 xj0tHaw0YRWs20+b1BhRg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8tLdwqSd9Y8=:GcfKRA/8wqSzwlpft0xDyo
 bsXCDrNqhPFN9m7jyulBg7GQr8ORfYyOKm+jJbe7YnCEOfM2ZNQeZGjLgk/di8HjR+fUi85yk
 NaWxeM8DCHWhHarRXZdaOdRruwgN4tvin82nDKJ1rjNtVrOV/MMpEEofqUlL1UAUHzahoC4GN
 OBjUc63TGAcwYRcat6GC/8MqgqFIdt0/Na5yqRVXcQ6ZHiqP0bsrrxpwydKmL75FFNoSQDTLY
 x5aT+8T4JDUPA71c4aXcfMFeFYjhdGwyBl0Xw46LsqLVjkyX5JZP4C93N84Ih+GC9Jm1xAAu0
 O98naU+CU05qvDeBG7ypwbut/mtYgtl14GPBwxVc2VgJhvc6lSTD7gC4Fn6j3IFVuo51iXKbI
 A+NNMeD4BegQV56IaQx1ZtHIFMiB+jZa8wNpM5/ZZBN6zZcRS6Vqrgn0MXF9Adybp4TWrMuaA
 Q5tehzb7gJDWMQc9KTH9d41MPIHDXQ1QIUeMoWNYRW1K3IdwR1/xRr6ea05IwhqCAOZ0LZiPw
 ZyTJViqBL1ClL63SVTItQqg0da/6qleSm6Aw5554aK79+Ye84NHtcOEcvueRFFo/CNV4fgYO9
 od9JJ9oVKccR00Av3gh4I3/zyl1hniIUV8mzaZ72bncLRvTMWJEdULJjiyHQe9v+0zNoY2F+B
 YtBN85ZoVfLAk0pm23Cf/F3xPojyxwOz1xGcufBhYunkKhUPh7ZaKCegg0EPNgvF4ZKRiFs8G
 aVQxd0THbUXI/jigPJ87a6tO976C7bfPSovDdlIsid+zdUMmTZeW734zwfb4+lDul2OOTIYUK
 qCyBdpXEl0W/heOcEccR3yfUIlZ1xLAvusLzsuc2phEBMMm2OHtKT7cB6PcScHIeqWwwEav
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_070618_859525_826A8EE0 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ramips: mt7621: add LAN port mac
 address to rbm11g dts
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
Cc: 'Thibaut' <hacks@slashdirt.org>, openwrt-devel@lists.openwrt.org,
 'Chuanhong Guo' <gch981213@gmail.com>
Content-Type: multipart/mixed; boundary="===============2072610694253287931=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2072610694253287931==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=WSITc13+3Oy7yG=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=WSITc13+3Oy7yG=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tobias Schramm
> Sent: Mittwoch, 8. April 2020 15:37
> To: mail@adrianschmutzler.de
> Cc: 'Thibaut' <hacks@slashdirt.org>; openwrt-devel@lists.openwrt.org;
> 'Chuanhong Guo' <gch981213@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ramips: mt7621: add LAN port
> mac address to rbm11g dts
>=20
> Hi Adrian,
>=20
> >>  		port@0 {
> >>  			status =3D "okay";
> >>  			label =3D "lan";
> >> +			mtd-mac-address =3D <&hard_config 0x0010>;
> >> +			mtd-mac-address-increment =3D <2>;
> >
> > That doesn't make sense to me.
> >
> > gmac0 is configured to 0x10 +1, why would you overwrite that value for a
> single port?
> Thanks for the clarification. Didn't look at the device hierarchy beforeh=
and.

So you don't intend to change that anymore and I can mark the patch as reje=
cted?

> >
> > And which is the correct value for the port of this device (based on ve=
ndor
> FW?).
> >
> > Note that setting another MAC address for the first port of m33g is bec=
ause
> this is the WAN port, all LAN port will get the address from gmac0 there =
as
> well.
> >
> > Best
> >
> > Adrian
>=20
> Tobias
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=WSITc13+3Oy7yG=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6N2lAACgkQoNyKO7qx
AnDRuA//bC5CBaQtwpE5iJr23eYbKC3Gr1yaHSrP612RNIF8gWBidjABVVj2B9bI
6SVQrx8RZlkhNRIg9DG72foL1HQA7z3E8CnJOsu7x+UZF8fVtNjFgnkO9j76qYKv
RDq0+FO5WQkmroH3taYfNtqntoQ6qIFzTLYf4kpG+gNmU/K97H9djRwIXNXUTOA1
OCPb8ySC7s/t4MXSn+fMOkPLX3bNVWSxptq0nodJQIJD3lhsf1eI/RbG3ZV2R+nO
929AZ7VmvY3JqQ10B/flfwWGDfeEQ2DplgQ2E4GB6uGvdcGx8iVlmJYh8rLHM0Gf
D0clvulrSi8FB98w/UNljANA7fVRnBdIsfeGeq5ypI0KEZ9hbPf78HmZXZ/MwmGk
8EneZLrgjV6WKQzI8hQqhoOV+ElqdbLm6359zK7SPoXQXlp/53l/XVEg8dApNfHH
95FG8LgbZZ+cfIROhCkbVl8atuEIYiEA8Zvpu4a6EeximRK/xAVvplFnGVvk7ajF
FJ4shYcItNE5rt/nkBqFEGv1zG31Eu06w5HKU7oR7ZtIcH6xgz4HVFv7dUpe2ysd
7xUyTxQ4BL/pKlNpvZ/Uig747+lifOqeB6+25zF5Dj6mbZ77xYaKBwL7u+PZDFTk
d+IZ933KLoKQq7N1L+BBNhB0wBB7pYiKzpuJqkkL5uOZji2ziB4=
=hq0o
-----END PGP SIGNATURE-----


--=-=WSITc13+3Oy7yG=-=--



--===============2072610694253287931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2072610694253287931==--


