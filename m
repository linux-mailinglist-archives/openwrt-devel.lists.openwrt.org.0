Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D942588D28
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 22:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BLePhZ/P+/ADsF/bi03A/Oh6MgY/fZSCnbmqkU+4mDE=; b=T4aT45F5fNjGZHMJt2iQkUdlM
	vOX3yKuhYWlIwIXP5QLCGiarA/de3xP7mcjAjBFM1GkJ5UxVHl+kR+IHV+A+f2sQON0TSaFNsX0rS
	RHqbQd5Y75EIPDviKczwDh2AGDXQOGFhkHLy0hD1Q0CvD47+KBacL3lgSBf8J7LIgnEnDrzWXIcQ5
	LiUKTByXlQ1a7sjgWPdIioHgM5hPmsjl8QtBoT77duN53vXlgheJp0WABv7jHKxaY7Q/wj3H9ByEm
	OMrkdRVpNd4gapyCT10b/i0lvHwV2lL+0YrD+Lnn5IBeVisdJ12hEaUXBndN/zDd0bg8yMMH0s3w7
	h7iqqZPMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwXtA-0000rp-JG; Sat, 10 Aug 2019 20:22:56 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwXsy-0000rW-5E
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 20:22:46 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N8XLj-1iRFxn3KmP-014XXU; Sat, 10 Aug 2019 22:22:38 +0200
From: <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
 <CANoib0H_+Li=KdWdj8jK+e8Pg1o=TYseb_111GUTKEDP26LVfA@mail.gmail.com>
In-Reply-To: <CANoib0H_+Li=KdWdj8jK+e8Pg1o=TYseb_111GUTKEDP26LVfA@mail.gmail.com>
Date: Sat, 10 Aug 2019 22:22:34 +0200
Message-ID: <01f401d54fb9$5acbd6f0$106384d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQE5P2+0oAK0jTojIebbwWFCKb/0NAIYOqQdqBwxf+A=
X-Provags-ID: V03:K1:lZ41DRajbC+C4JqkAV/QwJMA4ml4y6Azyu5YIh6fqT+1WDmX5Dc
 DZCCGfKwYzHIB55JrQ3LfS6Nz7yIrewenOPlx08MshHNZDwPBLviaBu693RfoLUeB1dQXJP
 r7Ghizq5jVWRnusFMT+X4PLtOpMbyzisZG2WSK912K8HDghn5Du7v7c72z9+iIfiTCMN+/K
 w3TZe2BB1r3wX7e87H9ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Aq6iNRb9His=:fJ3AoqLK/TBrvKhreb/xeA
 XfWDqpnVF5NvrAZ0j4NlD+GLZVw4z2U5LHlwZY5gAKyfo28GYAwV0MoZ75cMDON7rN515gAIE
 BpEv3ivBfLPoAniiYM9K/4/zQivMhV8lLPEhaVBbcHgCAV+1jaqGLRlJkTPIG5aUmfIN5aClS
 SCiVbTie5yKQ5uYCFbuRVIF9lE3/3RkvJmKtAeC2E+dB/IV+SrQIXR6gywVTW2/FHWdYOXcR0
 7hNJAe2pNAl4IsIoAHhslTkqJqQE9l5LSpYAg5blybAn6MyZHLkxbshZk2gQf57egWcWnz3Wj
 AqTRhXWqiwvVpgc6Qi1KS4IFwG/6Op+Xq3MhD1CZs6Mf1L6ENAQpejqCGcAEbwDeiSM3Lj44u
 tnjkHqFXflkrPFaG4qPe82w53wlLds/yAtzYrrW6kYrxdCNWt7O6H+wKsej0Unon5jvOc7S4X
 jl/itO6A1JiwgQ8zPFNnE2QrFwZu1P4kVlXB9hBsI3pcztBUrB2YdDXeTYkGHdYlQVrjTexzD
 nfYAn0szc7iS/CA68VE5ue7Uj7/h4A5rUoL7axBz4W1/eZEIpb6ww4oVhKE7m451R7BF6htlL
 2ydLgH0Vmtd1UoCnTfsBdCXkOhSNv3PkTMFxzGBBpEkcawm+w+W3xY/LuYlNQxUccJOXAJhb0
 Loe8e4fCkvMJY+2Tc+fOoe9bd8P2Xr2kcwSQtRu/oGjH8ECA8/XN4hEPuqKAoJ7rObRPrNoci
 U0OB6bDlDbdMUAnaDbz/7CaLqQ9yOvYCPMHOH24gchfzfb6OFE3Mzrigthg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_132244_643988_64FDC745 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: convert devices to
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
Content-Type: multipart/mixed; boundary="===============2958964664509884134=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2958964664509884134==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=UERBYNu7zcgKgP=-="

This is a multipart message in MIME format.

--=-=UERBYNu7zcgKgP=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Dmitry Tunin
> Sent: Samstag, 10. August 2019 19:47
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: convert devices to
> interrupt-driven gpio-keys
>=20
> As I mentioned before with 'gpio-keys' debounce-interval is not needed.

In your other e-mail, you said without them it would work better.
Now you are telling that they are not needed.

In the latter case, I'd remove them. In the former case, it would be a matt=
er of separate testing.

Best

Adrian=20

--=-=UERBYNu7zcgKgP=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1PJ4oACgkQoNyKO7qx
AnBqJg//SvCoqvtRibfoqxd5/EgyoC/wUBCONttY2nIbrO4VAR3jFE5sCTGggz1G
u+dShdzHeIkHGIvzGqavQr9OptFdt3jtDQbK3rS9nfTJv1tVJgX5J4O4m0DixNrS
ivh8T3+/Xc3KtAthlkZnvkt07e/hjC8GIoYuAcXBOEbNkrnyqzEAvRcko61ZaSMW
d13tl73AehEBcsU2O2iQ20tEBvJ5MOJDeEh1RIyXjL2N29Swg5WpZjeG31pp8Ijk
JUrR9t1IrPx62EOzMOsDO7XXK0+6piYy1AWv9ayEj+PJ0zlMUeEvWn9NQJ2EWEHR
UHX0/z1w9iGodCLN5z+3Ekzvyeuz1a3vQJehnj3SIaFolN8zl3jpS6c7Zwji4LnC
jur/SFHyYRL4U7HO3DOcCDNuv2qB2yx3/eCp5NVDA5VOmVTflChArc1WxMG70Yf6
aNHndA1VFyvFaGLVQwqi6Xlhgeibj3RibD/CgRV+FYC27IrOK0wlcG0QJ1f2LIhg
nFtt4A2b/QA2oagmKRroCsev17iTeLSxZUF7MI5cvSSkt4WJ3ypt5jPlSpYgC6o3
K7O9Ugiv5+Y7TZMm+aFQhb0xEM55VI+jYqXRR/945qwwXrXxJ7WQcsx4zoyo81Gp
BDmBXqx7Rg/1hOee9WFqy6P6BecR4BUresWapfJmi+Iu+++UJi8=
=D1Ww
-----END PGP SIGNATURE-----


--=-=UERBYNu7zcgKgP=-=--



--===============2958964664509884134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2958964664509884134==--


