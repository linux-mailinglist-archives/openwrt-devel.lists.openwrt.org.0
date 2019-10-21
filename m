Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9003CDEC41
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hidv4jBJTne0uRjs0eVZ3SK5lqQM31uyZFu/Z3WmR38=; b=j9FOuK9ntgi1V1++92F1vMcO7
	YVBizxn/teu+dAu68C3H2RJ57mfwPUnkynPMvGCgeuf7cu1RdPn17CfDB3ag1KrlaAiwoP6Z30SHq
	lg+xUyzMcle7WkK3ezRIW0ux4WaoNnwDTAaTWz3KxQtx1e6TBR6HJygRXP1ZfL3vB0QPSmUqCASJe
	Xs5zbkFkpb+nokH3aGabKlIvlLBcEoScraKuj3ZP8RzpiA793saFlYYEcydxLK6l5vQsoaGxvSAJM
	QyHkg4fi4THAJ24T7jNvFmBwkwCKtpJ+K23CzeimLf6qECgMkQkW2dN92H2u6ysBrBC45uZhs7nWK
	PfbEp+GGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWq7-0005RV-2U; Mon, 21 Oct 2019 12:31:11 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWpy-0005Qz-Mo
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:31:04 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MXp1Q-1iWU5l2rFM-00YAdu; Mon, 21
 Oct 2019 14:30:57 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'John Crispin'" <john@phrozen.org>,
	<openwrt-devel@lists.openwrt.org>
References: <20190920120303.3295-1-freifunk@adrianschmutzler.de>
 <85fe384e-cf49-a1a7-da6f-dd26f239c6bb@phrozen.org>
 <36a7b598-319a-b70a-0c1e-8279cc5fd37e@phrozen.org>
In-Reply-To: <36a7b598-319a-b70a-0c1e-8279cc5fd37e@phrozen.org>
Date: Mon, 21 Oct 2019 14:30:57 +0200
Message-ID: <010201d5880b$63c0b890$2b4229b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIN/iRIOEmjHMxrJ1Xhiv334ClhtgGSfkVrAs+7s4Gm0QcP4A==
X-Provags-ID: V03:K1:Fm5jC32g3VcXRhSuKqFGxskRN2mXm0vphM+g2sBMtRZodveoH/4
 GRLdoXfqWlsbJOhl1iDOomFhLm+0nGtwCCCPtY2PdOJ0zmOIl+UwMiTE/GqrIR+y5W85D//
 HrL53rH4xDla1Rwp32sj6HyNKPyGob66ClvDb4YHcu4QsdXLLkhREiXS3Fu26zPvBsxFwcu
 9B3abj4cGsLwAAuhPiCmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:b7TriPEPj9k=:GjxkCf2nj75sk0qUQ2UIFX
 9o57upErdHmVPbSBFS/Emi02qQ/i4eZ3tvQ9Y+112WaOMfFW0H9kDl199be/TH6jQ2QPSqsS0
 xCY2/z+wHbzFwHTiKEM3xhQfiN6cA15ks7yq8TQg6jN4PBAzvgDaT+bWvIZKDNa9MFor1baJc
 nW8e7XtMpKSOt4bbajnPHJhSiKTieKbwJtpKXuqaIKviuMF6glyZUwvtxf77wio/VbyZGN2tO
 WKFuNKH3ritCaGhAJBIPHlqX4iQIxBC2w2ZOHuCN50tHYcYyAYu92cejfuUjv4aYSRmgkv8/k
 yFLAeELv7BiEkNjzDuOgGDbzWeEZIAR+mEgSv0hOQQJ7r0LUafWwbW5mmeOiWVBiajIf7hLGQ
 PBTVYt02L/HdCUZTV/6ybI19URG4wpZzgIB6UtfUABqFZw7h2t/GHKuz/CMalTRLhPMZmtx6s
 5Z218KmGHvEdrhXtUK7F/hb07if4jbUyFooE2Vu8nd2rRjOoGWVk6jsgk9kX6Z0K2XrLAYoiO
 +CDHzOqDyxxihy/Xwi//cCaTJ+HBGcpr9EFtyTFKTSoqjQlBzk2ZO+xwBzPwqIrsgWNgb9lES
 xxxNYZlg+oZx+bYvFQLuJM6xDdFHkOUHohYlHGcMOYiwRDEUAhsySWrwyOdXwH38CgvedaQpq
 KxIrhSmyW/2fJUlXJ9DngxNOt/7i3U1csCqrIlvNtOfEH+EsD5xz8iHnBGZg/tBgyRHpFjaUy
 VbAi4lF92A/Il9jdMaffRksKttS1yrEj0I6qAgU9/7djNdnkUHKktmDTVv6IWH3A62Jq6JCgN
 WLiQsx8wb74tH3ildbHVYPjT7LM5VoQxxIS4ZivCtvpx3iDYhyOE7pKPuXtm8p90ZDyTr884p
 GUjVFUVbtxEVYRF9soa+pZEAu2QAFQrW8jJ8A4bdY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_053103_033666_66DD1BA2 
