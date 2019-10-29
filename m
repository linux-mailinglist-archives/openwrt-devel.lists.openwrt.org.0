Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACD9E88F8
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 14:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ybORgsag2cYsDssT6yh65re+VoHjOsRZqy2Jew1CJ8s=; b=L6HiF60Akn+31AzcDkUYH4fv0
	m6PnSiSuFG9/7dkV3B1eV4BjBrYkRXB3P5qHMnuwBDNo2dmDif0OBw4qn70wtgGr0+AQSsth7RME+
	4fL29vHP5MMSHkBAcTJaphFBRob/zhBB8VJ83oHyrv4dT+MqXYisemUJJHSIhezeFVPOL0TPzHy4q
	yuhidxrWtHg9tTWDao11CUlNmRHQBzVRC3j2SsCG54K1glxa3tZlZlnBSbmbn0Ffp7bsLlqcIMuEr
	hgpP2FHDjcRQwArQGX7IVeVbYRtTk/kWnWZ2OFLWp+wtJ1qGTa7QwyPE7wbum2VVrh2ndSDXtijHT
	hWB+vysew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPR7a-0006E2-5a; Tue, 29 Oct 2019 13:01:14 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPR7R-0006Cu-Bb
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 13:01:08 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Md6hP-1hrClL2neV-00aH3O; Tue, 29
 Oct 2019 14:01:00 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
 <025101d58d89$ae223110$0a669330$@adrianschmutzler.de>
 <20191028135923.GE22393@meh.true.cz>
 <004e01d58e53$f2a70700$d7f51500$@adrianschmutzler.de>
In-Reply-To: <004e01d58e53$f2a70700$d7f51500$@adrianschmutzler.de>
Date: Tue, 29 Oct 2019 14:01:00 +0100
Message-ID: <006e01d58e58$e9bad720$bd308560$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFFJmztUCN5sLAVwJsetvgPCo1uJAF9TdyhAYEzHPUCIBLaiAJuOUH9AvqpwZ6oPiX44A==
X-Provags-ID: V03:K1:UV6/YtVwTZvql7fqxkQQOZfXA7+4KnCjG4iyMJkMPeJRfFGrFAu
 cnB48jactNqmbNCYuUVkpkpb5tRNkWPMN3khNpGM8GN5i0Uzt/uqFA6Qo7lhQIk16KoqT7g
 XSwLo8ZSZXBWo4G+Kr4R0/YJHlRYLX6YSWc6KNlEc3/49tZSa5YIu2YCudEdpSRdnukcOU+
 +C/Gj7RHZXNmUnr/x6gZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EdC08K2qz/I=:BSRslBji1q5ydtD7ASrQk9
 LmJa9I4ENEpAsbN34plWr+NBk3R4xSlZp8rb4SWbD4jtm5Dz91FV996JbrNEP5WeHmxDlaeyw
 A8CCUSwIbDHJam0dl+QYTSiSpnWpuTnXviAI+qIYsAbpsGQEcYY9P9C8wtQTf5BNyDk1QHES6
 6X39z0xeU665Ba7Y4uVRgbHblkHHdmFJQdzuNfXRl5wMMViGxSNsly+NxKc4LvbA3tWCqeBn0
 lVhBbj7JPWjoiqOsqtvw09spPgo9+K2/mRBWnDga9G90eWyRR+LTQ8bA2V20L3kN7TxfTl/WB
 i3S4ToZNr/3N5jrLo2KDhSu+GDmrTesuwloyOYxiQen9dc0LRFNQxM4QeuA3gvtcwwXE345s+
 uB56j0fkczqD3+SHrstjyHU9d++qhWXAVFAivdNpe4hyiSqrg/497iqnxr1OugkK1LPgraZ/B
 JH1mlJLJtJCvYAIl9wtECLzxYXccTOs39GBr7+yS30VstNEpDQS0xrwnTWn6mmjCJvFUqHK16
 cwlJX8sSnucGonHMl8rDD0atGOWaqkFad3aGEa07MZHeTfSm3vxPmP82fbFlBo1FKML9B8l42
 ji+hRCKNXST28QcCgC0yaO+orZqsy0mA05wiy0vCHtgOMHxfThc8rw8+zW9Srwl5ujkQ37ouX
 v//CLyHuKE9krJ7amGsYMPPYckXMwUa6hqT5/Y8D2xz6a6VJvw90cXxXQMftwuVfPu1qxhLhu
 IDI4o4MUjLsCd81nytrdhwh9HQ1VbkgEkqY9ddKHE7mtVzZkd17GpVUMSz9WHd1OxwVXRjwLO
 +MvdyoGGDQOXPqLEz31JCVHaa8rNFgMvPyCwkknd3HYbyX/VXL/IoKZjxy8nEAB3VpAd0tVIA
 1l0Ty80srth+zY54Qr1ZXU6l+VBflqgki+JK4qG8E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_060106_550348_C39E37E2 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] improved handling of contributions [Was: Re:
 patches from 2018]
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
Content-Type: multipart/mixed; boundary="===============9101458601615259405=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9101458601615259405==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=nZC8cB4NMHgjk4=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=nZC8cB4NMHgjk4=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Adrian Schmutzler
> Sent: Dienstag, 29. Oktober 2019 13:25
> To: 'Petr =C5=A0tetiar' <ynezz@true.cz>
> Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>; 'Tom Ps=
yborg' <pozega.tomislav@gmail.com>; 'John Crispin'
> <john@phrozen.org>
> Subject: Re: [OpenWrt-Devel] improved handling of contributions [Was: Re:=
 patches from 2018]
