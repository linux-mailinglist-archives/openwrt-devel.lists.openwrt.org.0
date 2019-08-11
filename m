Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2408A89344
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 21:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8sCJiUv80qzNFiOtLKNpzqD/lyTBKfNPBM46yfwtp7I=; b=g3ioomLb9MyM9/ZXm2Gy+fkg4
	ouTKEzmL9Ot97VIq8kfFogPILB0Fx151L14iNkBIgKtxAETC8rVvOV2cG8Gfsr6YM36FjLK/ZijiO
	T3lUOE6BeEyKs3Ej7+1i1pK5qc1WuRLdOuYCfhfm6FVuLYjlVE/fiBNhWtEGkiUXGCUQGFbV44Qd/
	i7nF+fpl6GAVeuwrRJ6NQj431TaZzlJAhu8kt/LKB11t7xCn19qyRNpbvo2rKdjvYSXW1hU5Jai2A
	bC/JRW32IcxHqQ5Lp650CC3sPg+yYh9z5TBau/WlOA3UtvHK2cPO1vI+rS/ddpAr7xs/H2Ihyl4My
	diPDDq1QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwtJb-00020U-0C; Sun, 11 Aug 2019 19:15:39 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwtJU-0001om-J4
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 19:15:34 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N0Fh1-1iC6gL41CB-00xGQ4; Sun, 11 Aug 2019 21:15:27 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <1d85f1b0-7cdb-68d6-3535-72666de254c3@birger-koblitz.de>
 <01e901d54fb9$0e1c56e0$2a5504a0$@adrianschmutzler.de>
 <e8a33d3a-3994-676f-5b47-bfe2e91e75ef@birger-koblitz.de>
In-Reply-To: <e8a33d3a-3994-676f-5b47-bfe2e91e75ef@birger-koblitz.de>
Date: Sun, 11 Aug 2019 21:15:26 +0200
Message-ID: <009d01d55079$220d4ea0$6627ebe0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJIImTgqpVld/JhqOEe/G1Y6hA9nAEcUHgqAmyz/y2l9GSO4A==
Content-Language: de
X-Provags-ID: V03:K1:jozm7gUdkZpQUJU31dNOuLDQgUh/qTxeP5UMJbuKYxpCXwJktj/
 OSuxcyCCLnTtJUQ4CGWwNh/r+jFnwNIH0zDuH0wfMhk0Xt1jQzzdRYdqum4sN9Klcm6EXS7
 T0MSDTPH5CHM/n/WuViQSErQLQ1P7q1uLmitbtL3PdGsO6c93HyqPRu8loYOHHBkZKIWnke
 /3/jssvwdcq/XZucmKkxQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FC59E7wowIM=:U/ySss3Lb+FGQ8vtPuEPWw
 Rto2sIEp41LQfv91XgC4pnoQHGFtRMvYCvIteL0E1VT5H60fjOSR2UVYcYi/JQYUZR1OYRfzS
 PSsMOnkxPUPZIYZWX24kzYetogupZeLetiUw12H4OoxdUPtSrNnmkQN7E6NymSQXz5RJmBmes
 ha2znXX/86Pn3SaMP/P36ZUhkwOicXDqj+QJiXKcb0H5mUi/kExOPkqYVtGSlCeoqFPXBPfer
 iUqz5hBRNcLXukgtMJZVDc1PbPJ7D9TYi5ZoA++taS2PzGt5FNkSd35Uqm+rcZGq2I9QRdV24
 hZF4cqL43zJPUxsbQxq38FPCRuS2Hq8//1kMY7My+P5FoyGbyH9fPY+ZO9tPu6dFRFYVVSF4d
 irJQX+j2j8RkuLYshdsMdylKHJojP2puSYch1L01EZ6pwXIqZT5QvXJ4iyizzArlBaj3tevsU
 S1+O2cULj9Ccd6wS9SIHRtH9JYnh1dFTWTrkZekIgAQrZoJo70auxWNE+ijZWOlejWTg9tlPi
 GNFAbseESo8HpXzdI+jYYKsU2g0N7/XdoacmkNlZh8ct+BNQDrQ/P0YAlxV/JoD0GwYkq9s1L
 O2sSJker86oIWjtF2iA9PYDbZMc81KJQ8/t8M0L2U3WbE5YnWPdecIk6oz2lSPlwQPlVoNYQX
 xScPcywhHwvaXaltQ6zszXjdAFoCBfnaKqci2wkPuVdVaHS7kq0i8OcqF4Snncl09CXpTsVSd
 uQMLEtVoM6Gs7TdVnKMO0Sx3fPNZ+xH2wDL64sLcc2jAi1KmeqOPR+2QMVg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_121532_925882_39F89D99 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============8706787651900258292=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8706787651900258292==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=pAyqJMT/nW/UW+=-="

