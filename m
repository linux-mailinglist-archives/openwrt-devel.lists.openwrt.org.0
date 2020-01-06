Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F25131C5F
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 00:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xfGmp4rfdBzHC4hpMU6g7zMqtIJbZTSlcGws89beACU=; b=rSmt/vmRqjGnpwIqbZYouvrmc
	XBoXnL6B6Ahazhvs54zUzhIgjHsJfrhd2RO0im/81KbvApI0wHJjWqa4KDTJqyE5E/UNvcQwWx5xh
	fyQ+qsgyY2mkwyewhstAGZw3t5RGNZHTrvXkfap58Qplnt94AiCZ2XUcKvg+h7gXVqRvuZT0CAKdF
	Gf24lB8BozIuCM7ZEPhUlQ7kouBB3bstLEpVUgg3ctUBO+olI3yzTiojrVF6dIBhwuv7uo0vaVG/u
	5VELnLEgfsECgSi03CpfXIJLuQlm0FPel05HHza8eN2U1T1xkxKlhkj6fMHhGWU0LC1BFyt3E1Lpe
	Ad6EOot0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobpB-0000V7-5m; Mon, 06 Jan 2020 23:30:17 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobov-0008Fj-6G
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 23:30:04 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MHG4W-1it3mo2AL2-00DHF9; Tue, 07 Jan 2020 00:29:58 +0100
From: <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <419e6c10-b330-300b-7912-cc67de5a02fa@hauke-m.de>
 <CANoib0H92u+9pgO=TVdkoAjiZbdq78x5jA79SX-Y8Zu2+W8veQ@mail.gmail.com>
 <000001d5c4e7$444b4250$cce1c6f0$@adrianschmutzler.de>
 <CANoib0G5abk_5FG3PKfNex5D64QaPS28ic5a23aDuvi6e+Frww@mail.gmail.com>
In-Reply-To: <CANoib0G5abk_5FG3PKfNex5D64QaPS28ic5a23aDuvi6e+Frww@mail.gmail.com>
Date: Tue, 7 Jan 2020 00:29:58 +0100
Message-ID: <001201d5c4e9$35bf2100$a13d6300$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHxRNThZdkkeYQN27DoL2uWc/xPGQJbtOBnAfs9ZPkC3XVq0QIsWrl+p1xCE5A=
Content-Language: de
X-Provags-ID: V03:K1:dWj6qm5YzIxAZ6sM389UiQLF4SP2Njn+Z84GT2U1XVPAEBYX23H
 oqqa69EVj3nEmWKU+gvT7ude8Wcl7x7kCimEq+KpNwErrnpLiInqQWAsDmWfgUDRlFSFrar
 FEfQBmQmZXmAJAr4G3F2jB6zI08igLMufO5d6BnnLZ6+VgcO3aj1sq9C32oHnn9n5g8bBvv
 usoShqUwmQFep9t0ClqDw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WN7OMFU9/Cw=:1MJ+VvvBoylnN/RD4CAkvS
 HXBYUhAQarDm+f34hY8l0Chlzdz4twI+Ys77sRR3+xcU4RInSUhS0P5l2fQK62O/vPGmRxDq2
 O1GjcYBOBKp33wzbLhxVomzpdxiQW1aUDJTJwqULUgV9kCRWfzpLmBCPKVLx6yb6MIh6Hjbh9
 ZYGV0IX1MowfGTpFm2kgtMEPIDE9El7FEEwO2P9MT/e6S7bZ291Eb5LAWR6VPCDe09G3cvrNi
 PZ89I0M1nnvv6vWgsTjblq6xugTmm6rQ0wJqZ6JsSxbaVjQRl2bqS8wa9UR74ZdXasLP1RJoh
 ZODg0xpXIy57djsP/thAbFUhpalQ4aLGbTE1K+WRFmsn+uOtDh1RfQDYVAnXaJDMLAL3tMvXa
 yPRRuUyBQwr7eSNQkg3SUmiWlIyG48ycNzkmO8MRDy5A5XZ1cqBEdnEFV0THxyUjN2OET3YR2
 lx5BGI1QWRZwbRPva+gaPxoU8K9elFKTrMi13V4gqLmBNEO9Tr2XUiBYaTuJVIOMpKO9sxpz1
 bFpt+qVlSk8z1xN5OfzUr1rFrzDiX3coiSHrPok2+LO9jp+EOpgwcMME372hBI+fsjXiEv0oH
 bcL6fs4YtjiAaRK1Is5h4LSlltBuGy4gcMdNwOm5l49ewsZ4UHxfqQOWN4r8UbufwEWdPNj4x
 pi9JFJkI5RnWNwrZ5xsvMi75Nkw14BDApedyL0BfbUk/R9ayYyPzQuv9+RVE+1AtYoVQXLcq0
 zmXJQZ4SFg5l8ZlyuaCms9SNvDwuO3DQq24y5ZTN7CaBXznIQpIuTD0KqXfLcN8ACbpBpo/fZ
 TB4L1LiwBixiKxU76S1Po3RoYdVbLo4Xf6U/kO+Kf+wJcf5NPnnXcaXlh6FRJfBRakGxYoNzE
 BpgT3guzzPQKGwuWz4BsPBF/xAKjkeUgokNQwhcJU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_153001_534712_91402754 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: 'LEDE Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7212205232735134919=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7212205232735134919==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=fQAUhN+7FVH7zC=-="

