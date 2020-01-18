Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C771418CA
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 18:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OiqIh+GvVSUObupwNfLZeGqZMFWifPWZnn1aO7dmyGM=; b=EzZwkQFxE3kh7hEbsElWZS0/q
	1LJL4mAZcRtNClF1Ilj0xOS/sIECxDYXAx/pVK9ZhBWN5OPwQmOY7WVW17a9ID2uGlUdtSpR+28qb
	5zSd4IL73n9qsDPolVw7GfGnhUUKpNIX4zovyJwQag9UX0BRb0LGxxzZdiAoi/rRs2nW77s6wMpTE
	JJJPFamR/zuVUQNjFXGni+rMB3WaXVf7lxKtnZ2vNgqSej1b4e+heD8+2Hm6k83aXezwt6PWX9rYS
	beINZlNmOFwx3eyPzm+SQhSAp1DTNJcseL+TZe8MJxuC4G2MuhjKUFCcXfIbZ/DPv1+JIZ5Wqv2yI
	lzQCHY8YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iss4C-0001SN-Ve; Sat, 18 Jan 2020 17:39:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iss3y-0001SG-K7
 for openwrt-devel@bombadil.infradead.org; Sat, 18 Jan 2020 17:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UmM+ub/KPSotyxk6RDajTEzLh8/9/AvKBc6yFAq6S28=; b=LhPkN+4XQZzf/4lUXqQd99yvk
 OGhuu5k5dyhEd84yGD2eww0EcPLCnmTJbtfj+liZePNXNr8gnDiR9Ch4zr2rOo7Mc5zSZbLZjL2i0
 tj8GaH2ZVIDS+BaZ3q//xO80iFPZwEGQ4GroJPHBe+KQhGdQyB558P4cgQ3bw/r4Vf6Im59i2UaN4
 slF9gYKhYvfs6xzz8aY7dO1C0B7Z4EPHQDBf6uNpbNudgwniji6bX1HvKXqZ+0OfBZ4X+A3DgNblf
 bwdXPjbv1Rgw+YRy0M7lKDXIBRrQbmqVvgEFqzLSmZK6euDp33KgMCkrZD09n6mZDo/zraBTsReVW
 s3PV/buSw==;
Received: from mout.kundenserver.de ([212.227.126.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iss4K-0004IM-Mo
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 17:39:35 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MHVWT-1ioFTm2P7h-00DZGF; Sat, 18 Jan 2020 18:38:59 +0100
From: <mail@adrianschmutzler.de>
To: <admin@kryma.net>,
	<openwrt-devel@lists.openwrt.org>
References: <20200116213501.9820-1-admin@kryma.net>
In-Reply-To: <20200116213501.9820-1-admin@kryma.net>
Date: Sat, 18 Jan 2020 18:38:55 +0100
Message-ID: <008801d5ce26$2a993360$7fcb9a20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHjCgfxpppnxi5nRytrIqOXWU+hXafWMmeg
Content-Language: de
X-Provags-ID: V03:K1:SA6K6q55bhiBKtC5ByqTgrlh+wE3WvZzIDQMSzOtrcTUh+POY66
 d5w5Vr0QC7p4JezjVZiNerHSYgF+l1ePOfnlzBtAR7zjFB4VOco+/A3/7y8q9qPD3IkPJIW
 e9Zlj1MCPKlQbCDVuK2RpBHg7zTQNsgtRGf3hWLT3NaR/LwIoBVJUZ7uXVrFXszurnuSN0Z
 0xAHOFkG7q+FryHqv+uvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZuOsMIzQzuE=:au8/ew1ZwtAMs2hgZKumSh
 zsmnTdCDMtlNxv+96v9Cv0FafQFjVeAchq5QjYIVF8G9Lfuk2A8bY1TFiHH7t4JQy0La3E17h
 O1TbxcVLeQWXH2ag0YpgP/bUTL1H5DCfX04ozmacC+zEsJAB/0kNtcAeGkSTD9DzkQ7C0YUuL
 EmYz8WgrqNqIa1//JVOFUAL86hxhe4GWLv9Hp3w+x+dRnNhqInXF9pSwW560DB6QkRQUrzfLp
 BuPXCVHNc2rvSht3Bhm3NcqIBQI5+AFko6FDh25e/qiQK4pWXzMPVzglYk5+etNW6iw7mVZ56
 /9UTMZdQ+4UrOvERaBbXJmm72IYjoeQL89jwY0GkSKj/WlQhKcjWfcqtMgx5qq86fxgLIgGSS
 8CUlBiUh1WCBdQHqkFbLgKgfsbBLnhYAgcg100D6MDrhzyR5XtkY+vezOqi7X+yUJmIDPy7os
 R6y6bdAkdWFUG0Qy2zOc8RbOCpSIExqFJ6q+kwwQ8ML2COt+MAv266t3wpB2yGnytETNWgSma
 0ZKvP2u5rWIiZqfAvEJsk3oPL6xd/6aAc1GgJZO+D41Nr74sGTmkA5ZIxgWdDcF94v+Td1uhC
 vkWzUimAM1N9AYlhHuNWYzCa+NNSb1HYuG/0fQL6OVI+t9+tiKdoU0sjonrF/jm9PC7fcckIN
 W/+VSDAmsVEN6jZPBUhu5sD2XbA6SIQyjJJJwp8cs44VtaO9Bnd+aA9p/qkmt4nv559rymrEy
 In0WSyniztcNGMOxj/QSOruZVjzi8Jeq8IHqFwHsGYWueEx30GX7H6EQypEaZYyRVez6ilTFu
 Hj78EBjdYT9026S7U9WPIU0fMgkvGN2Zjt3lcswUVilpoirH0adKgYXtPIID1L6Bmn65E5x45
 8Sk0NX77YK1XKiaE14h/Wv1DDfohNZw4WyRiNrclM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_173932_812020_6F772299 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4] ath79: add support for COMFAST
 CF-E130N v2
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
Content-Type: multipart/mixed; boundary="===============1460092981478370570=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1460092981478370570==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=I4NSpdGpZyb0c6=-="

This is a multipart message in MIME format.

--=-=I4NSpdGpZyb0c6=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of admin@kryma.net
> Sent: Donnerstag, 16. Januar 2020 22:35
> To: openwrt-devel@lists.openwrt.org
> Cc: Pavel Balan <admin@kryma.net>
> Subject: [OpenWrt-Devel] [PATCH v4] ath79: add support for COMFAST CF-
> E130N v2
>=20
> From: Pavel Balan <admin@kryma.net>
>=20

[...]

> -Re unused led: the led is blocked by a mostly
>     opaque plate in the shell. It can still be
>     controlled, though.

So now we know where it is. But what is it for? Any idea?

>  -Re verifying addresses: I don't think I did.
>     How would I do that?

https://openwrt.org/docs/guide-developer/mac.address

Install vendor firmware and check what MAC addresses are used there for eth=
0/WiFi.

Add a table of MAC address assignment (and label MAC address) to the commit=
 message after that, so your research results are conserved.

> +			partition@20000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x020000 0x7d0000>;
> +			};

