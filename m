Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411461B1732
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 22:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yps9SO3g9itbvbOeLr/P4Hr7FNlkO5+7Z7m0UM678BA=; b=nZB1wVCtbdQ22Fz2KlJMX5JpL
	PD7AcfwEdKjC09jQdCZrWo+MN6CaVizusEEd/SrYtZeDICTk3VuOJLDcooKJ7VYP0b0R9VsolcN33
	DZHK8NJIdKD83c3fUs0w8xIHWFbHfDCnR3A9xlzMwk3WpXpH82IZ5ff4Rs2NzgFzlJpzE8Ky6I8s2
	tMFz8pXvhh5Sf/EnqJzS906GVe/8YzquspJknnprDcjDeyyY5uMN4CHuZeME3h48U4oRrCw4yJyNK
	jT0l7ecli2Ddamb6w+K+wm7ZZNoEwRnvR4MjrTinhGdsp0BuqVeFqXLD5it6fk6hNNhk5vP/0n0e3
	1zETexfCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQd6i-0006Yt-7P; Mon, 20 Apr 2020 20:33:32 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQd6T-0006TJ-JU
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 20:33:21 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M3lHZ-1jQLqz2ywN-000sYy; Mon, 20 Apr 2020 22:33:14 +0200
From: <mail@adrianschmutzler.de>
To: "'Martin Blumenstingl'" <martin.blumenstingl@googlemail.com>
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
 <CAFBinCBBSU-Q7PgwjkctcosS4H5+ndnK0umb30RrR1gfN-h3gw@mail.gmail.com>
In-Reply-To: <CAFBinCBBSU-Q7PgwjkctcosS4H5+ndnK0umb30RrR1gfN-h3gw@mail.gmail.com>
Date: Mon, 20 Apr 2020 22:33:14 +0200
Message-ID: <033301d61752$eb104f00$c130ed00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQDU+1NUOd+JjTb0FD0iKlF0sWiNEgI+8AD4qnK1YgA=
Content-Language: de
X-Provags-ID: V03:K1:xOnZCEGf6iGK8VX2S+jT3apLgcNLj70IBJY1Vc3L3ZRbLxlm8p6
 UftLtfEZmHxsJEqWN/V5RU3/oMnMb4zTe8Zc9TQR3odWk3yPYZRbpNeDB9Vw6RIedcvrt9X
 AN+OAHFQ2O5+nCg+T4NQlu/WZ2j+FevNMu7I1Lqx9m1FclWe2YnkhGzPXPQPYuWI4TPptFc
 G2bjCjw2phtlbAaZBJ2Hg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dxW3Vy1zDtM=:eyjdmUWg/6Xo8XVYJzcOSK
 iydITLKCOAaqTgyZ0y2y9EbQ0bThUggS3f8QPS4OulQzAzVOBi7reOkUImyj2qhcB66gIMD8o
 U6Dj50KRIuEYOUmIu16sZdZ5z+FHHq4TrWTa7t0Bm9KIpzNVUUq5MMxukJO0kCG7TFXCevAG0
 +XfAtfJoAVn5qoHWpKFfxq0B0ngHcxhxuw0+iXEj8QzH+IeVnd7IuTd/fZNBGMOS10egBPAHV
 yuHaYK7GunT8VbP3PWPpFTAiGMztoHKPH1kKGUK1kAwfmpVt+sLh2oh/D2BCxIToVmgqB/LBd
 oZAZN4rQGN9VBfF9nC+4RLvFoLcZXcHMZwx0XWntH/9xNzkxnNjaCt66BP+iZTOJwf7P+sdM7
 8SKmOhjclPAAVgy+KyapPDsZ4HP0bg10vaUcn1aIS4UU6NR/jcWnESxqYcnpbTYvMyWlpTEy7
 JqDno+NXUM5DkZ5KT1uyWW3dqpeftxIkxTCkFTiLpKOwOqYqmDrdWbDuAiZR9PuV03hK+E2pg
 PX3DO878DI1u7KPCn+2pmMRvHh1cCQ31ED6ndddMKL2pBsqHUZfS/yhTsiIkIGFbxSqWXysSt
 LEtUbWbqxz6kbPiiirDMVQ02PJdRSmq93yHNDWhkZQ/KRG3QKLEsKX1VU+isdWMdnlXT9zKsk
 yaAm/2dkvad7cGrsR3eIi8DtFHGgR3Cqg6+E8qz1XLw8sE48l0kKqy8nvIMeH4b0oDQJIbgKm
 XTgZMQ5MTi7OO9AMu3m9RRsYV8vP0HrN52jE0eo+ATtYdF3diO/50aI4qRfrEm7YU9VuOQxAa
 3fh/4DZn/1bgCOix5q5XfgZsQmrXwtwKXn+JRubAHy8Vuu02eaC35s4oB2tlHeNQs3C2Rxr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_133317_942606_18C154E0 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
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
Content-Type: multipart/mixed; boundary="===============6430439906113096793=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6430439906113096793==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=v9AjmINwmRWoDt=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=v9AjmINwmRWoDt=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