X-CRM114-Status: GOOD (  12.74  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] ramips/mt762x: convert devices
 to interrupt-driven gpio-keys
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
Content-Type: multipart/mixed; boundary="===============2351478493194934521=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2351478493194934521==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=4eZOv6/wU0d1lc=-="

This is a multipart message in MIME format.

--=-=4eZOv6/wU0d1lc=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi John,

> -----Original Message-----
> From: John Crispin [mailto:john@phrozen.org]
> Sent: Montag, 21. Oktober 2019 14:19
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-devel@lists=
.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] ramips/mt762x: convert device=
s to interrupt-driven gpio-keys
>=20
>=20
> On 21/10/2019 14:17, John Crispin wrote:
> > On 20/09/2019 14:03, Adrian Schmutzler wrote:
> >> This converts all remaining devices to use interrupt-driven
> >> gpio-keys compatible instead of gpio-keys-polled.
> >> The poll-interval is removed.
> >>
> >> While at it, add/remove newlines in keys and leds node where
> >> necessary.
> >>
> >> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> >
> > Hi,
> > was there not an issue on some of the older ralink silicon versions that
> > made irq unreliable, which is why we never changed this ?
> >  =C2=A0=C2=A0=C2=A0=C2=A0John
> this only touches the mtk silicon ...

I obviously cannot prove that this will work on all devices, but I have see=
n several device support PRs for mt7620/mt7621/mt7628 with gpio-keys workin=
g (=3Dtested) over the last half year.
I intentionally only included mt76xx here, as I have no idea whether this w=
ill work on rtxxxx, and if I remember correctly 100 % of them still have gp=
io-keys-polled set.

Best

Adrian

--=-=4eZOv6/wU0d1lc=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2tpP4ACgkQoNyKO7qx
AnBGRhAAsgVVs7k8nEEH7PVaHJ2n3infB5yh88yMTbskkDIyY7mhekhqwkrzsOnC
5t0S3rh3mmvC1YhGhYTAMbk/p/pdwf7bQdJgUYwgfK0+mD4kXqlgyTFKk4tvOXdX
HZBsupx5LiZfS0QHVOqkL0091hC1eRCj9yW/qc4r4N8RfiNuJxW435rkq8/Bkw72
ZqZKzoMVJhYbF9HAemEwmahI+cVRKIr2tDmazccNE1sCRf6nU2w1JgsF8al1ML4Z
1xDw5GWfeqr0sE13o1ccaamcsq37EklG7cg7dytf5HZO/OePRd0No54M1AyXf3KM
xDQedmZ/u3BETQVQ4Hn6odFQp7ZYUfq3VInO7kmxtcxiC0N0c605GHgIgN4315fM
R4bMWGdfa97ZobuW+GYNceHNWkPrOQ83cvWhqhIr3xB+WgqtCQDvKiDzOKLMx5Mr
c0suNyC2wztnodMuowqAKhwELsWQSunuQdiszgEt2EGzWVyZQkZsi/mme7/8gUfo
1cbUHh0jJYTglQ4DOiVGb6vcUDUEvgoH9vKhyrSeITFKD9kj00Bzqp5F1GQ1qqpm
QcOxdRGjDTND/iVE6ufPmtafOKLwJsWf4Xl4D+rQuzn2eC7bMQxlmccoVNDl77mV
H9oFWiVbC3tMRpH5usPjTC1qXMD3Y8dDBbDvhEiwd4flksArZT4=
=NPmC
-----END PGP SIGNATURE-----


--=-=4eZOv6/wU0d1lc=-=--



--===============2351478493194934521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2351478493194934521==--


