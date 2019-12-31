Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9618012D7FF
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 11:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LpT32Y8pGYdtaU4rFkSPMsJPTob4T628WRgctboZ1qI=; b=n1ttKHYLac0UHNF8Io5mZhz1x
	EdIwGVgAfYnYrx0iBXNdExQmdZ365TCEUaGrLYhXw/+tzjQfpWWDMmyDU+XSieP0aJ39sYBLzeXNg
	EBMI6KzWnWieRD8Dkxt5pKN8sOd3pFWxKG6eooCLJhArmR4hw98IC12yMRLuK/Gp6dhLElDzp0Dqr
	W5NZq6GrOwhQCqstT54PK//IGhHVYe9IKbPHLSZ1C4DvmZRfLnygu7x0zGT7Ii86cAQUOr7fRLwmp
	RaJOoUBx77sLBrkeSIo4++UMt48vFSz46f9Pow1NKd3T/VbdvHVQcPTpA35wf4YYeFZEXALwAqrEH
	UWCN/YkZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEss-0006Qp-7i; Tue, 31 Dec 2019 10:36:18 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEsg-0006QO-Ei
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 10:36:09 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MF45G-1ixEJG2f2e-00FRdT; Tue, 31 Dec 2019 11:36:02 +0100
From: <mail@adrianschmutzler.de>
To: "'Rosen Penev'" <rosenp@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191231021804.47805-1-rosenp@gmail.com>
In-Reply-To: <20191231021804.47805-1-rosenp@gmail.com>
Date: Tue, 31 Dec 2019 11:36:01 +0100
Message-ID: <002c01d5bfc6$195665a0$4c0330e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHXDAvJjDFFPC55guIsSMdK6E8xfafRceRQ
Content-Language: de
X-Provags-ID: V03:K1:HD6Mshpg4Y/owG4zm2CPKZdrfhYEkFHFKg0Z3qSMGhW+fpRx83K
 +VAaBh6tzMtuU/HWphzOKq0gGDE9EdEB6w2Qc+Ioc75IwP7tdgIVFcs+PXqPFXnnI1BUR+x
 m3MNu3KSRZdiw8hknUk0nyt8u7ECcHC4W4Vd0QytfLsvVxnT236SYhC+jxDN12EGw8Xavbt
 p+oqeZOKqe+HF2ffPCNKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ansLiY2FoBw=:t8bk9RPmDE0g+WWCInomb6
 ZuemENsIlFPw/lNx9MlIK5Bg4c6BhdvKnCiTy8j8hiGtS10migcvKLiwrjlEC8wbO1BauPUt3
 IfdbUhlXMIm7FS9xY+TDs56Dp07na3eR9yus0vpAq5YZlDDH4lKdbou+mR91ywW1bJYnILyNw
 SeJKecqa9f9Hmntu0MpokmqK6/Il5GGzQiTkMtOX5f/b8PgVzkBdo7lgrGdXycdwm2vyqY0rD
 aW1FdI7KarhY54p7wYj4CHLvlqsDfa6nLMEcB7gdu0WTBaZE3JsX4CktXAryGYoBpwQV4SL92
 vVbJ4n0m9brglROksXAqcRURqjKMvBBEqTYqpwqdwSMt3HNX3iKoDnuL6SXkEwQkY1APzDbNs
 2oDH5NhmBg3h9c00pE/i8tz1SxaB77iwAZfhy1tDoTAkE1G7pWFMojJcWHXqLkXiAkIlMa0fE
 fmE4HZaDqcYxzNQf5ZKklO1ScNs1UcTKGvzVD2KdllldIaTqfJ3qtek3rwrGGiTN4rORItU5E
 Yi5KnPlWGLfK8gTf5SuYA/mzE/JmYt5LumHuqsgDyg/15hrGazXRufMh9agFSUdznIHtJNCDv
 RhRAIoM2B93bxTdtoF3gKi96ngyqnJmSuk37we23ailN3qEsZ8LdWF+3LPv1eXPDlB82ro8Ed
 kM23zjUdVmP9Vk815PKuWHXG9mRoGpgZNn2O/d1lBPb8XVCklEk7FijEx3SC8c1W1194PVQ86
 2pUyPxpIkZuWm11l468TCEXde9RWBPPuKw0/fXhLnS9loRHZ798RmejMjeD6jV+amJnfumBGr
 On0yisUsW7L5o2+YoqDovWc2kt9NbNUnMEQ8qosuSYTv9R9GwbDSw/WbsH44ovZbBJ0bs0TAR
 bDor7/85PVk4TDoNGxPmkMoQPqbQ6XLac0QO1TwgU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_023606_785056_2E132C76 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] scripts/strip-kmod.sh: Replace
 legacy `` with $()
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
Content-Type: multipart/mixed; boundary="===============4902165315477703674=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4902165315477703674==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=EAmQrEw3y7hi2i=-="

