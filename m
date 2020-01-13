Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE388138FAD
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 11:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q9oaAHSM6rFSefJyZtuSeh9J65gZ/0vB940IINDTm3g=; b=Gi+2PurhLfrescy0rMcK54MGB
	8CgL6AJxcr5b0rHmHtnJhAyHEwDh617DJnWL7DpNn7GkiXAMmd1TPkX9GHRLKWnpihBMmMkQlbCPm
	F9ZvltUku3xT24WCKC+PpkjB9fQCDfaYr4XrIn27r1M9Qk1s7FU+0O23tMuNfrOt7bk6muImd1fFk
	qBi3pQStPv6yl6W6M1HkuTAZ/233EWqLDb1Knu8/1Phrh6fhPIMAUps0zuKBlgLSWtAtAlMeJ/ivU
	+pNdqSBzi7uJF9/hW+cQ6Z6qhLuKJEB+NwrTZ0nEHLvE5o8IR+iRm92F1vic7SqOTbu2HfeXBMDg7
	DnpEC0Rtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqxPQ-0004tp-8R; Mon, 13 Jan 2020 10:57:24 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqxPG-0004sq-BG
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 10:57:16 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M5PRT-1iq7vT0mDV-001TCX; Mon, 13
 Jan 2020 11:57:06 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 "'Paul Spooren'" <mail@aparcar.org>, "'John Crispin'" <john@phrozen.org>
References: <e1aca052-b7ca-e611-c67b-fc3b03662e5c@phrozen.org>
 <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
 <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
 <20200113092351.GJ86978@meh.true.cz>
In-Reply-To: <20200113092351.GJ86978@meh.true.cz>
Date: Mon, 13 Jan 2020 11:57:05 +0100
Message-ID: <013801d5ca00$31d151f0$9573f5d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHuyUZyIx1XvpuFt8VwL7JdvyM0tqe2awNw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:acC9Sd9CXR3jq9E0dh0dD3sS84M9cdA/JKiAB4UtAkgZwi6m0/H
 JOxctWCGLyzreU4S30GQtvNIKl80WaI34HkXAxeIZvEuZcGRa02D8fneMdR4d4Y0f5Tbqo3
 a/1KqMfUF78Z9n5QCx6dKOcUMXLPyyBk2OmQnOm2itzKvuH3ZueRntaaUrHSMEM2p2x0by0
 EJlwhliqOjRun8b5Sd/aA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ws0+9Qd03rM=:Jp9igb3v6SqXMrpAfn7CAp
 kfSFXTbTHeoP5wlPeS7NG7G9CqKy2BeVP0VpL++QGKx1mTx9Mu6UIayoBNIQu196Pk1mgVlHT
 A7K07a0vOUNNX+n2+OMCeQHC/Gxe7+RALGxd969TYP/5VAO9f6115q+P3D4iuN00j1nUWJosQ
 edrPnRn518zNo1SszqjKNGXpBOWIePJuH4SEh/j6PUXiCQLVS/hE0/EjOWzVfXEsVDdfeoE/o
 z0BWCl98JKdLg5S6Nb59wZq83MEhf7QCE0jj2FM+9jUMfKKyAPLLU9FqE9aeTs35l7FfEw4SY
 cwAZ/7GsTWezek3gILZm7cN+6s5hYmsRCgH14Kytn8kWVII3krxr7EiohuXu3Iqlo8LJNozgE
 EIKsidYZvjjnEEptj2YZrmMbtVHqjgRDQjakhp0CqoeG/Z5IM/Hgj8JCZOWWWEbgKlEd8ojpC
 FqJleAvTmaXhubuVWyaIk0tK6G0MZhGYayAEicr4I5PaAlRvvaO9cRUTMT0ENCeRRoQZPbof4
 iQ52EoErixf8/d5i16WXSjZoWRA0kganxXMmg8Tpir1RixGvOIES6nvJSq9LNwtR8lyPlbVDk
 wv0NX2J+IPkpmfcgjtcZ/bM1V632r2i6OSP+UpnWYatnX5NbkgyekTI/sKamCp8vSlS/iPkmS
 7bwHXMubBAg/UT73wjxxaM4cEGeFpscT3zzULTQA+JMnjHaSnr+td6nub54ivgZaIKFV8jmRp
 xUPFOSv5lWHYMQFzdc0uuI+7vHPjAKWoVXsia4HjSUv8N5mg3DC/kajuCTpvzUyvt26Vr10fN
 I1q8w4rU492ugWkZP+eQujuR3Luq8cA9iqJUJH69MGTCXkHIO7RQqJlLPNKUu/aeYFCGOHibj
 atw080UzsZQ1qBoEWZaH0fxfeuelPYIlwX9QwoRCo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_025714_677416_DD73622B 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
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
Cc: 'Martin Blumenstingl' <martin.blumenstingl@googlemail.com>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7609136598566145378=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7609136598566145378==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=1F7TNJKcbuygaQ=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=1F7TNJKcbuygaQ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Petr =C5=A0tetiar
> Sent: Montag, 13. Januar 2020 10:24
> To: Paul Spooren <mail@aparcar.org>; John Crispin <john@phrozen.org>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>; 'OpenWrt
> Development List' <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
> devices
>=20
> Paul Spooren <mail@aparcar.org> [2020-01-12 11:47:29]:
>=20
> Hi,
>=20
> > Every commit message for newly added devices must contain a number of
> > hardware information and steps for an initial installation.
> > The hardware information should contain at least the following informat=
ion,
> > maybe more:
>=20
> YAML is really PITA, so you don't want to do this in commit description.

