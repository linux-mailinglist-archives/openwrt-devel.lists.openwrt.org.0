Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24970852FE
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 20:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uqF4NMgJAda0LurrJJZoOd1Rjs9rIqFlLpglLEctDq4=; b=uFcakHGcCGssR8/qYVGdd3q3h
	H4DO7xmitCOVSDfVDiqjFCp82TBc8gAIWbMCLej236CdS6qZh3TjJups/5E9/8a2nd35FImgoKOlK
	qZ9s92eeBN4Ktvwz9PBgUt2aMb527idwSZgEyaKgHpZE+asxHymtE7WM5K+OvdBjLeLiZxy6NIGnJ
	aM/esA9rtFg6P/74lr2jIzNbDGrzTnyvFPllSmGKYdu45qHX4ZUOIsaRQXh7mU5e0q6MaRReGhx13
	cXFwukHG6BuLXQm4E7LKizuZHYCHqXVQaWbU+646uvYOKmbwfUSfuHXUBHmSoLrqwkx4H3xEhyEJG
	RIbsw1x+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQiu-0003z2-3V; Wed, 07 Aug 2019 18:31:44 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQij-0003yK-1z
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 18:31:34 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MhDIw-1iYbIJ27xy-00ePup; Wed, 07
 Aug 2019 20:31:29 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
In-Reply-To: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 20:31:29 +0200
Message-ID: <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJfXR1+bkvErjfcpfU8tI79uGyNTaXb4apA
Content-Language: de
X-Provags-ID: V03:K1:vreBnIDbh2BDyc3NIYpdj5v5kMtbpuDrGquASRr7eAJf76W5COj
 l+0UBmyumGxwvqZ79SJL65yjZNmH9MfT0wGZQMge5jZhDQaBm3N+Du1ipK/XZiSstcHPCkK
 COlnwyaOhIuBNVsMd9XVorA6RlZ/OGfCEfpV+eLjCkpFDYLidXA5eek/LFXIp5na78bZC+s
 p+muB16sXHMCjjF/g7C3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kWAU0QlKFGs=:oXtzjSZ9O7QbFjPDlktx/c
 INakmekREeezA7suVNoyKa+IImg73Y/W0bbA1fSUVEDGeDpRsHH9E0Z3bDxFwDaNtf/81v4k4
 WwFyvbIQq5wTqkSoFgMtpBc99PZlwrDKqL8eVoQAAA0pLSZoQanpzT0/P03S4bryeSDmmB+TT
 1SVpBHe1B2/KBotd1JE2kG1Iv/plLpWiVQ8p96Qisq2P3YWl7D3kHkO185qkHFpOzWae9ZjOM
 N6R3i4l7W+egN8aE7xXzyGBXM8sZq2iYrFO/cr/GlX+P/3tFU6fejiBc5g9Ntg/0aZHVyLDpb
 6hZmYm7401PYd9kxG2VtNgHd6u0wH64JGFB3qEDJ2p7kThSlyPrlJ1OmJ88f5iugOJ3psN6h/
 /asqODQVs5rXMYg01TxoMlfx1z+6QkPyif9WVw2kspsSLAKaLzjgMsZlFmEG3NxuVUM9+gKgD
 kRIgRouQsebpMPOwOJOGxM7PNaJ5xmp+frN713b4WcvS9JbcXAjfKvovg+WV3++1HHk4vVMTU
 e95L+c4ntfIvh9/lnZOHbgQewV14/MtNFe2TQe9TdxgSXBL3s5LtMPdjgUsTqJclnGF7Qf8iO
 r9Mw/xRRCaoiwbp2yq0dCSgrLSvGPzdzI1aZ5Mw/2IF7IYi4cPju4goh4QluF6VY6s2plUZOa
 FwQEsidBQb3xTSOO/HPNBPcqJkUSTci21G23VTiBb0FvLf0QAQfWX/rFY8JxumpRn+R93HjTt
 C82OBHFwF+z5vhCvEdYV0//+/GHcNAR0dPkSBL+hOkHWVkpjtoRhz8QTJwg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_113133_397140_E7914A65 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============5858192466632600964=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5858192466632600964==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=OWy2PGQTStE3m2=-="

This is a multipart message in MIME format.

--=-=OWy2PGQTStE3m2=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Dmitry Tunin
> Sent: Mittwoch, 7. August 2019 19:55
> To: openwrt-devel@lists.openwrt.org
> Cc: Dmitry Tunin <hanipouspilot@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800 (C=
h)
>=20
> Add support for the ar71xx supported Netgear WNR3800 (Ch) to ath79.
> The device is identical to WNR3800 except NETGEAR_BOARD_ID.

in commit title/description, you are using "WNR" instead of "WNDR" ...

Despite, from a quick research, it looks like the device is called "WNDR380=
0CH" most frequently.
I would update the name accordingly.

Note that you also have to update to DEVICE_VENDOR/DEVICE_MODEL syntax ...

Best

Adrian

--=-=OWy2PGQTStE3m2=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1LGP4ACgkQoNyKO7qx
AnByGRAA0UvOp4HrAch9HHg4IHweNKQo66zCorqB/7tWOVo8t+4ap04m45ygjBLP
x915/5NYzIwDxvvkMG8Wm976PcJZOmV5+R9OAJtjuQhrLQwxDqHjK58ani3Vc68g
NptISVVnvNdCyGMzB81K5yJStCKUyRfXbTUYlvyxkjUzM2/Kg/Rxxa8OBl3mu7Xy
eFDN/qFI2ggjbF0rA9+WmXJaz36d+zjewhiuhAU52s2TONh4PBM4Wg+Z97Ul9p1K
6gLNeYdF0psX1yg5HIM4Yj1GOOd7cWrKVZH/qupktr2aDBK0ou3aXCQh4WMXXPeq
QaoJDfdaL8by9FuC1zNpko2J3M76VGqnpbMvLI7zQgVXj7XZls4TIysWiHpL1aXS
7qkFwg03M0TcxLliQTQ3ESButW4JH/NICgfb4oAbZh4qmjBQRsZiUf4jQ33L6ETj
vcPzvQgZL/zXtZ7+k4zi73q4eTJ303tMph88LpjXAw906khW+pa49CJjdvmSdvfa
M8iUaARNl2RTMo1AStfrqkUxGsWUF2MzTnXvMCsZATIGX6YtdIGCJgSadRGs4fUf
Xwgin1MK3G2IKNW0IhooxTAMTH+ZJ0sHEMPCxGMhwxkYn9pM5+hqbDDXIIBGE24Q
11FEE914bRFa5cv4em/ANviH7A5UDLgfKUJwuigPdIqJOyXq57s=
=rDVL
-----END PGP SIGNATURE-----


--=-=OWy2PGQTStE3m2=-=--



--===============5858192466632600964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5858192466632600964==--


