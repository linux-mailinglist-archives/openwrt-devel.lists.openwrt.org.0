Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBF1FFFA5
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 08:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2jHF7Vme9uQBycvTMyFrw0S23vYH3wzqaCpr6VURCtI=; b=QhEoYHohqPW0aKRekzunj3qL0
	dYo6mX6p0IUT2KuP/PQjzlz/CZm992j7xBaXrE4v09ggbkvebqbERk605q7o52EBmY5+qu2bf8/T6
	bqmIHdb5r7NtzTptq6YIW7/d9OPpupp9IX/tEtEJrrv+HJDG4a9+boeV7V2va8WDzb0KbOZllkWDw
	0+kJPv1PcW1LQS7HrV48mc/FxovbMdEaoD+1CdwB2Nmj2yeB2Q9ST40/ticoD0E42m98B9ZlbkR0I
	v1RCODR13Ovf0ycKpKHgHLFjtI5lGMrn1YBH443fkhkrLfdQsv+84eRhVMxX1mfJ6wTFqubyNoJ8G
	h3R48BRAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWbbs-0002O9-3J; Mon, 18 Nov 2019 07:38:08 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWbbl-0002Na-Cq
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 07:38:03 +0000
Received: from t480s.lan ([88.152.169.61]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N9dbx-1hli3a2O2f-015W7K; Mon, 18 Nov 2019 08:37:55 +0100
Message-ID: <2a309c509660b5ab428cc5cccb186a86a16fd4d2.camel@brenken.org>
From: Dirk Brenken <dev@brenken.org>
To: Daniel Golle <daniel@makrotopia.org>, e9hack <e9hack@gmail.com>
Date: Mon, 18 Nov 2019 08:37:49 +0100
In-Reply-To: <20191116162706.GA1274@makrotopia.org>
References: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
 <20191116162706.GA1274@makrotopia.org>
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:tgrHLz3Q2oySzFtyYwHbdy5R6qij9/69TJKrLp9v4n/ADdsxWli
 dGB6HyoqIrnMzZMZ83ivi00YiLBjjBYQN2wyjczBa2qTxTYoWxexTYnguxBOXznM/5CloVm
 nj4M3G+Ie5OciDu2ejSKySu+rfiGMNDYIvex28r7USPugvrRP5IGYqhXNn36rBTnhSwZJqV
 Ey7P6kxMKKajhhReh0hWw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BRs84sOphlc=:TH4A9Wb+xw3eYwDYJN6YJD
 +xhPS94+9lO20QFGOjYCN8ElyPOImQcgRv2JhI/tkpzDQmwXRmYt4CACih5uE9ywak/GzdjAt
 2fglhG3pnwQNOqKCfzU8runMZ69eMnx0BW8hQ9G0OJyJLGwO7TnLtjmsK9TkMbfrL7cqHz2kv
 s1fYkUpprsUT+tszhGtmTsVTgQUophENw55sXnN70EyBvnUXVwLN8tqmQKDQW9ZtcipygGOov
 rg9lTrfNhknPrdGOdp+6OIp1/i26X8GB6JQAizXcpOidPhyi7iTOBcNyt3ZSc0j7fPqCIPDTT
 LUF3DtZIG7/ARAaFiMl4yFpV378ehyCv4yU/9EWyJqKH+aTfSRe2BS8/izYYZkJJpTs56bkSm
 3ZpxEX9xYqweAcCJn1PGG4izk5pCmo19nwG4pWy4svLSgk397r+lZ3MIOr2fbSi58ZfT3lktL
 fPu6V/oTKoEcsWQykkDfjYuUOSJoObio7dDkkgAxeHhkF1ui0tg1jsom1P1O15jWHZY8ucd8w
 TOdLOa0ncRwShRopgKKqow55uRyOhnKYMs9th3dHbCb061eq4F2c3Q5dQAwBVSgOCZzHnO7wC
 QzBsbL9dJejWE49ZmVKu2IM/w0SI+DrTVMwlKa3fD+PbGvhtEUTq+kEwUKA+ioDzFFGJclAwo
 /H0Tae7CyaZxGqHwb5uThJVs+F2GSAtouJHfcV5MaHk6Cu6mcOM2kACzQlgCU0RR7dQmagNoM
 Em7w/88p2A8L5KxqJCAtpydMTA4lVKJ0359QOFT4d6dYKiR9FmK8BC5jJEI67qlp/BHv21qGY
 vX5teuZukMrg5LOqeilHtTffUxNtQjAQq02PFwOxknIgX23vLhG996nNDa+2VzyORSywmLo+j
 dEo2HAXKTKicZrWUlgHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_233801_758436_F78DAF28 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Wifi is broken
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
Content-Type: multipart/mixed; boundary="===============5702871944933734635=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5702871944933734635==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-nEDk33Qw5yIAK7CjKUws"


--=-nEDk33Qw5yIAK7CjKUws
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-11-16 at 17:27 +0100, Daniel Golle wrote:
> Hi,
>=20
> On Sat, Nov 16, 2019 at 09:17:08AM +0100, e9hack wrote:
> > Hi,
> >=20
> > this commit
> >=20
> > commit	000b7687bc50be5b0f1161f4bf8ceb85c495c395
> > mac80211: restore mac80211_interface_cleanup()
> >=20
> > breaks wifi on my tp-link archer C7 router. After update, only the
> > 5G wifi will be activated. The 2.4G wifi doesn't start. I try to
> > recover from this by shuting down and restart wifi by executing
> > 'wifi down; sleep 30; wifi &'. Afterwards, wifi doesn't start
> > anymore. I modify mac80211.sh to get some more log entries:
>=20
> I've reverted that commit and applied a more sophisticated fix
> instead.
> Please retest and report if that works better.
>=20
>=20
> Cheers
>=20
> Daniel
>=20

Just another nitpick. Could you please expose the new "reconf" wifi
parameter in the wifi --help? That makes it much easier for external
scripts to check for that.

Thanks!
Dirk

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
>=20
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
>=20

--=-nEDk33Qw5yIAK7CjKUws
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvk9F2uJ4OsaK+T5unXHNVHv65oQFAl3SSk0ACgkQnXHNVHv6
5oSpGA//SvFQyw2SRIxaq1dnusn7nHpYsT6HgG3K4DA7q0w2vb5vrHuYxSpW17XN
cXGL/msM6I8y5TVU54xgRsZyRqMfFiQApc6iyZyiHqXSlYsiznKIAmPONvCjdf/x
kPqMxv6HfgChsyJ43ESNSSp4VnJeBSoHjK6457Oyg9qflhVllPM4FK11XOk0icQ2
+sxP1yKRi66k75B2HTabQpVQrpWaGxUQr1tohiSlROJ/n6SCs9zg+axkzGvZSqTJ
/0dMIWHVlBAreG1kJWwGCowpU0rI0VZBppVPm1p43kK6SB+uRtTzJHWIfeQz26Mj
Opou/NFKvETK+ZcvOGp28wWhmRhv124YipXXnjHwJfMIPgiz4H4RWLn9zf6aQr0j
cxKAOdXNZ3tsAGjGTx1pE9GfeG4J4x5nRSF+FjRKGSXO6INuMU4NWcawz9nN38hU
aYo12bRT62N0Q9MHLuZc49Tq0nXl1KBWPXKfVALuc6+8LgFkQGVbOgC/NwklqrCq
vvYLQd7ouZpJCw5sNQP18DOmXIRAIsObPZUA21XlaTewDI5ORisQwdzLFfQCirca
lpvJyMIEcZlLlHLWYeu9xNkc+V6FD/ajrQIsfa+3l2zoNI9ese8mTc/Idonpdws6
mZ6p8fvFDUbNedp4k+Bv9bZ3Zp1NeHgnlL2hvI6W22ljfsY7Zrk=
=OBVS
-----END PGP SIGNATURE-----

--=-nEDk33Qw5yIAK7CjKUws--



--===============5702871944933734635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5702871944933734635==--


