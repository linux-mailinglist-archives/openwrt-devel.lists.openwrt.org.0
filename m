Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495F2130803
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 13:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NVObFsWWtBTehjggWdQtqdhDlbw4Q02D07uaCVlLfEM=; b=dvojJCTUdK8yihB4OttOK8B5k
	rXer3WIhuE3aCJI7+Yxf5s2sNzuswk4chXljFjQ11Z5Of+cV4jWVDNVqGm+9ZAvFdUKK+TOdwApYC
	CBQEl3w2iaP4p07My0qbJzpc80FBj4FA6rjSRuSQxpnH8jwwVZgNR0lIGguC4n2ID7KCg1RVp3Jx1
	B0pxmNFab6B1LOg7kJLyCc8xTo9fMbODhYUjkEpWGMG0Nb0YuHUHQ5EeNEYpOidWIknYHfkmhGePU
	XWKy1q1Gv4YjqfHw2p6WWoe1zlnXz8Jn00ZsJxjifvhHemfAYIJcHKTRdSE7gBrWXo38wQPtFFG5e
	tJKFeq1hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io5Ge-0007bh-3B; Sun, 05 Jan 2020 12:44:28 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io5GV-0007bB-9T
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 12:44:21 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N63i4-1jlHcp0mc4-016NPZ; Sun, 05 Jan 2020 13:44:11 +0100
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
 <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
 <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
In-Reply-To: <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
Date: Sun, 5 Jan 2020 13:44:10 +0100
Message-ID: <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0gKX3rv8AN9zaFkBVuaE5QBtT/prpk9zP5A=
X-Provags-ID: V03:K1:GlLyKdPBWh7m4IdvlJ+BY/wjtpC5VkYyp4QUgDV1r3WW/zYijPy
 yOTZN41GVtIiIqgWdzHZo6lNl+5YoIEgdbPUJw36rukOZdAi52qUP35qgaSDgtF4+Rwjtuy
 y7ha6aun5jHLJNCqi4pCd4A7Lu/2ipWeqkvhHnG4d8xUzrSQfXP/q2Pe/wafHPk1yudtCvg
 CgdSHhbOD2hrelb3cwMMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:inRfb0L6H0o=:skYKEN84acl9O9M14Dobvf
 uSDbl9MscZY/1M2C+EEJq2sqv/ono64cCviGTrou1KbZ1HR2bF/tUS8IyjcsvSEu3miOvKm0F
 /t3a6eXy9/Z+A0y/lyng7PnL0itSjfu9+aWzNEBPIRIFO2Plv6ta8Z4WV09ybs5KV4TrHZY6S
 ny0PTR2sEJdHOqYIxkrtH4K8z/BtydZN5N/TBZpSTwWpMHsHbinAeb063awReYInNzIHjjUMb
 zM5N9qeImohtvWFt4LJDPMHJbqEggVee/IXZwTYdsnrNdPsjTYAseAtRBquPoxazTFCZ3hjh6
 ttB6lvtqAV4D6KZ9P9mSrJgCsNAmpsaU5bfEGejsb4vJlsoprybezGLpB5+/2jJ3wg1c1i1mr
 /d2VYcjRgDq6PCBwpuoOJHrmjpslNJW/pe6M+eJjw/+jym0xK6OSZ3s0fCw+EGoLy+l7g5NBk
 EqhXP4umFq+33bY0EgZbuC0q5wdVE9ayGE0IyGKzv7WrD+lOudLs4PMc/4wff+LI5veFqC5gN
 A+M+LEEW0ooWJnbeUgPW22GrpjI9maEyYyyUBNwLsPvZoZnhqE2wC8II6iMfkJe5YJP97wq1b
 bPpP0DPtTUh8vsJ7s+uMO4CROLgiKDi2V6dAfep2UEyVbGhtuI6RxaxtS8sWRSjWIe1J4f6BZ
 QxPtG2NiPuZJS9XHfmLnxIXmuSoJdKkLvXkNcaDFFa45TGQhk/sruxyngR8Tlf01VTqwwibLG
 dwx87Jw5jxbTmb+se/zXLc831v94o3k5rKRmOnQOhikeM+papi/1EHLr/3wq9M2/kXZxbqS+T
 GgNdyG0Xg/PiZ4ceNY4N4DGlBBRhvvMzf2TKxM1JBi4y5mVA9mkoSmH/oupkWph23Ro/qUoFB
 FnzD/mBhP22AnIQ0EZkKSDenFfgetd+xdryr6oLWY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_044419_623921_0B2F807A 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============3006203916089308086=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3006203916089308086==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Sez0eM0VUfUkZ+=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=Sez0eM0VUfUkZ+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Hauke Mehrtens
