Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA2988C53
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 18:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+J9sU8Rez9QZbif8kaoM0HZlpknwhRnYSIRxhyuEbLY=; b=QUEAZtiI7YI+OlBVehmXbE8R8
	n8OyPkTJM2SQeYIcoUyg5GQrJ+R3RQgovNu3Yvu6vu+V9jUNU+ATbW5Ttj95FgDcefyEZZLn3nZ68
	Oi5bK37eEywW1e4//9QrPwX6APHUt/0XalffJC8Px7OoJ5JWcGShf2JHMEbbzgFe5+Wsb4r60V8wj
	mUpINyzJxS/rwBssDuMoWM8dO1JWnV7IwG8rSGf3RfgAZLwgwC3KScF8rpEWpg3jfWInNPfzHzlzW
	HaD2KyUkC8Hbx2tdnyiqF2d3MKUqXxVrBewgt2b3Oj41bTeSyhy3OdW8n/VVMbanzaaeEEVJoWRgG
	hCgccYgSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwUVg-0000z1-9g; Sat, 10 Aug 2019 16:46:29 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwUVK-0000ya-Tp
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 16:46:09 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MFshF-1i64Ul0InP-00HNh4; Sat, 10 Aug 2019 18:46:04 +0200
From: <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
 <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
 <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
 <CANoib0FY9U+LhW4UE9effHuJJabX9QFnmHD0Vj6e_gdCEmzE-A@mail.gmail.com>
 <00b601d54f88$e50b7ea0$af227be0$@adrianschmutzler.de>
 <CANoib0FyuspUDhriPmy1U1=G73=Qtyauti6HkEN_JztEpCjjmQ@mail.gmail.com>
In-Reply-To: <CANoib0FyuspUDhriPmy1U1=G73=Qtyauti6HkEN_JztEpCjjmQ@mail.gmail.com>
Date: Sat, 10 Aug 2019 18:46:03 +0200
Message-ID: <00fb01d54f9b$1956ecf0$4c04c6d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJBfM1NZ79tOwTjV9JMAWTB41mHwAEp4l6fAUlxpxgB63ujzwEtsjn4AGA7hGgBwZOndgHl09nTAwh+IZKlt1dC8A==
X-Provags-ID: V03:K1:I02fzM42oNGnN8IZXa00fi3/DjJ9o/y2YIIjHtTjoymwyKbsXGS
 Du1LL+mI105ZY4NZduhwHN4Ea7dqQcJlQGdWaD2m3o++mC7wIgFGRYLH8UaB4SvwZ0Ug6lt
 Oy6LDiLgmY31bu8K+SC0deTu16EZSL/ZDnALs6yUDW3GK37o06POrW35M44QstenKtGNzUt
 +EAM6hYPISQBmXQcNviug==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2tFGOSVWgxg=:SPDX7EMK8obc4sY7XQhU2E
 Utsu8riScBoLdOySf/y4ep1X6fU4rzMaupEV5VYqhMIa2xpxiO7MJSv46+hlMd0zifYzgh8ra
 hrbbTXK1QODCiYEmMU0gZcCCZquZupxe1M34HCqk6tf76S3DG6y7yslHbigXQTgr5+N8RbYC3
 V12z3Eocz++DZ7VV1+w9WEtaZFi8Ji07hqiJKbPZLsUpRqOVlWPuxXwHZLJ/bt0HaV3nJy0HV
 FTDbd3fELOmG7iTW678u4vIpEHZpWrkLb6YKbbPdQZjlTECH4egW3QNmoZVZZOBMZJlmEFySZ
 vKqIoU+2PAKhod/aIsblZzgIOpEzHtRlv9CGihGh0K1DLdbI6sBlEImnCy3Biz5dDceXMcowk
 UTT4rTwyHqTAmPKHIhXzFPKCSTJIsyGloHOmrP4fn9gq+F76skjMiwKZCnLYD0K3Ujn3tea0r
 MvWPrtFpGQVFrMicNwrIghxrBLTuMWYohX5BaMv0z0Ej2gbTt+stVzKllpdJ1KOtJsrSi0mNi
 WyLzIHgviUcb/zSbjz0HWYitIZvy2XuOi54a2mkYBcQioU/N2GS6jQRxg8dvvo79Sz83wEyrZ
 4ti7Bf+UUQouLJpkJvQNm01/YReQcekPI2oWXD80NtpOOacNfbtn3h0p3Xw7bdHDifBX580nK
 bvkGsPtpHhasoQDwTzLdmDFfLYsFsvXsaVCR4NlbVJ7P1oU9zUm6uCHnrccyVAgafXIy4uiy/
 WVn+hzmen2Rp6cqi0IMSxRGF1t5l9sS2tFC2MNHh8O9tAryNJMGJ5ewMHvw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_094607_440047_C1E9B2D8 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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
Content-Type: multipart/mixed; boundary="===============2939339148657544788=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2939339148657544788==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=PzTADKv+KvVPTh=-="

This is a multipart message in MIME format.

--=-=PzTADKv+KvVPTh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Dmitry Tunin
> Sent: Samstag, 10. August 2019 18:25
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to interrupt-
> driven gpio-keys
>=20
> > Can I add your Tested-by?
>=20
> I tested only one target, it makes no sense to add this. And I what about
> ath9k keys. They are a problem.

So should it remove the change for ath9k keys and only do the other ones at=
 the moment?

--=-=PzTADKv+KvVPTh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1O9MgACgkQoNyKO7qx
AnCBLxAAi71anZsbMBliHiXYzwCDJr9R/IT+bBttayTBLoUTyeO2C0M59cnBzv1s
ryMbiY694O1Wa+YesZZXBgmYAV9AYY0fFeDnOz2PiUTn7YXSDboR3v7v8zw0Tu8V
dnQtp6GsRC3ycH6t05Bx28zz3clS/VJ/r+aPwMNcejOuOfPLMzpELN8GMHtbLCFn
iUBj12TzLDjGFvWkaY1DSlQwRFYulB69Ku06B5voJUSTnRuR9j9CuwM/pMQi0bh3
n7mXj091fBeyLdhmyai7rqk/upUoLlucZ+HIeW8dXvMp+U/tN51RpftKSbPCXXvI
uDv1Ut6Bd/EYH56Tm6MojaocPf3z93tsqeN/LCNHgGq6ffACSEGnGhIzrpZeJLIA
5rgvSuFzzW3H0xai31pjt1VxyAeBY+bb78/jejtdnMUXsRZ7mkrXWsxSrxUED0xB
47ZZ//5SJNsSsDLUSp+yp+wkWfDCis0I8M84mjnv13ag+kbEKEMS0tNRNhFpUMwJ
kfIEOhIb7NurdjssiDPXCbQLTDMOS1ZDv5OxwgZup1HblW1HUCu5fxc7LSOITZ0V
eqcA7m/5DX44lV5ScjlPaN3/TpOnZZaiCzIc8w9U7Q00LzgC1vP3B8UBvykgnAki
kVwZynBP/T2P0NDPrHNiHfrau0NmJM6CAW26z3U1kxQQrqqeF7g=
=xZmZ
-----END PGP SIGNATURE-----


--=-=PzTADKv+KvVPTh=-=--



--===============2939339148657544788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2939339148657544788==--


