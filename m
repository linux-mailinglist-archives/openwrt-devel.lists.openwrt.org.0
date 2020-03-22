Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6586B18ED5A
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 00:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T1kiGcE+czWlTVxvarFLQPnLgpMLeNgAjQ8fDVmeNrc=; b=uu/HHrBGmAYrmItz2zfeflLt9
	8J6RMm29DysuuDZbEbGKhj6cSiVCrzqUh01aEVPuQYgDAggx5xaVT4bq1IhgPzi0yxoNgo9jz1cSN
	sdhTUHd9juIio7dJfA6e771m/vFhNACWnfNjZJQP6tJXoUvjOI/dJB478oFLMVvscyHU85YgzPTv4
	sJ47bbwI0vBrlhEdjKGJodkElMH9S0aWkzBFHbcMwO1IjqujmWq16yueRVcVwe2NVTfggrTnKAeqq
	8Ee8ybBGft0+H8K/lAg6LSTwVOy3P65nINylExwJ5AUz5LyDw5NNWQ5VISWp9t3ZIovlUsyOFhu7R
	S6Mg3DsDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGAKX-0006lv-0O; Sun, 22 Mar 2020 23:48:33 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGAKP-0006kh-4C
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 23:48:27 +0000
Received: from desktop ([188.193.188.114]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MqsL3-1jbhRr0Att-00moFj; Mon, 23 Mar 2020 00:48:18 +0100
From: <mail@adrianschmutzler.de>
To: "'Alexey Dobrovolsky'" <dobrovolskiy.alexey@gmail.com>, <john@phrozen.org>
References: <20200322231707.6014-1-dobrovolskiy.alexey@gmail.com>
In-Reply-To: <20200322231707.6014-1-dobrovolskiy.alexey@gmail.com>
Date: Mon, 23 Mar 2020 00:48:17 +0100
Message-ID: <012501d600a4$5c819100$1584b300$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIMzBMjPdEUr7fF+8ou+ttMgUxUhqfnsFQQ
Content-Language: de
X-Provags-ID: V03:K1:FsxJ1cANlxDArUocRSExrzOmNAOr4d1gcNx6f8FST6h686/8De8
 23+WiMAMi30Bz0tzsbJjxj24BJ0+YRPg6FG1tbxpCLHt6HRHNBBFYI7ttDFVz5W/5V4xSCN
 r00DF/zgIGV3C9/nWobmQB0TDRViflEvfWm9FPTIzSYENh9JN9Vdm+5GaQKpnB/a63L8ygb
 2K8kAZwrRsU+uGbhrXjAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WRF9jqPwlVc=:pep8C2gkvKKzv4jjf7Wzzx
 4uxe4LHH4UypytYO2kjjfVW3rE7WW6/5irmZcbtbXzbsg9HLINFoikz1RtGNF8AHw4oJvCa9K
 Vi5z7JLWB+fboN1+k26HjkqI+IZvsz6Ne9UjnlsBoIR92WJJJOkFGzNmo6pUQOlkl8ddaLmbL
 /WbWsgYKScZj2MmZV7zGr4REY7eDTVgIHZ6xZ3nmQx5QPrw9CkDbQFhXksk6f5EBf0cN6ecw0
 zTeWoCcq+o6KZFI0/rUmc/qySQcqVMh/A+uh46QT0iQjkZ6HBDVDFpBIW9qVdOW7AAWsJGq4m
 1pRd/cllaO6A42V17ijZoP/x9VMjf1a4KZlbEJV/l4LriZqRo6ix9BJ7XTZ8j+wG7k2h9RCbz
 4rA+8XfTATAYphrqXcXvi7rn50npgtYivtgCVixTY7BcdIJvZ0B/rH5j7k1j/ahbnRcc9EFFy
 VEULzTDxAIg/wTB/TNtJ6m0bjt3Jki+wlXY7OI5por5Y3ipjnQCTyJmsiyKOX1PvROMwbtyFS
 LXrupGk4f3EvKw0lQ9SuHHMgxYIaoAwDNKT1me25/5b8HBmIp4jyVgKKqARbLtN44m4+epzev
 2/WhSRopZK3eJJy0xzQHq9RSfFZESEzier164syCUR8k6LlrzU+OOKaNsXnIIQJwNP2XMYy6k
 nNlnZP8igMx3jI/Lolyvo1fBKEpkaWQNd2vrvyrEbQm3Ox7axrlEUJmGQfYgvSnG7FcSLTezI
 HFVOEDHZpUGhRd2HDiHO5RHrXrhrZCLXtF6Ik8JKpgZSWODqwNC5hIQagrMWS2jsl40VRQ0OU
 l8eVI1WWSoOJHvTJCaTNofehivl/9zrjrUaghGdhVdlPaZ8t05OI/HPOYHbbkQXBRBHnJG1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_164825_463011_87729B90 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] ramips: use full 8MB flash on ZyXEL
 Keenetic
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5422794996583401150=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5422794996583401150==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=8FKLJ9FzKOXyx0=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=8FKLJ9FzKOXyx0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