This is a multipart message in MIME format.

--=-=EAmQrEw3y7hi2i=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Rosen Penev
> Sent: Dienstag, 31. Dezember 2019 03:18
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 1/2] scripts/strip-kmod.sh: Replace legacy
> `` with $()

Thanks for taking care of those issues.

Some comments for future submissions:
- Based on the submitting-patches rules the first word after the prefix in =
commit title has to be lower case (for this patch "Replace" -> "replace")
- If you change something in a target folder, the first prefix should be th=
e name of the target ("mvebu:", "ramips:", etc.; not applicable to this pat=
ch). Maybe have a quick look at the relevant section of submitting-patches;=
 I changed that manually when applying your last set of patches
- Even with simple changes like this one, it would be nice to have a one-se=
ntence description _why_ they are needed.
- Finally, personally, I tend to prevent having special characters in the c=
ommit title. Thus, I would prefer using the word "backticks" instead of put=
ting "``" directly into the commit title.

Best

Adrian=20

--=-=EAmQrEw3y7hi2i=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4LJIwACgkQoNyKO7qx
AnC+2g//VjIQp497WhBXQmYv42SbzfMnMljSw/AXd+ky+NrsF8+7aIr69OhyOUGv
7SVPkTdlqjKxz/S6WfuxX8mEZHBopGjCLwO7wL04+dSVV30Jk+z3Mr+bfBGCOEcG
4b83aBJCV8tkLwLd/nwVInZlmtG7lKcLGtLRtcAYi+XHp8tw121ag0OhWP8Nj4K8
1okk3sQ1pXJ/wh+SP8g0rkl5V2ahdHnjvvfTgTcek7Fk/E5f9krjT06MbJmDks6s
R1ZetmoTgYd3hCr+ktojbHliKcYTJ1j6/ae7FXUq0mrQVCbXtVpK1/WuOrR9Jbkf
aa8oPiweZkK6R4bQ9htsSikOdLG6/LtPW4J001IBZDn5GOpuxPFJP7cIIgLOlxUg
Nn2+Evy09IF0lzk03ddcgMbL9o/Kc0j46uXpThTmxMmWFphoSzlE5ThElmvRpJSj
Py4/wS++g65vxJQF2y0ngYtCQ/7AM64t+TXmsVRm8GxMDzsU+XLG80aCm9KCLeFq
wmN2flMkkTHJq3nY7P14JBkP3QqXLbqZ0Db3zVZzXO6bQuVFmu3twIE6B6JdXffw
TM4IoskvTbyEEcy5kgbZHYdZsShpUU7T/J/95sKpsdM7ht5jtSWl9C3E8Xc3uMEV
V/3vuxlO+SPIyu1NbFfX0lkd0DEz2zuvSmLbuPxWoqdfITdesWQ=
=dSSi
-----END PGP SIGNATURE-----


--=-=EAmQrEw3y7hi2i=-=--



--===============4902165315477703674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4902165315477703674==--


