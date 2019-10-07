Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E320CDF80
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 12:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CCTvrk6OyjyF7Zr1CFa6zXN6ObzCP+/vhZzAEV5PsrM=; b=a1oAZzUyIDrQ2ukU/lsXT3pay
	IhfTCClE4xdiNt2lU1M9WOCzsFWU0wFKVDsvClIqpT1mKdxb+tC8UTfIz7OvK0tjc1sySFZWCg9jh
	tXrsA0F6wtjSC0hPzAURqPulqrZral2NCKIZI+g9N3bdxet4zSapVKotfijqz1icIhdu3XWb2h/Xa
	JMFk6ZIVggwN6NK69d21Fp8zTY20Ua73jJuM3Cu1DD8IuEO7vXTVvvLZMIn+Vv5yOhOEPjXxWoCY/
	hZZAh8jBl0azbBQXOOZQ/mr1MhUnAGnUv4ateKCXdtKw4sVVf2LCmzVUV9AXtUyb+dPxF+lS/gRkE
	qy3M/yr3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQRt-0003og-G4; Mon, 07 Oct 2019 10:41:05 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQRl-0003nt-Ez
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 10:41:01 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MVeDs-1ij1TK1LTI-00RcIo; Mon, 07
 Oct 2019 12:40:50 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <7b533443-c8d0-69ac-66fd-4602c423fade@aparcar.org>
 <20191007082204.30380-1-ynezz@true.cz>
In-Reply-To: <20191007082204.30380-1-ynezz@true.cz>
Date: Mon, 7 Oct 2019 12:40:49 +0200
Message-ID: <01c101d57cfb$afabb900$0f032b00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQI+Fo2KRcbneH1lr11iu6+vS21CmaZ9yQCA
MIME-Version: 1.0
X-Provags-ID: V03:K1:N3377Y3poQwThjaN7bf6rBh72XTTyw/6c9CERL2YDJ9mqkdgift
 JICdHW0+XXlUXtmzAaXkVeJywnHRn0ibhsxQ2IYB3UxsS3lSgindPagtQn93csJJVNgMmHH
 to7uKcoznQA/vr+xgXF4SlqNMIEuJU7bM4d9OC82QV5wZs/l4fcnGeEo9e3pdRtEajNrOHg
 +YhZT409xPYVQajIYlKkw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bSUS/xJE10E=:flrVDgEr4pBk13Kpdb4eHX
 xz/qDIS5oY2W2OA70rnXGuY07TcxCz+Z6h+fnQ+OUwspr5Sbdg5PEWZwaYovhDGYnMopmPwyp
 t18daeW2oKh7CvourkAHXmuvwg/7HzggpA8fel7stC+Ohi1xDj13wLpPWFXjnra165Cx0A2gW
 fTcgZCiTxBG5bUI9XJk9i6HXVQgsZOIh1MinHUmjKek1eopikZZ0WoH+IC4yl3/r3o88Iy706
 59GGiVIg/SYfNsV5WwSbMWkyUoG2bIy9TTQ4FY+lwuMwgJyxLqjmIuB/+gK5o0YWwGF68WkBQ
 bOqIwJ3PGelvClA2rINtz+9zBS3tanFSAGFRxaZ8FRXOH7LxWzqPJWd5IpJbU+W/O/8XlpGS6
 ry2FI3og4nxK6Jg1qEruFfnIberqgeObAxl1IeBhRDNyFyyCddr8zryN/j//qtnKccaJ1xmE7
 TxFVnTukk3P2ds4qWgodt51d2Uh32cXxxMtIDh1sDE3+qQKW5uSX/SzQp4iIwuFiv3EoLXyES
 sPSQxNYNB4OKoGEuiM/mbjj6CXvxgvnQ+stMEtjPi3vdzPeyH79EQnuZ+l8QQ6cD7JucyfrbP
 esHoSnIZ9CTQuudje23jZYvOsGFEY6h8T674uZ8737OrqiQAsMlvYJ5MA83LL/T8AkIPlOVK7
 h3r0CUWDk1bUQ/wd1+gIvl8MXdnlD7nPg0J20i/WlaCdB4H3c3bbYhB5+aj2Jx0YKIxf2CjhX
 uy2KZBV/ctxNFCnZlpgrflZCTwPoXbtMONI2iHpgktBG0XGSnhSjzHRF1Bh9t0YSFT0F7+Sn6
 KwOoYTgxrS+dmpboTYvRRl2CZ5kz1ZyClccj/H2paoBVWb6P5sT4D0lYStGk7i1esa9x0rLmN
 fzkyyM8Ia3WjCv8ssav0aLH4nGq0daP1+fK6/5hys=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_034059_656025_5FC9281F 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: make UBNT Nano/Loco AC factory
 images reproducible
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
Content-Type: multipart/mixed; boundary="===============5442557797755396359=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5442557797755396359==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=iRdhLfawKZC5yd=-="

