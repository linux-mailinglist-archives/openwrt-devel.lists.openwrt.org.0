Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DE113D960
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B4lTJczoJKe4BwqS/XkuOdEWVyGNB1xZ9mMXPaRd7bM=; b=heDo6VA4tpVJrlKbDZAGn9k5x
	/kIjICKskYc4/erkWCUqdBMfaMFWLZGbj13nJp+zSfWb6JWzIJjyopw28RMc+plUSTjMpjcllgudb
	iQuz+qgXHSyAcoWbRlnqNcvjgEwZUCyvcnkxWTD2ds508XwjbEI8NohLZ8tQeGziKqFRmgGT7kTc4
	ABnHnFe43br9ajfkFhuYUUnAq7rYz+sQ0ilfiPwAOF/fpAD8Pru3BCBdFeMlfrxVjKecZGjgtJQB/
	nztPBRZ2f5w4EYsc/czhGyTO+xcfqank58T6OqWLML6tXOb9fNbQS3OHghFHVR7/TaAqWX7Fum/iG
	Azxu7azTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3kx-0002NO-Qg; Thu, 16 Jan 2020 11:56:11 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3kn-0002Mf-R6
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:56:06 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MoOty-1jPEqz2R9k-00oqDc; Thu, 16
 Jan 2020 12:55:57 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Daniel Golle'" <daniel@makrotopia.org>, "'Nick'" <vincent@systemli.org>
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
 <627b0350-dd09-018f-bfed-60c895c75ae2@systemli.org>
 <20200116090404.GA1404@makrotopia.org>
In-Reply-To: <20200116090404.GA1404@makrotopia.org>
Date: Thu, 16 Jan 2020 12:55:55 +0100
Message-ID: <014401d5cc63$e9ef4b60$bdcde220$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHi+TcdZk4plJbeb8nDOZGF6DxQhwL9fb/iAXcAVKKnrzDdUA==
X-Provags-ID: V03:K1:TTGCZkydc7c2WQmw/0VmfVl7DNnZqIeQJvLuom0v3hgRSwW9Kyu
 +O9vnpNloNAhAzJ22FuQSuB9ri4jrEQ7N8bHi6moju9yz/G9riYqZErKkB+S1B7TCpRJhzd
 AMy5WK4CHfake8CoWPD/x5IaLv492RXy7V7bfT0PjT2rhlD4v1fU4l6ZCEUjjcg4rCHY39e
 BGQaTT166miodadA46Iyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:U/255QtIfQY=:YPT0lilS4PB3okkKJ/92IS
 AiTtjHHCzvOd8BXkDjiOwj+0tLGFOBp3uMz1WOGbceuSaC4e3alNPg9zAl4e+nB4OWytzCpI6
 hSrBSJ7NpVxoEKkWA853OOGMz1uajHHsSdfP28/vffSR0y98aqgZVyHodXziN5KL52NdRfZZB
 CTmp15+wBReoz69r/OKHU/4Fk1zcs3j4N7FyI1hYJk1Af26ZGhcdf/w7c2Nr5huVYy7m+2WMh
 Q81x0NnvLredCTH6BDoGZetB3jzIW2GKf4qeuuQvSWSqg3XcL6lIrRnjdpZ/y9MXScOQsvlAp
 KWrbCranrRxksW1RgYbrWgAV6qY7oIIIp10B7F8px8XUJP/hcrGHy0lV9wtVyVugUH9Dn96pO
 IdI0hGj29dse8KZnhFgGgt0wYZvDttNDtW5sDKU8PrgbyCm8rbqDnNsSpi9EhgX2y8NrmMss3
 eQ/YAllJh+oz9YeOgcqqQ8ZeDauaPa01jbwGBwFUVd8cB1WXUwqEfNkOhJjci60KUUq+cizDm
 y1NGR4BUQdfIx+qAAhh1KBwO4pmYho2tpU+qQ7L9lpTYfz33YPWzaAbtrFYXKB2jQlaOS2Ro/
 Iz9RzKofYg3ha0tDulWKVal9wSsfwLzuZwF6asxLIVl65lgZoLC84qhy6vY8/9QcsTI06/jBm
 KzD6iCsq/q73ZeggYyjOXNrW5PxwUD5VRekKltmVlFkDVzaBf4sPYGu4x1ncCovxUo6zdd7Se
 FT24GmRKaM6ODgand2vm20qM79T7cq3oUgHEeIHaMgV5NDNpGQQ3AnyjS4CvzbrH/MaclLuT7
 1lI/MaSnTG2+R2hfXERK1UNLAzQqiMbyO+ir4ygTc5MwTQeWeA3sD5j/jCEcJ9M46THKJa/iF
 SegeFZB17k4YZmDZaPvMbwzCUmARc0ZfDqdIWhcEk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_035602_170824_B60758F7 
X-CRM114-Status: GOOD (  26.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/5] Add 802.11ad support
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
Content-Type: multipart/mixed; boundary="===============6161059354497062871=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6161059354497062871==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=6P341wVX1fAstN=-="

