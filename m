Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD8BFF61D
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 00:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mlND58PjF6nqEFFTFDHQK7e0gNtC8hMHmBgt+Jpv9Ss=; b=Bj1VfC9x3ZV3f38SxwZVF2I/7
	QoaDA3qftB5Wel5uUoUgQzIy3SZODyNVnMUZeAmlYjgkBkhzzb2RceipsOAKAeGhdzSRDGcuzHUVT
	hdOw5OkNjb1DbcnH0GIwBCy3LWV/WEPuLZLP37HyUS1xsxerVtQiWn+rdHKT9F382c6cWOQxEr7Ug
	lyHJAhoCo+y7mpLzoVGFKt3cfXH0i61+mY13mcp1QGLU1eLwCWpghUc+blWF1GSd2esxGUZaeN6Bi
	gj2yWpDIACW5SSYKifKOZzzKTGQHZXkkoNkAT7Gxt0Ks4CBju8G4teYUGmh1/DRZH6t8yULfffyeT
	lhBEzF0Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7Vd-0003Sx-0Q; Sat, 16 Nov 2019 23:29:41 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7VS-0003Sa-Cp
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 23:29:32 +0000
Received: from desktop ([188.193.230.49]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MBBCI-1iio1t3Law-00CmQH; Sun, 17 Nov 2019 00:29:23 +0100
From: <mail@adrianschmutzler.de>
To: "'Jo-Philipp Wich'" <jo@mein.io>,
	<openwrt-devel@lists.openwrt.org>
References: <20191116202346.31885-1-jo@mein.io>
 <20191116202346.31885-11-jo@mein.io>
In-Reply-To: <20191116202346.31885-11-jo@mein.io>
Date: Sun, 17 Nov 2019 00:29:23 +0100
Message-ID: <006b01d59cd5$adface80$09f06b80$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGG8lkgcAkgDkv0Oa0oCE0J9uTu0wICblZFqBuzC7A=
X-Provags-ID: V03:K1:w4V0I0bKRrLrLQ3+X0Ki5xMz3Tee+vBhIwey4RHahlskihQTkce
 hVwj+eTJQBIQXnnwY0CFLogut8VKBiklkC3qc5vLWnXalt5T8vGBKnwXdm4p7WDOqY4bX8D
 nvLUdrHqqLeFidPcTZ5v5HixV7rQAy+5Sk32N+TOpdiOAMqT22CU6komElxii3Ci6RXklKG
 x822RwDDFfCWm2XbSqucw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5K2DRL7ddds=:3OBtiEiCqmE8IUJ2PeozXl
 qw+XqNKr9J3+nedoVBciFagiju6CLWhKrDUIQ6h6jO07hkE3PO+bcRs3eIu+8bdZAKNPuFoY6
 GiunLUihMCRdq+Be7PP7OS3654uyC9iKGDcKHrrLmKR/xSXaaUjuprFkN5NoFtBgaaSI7FtCi
 KBEq9hS0DHlgWp0I0F1QNqIhma2GglVfFAGJflg9xtAAbqMLvMuNq9SIYWW25111Lb7CnkTkV
 OKkVm0slGSVlBHW3oN/7wtSHLx0eM76Ln6OrnuOhO9+2kGS4jZmYAX1y1SRrTBbqQoPPZ+Rit
 pqqH/2BoBCyTLY9o/3YYr64gs7Xa/8/Vw1OZO1cQq6LL+GWwg4aCRFQy98yO/JADkvvbAcMMk
 VX5F0wDEnYWy+36SNHPM0ilJp7LC+cQGzaBgTQT7fNp1d8IjoB/f8oprkFoUoo3Xc5yaIQoTQ
 UBc7B4gdQjlq8hNoTRSRuOAc8HmnHIFxs3eyCojToXMmSi+wIy2X7uBVZrMsOOjwTAMY+64U4
 fif2QE3G69J2QHT9ZBff63LunZLh8TMZxVDeChAHNjY7gPT3ll8ULJ18djDwoYCHrkJRyIIE2
 ghaytZb9EfWvdibgVuSqSBBrlC9MHpZmusbM2OuidSa8eOUbksK9+CKELRHw/mMyJINxM6cIu
 8RWLYdlCE8a4DDBKL177bKhkZkkO0Ltx1Owj5BMIKECBJ3bK1Tp028fCZFEHWQDDWnkBYDubc
 4AxHbUrovScHBui8DlSTe/CIw2sDJ7KHFqxyqmJJfSbAlq8IiyS9GnMecOa67qVpVpBVeMUmR
 hx1bsAwzd8pZyuu0AdExTZ1NijqqUrsy2E0OpfzLcoP/0peN1j98nR6GLIfuyXVX9oTxaEiua
 nVjfO+hokxLIMI9S+fFAVy3zK1Bya/UsrOW19TX+8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_152930_727219_84CA02D7 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 10/17] ar71xx: disable TP-Link
 TL-WA850RE by default
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
Content-Type: multipart/mixed; boundary="===============6821722436575329866=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6821722436575329866==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=RZshmeOhwc+Zxf=-="

