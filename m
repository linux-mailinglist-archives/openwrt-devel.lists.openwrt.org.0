Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C2F12BB12
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 21:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dZq/qH8f1PeoBhiQPOn2bdjTpOldtQNTpjoSL92Lt5s=; b=XVtfodyn1eQlbLgjortNYb2HQ
	b+0bJmZDrg0/fdXwZue1Ptm7e8FOa4+7I9fbRsEKbrxDKoDrbm61fXD6sORYV8IHBKw3lEeRP/3P0
	xBV9VYcnyXIek2jcQaKuhNiu7xzdgir/Muct3ypXiax8e/+n0H07/hSCOM7Pwl1AspP+G0R/C+Bye
	TzCv7JMRh6ZfqV/ADG+GEXrWo/wORsSqhEs9Fi+GJmhOQIx5+cZ9s5aSCxdC1xj4rnvLgeULFVh45
	pAX9GkjpKRYdgsG3SIt29fPlHZzvAI8nGW4fHXDyLwgGCdGwWovzsfUfxR4Ssr4+pnFYyJdKv8jcK
	YoOX44ufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikvtv-0004hJ-AU; Fri, 27 Dec 2019 20:07:59 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikvtm-0004gt-Lv
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 20:07:52 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N8GIg-1joypJ19SC-0149Wb; Fri, 27 Dec 2019 21:07:41 +0100
From: <mail@adrianschmutzler.de>
To: "'Sven Roederer'" <devel-sven@geroedel.de>,
 <openwrt-devel@lists.openwrt.org>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
In-Reply-To: <20191213195046.13358-1-devel-sven@geroedel.de>
Date: Fri, 27 Dec 2019 21:07:40 +0100
Message-ID: <050601d5bcf1$4b43c350$e1cb49f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJl8ojyB3VcR7EwxOFQHbyxK17f56at/Nsg
X-Provags-ID: V03:K1:qzYPTd2/+iULODArAIU94K12YjqtcDoFrMxHpA+vcUDhIZAEvBj
 3ClPpvWmTWfcVIO8H630NDG+XR6qvuHdIpjMG/cDdIf4bkqELGKiKmW64gpUA1lsEm9k47V
 KtX8lSc1IHpFON8pjxFXXSlSdhgi5GXELpLzqz7W6xC4+SazsB7aPIv61Dxu34LwW5zEclO
 RqKCUSfn68gGVTXyFM8Qg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L6V1dNdVi7M=:9HfexBqJ2qIvo0kD/rhVl0
 4DpqPZ0jH1t8aOz7BD6MWsVp3X4bUaSEII9otyzz9FrgIRb+nwquWONFFLSP5kdyaQqmRW7Gb
 ylgdWFgGJxwE/mMl7x6rFJT+eaoxXk+3bOo5kjidtPtogRcZ8X2kRYo3dvgG/ywkGbAaAzlNr
 BxMSEyUuwxrMY0QIMrOVyqjlHFEdX1SHYPusOdTffk0erV8tGnxQ28Mz7DO4h2FROkGjw+0kE
 Ze5jJvhb7B/JHjC7j9nK9tM8R7Zd+4fdyE20SJm7E/xWuaDAEuZmWXGTy9Ugpmv32d/uPxOJa
 esV7p3K9si+/CkN734Q8cqpgVkGda8EanuglHZufBXFpedj1+alPpXlMm0pms9lXXpH+0IBbD
 UaAGAeUoHOi5PRJIVRnc1iJWC8j+p/xx6YKlJaI6rRTBWjZiuOD3MJpR0recVZVSwrYAUdHoi
 G0JhRUvMPt1PlnrFAHWZB4RTuDvP/T3MAwbMxdBZDrnofpJjHyHhjsiw9OB5sAOdXcIGltesN
 uM5JKGyrhi99FTNSuixJTtEzFG88nVx7YPbmqRlR/YQezx70xfwijZG46w7YohWDX5irxf0SN
 XVcalmEQJLP+qShtUBtIYzj6V+vTgo1zbs/wtadigI4vkrWmq27fq6myib9ojkgjFbVRboJkN
 Q3fRDU/j5feRiPb8LBAtvwdShL5BUNx6vKf+wetrgZyvWoJ/IYEGjUeUiw4Qr62yXA0fnvFMY
 aSGyrWTXQtA7v74hmllj8Sj8qj+2kCU5ERnheem4BVWbBmwLKrze7YPxWDaLjD2yqvobU222A
 owjoKdL9UF6QTeD68b5JrJQTUuLjgCn+fypmujUYE9A5Jj6+m+Sd0A/iGnQBi8p8VfRpo3rLo
 1IoVVpYPJIf1YMB+aeJsz8WeTUWPLjm21a+4PiX10=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_120751_012761_8D484507 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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
Cc: 'Luochongjun' <luochongjun@gl-inet.com>
Content-Type: multipart/mixed; boundary="===============2235582741807693092=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2235582741807693092==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=Sl2U1RynyDmoWc=-="

This is a multipart message in MIME format.

--=-=Sl2U1RynyDmoWc=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Sven,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Sven Roederer
> Sent: Freitag, 13. Dezember 2019 20:51
> To: openwrt-devel@lists.openwrt.org
> Cc: Luochongjun <luochongjun@gl-inet.com>
> Subject: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750

thanks for your work, but for the reasons I wrote earlier I do not think th=
is should be backported.

Since nobody else volunteered to do it in the meantime, I will mark this pa=
tch as rejected.

Please do not feel repelled by that, and continue to contribute to OpenWrt!

Best

Adrian

--=-=Sl2U1RynyDmoWc=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4GZIsACgkQoNyKO7qx
AnBnFRAAryejSbMsHipXjFS3NjmPsVKARo7MxM/YCJo9Xy56AkV3xazZqs3QZHux
0Kab7PHUU7E5ebdEPo5l2brzlawTe3P+k2HqAOa3zzH4+FscYFz0VwfdUJzn4+Eu
eT5nj3LnVvsGRAC1H8DitOSTXQxURQdXS3yUOc+DN1I022OE44remapIHglkk6lR
xZpLUGdiuvp5iLYVj8hpHduI0nbXnoAuf7YlJ7Ujs3qufyBH2+YCbtmmyjAq1y/3
KehTQk6tmQuLqAIk1bLAa4TtFkJIzoEqLSU5qZL1ry8qL7aHj3IQ9A4yzcsQ8+Qk
Em9BsGd/irwZm8Lhz2VrN+lqf/peIhavcFYLs8K/jqE5T19eQ7g+MqbylhQAm3Zx
hIAfUbxzWaykpfeawwqxtGd9kzLIJnSFsW+HHOeJCPFUgvH1bNQfHxpAKmCtKGOO
aY10EPOl92QUAivrXp3bjO14jhKo/5nuzyGTR5c0Z+njF9YskBqWNQ0/NJC4Q5Py
upilmfEBMtXwerdypKEfZqV4tfc2slP7Gdff6zxHNNuPgbUHG3prbJLhzuk1lsMb
tguNEXscyLDgawJwfBTFwvJ/kiXhN8K6rEAKd0fVzGspjUc9RrYBAJVEtPo90JZ6
OZoMndF+ZAanOTECKSeMLSi8EM97HsIbDvb2plIg3eQftY+THCs=
=hYxb
-----END PGP SIGNATURE-----


--=-=Sl2U1RynyDmoWc=-=--



--===============2235582741807693092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2235582741807693092==--


