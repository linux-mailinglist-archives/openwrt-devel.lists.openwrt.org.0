Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B30FF9E9
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 14:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EdJuLG0swHMfgpgckUacZJ4bR1ZzID2eVkL94S/4B0g=; b=YttUE4EK7588gAtCQPl+F8SKj
	OpkL9epbeYocWP4iqgFIXqqzS/ocSm3hTbcz6k2g5RMS09MIusShwAd+jFphBjK4UOpSV5CnEnUd0
	hJkbQDrog1IK2/biMP4VK0xhyibobM9B01/QJy+1FLMHZooMeGb+coQhJfoa49cjIuXWsQ5Nxnlbn
	OBG+t5eIkyEQOSzTnbKVel8A7S/UGObHj5kw4K7Sbx0KT4AQZpGEDJGjPjtth0kH12O5YO0mVUP6h
	vjjjoBLCP4DPyypYX19de80gM/1peqCx08yW6LHb45gNnxC+GFQeVQlEdhPwZofsb8vvY03ykmyGE
	2vXyriU8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWKuH-0006IJ-28; Sun, 17 Nov 2019 13:48:01 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWKu9-0006I0-0h
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 13:47:55 +0000
Received: from desktop ([188.193.230.49]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MFb38-1ieccS3CH8-00HAAJ; Sun, 17 Nov 2019 14:47:34 +0100
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
 <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
 <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
 <eadbf51f-6c46-8d2b-673a-87cce7b360f0@gmail.com>
 <017e01d594b9$77d3af80$677b0e80$@adrianschmutzler.de>
 <d561e269-1a4b-e514-7a38-3b6a88aa14ea@gmail.com>
In-Reply-To: <d561e269-1a4b-e514-7a38-3b6a88aa14ea@gmail.com>
Date: Sun, 17 Nov 2019 14:47:33 +0100
Message-ID: <008501d59d4d$90feadb0$b2fc0910$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIj3krgsob+/zBNRWrfaNFjtbIbyAEpGQuxAiCqGnYBMCrDvQJGxh/rAjW3PEgCAypLNqabEOJg
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:llqyJL/HOGr97nTqsk00AXjrKLUGyYW6MfC1glu5/Loc2M/oZ6x
 zr1HXWLcajwnWbqkk9XBDsP5RRMnePyrj4lDJbttT2DeM0wYTIfHHKDUW+dve8kpHGhw9+Y
 GxvqF130gs7JQS7mTmU7k4VZ/AG6zNNBeML8iwgCsPutSRnZ1hiQ6TgGakr9Gycpnasiqhx
 xByGUVJFNAn+KuPu7jk/Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:V57YE9C58vw=:3FkVMttHFm5BnrqDBukvAk
 qred7aOOJ5LSt71DWKxw8CbEfmsDbILFVr116c7NIyPeXhQt9ySbMPRYZEVIuR5GwE3AwU1Kg
 KRpqWxCAW0oweoSfaIjK+7XJUOifZK/STZMVzozRlJFKEL72uy0myqEeyynmJ6/rOOO+3dsLF
 56KQUrAV1j44A76ZgYe/XSH4TXpQ1/RcyZEwealIbtWQ1Z5htxNMRAqUWVJVr2VEI1VZ7uC0q
 yPvaTiR2JfXWYZIPCiv44drhGbZ/7nublUdiYuII8dtacXudg40iDZX0604vRWaqynSyabx9G
 PbnAYHyVh+3stgGj5AGOPrfC01ALUI6uetPrVJOfucLuKJPmGUFOuxF5/SUSmHYJBxu6sVIj3
 b6dn5eqqNgrnedawxLGphAjcK/C6mSekoFzylj8VCwN3sSyGq3JwobmFZ0wuABB2XLQdny+QQ
 aNbs3ruTME55XgIScu5v2aQb0y04xkysBAuWaLyfGeI5cZkDpy1HVP7cVXCJuWvHSZiAGJofL
 GKRiCkWBc4uUleurzoo8qBFRiQXX+M7O4/9KElnKwbuJ9CFRmEEzznjLBRB6ABH4oUoqDP/bC
 EdpO8/gl/+akJrpjUfi0JQ03RrtUM+efGJbcxBSH3F4G4BRqMitV1cgYeIJAp+osajjxWA0jL
 vTvyUgGDOr/OGYA/ZThHqFcKzU4CBpFAUrL/w6nM5PRyhwWYGsgB3pPfkBKeEqRA7utBAPUkT
 rtcp+6LodKR70xiq2W641aKdDP5BzuooTnlivpLfCsb5geBTSDO7/m6yiNf+0sA1mvQLbVeOF
 3ttqbRYK10xI9Om+OyUhqhQXxUg7V/M8z5C0+9YWK6MGbE8fqexOCfXTjAsPLmimdBMLo65gP
 98DvcmOIarLWOYnM4EyK6+4P0Cyst8ZJY+mUvgK7g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_054753_351437_D660235C 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: 'Mathias Kresin' <dev@kresin.me>, 'Enrico Mioso' <mrkiko.rs@gmail.com>,
 bjorn@mork.no, 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Type: multipart/mixed; boundary="===============0819080502709195654=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0819080502709195654==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=VPThVOa+lnq2Ht=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=VPThVOa+lnq2Ht=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Piotr Dymacz
> Sent: Samstag, 16. November 2019 15:51
> To: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Cc: bjorn@mork.no; 'Enrico Mioso' <mrkiko.rs@gmail.com>; 'Mathias Kresin'
> <dev@kresin.me>; 'Birger Koblitz' <mail@birger-koblitz.de>
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
> gpio-export
>=20
> Hi Adrian,
>=20
> Sorry for a late reply.
>=20
> On 06.11.2019 16:47, Adrian Schmutzler wrote:
> > Hi,
> >
> >> Wouldn't it make more sense to spend time now on implementing
> >> future-proof solution and switch to it when it's ready?
> >
> > Obviously, yes. But for the meantime, I'd like to have a less-arbitrary=
 status
> quo.
>=20
> For me, in that case, I would leave decision to the author of support _an=
d_
> reviewer/committer.
>=20
> >> I believe the major issue here is that there is no 'in place'
> >> replacement for 'gpio-export' (or I'm just not aware of it).
> >>
> > [...]
> >>
> >> Are there any other reasons to get rid of 'gpio-export' _now_, other
> >> than the fact upstream rejected this approach?
> >>
> >   [...]
> >>
> >> '03_gpio_switches' doesn't handle inputs.
> >>
> >> Of course, it has advantages, like the fact it makes the GPIO setup
> >> uci-based but on the other hand... it does its job fairly late during
> >> bootup. In some cases, you might want to, for example, enable power
> >> for 3/4G modem as early as possible, to give it time to register in ne=
twork.
> >>
> >> Anyway, under the hood, it's the same approach, export named GPIO
> >> using _deprecated_ sysfs. Excluding uci and place in boot time where
> >> it happens, the difference is where the GPIOs are defined, DTS vs.
> >> user-space scripts.
> >>
> >
> > So, both 03_gpio_switches and gpio-hogs provide less functionality
> > than gpio-exports with no striking benefit. From that point of view we
> > should actually allow gpio-exports in device support submissions
> > again, and actually discourage gpio_hogs for the status quo ... (and
> > it would be better to convert hogs to exports and not the other way
> > around ...)
>=20
> Someone could say that 'gpio-hog' is the accepted solution in upstream and
> the 'gpio-export' is the rejected one so we need to get rid of it ASAP.
>=20
> Personally, I don't see now any good reason to convert everything back to
> 'gpio-export'. I would be just more pragmatic when reviewing and accepting
> boards support - if the author thinks that it would be better (look at it=
 from
> usability point of view) to have user-space control on a specific GPIO li=
ne, I
> wouldn't ask him to use 'gpio-hog'. For me, also the uci approach is fine=
 if
> there is no need to setup GPIO before the whole boot process finishes.
>=20
> Still, in some cases maybe 'fixed-regulator' would fit even better than
> discussed solution. IIRC, at least in case of the USB, there is still a w=
ay to have
> control on the VBUS if 'fixed-regulator' is used (unload the driver, power
> goes off, load it back, power goes on).
>=20
> I just don't think it makes sense to look for a consensus now on something
> which for sure has to go away/change in, I hope close future.

okay, I accept that.

I've marked this particular patch with "Rejected" already a week ago I thin=
k, but since it is consensus that replacement of gpio-export by gpio-hog re=
duces functionality, I will also mark the other patches attempting this con=
version as "Rejected".

Best

Adrian

>=20
> --
> Cheers,
> Piotr
>=20
> >
> > Best
> >
> > Adrian
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=VPThVOa+lnq2Ht=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3RT3IACgkQoNyKO7qx
AnD0XRAAxBuarCEidfGjj1XxMQWMq/8Vj5H8Fads8bLOYcFmN3+Y/bjuvNfCZJlJ
xzkTm6vS5vlmK1o7/z2kBrLSy4Aek0iQ5NGUC0SEksNDUEyCnt2QTY/VxAwbKGfK
5YrzTaZHAxpm7pcdzX3RTgHj80JuP34/6eiQKkBjFCFMYMOQQ1EJ7jhc1DYQJqPB
ebLwAm7LLXuehF9OaNCx3h9ws4sJ7sKekS1kMDWPn4FgoDskTwEZ1TJzX0YLc/0c
w/x8EKYSybp4HgPka0bKamznVfEZu7W6PXWvtNLqlKXy3fofxe1m2vNlcyihmpSU
UsHKpeDdzakHCPBsP+So7ZRtu8pmPN2unHFPQ2SyPBqLHOP8dWnjfm1uqbHP5b6i
8T86tGE5SkXRMtLvVDoTCLrkHT/x+eSHjNB7At8/LzhBEZ1r95c0vaHVnL9pcUrF
bFJCugaQbCquETJ5IOxfuk7KFPJu2FGLSFbZRulV6hkLMZxMUeiPvdF+G+IXUYHH
AkLQpIFMh2XXg5aEy+WYgvsslwGFjqK8cn0e0R4BjOEeJLcGC6U8C5NXyprUd89e
l7dVyVv1mNwmLCFMssWgKI7sAmGbuKxCZriNTLcYw5/x5AK/4RjuyfKbCDFPPFM/
3hqvAQ7TpooaeNkISfyWylXDVOesg1nq0sNw5qMc69ryJhyX0NY=
=wa1p
-----END PGP SIGNATURE-----


--=-=VPThVOa+lnq2Ht=-=--



--===============0819080502709195654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0819080502709195654==--


