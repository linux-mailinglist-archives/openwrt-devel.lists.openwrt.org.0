Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D250DF0A1A
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 00:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TKyIKoyeui7vyNA8v4EORrpR4LsdmkRBVe4uuM6g/kQ=; b=oEbeVyU1GKIyNF4yAJRjvn8U4
	svsOf5EWtz+YRBp6ad1HMH1EiF5fH0oxIm03PcAKxhmArBi7uqU0tGwODU34Pnu911i8aMMokkLzL
	uoWO8Cw+qB3im7itIaz2L5M20J89R1+WmxjAN3IV4EMxwoqPiQOt0hfnDS1rOrm6Q9SLZwlTr7T4o
	oZN3A1Jaz1xMoD+T6CyOv19WtWgjHI1pzstwZUn+p4MnzE3ychZY/8oJou8s9G17qa/8jzIdhKQdE
	YJtb4B4ujKDkg3Vk78NY3vXwvEqtBha19IjWIVrx/61Rfmayvn15okkKgV7dTWGt4Yz+f5ZLuhqmH
	xQGh8A05g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS82H-0007aV-NR; Tue, 05 Nov 2019 23:14:53 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS826-0007ZZ-PG
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 23:14:44 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MacjC-1huj1T3BIQ-00c9Aw; Wed, 06 Nov 2019 00:14:29 +0100
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
 <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
In-Reply-To: <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
Date: Wed, 6 Nov 2019 00:14:28 +0100
Message-ID: <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIj3krgsob+/zBNRWrfaNFjtbIbyAEpGQuxAiCqGnamxkrd8A==
X-Provags-ID: V03:K1:W+Lt6W/dOAZA7ceqHa9/AZixPxpy1NUPLIlpIUPSDPLTuctDyyL
 pPx8FNyHAQGVUesuyh56QgzBhq5eJAxJhh2TQTgsXzkqXg6yi8h1Tol94TIDc8CH1goIUfm
 tLd0/tCwCxveuR5rF1QfVSFuxkW8V7BIoA+Wy7C6ec0ODZMipvZyB0eJpAj24tl5T34w4We
 G4nCpsvnh8b1qatx1ZrIA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1X0DUZf7XWo=:m4qNlYKkR7ENOIuWecaX+z
 O6/OMiJbI11gFU9b46B1TgKHoulcbDZ2gg287QBSTq0EaM1sc5M5uZkG2RzxazG8/z+SXT+tM
 hMtLXJrw54wB13e0CA2ErkVGsIY13RiLLaKZja79TXgNizhwOQM/3Pk9ZZ9ISueY5qILkFg0z
 ZaTR/fpzQis1KDq+LPp9OxrPa4kUwwxOOe4/Q/shJG6+QKQBoyjl3ksE5pFxhYeV//0xfHrI7
 U2FZ21/1B2KLwMY/m+uVitMcinq5OQiTbcJiSpeM3uRr4+hYepaL/vRlpIhsyuo0HkzYMfrb7
 G8PUeI9orGKdOKVpwpgmORc1KQspQoZAKxQS8s0GSvLTEGjv85sBMi4ZVvjWqUlyyqqYWSMy1
 XC047hO/JzONP51vDirwJzesTsQaEgQ5051N/Gx1FhAw29LjmzBK0A96aZfiACLYQfF8g51Hy
 ijcf4K0K2MWIF1QvUmw94cPBBZbZ8EQ0Xz/lcwPW/FVWcmaec7KwhcDuUgkc2W6ZuKqu9PlYU
 CA+mV+DkoF7DS1nEtLz2FTxccWsXldK+SNdtBztPcPEdPSG2f/lUq+Mdymg9/qqWx+3af2QID
 0UdAMbFbFjuotXvwK8lM8fc6uvY/CvTMh/lc1VUO9eQm4R+9rAYXuIOSX5i60M5n5q5CRHhHt
 IQ0KLTgAW6R4ii6NYDw9yTeRtyAf1c6iUyiihIRDedqK9VcIboCfQt5hXOhhXunH9kgRkgaLo
 1VWcBOlRc7JhKGq/xJF4cCPx6Msq+kq0so+mFnkJIB3UgX0AxKoTHvtB6xqFeB/Yg749b9wFv
 4laZI7bt7guSxFB6y9Du7jjf1HjwQyDwJW+xg1MFDPY0y8AL/eDLC+h07P75hdulHRhYBYpoA
 UCmm+92LTYr58x9KloKMrls6pEQRDUsf3JUtWNA1s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_151443_118568_5C0B60C2 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
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
Cc: bjorn@mork.no, 'Enrico Mioso' <mrkiko.rs@gmail.com>,
 'Birger Koblitz' <mail@birger-koblitz.de>, 'Mathias Kresin' <dev@kresin.me>