There are also cases where we use information about devices which is subjec=
t to change, e.g. unsupported features. If we rely on the commit message, t=
hose will stick to their original state/values, no matter whether support h=
as been patched in later.

I'd much prefer to have a dedicated file, which then could be updated as ne=
eded. I never understood why the old discussion on this stopped.
ynezz' concept discussed below looks promising to me, I would support this =
approach if someone actually wanted to make the effort.

Best

Adrian

>=20
> It should be external file YAML file, with defined schema, so you can val=
idate
> its correctness.
>=20
> See my previous info http://lists.infradead.org/pipermail/openwrt-devel/2=
019-
> May/017082.html
>=20
> > If you have a tool to extract such data or ideas on how to create such,
> > that'd be great.
>=20
> See the kernel tooling link above.
>=20
> > As an alternative I could also create a shell script that extracts data=
 on a
> > running machine, but that might miss some details.
>=20
> Or ideally merge the information from both sources (DTS and runtime).
>=20
> John Crispin <john@phrozen.org> [2020-01-13 09:47:54]:
>=20
> > I think this will turn into aproblem where functionally sane patches wi=
ll
> > turn into hassle to get merged. we could encourage folks to send the ya=
ml
> > file as a companion email I guess.
>=20
> If there's good tooling(schema, validation etc.) and documentation around=
, it
> should be as easy as:
>=20
>  - make device-yaml-prepare IP=3D10.0.0.1 DTS=3Dtarget/linux/foo/dts/devi=
ce.dts
>    [*] generating device YAML from DTS...
>    [*] adding runtime details from device at 10.0.0.1
>    [*] target/linux/foo/info/device.yaml created
>=20
>  - $EDITOR target/linux/foo/info/device.yaml
>=20
>    (add details which can't be gathered during runtime, factory flashing
>     instructions, UART pinout etc.)
>=20
>  - make device-yaml-validate target/linux/foo/info/device.yaml
>    OK!
>=20
>  - make device-yaml-preview target/linux/foo/info/device.yaml
>    [*] check http://127.0.0.1:8000
>    (or launch browser directly via xdg-open or such)
>=20
> We could simply start with opt-in (bonus points if you include such YAML =
file
> along with the support for a new device) and once the dust settles we cou=
ld
> start talking about it as somehow more or less mandatory requirement.
>=20
> -- ynezz
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=1F7TNJKcbuygaQ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4cTP0ACgkQoNyKO7qx
AnDl/g/+LIROl8O2meZWjUi5IZ99+HYLlZPt683OyfbDFsmHuNYMatbTlxGjFVlA
JDwnviSB0M5wc0y9dtFtBzZFZu+LQoFVeZrP9VCm1pvtXM3jyZVIpXUhRHTeX4pd
VUo+v+CxPZIpKj72WPENDy0bR32QEZUvozTHKIQG9bz2n5k+1NLnYsT8ELmFrA0E
v1FY3IUvmFatJGqwRHeUwbBBhW/uqKJzOE5tFGudRbkFZrgwZ6+zNmug1lRc3za6
RagYhM0NKzSaPcvdk6Adpf3PvTlIcONCM1Af6o2zx4skx+RVWEpd0Eggdgs55AeE
WoLEgMQXY4HnYA4z8pKMjRPBMJjzSeDikslEN+cBNO9qcc+u5My2TsljEAdhnY68
oV8eo0npP3i5LGuZtdvPt62X2B1psb/kclo+Xw0g0JXIj69JhqNXf0l1gnyiTVGJ
kMrZhVAlmt1grSqP7xID5u5u18fHrhLV39EQeenuUzJ60Xsq7/pwJqZMtJDcehe+
NlW7dQNolk8TfsK/woAZQlpshGLQZpRB4buHyf4jx+OCmX+unieOQWTvRrb3AxGQ
1oV4m3dFgT1aW3V1ahuuxSZGMdNa7rC+SgJ+JhY2dgrubH5Hpbmze//tehDIaHAA
ns1i1Ty3QGanuo+9jKiAi1dx/zciVzbwBX7tl+GF0y8jddr5/fY=
=8F6k
-----END PGP SIGNATURE-----


--=-=1F7TNJKcbuygaQ=-=--



--===============7609136598566145378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7609136598566145378==--