This is a multipart message in MIME format.

--=-=pAyqJMT/nW/UW+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Birger Koblitz
> Sent: Sonntag, 11. August 2019 13:11
> To: mail@adrianschmutzler.de
> Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use gpio_hog instead of gpio-
> export
>=20
> Dear Adrian,
>=20
> I'll resubmit a patch taking your comments into account. I am using a scr=
ipt
> that parses the DTS ...

So that means that duplicate &gpio is also treated with automatically (as I=
've seen with some devices)?

> This should also prevent the double naming of the nodes. I am actually
> surprised the DTS compiler did not complain... Things like
>=20
> -=C2=A0=C2=A0=C2=A0 compatible =3D "yuncore,a770", "qca,qca9531";
> +=C2=A0=C2=A0=C2=A0 compatible =3D "yuncore,a770", "qca,qca9533";
>=20
> are probably due to trailing white-space in the original, I'll stop the s=
cript from
> touching that.

Well, in this particular case it was not only whitespace, but the qca chang=
ing from 9531 to 9533...

Best

Adrian

--=-=pAyqJMT/nW/UW+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1QaUoACgkQoNyKO7qx
AnCwUxAAmdfofHecr41uFDc4GR7/yPKLsuYHXKf/te2DVPqJwdZB9jwIUSgW/1Hf
owY9YaeUGYnjb3lZ3Ju5o59Pa91t0NeL/w59wq9CxuGm2tiiF+eAxVB1qsHhzO9O
z7V7FODXQA9EDKlLXARV8jrPwJ34t503aMPqo1cgZkvLJ9p2v7IJZ58mhT4x76tz
26JjSaenv5Jm3iWuayPMBEIYxT057EheNUg6MZyKtK4sWw1zK4oBdItM36E83vzX
sRLnPaMFpr5lCsddGNB4ZtQ9V9e3/c+X3CRjV/PN1DXGcAASZxICn7sJoNVz6gai
FfVdK+lnNbB8TfikxdV6JzSidx4khSpWpvlnBKdWUe4oSupVIxBt1DIs24P5wesS
/IpjtSSgKLPpeRNTnxB1J27RvV8A8hnDIJwagkjOJ57YtBE5ocCMY0byQje0BWYy
i+AKwAWBBswyfuGEOGB3YmYFQsBWPgblztvsyhIdXOUrgwBdx391kPk6i1MCuRPU
1hB3m0VLMmfzXoP8dEMYm9yMtUu20tKgCDyZxBzeMMo+40P02QpJ9Igh2LYSO+nX
Yjc/cWYh6afDfwmBbRxKIibw08FgMP5ScewqZUID1qLu0joB8oLcEr+swzkm+X0o
A06QZiYuzOPuwGt8ygtiQkRND26aY36libPIhCDfrFkfmpD/1yE=
=ZZEq
-----END PGP SIGNATURE-----


--=-=pAyqJMT/nW/UW+=-=--



--===============8706787651900258292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8706787651900258292==--


