Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85881A5B32
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 18:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gUP9DmAC0lfD2fTqwYacIYGDLHEV6mCRow2HfNkPqB8=; b=Wcs
	GHV8HngLwXcHlLohg3l+FO+I+bMXvKqtCteg2b/rw3wVbMmYncwCIYXrcPU6KB8zKOHOpTPsDnKLN
	qyIk9ZoP1B/pJXuMM6qk1t6fZMS1Az9YI9xn7dF85VQsUQ30l6uAnqLEE/36/txHMMWU4i49PfWjE
	RURwNN/n8GlZIuOEC63J0XiyfPeyZN2XS8/88WZTuanD5ZhTP7TzNkHmEsLs8NuotxsvzkfX/fSQI
	Oa6aLBM1WI9dFdgZavFyhYtqlzzK2RwtH+qRW7+ChrRGwFhI5Sf0G/sEe7wnwr5apHR7pF7MyfamC
	agngylt8Q0iJoiAhTTJOOLw9B/5vnag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ox9-0000Ay-6e; Mon, 02 Sep 2019 16:13:15 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ox1-0000AR-0A
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 16:13:08 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MdNPq-1ie9hV3V8i-00ZLCG
 for
 <openwrt-devel@lists.openwrt.org>; Mon, 02 Sep 2019 18:13:01 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 2 Sep 2019 18:13:01 +0200
Message-ID: <05ef01d561a9$4b53ad40$e1fb07c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AdVhqNAh8gWo/zKJQuy9rndfsfK9TA==
MIME-Version: 1.0
X-Provags-ID: V03:K1:6JNwLyqbD9kLKtJAXkt4Rm6hTueXPxRtYVqY0dmzeFWoQ6BHGQC
 LUfaoT63AME+Ir+su9mcnFlOLTYHpD78zZpr2MGfzo9+s9RDSHsUNOvjEuYTz5nBrONwICO
 cCkOQ/bNItMHaDEEoY6WZS94MAUqUUvXbQnerxkihtICJ4EnFPxWJ/U7nZfDWG3l5BZclw7
 Q74gO1YUdbzNM1y0hWZxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QJBFA8PDuhs=:WZzbqBiLXbG6d1cJ8KH9ds
 7RbN3ntA4folX3x2Q62UzPjtK6fO8IHTHi+9V41h/jM+A+T5eFbUnZmuME14acm43/IX31+ms
 QvqNHqXmrAOgLvDnwE3ZuUQ0LV98OUa/dICMDH5X3H7ClWmCxMzw83mM9loKCcFC3T2DBhdXi
 IIfdWFxBs6d5hDswqgCWXOZVsQ4qrpkaSzyw8uSOgVKZv6zvu3jc1JPI+yqqQKYlNYzxXjPem
 EnOpolGplpWmj3SoverZAAKFxqml9wNnC6R1K77PkK0koPUfc7w+wwZdDE+w0koAsUh4JgkXE
 P1zPUAtPwTPJrG9cbwLIgbhyjZEt5GzSDklr2wXeScQ+FX9wPv9zeS0M455zyb/NmA/52DCwG
 wmFCA0b94U9jyx1zY7osLxBUnJNmJysW+CTNQg3AUeSUf+vRCqVlse/AnR2f4qznPtU1SGxxB
 p5TDsHKN59HP7zNjsB9timRoVyNX2iQGbisvt92+gBbtc3A21CfO5edG+IdYzrLVW4r2DR+7R
 6bDOzpe8hurlpRMJRX5lD37uvpSjcX3bEI/86w8RtHEmqMC9KzhQNO164LNfMRl/e4c86D5Ct
 5am2KZfNrE3lTLTh/hATNE5uv2tih2SVwt1Ik4Ht8i1cmEcOPgEwJlIaWJfC6IbNwPd1fGKVK
 lF/Tvs94MJo/H2CfqzpVMbCph/6HB+RvnQEjy8KrwlZht+BG/dQQgdKGGCsStCfsG+x/rPSAs
 JmECyclXahkuQtNs4v1ro0zu/Wc1V34XPh5nikOSSRBOa67TXwwVOhesLZsFcO8XCZS2N5Ok1
 ZSSsU9f7Q5eD2/G8/Lm7xW9RTREOICwhlXFhdgqg/KTSwypzJg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_091307_335247_FB499669 
X-CRM114-Status: UNSURE (   4.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] mtd-mac-address on MT7610E chip
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
Content-Type: multipart/mixed; boundary="===============4297358942247003835=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4297358942247003835==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=DZVYYrsuL5Oc8w=-="

This is a multipart message in MIME format.

--=-=DZVYYrsuL5Oc8w=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we just have encountered the case of a 5 GHz radio on a MT7610E chip that d=
oes not provide its MAC address via caldata.

We tried the following:

&pcie0 {
	wifi@0,0 {
		reg =3D <0x0000 0 0 0 0>;
		mediatek,mtd-eeprom =3D <&factory 0x8000>;
		ieee80211-freq-limit =3D <5000000 6000000>;
		mtd-mac-address =3D <&factory 0x28>;
		mtd-mac-address-increment =3D <2>;
	};
};

But the device insists on using the address from 0x8004.

Any ideas? Is mtd-mac-address(-increment) not implemented for this chip?

PR fixing MAC addresses:  https://github.com/openwrt/openwrt/pull/2370
PR introducing MT7610E for device: https://github.com/openwrt/openwrt/pull/=
1496

Best

Adrian

--=-=DZVYYrsuL5Oc8w=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1tP4oACgkQoNyKO7qx
AnDiFBAAy8Jg2vfyMG3icV8cDDyOm3Czxz6vyjhAb3dSQISiqvxyNaq0euPHrxul
dsACYlBiq//6wZctb5JC5RC9H6rfDYPdDGXNQeh/Z73HmwlAixUvfYj+ofYOpiKc
DZPPorQ5Va/gy78HIJ3nTUJQ4OSofiCYTbVsEqvIKZ6h26dl8J7sC7FEjSJuvBfo
TFbHyS1CUc7AjPT7k9Cri7PgVxp2R1bezkv2Sx8Zdna06lvr7FoTDjU7FmyefrP6
Himwpy151Oq1/vK1idH0nCP7A7eAt+mknCcxJKyqiq+nc4uo7qgfTSmiiGINDddj
si1dXIr9O5oxTYTtQWEHhXywmq3H//amkbipKtKDbf9kfQ9ZhIgfs/3vpuHBVXir
DFgy0Vr9K2jW32Vkt3//q7JDmtf7urH4lI+ToLbR0GGTPs/6ChuTctWXPLwS2oqq
KmMoLUlPbNRUgungpURaPdPNLVphdNQYiY4vZ/TCssBovLaYESAnwY7EGrbVHhnR
F/dXoJmIhXZKrJdnYPABJv9TAwEw+Oudjzl+qj0Rp7kENJcpKPnGYowhXHcWYNue
JDak/cBcqRFQ43tQlmeXYlbDIA1wVqrSsHUn0xuhDLhx/TuKPy0c8AY/PaJf/mu3
NoO5MCuVYxWzH9yBK9khhaphLsC34ymIBd7mLBLcjyOSJ0g9kJE=
=lQ8U
-----END PGP SIGNATURE-----


--=-=DZVYYrsuL5Oc8w=-=--



--===============4297358942247003835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4297358942247003835==--


