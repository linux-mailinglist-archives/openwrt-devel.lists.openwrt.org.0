Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 664D581E15
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 15:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ghJKvrloqsupmHK0+6qfEz1xw2pRZOMlfy+ogzmdbR0=; b=SfRpz2bFi87EGCwo72sKoP23g
	VOL2+JA8UOyijFfX56cRzMC7sxlcwy0Z/CiLNAbLCR501UtrHmEkY6UA/n4ZY8jbW6ma9BcmVD0oE
	eVfpWCo5rcZH0zW+LoHRLPA441OtyrqPeaX5I/xSqvY55jJ4vzEMXsk/8hsV6YvdSROxglRGeKyXf
	i2tmTNya2OC7H6IDtHF+nwVf1NoQOqQ0+GxSmli1G5ou2G7kQKflwVCLT/obIHJeYZHRyPgFAyali
	pTtrVMbgeFEF7+EBuYPxDE6xFD/HIfyREmyjo8H94kvNdltAbD/QgUGvn/dzTxwXakQEl9/A5rN4S
	7FtMq1CLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudQx-0007aM-VN; Mon, 05 Aug 2019 13:53:55 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudQo-0007Zx-D1
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 13:53:47 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MStT6-1hlKH20dqw-00UI8I; Mon, 05
 Aug 2019 15:53:42 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
In-Reply-To: <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
Date: Mon, 5 Aug 2019 15:53:41 +0200
Message-ID: <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJBfM1NZ79tOwTjV9JMAWTB41mHwAEp4l6fpgrhcMA=
X-Provags-ID: V03:K1:8GJxLU6lyUm+LmZyWTQkaRx/atXuMITyxcRWks8Se6Qrqno7jOx
 TUNQLX1kB1y24+HJPfYCO8g1C8gOQvUZWVUC41VYWH/Wt8QMl9N1ziJw7MSyhjdBk0gL/QR
 9beBXxt7DAAuyAJ4AVjXvKTWi797Dwd5ZaQsOH810mzRjqn/a0niy7CUqgKfUgERGcXN1VZ
 KDdiXhoqyRt7msaN1+TzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DiMlI5xhSSI=:IqOww7L2YaCtY8Xmu/FHkE
 w0mHpqiJpi15Z/nADlwbS3VV93VYjoXeEEnnMHnTvrBw7aWcohdZo8q5qRZ34NRqwv2DzlarY
 bosTYOmfAeotkuJ1jKzJQJWIu55zkzW+2BkXYXLXdLY/y54MOVQR0lUsQoLBeKoIKizVYmx40
 Xb9zkph095GCh04MsdsCC2d7kiqVewakGaL0cxuosWF1zRmpr+s96Q5BGaUMI8VBbtVbZnviC
 7Hz+E4Yhgr7lV5kLafxfLNyOyDO5YxXcwn58/HElX4PPDiVy3P7UnyRolNljvvyPNiBWKOiRE
 p2IYWjjw3XdGUDf5CS1TpivMW0qvCNrB0Y2mJsSc9EFjbyF5IgXXcwkQ6Jo85yDKbLnU6/av1
 gEV0ykbhgZG8r5MCcprDjR82tO42CxF0xeqWidf7xk8aS85uoKzPg84iJ1AhUmz89FFeel/5i
 qBrLWeGUDfhNdrSsROAvWIoxIV3LRscW01eBPT017jwSkVVtx9xiI9aZgw32DwxVF6/cRL7Fu
 dJKN/kKq3jvOr/gbOQESryLegcYLfZNoLJFDm+rAErEtfiIIsgOrn5jdTEi/tY5VZqoiyL+8N
 pDajdYjdCYd0ukmIthAneSsapFnmk7C7u79T9E88ie4OI3qR3rVbkG1PTkef1H0kw3glB2HkB
 WAUDY3ePRrPpJrAT8H3bQ72FVslEQLsqpo2UjNrXZk6fYGwSK0utN3vzkN4wml07v7Zez2IFK
 qgx9WL1SxfldS7vCMkCNGNHqGTanZileKdI4ZhYgxw5sbAjAjipdpWpfC8k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_065346_730200_68F8AAF8 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============7333639745181192167=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7333639745181192167==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=/JextOjsohegdL=-="

This is a multipart message in MIME format.

--=-=/JextOjsohegdL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Dmitry Tunin [mailto:hanipouspilot@gmail.com]
> Sent: Freitag, 2. August 2019 18:51
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to interrupt-
> driven gpio-keys
>=20
> =D0=BF=D1=82, 2 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 17:46, Adrian Sch=
mutzler <freifunk@adrianschmutzler.de>:
> >
> > This converts all remaining devices to use interrupt-driven
> > gpio-keys compatible instead of gpio-keys-polled.
> > The poll-interval is removed.
> >
>=20
> When I ported DIR-825-b1 to ath79 last year, "gpio-keys" where very
> unreliable and I had to switch to "gpio-keys-polled".
> I didn't test it since. I'll be able to test only next week.

I mostly have TP-Link devices, and I've never experienced any issues with t=
hose.
Looking forward to your test!

Best

Adrian

--=-=/JextOjsohegdL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1INOIACgkQoNyKO7qx
AnDVMxAAwJ8/KhoplLOo1Zyq2rz3llg5r6K+moLPhaa6FD1E3G7iz0yQ69ZjMkjg
lNDoROXSM3WVgYoZkqoZeedcE+0UrIDkKaNnJh07oVoqCTqiEoRAyy+vTFR0hhFM
MOlTwky+FitxnABRjqem8hx8Uq55L4Y5+UkFuvAoCiJfQ3T084kvMdxkz/PJTw5P
zZ+93gFlk5vkp3ac74RfVl44haVmaZcCMFGZ/dslEwN6v+/ewxLesb+a9NyO2xWw
k6ZU4mo0Kp0lzocCAfjjvZk1BnYLc8GdbmUVq5qMpqnHCZGAc7wlOt2hMOJcgdez
Fs359INtysrH0BgAJfMx6O7FLmmhSK9N+JnmPFINhYQn9R/eQgpMoncE+hqs+p0y
7gtTfgLjYIwnRL57x/m9zbdazAI2zmW5DV2uusJ66BdJkB+cNS19AROfHJIHrtu4
m61Q9EWg946p4WVRjgaSHmWlVL9OWPJyz1rMAqYrSNktKP+E3d4gRLZ+0VrHhDPy
cJVsMKBCTqHvxpvIwzRGzIednmbRY/ajKRd1e/j+qR6Dkm3Mcv2cp/E5vgs4IW9v
N8ROm4096RYs2w/iY81NJkp3UNVSJ/SxBGqw2osvc0QB/rl5LvUG3ifXvQus+iih
k1+l/fWT7v//y6VJK3ZyMTCYYU9sUVj1KKsq1NBCtAlKvkewUxE=
=e8sm
-----END PGP SIGNATURE-----


--=-=/JextOjsohegdL=-=--



--===============7333639745181192167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7333639745181192167==--


