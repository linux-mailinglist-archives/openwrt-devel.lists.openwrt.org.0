Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B75FBC7E
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 00:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rM+Fx/d+v02DXBXCCjKb5973JkIpwJ+FGIrHjJuPzwE=; b=u1d6Ko2GbUAtq7j2F/D5nE4uJ
	TVutt8JRubivqW39ZUawCrNcPASqBcDr15cM//IzwzQG8HSnA0H9g3HSIDt1LTKnr5kPHN5Da3cFl
	ICY8a/Glmnw8jF0AvMKS6sKIjsiDzmCj+QQAmpK27uwsF60fovKi+tvRubqlz+75XrA8gAsg3MIG8
	VCLRQdA4gfz36tpBxiYkZdnoHpP4CMA92ZSIR+xvURc7v2irKg3RpAcH+i642yaQFEPlxsXsyovcI
	vkKRltg/F5LQ2lERtjS5OduJGBE2dEdK0psWUd+HuAfYWsat+TqK85j5j1UYdDEVDCN9K1C0u7Ih4
	9fsOnY/oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1yv-0000RH-Ty; Wed, 13 Nov 2019 23:23:25 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1y6-0008Dx-FW
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 23:22:36 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MAPBF-1icV932kMl-00Bs2U; Thu, 14 Nov 2019 00:22:30 +0100
From: <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>,
 "'Daniel Golle'" <daniel@makrotopia.org>
References: <87bltgller.fsf@husum.klickitat.com>
 <20191113200806.GA1279@makrotopia.org> <87h837gyft.fsf@husum.klickitat.com>
In-Reply-To: <87h837gyft.fsf@husum.klickitat.com>
Date: Thu, 14 Nov 2019 00:22:29 +0100
Message-ID: <00dd01d59a79$387f8820$a97e9860$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQJAl4PAOtO1Er0IoRxEIXrlYvAsfwG/MrfkAjvC95umk+sjQA==
X-Provags-ID: V03:K1:Yk8v3I66vCeTZOmrn4sNYHUvWsRDhT2E/TK6rabSe0OpZZpiHmz
 Ms8fyY5NCYz5tAjJOwBFiu8Bu7zu+cUFfB7dNzc7pcAOnEwgZmpJfJ3pWJNSCu1mniRIlUx
 OtgkcUV7jbHABWwf+s518WI13UdsV2eDSeJrn1LivBz+/sdsPPQGsUz6EdeOdsYp46QGtL/
 5C5k/ROMARcottO8VBvbQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WV6Yx5FrnA4=:t/S7tNwBMy1Fh17aJzpme5
 YHVa8CzgSEIN3i5XYt9HUtsFMufm8aiqdSdRvSnjIP9fHCv1YHPJequ8JbNq2kDYY0yedMnsa
 iASGlRKo2xR+C3ExaW1uk66y64avMS1y5Cvmrcm/TUJsH4AI7Xk2AmWrgT8VKH9MM7X2bDIBR
 vzpQJAG1//4aspWn8WTYagk5dwBME2zQ0x2pYUp3w717U6y35jFskDQ07ZCVUmaqd1nQmN8WR
 fz+elMfDgenaZwcki567c3+2vM53UPofNJysS3VYxyWUiz87zTVNOP/++CjdhzuaP0S04ArK4
 oXbwOjhQXxXDB0nHK11z/A+OQjFZ+HeEqTKKFbiT667/3ESFVUKfyJu2R0zKuxVEPlBwXMClM
 SfOhyPb52PP6kOjItgiS3+Vdo0v/8aSutLkILi7SjFOD2fFbCPvd9O4+u2paRoP0fmYdUvMes
 rpf4fpE7Vyx3W8rFEqt/sw7/L0SkQS5U1bOW/cBeUdwSRH5MObAU9M6rNn/6MSuSQiysSu8DP
 YECc+b2tAZ3beGfZqsPkc3zXogPF059dRzpcyTco4XQUy0waxz5RuKQc6Mtqa49ou8URyWXNs
 V6G4KLXq7amGYZ6LDrX8cNw/Cpak0VmIzlv7CLXnnq8AYGkTMiokTXfTrZ6Cdw2phcgNrc+1E
 WeCtyDBDu39pzSDxszNQoOpPc92NwH7y6R7mAo+3r8oU0gtFye9SLVOrGwMnVQscBrUT5yPdv
 07lmpWKB6PQ3+0DW6a9oLCpeq3jHd3CKcCtGppnvgHEeVBt2fZpILlF2kCyk/NsNVpJjSsBmc
 v/AVy3o42RW75ST+fnAKnl+4SR7MKwiaq+OZ57U/tHoq4Z6eGJL5rUocfzAAD41rnMmdSwCdU
 DivyjHL3Jaz1jOVpBrgY+8l6SE5nxKRWnqTGYYZb8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_152234_828719_C985C05A 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add
 /usr/share/libubox/jshn.sh to sysupgrade stage2
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
Content-Type: multipart/mixed; boundary="===============1291416071897293560=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1291416071897293560==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=NTNwE60mmTzLLh=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=NTNwE60mmTzLLh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Russell Senior
> Sent: Donnerstag, 14. November 2019 00:16
> To: Daniel Golle <daniel@makrotopia.org>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add
> /usr/share/libubox/jshn.sh to sysupgrade stage2
>=20
> >>>>> "Daniel" =3D=3D Daniel Golle <daniel@makrotopia.org> writes:
>=20
> Daniel> Hi Russell,
> Daniel> On Tue, Nov 12, 2019 at 03:33:48PM -0800, Russell Senior wrote:
> >>
> >> Discovered recent changes had broken sysupgrade for ar71xx mikrotik
> >> rb-493g, traced the problem to missing /usr/share/libubox/jshn.sh
> >> after switching to tmpfs.
>=20
> Daniel> I've applied your patch to master. Do we need to apply it for
> Daniel> openwrt-19.07 as well?
>=20
> I'm not sure, I haven't tested 19.07.

