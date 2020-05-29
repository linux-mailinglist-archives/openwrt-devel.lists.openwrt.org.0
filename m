Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1A41E799A
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 11:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WrYZBGhs0rCpqAU8l/2m8ux1pUNOzhHIseaPM6a4I2w=; b=HCw3pHyPyLjCcLjLURwIrSny2
	bc0rUWFKN3wygc0ZQIT76EyTyStNfS7YCBkmUsatWiwWwHU/cDryJ5WJGDCjcv+gjLc4qoqfC/P02
	5bUhBzRnI9qzXK3pjMVF/OKrb2loK/gbgJ1+JPznXz72eNDt9fSSgCA+aFCq9SmEEVZBQI+X7qDIc
	WmD5Ejdhy4QI/hEvOyjBnNo7pBTZ0q6QekfEdsOYl4dHdtGquI+56mIOJvJ7LLns1evfHre/tHdmS
	KBeYU0nNWDz+WM09wgWJPSAKdzHxFYBMMBHwO6m2mYhPBUKBoNIo4eUpZ7q5EK8xTbG3HofRyetgp
	dqOepXHxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebWC-0003XH-1D; Fri, 29 May 2020 09:41:36 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebW4-0003Wb-Lp
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 09:41:30 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M9FSx-1jc7T73d2N-006KEd; Fri, 29 May 2020 11:41:18 +0200
From: <mail@adrianschmutzler.de>
To: "'Evan Jobling'" <Evan.Jobling@uon.edu.au>,
 <openwrt-devel@lists.openwrt.org>
References: <BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
In-Reply-To: <BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
Date: Fri, 29 May 2020 11:41:18 +0200
Message-ID: <008601d6359d$4e0200a0$ea0601e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQFaiZ1aJUsrpgk7beDpgLt4kOeiTqm2I+rg
Content-Language: de
X-Provags-ID: V03:K1:0v6tEbfi+0woR0APb23taiLua0Hn7YeZJNrxuCzylB72NzmX7l2
 6yYV/g4O+rN6BuM4DKIizAC7wtwdSVzGSmayQ6jsUVnEzuHSWIzMh1Fe69F3GnOyWLp4sp9
 LAb/VPyNqSlp5C0VzlHJ6eEZVHkwU2Lm1T3C9RL4qPCsdp/NaLaVsI5kU2K2oeqsGRIhIQQ
 DW2Fij3VsWwXqWRDJnV0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/7mAt3zI+gM=:7roaaa3ikvemSjzD4gqJGV
 /tY87VeJFBf8hsXXfOjvvGs0gn5HZrCnJhY4Dmi6B/iHQIUToO5wxlOExft0A+9RnEC1EOFcG
 BhQFRL3xXZnG5cQ/SB+ywPENmll35MDj1OmL8BAAUODJ7H36bavveTfvTyyznPe99hNJPMrSB
 /hUCTDMqTjO1qqMnEnThldJmk/60xZ4gGr2MnTtYT9TyVUq6aVxjLuEprhRDL7id81Wc98aAi
 wgy8z3DPEHtjFatUH1rLgaPJ1v81vFxBYy4w1qWcs3y/o8GVLBYNrJZuOWGU6xWEUUqOKgVcX
 EamqHdNCtCrjCskZbLhUO++Xm2atdu9D44PDOjb21HAXW2oPEAGxOcd+g9PI8fDTNZZ9bAs3D
 2CSTMhkguRbQag3SuLAqyY1LcjQ9FnTRItZcgqpSHK23SlfXAWA8ULvTTzEaBV8cUmqF5gFK3
 MvzSo0VGuYf0/wruD38njxPD6WWG11R8jUnFxiJy0NrptG3Z3ndpO3X4gWihzt4keOFLYxV95
 B+kv5ExCZJTSsPjLeSNzrgXTY7ewOmNPewQ1yctgJUu7juYY3zRloK4OEzwzY8wwli91xn9p6
 3GoAOK2xDlqMshGhY1NEnGr+cANGmbK7fJUzYc89Kcu2L3WUyiTG1vt5M486N+M7rgpVHmAUG
 45zpxkFUEbW94jQZJmkPeI7oxcoaIgNXd81IljyZOygMYQ1HOLkFEayI8nceBWfANP35YzAxl
 FQbmc/Edylh20IlCg9Wpi1ZrHL6l+S2FN1kaCkeSgEHuc1Zj1BUlyQkF0iA0/UNPNJSXGfzZ8
 ghf6+fggiGJ35iHrocw1GG6/eaUPc/ocWskHeGJT/tOd5mTsn8t1JuFidqsw2ykbViTY0JA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_024129_007356_34A11071 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] add support for netgear R6020
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
Content-Type: multipart/mixed; boundary="===============1882851670489822019=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1882851670489822019==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=0MPTQtITP1mZdq=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=0MPTQtITP1mZdq=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Evan Jobling
> Sent: Freitag, 29. Mai 2020 06:45
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] add support for netgear R6020
>=20
> Hi All.
>=20
> Apologies if this isn't the correct method of submitting a patch.
>=20
> There was a patch on github for adding the R6020?
>=20
> Didn't look like it went anywhere.
> I recall issues with the LED naming on that one?
>=20
> Just so it doesn't get lost to time, I figured i'd email my modifications.
>=20
> Please find patch attached.

