Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84750185C73
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6SdW2S+3i3mkNKgCrawFKTE8aJS8a55amMwEdMlP3Gg=; b=Xn/8aY2Bl7bSAEiqB8btSTvm8
	juNcMq8NfatBBrbEjUDVKQzred3EqSGj2rxTQe4GLVpsvsudykT7BKZvvHJ9ddgX2PN8Pm3kujuxS
	DzwkwU3/dFI1MLPo1HAwW9iZqz6ShkqsIVY/c6cwIoxobefk4xXDyL5kvKQhgfZtfxj+NYTRqBATC
	8ekAJ9SOi1OWr4etzHr/+jiV2DRJADnRV6HNhI2ibN2GNHYz65fas7bIMCpIzPhiF5d4JDYzbMRww
	pLgZj7KSjylBe7UV+XNlkM8ELibM15EnJ9Fo12pslWMULXPE4hkyIddWWKOH1GGwY0FiE16PDcUWu
	5dLuDB48g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSlE-0002k6-0Q; Sun, 15 Mar 2020 12:52:56 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSkw-0002dI-Rc
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:52:41 +0000
Received: from desktop ([188.193.174.43]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M2Plu-1j9cTN2h1q-003sGq; Sun, 15 Mar 2020 13:52:35 +0100
From: <mail@adrianschmutzler.de>
To: "'Thibaut'" <hacks@slashdirt.org>
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
 <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
 <AB7BAD62-99F2-4E02-8C70-BAA463D24D5A@slashdirt.org>
In-Reply-To: <AB7BAD62-99F2-4E02-8C70-BAA463D24D5A@slashdirt.org>
Date: Sun, 15 Mar 2020 13:52:35 +0100
Message-ID: <00e101d5fac8$99b84050$cd28c0f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGdlcAgW4/Bj4GeSWq+IYgKNVsT7gHdsPHWAYpUMdoByD21g6iQ4tNA
Content-Language: de
X-Provags-ID: V03:K1:gWCYREc3U69etkDvLLhBQSBJa8P/Dro4XIhLRb2O5yi8foAtTaQ
 fcqb6Sukv9hNXSbc7qXM62xZcs1yvdA5C+8bkWnExuMUiX8/js7PGe60BA/1O+L5qT32jz6
 CwKSneQVO5dP93m5rGkcx0LBPtmHUunpIKvCdIqeCa7qlOWdHIwyoHc6pd0w/OgZNHxx25Y
 e/R0CEDUIF/i1DGZxhZbg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TQVTDSYl6Co=:trdA34Ij0gzPhIpBtqn4Iu
 mpu6pjX7XOsGJEiQ4WG08JQEjzGNc7+tcnh3TpDeF5i3cLxU0J/RKFwWyhFGKnKq3H3IET5Z5
 1E8vpbjXH5hh5ZiXGufrbT/AMaLWH7U8Bz59lW7XkUapKrqI9KJDRrhv5LPlcTwC6k8emDhqM
 hr+/KBobNirFU0wUdOAvqWwcJGUOLJJyUi2IUzPatdg4QGAvS7qwTJp4MYbdtKZtHex0Eufvr
 ITE9FD+u+FXrrzugipCmwa/aGFMkztIQpJOLw6Th5AGe9HwnSnLC/IGbzeS7GjlQb0rDXlR5O
 QLaKA87KR4DwXVX/1Sr/avcdygX11zGdEJr1D0ZVfiVKXIAZXjF7Orue8+XDAdBqgc+bbBS9r
 ZlguOxPgqOHArexoD7dF+2eTBqEC0sdOFkMlTUHjiW+KoVFv46zQKDx5mWf2Aa4a2KAs6c6d8
 sjtLoHJNXGCYoEFUkcEBQeC7rfVFw8BYFIJoQx0I/f8rNP2ooOrbVNemM1k/TnaJUH22bg/J1
 Uz//HST3QVpBv+ndf1H2kWKiaYBF+03t6PITufvw2kh902HvB7LLLGrdDt5PfZ6RpFef5ccx6
 TUXT3BC2yfQbDzyXXaseO1WK7n/DtB4/Bew7/fnnJjvxuy5gSdyWb2Ji4pb4gTarbE3Q164Ik
 cQrKzpr1JYblKMTLHPz22FvqVAuRRHk5yLbuf5J8W1YvJuSMuV9hwUGrL6S16hLRpqxmIgJzc
 I7ObZv9zRFy/dB94jkWYqWodc5+PSHzw8A14k4L99PQ05QNvvDgqGcJMuguljuQVqiAJOwi3q
 01aUmntLj+XvQDJr4Yr76motPk75gHvCwSw182e6R/wEHTZc4saUJ/ynnjs/eXBoGEsSV+3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_055239_216393_DECF2CE7 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
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
Content-Type: multipart/mixed; boundary="===============9196488128734583905=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9196488128734583905==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=NQ+C+bCGBrM6w/=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=NQ+C+bCGBrM6w/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Thibaut [mailto:hacks@slashdirt.org]
> Sent: Sonntag, 15. M=C3=A4rz 2020 13:39
> To: mail@adrianschmutzler.de
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq
> 2nD
>=20
> Hi,
>=20
> > Le 15 mars 2020 =C3=A0 13:05, <mail@adrianschmutzler.de>
> <mail@adrianschmutzler.de> a =C3=A9crit :
> >
> > Hi,
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Thibaut VAR=C3=88NE
> >> Sent: Sonntag, 15. M=C3=A4rz 2020 11:35
> >> To: openwrt-devel@lists.openwrt.org
> >> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> >> Subject: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq
> 2nD
> >
> > the ar71xx target will only be supported in already released 19.07 bran=
ch
> and be removed afterwards.
> >
> > Consequently, we do not accept any device support for this target
> anymore.
> >
> > Please work with the ath79 target instead, which is meant to replace ar=
71xx
> and is also already included in 19.07.x (though Mikrotik devices have only
> been added in master).
>=20
> I had a feeling this would be the answer.
>=20
> At least the code is there for those who need it, and it details the nece=
ssary
> bits to get this hardware to work.
>=20
> Regarding moving to ath79 there are a number of issues which I=E2=80=99m =
trying to
> wrap my head around.
>=20
> Specifically, right now we have a (imo very convenient) =C2=AB one image =
fits them
> all =C2=BB approach for ar71xx-based mikrotik devices. This relies on loa=
d-time
> detection of the hardware which is based part on the kernel command string
> passed by the routerboot bootloader, and part on actual hardware detection
> at kernel load time (MIPS machine name).
>=20
> I don=E2=80=99t know yet if it is possible to transcribe this in a DTS wo=
rld: routerboot
> doesn=E2=80=99t support DTS, so my impression is that in order to maintai=
n this
> feature an intermediary loader is needed, which is going to be non-trivia=
l.
>=20
> Second, I don=E2=80=99t know if the machine name detection can also be
> implemented in DTS: I was under the impression that all DTSes define a fi=
xed
> string, there doesn=E2=80=99t seem to be a mechanism to lift that string =
from the mtd
> device as is currently done on ar71xx. Is this correct?

The way devices were detected in ar71xx also caused a lot of problem, as it=
 was very confusing even to seasoned developers. Now, we just build a separ=
ate image for each device, so we do not need this mess of scripts for detec=
tion anymore.

Just have a look at how the few ath79 devices are implemented, but note tha=
t they will be moved to a mikrotik subtarget soon as indicated by Roger alr=
eady.

Best

Adrian

>=20
> Thanks,
> Thibaut

--=-=NQ+C+bCGBrM6w/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5uJQ8ACgkQoNyKO7qx
AnBBNA//bWh06xX4cfObZ151d8VcKPlT5JPlbOtDPuQeWIUF+HqEpsBDdtI6xAM/
nLJyHa4O98b+Hw2TITYWXT3Ma6XfWuoy2VQh98eKW3Cy+e5OlAENVTQnNBzz2lW1
RcXGum9+qJWuDfeH5pjfr7BPCIIwStNvQiwiont3B8OvHTYNHPZk1OoUxSFmX7Oa
vEKClsgWEcremc2Oivy2Q8zyruHriAWRw5QFa9sc0jOAW0lSQFgL1+5GRg4i9i/H
XlZok5jOjJntepitKqcaO9CGJFWlMwcxersxmDRiC6eBaySuOxlXxTWgfs/EYgdV
sFMohDbrEBdR0j1x3/omSL16LUHdYjD860AXiXPIt+ZiVv5ohS5AjpyswqBEds/f
vVbOuVQp1OS00q9Ro9FOT8SfLFLC+Tml/23WzoDslN84OE0j4bse3E67jtmjmD5O
zKNphI+gbAJb4DeFICZEYn3On3XSlWcuDZuCk+7wf+PtAHQI1Gbd3KUVZxXeEZKb
wgnpF2GKWIbH8VT3IzQZEwM0AfuX5sJ82yLdW84BIbISNxhVksFsxScNvcL8DBE9
IA911hIqayx8vymUs9TQ321e639fBGTE4e1XS2wPngyPhqyOT0BbIYJ31k/BjH8t
3rLeZFhI01lxqaIm4ABuh59CZUGXJcG7HlT+823y2CUMmyEBNZY=
=2R7a
-----END PGP SIGNATURE-----


--=-=NQ+C+bCGBrM6w/=-=--



--===============9196488128734583905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9196488128734583905==--


