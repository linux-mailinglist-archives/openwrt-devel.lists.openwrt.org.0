Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB6FF61C
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 00:24:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pt8/CasH0XLzULmognj9g2x3xZtdJh8F8o+/VYllSQQ=; b=lhOBO3IKxyrhbh1gRoYbStu65
	2Uj8Rq/sl9SpXSrioEpcq+TIFW1cj/kFTT/1yyEVgNCxAmjXTkM2mF2/vb3byVbPQAHZABrhwjRmo
	n5DhWNjwjjVpggSzjrXQ6QdpRycRyZB0axl6uy1KfhGnXMQ3WbjV39YtqSJrzem54n5RtmXxgXyE6
	byQn9Zwe3+vXkjE9cZG//MXS7s3bbKPZ0uY1W/kreUBPcLqU7EpYhFDK9iY1EuMMVXkGLpCAnOzhi
	eQB3kF8X0Ucbj9E7HoQ+BujyCou2eKWUHmy9T7epQLQTV/WNo80/vkpaJhR+Aq06yX7KyiqEHfVPU
	7kqHkFDxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7Q1-0001jw-SW; Sat, 16 Nov 2019 23:23:53 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7Pu-0001jQ-9J
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 23:23:48 +0000
Received: from desktop ([188.193.230.49]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Md6hP-1hxbwY1piN-00aHjr; Sun, 17 Nov 2019 00:23:37 +0100
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <f05be16b-83ba-6640-c0e8-04e03877e589@gmail.com>
In-Reply-To: <f05be16b-83ba-6640-c0e8-04e03877e589@gmail.com>
Date: Sun, 17 Nov 2019 00:23:35 +0100
Message-ID: <005601d59cd4$df89af80$9e9d0e80$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHcF0zWbuS5TMQDT9hgqXlDJybg2QG/kbkup3N2lWA=
X-Provags-ID: V03:K1:TAUAYW8WNMJmJ3uc9fP51CKXBDeWzGXZIMoxqMrNb873gALoZUt
 sZ+gi/fi2bxib1BpD5MV481ph8G3hMict8dOLZFP4AZZeSNIDas9yyKN055JJjKsIs4L3X/
 IqzL1hhoo7cbNko6XM06nJDVsy0pqXWfm17GtxNYA+7IVSEHDjb+VhHT/pg303mErZafPjR
 pT/jpB1RnsuEQEg5g1yvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AOp5BNi2bOI=:wHAUxxEJOeMiwFxByiW1eD
 w0WpRbJg+dRHYGqpYFdvtZmLgB8KE8T264dld+Jids8+l7J1FfycJ8ZPtrxdTZ4s5tTp1Zb6a
 JmD20LtgY8XRv6x3lf/cXzisSIjVSEPlm3zxLyzNfmTkqSgTThpcOM1PPU0gW+rCvVrUJaqbA
 A17rOfqr+I8QMXBFxmHEvpLu1LjT/RxfWnOdapfFUy9BVHtenZLc/ULRZELZKDuiph3p+pWoY
 kbktOW747MGJQiU5tn0uIRtOFP4sr4bO8KwFmSNYfze9/3EcSnNjYNpgT3IDNSr7kLutKLpFT
 2cuHg+4CgHf3gwCPCc1QC75vD6RZAvWLuqeS7zQPF/pLZ6qGQOaosd50xf1pyfnwmCF5Lg30e
 yKPLxD+y5lBfVcpnniChp5PTphyzxX5o4FLDbSW5X5rgYv9pkkPJGNFk85szNSVWS2oKcvezy
 qpso4oBd3x+0ZP7mXcpKQj5ZBl6x1MokpIYyG9+o8PrqnwzMOv0OeXANuVHArYHy/jNHrkrOe
 ehdz6IXp8shl4o2qPT/Y1pfVYoubpTBHwVM9hcReDmsdn/E8AQL6xlzwwh3uhpqolXzyWJWFb
 tPcPjezU9q0Bq6m8msMaOVO1bM1VvzhADfNAD8NvfipkCOJfD399Lybmkyk6mlU6xIUa4Bbph
 s9/hsOGHO0BFIlVVNzW4h1LC+JXBXH5FTXZ7qk7Rd8K9fzoQwJ6l/ARcRcvdkfeXBAjNhBsSv
 3a083IGiRtasbbbEDcIpAXGh1iSr+At+Yi6iGqTkWZ5uAj1+PCMo6JCBsSg1GAdwWzwKZw9lA
 DNg2hZ48cDhG9SMeFTPbbOk5mIMVXiFjE2bdzkTsnLNDiSk6i6nbuwcdBpEe6nB5PAjJ/u787
 kHfKUuCV8pS+CWqCQgwpe+CcAAOqFBzr3lLpFLDTA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_152346_617936_E3A7A14C 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into hostname
 and SSID
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
Content-Type: multipart/mixed; boundary="===============7686216999341335620=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7686216999341335620==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=5sTLJSez0eM0VU=-="

This is a multipart message in MIME format.

--=-=5sTLJSez0eM0VU=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

Thank you for providing extensive feedback on this topic.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Piotr Dymacz
> Sent: Samstag, 16. November 2019 16:32
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into
> hostname and SSID
>=20
> Hi Adrian,
>=20
> On 08.11.2019 12:48, Adrian Schmutzler wrote:
> > This patchset will introduce the label MAC address into the _default_
> > hostname and SSID of OpenWrt devices. Devices installed after these
> > commits (or upgraded with sysupgrade -n) will have their hostname and
> > SSID set to OpenWrt-ddeeff where "ddeeff" is the EUI of the label MAC
> > address aa:bb:cc:dd:ee:ff.
>=20
> As this is something which touches essential system setting (identificati=
on), I
> would really like other team members to join the discussion before it sne=
aks
> in again. Especially because this was already merged and reverted later, =
after
> short discussion on IRC.
>=20
>  From my point of view, I'm only worried about all the consequences we
> don't know about, so I would prefer to have this one _optional_.

With the label MAC address being available already independent of this patc=
h,
it's relatively easy for someone building the image to create custom hostna=
me
and SSID in a uci-default script, achieving similar effects as in this patc=
hset with
about 10 lines of code.
For that reason, I do not think that providing a _standardized optional_ re=
name
is worth the effort of maintaining it, as the user could get a much more fl=
exible
alternative (manual uci-defaults file) with manageable amount of additional=
 work.

In this context, let me point out that for me personally the important feat=
ure is
having the label MAC address. What I do in this patchset (which isn't even =
from
me originally) is a nice-to-have additional use of this feature, but I don'=
t heavily
insist on it. So, if feedback keeps to be mainly negative, I will bury it a=
nd still be
fine (and will still be able to use the label MAC address in custom scripts=
).

>=20
> On the other hand, I'm fine with the SSID change but I see it's not going=
 to be
> that straightforward to implement.
> Also, what I'm thinking about here is which one MAC should be used for the
> SSID name. The 'label' one which is not available on all devices or maybe=
 the
> 'phy' one?

We had this discussion very early when this was still a PR in GitHub, as in=
itially
it actually was using the phy addresses. The argument for using the label M=
AC
was on the one hand that the label MAC address is apparent to the user on t=
he case, while
a +1/-1 of this number will be (a little bit) confusing. Secondly, only hav=
ing
the label MAC address would assure having the same SSID for more than
one WiFi interface (as it's now the case with default 'OpenWrt'). This was
explicitly requested by ynezz (as the only committer reviewing this) back t=
hen.

>=20
> > For devices where no label MAC address has been specified, hostname
> > and SSIDs will use the former default "OpenWrt".
>=20
> And this is probably the biggest issue I have with the whole idea behind
> 'label_mac'. As I understand the motivation, I don't like the fact it's n=
ot
> specified (and probably would never be) for all devices so we will have h=
ere
> inconsistency (in essential system settings!) and might end up with
> confusion. Maybe that's something which should be handled by downstream
> users/projects (and AFAIK, it is already).

Yes, I cannot discuss away this drawback, some devices will have OpenWrt_dd=
eeff
and some will have just OpenWrt. I just never felt (and still feel) about t=
hat as being a practical
problem. And from my personal experience with downstream projects, the SSID
most probably gets overwritten with something completely different anyway,
only the change in hostname might matter there.

So, I have lots of time to wait for further feedback on this, and I most pr=
obably
will bury it without too bad feelings if negative feedback continues.
At the end, this is just meant as an improvement for the uneducated end use=
r,
I will have zero benefit for my personal/downstream projects from this (unl=
ike
the label MAC address itself, which is extremely helpful).

Best

Adrian

--=-=5sTLJSez0eM0VU=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3QhPMACgkQoNyKO7qx
AnA48Q/+Md3ccHo2zvWjEnDcCz78InrD5iUD31ujRSXbZ7f563pP4p9c0PL0yBDY
BmvPAoYUh8GMq5yEhDZjUhs0IZvX9GN+28/EofH1BcIJ2JvlRXyIudWrI3khF/SW
/L9qnoBmSECRaMkYVYa+wdAHYC3drojl/3Zknl/e4W5SyA17wv7K2j+iqdyILw5T
PrmvQJAy96rnK997Am/WVHzZWBScpX50Cl8GnAuzwc+acrK7hKrF1OQXfziVrS/V
SO14pBtj/FnMUQ3dShPwEq6629Tg7c8QJoa7x5CdOwNA+hZmHZayVMoll7N3UCqr
/mSEfrlAPFXkHPMGGNDdTseCTXr1S7Ax898OBA07gyVn4Jran/ULdBiuA6gavKQL
8gqKOk6F+ES7NvxXfAVeYXqoUkYpjp1qatIy6syZvKOFsTYyNZUBmO+gWpB7IHvh
BJuYGK4/lU2IjPhjfuiSyN7O4j/uko5kZ8JtkRR2WpU7WW3VrnxsMdjgX/0fUVlQ
zpwx4b8uKAp9eJ52aaFPqJtsqwM7fqTGpVgMNp81Ag7p/rw9ymeVkCAho5j3LPWR
C1UX+lp4pj+lu0+KnCP2gOBK5iMHmopqR/3XVSMH8DTq8SOnRJUh2SEIMkDcrSrb
Wsrfv1EVKmUE9+Asyb2MHCUZe6F8lTdFuKo9lillid0BvBoFTH0=
=paH9
-----END PGP SIGNATURE-----


--=-=5sTLJSez0eM0VU=-=--



--===============7686216999341335620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7686216999341335620==--


