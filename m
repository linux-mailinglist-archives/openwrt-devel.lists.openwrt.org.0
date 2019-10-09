Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F10ED0DF8
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 13:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ro+8IudKZohrvJt8M3L7DfPuawYzA1DI9BeXYGVli68=; b=ubS+GqqKMachWNrXhSFObPRO2
	yjv3c9POG/bDFCyCvBrlQcv3jGHLS/DC/BIV/cEp4pfBhOO0L5m22hWUaQkqe11DQ3xqi1emBqobc
	/MjjpLAYyxu71OPBmSG3SBn+viCqS93LI42wOIcWWA/vDVxJqivfZtpWNgZrS7nMRHkI87dr3/aQo
	6zaAoyUuQlLHGeE/sRPKs2sq2V4+DoJcEOOP6TY9UVzTONJDPeanwl8NM65v8bNgX9Iz4M87k48jk
	X52W2A+QGuK1xn/q8MTmV4XpcTpRFuZTlAlZ03bGuHfxl1UxoDXhu48lli9XIUchot+SHL3Lmbdg6
	SEs1r+Dig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAUI-0000wK-16; Wed, 09 Oct 2019 11:50:38 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAU6-0000vj-EP
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 11:50:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MbS0X-1hgLgp3irR-00bu7u; Wed, 09
 Oct 2019 13:50:18 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?B?J+S4lOWQrOmjjuWQnyc=?= <wurobinson@qq.com>
References: <1570526416-4180-1-git-send-email-wurobinson@qq.com>	<007b01d57dd7$3c9228f0$b5b67ad0$@adrianschmutzler.de>	<tencent_B5943D7D59BDF02DEDECDDCF96F8B195E40A@qq.com>
 <tencent_9FE34BB6D83E73909E2AAD98F8D27710EF09@qq.com>
 <00e801d57e97$6b6dff30$4249fd90$@adrianschmutzler.de>
In-Reply-To: <00e801d57e97$6b6dff30$4249fd90$@adrianschmutzler.de>
Date: Wed, 9 Oct 2019 13:50:18 +0200
Message-ID: <00f301d57e97$b9202230$2b606690$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIor5UgF8SBG3V7TBwz+nbhV6RX4wGufM2HAhlo0c0CLmuKSANxPja3pmCTjAA=
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:Y9bNw1lSdyVlnZpT1xyS/Zqb/pZBoeAKwoYAZTQg7fEn3MFnVdZ
 urALFNNpsZ6HzHV+IX5VXDIhh+u7TTI+rRZJVSzltcJZ0tQvfZorIkir4AyS+ysW/STdMmq
 M+9N4PpZX0C0SNUk19ywUvRUkYFWAbpGYHFhNRkBILRubDn2RtkDfwaJ20bw3Ze9FjIMzKP
 J5pi9GrnA0PsufBY2+f/A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:traY9DTtfoU=:avuadimVjbAT3dnx4rDnXW
 26m9J0yRNoDHb1RDWypceGfcuxtkAwpwmjrDnjcu6PVZpg64VVCWFmJL9rNLd/37/y5ZNmW5M
 t3rRHlbYALIWrN0adGoG3M8iNHRiz/vSSVaI6RXQv2RfswDWHH7qP0GHF9RmmUh90oHF40Xkt
 jYkZLAIZCnXlgOHinj84itgJ+7dRKpzUD0rhYbgKhcl8aUv+LmVvIMDIOI4XXUgZPQ+6Ts12Y
 R+tVNot1nNT1ZVYmqY7hP/WYqcNlGebwkalJDsxKy2oNhQ3FjL6mOrVUBolZhHIhvsrp+NUQl
 WC1KkTEoKpUjP+UOTDLflKsYyBYD0RJF1A6zFRPXwCV645DyKYd977xjfFwiRveKoIDs+1PUz
 Naffgx7dAJZPnLaEruo45sGCbhGXYrqJkHHGqcjQBmaM2r+L1gr0vSTajrKZk5Mx7T7T9T4hk
 g3Bp3RBIWqB2SnPmyPYTxSBrr1Sudm+RF8i+C9brsIL6EJ7erWhEaNgZxQoAL1ST3+iRyGZgs
 5fzTTyoU3R2QmqPobYNQAp7SxxirE4D7/0Nx28xrC9w+JCe8B5lOcfkcUHeczfamhk6Igwg5Q
 KxoPwLlySj7edUsJV4sLVsv5V7KDohaclqoSvlQbQXYUaeGVrO8O02fZ0tcmIhS5VJiYAopTR
 9C1QMmsNkgYkwSboAx/ol0eb95h14xu0Sd1O2swY7BUT6aMIGKeUHyEyZ5MtldH6GK8sEijXs
 i0uKAAKK0Rbab51NnGNhsDHagzp139oxrd6jeGzjjXhxGvjzbUc4qDMf/J8wEOxm137YazF5H
 Kxm2z1RsnfIZDaWmEATH0EdU3ALzAwkdqZzBaZLqgaF3CRaVSrm20iHXMZ23mfr1+I0Mt9thh
 REGSEry3vdad1gzrzOjCRatsS6v2FGJx+0haLB2Gs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_045026_782442_0F297ED4 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] 
	=?utf-8?b?UkXvvJpSRTogIFtQQVRDSCB2NCAxLzNdIHJh?=
	=?utf-8?q?mips=3A_add_support_for_JS7628_development_board?=
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2501948758492603865=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2501948758492603865==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=mF0xOqtPVwKn/Y=-="

