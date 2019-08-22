Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A129A04A
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 21:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3z40rtOXr+BiTpzsPTg3sBu6SWoy35Pt1suXWTZfLZQ=; b=DG+GEBwCLadWiXODXuL5MM6xu
	jSxWI/Qo+EUHw+MTpEvalpyfRCnhuMbae34ihrnbXz1k7DsC6C87pXL6wIDUjh3VR84Ihf8tLx4YK
	8ebCyBWzyMoaFNyiGWow5zXFxrvfDZOAkwY5khV9tuaZLF3cvoHKrmHjJstLILyTzbultOLK7oxKi
	jsdjY/mBXsGSv62nfZInAuyYlz73E1MfsvlMHzGzuEV+XP+GxSL8Tfc/297lQFAaWoDto2K9+8E8T
	XmpJWJ1cDI/6z0tL3803ajL/F9rEK/tULKVtR1fCQrv09Y5DsLhVvSbLL8J13Bt7/LOXRUgMvI5dv
	WyyON97RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0szK-0005zz-Po; Thu, 22 Aug 2019 19:43:14 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0szB-0005zM-9K
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 19:43:06 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N9L64-1iLX0q02vU-015Hhe; Thu, 22 Aug 2019 21:43:00 +0200
From: <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20190822185911.12336-1-tomek_n@o2.pl>
 <20190822185911.12336-8-tomek_n@o2.pl>
In-Reply-To: <20190822185911.12336-8-tomek_n@o2.pl>
Date: Thu, 22 Aug 2019 21:42:59 +0200
Message-ID: <012501d55921$cde530c0$69af9240$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQF/oFioNMKQ5dfLUECbO5B/XbQMewGOTluwp6aP2tA=
Content-Language: de
X-Provags-ID: V03:K1:/YGm7KNQIsoJXxCs0mItcaZR+fJG5nw3lwASWu220EIo7DfSqhO
 rFPZwDekUWMpjyGGrvifeiBf2R9TFkDIiPtxB3HTXbV55FP5Dw+p7orkPGM3ZeZ0Z/rQcMI
 hibXj2GJVMKW7F/GUuHKoG2lKuqrvYTdHK4xS59qIjT8WpmRPKY+cer29mqZ1CudhW4/2km
 vjxQuzEaXPROk+2PFud/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sMVEkVFpwOs=:ELzSyjVO4W8Byr6yAYFui6
 eKiiXixx26M/7LfKWvqBBiAxLxW4oK6dRRAUm4KKcgz1+P7PcgG1W9wqP8UM/MzMl0hcwoCNL
 o5ZgLfg5H3rbrQEp8uSbLvmt2noPhmJQqzQJI1+ozRrVEsuYLb6FQFDoRiDo1zVY87KnFKbns
 7ZLgWSRz6rL/W6xi4pF/I4sQkAL8+LXen3u+u4xDZ5TysdfJcZ3ACKIeq8LOl+hZYELYJ/LJS
 dgjCHpauv1ZRt8dcXM4Y1gs27HTN9Bug6uFC/kIAS3uXU4axeR50Y4tNote4WEnGqKqE8Qxy0
 +lUs41BVFgajlmqxfMT9vWytgZNf6f1bAyO9AvMPhB1CPMiTevk59JIwcqpvJkS1nu3xk2Pui
 omzDk/sVDal4LdmsPXNkZqAmsnrpI8rTRa4Kp74je5nBP7Ha1x5KxI5ZlgYPiSaZigb+HGW1x
 oQEV8A4QThs+LaJnxgtbdP6CgxDkffNraQ6PqV5+/0/TS58s5wyeO8y+c0Ci/vLjS8bGpEKzU
 iJHuXL0LeDl9BjWYi3kK9ebE6teA5kq7Aw2an558hexmHp3GU78fA5ir5Bca3TpjNoY6DlJ2w
 +62ziKM8hsyILnOM61fJu16DA6HAeVU48AywvfWvNhDX+mCaVnqx77EmDqMIL/XF9sMWzrOhV
 /fvR+rKWghmERXE1fI9WE4yBLc2ZGF3YprM3wfEFzlVxDs0r20eBqif17DIlGswnaeZFh+Ix0
 H65sXuF+wAWbRt7f3my7EbOYGkg2mb+XhmdDhjVern+EEd+kALLD2FLOy3I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_124305_623225_CFB7EC29 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 7/7] ath79: image: disable sysupgrade
 images for routerstations and ja76pf2
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
Cc: 'Matt Merhar' <mattmerhar@protonmail.com>
Content-Type: multipart/mixed; boundary="===============0716956794818720958=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0716956794818720958==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=pU6Ent/JZUR/4y=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=pU6Ent/JZUR/4y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Tomasz Maciej Nowak
> Sent: Donnerstag, 22. August 2019 20:59
> To: openwrt-devel@lists.openwrt.org
> Cc: Matt Merhar <mattmerhar@protonmail.com>
> Subject: [OpenWrt-Devel] [PATCH 7/7] ath79: image: disable sysupgrade
> images for routerstations and ja76pf2
>=20

...

> -  IMAGES +=3D factory.bin
> +  IMAGES :=3D factory.bin

I just wonder: If we remove support for sysupgrade, wouldn't it be tidier t=
o remove the IMAGE/sysupgrade entries, too (and those commented lines ...)?
One could still get them back by just reverting the patch or using git blam=
e...

Best

Adrian

--=-=pU6Ent/JZUR/4y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1e8EIACgkQoNyKO7qx
AnBmEQ/+PHjpxkk7Iqnxgexb+gqUPThKIqYNv3xAxJObttye/TAPDOnxFjlSuZCf
kZDFMwdKxeZjhuHEXS1Hsg1QoypDMkAfUYzFtnlsvX9D0xBnPcd8OMcXXmQMoGx9
ssZsJw6UWBAeGQcKkt4e8RtmXkUQdl/o0wOc7DVz9cx/wEcjxo32l+FRYyi/yNnn
IyghTGdYd8O/FABMspa7xfsKRzv5d0MsdI4bjFB12ZTTeQGBw/9gHDOZvsnKnE0L
lgsHW6h500JIl3CGCqqia29vb+BZF+OlBRlS7eaT1J4CRdPNlHIyn4JHkqVQGuPO
wyC043Q+T5a2F4B9ohH2Q1hbtL0pzkEADdsPkZ5bOy4KxRbx64WNiq3oG13s8wTx
Gih7YeRbjJPZG2zkbd6ISQqQU2+OhcnEgZGE3icSXUVOe2kl+H2KLx7RLFVo99qh
EQyEFG+cwpXWWcKIFVmP+G+/+EV5O8UEncEVELJVKmdSR2v3EY+rmyHK8E8tY2kt
ip2ezJOyD69hp9l0ST2dhvVb6SwVhRAiKjy0wsI8w+6pxM9K6jCvLn6SpADaLIlr
5VuBkijVaFDVcMUtibvn8kUjuDx9nQNfA9NOsy94OQEyIaSImHjnb9VNo+9gMxHZ
CvyOeAuqoy98dZMIHDfrR2fSWWzQd/tYVokN3bg7rOwaWX8RizI=
=NHej
-----END PGP SIGNATURE-----


--=-=pU6Ent/JZUR/4y=-=--



--===============0716956794818720958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0716956794818720958==--


