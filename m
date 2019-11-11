Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEEBF739B
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 13:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZfjFqgL76JgLmbhNm6WFmmvOEwQg++opg1ubKarn10E=; b=O55qCAALmOIbgc3p7Yd/+P2+L
	ZeM8/UA7LDvWBRrq4VJQlcV0KmDhZQdvTZcD5BwHNe+UalAkIXp76Te6CvOsh6iX3XMLESw/rhsYJ
	qWZ4+wIVAyLlHPIVyriboTAhNUqMjK2yR7+2TV1kSLkXkniTdoOFZNCR9NJ31KEaCTPQ7wkOvVqUk
	uYo9QKWc7TyLixScuyFIrk9u6zcljfK1MUyXLBBwgOgb6uvusfKJ/JjvC1H0UH9DJcdr8YLdRblDf
	e5ucQ7XxAxKWgst3Ll2kWfgd7RpIwryKn0GCA4OXY857wJ1K0P0GvJjdW7SSS0f5cEZSfaPK6qeAj
	jgo4ceQew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8WL-0001N3-PB; Mon, 11 Nov 2019 12:10:13 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8W5-0001Md-4x
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 12:09:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N5VLY-1hozxi1qXq-016zuO; Mon, 11
 Nov 2019 13:09:52 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
In-Reply-To: <20191109135320.25020-1-fercerpav@gmail.com>
Date: Mon, 11 Nov 2019 13:09:52 +0100
Message-ID: <019501d59888$ec4a6390$c4df2ab0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMAHHmw79qFhLWYA=
X-Provags-ID: V03:K1:wBjVcs2JeBKt/6zTIQ44kph7R3eZy0C9OkK16QLcdmLXkwxeF5Y
 5XZp1WYOupb7j1R6mTKpdwB2mnEDmRG0I8hms2k2F0WBwJR0EmJHRMK0zHibV9keuyDCezR
 4l6NabxOUdFW0AqPoFzGkvyvkU2Q+wZL0iti1AYvh9SWKv007SGps92Z+IHyioJffFwqPzE
 SIqOhNcoVwEGqfH9tgbQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qnhgVNZUXdk=:hcL61QTSoZjS1PQH2D2I05
 iD8Lx808oJ9IN+atMnRQRsoI+IdrXBtajjnWeXZkJF/+y6SnbNuBcT5920VUB8W+M4CP0ujIQ
 AGNxGGVJ2cQaPqGUxbDnuoRM15xsGz3axHZXFvOKpEi8LSbd/4+YLICab8TzKjHm+ESo8O4Og
 o7XQNvx5Biv2nmfsUCpvZpfD26Sa/4V/lAnP8Nbx5jWLxhw6QG/BIX0Adw51lKPFvbrTaHga+
 /mHyywYvHKD5hpmLRe0KROZ7JJQdRjbMEfZ+ooVsD7j1Dje2SZB6DDW7IoxiuPnsiMo4kTf6j
 4unwG+gPTx7/2i3zWbL/spbuNvPqGm2HHWVyYG4KjZ4syblia8gsk8rYA4E9Vuk+omI8/iqP1
 r43+KgVOEMN574Jb5xeD0GFanwJ7pgv7qqc3lIZ3+y0RVwWpaNKOMTjYRNoJ+1I40FS0XiIDM
 rcWf6HrtN+gkZFdIyfhQEGJxIO7ktU3lLgN/ncQCDImgg8hioxODqXhk5oPPWt9tu4l3Js2y4
 Vscm7BYVWp9tL68A26WS/E95wRMhxE0fap+A3dxU+1e9g2pQCN0daFegKuJ2Dk+FQj0kgIKUE
 vpnaI3mxNeRvnx0lZH2Oq+kGXbPcwoF+hnueKmDmbirbnine39dxne8ZLnxyiBiZvViV1bbXQ
 NgKm9bNDTWVuIlwv0e/zhl2T8kk5qgba0rtqK/atU2ZUAofhEW7N+UcOXK2ocqbM2Gnqkyk7n
 0DT5JrzOvmKJy5MlmQb9gukSS3NM6AVGXfZched9oj/O+O0Yyrb6INju0jNwiX7NylBjMKBEP
 doHAoaY8Uk3QSJU/o3C5xsnfciJ6FAygWjfhmJXXUceL+bCt7ZtPvQv6eL3KOduS0eApRt3TR
 47PEX+XlncqcJ2j87quCZEIiYq5LfnqtBXuvIp0Ag=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_040957_482269_256935C9 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: tmo26@gmx.de
Content-Type: multipart/mixed; boundary="===============3771154370856777315=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3771154370856777315==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=5Oc8wKO9tUxS0v=-="

This is a multipart message in MIME format.

--=-=5Oc8wKO9tUxS0v=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Paul Fertser
> Sent: Samstag, 9. November 2019 14:53
> To: openwrt-devel@lists.openwrt.org
> Cc: Paul Fertser <fercerpav@gmail.com>; Adrian Schmutzler
> <mail@adrianschmutzler.de>; tmo26@gmx.de
> Subject: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
>=20
> Support ported from ar71xx.
>=20
> Tested on hardware: flashing OpenWrt, then downgrading to vendor
> firmware, then using regular vendor web interface to upgrade to OpenWrt
> (using -factory.bin image). All MACs in vendor firmware were correct,
> the only visible quirk was meaningless "Hardware Version:" field in the
> web interface page header (one can append "mac" partition contents to
> the vendor firmware dump prior to flashing if that's too worrying).

please include specifications and flashing instructions into the commit mes=
sage, also for ported devices.
In most cases you can exploit the support commit from ar71xx to start with =
...

Best

Adrian=20

--=-=5Oc8wKO9tUxS0v=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3JT48ACgkQoNyKO7qx
AnBv1A/+PXM3reBiT/2jIJrJ0zGTkEul1qv7RTiTKA1HKdtvgRClNn158Qnp17NF
bdo4q7AZnnutDTlpdHio3bp5PHAhhjShADWTyD4hSCxJqqJoZJ1bH3HyEL5v4CNB
8509kX3eZ5AZx2uDbU5Crl+9f9WNBCeeilZ13GetnIRlUCns2XlkqGwGXHEkfMVt
2eMxLtzHnJt1nOy6IQULIpz9HjKA/gsExSXOsglLBJnrJxVaqcj1LBLevlB5w5vX
Md34txDygVJ7kabm6Mh7uL6FtRO9Yi1LsQi1LnBdhwKlMT0q5SgIuTaPsT4GK4ro
u73npWJw4gl+CAdlORWTAR1YOvNyhyyvhkfQATpYKVqmfbxkAe7mbvkvldMBREHK
M1BNJ6EujhG9QAX8jVGRhdhqdohA2+TpdShpXl3L5i/KhLosZp4SRv3h3BrRqe8H
sRkaUEJKbZj6u0rizssa8GuWWnLNFyAkX7wHr8WdQNUyFOOwA642rCHQevSgFNY8
iYvylbof6dK43COSrp0sfrIGyE5/5PmH/nHB0It2qFAljbJgTG9mx0/FcNHvGM0w
57lhOjxlkugcpYkWK3Ci7OZtnOTBrbZdw8grhXsYXx6mBGlE+pUCLJMBnHQ7vFts
igOQXYm0bFQ7wLZm37CiQn8YQDCcfx81fI7OAYQtfedE3kwrujI=
=AyUL
-----END PGP SIGNATURE-----


--=-=5Oc8wKO9tUxS0v=-=--



--===============3771154370856777315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3771154370856777315==--


