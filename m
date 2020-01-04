Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595E4130252
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 13:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g4wNeXP6vf2xPdSzXCI5aAkxqPoQ9KIhYaGttF4jA2c=; b=go+g0i0zAHjn2Qkt07TWzD8wG
	oCSCBo9fYES7Ju0SSfjrI90SrJ+AZ7Gi51hwG4qFuvRcBcl17oRe98xhKzKBpxZemxt25uXXawyf8
	mpuOtHEIuu15o/FGdIsa87+bXaBXtwAErYX5dEbGMjSbH03TMi78bmq0lcwq2j5d2lKeaYFkMG14k
	DQd7Fvpcbs8YZ7kNi2JWF2Ix/wKtcA53zClytZBye9mmCYal9ZN7giPpPsRbXLp/kKF5cHW4QQGfJ
	cbl9B5hbylTsrgGxmRzqjn9n9SiIDW//JViw7TM1W8uxYdedZnyDnhrVZk2MuqYy1wVHIVws/oynM
	N4xKGMI7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iniGa-0006sg-Qp; Sat, 04 Jan 2020 12:10:52 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iniGS-0006sB-E1
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 12:10:46 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MQuLB-1j2vji00cZ-00NzqK; Sat, 04 Jan 2020 13:10:41 +0100
From: <mail@adrianschmutzler.de>
To: "'Tokunori Ikegami'" <ikegami.t@gmail.com>,
 <openwrt-devel@lists.openwrt.org>,
 "'Koen Vandeputte'" <koen.vandeputte@ncentric.com>
References: <00f001d5c23b$c980ad10$5c820730$@adrianschmutzler.de>
 <3d29ecf2-b5b4-1384-fcba-1e3dbbe1446c@gmail.com>
In-Reply-To: <3d29ecf2-b5b4-1384-fcba-1e3dbbe1446c@gmail.com>
Date: Sat, 4 Jan 2020 13:10:40 +0100
Message-ID: <001e01d5c2f7$fb8d26a0$f2a773e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFAhQqYEkgfsnkPy6dAK9lWl0a8CwJMDudAqPKDRLA=
X-Provags-ID: V03:K1:u9oXHmc8y5lfUivuQUsBRKJjBZhOQUKwP+XrlNr2u2Lc97t89eo
 5Kvs4qFSAYAlugiswoYGyjbkqAamzlnPLFsL6jMp1tmIeX6jeNR5I3/XHxQfwBS1AIzuP30
 9lFAYJNQL9Z1THYJUokf0spSDIqXQR+0QXDSrWu7amls3IxpGBuWAB5kr3PvmcpTSz8IFWC
 /niCYPkg/2agypXGlUrcQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T7AZsT3I4iw=:oKcavY+foFeLoET0Skn++N
 T8Hgjiv+d2lDouhzro+BfkYfxs/5SPGsR4k2z6GnucZWfx5B1nYNEq+viJS0JzSpxDdGbnscH
 OFfFRfgtyLzcQODpbenBG7+DLYU1zipS0dOplVnxPVWFNQRoQcfoumcT+mmXBZwdmbcvUNnwB
 6RvnoAhvfDfoNV4tYf4GrZjc4YORhI9AwCTPNkDnAeozxl6n/lqjIIfE+yLfuWGnT/PI5LYTk
 c80aY7oSAJunDbrrRfGj2lKBnyZzzWRM0Z7fM4x5RaLhNyCJsD8JRPEQFpfKQkY8VTnsDm9IL
 1cz/KQG2PlX6q7R29rztbDL8rNhafdz8MwWnNNjsA9OcWS3OVDHkw8Iktew34MrRDc8Q/Rvcs
 8k4sCkAGn2ORZDB7qqlvrHUCwciQ/VLhIFaOxIyfCBp1Km5YhkPPGEvgMzih4rZ03c2jNPvtL
 h1DfgpDVV2ME/aawqhzbBR0pV9pvylM9foeRbM1G1IUzxkTBdH8Szklj41yPYwoeiefzk39yG
 TZUdDAhU7C1G7Jq/ukp3VjMf67QI0NGK7KH7gyPrwdBFAfSyiawA4uDEl6wba6/j6yhK8wGY+
 mfg1zPu3CzoDGwzke9g8cKJXaN+GwpJi77/Qq9pSO75nEsjqxVK+1hJVgAMPHALN2dIolLQdR
 GpxmCYuhFlskDyy5NnwTWkUwEL/EE7TU4DzeEZTLYGx3dpVh/Amaodm84w88ptLJN1C5t9BIq
 zcRHtfr1fpdBE4IBgwDcBaIlatKZ1U9IxbhqMEae8Wkn/tRKlqpdq9TicZaG5Y/Lwptp5r1Lp
 WniW1pDCCWfS7rVI48Rcvj+ZMG4JdzJKQlVxBGKi6yX98GRyQSuyHcUjRq0+k+rKl8hRoxoSu
 4rNNA2vD2y0blhRLAjZFdeinQbAgL0xfSkga52P4Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_041044_770371_2CEB9C77 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] ar71xx: Remove mtd cfi_cmdset_0002 status check
 patch
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
Content-Type: multipart/mixed; boundary="===============4555847633401951913=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4555847633401951913==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ZVpAyqJMT/nW/U=-="

