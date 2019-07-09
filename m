Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27FC63CB2
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jul 2019 22:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aSUE/mKIOksILy1oBtyQnR1HhgUlk8F0FFrPtLf8INo=; b=o8sHTtTVdIS1OPFhRzwGM4aJm
	77woKhrBKIP8dKCfZ/Gd50thu975MUJFX/TmmzaHb+646vt9deSfSvblxwXAM4DNmMrl2Wk0OqDfg
	dDfPp/oMn2z6Fc5k0GEOOfyeYYMojTZbMdaODepm4lPSVfy9aM7lnLLsBVVpi81CxcqkZNdwx4EQr
	yyraYijrBTVrnviBkb4yvyC4yWyw5vjzQrGrInJrfWIBJr0J67DJKXrH0ld2AIXr3XfQAFFD6D9BD
	qUI9yqLXWbszd4R5TET/kfnLlVE6NhmWbdeP8WqHcW2EJycV1hM0SXu7+30q98gdDnTvzRxLF4dGe
	CVGIzNm1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkweE-0004KI-Oi; Tue, 09 Jul 2019 20:23:34 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwdw-0004Jm-4r
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jul 2019 20:23:17 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M7sQ6-1hpsKK1itO-004xqB; Tue, 09
 Jul 2019 22:23:10 +0200
From: <mail@adrianschmutzler.de>
To: "'Kevin Darbyshire-Bryant'" <ldir@darbyshire-bryant.me.uk>,
 <openwrt-devel@lists.openwrt.org>
References: <20190708211404.56961-1-freifunk@adrianschmutzler.de>
 <20190709190845.16983-1-ldir@darbyshire-bryant.me.uk>
In-Reply-To: <20190709190845.16983-1-ldir@darbyshire-bryant.me.uk>
Date: Tue, 9 Jul 2019 22:23:08 +0200
Message-ID: <00ae01d53694$206afd80$6140f880$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQHr9NOgTe/IUqCD8SIy91WfmXOMDQIA15/qpoU3YyA=
X-Provags-ID: V03:K1:+819A9L1lG4ygT3p6Gr4b59JSeRJHTdmOQmMq3/klgFkxojBAoL
 UVL+c5U7HQ8pntu+SoZI99XszjiqhcdXrepaTnWRViCRylVftsjvHRuzkmB2hiSh/LCzT5C
 aPsd+wDZ/MAn7HQnVkzcRRrn9RZdVUYk5npIikuLFlFsqPa9FgMOF11UdhOOeK9pui/yzK6
 TcaYUeACKVpdfgvqr5pSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n9oWGMhnLck=:F2VsNNDKpr8u2WtT0M6E7P
 E3PvgtLC5OWnIrL4xlvtUJMa1wIVCfW5pVgoVK7NAQ3B7wIFx71d7Pex6nDuCMQZDT/O2o9J/
 n2k2UG3dtONLNGINNcgDXIu99VuBfvHAWKbG8SvJBVX0GfPBC9Rr8ZIi0NuupfzSGaz1zddSk
 N3+oSwPzyJfepchV8KlABJFU/mJvRxWO8BpKbGPlVJT/L/w7TqueFM8eOdGi2y7l/yfAbNcon
 j7NSZHdI2r5fHmgTV3k9LcRpOYUdxYEeIzGqUp7sp8mUlnriX6lkEMDYIkIW/DJTU4egoN/9C
 JC0YoVvHvT7sFzi4Td0VFnxotXND9NLZbfZbY+1fZfRWoWkLUIeXjbsn/kmpZMVBaoiQl+3Rx
 WndwOZVdJ7x8/IjLyELCbwdylzQhEh/7iHSIA0aw3eSO70XBOEjZIrXCa/OcU9jBLsT5+J+N4
 erauitWMB+j4qMJKuPzbwFiAVZ98jIKRTc09IPO/2ls7bCc4D9VX7cQvdf/SbiwOqF/64b2HX
 YROZ7Nc5q5LagS8r0ceKSxCmYt5WoQsrvc0KNBI7Fj3NE6654TlKkUrr74gqoVVeycTqVM96D
 K6vM1Sg3e2efj89/nKwcB09h3qedcW7QLgEtVZDJquDRF7JTr/nK4s7tgGFFb7L/VzcYKhiVA
 qOq4NVVrgbHS/f3yCutKZhXgnWhROCQkrdFkfRb73NYRRbSMMKfYMuy8FMfmGRGry0lJVwp4E
 Zjf9AxtjnCt/GDUsMkrconEa8SH+EIb/DKhltOd/Erov14MNRY9KBLh63Qc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_132316_477465_838FE0A8 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Merged: rb532: Fix missing DEVICE_TITLE
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
Content-Type: multipart/mixed; boundary="===============7115060531814905019=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7115060531814905019==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=mQrEw3y7hi2iRd=-="

This is a multipart message in MIME format.

--=-=mQrEw3y7hi2iRd=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Darbyshire-Bryant, Kevin [mailto:kevin@darbyshire-bryant.me.uk] On
> Behalf Of Kevin Darbyshire-Bryant
> Sent: Dienstag, 9. Juli 2019 21:09
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>; Kevin Darbyshire-
> Bryant <ldir@darbyshire-bryant.me.uk>
> Subject: Merged: rb532: Fix missing DEVICE_TITLE
>=20
> Merged into my staging tree.
> Thank you!

Does this require backporting to 19.07? The warnings do not occur there (se=
ems to be interference with some other changes in master), but DEVICE_TITLE=
 is not set on 19.07 either.

Best

Adrian

--=-=mQrEw3y7hi2iRd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0k96kACgkQoNyKO7qx
AnBfDRAA0lBZXcPEmXo5In6BDJVkf+eidDrTT3ZJdLfc7McF9gKLWwHw/Rs+THA5
02rb6H1+xGGd/iP1PrMtCrSKg7RoXAkgn8G3LY5MyLPi5QZI7+5ahU6d3Ie27Vhd
yXAnfiOynmkf0Tb5AL9pOhj54g5IkyI3cBVTqyZsrLGhkdq4awbZmJOyJoaI9ol7
A8qHPfVvNFBwiuCTcd7G9FLKgzq3PUVSEe5ngIX7b+ESCCW4BDBJsEeN5Cvbef09
JZb2asu7VoQorn9YKmVOH9ViZORYzchtTkGOLi2z6EEYuYKZOnzxZwKVnRExOVWh
BXsWdYRHspuzJq/LmfY90hbw32szcwG8cJET5czjm78P0U9PszmdVS/xSYnikNGi
DqurYR4YcFVhFKIBfrriDHXA5EAlP/AcKQIV0UliDnWVF2/4SSR3M/mYz/cRGBv7
8C39TEulLuRe2CwFVmKDdDSGid0N7Mv45VJ7SQAz2+rUyaPLrLvpJAtM9ciRVaXk
mSxo9vfM+Bv4rE9Vlytfqu2484T5RrdcJrY4pzXEuK6fjb3jp4TdOaKTSlADVHJr
igNUHA/pN8/dvIWudgdNXemLMdv3mpTLOog5Nv1MuQa/jodwtc2FmqvYWTyJGlWO
wL2GbQGT3qVBc9N1nKz+gDPG3OMqGPdRaHxFg3kbHpIbrMJfb8g=
=mC7i
-----END PGP SIGNATURE-----


--=-=mQrEw3y7hi2iRd=-=--



--===============7115060531814905019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7115060531814905019==--