> Sent: Samstag, 4. Januar 2020 18:26
> To: mail@adrianschmutzler.de; 'OpenWrt Development List' <openwrt-
> devel@lists.openwrt.org>
> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>=20
> On 1/3/20 1:53 PM, mail@adrianschmutzler.de wrote:
> > Hi Hauke,
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Hauke Mehrtens
> >> Sent: Donnerstag, 28. November 2019 19:42
> >> To: Adrian Schmutzler <mail@adrianschmutzler.de>; 'OpenWrt
> >> Development List' <openwrt-devel@lists.openwrt.org>
> >> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
> >> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
> >>
> >> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
> >>> Hi Hauke,
> >>>
> >>>> The following are still on kernel 4.9:
> >>>>  * ar7
> >>>>  * ixp4xx
> >>>>  * orion
> >>>
> >>> There are patches (actually from you, May 2019) on the list which
> >>> claim to bump ar7 and orion to 4.14:
> >>>
> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339
> >>>
> >>> I haven't looked closer, just in case you forgot about them ;-)
> >>
> >> Nobody reported that they are working so I never applied them. I do
> >> not have the hardware, I just made them compile.
> >
> > Since there was no response of any kind from a third party, I've just
> marked the two patchsets as "Deferred" in the patchwork, so we get a litt=
le
> more overview there. I hope that's okay for you.
>=20
> Yes fine with me, we should probably drop these targets soon.
>=20
> Hauke

I think it's time to remove the three targets and kernel 4.9 support as wel=
l after the release has been made. Or does keeping kernel 4.9 in master (ev=
en without targets) make it easier to support 18.06 branch?

Best

Adrian

--=-=Sez0eM0VUfUkZ+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4R2hYACgkQoNyKO7qx
AnB1pRAAzP/RLROav9Divtu6t5AJr6t9O1aUhzIl5/EvWsqjhCyDlVRWzc8797bU
HinX1MSSihvoA2NALCOd2XTpe6mf524GCjBSzk9TXMvcb3q0/9EXiS5Rlb/W1Cfa
D+rdQUPzS8GoIS1H3J/1v6S1D8kG5dPL3BdDS3Zchrw5cKJ2QYIl+n973x3Q0MlY
oHuxuD5nDJJhKbcymYt+sIngzegb5ofKTn9v1K4UK591jgCJ+8mPpYuZ04284lLT
1qjpaTXhxDhGmhBBlmDu/+wGog5klXo2aE5TD/puSO/N7lVG/Zxus+McbUNhxS3J
igKdbingxoCZX2DsCo/UW9E+7Ys1VjhSdEvAfXyid7FAJ5TNJRYKnU6e4U3JS9mM
wo1YjCOBEhnxuRvyzuZLlv0FAVF9eqrJOEp88v23U8uApy+uKfVb/HHP+WDz29O/
z8vdP0nzewao54eVJWgdx/19+xk/iXi3sJYpeEn8jRhaT6H5earDg1S+f4I5wJRw
Cdrtx3mwJI559IMyj+Yjfex99u40PIaYAjzl6C7M51Ui4lojXQFy75Qoo/tMWS5m
C1UtZxbeG92sgDgxNGsMeF1WX1uUd/C+PHhXholb3cSV2HOIXqaN0MSAIajcrX+1
lzaj/hAQSeaAGmFDRkuTEgPhmCi/xwzO8PFiw/hcizK09dFfMcU=
=BGUd
-----END PGP SIGNATURE-----


--=-=Sez0eM0VUfUkZ+=-=--



--===============3006203916089308086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3006203916089308086==--


