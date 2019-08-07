Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7253385423
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yuYwzdC8EHCgpR2PCmKPU4Snevrg1VYUElBYuYfNmeM=; b=AIHMInvFWHfhmXNrS+tOsKLSk
	nQOL1NUvLilkyrOLYZigpQaC4eXGqSGzqtJrkHoAo6kaZPa6e1v1PX2XjUKU+AgNmQE4BxOwu9Bkm
	mAbr6SXou1OxMDovBJCjdtczMy8UnajDZ592FFbkKVXaG5dUEEcRkShOtwQme3Fvkoes11PxEi8Pz
	SM+jimT2DfpA25tO3HDpMXfJlzMDtAUGJhwrvH/iRCF9bYPWOMLSnARCtMIinyWutw7kt700+YOBq
	dhCId7llT70tR4OaypWGGLCFpfwg4BJ/n0FVV+rWWp/KdwSh34nbtIaRK6QgOTYVSrShmX7Brj2vB
	ZHGu/JaZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvS2v-0007y8-H3; Wed, 07 Aug 2019 19:56:29 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvS2n-0007xi-KV
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:56:23 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MXop2-1hpzRf1mBQ-00Y7dN; Wed, 07 Aug 2019 21:56:19 +0200
From: <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
 <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
 <CANoib0Hk6buOR9tJ5F+3EXd2c-MCGiE0X=M+Yg7_R_+fP5zWdw@mail.gmail.com>
 <02d001d54d53$6218e280$264aa780$@adrianschmutzler.de>
 <CANoib0HHTDNcBTUTK91s7fef5m8s=TnVUhb2Jg8UELbBKNGeRw@mail.gmail.com>
 <CANoib0Eyc3hcLg6M54M=Srax-Q0M=vJ5Hczz9_kZG3807UcnbA@mail.gmail.com>
In-Reply-To: <CANoib0Eyc3hcLg6M54M=Srax-Q0M=vJ5Hczz9_kZG3807UcnbA@mail.gmail.com>
Date: Wed, 7 Aug 2019 21:56:18 +0200
Message-ID: <011f01d54d5a$2e2ec4b0$8a8c4e10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJfXR1+bkvErjfcpfU8tI79uGyNTQIaUNJQAh4I0tABy6WucAEWAwE3AjwCVLYBcqghOwHGsGmDAfk1ZeelZ7U7MA==
X-Provags-ID: V03:K1:TU4YaconCFj0O4qlYo4+jwhN5nzZS1ylkmiS1q3VKg/CoVfpPXc
 WzXSe+Fbg6HI+rUH3t1QBZHbhm9/7Dxpj2B3X+mPxy199k6DlnZvJZxCd/equS/U2Dn7zdm
 O64ixjESjvRXDNV+6b+oqscm6Rd/sNNSEu8Wj+GoYOYBzilzX0CNnl9y3g+h/m6SJ8dCjRc
 M3RMvAoXDTBnG0TmTIv2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:J75uqoj+x9I=:os1qQxfdEhH37KnRbVebkh
 Ho1UhQ1enVREWRT98l4wIAQ8qdzpHOAhEwEIjJ7CIhoel2pkt4kjxV0a1vZQmEHN64gFUUbLh
 HO7BCFQwXcBEpskiHiyR0NAKFyhAXGBIwwJmTrMo2gckLJuE51ECMHrkgYNbwMLRI7eB6MWKn
 Dp61ToxAhWcA74HGobP/VW5Tc172olPsMV/IHU0HRJv0Rb9bzGBdBqhPuPGBOrkjXfNhNmd0a
 xA/5ydOUxoaMv18jeoPDMGicb60GWa3GNd9hIJI6pcqhanXx18ruQP0VZLavv5VmftzkJZpPr
 XS4YDwuL0uvlrFvtzzKjrnaEiyNol5mXaA3gwWMHexaYj/FaAIeq+jj4STwIo7FarBc73Cm80
 UoqXvblw0BgkBdYZwmetPTnM7rkeKNNXW9Ky6DEWV5U7H0lZ50+DQCPn2VdDzyCAl+1agDGRW
 9LxYtKVvaprTQiZukx5ssbLKM586j38AL+C+WmbVS5AMYhswiKdOAZxMZJHfvu9uCDIFktHiR
 W21B4Hw1/yfgy+A4GZAfPez8pbnA5nDwgd/bId9q9x7+zYhd+QOrFQCWlVtpfFLEoS8T0U/XZ
 PeRqhB8nOc4UHdo2C+usH1ZoWa0XdCvlAJcrfJvHQWqw+LsBa6TM0KCJp9LssdpiLUq3OKwXP
 dqq4+gmk71z12INMyF9x27iyyB7/EtYeXDeOAyr8MzRgIiMzb5MjH/jpD9cxM/tJHoNYQnCru
 yj5+5RiNXZJrW0lReJfByMDo7uV8y+USidHixx5oqMkmO8N5u/lDjBt2VZo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_125621_968849_B774CED3 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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
