Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3469130850
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 14:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wdLVLe2B1XU6OOgF0A+kpIl2bHbesyolhaIGiwENXpA=; b=oOvUoTgjCDYXNki/oB5pj4TeV
	cRCd0zKcvjtVFvjPsr08hHH2nT+llnPeR1fXT/cgLrx+eDlDSb0XF71TCl0i/08h4w489Taao3Gf2
	GKCMRukK6qcZO0l8h7QK2hUxKLPCzv35NKP1cCpItk6RkYzhDo41HlqV6cRYX69YUgSgQIBquWoBC
	Bgc/YGqRmHS01OdKiGqTHM5UQnrXxYYhKT8RzwUDd3YKfBqrQnejXgtqmbvnTNCQs5qVmIUQ9ONFG
	jeb97b+EdCwZ+UxvRqbNIhVbXm7wA2FhfPDHtasyGAorM+kApf4DbcRLKsoe3OLqz8OOCA3Y95QEv
	WI/QZTugg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io6C7-0001yW-JI; Sun, 05 Jan 2020 13:43:51 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io6By-0001xf-FJ
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 13:43:44 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MG9c4-1ivmEv2qAG-00GZf4; Sun, 05 Jan 2020 14:43:37 +0100
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
 <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
 <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
 <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
In-Reply-To: <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
Date: Sun, 5 Jan 2020 14:43:37 +0100
Message-ID: <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0gKX3rv8AN9zaFkBVuaE5QBtT/prArzE7GGmOZ4VkA==
X-Provags-ID: V03:K1:tLrkgmPvJcYABg+QBpCkaqgqKrNWQUGNWQKeHNrig64kj90MB82
 hp3/j9N/DB/Kggi4PP7EDeygmkg9BrhhspvbOxwiokaNwE1J1DWEm1xdlVxJgYzeeVR/c0J
 wJRXlH5/RlAHWj3HdfHIKJ6nQnkK3YhG2G3M0sCK1Fqm3wc5ce685b4Lk7iCn6vv8R/hwgz
 qF2DwAZbdepfqdMzD/t7A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:485yaH9zvy8=:8pSjKDHkiaaI4bF4aU0FFs
 D02K/0Jd47vfRFk1AcphZ8dXOoPpA7xdOSJmB5bUHtBXhYcJlp2h2Z1Fi1PlynCPgsIg4onZi
 LsW3OHmnot+thFy9+ZjqZaY1EKd6xpt3152ARsom2u20S+UQQvCcOBWYcTtIq4PLrgZtHVEnh
 Tx3sfUf/iYe4GAZf3Qtq23Y5YihVHoWTWn2dZiw+EgJFjo8KAlMUDaDr6lKvP28YqNHYPMg3L
 Cvq95w0pnbuhSHPiG1WASgg8aN4bs+bX2uQrx2nzBh5mcdm0wp6Pp4j8MYIwb8FIkZDHpK3wb
 OR4CX6zmahPecASnX3vETYFwmL1qsVAdID5N2SK+luwP8/BSKv4tgj9Qb6PDCXTVjIlMoIqPo
 x4n1drXyZSng+CkZGI/GKKIzJ+NdGNDnE661aRqzfu/yuq4C9KtTUtuzpoGRwNHK1P9E6T2a5
 4ZOndVgmhVXrlWH8e1od3YlR2saHiQDlT8VKva7SfTxhCXfeaJPvtfxBwi7Rd5y3yn2VcXGmm
 WbqNQCyIyr/hvpXvy+N9xzPD5+QQ8+gTITcHhlNLDPlryBDlAbeYCHqIua5jKMtoGhpFLxmHP
 oI0JrB9yA2EHdT8Kqjdsi+iIh7VCQnQlcYJRE2Jxfzw+g+52+udNQn3kBtUX5rP35w+hCBvzN
 3/9RrJ2DVLlnIDF9g/oNtpq2v8ApA1xwRBl10xDBujmtY3R3SI9hST0f8VXooAIrg5mosgt5e
 UTXY3f6em7yYVRHkCNRcT9SPYoUeoRIz2vNIQm1pCsRa5wy5t8LolmEjnCuKf/qpR0kLdjZzG
 DnmXreqNY1aDVX3hWm2OCCJ8CgllMRfXc9g9PoLKYPVxCJ4KDivEGiQvO4eFkIqvRGathn8wn
 REV2iZKZikL1Nqi4g37ztM2lGPyR/DYM0bt7THj7Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_054342_806150_BDDDED9F 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============2248068392686857963=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2248068392686857963==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=2tQCJNoUJq5lIh=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=2tQCJNoUJq5lIh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > >> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
