Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FF11E0BC0
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 12:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tYh2YPx9/UIy8+MvKuKuHfDhq0XqFycqeshx0ObkONE=; b=o5Rz8puArKHLODS7/05TK1/4B
	iGdIL7WjUoRh5fc11f5rfkdayVebnc3kLSOJjpqd2N0WILpzpdWXEafgasdI2VV7y7262Hhsce6zr
	HKPV+C6ij9hkLQsq/fqB46K4U4j/moVtumQG86HJUBbQSK6y2I67IfuvXK4YMgjGK5Oyyh8en92cb
	W8zlV8eapJwNYIUN6SOjA7Svilbvt0Ts6K0y5tnUU3s17I2h3XVVLhhuW5nW/yHugSPkDOSbFI3eU
	Kq6RdsNF8HY0sKTrlysXkGB9VyBGQPuZKhCRZ1OcGZB3ctldeZ2srae4kImA5q7Z4UqypyCBytmVI
	E8Q/a+Wfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAGF-0003rA-Vc; Mon, 25 May 2020 10:23:11 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAG7-0003qd-5F
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 10:23:04 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MV6Bs-1jV11V25ck-00S81k; Mon, 25 May 2020 12:22:55 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Linus_L=C3=BCssing'?= <ll@simonwunderlich.de>,
 =?utf-8?Q?'Linus_L=C3=BCssing'?= <linus.luessing@c0d3.blue>,
 <openwrt-devel@lists.openwrt.org>
References: <20200525074000.2749-1-linus.luessing@c0d3.blue>
 <005701d63276$6bf11620$43d34260$@adrianschmutzler.de>
 <c4c2cdbf-30ff-86e8-30ff-e61f4867c90e@simonwunderlich.de>
In-Reply-To: <c4c2cdbf-30ff-86e8-30ff-e61f4867c90e@simonwunderlich.de>
Date: Mon, 25 May 2020 12:22:54 +0200
Message-ID: <00ca01d6327e$747808a0$5d6819e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQDV2ZK+GN48EywoPHOqp9U+2YKyQQHRdDwkAkoewweqmGzFcA==
X-Provags-ID: V03:K1:3nosthbokBRmlVAeVg1nytjWJZOI7WVUmc99etSk/W70cGZEhRM
 Q1/aVLHMWVRfNcti+VI2q4DfSB7vIu462Q/eBJgSH+Ag766z8pJArboYo/8PRk4e5h7wMiP
 Et0kM7fij4rizhGAos3atFi+yrtNml7MjN1q4JDmnCKQJ5GYQVuKNhwX61+P4232tUgZ4Qk
 7zbmTjCS+UkXrqq6NKdhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3EYYBKgkbOo=:TPYj/jpPxDinTqt7O54dHf
 ieDw6ck77aVlEfpMzo/LUbFU+FuOFbsJ9kay/0ZktqJ+i9rQIkCaCHKseQSTPyP58bPtlMqoB
 MmhaCU715mNlsnOkipyw3rzMwIcjnT9Cr5Y8DY1yMGY1wZNptqL/+Xs6qJnAQX7b5vdHmtLyQ
 tQSZ3Fg5IcDKb4KYglBQNs9yaPEeZNw7ElIis4BBl8YomD/8sx3twF1XkpJRw0PLzNQEsKg9Y
 wRbGyjHZcEK/cJhS6TfyU/PJo25oSn2DCaEDHB9W1w1CqMbBfCO1BXrkcX/6+sKC1OrvALoEU
 ruGLdLxt+79urtEMXP0GknsTuFRHFQhA/Fqq2APwXXR+j/SsLuEhsm7jmbeSSjsuGoD120ymd
 bQ1TXjvaofbOHbWSO4XAZlGA2HB2qAbNUJfhGAhC0NvJx/1yiCOucGnFa1sJMFDxjdWUbV73q
 cXwG04MJ2s9iIG0UKUbItURFDVHGnbv/GvNF7ydsP9lHWZjVtqpejXIcFIddwCjbxT7NOUAJX
 ABzEDHe5nZJnTAdTP3XV7G1sYp0hUK1DzB0PnBll/gIqx3zS4LuZoCoXgqRt/mt4LfIhJlADF
 JQv30E4zJyz8Nh2rR0mYv4A3cESr+yR14yYjKnCBx0cWd25lJfl3uHgXByl0ED0dVmEWyeYUs
 tnoxDR6kxLEjpvVmWS6HSt0Olhs1aAZjd+oapFqH2ircWeUaRFxO6zG/HR8aHbBhLcbjfLU89
 5MKRklxBacweybKhvJSQ+F4GRhVradkdgMsQt8S4woQjxLuX7Xz8dxwxLPyZMjXFStxjgMQC2
 TdSsNrPQkJ9tvYTMTjO52VCiuuxU3q4eANaXbNGjjsXr+UN2Sz2dUI1M+NAawlbZ1GMPUIY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_032303_490818_A78BDB28 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] layerscape: kernel: cma: increase CMA
 buffer size from 16 to 32MB
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
Cc: 'Sven Eckelmann' <sven@narfation.org>
Content-Type: multipart/mixed; boundary="===============1618498009168637920=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1618498009168637920==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=/JextOjsohegdL=-="