Content-Type: multipart/mixed; boundary="===============8247753135274709480=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8247753135274709480==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=cbuygaQuA429SJ=-="

This is a multipart message in MIME format.

--=-=cbuygaQuA429SJ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Are you using recent master?

DEVICE_MODEL is the way to go now.

> -----Original Message-----
> From: Dmitry Tunin [mailto:hanipouspilot@gmail.com]
> Sent: Mittwoch, 7. August 2019 21:27
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear
> WNR3800 (Ch)
>=20
> With VENDOR/MODEL it doesn't appear in menuconfig.
> So v1 with WNDR fix should work.
>=20
> =D1=81=D1=80, 7 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 22:11, Dmitry Tun=
in <hanipouspilot@gmail.com>:
> >
> > > You still have one WNR in the commit description and you can remove
> the DEVICE_VENDOR, as it is still inherited.
> > It looks like all the file should be changed to VENDOR/MODEL, but you
> > are correct.

--=-=cbuygaQuA429SJ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1LLN4ACgkQoNyKO7qx
AnCgDg//RAVkX7ztO/NE9L3PuWiZRqtou/JbZpfiHUvprdY8UGPQ86vyMqsdAxEO
+ZWlzqoiEEl08uD8Lf+Cahj3gIMtGGrgpsAplJZ8kI2aEvSWalCUL78fNKq80kqu
aB+5qf5Gz8PNOv2Gp7qWf206iFxQm6xnJMLS9pqy+s6Eu9HYbvP79Ivij2gWsALb
Z629yra4c9+1uTubNiIhscD+4h3Qqlm+PdJsGmcYcQBk9UpDOy8A6pkAslzFbeWt
2ASCNX7osJ82mLJYtlWxKjQzDjEhyEomEPaD2nvCV1kkRLbF2pzwS+7yjjsqAc/Q
7B9hn1izqVfp8nHH2YH/l1jgf+390Pg+/DAcbPMcoUTAghrL0C3u4ZoK7XVj5TT4
w3wF97LYx8o9Zo4q3NWcrdaRA6yERB4YHLv7NzsyWMD4vNCt3A2H1SF759kgt6Fy
6ecA2vAvqhyT2anKVbDsNp6KroHKRpDXVSlyEFTpwYSHogrK4JC8pbq7zpuPnc3F
CvGJSszSSJ8IoF1FOugjiwXG4SeUU+GEDOpzAn77mlVgwdbBBdHkvfRy2OGPuogc
zsyMNxMeVM6sRRM9LOc438fk6KmXm81Rz3NDV3XcK5zL+8TNgxMyCL4LYaFGCkQp
pxodsABJlZFDA+noQcpbX/pRn/QjYhd0Lc+ZiF0S+WkZjtinGa4=
=5x1c
-----END PGP SIGNATURE-----


--=-=cbuygaQuA429SJ=-=--



--===============8247753135274709480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8247753135274709480==--