in addition to what Stijn stated, a had a quick look and can give you some =
pointers right away:

- Please add an SPDX license identifier to the DTS

> memory@0

Drop this node, memory is auto-detected.

>	gpio-keys-polled {
>		compatible =3D "gpio-keys-polled";
>		poll-interval =3D <20>;

Node should be called "keys". Please use "gpio-keys" for the compatible ins=
tead and drop poll-interval.

> gpio-leds

Node should be called "leds".

> spi-max-frequency =3D <10000000>;

Typically, frequency can be raised with substantial gains in read speed.

> mediatek,mtd-eeprom =3D <&factory 0x20000>;

The partition is only 0x20000 big. I assume the default 0x0 from the DTSI w=
ill work here?

> mtd-mac-address =3D <&nvram 0x100b0>;

Are these necessary, or will the address be correct if you just drop them?

Despite, can you please check whether there are addresses in factory 0x28, =
0x2e, 0xe000, 0xe006, 0x4, 0x8004?

Which addresses are assigned on OEM firmware (lan, wan, 2g, 5g)?

> define Device/netgear_r6020

Please insert so alphabetic sorting is maintained.

> DEVICE_TITLE :=3D Netgear AC750 R6020

Please use DEVICE_VENDOR/DEVICE_MODEL.

I assume proper naming would be "Netgear R6020 (AC750)"? One could also use=
 the DEVICE_ALT0_MODEL syntax here ...

> check-size $$$$(IMAGE_SIZE)

check-size works without argument now.

> ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "phy=
0tpt"

Please use a DTS trigger instead (for both 2g and 5g).

> In 02_network

The case can be merged with the subsequent one.

> Stijn: If you'd like, you can create a new PR on Github (no idea how devs=
 feel if the original PR is still open and languishing) - see [1].

The old PR has been closed quite some time ago due to inactivity. If there =
is new progress now, it would be fine to just open a new PR by the "new aut=
hor".

Best

Adrian

--=-=0MPTQtITP1mZdq=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7Q2LgACgkQoNyKO7qx
AnABhxAAxZ/AO2nMj6LOzduALDq9Yi7pPqXSc5hfGKO51mlRjDwRgQM1OUWTmrAr
G2PPh0rlKFZ5/5XRojKRsk1Zj5nPDW2GWpqMYLxnKdhltjcAMuhqoyztw7KWRfx8
BvCu4b2MmZ3fKUGFaAh4BsPN0C9kWDfPWaQMKe/G63ZiVaUMmnCwpJL+KCi1/Jxl
NjUXBxcxGZW/HKweOIduURzFWk5UWKqKfpP9wUNJDuemTKlNk5bWFdfp05eLrpub
54z40VnqVkTZd2xcCYb0o0T2t0cQeBE1X7kc9B76V9dDXgwN5eIZeckxx44Mtggn
qHnAKr662PwVTK8qzD5w63lJE9LKismB0kex4EWyx519PZ6vydX2VxrlMUWCBOAq
i5fFVMF2Kv896dB2qEX7DNkYhehpQ/b3GKQac3WgC/b8iIya1Tv2F4XkEsyrhuIH
gxvQ7Q27nJ1HSU4zlPFNm0ixvYKMMUUgSd1jThVC5n/rLpqolexek5pKe8G5FLdI
GdzORtmpEUvSZqo+XdPa7kXA/FKA4pJYTjVh3E6OkZETFgDZHuDchmHcWciyylSc
yYMoatQvTuT1j3rrtCnTpX8aDYthNxjgcwTD8cMp5fcecu990vAfgoW5Dk/hmTVj
6jFMNzFP6piPXK0+4yFZv5UCDa/z2T+eusfx/H3NtFhdA69jLZw=
=BtpV
-----END PGP SIGNATURE-----


--=-=0MPTQtITP1mZdq=-=--



--===============1882851670489822019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1882851670489822019==--


