Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4181431E0
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 20:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q95nlMD8dLzZ5Q++X5AD+QBoUd/GgbKY3hrgCK1EHSs=; b=Gb9Y5SEMyQhvGGg0EuMidM6B7
	7SlpRjW++sQVWZHBhmS33V9fluWNp+842m2LDuTZue9mwM3THiobHlO2pfDSixGgCD+ACGGT6o6JC
	ZQ8Ik/vUqJG0HXVlMqQHOcqg3kTD5ZWrUmo9m3G7SFAkz1bEWm59xWTELejKfuOow/J45FqnkBKzB
	naBOF0RfUgUhQ6UH5zHxo8vSrZtLAk5+Za8JO6zqv4comd4A1XcZ4xbxEsFqtu/MbO2R0xfUW1kEA
	XhDkYXv4pgayBYuKljw4ltbMWfzrknBKzh/vHXjJQ1I+26dTMW983LCVA+f8inC5B9VbUI7a7JcAf
	WnYP6egXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcI0-00007j-8h; Mon, 20 Jan 2020 19:00:44 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcHn-00006u-La
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 19:00:37 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M4alK-1it4aR1rXy-001eN1; Mon, 20
 Jan 2020 20:00:29 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Stijn Segers'" <foss@volatilesystems.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200120184931.4202-1-foss@volatilesystems.org>
In-Reply-To: <20200120184931.4202-1-foss@volatilesystems.org>
Date: Mon, 20 Jan 2020 20:00:29 +0100
Message-ID: <02c001d5cfc3$e1fc7a50$a5f56ef0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQJ2TBA4iYoB7gljNvPM6InWGxxF36ay735w
X-Provags-ID: V03:K1:LhE2p1Ev7Rf3WTztLEbCxVqJftholPtEmIbg68va+6zsBapYxD/
 fgpLcR4NEry6fqaPFdYymIUGVxC520gWO8+DF2zuUB/YgIaRrJMRVhoNCGiNJJy7T1mGtz8
 C1Aj2M36svAVS+MzzyozqWEPzAerbUfV9VxTODurCfrSExsLHActuQsZzRZvAYAQpW6adot
 RxBNFupcGqRjFbB+AogCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0mUsLitj75c=:wpzXvqoUN7OSJdYjA0/Yix
 zRRmZMwHgpvWvHaRXXOgSk5sUfGxXHGRJmvZB6WiG2QEmselQdIR1wRmaTSj8yCBOXX/DV7Lq
 dGd5WPBZpaAbRs7D5cM9Cx23iWLTEWvRfcFU9NUWPejlHl9J7JxhHsMonuFv8mlWWkUGUU1EJ
 cOY6zCqPrCKkieySHyTHqM3rFkvRwhrvmrib4TCIUVCERZGDUX7SQA2bqcXAhSB6SGg1h/yO1
 sOcJqKup2w/07S3eAegIT8HiSAbvrEZkYJPhp3tfD44062mHDdDcCzQiiU71bjzCja9CWAGC3
 7toe5za9H4eRce6rEy6FAgoIreD0UCFLHRcO92NLkMxo+PX/4t6AgUHGYk0YhEVUc03B56Lis
 5wQHkWcLl12wsJ+AfHkyxBjskKgyaVVr5CDkcJcpWDd69/KLJoo7+YNGL2nCdvGl2/7w8ibtI
 1g3Vg8gao0N69Nlw7xy0zvgCVdVg4svO0DhZFDFQFqUJq5Vi7P80MoS/Ug3n8sGgSMiGxzdOz
 3VZ+AovkHJ33rE7POSme1lhrPpHvr96DgJiOvZPekYPweTj+dzgCzFQmYYIiKT1PEH6QAbSTg
 Pnht/9iEVdLD17Jdzw1Dzpllfaf+ipgxRKCOzaVg4nxYnrimFKzQRyLnpTRGi6iA1Vnns5zsg
 yjkhp/5mEsQbhPU2WUnziGCzjTsTk+yu8zpIdvgBnxLIrzCTsB06fMtJDVl+r1oxlD4AomZH+
 4jRTzVW2I5VaBImOV41uGjf4mOZcUIqItsNl+P5N+zq7FeA2wAs1tClMYEaKKWwTRriaMiHzH
 NAUKp2dMeLhV2oLdOy5V5RV3Ei7AIgcXtJzKn2wCtdtrqEahdS+j+V3JD9O7okiZ4vP7GBMwT
 e37p+Wmj7yUpXPhZ6BY7s0o7Ab1snpTGZfTNhRAMg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_110031_998375_CFE1504F 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e module
 to Netgear R6350 image
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
Content-Type: multipart/mixed; boundary="===============0710497609619425069=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0710497609619425069==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=o9H6d2S0ej2E5s=-="