> -----Original Message-----
> From: Martin Blumenstingl [mailto:martin.blumenstingl@googlemail.com]
> Sent: Montag, 20. April 2020 22:22
> To: mail@adrianschmutzler.de
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
>=20
> Hi Adrian,
>=20
> (sorry for being slightly off-topic)
>=20
> On Mon, Apr 20, 2020 at 9:42 PM <mail@adrianschmutzler.de> wrote:
> > recently, ramips/mt7621 has switched to DSA and mvebu [1] and kirkwood
> [2] are waiting for it.
> are these targets using any migration scripts?

No.

> my understanding is that a migration script (or rather the lack
> thereof) is preventing us to switch to DSA for the Lantiq VRX200 target o=
n 5.4
> however, if a migration script is not mandatory then I might as well cons=
ider
> switching 5.4 to DSA so there will be one release where many targets swit=
ch
> from swconfig to DAS

As for ath79, while many people agree that there should be a migration scri=
pt/mechanism, it's hard to finally get one (since designing it is a much bi=
gger problem than it seems at first hand).

With mt7621 having started the party without a migration script (as this wo=
uld have just stopped the whole thing, I think I commented in the PR about =
it), others followed suit quickly. I do not see why lantiq should be treate=
d differently here.
However, note that this is my personal opinion, and I cannot judge specific=
 circumstances that might apply to the lantiq target or its subtargets.
Again, personally, I do not expect any substantial progress on the migratio=
n subject - at least soon -, so I do not think we should delay kernel bumps=
 (which are complicated and big enough for themselves on large targets) jus=
t because of that.

Best

Adrian

>=20
>=20
> Martin

--=-=v9AjmINwmRWoDt=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6eBwoACgkQoNyKO7qx
AnB60BAAkn6YEj6+EhDYsMC9k8n76HuRRLdoBQbEN/2TIFwbMrl1gfC07wEASCqD
4uJ7+KrOn2gep3LuAodGX32KScoCY93PML9wqzhV+7TNlEyfNb5C915EoNab3vpM
RwAZcnDHT3iyu+umq9Byp7OVu4sG8K1kT4uYp/1MnpMqsAvot47X1H8sc79GiP7m
04p/UhbUHwQlFw9DnRBYsVeIZBILpkH8Dyqj7QGmQQnGojLhWLFcOYV+kuBtYPUE
yUckEAFwqLbfborzCZ2jXPebmA+RTbsF1Ozy6FHsHnZwEYB5cEUaW35NCFM6wXOS
QHM65b9u42Rm35n9lJGPGP/x58Eh8X3jwDXSxTofvsv5O7qAs8CsQ0lnnVGA6s9R
dL5AN8WlC1HqRXpsdNQQ1Sd456nWXvFlT55a3atVQpbvDnoNMFOD/OTE8igGn28C
E6TZvF6f9SNVvq90TmG+GbjbsuojCAbJZKuTXUfhDrZ6SCBAhhxiF5USFb9KdhrY
2FdJ17EpL0CXYPBPbL9aX+IgZZ3sC5xZ2oEtWgmp+6e0/IPz/1zl14625u/+Xi2X
aRyZuUXqDmjmFU+3PnzazRrKan60vW0Py8im/rnXlrXz4SuNdr/aYaqmuivLALSd
D+kyIGeJDFBRdacLvMz3JZGWo5QpzrAI3zmg0+k3bUzGBU82hDM=
=Rv7b
-----END PGP SIGNATURE-----


--=-=v9AjmINwmRWoDt=-=--



--===============6430439906113096793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6430439906113096793==--


