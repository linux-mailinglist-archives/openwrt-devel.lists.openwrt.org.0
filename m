Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA3893B9
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 22:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sVTMln5Wh+wVJeZwkX9N4jojl2rD7DxzxNeDi8AmymU=; b=WzU1vtQ33O3+ctIchmoyFGFi0
	uiVXymJbGpfcLv7IZwEsCvzlcGChGb32tm8r0cXmAbTVibV8KF+t6SOfZXlGnvedAh8oXpMSXfe4j
	vYGexoie995mFzJdfHB2YldXzlgpcbEwrNhVV8j8hZt+5zPnfcUQR55GjgfK3Lb192WMhSRB/cYu0
	7VnE8B9r+sXhbYBz6ZUA6V0GmDAr9ZTEow+Pfgx4ENZmYSb+xOrht6X4gghPDQ4g+n1SLhMg/ny9Y
	BcuovU0Q+fqmziSIMxO/Rzc8hen563Dkcz8vlDdo2PobGdjL3Uph1iCJ9s2kI7e9lIT/9BKO3DLuA
	B87wisvIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwufK-00077E-Lg; Sun, 11 Aug 2019 20:42:10 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwufF-0006wX-3X
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 20:42:06 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MS43X-1hr1nk32hH-00TQe6; Sun, 11 Aug 2019 22:41:55 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <1d85f1b0-7cdb-68d6-3535-72666de254c3@birger-koblitz.de>
 <01e901d54fb9$0e1c56e0$2a5504a0$@adrianschmutzler.de>
 <e8a33d3a-3994-676f-5b47-bfe2e91e75ef@birger-koblitz.de>
 <009d01d55079$220d4ea0$6627ebe0$@adrianschmutzler.de>
 <edeea23f-e3cc-47fc-5986-c92961705317@birger-koblitz.de>
In-Reply-To: <edeea23f-e3cc-47fc-5986-c92961705317@birger-koblitz.de>
Date: Sun, 11 Aug 2019 22:41:55 +0200
Message-ID: <018401d55085$36cbdc60$a4639520$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJIImTgqpVld/JhqOEe/G1Y6hA9nAEcUHgqAmyz/y0Cx87xcwJtGzE9pcrVocA=
Content-Language: de
X-Provags-ID: V03:K1:6Dsk4nFsLU8jExEry8wv8FulO56SObgX+uui+wW+Bl8zMREuTKy
 8Vd0aRVQe3Iwt2p5qVw0UF5e4EG95QUMSSP8KrbSSPA1TvcNLm+GfxUOV/VZMjzpwvm7+bq
 QA4DC2rSR3Kz8p8yt1pCwGVOte2jYw77YaWbkHS4DH0UXlzNbA4Ng2NyPgpy1KMFujmSm18
 eBzBX97Mj+ou8jPOUJcqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B7NZdMC4VYM=:p+L+C3f/+PsGtca+qdCPLs
 mpRevF3xlJK5SvlUCr8PQAztrfytFtw93yfLhGvjpUipZ+9iCfextEh3SICsPdB1V8ckPcgw1
 NPSNQDyS6o5cvZaYqVNdxo1GqmFTIdko7WW2qkneSEUg9WV2gJR9aWo1miDri7Ra5cn8c4TrY
 wZ/HcayfbDP9N9tQEJ1rkoUTe4HqH4HHtVuCxuKb0NQ27d12dhqdYNyEU2ajNYALat4LVSIgd
 ymBc539UUb1fexQMD9UcRA4WPDNt8D06rJ0rxUU1kjkr7xMSjSrOkQfZu1ouW7W2cBOQp355c
 Wj4BjgPnN3ALeu0s3dUWKFnzaSgqVO8JdJrDGxwI9wOxsUX7BGg8VmWNuUdx2tvSkeKyt0oyH
 fYaUNcWCB39xqN63xbss14hccTEFLeLKndciPC13ce5PMb4Hei3k0I2qDtb3zlGa8zDXwQ0Nz
 bDx42Q4NeAXJJdVFNbBsG2GhfjTLKbNJyxFeJp9D3AUOtiKgpK6zd9bRrW3g3MxiUHdhptnXn
 bh3vUGzT7xAlDAxVp+NOAr7o1QozFaJS/y5t+DXuaUIDcYKRv/iw4bLw9mwPb1CCNQTdlDi+1
 JbUOTSc4jd279qTE9wgBMYQOwBw4jm/E4RNceGpFeqDBaLc7zwTHx+fVrDGJGK9uUj7wxgbTe
 Je+HFAoEFRpZ6YQxtg6OKChvnuI/yDIgx6TCRb7XQVY2jMWTbt44BpgNB1XD46yVj6NNuwjFN
 HnyvQCS4mTv7qw59ialFEOPwQuqJcjSjYZ/Y2pKy+jWQXbmyy2I+o554wqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_134205_443554_0D7B1902 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use gpio_hog instead of
 gpio-export
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
Content-Type: multipart/mixed; boundary="===============5366386268080114436=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5366386268080114436==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=KBb94Po2y7UZNT=-="