Content-Type: multipart/mixed; boundary="===============7601019397440245475=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7601019397440245475==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=JKBb94Po2y7UZN=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=JKBb94Po2y7UZN=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

TL;DR:
1. We should find an agreement that can be used coherently at least for new=
 device support submissions.
2. Everyone (and particular committers) feel invited to add your view.

> > I've just had a look at the openmesh_om5p-ac-v2, and it seems as if the
> gpio-exports there are just voltage changes for a power amplifier. To me =
this
> looks like those can be dealt with by a gpio-hog, too:
>=20
> What if someone would like to lower TX power on this board? With gpio-hog
> that wouldn't be possible anymore. I would personally consider that change
> as a user experience limitation or even a regression.

Well, normally I'd say to lower the TX power you would use the user-space t=
xpower setting and not change voltages of an amplifier.
Nevertheless, I'm not religious about the gpio-hogs, I just want to get the=
 gpio-exports off the table. If the majority thinks everything should rely =
on 03_gpio_switches, I will happily implement it (though this might be a pr=
oblem for people updating into it.).

>=20
> I had this discussion many, many... many times before with Mathias (and I
> believe we still agree to disagree on this topic). Until there is a dedic=
ated
> driver for such features controlled by GPIOs (lets say, SIM switching, dr=
iving
> relays, enabling higher power output in ext PA, etc.), switching from gpi=
o-
> export to gpio-hog only limits user control on the hardware they own and =
in
> fact doesn't get us closer to something which could make the gpio-export
> finally go away (libgpiod).

Yes, I read the old discussion before I asked for closing it. Despite my de=
sire to get rid of the "old" gpio-exports, note that we currently do not ac=
cept gpio-exports for new device support (for several months already). So t=
here is no "keep gpio-exports until we have something better", unless we st=
art accepting it for submissions again.

>=20
> I'm always on the end user side here. If the hardware is capable of switc=
hing
> something with GPIO, user should have a way to make use of that. Even if
> current solution was rejected in upstream.

So, that would mean that we use 03_gpio_switches from now on, at least for =
new submissions. This would be a change of what mostly has been done so far=
 (reviewers suggesting to use gpio_hog).

The big majority of what we deal with is USB power. I've read Enrico's argu=
ments, but I'm not really convinced that resetting an USB device by togglin=
g its power really is a feature, and not just a workaround for a faulty USB=
 device. That's why I personally can well live with having USB power for ex=
ternal ports set by hogs, and anything else converted to user space switche=
s. But I also admit that you (Piotr) are right that this is a reduction of =
user power over the device (I suspect it would be the same with the fixed r=
egulator?).

At the end, I'm fine with gpio_hogs, 03_gpio_switches or a mixed solution, =
but I think it's time to have a decision on that topic, instead of determin=
ing the correct solution based on who is reviewing a patch.

So please, share your views on this topic, so we might extract a path to go=
 ahead.

Best

Adrian

--=-=JKBb94Po2y7UZN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3CAlEACgkQoNyKO7qx
AnAzuhAAy1HT1VUoKA0BWQf6u9+fDTU4fksabgxw9m2oj9lwiV9OuB08dhStYBEj
Qd/uOasSipFRAQfZZIrXJARqrA+EGb0/WP6u6SHqta4t+w0Jovr/TGYjrlJ9mYqV
9AqJ874FZCvZ3XA1iubaV26cuTtlyIWt/2B0Ny1BYC1XkIHx3p/4SeiIgZpVqTwf
o2B3SbGWJcqmHshRKb6VVcdcpbs5qkZddTxXkEet/xHdgX7BpvDCqqZdV6Kxmcib
mg9TwjaJDOPCyAJqLo04FfNKnkEyr16U2Z9CQCxbK3zC8V9SfOctLVgyqh9MYHOY
a1/QcEhRqMBFn4Y3jtCCsE2HMFjrx7rVyE1cgg8J+TYxTIilOvoXMDU9G+PmWy7x
iWlkIqcOLMjR8bhQ8dHGL56lguOxGMCZHKTIFOvMFYge3bfwn9DS74WN9nCdHhJ7
wcA900qlx0nbU1qjrNzcqh4q0I1CUP184qp7URAqF8jgJCM9Z3aQLkovQEpysnsG
2LqTH8JEe9XT3wt7jJC5wULRhOqnhqIVZPuKqijsSNbiKibImtI+T9Knz5gXziE8
Vq56fUeP136fP2WLpsIkJ0aJR7xgMhBMcbl9HcfRaA4Iwa7V5WOIX2Dhu81kcPep
NaAcXVUqbD5LLOcKg9xGceGa/wrLT59DcT7PnMbWHuJtsy+SmDY=
=0EuD
-----END PGP SIGNATURE-----


--=-=JKBb94Po2y7UZN=-=--



--===============7601019397440245475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7601019397440245475==--


