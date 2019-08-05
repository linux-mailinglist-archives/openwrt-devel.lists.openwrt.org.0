Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF14A82157
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 18:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ymdk5bJYBMkhnMom7HUHPGcJHQ5DeaojE3Qsdy/4EB4=; b=bfRue5BU8aLCUuReA+nf9fWBq
	JYqK/uDVgXohm22LgFM8ubsnBAXfuOZpYM7oRj21QupyJCG5HKXMlnA9ZSsu6f4zZ+1my17tHAQm4
	Kr8b6Ejj+AX0GAVY7zo8WXujTUHwBz15PRJ3yaH9W0jWkLRd8inKiksbUQ0OCFWYldpWWK0RRDj+j
	2C70y1hFvlo5q9v4PyFRKrUf9gSi6rYJ5tsBoJjSMq8oewUGIuVGB5Hvz8JDEZD6flwLl+oM2YXJ1
	HQ5bdDFEgVkQE4VedzZMbgJC4cyrxlQsTUgt6WA3rjUOMAWbH7tPKq341CULzcjTR+C060tpyTQiM
	SLSOd1Yqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufYp-0000sq-Td; Mon, 05 Aug 2019 16:10:12 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufYe-0000Yw-2c
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 16:10:01 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Msqpq-1iA92f0Ey8-00tCaZ; Mon, 05
 Aug 2019 18:09:53 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
In-Reply-To: <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
Date: Mon, 5 Aug 2019 18:09:52 +0200
Message-ID: <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJBfM1NZ79tOwTjV9JMAWTB41mHwAEp4l6fAUlxpxgB63ujz6XxX+EQ
X-Provags-ID: V03:K1:w/VfLAU+VZMYQFY3/C1401jpGTTQ0matwZR+coCpBfquFyz+bXs
 hk/8ZNC/h9udp31h/vTkxMLV22lyCP2sHS0as4b1cLnxP7SXDLnAqu1caG4eBS6K0Afd5cK
 igzX1FRK3uEQV5OOgTsQnrE2dC6gViK9jyEa5MRJHZU59WdsBn0YPvNWAJlnA9mi5WJWDEI
 rC9o2ae5GeysgbaZIj5ZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rN++VMGvvQo=:n3KSBNMw91xVbZoXqX2mXm
 1wcDQw9wg1zn0JqK9IPMhxTZIQfwn1zZ+tZm5dNTzMXBxIW1emmjBbIVqVAtjwWW4l2vWCNT5
 AD1ZiwXkcCOVCD15AnKnI40tYqC9loszmPBbFLgpQqL05ojCwBeWrxfr9+PYb7WIx+zKsFU5H
 gGgeqhL73a1ShbJ3lkB/4SdL2eg5UVcm/jFBj6T53nEgd8YjdxWdtaRyrBhVcWtd8nHDeVU6Y
 sWoxloLvhX5Akf60Qo4Je2TB0QNFNoWDMcMB2q/ADBvhfKdk/Uu4agPHbOusm4DqQfLxpz5CW
 j25g1u98dSx+m2qBvdwerkSUaJpjzeBlE7BL/iNOe/K27PNFqD+QhILR8EsN0YwKdMSxKKZX5
 OTD1g+GGIFs0mkiWFt0zVsUoVauQXzC1If15zk415T+Z9s1o/oxGAtaCrBL171GDPonX1rd0i
 P8Ep/W9dykZ3TN+8yYA1i12fO0RVRcB3oNjFossT3AmWRdRALAoDNNHPGHyi4L+Hcf4aFAfWJ
 CHIhJ5K63ycoQv3AoWUZ31QnQzLJznrKJ1huufm86OkRLRdaJfVydnovajklRWV6+bnrepjMH
 K7wylQeyDlB5Zr1rWATuK2t0JjYWRCS/BdBKJS+7rRphkw9sKwlCTPovWNl2cNkv87HhWIURe
 Cj/CbBB7KyCknA7ZDLjOJFUtHuT9pQM4S2SORcmk1+PFe/R8Cuos7jbsoCabK6Na5rIz2cwGi
 wKDLwMsUm3roR3/CVrQ/px4ckDtKyHZDz6M0Y73XXfRBe7v1GVe05cbeeoM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_091000_413343_E4C7744F 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3312494819173994185=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3312494819173994185==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=+KvVPThVOa+lnq=-="