This is a multipart message in MIME format.

--=-=KBb94Po2y7UZNT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Birger Koblitz [mailto:mail@birger-koblitz.de]
> Sent: Sonntag, 11. August 2019 22:06
> To: mail@adrianschmutzler.de; 'OpenWrt Development List' <openwrt-
> devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use gpio_hog instead of gpio-
> export
>=20
> Hi Adrian,
>=20
> On 11.08.19 21:15, mail@adrianschmutzler.de wrote:
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Birger Koblitz
> >> Sent: Sonntag, 11. August 2019 13:11
> >> To: mail@adrianschmutzler.de
> >> Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
> >> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use gpio_hog instead of
> >> gpio- export
> >>
> >> Dear Adrian,
> >>
> >> I'll resubmit a patch taking your comments into account. I am using a
> >> script that parses the DTS ...
> > So that means that duplicate &gpio is also treated with automatically (=
as
> I've seen with some devices)?
>=20
> The script is able to catch some cases, others are not so easy. I believe=
 there
> is a case where the original .dts already has duplicates.
>=20
> Also the idea was to keep the sequence of the gpios definitions in the
> original .dts.

Okay.

I don't think that's the most critical topic, as build-testing will sort ou=
t all of the relevant possible errors.

I was mostly asking out of curiosity and would not bother with this further=
...


Best

Adrian

--=-=KBb94Po2y7UZNT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1QfY8ACgkQoNyKO7qx
AnBY+BAAnjMyoxFzfYAaUntK6yAODjVL1NR0FQy2oeqVUullXdt2O73hQtv5uvgN
rnCDPVPmVhmWuTLo428wtZQUPukhU2Gz0proH6CTIOSP3CNzIdo9+4bVfTowGO2m
fJeFj+h7In9CUo4e/lr99m5sBjUF1lC7XJW91CUkA6kkV0YvUYX8s20WVGPcPN01
sIIeNkdjaUNWAi5l15cdvkx3F8hXQkR+bd1nYDNxNbrWVABdy09CAbPq473Tapgz
I2b0d/bNQkUXF+wZsQJcfq63UGi7kXRdgsS1jcojR6HVgEi2U7txKYivePXT4pyp
LNNk9mLfRFwNsQbW44KWb06Pmtq99A9DJNv5sK6EUXnGydJrbtsi7gDoigl0cRf+
TKsyFLE6pCymfYe5gmColunwvnt/aJINGIQulwNkufgeWdSrJTqbOWvv/gzjY5G5
Oal9poWPdOp25zKaefcI3EMCIhsYsBlsKVqDvJ7FYa/+PU+Fr+DsTQQdjT5VX7Rs
QoT8FHTibEZ6Nk2mrgj024VilNNt27NtkEO9gfvqPoGuy7IXqLmnuR0Mb17E0s/W
ciQLZ55NeN9FYe0DwAkXwB09e43yeJ2MGKFU0Der4taPeBfxwdET0eN6D+Vu6Tey
Z+jqB+B+lLCFCaNinG+H8vraWoEb+ctXX/AnEigaUgpIQ+wS5z0=
=c7ie
-----END PGP SIGNATURE-----


--=-=KBb94Po2y7UZNT=-=--



--===============5366386268080114436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5366386268080114436==--