This is a multipart message in MIME format.

--=-=RZshmeOhwc+Zxf=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Here you say WA850, but you disable WA860 ...

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jo-Philipp Wich
> Sent: Samstag, 16. November 2019 21:24
> To: openwrt-devel@lists.openwrt.org
> Cc: Jo-Philipp Wich <jo@mein.io>
> Subject: [OpenWrt-Devel] [PATCH 10/17] ar71xx: disable TP-Link TL-WA850RE
> by default
> 
> Disable the TP-Link TL-WA850RE image by default as the device has
> insufficient flash space for release build images.
> 
> Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/30
> Signed-off-by: Jo-Philipp Wich <jo@mein.io>
> ---
>  target/linux/ar71xx/image/tiny-tp-link.mk | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/target/linux/ar71xx/image/tiny-tp-link.mk
> b/target/linux/ar71xx/image/tiny-tp-link.mk
> index db5f735498..1c849cff32 100644
> --- a/target/linux/ar71xx/image/tiny-tp-link.mk
> +++ b/target/linux/ar71xx/image/tiny-tp-link.mk
> @@ -272,6 +272,7 @@ define Device/tl-wa860re-v1
>    BOARDNAME := TL-WA860RE
>    DEVICE_PROFILE := TLWA860
>    TPLINK_HWID := 0x08600001
> +  DEFAULT := n
>  endef
>  TARGET_DEVICES += tl-wa860re-v1
> 
> --
> 2.20.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=RZshmeOhwc+Zxf=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3QhlIACgkQoNyKO7qx
AnBegw//a22wCbNinnIGwSNBXtKCgAr2AxsdxyBmstGIofAH8/QpXxctiRmxJbsi
4FRlpb7TsJloO+RE+XqqzuwtIZiPffELrtEgmCH6UyQ49Z2WnLeNvBJhBwDQmsrC
LMIh1bD7SNNE/Ca+rT61aOmsStAxQaQtG3v3BLQX5dVYxu1p3tHvv+vuy6WdNs6M
+t7W3IotJufU31x2G4BIu20ECIB3jfUgh22WmQ3x/ilqkZFyXeqW6bk0Xjj4WeH1
EbjXxFr6cNTYsvD7DI/Ye4RLGymRHPQ6FXyH/LSgOCo3Ch5TPmlQXlwYCaK/JFVV
mGSBINQifdJUt8zkiNou3Y0JzHrIGAEWN5ilbKvyavfrbMh0fuYF1npCzkmpr0qr
5Qk67Qcec3A33B9YMdzjwaux3wLno/Rnho+cdf6NntmZsJ65EI0i3d/rEBwWv3Eg
ND35axy/WQp8o5qG1w0buTPMM5+h1QzbeT+l5UVd0Y71f/cC1zbiqQUsDIZluV8q
zpsoUrezTaGAUnBJM/YOXq+n3BFl3flTUGvZ2HoPxHpKJMFZlARuD+f+3E+I+SNn
sOC4ZaFa5whkjQtJOL8nRbVVRORmC8a9XGOQhHnX+DPRWDflyOWHfR6zeMfZiChI
L8k1/HSLhj8LQEss5jjyDby3BmScDWHQ6GfbYI+/8FPNHxGI5OA=
=1mkB
-----END PGP SIGNATURE-----


--=-=RZshmeOhwc+Zxf=-=--



--===============6821722436575329866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6821722436575329866==--