This is a multipart message in MIME format.

--=-=mF0xOqtPVwKn/Y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ah, sorry, too late. Didn't realize you already sent a patch as you started=
 with v1 again ...

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Adrian Schmutzler
> Sent: Mittwoch, 9. Oktober 2019 13:48
> To: '=E4=B8=94=E5=90=AC=E9=A3=8E=E5=90=9F' <wurobinson@qq.com>
> Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] RE=EF=BC=9ARE: [PATCH v4 1/3] ramips: add su=
pport for JS7628 development board
>=20
> Hi,
>=20
> before you resend you patches, two other comments:
>=20
> 1. When we introduced DEVICE_VARIANT, we typically removed the "flash" re=
ference formerly present in the DEVICE_TITLE.
>=20
> So you might update your DEVICE_VARIANT entries for consistency, e.g.
>=20
> DEVICE_VARIANT :=3D 32M flash
>=20
> to
>=20
> DEVICE_VARIANT :=3D 32M
>=20
> 2. Currently, you set up wan MAC address to eth0 + 1 with the default cas=
e in 02_network (line 731).
>=20
> Do the boards have a wan MAC address on flash (0x2e or somewhere else)? I=
f yes, please add it to the ramips_setup_macs() section
> (starting line 516) explicitly.
>=20
> Same would be necessary if the wan address is _not_ different from the la=
n/eth0 address. In this case add your boards to the "empty
> case" starting in line 584.
>=20
> As those are development boards, they most probably won't have a label wi=
th a MAC address on them?
>=20
> Despite, I do not have commit access, so expect comments from other peopl=
e or further waiting.
>=20
> Best
>=20
> Adrian Schmutzler

--=-=mF0xOqtPVwKn/Y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2dyXkACgkQoNyKO7qx
AnBwThAAgYQsDgsP+1t4slVkn9xt2zqfkacH1Y8M6njsrPDmJAdju1dThXeE2bDe
eGgXM/629vmSNL5PknEaytJ9HkbJQRu9aazCdDp+8BR6ooXti7tQRAmPfI9gIDsc
0itnzqipp9ca9fQfflY1RZ1LmeIzN6TwRxHX58P8Mp2qsBk78Gm4S9uN+sJ4Q8ha
JReDQmgfQavETA1BUlOSblBpE0LppgI3B0ANfFQToBAsVvQkxkSPwkzDs4DKNcNT
JNJam7t2tBi+NObfDMseCKO8G2cyUJ6KYIOBuL9m+gUj523K/PfRBUwHpYygdcPo
pG55EFhXjug5aejgbjhb062eVvo0U7zIXRM7bk9xsWK9B2CE/U4yE5fvF+ehSIlU
Uxdp8OHBZm0OyP2rg6xIYqRtWPOw2iNw7PoBdCBwzLjd9Vr/PVcYOkDweSfYZ7cN
dn4cRgjtDJ5qCOkZKJxUjvW03ZVNAXKq1sHsp4cuPEpiVGDXfUvh7wfPbe3oXN43
3riLJ753U0SdDCdFSRpdlTCxDsvpk4Z+Tmt/tpYmuuudV75p3EliFvTPh01YdefH
/w9e4kvd8nbw75fbXuCK5kqq11PBROnoAj3zNpCGGFVG7ZYNRN7hgbfybUPqR921
Pa/DLaAERfo+s8iSabbfHO9hIv6RBvWkdljoDYhz4PqzcfuDcPE=
=rsB/
-----END PGP SIGNATURE-----


--=-=mF0xOqtPVwKn/Y=-=--



--===============2501948758492603865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2501948758492603865==--


