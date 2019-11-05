Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EFBEFD69
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 13:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=078QZcCHn9rNE54qvy5Kf0qcqKJAE2yUy7XGAjApQa4=; b=meisaUXNT/QDaRTiS5GDxFb2E
	6mox5vuAX0f7yByohP2JDruyG7Ggf4/+q2rCXDW6y/XmXO4pKP0FVsCUpiBIFfVDidLD+SPnfuSDB
	C/BHbiUbs7BebxlHInAwwaAhItyO1Y5VWoI61BWwk3hZYqKoP+bKrFqFa8lBI0L2QXmMSrtkJOU4Q
	+xejaMpEUrMxMmJnHWmvWkAg+elEU8GL6ctdJKfNWpHabT5p6i6ACjsdwRagShliTXJjOXNAGHEgX
	EHoGKBraqUpa05kLDkpgCDJ19nSiNLRrzwdyeFw5qndNi4GT2xA6dMfXRH+J2pXlP/zyrZ42CD1qD
	GiYWKzhbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRy9z-0001Pa-Eo; Tue, 05 Nov 2019 12:42:11 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRy9s-0001OX-Ch
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 12:42:06 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MQvGz-1iG5XE44E3-00NwZs; Tue, 05
 Nov 2019 13:42:00 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <024701d5932b$2eba0f40$8c2e2dc0$@adrianschmutzler.de>
 <20191104211944.GY1190@home.paul.comp>
In-Reply-To: <20191104211944.GY1190@home.paul.comp>
Date: Tue, 5 Nov 2019 13:41:59 +0100
Message-ID: <009501d593d6$6ab6d8b0$40248a10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMAGbqKFWAk1CkmaoPdnyIA==
X-Provags-ID: V03:K1:cu+Igh9jbSsT1a7cYuxLYDXX86OUZhnBq/y1LIqPvkbGtmGMlPl
 R6T0WvvwkTXC1Kykg2ezFkxPaTV14TXWTOdvMSIZeSaIvZPOkLmMDQlVhgJjlEzBD8ON38Y
 Qk4FJygARaZfCXaki8HVdgNYQy4HIC+qErPX0DPn0UYZiZSYFYbpKru2imPqTjAeVbVIyms
 FDO2gM3jR320EUnwzJJ4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SEq90NFdzMg=:kwrBM+MSYZnThNIQ7zXe4d
 TGJHJfiD3fySAy9uSSVEjwnke+CZFai8eYxPJZxeHoPZGpHg0wyH9uNlx703IKz6DUVwtCCOL
 2LyEBK9XC0AGpsEhzm/DheVyHmr+gRA0dS+Ok+pw/nsR4NlSuprrDPUtAweJJwL0r0PEKnhb5
 gyFGcqCmr42NGijMJONnQ6xcQTlAKsScuOiqX7JvLA931uDcOr4Bbx29y31Tf3bJzYg6tKh28
 X3XDidqiv9J7Lhr/XCiKFZNh1kp+11fcyW9S4eA0KvQy5jwWzzkkZ4l0IMgcqXwA8pObdEMFq
 aXWqO3trShDIbT8/aOggVVYwlwZXPzZ9LGkGZsfHp0L7zEdjnSZHpRjWVThYjf/DNGcjE8N/j
 NHb2CS6Sb5iQ6A96A1pYEBO8gNvlQ3PwMio2rLFCZlJzP0l4yLsO03DS9vVcDqMGYP/tKH2Ss
 yydpF0SYrXp1vBcMhqnrZajNk4xQhewGyQn//8M53/EhnXjKs16BZE4L9rbHrNHYAq5MXX0L+
 Z71k1zYzvnrAnU7mifVZzDYCP39Pe56P4MU3Fa31v95rL1iU8Qs62hJLXMQscsCUPVTlEKmlJ
 kHRBuktJhFhlPD8tfBF8iBg6MCAjfo+geV67sPyTX/JIJhm7qj4YYQBwg1An8zXTSPfLqSLRI
 mHEOwfY+jDt8xA8ymhHdLU/ptc/sB1NwcXK1cU2IZl4aSUeq1Z376pKXQshVENb3hCoAGvNxe
 Rsz+63ZsGXFwtqlP1ApoitEePXXt9iRzT5dPY6D+cRGhoS6GzRkTYy++gobH9NHVhEjbG+uCS
 FwC46hVyTNpREgdYYAAlNNunkYwVJ2AqqwzCjOJMoFZ1tDexpi+x8xExncGYqS5OxuLdjI/Rv
 U7kEiMWfZa5vUHOnTGZtIlfZYo6hGh/x0zqr8f/Xk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_044204_730483_A3D1065E 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Content-Type: multipart/mixed; boundary="===============0821200606036749408=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0821200606036749408==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=lbohJFnsOG2Icz=-="

