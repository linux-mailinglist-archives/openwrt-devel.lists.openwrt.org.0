Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEF21F9C75
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 18:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jks5bJ8NiKU38t70WFVY1avI5XogjTgWb1kgo8s5tmI=; b=NGCrT6LjI7hHgpVYHiFBm3XoS
	9eWihHb34q38ivBpJYNzAjOgdeBXJa/xRRY7Sl4eGDcE/enWsCaZ8tI1VoxVmbbq+3PTiFEpnNvtc
	6EBOfmKkqUpz/A5VUjp8TTjNYW+ElIycw1CFXqbkYrmpyDVeHKp6/KtyAJ13q5qcYV8gYiSAAMusG
	OLHwEuurAVFSkM0vril4I/dQ/ehXfVPdfoByftH8Q1Z2Lil2dWISePFbAzP9r6xKqOKfCNvHU4Okx
	h8SSxlDHLPziCtjipeDIflUkmE1ngl5X1yhffaQpRwaNW+w6orGffPe0hxPn+VfKzwtxWAKD9ELuM
	1AdzbfGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrWk-0004JP-4h; Mon, 15 Jun 2020 16:00:02 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrWZ-0004If-EC
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 15:59:53 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mo6zF-1j8Vcl1BEp-00peQx; Mon, 15 Jun 2020 17:59:48 +0200
From: <mail@adrianschmutzler.de>
To: "'Stan Grishin'" <stangri@melmac.net>,
 "'openwrt-devel'" <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?'Pawe=C5=82_Dembicki'?= <paweldembicki@gmail.com>
References: <mailman.23006.1592164856.2542.openwrt-devel@lists.openwrt.org>
 <CALu2O0Rm6UC=dMNAGMH5+r4QmJ6CciEY10DLZdY-JLvqJAurWA@mail.gmail.com>
In-Reply-To: <CALu2O0Rm6UC=dMNAGMH5+r4QmJ6CciEY10DLZdY-JLvqJAurWA@mail.gmail.com>
Date: Mon, 15 Jun 2020 17:59:47 +0200
Message-ID: <008f01d6432d$fee57c10$fcb07430$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQE90U4VPf7JsxPUK9tLITNHQ0/EjAHWsNRhqfwDuZA=
Content-Language: de
X-Provags-ID: V03:K1:9hzTmCQirziCYQd9R8ByP07gEC9dmAdNoSa9UPV06jucgkahGIl
 TG2tOo9kGHVrLnn8bLB/9drzFFrx2E00TDgk/Z4bWP1q4ReRUr3P/Glsm1VovfRobVlO8mh
 6efdajwGuYqQHM+H+4fxQDpDdhw6GAha5IvrKAu6/PfqRKShpuZfqC/5ahBszG70wBNpve0
 SxisHT0wF5LFIfOAwWrnw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LSWjgsb4fi8=:psABhi7HCVa6YYQHIAq5m+
 WsQX1JlcsSlh5Ixv4sW62LyZ1M+VcSi4pVielooBkJ8vblF8lriTjzC79vSjzs6NV/bHFojki
 Qp0ew6pk2oOYCjAVZHLFwkoLUgVO/eq4PiSsUFrE8DIfvAPGpsWKDZSd7TB8qrMdORHiGwhpk
 XlnaeDSUxRmN7UjnFW+FqbLvOEFgUnJ4ks7sRKmUTAU2CW9mlN++PafwuSdgzR0bZe1ZZJyTF
 H2r98lhhIZ30yVikeYfs+Z8YI6PkleNmaChLQdPt6zgfiT3/TVSlln+qiKeEjRuI4ftLXqYTC
 mc9BTS2fZlxks46zZ8B71RonM+RWTyZ7kfefHMUEoyw2nH0el+Ts7gvilWnhxunauATMbexg8
 HJ4C9MGJbOc9cdBZ1P3w9As7clmwENM+O8q6iF5DMnAYOayXdz2zJ5tA9QvGg8pSGEf76gvMr
 lNcc+QCp+ciun4xhtek6MTuurTK6LhStQXZ4HhKgLsTUZ7Hk6dWvmcLfjcHL5eZs9HubHC5Fk
 DvxOaFmWrKIdYE+6NpfPRq4eWc66smlNPnz5ygoSpArIAAmrP/0MA1lGoAAKurhC7jeL5lBcD
 zmGQDCdAUYbpVnvrven80plTkMc7Qs5imIlp+7m1dOudzl3nUaS2N+qesGiE6m4MX5jYL6cfD
 rn8cgzd4YkPP6+XyYCO3E77tNUkkEPKj0EsSvcw7dIFQgq1B4UW2u4SVxjAZ9J4r0N45yIa7Z
 1CpXq8fj1UUrV043Q9y+Ore3OH4gvpPYVxztaYKqtJHgbElNKgUPo6XYNe6DgVl2ShFyQiZV+
 t9IW8WLMG9teUyJSQ/4OrovzT9XBIJBGghL4vIl5GsZvZ9Xzqdg2uWgKnu9ETpNHgFLbAS4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_085951_764908_56DF3982 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC PATCH] kirkwood: use real model names for
 Linksys devices
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
Content-Type: multipart/mixed; boundary="===============1250279162102234475=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1250279162102234475==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=tPUyEAmQrEw3y7=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=tPUyEAmQrEw3y7=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> Is it possible to get a notification when/if this is merged so I could up=
date the
> device names at
> https://github.com/openwrt/luci/tree/master/applications/luci-app-
> advanced-reboot/luasrc/advanced-reboot/devices
> for luci-app-advanced-reboot?

Yes, I try hard to remember that.

>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=tPUyEAmQrEw3y7=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7nmu4ACgkQoNyKO7qx
AnCLHw//aekiOwyIXrcaQwGvmYNCmdk/EDeOVLIfI/Xnd/6+6biAA/wyYmOIQEMF
KX1JmMY9Wm3CjA0jbaql98le1Hf4az5ER77HOBbARs+GkjWYdHgShd5iFqiigeVq
V/lhsRzTpYyDxp70CPyNsq5U3fKL/NNuzUGDXtKNl9bWItgeLhVhOzRSstDpLMM6
mIQI16wsOJYRgkjDvdZHxA2cV8QfcRv9knTeN8osaSCU0IvNrsdh2cBmORVsuXRO
4LjTPN7yUBe8N2BnCs/jnqxmobgGzkh87NS4POSwl5wWmStVm+TODZFPTnXgn35H
ua+LhegKyQHiN7X6zYc9Zjj52agF5QoXIQI/iEiYShPJNuC2+A+takEf++J2PgEK
3AOkuuD9mRRCMDIHpQsF6t/w4kOoPlO9hBtwRmCiO142jcK9hUvmd7K6kWxPB7bb
sf5N/1AEflC2gtYu5Vra++zpcZ1rkLM8wGPdGRFjuHxm45rdzdsba6bI4KqYKP2O
svc5qpjAfbe0wReWWPN8GEwhrWwc7WYgsZgGos2mknahFFoTrrvTarq3KILOK3/h
mRyiq7wLhCkA/0HIdH5prrYb7AyYArbQEy1cCF7krKabArIbvNFbUvgoqU1TuohC
QpvJfP3+BNPTFurYCGPiJKHCE9Y1q1ytCPQ8s4oD4sgnuVuotvg=
=IWhn
-----END PGP SIGNATURE-----


--=-=tPUyEAmQrEw3y7=-=--



--===============1250279162102234475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1250279162102234475==--