This is a multipart message in MIME format.

--=-=ZVpAyqJMT/nW/U=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ikegami,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tokunori Ikegami
> Sent: Samstag, 4. Januar 2020 03:06
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] ar71xx: Remove mtd cfi_cmdset_0002 status
> check patch
>=20
> Hi,
>=20
> Thanks for the confirmation.
>=20

Thanks for your response.

> Yes your understanding is correct.
> Also I could understand it as rejected patch since ar71xx is deprecated.
>=20
> By the way how about ath79 is if deprecated as same?
> Since there are same patches in ath79 also.

I wasn't aware of that. (Actually, I didn't check as there was only a patch=
 for ar71xx.)

In this case, you should consider resending this for ath79, and if you do t=
hat, you might also include the (identical) ar71xx version again in the sam=
e patchset (but as separate patch.)

Some comments:
1. I've looked into the code and from my perspective your patch looks corre=
ct to me. However, I would like to have Koen's statement, who was involved =
in changing this in the first place:
https://github.com/openwrt/openwrt/commit/ddc11c3932c7b7b7df7d5fbd48f207e77=
619eaa7
(They also do a function rename there, though.)
2. When you resend, please add the reference to this commit and state that =
you are reverting it partially in the commit message, so that other people =
do not have to look for themselves.
3. Remove the Cc: of the openwrt-devel list in the commit message, and add =
Koen as Cc:

I've marked the old patch as "Changes Requested".

Best

Adrian

>=20
> Regards,
> Ikegami
>=20
> On 2020/01/03 22:43, mail@adrianschmutzler.de wrote:
> > Hi,
> >
> > your patch "ar71xx: Remove mtd cfi_cmdset_0002 status check patch"
> looks cosmetical to me. Is this impression correct?
> >
> > If yes, since ar71xx is effectively deprecated and won't be included in=
 next
> (after-19.07) release, I would reject it to save reviewing time for other
> changes.
> >
> > I hope you understand this and continue to improve OpenWrt with other
> submissions.
> >
> > https://patchwork.ozlabs.org/patch/1198343/
> >
> > Best
> >
> > Adrian
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=ZVpAyqJMT/nW/U=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4QgLwACgkQoNyKO7qx
AnBV5Q//aGvVUNoy1tEoNSL0L41mkeTtHKDOstW/5X12Jrl3e9eY7lyFuDVGkkle
8EXjUJQk9H992Cfqn9eCvxqtYI2orfj1VQhqexMkWACZig6JKCv8aJ8ya9g7YHTl
X812ujPTXvmUDQovrrwQ5cRDWaHv1/SY4V1JzOkF6vhtgNZqfWO7riuRlOHFnniX
IKVWidR4ZcyU7Y2NZO75eN+lGCwXOMUjz50xuZhBJYzgXhooBTGzLToGKMz4P0UW
i1vBoLHmotQIedaJ8yS2J43LVOsXvOVLsk+n5jFiuUzERK9wC8eDYnpNtXwyDPDC
/cr2SyCb/OcLJoTW4rEDnS/lL1dFtmGbTryzpocBhS63TR0pB7w1C0griujJ8/cZ
GXTmpXMDQOO8N/jp8NN1Rg9lbzUwUisLeEIh8vPHQrLndGqSmMS5hf8voaOcT+ZP
OEtx1rtFulScN7ezDEqw2+Na6e21ffNPH2NBVOEFYIm9/j/e5krnb0lTkzuqm5eT
Ietyr2ktxz02zvruAXFr5THpZ7dNvG4G/TE5Ou6vFY5ApKD6s+z1B5q2WjSuD6Kd
L+MCZtZgNuNwJCvK+vkGnB2nJDvjlPp+p6GfOqTjaDjLYwmKx8vtqtzXqazy6hEK
H+n7esS5j62sy6EEgsFc4b4z7lowcxrkHznR1c26TIO416+I9KU=
=gxVB
-----END PGP SIGNATURE-----


--=-=ZVpAyqJMT/nW/U=-=--



--===============4555847633401951913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4555847633401951913==--