This is a multipart message in MIME format.

--=-=lbohJFnsOG2Icz=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Paul Fertser
> Sent: Montag, 4. November 2019 22:20
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
>=20
> On Mon, Nov 04, 2019 at 05:16:15PM +0100, Adrian Schmutzler wrote:
> > > +		power_green: power_green {
> > > +			label =3D "d-link:green:power";
> >
> > It's policy to use boardname instead of "d-link" here, except for tplin=
k as far as I
> know.
>=20
> But in this case there're three other boards that can be supported by
> almost the same code (they lack "wlan" led but they also get a bigger
> firmware partition becase they have no "lp" partition). I am not sure
> how to properly add support for all of them, especially given I have
> no way to test on real hardware (except for the E4).

I've just looked into ar71xx leds definitions and it seems like d-link has =
been used there consistently.
So, ignore my comment in this context and keep your current d-link:green...

Concerning adding further devices:
No merge without testing on device. You can try to build a patch and then l=
ook for other people testing, either in the forum or as WIP Pull-Request. Y=
ou can try to check older commits for that device to ask people for help. B=
ut without proper testing we won't accept a support patch, no matter whethe=
r it's a new device or just migrated from ar71xx. The only exception may be=
 made when there is clear evidence on a 100 % clone of a supported device j=
ust with different name.

Best

Adrian=20

--=-=lbohJFnsOG2Icz=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3Bbg0ACgkQoNyKO7qx
AnAdJRAAhyrI06O06GJcLMKjWL1gFCVv9MyyPn1n1TNikMiEu9t0fQN9ElY03KfY
hoC+nRHyzTsjm33nFVaZghzowClsjBBH5UGrf8Ec3L5oRV3zUkOffqF5giX6SxYn
N8xalLnqliOdN/nIFyuhOE8T8Mdkb1jmIAzXxJOIEi5B1y/cdcm3F+D7zP+QjNjk
y0faiAUvEtW4xZD4IO41ydac3tfq0rbpTVtI19Gmg/O0Rmrgftp5deFTu3Z10eJG
Jyf4LPgYuwSms7XnENWJxYrTXtc8pGPFmIze0RvHKuVooivPzkQCCfwninTOFBi5
WPXQl8uzWG4+voxLeVSqQ96L1RTEEv97S6a62i0v35/hsNqxV+HDoWMVHILeRQlA
xefAcZlNEMOM01VQQS8QKUuzIojSi8gn4d7skRqf4til2RODN/9czUbHGgmQMPau
oKMBiauoqQ+0QF+Ax8BRWveOXXK1/UJR+LjsQvBlKdpQau9fmsC7o1f1QW4yqgPC
nfDItpuGEM4SSeMQaRrPnhM5TkIkZhAdPgblfXMXQgeSC6D21iONXWr0VqtjKGP+
SYVea41SRBJDkpqd9IzTQHlOYZcTRJkxad0nF1MUIiZAw0DPd5LXdIO/z6eZCama
AxDbjs8WXByGI+/fTKbj+/FhdTse6N4KW6zFndK66eY5io8J/+E=
=pvn+
-----END PGP SIGNATURE-----


--=-=lbohJFnsOG2Icz=-=--



--===============0821200606036749408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0821200606036749408==--


