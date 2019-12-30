Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3DA12D15B
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 16:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p6tl4QbosfqwASRRR0n6VeA6jR8opReG3+ZS5EJ99+Y=; b=qNO9f13QCs8zsr8pj3MFjzYI/
	4ivbL7wGHeVLYVWcb78CHGwlW9iOlS4PwbZa2I+TwYa9lgHlQCr0fbNUH/1HTZilCZHE4QVBMrqy6
	AsyNZMLDFihzbeQHElhJE5zOy/BMbiBs5KvhQXYTz9nEeADAOxOIh/aEf3GrLxY1f6isAAEe2ZLcX
	uM2DGL74Nv+V26egNpvCzxwkH6kY3rl759y3o/1bg+rzF1y6lqt9Gd8jG0rYfZatgVo6NtlJtAmoi
	W4f1MifuiWXBmxoz0flwfR7o1VuuuBH2vfnEAVFef/NdzwRgk6JBt6OyzFUupftPuPRqjBmGABOjM
	DlM2OKIDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwgp-00077n-HF; Mon, 30 Dec 2019 15:10:39 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwgf-00077G-Tb
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 15:10:31 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mof1D-1jWa2g0zmb-00p3j0; Mon, 30 Dec 2019 16:10:23 +0100
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <zajec5@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20191230065453.3067-1-zajec5@gmail.com>
In-Reply-To: <20191230065453.3067-1-zajec5@gmail.com>
Date: Mon, 30 Dec 2019 16:10:22 +0100
Message-ID: <01d301d5bf23$4231faf0$c695f0d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQHpWjgcU61Z3PRwpxACxcwAziTP7aerkc8A
X-Provags-ID: V03:K1:OeW1jHZslYYpb+JXkd0glTGsDRsWx3hckFQfriDOKhXaFPqPh+Y
 97Guw5uXkO/BZI6rc/LV5h+GcIOOwzFVR8SgyU4Yy1KYCmYP8zxPxpfSeQf/E+qNTUdIZa8
 DXareeK3PHNQemZuyzXuG3OHZT91wXbSPzl9c46VFuF3iYwgocWqEqiCTeTIjkFxaZOjYve
 wG6y6gh1iwG1ql66eakbg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SFoDQmBYuf8=:aVoImAe5wIUYcRshf1rjh9
 JY5DxYfJ2x/SVZwmgGQpd3Vju248CPSPR8skD0w/cpDedjPy6Czxq2BOI41MvWstFn5FWNISJ
 XqgaUHXyf0Noch6LzDOgqbpahgCrR6NYHXAzodVYAwu0kJsWWxBaP4Bl6cMoRzEitbhZyx79t
 gLDjEWluJmDnAQu27cBN8EcoOGzVrKWF3tm4lgA5CO0oXfOV0ubykyUySAAphFjc/JfChzbzZ
 c1DFlrCyfWNdCqzWjH461kTwx6htdIoyciIQ/7zJNAPtKijFPjfzEmhXfGDax2zcZUjQgBEZR
 5g+SdrL2ELCc8OdDMiEU17xK3WHyZCSeXb2ONrEnuydEF8QqSd9pI43sDAqh3e7qo9Go1GiGH
 FaCKLe03HBr7YXfUOHsv0Mm0oQwT6iQPqI2hAbsCjOiNvKxe80C5pZ6DbqL/ilzv0FOgCtY6K
 NyMX+BRz5HQIGApMk8A1a7IzVOiXamwzwpOYeIpMLqRDfW2XfItk3a28DjOvQbI2s5NjdyUBs
 TG/rI8iB1CJmXCTtsotNOntTYLNNEbkNdQR9ZDsDGlIXW9TGHpyOoSV/7cq8cympZ0WzjiX+C
 A/oUtzabuzdbkSIFEtL54CjXUeKVesSaBBndUNWWV2weBsBkS2WYowIBwdIfhudWGSx8kzbbz
 5PZsQRBZ+MT8igzhdr0LwmC8uxrFHeZVk4cwI/y5a2bXzvWF+naTR5ZL0Z7CBnGQvxSJUYGuh
 ON0j+HTVd2QbuGWwRW1KCIdYODUnFMXGWZA9VfP7dDYTFfBsVly/erUdXv00db0rfG54bEXbo
 cXfX8+k70g6B5vgUtbMADnJpY0F4mDtpWcILR38schRmNSBAHsey6R77HSczsBYMllfPAH3nZ
 YFdCU2cq+bEXjStT/+Bdq4A1A6kPlvxYn4arkFRNE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_071030_256490_66FEBBD2 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] samba36: log error if getting device
 info failed
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
Cc: =?UTF-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <rafal@milecki.pl>
Content-Type: multipart/mixed; boundary="===============7669091516975655984=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7669091516975655984==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=qvQQbIBDpoK2pe=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=qvQQbIBDpoK2pe=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Rafal Milecki
> Sent: Montag, 30. Dezember 2019 07:55
> To: openwrt-devel@lists.openwrt.org
> Cc: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Subject: [OpenWrt-Devel] [PATCH] samba36: log error if getting device info
> failed
>=20

are you aware of https://github.com/openwrt/openwrt/pull/2368 or is this
just meant for backporting?

Best

Adrian=20

--=-=qvQQbIBDpoK2pe=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4KE1oACgkQoNyKO7qx
AnDSCg//e0AASMAwS4uYJgu5cpz8l1XrD28ZimUz39E8qPxzh6boOBXTQbyFe7hd
7P5vvAQ9Q7rHIguYm4ZuzT2PY48uvYcTdjUcp7s5FyBqKbpsd4kR++TvalWi1yHu
HR8HAixjJ8z6PBFEz2+Fa/b6/azw8z/yOt+UUqma6Ht/xLOBQLEI1ZafOjOvx36V
qFQkQRDfZWN2Jn8jcwfIRj7bWXhhyBPkpLuJ8sLvkkOMqxL+OvS83j+U3thSN0hX
Qoe0Ey+ZAqCDBsdLNotOzpKKtp0bSjjgd9wJHTSee7QcNlj1skfOrfaG35iYal6R
gfor5cb+xo5mMt21/cSoIaClx6MmHS4Qb9WRanXkzrJRurtVaJ+Cz8AVy/RkXBp8
0SW8z0wu/UFSKE1l+ml0R7wChsOMoxG201RoBhSb+x7TXOydzJv8iy8Aes7u5BBI
F6qAnbGlWTMTF4GkGRKadZjc+szP+XzbkAFm0DGyGiseh5NPWbUP7924N1wHZUR1
ZvZj4zap40yRgfux51zlK3dp48CCa8jOPLnF13Rfw6xQgkdojsGGOpdgFhBQe5cm
3/S1RXk1FoIEfVwTFH1uDMltFnitJdAwt6ZVU0R7cZLe68EIBDEKSJe0q6g63ERc
vaJArPn1c9rCH3uAnLeseucxUgai3OM+ycJHC99M+lXxeIRvAaA=
=p2g5
-----END PGP SIGNATURE-----


--=-=qvQQbIBDpoK2pe=-=--



--===============7669091516975655984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7669091516975655984==--


