Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906E3850DB
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 18:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+aIAYzGxwZJFOGWkp7niDgalx0lxBIsqDSMiPbvo0po=; b=RK6pHR+AyHXAdNxsaepTOumn4
	AAPuwSv6UUXn9looEf32WDu7rjPS/rx0JLadKYqBk+VvRoUSnHEq4KbTHWtHWWKc5spz3peMHfheG
	3P7oTgiv9I1tqTu3hbRgkbOv14xJ9ynjZM9TXNoblYNl4QKx8DnPmqs7MoCtSu3VtTKQlUMPegc5u
	co4F+jX0/dODl3IjknXp3U9mfGulBqND+OAsv9MHfMxqZWxa7rAQLKN1jXQ+1pjOnS0JOccizAzBJ
	BLTdZULabyP5inpmqX27M594WWSc/g3FdI86vq5lD/wFTjELiSIXEIgQkNhS9DXu0pHKmLxUX9yNs
	f6QSU2XPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOct-00035v-0L; Wed, 07 Aug 2019 16:17:23 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOck-00035W-Gh
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 16:17:16 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mw9Dg-1iDtPW2Ipo-00s3eW; Wed, 07
 Aug 2019 18:17:10 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tom Psyborg'" <pozega.tomislav@gmail.com>
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
 <20190806131039.51484-2-freifunk@adrianschmutzler.de>
 <CAKR_QVJo-ooRvEi=ODftEsrr0avW3_5TUcMO9eSud5EpOTtfZA@mail.gmail.com>
In-Reply-To: <CAKR_QVJo-ooRvEi=ODftEsrr0avW3_5TUcMO9eSud5EpOTtfZA@mail.gmail.com>
Date: Wed, 7 Aug 2019 18:17:10 +0200
Message-ID: <022201d54d3b$90d19080$b274b180$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQEB+24oOP0+hQ7HGqEJP9eZ0+GFFAFVG5ecAak0eYuofoyPMA==
Content-Language: de
X-Provags-ID: V03:K1:tFupblRLjinDvFLV9VlZLywBrKdmHCCo+txAdmQON/Styostyl4
 cnw7+TXxOLRZazSrWgl1xMfJAp5k78XOB5Nqz3spXZWhbuj77PkxjsZ/ZoybxShvSRO1q4M
 LMnNfR6rMUtcbAXwRXfmkntDt8/sUvVA6zUwmc347BH9cAH0hJZOMIdKrwofQslkwebwoIV
 OZE2dWA2BtmNZ2I1gx58w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z9ctRVbnDRA=:NCGEA3pruXzE5EhtfePd8v
 7tNmUA5zAKb7Dp2nEzWCDMKAkTGKASaL0sCoo41hb6RmsTCEGeEciGe9ewtEAxq0DCEIFztNA
 SbG9q23KFrrLO3lyAbIV/qKpSMJfbPAdw5nhlpvY2pn4gqeGNe0KlvMxnq2L0oz5x5VkiTs6z
 D/f8QtByoHlhRRYtzPf5Ic6dhRcx2DuMms/ORF8dd9XAUCAIAbk9cXyIgh5mD4Xem2X+3Q5gx
 RqVukRcklVRiCEWg2lWIl9TMqT9gfr0ual/BdANE3ilav/H/b0FeO5FT9hM9ArZ3eYbs8PJjs
 Ge3hvbgTM36nt+gqQQipReOVNTY6yoxRltHZV8l1CHu0OGsW6/IsUKGaj7f3l8FCYsoS4U0/i
 TqR+kzvrDGyBu2nN0rKuX2PnSgdHoyfyytl/+JxU6N3c/55ks5w7Omjonjq3qZveHrZaYWKI7
 Q23pTJ/xETlE2w8oXKcoLocgRXcCw4C3iCcMBm87/iiiD73pYUD8HMIWOlIRNjlu/s1qUEru0
 voVrpGLPIkApnn4k7pT4ztMswVKjqhkr1jvq9zMGlxRIdA/xR6mA/Q7skQrWsuTqcKKjniwjP
 PmhQySoSNeBFOK3eCZBvzCbk/Cjpb4jS8yvT23yRkNsxfxEEw85789XtpwJtj60IGwQctsIiV
 ISTVikpUsYpK0OSHi44bz5BBwBNinxd1EznjFEWT4fkqTN6uL2YYBCjc1bWi7JrLiMlkWaqzm
 q424Zb+E5BM3qkqUCImprt/+95W0VLY2z88ogx7lElzXUxH4zvd6/EY0vTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091714_845746_7E235B8E 
