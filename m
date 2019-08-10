Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EB988BC4
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 16:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KOlYe/mpW/cst+pP64VH/kwgtySjsmrqF3ORMF6NuaI=; b=ikkdKfMrAJhfJ5kMRMLw0JUyB
	BGkwiOl+Ie0Qy4zFqc+Yr+5znjr8LRJ+mjpZ1+xmHFmPvqnmuS+evryi3sGdxOteNHhRpAQOv25Gv
	b7qsWWbMNb3fRwFOzoQzdOQvMQMon0COnPk9qVV3Ip7pi5Op0SWYDB9uX9z6nzI1kRfrRp/IP1ffM
	LumHw6t9ArPOS0xr3MgNvgcBtX/Fq/BUa9DIQWaRC4FJCep9D4De+apNJlZVDybN2VAsNk64zwR6h
	Ja6O+ALId2fa6biLIeTHt9R0GB9TtX+7rG+acaFmohPvc2czc4xqI9t/OurNTviuiFnChMtd6xfqQ
	aqTD1CURQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwSTi-0003Gi-FQ; Sat, 10 Aug 2019 14:36:18 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwSTI-0003GB-25
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 14:35:54 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Moex5-1igovI1dPN-00p6Cb; Sat, 10 Aug 2019 16:35:45 +0200
From: <mail@adrianschmutzler.de>
To: "'Dmitry Tunin'" <hanipouspilot@gmail.com>
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
 <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
 <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
 <CANoib0FY9U+LhW4UE9effHuJJabX9QFnmHD0Vj6e_gdCEmzE-A@mail.gmail.com>
In-Reply-To: <CANoib0FY9U+LhW4UE9effHuJJabX9QFnmHD0Vj6e_gdCEmzE-A@mail.gmail.com>
Date: Sat, 10 Aug 2019 16:35:41 +0200
Message-ID: <00b601d54f88$e50b7ea0$af227be0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJBfM1NZ79tOwTjV9JMAWTB41mHwAEp4l6fAUlxpxgB63ujzwEtsjn4AGA7hGgBwZOndqXepX2g
X-Provags-ID: V03:K1:H/ySxZXrp7l/nkIuIqSzpKVGoKWYfPLnlFtwNyTNSbTRwon7PyA
 neQR3tYkbqiLfLEVdxf+VA4sUepu/mPzEoVxwxAMiAvfRf66ULcITgCOO7/jz7x1WZVTkLU
 GW2HXr6yioB/mXmC7GTXeY+u3ySknlIAkgj9SH+syhKOAZH7sqOOAb1Lf7/Y8ELzq7iPBQY
 gvTqF97h2yD9Q6t+uKdlQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0FPcLzLttvQ=:zgZk1lBNCFWj4mHBs6nWXK
 hazrwDR7fGLnz/CpxvhPHBNp4rBgNfLZRbY59fm3vw44jgllvgHDgCHuJIyRuQgFlmL/mE1Hh
 UWoR3KppCVl0sGG5/NLeA4xeT5Zos7Y+bnuAk2c41oFpr2ZHTV7B4hVK69qSqrN7KdJN5HC2L
 8TJzLt0BOdPBWibPdM4/A11zbcYTr8TB9pj92qomsZcMSB/3T//7g0ITuSqkMPa2aiTW65y2l
 r1HbuHTh3SclXUZJosBPNJpi43XhsVFHCdAIwfQR9d9+kkkPy7ogy1fuNJJPzj3Uh2F9QRoM2
 k82dN3wxP5SGL5gK2STlTLPxBvbyQK3DVF6GUQm74yW8BJdI+RL831gUKbk44K0m0g/nuSWJ6
 oU/cf1yLG2u3lbqUa3oHJAsbHWV91x9Juip/wfeZQ9vQCXXmKXo+wXggoIU3YbjzKa79gnitg
 6q83F1DYpBgWeYNjWyhQGlnY6OnbzKJOZkurV9FyIvzQPvU6cEYzAPOIA9isp9/r8YTD5PoVT
 C+0gSLdcbG+LgTZA5wWiXGV0VnZso+N7y0rL5Xm8Xn9JBJ6fAj9xe30w4ZFJTPDIPhMtLo2hl
 F8QZkYkLuK0bn5sJLNo2bEYK0z6iowJd0yIdDbu9Z9vm7gbE3iqQ6yKhO7+XBD+4FF9PYAgto
 Q2fpRUkAIaKF4khexiDJJnQU4FW8woc4mtvBD+yGze9aMfMTrLL01hi+1gvBkceVzltSDoCC3
 QXCaVMyzdf/X4dJyIWI6eTqKndtcGgdDakGs7qTY4M9LGzFhI9bwdTEE2eI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_073552_615399_D1D54467 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
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
Content-Type: multipart/mixed; boundary="===============1478932576336041173=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1478932576336041173==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=N++yrx/gQ71GM+=-="

This is a multipart message in MIME format.

--=-=N++yrx/gQ71GM+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Dmitry Tunin
> Sent: Samstag, 10. August 2019 11:53
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to interrupt-
> driven gpio-keys
>=20
> I tested gpio-keys on dir825b1 and didn't see a noticable change against =
gpio-
> keys-polled. Both miss events and work poorly.
> So no objections for a switch.

Can I add your Tested-by?

>=20
> =D0=BF=D0=BD, 5 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 19:27, Dmitry Tun=
in <hanipouspilot@gmail.com>:
> >
> > > This recent Pull Request used gpio-keys on ar7100:
> > > https://github.com/openwrt/openwrt/pull/1359
> > >
> > > However, I cannot extract how well this was tested.
> >
> > I will have a device for testing around the next weekend. I'll report b=
ack.
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=N++yrx/gQ71GM+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1O1jgACgkQoNyKO7qx
AnDBtA//ZTGFNJnSncfGl8eRgtWX3plGG5pwZ0/628c4SHDTJl6qGX8ZWfJuTk2A
J9HoF0PK6aRif5DPZFHgyDOX/wPRQunJPzUBGm1y+hfW7bixtu+pUI+T2UlrDKvS
CZU+8Tvd57ewl5I6i3E9upLOHf+hjXxfOeqLqPPKvBJMqULwoExGF34QnHS/N6vt
sptftOupPLKxX3qPE8LuKiFkum9dNBDtxmfovXVcffeduMho+Cp/3Tbe6BuPdFlT
iWoQNf7LchxTXvBzG9lKtblsnl8UJKIGq6yCMcZ6GQRVjvR4aBeBTG55xi/0nhOq
qKq7LvrR52V+Y+q+2VpaUb9hzAy2tfp1m8OtQI3pSjescMRCVQtU9NHP4/zHXbxb
1LO2NCy9lRfirQUIWTa8Djz68Z22A9+liKc45X4N/z7NU1aCyUFY66bsCGLbeEat
FNxV7bLKwj1FY53+7Ebx4fh1Vq7VwdI90bQgwr22MdI01srBREMe4NS5te2hxpC0
QRB1bDQ9VW+QV25MM9nQFj+iLSAcRhpfROVLFqMGTFdVQ1377rkIoBVJ0nuG27mS
jVfcZh0h370oMjfus8orOhyU1iBzNu32Q8HuLIEw9XUZKRBvcSE4wWvHF6i1aHTj
kLQ6eO3dbBXTM5J8VkzXIJmnRt5nBUEbRd75bLpszFSD+J9Ey5g=
=sRVl
-----END PGP SIGNATURE-----


--=-=N++yrx/gQ71GM+=-=--



--===============1478932576336041173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1478932576336041173==--