This is a multipart message in MIME format.

--=-=6P341wVX1fAstN=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Daniel Golle
> Sent: Donnerstag, 16. Januar 2020 10:04
> To: Nick <vincent@systemli.org>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 0/5] Add 802.11ad support
>=20
> Hi Nick,
>=20
> On Thu, Jan 16, 2020 at 09:08:01AM +0100, Nick wrote:
> > Why are this patches not merged upstream?
>=20
> Probably because nobody suitable hardware at hand could review and test
> the patches. Probably it'd be better to first add the basic device
> bring-up and then add 11ad support.
>=20
> > You always have to rebase and solve merge conflicts if you work on 60
> > GHz. :/
>=20
> I'd also love to see this getting merged!
>=20
> >
> > I would really appreciate it if this is merged. And if there is a reason
> > why this stuff is not getting upstream, I volunteer to work on it.
>=20
> Please resend the patches rebased on master and add your Tested-by:
> tag and I will merge them.

Since I've rebased it recently anyway, I've just sent a rebased v2.

Please add your Tested-by to those.

Best

Adrian

> Imho review doesn't need to be done by core developers, but without
> any public review/testing nobody will dare to blindly merge.
> Maybe we should establish more of a culture to encourage also people
> without commit rights to reply to patches adding Acked-by and Tested-by
> tags...
>=20
>=20
> Cheers
>=20
>=20
> Daniel
>=20
>=20
>=20
> >
> > Best,
> > Nick
> >
> > On 08.11.19 19:14, Adrian Schmutzler wrote:
> > > Cc: Robert Marko <robimarko@gmail.com>
> > >
> > > This is a pick of commits from device support PR #2417:
> > > https://github.com/openwrt/openwrt/pull/2417
> > >
> > > There has been a request to merge those particular commits,
> > > as they are required for any 60 GHz capable device, so
> > > merging them will obviously make things easier for other
> > > developers.
> > >
> > > The credit for writing them goes to robimarko, I'm just
> > > bringing them to the list to speed things up a little.
> > >
> > > I'd be happy to receive comments, Acked-by or Reviewed-by
> > > feedback, as I cannot properly review them on my own.
> > >
> > > Robert Marko (5):
> > >   linux-firmware: add wil6210 firmware
> > >   mac80211: add wil6210 driver
> > >   mac80211: add 802.11ad support
> > >   base-files: wifi: add 802.11ad support
> > >   hostapd: wpa_supplicant: enable proper GCMP cipher support
> > >
> > >  package/base-files/files/sbin/wifi             |  1 +
> > >  package/firmware/linux-firmware/qca.mk         |  8 ++++++++
> > >  package/kernel/mac80211/ath.mk                 | 18 +++++++++++++++-=
--
> > >  .../kernel/mac80211/files/lib/wifi/mac80211.sh | 18 +++++++++++-----=
--
> > >  .../network/services/hostapd/files/hostapd.sh  |  7 +++++++
> > >  5 files changed, 42 insertions(+), 10 deletions(-)
> > >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=6P341wVX1fAstN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4gT0gACgkQoNyKO7qx
AnC+xhAAw6Rd98dd3DLYRRQ6MovLjYcYaOUJngIYajm+mLO9LQJhXNypSYCuINrP
/qM1ep7MvtlhVr92jtHQAGFv1p7+oSCC14TERx1neiyiXqHZS36seB1MBee9TmIl
keHInuBCbVNxQTQh/tH5J6d6sc24Uu5Qf7GrFIcOcbUv5S/m6FJopCUQ8upZbn07
pr+cDcDO9ZkWLMHaR/fkiXTa4YfLgNrwjjrTUtXic47HjM0OFPAPW5b5RDDJUy1m
KXmNP5ADfHRZTrXkua0Yr6nJjaOfFYIcAskI4Piy8YORaPA80oYbEVvNrcu5oNmt
gomo1ampAIX+dhCqwiaaksbeR+pg4PCjSC32QOAyas2h2evSk9jYglToffc8NBrT
5Y5usQ2Dh1F59sHtO+I97cDFOVi6bSPEF8/2coo3d8gFo3bGf0zH2yHu832998/4
AlRAELH56CguF9Q/PyRwcxZr4iIfoudWajk+c47jCkByJN3wKBUjShQDmdGcklB5
Op4ojSz+j1tvXrAKoDWkuyzywkF/mwlLUZ//EqVGFIlMyICtegTq2L2OHP+EBPJ3
rwLF1VHu6zYjzgCpFenoTmY0oj2c+ksjjsRNCHF2W/oM6WObifIRPjtIjTqKncpt
93rF2TSIWNsg3MjRu03n/UYww+51gIkuQma4C2payl+meX5kDS0=
=qY2M
-----END PGP SIGNATURE-----


--=-=6P341wVX1fAstN=-=--



--===============6161059354497062871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6161059354497062871==--


