Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AEC140C3E
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 15:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lx7Ks5MynJflwBndPlANeCdJMbTIi0z8/4002t6fCQw=; b=gNLo/iXIEHvJPnjBEs9/TYmjR
	SlbljJ/ryJlZHwvN+Uu1x6yvUv11KfwRpiBZ42033U1cHA9O8hj7mOE/MqPh1xU66Dh2OnrLGCwHy
	UT+8wYDrUeilYbfo3wKiRLOJGE0GQ1xLP2Hdsho/UJ4HwdYCPPXhCKUehU3kyWicmZDiqP5YVZxC8
	sElCMTuXyj6FaolwM2bdr6EAMI4yfOqkhoU9acjyN6f5XGU5Ixa3ZgYhdDUP4LKU3IN1dlk07qpkO
	nk4O4cAoOXxhA4rVa2GQ6cPLsFTLP7cwVUn8CGR8XRMSwym7aWmlHpb+ZWS59vMV50ZX+GkbTsZQQ
	RPEE8cE2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSQx-0005xA-BH; Fri, 17 Jan 2020 14:17:11 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSQm-0005wM-4T
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 14:17:03 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mj8eB-1jWlJy0mBh-00fC3k; Fri, 17
 Jan 2020 15:16:55 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Filip Moc'" <lede@moc6.cz>
References: <20200117121552.2225-1-freifunk@adrianschmutzler.de>
 <20200117125312.GA17767@moc6.cz>
In-Reply-To: <20200117125312.GA17767@moc6.cz>
Date: Fri, 17 Jan 2020 15:16:54 +0100
Message-ID: <00e601d5cd40$c57d4560$5077d020$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQIMynD+xbowEAJdhaZlRW5oLPn7WAHgAcTlp3HrI1A=
X-Provags-ID: V03:K1:Djjj1JC8bomRl8usyBfRIscspKjHwWLWRo6CR3DHIPyxoOEsCwR
 rQ+8I69r3KUD24ad6CEMQu821jJzLrWUnjLLYLeDNKsXpmeRx7L+xBoc2y0mgws6r46i5HP
 FXLwGhfLVDOQNWf7cFHttFfT92RJdFHdW3E9HaTtCiUJJ6BpRfm5LqTns88UibLFWec90qM
 erRpJTMhynBha7jF1wFSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UHq54XZwWvs=:4BLblVZxC8Ykxpg3jLiPp3
 rnn9GI0dHs2PlvxH4jQe13t+au0b7PCXb1IEe26Q97dg/TaI5k8QOuAVFLb93P5zsYZ69jDFX
 KzwK0tmLxxKjHCqVTjdTa+3xuT6TWIgnsJIaHq5GiNeq6kQjwY2WuXWWoJxOntARhYwWDxW4b
 sXLqP/4zPeVWeTs5h6165y0nsVjJTV5/ECbQvhqAyMo/DKk95MIxrOxv9k3X5lsD536QC9wwK
 RBINV+RtTIJcy1pnQiNPJ6MjJsIAwatZfBRcx6xZGoQN0U9UXgZhUTzIcqkcrXa6hoU4Ve0E8
 Dr/wdAIFtNVg7m0psHXeJOOH1L493t0lCCPrkv7YjCtXSvEXPiFSwUYJ474sg9aYSHzpDiNTp
 pe2JN9b3jpRgW4XWTX5DLk+45u5SN3FFs7dEuA/2HzdHaB3nGogLPKuehTKQEN+uMrCM3rCzN
 Qv5VN6oSArhyvFq67Ol43H82ECzzjUo1RGZUrwH5+oRfuAUzuD9yANg5I2Flc7s6ZJQs0jZ5F
 uzfWkbR+ssa41mjj5L0ptVFUv6Hu6Nh1LbH6nNs3xoF6rBSO0zGrB5diDT3CYj4LG40ykGt43
 TkAfazEbRiK5z72PeHOn7xCQgckK6lTlw0Kj72ReSNVFbcPMxLtrHd2rPKbizy7fhL3fwba8c
 lGaKugMVOGdkun1b3Xvf7rN0NdrapnqXTF9qPFhrmQ+PFCYYrIKEcwE5dJoLiKn43aAbF6ZX1
 wKW2wM6F2vYVRaWZC78n4wYARuT62ykt7MGSmZlIvywDV73ze4FnDstqZ3fC4M/NbcMo74HqL
 kHPC9FN76RJ26NwCjeIDWThMolRv+moHvGjy7aZeETa3gCjAqgvaIcHtBCIrV0KUqMvgOjkbe
 efYg82fzOSeYnDdXZTE5FSxDmpv3qeN1qcqaPB5OE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_061700_467399_5DC1FBB0 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v4] ath79: add support for TP-Link
 TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org, 'Enrico Mioso' <mrkiko.rs@gmail.com>