This is a multipart message in MIME format.

--=-=+KvVPThVOa+lnq=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Dmitry Tunin [mailto:hanipouspilot@gmail.com]
> Sent: Montag, 5. August 2019 17:55
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to interrupt-
> driven gpio-keys
>=20
> =D0=BF=D0=BD, 5 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 16:53, Adrian Sch=
mutzler <mail@adrianschmutzler.de>:
> >
> > > -----Original Message-----
> > > From: Dmitry Tunin [mailto:hanipouspilot@gmail.com]
> > > Sent: Freitag, 2. August 2019 18:51
> > > To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > > Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> > > Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to interr=
upt-
> > > driven gpio-keys
> > >
> > > =D0=BF=D1=82, 2 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 17:46, Adrian=
 Schmutzler
> <freifunk@adrianschmutzler.de>:
> > > >
> > > > This converts all remaining devices to use interrupt-driven
> > > > gpio-keys compatible instead of gpio-keys-polled.
> > > > The poll-interval is removed.
> > > >
> > >
> > > When I ported DIR-825-b1 to ath79 last year, "gpio-keys" where very
> > > unreliable and I had to switch to "gpio-keys-polled".
> > > I didn't test it since. I'll be able to test only next week.
> >
> > I mostly have TP-Link devices, and I've never experienced any issues wi=
th
> those.
> > Looking forward to your test!
>=20
> This is not about vendor, but about SoC. ar7100 may be different from
> other devicex on ar9xxx.

This recent Pull Request used gpio-keys on ar7100: https://github.com/openw=
rt/openwrt/pull/1359

However, I cannot extract how well this was tested.

--=-=+KvVPThVOa+lnq=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1IVM0ACgkQoNyKO7qx
AnD3gw/9HNVCNnR9/K/ECL6eXeJ2pCRceCJNt9uTESXsOBvuR5uXM/kiNcsqGEvR
RIGMf/jnXbvkb7UNzhMxrBG+DTRzPRNhoQ1UIvP3OjJbGjjNcz60gW6WD0HuOw9b
wgSlJMXEElMjuNZUZsbhHU7ngbA81nXDHmQTWlZ5GMu3DkibiAqEqxKbzjbLhKJ2
BZLDDZlNN2pfsNTAdNtJTyKTi+Djja3JDb80ow5YZ+OvP88vuzk8NWHeqfAJLAwr
bnIduu/ClLCTbYBop2cmbuiYaQJ4l9UyYnHCnSOUjmAG+RxJbGmRiJ/JXroUybbs
VXakUtFlSTNh8unWPvQ0L1cnj2mvdHdOVPf4zTrKv/HJJ7rG8EGfvfgEacvuykvk
mQ8jvyQ2oebuWCdNVpAm8YxZQjvJ6mniO/u1ZZki3R7qdOsrrfHmULThsmExo9m0
GQ4NkRjgflwb7XQIwH6PHoVcl5qr96SybVl3ujsnBWnFakeRkmnuZIh6CA46FSt1
n1Hv3St06jE6OzGl69VanHJ0Jr1dB+LnHi+r3/8ri0oB/vp1C9vQLNrCkMqdWSem
W4D3vN1+vYu6O+8nSQhGeEoUzSGenrdTDNENcIOnjMWuT6+oId24qkwVCaa3BXju
527Q9HxNT2P2AtY0xWeSBk8Zn24bMqGTMynOHDy+94K15w/q3VM=
=sL72
-----END PGP SIGNATURE-----


--=-=+KvVPThVOa+lnq=-=--



--===============3312494819173994185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3312494819173994185==--