X-CRM114-Status: GOOD (  10.84  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common
 TP-Link definitions
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
Content-Type: multipart/mixed; boundary="===============0938081424112829060=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0938081424112829060==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=6fAd65kbAmhdSl=-="

This is a multipart message in MIME format.

--=-=6fAd65kbAmhdSl=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Tom Psyborg
> Sent: Mittwoch, 7. August 2019 17:58
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common=
 TP-Link definitions
>=20
> Hi
>=20
> Looks like there were many doubts about image size over the years.
>=20
> One thing that should be considered is use of OEM firmware, either in
> case of just a single revert after OpenWrt flashing, or multiple
> reverts/switching between OEM/OpenWrt firmwares.
>=20
> Relevant in this case is config partition within OEM fw, and by
> specifying OpenWrt image size to occupy all available flash space
> between u-boot and art partitions destroys config contents which may
> turn up very impractical for those that do frequent switching between
> the two.
>=20
> Further, config partition size also varies from device to device, some
> have it 64KB others 128KB in size, at least what I observed with my
> devices.
>=20
> So, the correct image size for Archer C7 v1 turned out to be 0x7b0000

But wouldn't this call for introducing a config partition for the C7 v1?
I'm not sure how your analysis is affecting the IMAGE_SIZE discussion (unle=
ss you say TP-Link devices generally have this config partition with differ=
ent sizes, and thus the whole concept of including IMAGE_SIZE in common def=
initions is "wrong")...

Best

Adrian

--=-=6fAd65kbAmhdSl=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1K+YMACgkQoNyKO7qx
AnAjnw/+L+nXLylmB9Neq1+EaWb5MxI9TAhHoVDbJjAlL7oE2tagQ+kmTIzixFxP
oki1Sd5RYell1ADJ1cL3r6rYREi+wLlb3H6gVjsSlNm1CpxvoVhd6bmeDoqRxIxn
ODJ2cT2b7aBCGzjo4+t5cotInbLnQMjR4h02002IGiwDWzOXaWOiPDoPF+sgD6ND
st7F88Pw6IqF2quWYo+E+oJaSI0SD/ineFKuZzw81s9zoJVjOYP3Q4lovnYVXI43
pdayjlt1Ql+EqerC3Xz96GJ6Knz92Qr/c9SoAMPgu0plqsQp9LpyJGh5k6452B2r
YyRErj+9N8jf1qFHg4v8/RoU6qL/VdYasYmdioLlWcUkJW+2RYQtE/gzaxymc9pE
mI/Dfsi8CDN4jgeUL67PDVUthNdCfbc27nOofFyL24l66U8sPxqJe6n0AiAo+HZw
WS6JjQCqIcAfUVXR8wL2KPaCZB2xnUD/R4CG9tY5epd+zv1rvjLWmYAdlpTUowD5
YQ7BJO2IsX76F9a8g/AfdBWOcvOwBZrWKDLlsDfZg8NpqWzWJBkaIN2uGk+IxNa9
Sew8IEZJqzOLfYal4eLmz2llqai9UPmOiGBrlxTQqPrUaMhVUECHCehM2KcEZOmK
pzB3YH3uD7eNEy0GL13gr9u1G+ZjX92wKGESgCtK7vIb0xbT+9I=
=iim+
-----END PGP SIGNATURE-----


--=-=6fAd65kbAmhdSl=-=--



--===============0938081424112829060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0938081424112829060==--


