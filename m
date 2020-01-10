Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167FB1377C7
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 21:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XP/sv7abD9JrXSx9XoGq8bq5YDRm7PuD1/RatHPY7DU=; b=AMD/BR172w/FHungTGxsLZi8n
	b7sl6LKiD2lWZeTNTwA7thPZywLIkpBF17Zgsd3izKX+4zJGqVOpSr/EDUYzr9W1UQNEalIcKcvip
	ugLeon7gfBTPLoMtQRj0SAgi8baQsGV5LxQPZkwDTEpSDcQ11SZAfAow1j0le4cs78aGBAgqGp0SF
	e6dn2RVKD/rdpSE4Ev6+9CAA1/d/Tf0g0bpurr3NNOg1jn9hS6zMZ3GVeUJzwO2HES3HngiRqoGKZ
	cnAKIighB2gFYn8NTqnsBT4VilgJoXOjFvxxbPSyKdxcQXz5WyyAWMMy+k67uw0qrG5bMGBx3pFDH
	fFNXnhzRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq0eV-0003hR-Fi; Fri, 10 Jan 2020 20:13:03 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq0eM-0003gS-Kp
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 20:12:56 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MDQRy-1j0UlF0eAQ-00ATIU; Fri, 10
 Jan 2020 21:12:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Raylynn Knight'" <rayknight@me.com>
References: <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
 <39FD35D7-B4C8-4F79-9F30-09EC4C0A8158@me.com>
In-Reply-To: <39FD35D7-B4C8-4F79-9F30-09EC4C0A8158@me.com>
Date: Fri, 10 Jan 2020 21:12:46 +0100
Message-ID: <01d801d5c7f2$535acb90$fa1062b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHJbSisMHJ6ytFRzyCp+cIq6OIWnwF8iNtUp/ElMaA=
X-Provags-ID: V03:K1:M/Ua9IVrbPT7s+A8YOVUfnUePXEjiNbJdHIP0FAhoAG1qQsA/jp
 l3V67DQTIzGX3B3/5+1klmwZ+HG3KN/OQQwpBQXMxgauF+Wp6Je28PzNEfOLJOd5GWPNVtg
 zWMYrbWKM+UavqcBGMEJ3atUfNM3oqZOANujQUxVl5uWrYqTOncFaD2mVmTAIEo+gWwKJF9
 F7kUvuHk0zLHd5GJZoOtg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d47Jk8ZyqK4=:vLnXoAvwzKzGyDdwl2E1S4
 XrOGTkFi7bydSpqiIACeI92QXk6AaZQqpJdDx/UuyzJUiUSFs98/FXRYFY1IhxN6yMrr4Sbyu
 +zPxGewsOoMq7xzSQ5/7whC4X0cQ7tZZpb1CcKZ1CUOZ4A4IKDx3CgdzRqOKvo1NFOSlIX09x
 BbZvdlMTQDJGRJ6zL8scwEnCBgpYvQtUPwGjVm6nyFgeNXxOUDAeOIMQ9NR0G5sVuGONlgDFs
 s+vQhZVLsoqjFX6axA3h9Zn9aEMprfEwSSYElccF3L0HhjkzIl8r20g5kA8Rq+Y0ZyvscWewF
 QS0fpvna+pfjxSC0KVu6TSo1y8gDma7XiRlgzbl0RplRbre6Tmu8tIkpxLseae8xyYFIrgMqH
 4hQUXdFckN4iFyiM9DxqRFZV6BhtUlzjwHoGSM27cF6X4qIGe9R6zcEMUEe8soOjvAVRFEXox
 hj9mhQ9EMHdDatbXbC+oopvBDTw6iITHiddr/9dOE1SQJI2bPa94Ae93Uqo6jqC2cqNvXo4pL
 7Lbhi8hsnjKtVeI6ruJidCBR5IPhqLPdBWMuk3WQQqtuCSLj9QJzm8VVQlhFZRfyljccfdJlg
 U5dN9uJQFOtXrlmLqcqpMds3ZtdMrJDoqzKGvn/3b/B4b67hbNNvno0V1k8xHfUdW7GHcBn29
 i0eZUbTTmU0cTU7eKiAxXrS2pcYKeX8afoW9EYKp2gFwdEMpMJVZg3/boGJDU8WeX8fdluezy
 VfWmGveG60rE+0GCq6GeXN7d3L2MttRM242P+kNYX/l3mnzdxWpeaBmI5lW/rnr5LS+nN4UAQ
 YSmKOvX9JA7Ht8YMiYIDeS07MlvfkTJsk6xU7pqj8Rr/TkTf81WRlhn2NYExtU+aEWTZHd0Dt
 d0xf9xF7ahLSO3VRHNBfY2T5RzaE9PaDJzHB0bi7U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_121254_977039_8626538C 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: 'Hauke Mehrtens' <hauke@hauke-m.de>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============1894694912192632951=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1894694912192632951==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=EsnP6C7PKkh55R=-="

