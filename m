Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E736173FF1
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 19:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VJEgXLAx/v2Gv6OXSgKPUh9eX0cRuv0fFfRL1xX2u54=; b=Tk0MhiA2iewV43Phc8Dmhd5/o
	EOp1+LQo/0sxbIZTlQ8ijg52v+3qpZbCiRRuKUy4RND9UHwOhAQEa1av4Z8soT+UoTavJfnowjvsc
	50i/zDGxjnqShQjkfsi2694mfUKlT8OE8fDgMFPJZgUkei0GU2xmOfL6ugYefoD8rGAxLKWK8V1f3
	yON8rkNsTVL0dLeWvsu/Vv7B5XJEPB4s5To9mcDHdm3zUoDJKsmpexMEsycACZZstGbGLnUUHVL2T
	4wajRX/HyV3yCU5mtOJfIy2DBH2ewtR6KAaFT1nny+HqajXlioYlZawy7yORtGqzhUN3A6bLfKzG0
	f2dUlcMTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kjn-0005iE-Qi; Fri, 28 Feb 2020 18:51:51 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kjh-0005hc-56
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 18:51:47 +0000
Received: from desktop ([188.193.188.51]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MLiXQ-1iq5MJ1ttQ-00Higt; Fri, 28 Feb 2020 19:51:39 +0100
From: <mail@adrianschmutzler.de>
To: "'Koen Vandeputte'" <koen.vandeputte@ncentric.com>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
In-Reply-To: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
Date: Fri, 28 Feb 2020 19:51:35 +0100
Message-ID: <008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHLgIhYUTHTDif2poVhR0QO80WFxahFzmXA
Content-Language: de
X-Provags-ID: V03:K1:hvtdMt3pNBQs0DHp17PRKgEFsaxfwFHCHTvQwgsfKrC8yj4blD+
 MF1kUGzew6J4u3v+ZJCoIZ4ZYZjiPu9WriPTKvouCvXvuFVV9lROAKdkAtVD2mmR0wb8gWH
 XulxDQT9CJDtw5Kb5v9kyu/Rqzghr3QF7tfQlhNvoHxcRbl6NUBoXx40F/4Dln5UrUsmXxb
 rVOauKJaN/48H90OMpY+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WHFYBSrjRvE=:QhEOFoTzzMQHiyEWvFQsIA
 qx+gfUkJvwMpKI46TdIkfHFIDPVorfRB4cojdtuVSiBP3nuen1bTvJHCC0mvnCrNKY6ok1KJE
 tFQ6ea+2KIOyNVl1zUYYn5KYl8xKKa0OEdGFt9vqcjVsSFrahY6VoOV6aM1mfziW199Pk8BE0
 MGDPpkDhPT6Z71q+eTCvM5he8ivfu/3puKDmxQmFbZteAexzQtE8m57PULzH3jQ5S/yCg2nJP
 XON3unT1DWrVshKAyFzvGm8yfAqn7OX2gx4sFFdf2iX0HfFOH5hPzmStb5N1BADF9FQA+K+l1
 GZd5NXuHSCKAU1HkSOvXudyveY48eP13zStrlQ5JH9BMpdAqd6xyJNJb66EZYZV22SzTmTk6P
 ZG6e2ixCq4N5GewK0+kuwCQtm71sf5mVESAnM/8hdQ5fyICj51IvKMDLh5abFxzxBkXIGpvVS
 /KHFF+0gP+oxGwjcGmrzy9i8cCodPLiDd4yq9ryIfXodbPr+shSTcjxhxFwwErMJQx9nbKPDe
 yNXkuz+7SImrcBBXryTUL09o0fn/Cvlz1p92i9EupOS++GIKG2XBVTJntIWweyz9PUWdAqFqZ
 RZAakOn92d0SUBG5g7h+21SnvWEF9FrvnlhskwK6okx6b+14qobXmBUAmmvcVF6o9Aryf6Fu+
 2vYvljd+aX6C6MMyI2zUuTjE/7ebo7Ww1J4RyG4nK/idYwW/jWuOZsps1vPh86vxtaezZ3+3F
 kER+20yDUgYx0cxPhSxZ9eueDB1iD+vPJSAr9TdNYjWZEw0JUqPck1i/YK+FBzdr4nOuQluFP
 Ivc4WmdoPl3WQzrrmEbPztHb4m2PaFq2qoxUrc6J9v0tkSEoI4gqTLtWYmHTPSaifW+hMEF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_105145_492528_097CD62A 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Content-Type: multipart/mixed; boundary="===============7514423911149884181=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7514423911149884181==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=+lm0JApy0JsNBP=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=+lm0JApy0JsNBP=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Koen Vandeputte
> Sent: Freitag, 28. Februar 2020 17:54
> To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: [OpenWrt-Devel] RFT: Add support for kernel 5.4
>=20
> Hi All,
>=20
> After a lot of hard work from many people involved, I'm very pleased to
> announce initial support for kernel 5.4 has been pushed to master with
> already a nice amount of available targets.
>=20
> If you are interested, feel free to test, send fixes or send patches for
> supporting 5.4 on other targets besides the ones mentioned below.
>=20
> All supported targets have been provided with kernel 5.4 as the "Testing
> kernel".
> This means you can enable 5.4 by selecting "Global --> use the testing ke=
rnel
> version" within menuconfig.

Thanks for your work.

By moving ag71xx to files-4.19 on ath79, I suspect 4.14 is broken now on th=
is target.
So, we should either copy that to files-4.14 as well or remove the remainin=
g 4.14 files there as well (where I'd prefer the latter).

If I receive positive feedback on this, I'd prepare the patch myself.

Best

Adrian

>=20
>=20
> *Big fat warning*
>=20
> While a ton of effort has been conducted, trying to prevent mayhem and
> fixing as many bugs as possible, support for 5.4 is still considered to be
> experimental at this point until extended testing has been conducted.
>=20
> If you would like to try it, please make sure you are able to debrick your
> device if required.
> If you still try it without any way of debricking it, you are doing so *a=
t your
> own risk*
>=20
>=20
> Following targets are currently available and have been runtime tested:
>=20
> - apm821xx
> - ath79
> - bcm53xx
> - imx6
> - ipq40xx
> - mediatek
> - mpc85xx
> - x86_64
>=20
> Completely untested but provided as a baseline:
>=20
> - ipq807x
>=20
>=20
> Following targets are near completion and should be added hopefully next
> week:
>=20
> - cns3xxx
> - octeontx
>=20
>=20
> Kind Regards,
>=20
> Koen
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=+lm0JApy0JsNBP=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5ZYTEACgkQoNyKO7qx
AnBVCg//S83fyRJNbpdyyOzQGl44YereHLnVILBbI3WXRlqjSXIhbC7MfnZ+8dHo
D1NTjf13Wr/8CwPqWMTInxSMmnle1iz++4cYNI/A5eP+d5qlSibClSM0YX0o6jif
NbWgpCOJ/gAEvFcUC9+nFaYtewla5+E5NeWwZYKCUWB+D1qGlyY6fcPWzU+luVCm
w049JrfmJ7T1fvoDgQPSZVZwCPHNmzA+hutW+3hzNCZ8r5CZ0YcP1AT4gLW513Wn
7MCvzSdzxG+VOseakF/WuWncbdB41oVss8le9OQUi7g7J9C7ICCWRvGfwPtwKL3i
qOmQGaZaY4AMHRJAPzhl+ScqoGkIJlNfRN1+4XATE63axVpBlnelqiaz2rAx0wV6
ZVDOzLyKOYZZVoJYmfDOUPYHI/LlwVof8c+h0NsO6gEZMZRH5mWGmBCMJM09scVT
P/aCt+/2fN9LGvavr1r50trEoKc+5SWHBwwndG7rJ/tp+FBZbQ6ReXT0eIHQbnc6
4KKLEmtdsQm1e8d+MSmR875I44SVGasrf+rXHiIAApLV+nG5JSlVdxwn8zHJpsxF
bmO9xi40/8Xz479KWSQkZfdhISlwxJFBUw3olT+1WdH6t+s2uECnkt73tiryRE74
4bckCEk2sRnPxfNZb9p/ll2no5ficbfLlbLxJeHGBhS7Jv29/T8=
=/F52
-----END PGP SIGNATURE-----


--=-=+lm0JApy0JsNBP=-=--



--===============7514423911149884181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7514423911149884181==--