Content-Type: multipart/mixed; boundary="===============8840837076599016873=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8840837076599016873==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=QZ/9cnDo/dJf5J=-="

This is a multipart message in MIME format.

--=-=QZ/9cnDo/dJf5J=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Filip Moc [mailto:lede@moc6.cz]
> Sent: Freitag, 17. Januar 2020 13:53
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; Enrico Mioso <mrkiko.rs@gmail.com>
> Subject: Re: [PATCH v4] ath79: add support for TP-Link TL-MR6400
>=20
> Hi,
>=20
> thanks for patch. Good to see support for MR6400 possibly going to ath79.
>=20
> Just to clarify known issues.
> The first two issues are both just the same thing.

Yes, obviously ...

> Problem with interface showing always as up with carrier is with eth0, no=
t eth1
> (eth0 is LAN1 to LAN3, eth1 is LAN4/WAN).

Yes.

I would adjust to the following during merge:

"- LTE module does not always come up during boot (showing USB enumeration =
errors). Similar behavior has been reported at least from one user for ar71=
xx, too. Turning USB off and on again will serve as a workaround.
- eth0 (LAN) always shows carrier as 1 even if no cable is plugged in (this=
 works "correctly" on ar71xx)"

Best

Adrian

--=-=QZ/9cnDo/dJf5J=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4hwdMACgkQoNyKO7qx
AnCgAxAAsATbFkb/xUYgqPpZN92m6QWE1qgQZ3ihHiB17cMEeyLTKkZbL9L7FIqX
+zbMnjdxw4zlVoUyH7p1AFkmE18bHcXWd4WV9jL8unw1iF1wyEDz2wknqjIpzNSK
7LoHL1+JTgpI345SHW07Vjfi8OmA1MODHMZsH5vXTV1oh0JJLCO/6GOBZzSBpNFG
blvamr1FW5a+RiiuY1V7Ek6Gw12s9ozCrRfoB/7VpQfdlppNsG6j0xxr+x7ybPKI
Y9yqDgapTyKjN+6o79hhFkN9yEoJ214UvboaVL6fjWG4WaoL38jNVMurQVy0RhhG
G07pq8c36veky0e2+P7noBDknO8Yrdhy3BEL/KDjcFwKbkNifPcE5ukwl3YVZJHX
udqHf5hIZEqH3jtukibEIX1LtAZIo8EZbXxeVqJx5DpLcYI8SFhgklGEmMMhVzJo
mb9Q8/YIq1sVxO9ibjBtAtE57YW2e5k56GYL4Z+VZVM8yCKDFHGHyZNC6gzYd1U/
WAJyw+t45xBGfbXk6xi4vs95TAGv0WoQCoYcFNCKs8CvjwIsoe/IZrGzu+GrVthd
7+r7fCGDxPPggRomfauc/zc+DmmLjLhScH+SWj/CRJY777jmnW2g+I0sA8tY4wlh
jda37bebdh+X3C/fna3/kYxyQX1G/U7AgetnOIZPoLIzKSciXo0=
=E7pP
-----END PGP SIGNATURE-----


--=-=QZ/9cnDo/dJf5J=-=--



--===============8840837076599016873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8840837076599016873==--


