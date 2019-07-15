Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54D069866
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 17:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XOnbuyI2GSonlM3WIL9fvfKBGIbew0saNowxrbK9iFc=; b=QGutmCV8cM6nWyqEQqyn+FlVN
	whp90UdyjHOfj3iBCiUlnXWsbx8ko2klxLXSBLD/mg4E257kAHSdfe8/OgcDnDpOTyCsqCGAZsJkb
	T62FifEf9RK5uIegtpy6XmynU3K+OmOg2iXdtvo9CgrqX8NahwVnPWI5xKTuyXdgmip1HiLZ/qq0M
	HXOocCVqDKcoxPBrz98TNWAd7+uKZxwgvDcGGoEh7/atiS7BE5k3i2CmCUnDy5xUi6H78S5yMFHpY
	11fwBQsGWH8h3k3I9RJt5donTGMDb9G+GEgcmeSv7UGMtXCXptIL7elBjF0j5mECdg+iSYK+8gniP
	iMOMYsBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn31H-0007P2-A2; Mon, 15 Jul 2019 15:36:03 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn318-0007OU-BV
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 15:35:56 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MJVU0-1i2VTA3DHE-00Jq0G; Mon, 15
 Jul 2019 17:35:48 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Chuanhong Guo'" <gch981213@gmail.com>
References: <20190715115342.4190-1-gch981213@gmail.com>
 <017401d53b11$543bb6a0$fcb323e0$@adrianschmutzler.de>
 <CAJsYDV+2psCAwoRZ=Umjbzm4T0iGZ0V-PLhphZA0e3YrQS2uwQ@mail.gmail.com>
In-Reply-To: <CAJsYDV+2psCAwoRZ=Umjbzm4T0iGZ0V-PLhphZA0e3YrQS2uwQ@mail.gmail.com>
Date: Mon, 15 Jul 2019 17:35:48 +0200
Message-ID: <024b01d53b22$fa111cd0$ee335670$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQH674KN3aOZ/CfDAt9spMBdYhysvALu5xtLAoeTelumVLLUIA==
MIME-Version: 1.0
X-Provags-ID: V03:K1:MMSoTavGheoDe8NueJp+sypKI5IxS+1XxBKYO2d4KN+1z2rjXZA
 hvHLH9YKMmCiaUhJ9qmNmjwOoFM6+mnYp5xRms2IEiNC5xGeSBHKLoKa5tQ7yENQXLu+D21
 t8AHz6XcV4F2plynAIHN5ybJZStB7ahWfpN/TqQOnY02Ynti/+Bysvgl/S0sg1M+tUdvdCm
 xUa0ZkxYKIj3h+XvxX8XA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ufKpNzVH4b8=:DXKFf2V4dikL/5hJx4Qbcf
 +UD5AJS8Vc7mGZvlO3GWds31E7kt4nj9tQmpPAGhEVXsMI46Nt6YStba5mZKrYhhPlSIFtAgM
 wlq8gpOPPbSbuZ11H/yEZyKldP+XqIictNI28TgiWClnBabTeR8xoNrTLkAETe6PIrB/eqMia
 qjaN9tpoTZrs48rwIxVRA64YmLemNYg2TduFgMK01s/aQzInJdAhRC+ECpRrsDKm7U0Xa1wtm
 D2q6BIr6792eXpKWdI710SXcpI4LX8M12oGI0Jeavc1BoYIRVA0Al/P+Un/y/W5hCAz88DeVw
 yvZ/+WJBFcmLsK8wSlYm82WBWXdc1+mOG4mLtth80Qb4476Ex+SifBzqL28CTAAC2J53cTMy+
 50V/46uNNgfR0hCPuxHrKC2itIoLHIgJc3l9crnfeyx7KOaQgrly8Oj9kq7bLRIIH1LLnsKBQ
 kwd0kkbN3a4xbPDc/cYmN/PHgdaP3Y8HPRx9kYUq+7F+Za07UrovQnuabV7z05fSFPnvyHFCn
 pZeVu3l15EN4ZfB462RPCQ82RBtSbmUOVphXM5sr46ceBE9uaNmYV6csKDO1OTCR7brq1oAt2
 CEhg2XhXA327kBfnWyzAn8Sopnn7y4nDWzsxmN7Hzj/8wlSmxnNw4MWn6XbD7LwEfQRCPS1Bp
 NtRmqz1fK7oaQEC7XYLDOJHWOK6FmsNeJFAgLiTeaRmHIWBYCmw0sM84V8M6OdQfKsrdIyOLF
 DNM6c02xxNNInq8zV4lwava2qCD+U0YBGHdTwqgSTru7SVR/s97K4Zm4ypc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_083554_687026_4F250471 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Qihoo C301
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
Content-Type: multipart/mixed; boundary="===============8563966151337716513=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8563966151337716513==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=/gQ71GM+H4zNQ+=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=/gQ71GM+H4zNQ+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Chuanhong Guo
> Sent: Montag, 15. Juli 2019 17:28
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Qihoo C301
>=20
> Hi!
>=20
> On Mon, Jul 15, 2019 at 9:29 PM Adrian Schmutzler
> <mail@adrianschmutzler.de> wrote:
> > can you tell which of the 4 MAC addresses is on the device label, so I =
can add it
> to my label-mac-address PR?
>=20
> I guess the router I have is a weird engineering sample. None of the 6
> MAC addresses stored in mtd matches the one on the label :(

well, then it's bad luck.

Thanks for checking anyway.

Best

Adrian

>=20
> Regards,
> Chuanhong Guo
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=/gQ71GM+H4zNQ+=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0snVEACgkQoNyKO7qx
AnAIDA//VDZHy14w2wbBo6fz2u9K67nMQNi+aWIj4bXofS/nwiFImH8VlysdHsUO
CxXbLwUGbPE9NnyYk+m5T016Pma+hTliy9KRQCO65o8YxpMWVMsAMlG5kHK8tLeg
FwUMraUumKIr2Jrs5ZZ0OWI+gvJQzG3+iwpEqq0Aosw1iBmx40VrY4nqAB6yVw6O
TQmbxUON0P4DJa3ylpVuAeTdNkeaKHhv6vK5UjNKRNqdH6w8Q8SJhsPm35+OdBwu
w+Tnm8pmY5MsnSnjG6MgfgBD86vdttnHiPPXECOq5AvnFZAij7zbHzeKjHVEVc6S
gG+KookoAoQIVFJsPHcb0XNKolgZG4MZdkFwox9i6paCTTnG/vaLV/L3bnPgVZ/h
NlNhD7ulfyEb18W8WLBmHMqP2GRVpK1IqdFlQI12FyYz1RsQ5U+x3JUA/0Y6fvRH
nJ9euU1LPZyJ+uF81zU4HmLInQ1GHncV6DpbFdBYDJ19y+KWJKKtsJVI7O8TXDSg
JqO0KqcsYGRl3Bk5aBGLSiSmd5LLbXYz804Xx6lCbQl1RHko+0ckAyHCBTw5vb8O
LqPJIwvFjdJbqdjB4wxToKGTIpWW/Ryd+d6XVd2pT/13T2hmU6MnX2repf3OZE9K
BDu1Gj08qNPASbfAHLoaVap8V3cgZE6SwyKUkFZMdA0vmrvKXAs=
=/OlF
-----END PGP SIGNATURE-----


--=-=/gQ71GM+H4zNQ+=-=--



--===============8563966151337716513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8563966151337716513==--