please fix this in master first, it can be backported afterwards.

Despite, you do not need a cover letter for a single patch, particularly if=
 it does not have any content.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Alexey Dobrovolsky
> Sent: Montag, 23. M=C3=A4rz 2020 00:17
> To: john@phrozen.org
> Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>; openwrt-
> devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 1/1] ramips: use full 8MB flash on ZyXEL
> Keenetic
>=20
> ZyXEL Keenetic has 8MB flash, but OpenWrt uses only 4MB.
> This commit fixes the problem in v18.06.8.
>=20
> Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
> ---
>  target/linux/ramips/dts/kn.dts      | 2 +-
>  target/linux/ramips/image/rt305x.mk | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/target/linux/ramips/dts/kn.dts b/target/linux/ramips/dts/kn.=
dts
> index 77b047c094..94f6cddf94 100644
> --- a/target/linux/ramips/dts/kn.dts
> +++ b/target/linux/ramips/dts/kn.dts
> @@ -37,7 +37,7 @@
>=20
>  		partition@50000 {
>  			label =3D "firmware";
> -			reg =3D <0x50000 0x3b0000>;
> +			reg =3D <0x50000 0x7b0000>;
>  		};
>  	};
>=20
> diff --git a/target/linux/ramips/image/rt305x.mk
> b/target/linux/ramips/image/rt305x.mk
> index 2d071c1ebc..b67cf5d2f7 100644
> --- a/target/linux/ramips/image/rt305x.mk
> +++ b/target/linux/ramips/image/rt305x.mk
> @@ -895,7 +895,7 @@ TARGET_DEVICES +=3D xdxrn502j  define Device/kn
>    DTS :=3D kn
>    BLOCKSIZE :=3D 64k
> -  IMAGE_SIZE :=3D $(ralink_default_fw_size_4M)
> +  IMAGE_SIZE :=3D $(ralink_default_fw_size_8M)
>    DEVICE_TITLE :=3D ZyXEL Keenetic
>    DEVICE_PACKAGES :=3D kmod-usb-core kmod-usb2 kmod-usb-ehci kmod-
> usb-ledtrig-usbport  endef
> --
> 2.17.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=8FKLJ9FzKOXyx0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl53+T4ACgkQoNyKO7qx
AnAv6Q/+PN7QLGBvoZ8CI8tMBHLcxSaCEM/N2tZegt5NW1W9dx70/oVn0FWSNDWm
K1EBPnYEqZworHsVDdToERVdKg2ZYc7oUJgXzSOCzbsNZHFIva+hRf+ZFDfU38Pr
elKeLB/3Szoo1Ioy21Zv3lec+4pOXx++hFG9nI30sPRSRmW+bJ9peCZ59uY3DmQA
SEZjR5rjKqkswzbU1rRUI7GFaiPniZ2g6LS++sCw8B1eneeyi8DiTO58tOgDMgs0
u93UrZOHgXGM0eplvAbk0Y/QPB+yE9+NJFYFEP0EFSRYBlhZiSxFKw370ai+0rE/
XiTSidw6CcG0c1LeXs7hwwp+O4vRq1Z/8UJJ2zzp4Rs9rbDSuTDnk8BFY2Gob+U+
HHGcnlqEG9Svp/f6JHneeKiJzIx3uZIrMb3KSH6dg7uVoBYo2dnuYq7XvEQic3Fr
GnvUPLOvTyy2mRvjqoVPdyw5gSZxK/cRNmlWA4935iuT9dqu2m2CAHM9ciQEhywT
nDpKZfs0HjRJ8SO5ddgKq/CegRMhIyig6mXlXg4ObNZo/5t6hy9OPTeJ/EYCiSDj
d7AWKvM0eH8x3PSVqWR7EavjgQ/oIs7aPOo0zvfZEqP8QftSNFa0IhEEZ100gtgI
hEpaxVbE9ZEjZp3Jy2730VU6EgHP3Fz5Fo9CAkHa0Qb/aOe+f9M=
=3/dA
-----END PGP SIGNATURE-----


--=-=8FKLJ9FzKOXyx0=-=--



--===============5422794996583401150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5422794996583401150==--