This is a multipart message in MIME format.

--=-=EsnP6C7PKkh55R=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Orion is gone now.

But if someone wants to add it again, he might consider doing that as part =
of kirkwood instead of bumping the old orion to 4.19.

Best

Adrian

> -----Original Message-----
> From: Raylynn Knight [mailto:rayknight@me.com]
> Sent: Freitag, 10. Januar 2020 21:05
> To: mail@adrianschmutzler.de
> Cc: Hauke Mehrtens <hauke@hauke-m.de>; OpenWrt Development List
> <openwrt-devel@lists.openwrt.org>; Koen Vandeputte
> <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>=20
> Ideally orion and kirkwood should be merged as the same kernel can support
> both.
>=20
> Ray Knight
>=20
>=20
> > On Jan 5, 2020, at 8:43 AM, mail@adrianschmutzler.de wrote:
> >
> >=20
> >>
> >>>>>> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
> >>>>>>> Hi Hauke,
> >>>>>>>
> >>>>>>>> The following are still on kernel 4.9:
> >>>>>>>> * ar7
> >>>>>>>> * ixp4xx
> >>>>>>>> * orion
> >>>>>>>
> >>>>>>> There are patches (actually from you, May 2019) on the list which
> >>>>>>> claim to bump ar7 and orion to 4.14:
> >>>>>>>
> >>>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337
> >>>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339
> >>>>>>>
> >>>>>>> I haven't looked closer, just in case you forgot about them ;-)
> >>>>>>
> >>>>>> Nobody reported that they are working so I never applied them. I do
> >>>>>> not have the hardware, I just made them compile.
> >>>>>
> >>>>> Since there was no response of any kind from a third party, I've
> >>>>> just
> >>> marked the two patchsets as "Deferred" in the patchwork, so we get a
> >>> little more overview there. I hope that's okay for you.
> >>>
> >>> Yes fine with me, we should probably drop these targets soon.
> >>>
> >>> Hauke
> >>
> >> I think it's time to remove the three targets and kernel 4.9 support a=
s well
> >> after the release has been made. Or does keeping kernel 4.9 in master =
(even
> >> without targets) make it easier to support 18.06 branch?
> >>
> >
> > I've prepared a staging branch for that (completely untested at the mom=
ent):
> >
> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3D=
refs/heads
> /remove49
> >
> > For orion, I have some grep matches in uboot-kirkwood and
> kernel/linux/modules/usb.mk I'm not sure about, so I haven't touched thos=
e yet.
> >
> > Best
> >
> > Adrian
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=EsnP6C7PKkh55R=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4Y2roACgkQoNyKO7qx
AnCslA//bi0FrkAbdIr1bETTD/4txdXsvPvuAmDVeUobQj9msAgdmHPu+mNoMedZ
Z1BEZGZ+W//qMyp1+0VPDNUNKCWEknl88p9kQVtdjJE4SDB2WxkNxR1lqC9WMU8K
sYa0fAXEFruGkdnYAR35EMQQKSfVePV5INRe7qFaMmnVnqatCSd/mFTA4AnWVBJW
6M9/cogP5x9ALy1lQyWv5ApIo1QyrW4VgjL+r9KUl9Mj8DUGfNrBBYQ8VAuZQ2Kd
lr4GoP/b8RQz83MBhfja8Z4dOxiKRTokOgNDGdhKg+Mq38OXIFnLAAA8GM/fxb+i
8KID54D86HT3e17eC2avM9J9gcSq0pgYTULcjIJHLOhubfjpbWOJpmINdD6B0b6Y
gLe/A4CIbq8DdrOQGmhhcNmYF1ev3+Qf/ZL2OrexkTcG76CanteTipAIKYuV8fnA
pSFPYIlzDZDAsfn164j2qKTCIZBSoVbflgkD86rexG1D3KMQbc/p7MCdE9lfXYRb
Fm7ZU6+zipoeo/4CG4FI+cOHbHsBAMSUld8dqvMfpY1RZ/j1QTfuMwSQeljnmxem
T2p3c/rSyzKw02FTYhPvQ3Sx+HXJEiEFo/sTiCz6vORTalIX9DaDzUUcvs8ToJUJ
yF5jm+TWGIKqdTU0qSz/rEsvst7CgqCCoSMfGVvq3Yn548CvbiI=
=qpJo
-----END PGP SIGNATURE-----


--=-=EsnP6C7PKkh55R=-=--



--===============1894694912192632951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1894694912192632951==--