Some Comfast devices have a config partition <0x7e0000 0x010000>. Is that m=
issing for your device or should we add it?

> +
> +			partition@7f0000 {
> +				label =3D "nvram";
> +				reg =3D <0x7f0000 0x010000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&uart {
> +	status =3D "okay";
> +
> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +
> +	phy-handle =3D <&swphy0>;
> +
> +	mtd-mac-address =3D <&art 0x0>;
> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		switch-phy-swap =3D <1>;
> +	};
> +};
> +
> +&eth0 {
> +	compatible =3D "syscon", "simple-mfd";
> +};

The network setup looks wrong to me. I think you just need to make eth1->et=
h0 and eth0->eth1. If that's not helping, play with switch-phy-swap and set=
ting phy-handle to swphy0 or swphy4. Have a look at the other qca9531 comfa=
st devices.

> +
> +&wmac {
> +	status =3D "okay";
> +
> +	mtd-cal-data =3D <&art 0x1000>;
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index fbb0d0ea03..7521e435a1 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -47,6 +47,15 @@ comfast,cf-e120a-v3)
>  	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
>  	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
> "$boardname:green:rssihigh" "wlan0" "76" "100"
>  	;;
> +comfast,cf-e130n-v2)
> +	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan"

You do not need this line since you have a trigger in DTS.

> +	ucidef_set_rssimon "wlan0" "200000" "1"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow"
> "wlan0" "1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
> "$boardname:red:rssimediumlow" "wlan0" "26" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
> "$boardname:green:rssihigh" "wlan0" "76" "100"
> +	;;
>  comfast,cf-e313ac)
>  	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan"
> "switch0" "0x02"
>  	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan"
> "eth1"
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index 10ca213e70..5840b90bf6 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -86,6 +86,8 @@ ath79_setup_interfaces()
>  		;;
>  	comfast,cf-e110n-v2|\
>  	comfast,cf-e120a-v3|\
> +	comfast,cf-e130n-v2|\
> +		ucidef_set_interface_lan "eth1"

This is not only very unlikely to be correct, it will also change the devic=
es above to a wrong setup.
You will need to add your device to the case where ' ucidef_set_interface_l=
an "eth0"' is set. Then you will need to adjust DTS to make that work.

Best

Adrian=20

--=-=I4NSpdGpZyb0c6=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4jQqoACgkQoNyKO7qx
AnCGJxAAn67ruHR6Bi8P2/lWdRnsZnzhD/tsG4ouxCYVYh06zxmuGSnUhOOdSZxB
DDT1pcEKEbJ6UQak9QqvYgP87Xt9iX3AKC0iDtLnoQZ6G//KxjjVuH7h8OROHCt6
+GrFJv83WHPtb7KvC/ZtRn9+ulhVdeq7Gcx2dVqMysIeUrvZvierchwUqbN4l5pL
KuWz9ypeGV3xEQadfL9VNC3jOf46P+y5SH3XzPuwrk0eaigONlMknn9hBy8+Ye+e
y++/S2OF6Wav3wcY7nWvHQFf9qQPbpwN/h7yvK7DMsXaoCeYjRI7xTO8FbFAyZr6
Rj+RVNfaWkNjvh2GUGrYsRvTZXy0aUqDDfVtJhpBZ0LWBgwW2KFNZ+T9JzOcGlRt
SMtkU+lxNdl8eJLmL2yoLY4FAc9Y8tcGXz4u8ttKuhGgeswNdDjt7ejUUSOfrf1Q
G/u9eo0ZZ7Yq460p9RmIbCMKWTRzFXcQSBF7bcSwnqtmcNiXkzEeDKMSJxED1/8x
9i9dRcrRJyWEA8/eLkYu3FDN6QeZry2Q9kwwGvbUNV7Lgfzswi3NDU/LLmfeskGp
ofmjbDbBbi2F6tNuQBgJGXCQWLmTMiKACKJGeTGqkne60boXH0CQfnfpY3dW+Xtd
euoSoeOtKlaZjz/+SV7gko2LaEnU/A+g/Q7JypEW3JiuBKLS5ls=
=mRnI
-----END PGP SIGNATURE-----


--=-=I4NSpdGpZyb0c6=-=--



--===============1460092981478370570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1460092981478370570==--