>=20

Addendum:

In case I'm accepted into the group, I'd actually like to introduce a "stal=
e" tag for GH right away.

I'm currently going through some of the PRs without response and ping autho=
rs, and would additionally label those "stale" if/after I got rights to do =
so. This would be PRs with at least one month (even more in most cases) no =
response from the author.

Note that this is not meant to force a particular solution, but just for th=
e convenience of having GH tidied up for the moment.

Best

Adrian

--=-=nZC8cB4NMHgjk4=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl24OAgACgkQoNyKO7qx
AnCrpA//dVsRrIuGTYWlUT3Q/d/9tFFjl/hyW8qOObZ/5Vnpo5ohQZaQOD0sbrIV
PiYTcLaPexqwQU1rwQtbFP4v80BdqfPOPwKVPRhoZg6Mjf3QBl61thqRJ/2PX/Bd
TIVoeJzog6FddGlnqfgRqH+x8Vd9VdQIQ9WfkvUpS2ceKlrHrT7/s1EVY6P3YSXV
g3eLGGBv+OR9nWstb9vNDWVrfgiA///jZAUNXGqAWlfw3HyfD7ZW8NrNh4cTeNLg
MGoSp3DEJfYHcKE7JVYlocrdYvfUsBPQXN7Gs15G/TQBR4upypDSaR98KU4o2WIb
1ekjdy/n/51cP2M3w0erEDKUf3Iyiz4Cdb6colEz5Y+q/gcRGaVYTlX1ssUfERk3
A8a9VjxjqJFJiBVutYK0wsSBeYu1a5mbfQ/9Y2LbF3Wvpdzin6JP0HGp6I+0Jb3L
qDE4BPf3bKUFklnM/vH3FahcpUfoJ42SUFZRcFj9D3fG3PY/8EHoWp9JcN1dEIqd
imOYewQIzTUpJ7Y50dKEU85Y5dSymhys0QVm7ZcklZyGtD+5HUc7nMAZPUQx1acs
lmLfDSFAsF8ZTIpNeHxg5exHwuIIHslhDf3ORzMm7Ey7yZrxiBtBLAtNMrNNucL3
uwUF8GE6jHCofnqpkpGIT8vvCtajOKwNfH7T9D1ZMyIemeBwNhA=
=rTnT
-----END PGP SIGNATURE-----


--=-=nZC8cB4NMHgjk4=-=--



--===============9101458601615259405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9101458601615259405==--