This is a multipart message in MIME format.

--=-=/JextOjsohegdL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Linus L=C3=BCssing [mailto:ll@simonwunderlich.de]
> Sent: Montag, 25. Mai 2020 12:14
> To: mail@adrianschmutzler.de; 'Linus L=C3=BCssing' <linus.luessing@c0d3.b=
lue>;
> openwrt-devel@lists.openwrt.org
> Cc: 'Sven Eckelmann' <sven@narfation.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] layerscape: kernel: cma: increase
> CMA buffer size from 16 to 32MB
>=20
> On 25/05/2020 11:25, mail@adrianschmutzler.de wrote:
> [...]
> > Despite, armv7 uses 64 MB ?
>=20
> Hm, you're right. Not sure, I wouldn't increase the CMA buffer more as
> needed though, as any unused CMA space is basically wasted, it can't be
> used for caches etc right now.
>=20
> But I can increase it to 64 MB to not divert from armv7 if that's preferr=
ed. As
> all layerscape boards usually come with a large amount of RAM, I assume?

Unfortunately, I cannot comment on this architecture at all, I just made th=
e observation when looking at it.
Maybe somebody else can comment on that.

Note that we just removed 4.14 support completely for this target, so you w=
ill only have to touch 5.4 now.

Best

Adrian

>=20
> Regards, Linus

--=-=/JextOjsohegdL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7LnHsACgkQoNyKO7qx
AnDG2Q/+Km8KArrSFXy92c0CfDvVvWM4S7bvZOKA8qaN/AtWHUqZ4he0W0R/TkFe
h7Y2ctUXR4y235OXj0cucNdjNDHz6OKNSlCux/xG+6Irs/VzQ4PQB0YSxB5mKvNv
1udB1dsE2vVxP3/dnpXYsJX/5afkPOQKZjKxs4ZAUFh+yxmM6jNjWuBQEQD0V+lk
2sa9IdZjspns/RNP5uuYSn9PmFq3ctCyXRqY/jnEYNAOuh/rYam6FJnXscNuYg5t
rxKmhz84a1wKoHQFNW3eqeLqw0ngQ7xHmf4ECoS9Bx90m6s5BDu67W3qx/W518TH
91Dxn8RqcQz45id8LjRzyyEDJGbJKNPM8ZENV8aV/1lTmIALhsv06JJhdezPrjzs
hFJ1WjphzXMl4N3LESLZp961tytNu5jLl+5eKlLs9durKMBHtAbhAu7nv3NePB3m
cdp+YVkAzKDhzrjlPnVX4c0qVN0XHt7qJu22CgKd7tisxSmLce9Xf7VgCTrjIVbK
+lWqwpu7qzEgZR58LS03WYh0zOnFBBzMMGv7F/vtwrCP6xbI4M9U2eryHA8zumlk
J4V6CHkjC05832oNvbSdK140nRIl0A2rjVsyNDGWCM+3LjMR+1S6fuw0G9IKwbp6
U+S8CeI6lYl+S1+44WXnOeQclBsEov9+qlFxMcvaM9S+W4o+LmY=
=lTCM
-----END PGP SIGNATURE-----


--=-=/JextOjsohegdL=-=--



--===============1618498009168637920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1618498009168637920==--