This is a multipart message in MIME format.

--=-=fQAUhN+7FVH7zC=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Dmitry Tunin [mailto:hanipouspilot@gmail.com]
> Sent: Dienstag, 7. Januar 2020 00:27
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: Hauke Mehrtens <hauke@hauke-m.de>; Jo-Philipp Wich
> <jow@openwrt.org>; LEDE Development List <openwrt-
> devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
>=20
> =D0=B2=D1=82, 7 =D1=8F=D0=BD=D0=B2. 2020 =D0=B3. =D0=B2 02:16, <mail@adri=
anschmutzler.de>:
> >
> > make clean? (would be no. 6 now :-) )
>=20
> My apologies. We are in the middle of Christmas holidays here :-))

Didn't cause much work :-)

Enjoy your holidays, I will start working again tomorrow ...

--=-=fQAUhN+7FVH7zC=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4TwvIACgkQoNyKO7qx
AnDCrg/+K/BhKUuqM5hwZzcmGVX3bOOImyVL4abNOFetSfUlq3VLwsJ8an183VAv
AJT4Y5KiJnx7OoeZm9dstTMpT0Lda3l4N6r7HdxtJ7QwRo2KgZvarwYfBI7w5xhg
P/ZVYiQEDiSC65Xmxvs7NPKTJeJ6NhykqLMGgVSvHmADFcWKEPXA5LsEovS7Cmt4
KAaTTqeut8EJaIvp68b/Iugowv4/MrDMvhpsz2zAeTAJeOun/lm6RooN3NtpkPW4
BEsTUVi/t3/1kIRQcyUko6jUhTDDsS7Mqxj9vxGvm4mN/W/DlIXIZIlCzB081Qvo
01kSWBQyFxmlghDS3kDNWo5TMS7G9HoxSrKNbv80T4c1fbQXyV98WpwkcguFdsKs
qCHMYd3Bg4Bf0EwLeN8t7X3TUTsKN142CacvnJVi1Z+gTE4rXzTbrmJFX3JPoBt4
ZrUILlZHrHSUKVhzno3Uh+PH+GR5wjx3k0krhZ5wiMj6xMY3ZBFIIVIw6dWnWznm
EuLARJaamJ+xWnGKwKgpEH35AFxUgDeC/GwwF6WUA3mwgvAHITMPalZrK2lUQ7HG
XkBUzUutSxkPMURkgh8N1x3A/7AXElBKDg3AQ1NpFDyRxb0TV+DKTE6Kq+7kI0qX
ui0u2In9eIsXHmQ4o7IVd+Re6Hkn0OejedajfTYmd1mGZdWKCj0=
=70oA
-----END PGP SIGNATURE-----


--=-=fQAUhN+7FVH7zC=-=--



--===============7212205232735134919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7212205232735134919==--