This is a multipart message in MIME format.

--=-=iRdhLfawKZC5yd=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Petr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Petr =C5=A0tetiar
> Sent: Montag, 7. Oktober 2019 10:22
> To: openwrt-devel@lists.openwrt.org
> Cc: Petr =C5=A0tetiar <ynezz@true.cz>
> Subject: [OpenWrt-Devel] [PATCH] ath79: make UBNT Nano/Loco AC factory im=
ages reproducible
>=20
> Current factory images are built on top of sysupgrade images which
> contains metadata which are causing image reproducibility issues, so
> let's build factory images from the scratch. While at it, refactor the
> shared vars into common base as well.
>=20
> Ref: http://lists.infradead.org/pipermail/openwrt-devel/2019-October/0192=
05.html
> Reported-by: Paul Spooren <mail@aparcar.org>
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> ---
>  target/linux/ath79/image/generic-ubnt.mk | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>=20
> diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath7=
9/image/generic-ubnt.mk
> index 6ae766e29331..9ab11324b411 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -114,40 +114,40 @@ define Device/ubnt_bullet-m-xw
>  endef
>  TARGET_DEVICES +=3D ubnt_bullet-m-xw
>=20
> +define Device/ubnt-nano-ac
> +  DEVICE_PACKAGES +=3D kmod-ath10k-ct ath10k-firmware-qca988x-ct
> +  IMAGE_SIZE :=3D 15744k
> +  IMAGE/factory.bin :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | \
> +	append-rootfs | pad-rootfs | mkubntimage-split | \
> +	check-size $$$$(IMAGE_SIZE)
> +endef
> +
>  define Device/ubnt_lap-120
>    $(Device/ubnt-wa)
>    DEVICE_MODEL :=3D LiteAP ac
>    DEVICE_VARIANT :=3D LAP-120
> -  DEVICE_PACKAGES +=3D kmod-ath10k-ct ath10k-firmware-qca988x-ct
> -  IMAGE_SIZE :=3D 15744k
> -  IMAGE/factory.bin :=3D $$(IMAGE/sysupgrade.bin) | mkubntimage-split
> +  $(Device/ubnt-nano-ac)

If you call it ubnt-nano-ac anyway, you could also include the "$(Device/ub=
nt-wa)" in the common node.

One could also think about naming it ubnt_nano-ac (with underscore) for con=
sistency, like what we have for ubnt_routerstation_common and ubnt_unifiac.

Best

Adrian

--=-=iRdhLfawKZC5yd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2bFisACgkQoNyKO7qx
AnDR+xAAtwQ0mQVZV/DW8cIPDtkMp4QAjkxaKhlCDUW2u8DpfyrB7XEqOTyCKnVX
IX3ZNg3IdozxOET9eku0lZJkOre6nwDO3sKNxsiY0xfTSfl3pAfbLg0NwmvpQIWX
3LXaxbvnFayRopOjcpEjmfuZLbsyxtybYNOc5XbIResWLuR6lg0mA012eCM7lhc0
BeBeMP89C8M5xqJRIQjq9lC2W8Cpw9HqxnsxvGf55cIpIi7VUMWwQgR09RI9Q8g2
WtBOmhatrfjNH/PDY3ESn/4UI7wtKEthOCfE205XJzRruROMZAgT18QGo8rTrO5V
JxWg0FVlB9WuLPkBjGKa5JsImLzS/zO9rYanUXofiMX3xUPNGTxUE4wGCHICKiCo
/Bz9zSP9WN9KjBIgLR23vtZ/Cjx4rJcvWLNE1tgyGp1DpV0zOY+de02d93DELt8K
2VpuwM+XgLwBVEbl/w6yJXovNjvfG5YwtoRrG8QGTWH3+ovmhHAny/7Pb5KPnJzF
f0HvDr2fW2ttElDUXZ7wVD//hSD8RgiYkTkn65JzwT7lyW6y06+Otv/XpZePgRsW
TMGj/uJCaoK4f0T4DGvQwGUVteGDE9UbmJm2moPrclJ9t9pDz1pmdn6wNOhC8mbX
EXWuEasguZ7ZfB6y4N/kZgGsNt29O0OJW21BBGa69KyGbQcbogo=
=ujzq
-----END PGP SIGNATURE-----


--=-=iRdhLfawKZC5yd=-=--



--===============5442557797755396359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5442557797755396359==--