> > >>> Hi Hauke,
> > >>>
> > >>>> The following are still on kernel 4.9:
> > >>>>  * ar7
> > >>>>  * ixp4xx
> > >>>>  * orion
> > >>>
> > >>> There are patches (actually from you, May 2019) on the list which
> > >>> claim to bump ar7 and orion to 4.14:
> > >>>
> > >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
> > >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339
> > >>>
> > >>> I haven't looked closer, just in case you forgot about them ;-)
> > >>
> > >> Nobody reported that they are working so I never applied them. I do
> > >> not have the hardware, I just made them compile.
> > >
> > > Since there was no response of any kind from a third party, I've
> > > just
> > marked the two patchsets as "Deferred" in the patchwork, so we get a
> > little more overview there. I hope that's okay for you.
> >
> > Yes fine with me, we should probably drop these targets soon.
> >
> > Hauke
>=20
> I think it's time to remove the three targets and kernel 4.9 support as w=
ell
> after the release has been made. Or does keeping kernel 4.9 in master (ev=
en
> without targets) make it easier to support 18.06 branch?
>=20

I've prepared a staging branch for that (completely untested at the moment):
https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/remove49

For orion, I have some grep matches in uboot-kirkwood and kernel/linux/modu=
les/usb.mk I'm not sure about, so I haven't touched those yet.

Best

Adrian

--=-=2tQCJNoUJq5lIh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4R6AUACgkQoNyKO7qx
AnDkKxAAuKWalQ2xe+pZbhNOtcz1HaCCheXe8MQfnAaYqVsPhmsoghZ6ZnKr/vmx
7uwWwYtU0bjbABE8nknsGVx7SwWUq7EdRk2wlq5KxqV0LGH/1eNkfyQmtFgSTltG
tuolvfcO+dfhnofKPBXJc/ipgEwFrBXfkdNc6ojZRFGzFDDdNMZDANW5ElV//gGb
3iFgiQk+L89UmtWtxyI+8lhJFeGTKRgHYSIYY0hnBIlpEqIoIfUUbUbUYkw/bi8e
efuMYcVWc/3oWX9OMjqak6pINK+NiXAcmMsv+e2RCcC3qYN88Ej0dnwvA5PzCkuH
hS5FOSs+OWg+On+qDkcPhkTrroLMlH+tY/QD3CXr/YzTru4Tu6PYlNf2R3AyH4uV
Q1kLuXY7pEQMiaRN8iUPMN08SNo4tfe8x4VJhZPOEv2IJskT2wfxSoxCwlOL/4Nf
Vnxyuk4yE3ccVf+sVfRiTDSpA26gT7XB2qQFtd7J0O1tf33Oa6y5BpFD1T20tcfR
VHr++OeFsULpZSfq4dsht8Ol6juoc1uN8QGzWdsfCNrcvatO4tGYMDE3ysh1Ya5E
zXtLN8D/cx+Zi12QPErPJ4R6N6muwx0aVwbgSZTZUw6IMD9xhv+xRL1FELtzH2cS
4+G9YEcmTC2sRoa+A0+YFNIiuJg/WZcFHd+hUnjuGHS9p3SN9eo=
=1Cdw
-----END PGP SIGNATURE-----


--=-=2tQCJNoUJq5lIh=-=--



--===============2248068392686857963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2248068392686857963==--