I think most of the sysupgrade changes have been backported. Despite, we ar=
e fixing ar71xx here, it makes no sense to fix ar71xx in master only ...
And adding a file should not break anything, in worst case the file would b=
e just useless?

So, I'd vote for backport.

Best

Adrian=20

--=-=NTNwE60mmTzLLh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3MkDAACgkQoNyKO7qx
AnB7PQ/+IRiA5E16ivojOoFnDWFphdtoiGyNyWUtYvrZvZLffwkK3ktaRubn6xrs
aMmvMu7xZnnBu8kWqH/gdFkRiraV60p8DgfZGSVi9Cbero+hrXPSkuYzPcHr6NKA
ckNDKKg57KTlsfqKzY8IL7tWTI+u1fkuPLtQZ++PKQdi36f0F/ed9Uk7DBxkV4Qt
kj28Aovx4H4kDNq9ijhXCx/O6O0pX6EDmhTRpkVdsc8hjPb2NXTFvIHs8BdRHey1
N45J90s4ku6RgWUcSQ4yxyiDA/Iu3jFXjZr4E0rsQNrzvQTjXWFLEEVhDN9nDDpQ
YEFopBNFk17ICBMB1vA8/Xh2VnecjIhlS2hc5d6KRKeJ6JUBRiFOIroFIETw1kx0
looubdX0MMN/XRj8abpwjFyue4S5w0hcBfsfwsi6UACSWEBVJyXP1GTd37EAPuOO
E6IgyxCi08THOY7lLyGx3x84TpcokBKfC+L/d6cqZpjvKWPkoLut9lSj1zH6p1jE
iVtCiVrl8l3Q+9UCthJRdtmKADoSex2e6y1t+iFsyXvRdqRUaaF44XS49sD0yDU7
ohKRg7T0NHzhyw6y1QxjD3E2A1ejnIXzfq6Kx15iEHnYsD5BZuH6tIPK2vYf/cJq
Lxq/BvKZaAvA6KnGpZGV/lknSw8xVA1YA9EVhmdFewDiKhjhdOY=
=yYhf
-----END PGP SIGNATURE-----


--=-=NTNwE60mmTzLLh=-=--



--===============1291416071897293560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1291416071897293560==--