This is a multipart message in MIME format.

--=-=o9H6d2S0ej2E5s=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Stijn Segers
> Sent: Montag, 20. Januar 2020 19:50
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e module =
to
> Netgear R6350 image
>=20
> MT7615E support wasn't present in OpenWrt's mt76 version prior to 19.07
> release, but it is now, so add the module to the image.

what about cherry-picking https://github.com/openwrt/openwrt/commit/9861fa7=
abab97cb928aaa6cd5732a413d973ac95 instead?

Best

Adrian

>=20
> Signed-off-by: Stijn Segers <foss@volatilesystems.org>
> ---
>  target/linux/ramips/image/mt7621.mk | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 53a264f527..fd3a8e558e 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -374,7 +374,7 @@ define Device/netgear_r6350
>    IMAGE/rootfs.bin :=3D append-ubi | check-size $$$$(IMAGE_SIZE)
>    DEVICE_TITLE :=3D Netgear R6350
>    DEVICE_PACKAGES :=3D \
> -	kmod-mt7603 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
> +	kmod-mt7603 kmod-mt7615e kmod-usb3 kmod-usb-ledtrig-usbport
> wpad-basic
>  endef
>  TARGET_DEVICES +=3D netgear_r6350
>=20
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=o9H6d2S0ej2E5s=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4l+MkACgkQoNyKO7qx
AnBM+RAAinWJ+cHQuLzBmhttOEF3YgqHwvKA6DiMLLILhN10Gx8rBao+WTUj3iG+
3q2VfRhl3CVBGz0jz0dCDmdDTboEgbR6V5dXE0mEyP8qL1b/qH1Rz8tRfYKsfGLN
qo2tesRbREe0r65rh8J0yHERkcE3iEmlKA5G7HF0kGmBjZ2X56bMjgX3V82cvH/M
9ce68vjFHmYDPjyT34dQ0/lrSF5cSbH5XbX6ow3S5rPcp0d9ae5idv6S8Ph0eQJF
SUU3LjUxF6IkKDA1WvmUXnjLyf34sr1xSAXXHgiA1aek5CGzwzOqw5HgT8MO5kwF
ye2TWl86hyeAvcWUem9zO0/nPBGUvjaDnqPd+7QXg2EZnUEJ1R8ujkt6iPdetQK3
PXHXjg+FV8zKkTnWjU6KLUNlL3+Ch9/DElUCQXxG94fYoJW7O1P6URcCoFER27sV
f4hPs1dbWYYS5srQnXe56GzvoRkRr5D/LL75WfnpwKCFYTKE9h/yYo0oGzjsbOHe
L6nNKFqK+bH/GR7VH+v1Vt2LPQWIrVi0V6BHMSsQXA+Nmpoxhoj6lFYLwGE176e4
b0/XosZdafIEpLU6LUfNdw2+cGN9oUk6vUijsuZykKD5T8dFd7X5SKl82EQMKNio
5pzbE/+LtajfZ9ORNA9D7beAYQJ6e/es/Z1PLroPyy8mQp4szSg=
=Yl+2
-----END PGP SIGNATURE-----


--=-=o9H6d2S0ej2E5s=-=--



--===============0710497609619425069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0710497609619425069==--


