Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4D5FB059
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 13:23:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kUBfovwcGL6A6qS6EX+1rtocJ1aaTclTJjPgFb501EA=; b=FQOGWr8dWjNMwNn+O6GPtb3Fy
	3AK01Dk7YaDSTbHbhXXQZOez7QQvCFhwF3v4wCjLSSrDOdZtXj5nC2bbbXlS+7mH7ACiHxbjIXeho
	FnxF0iJRfQoc6b1wimtO7DsyxpW7LQhtwlvd1gGdnxprDZxvtrm4HK/QFIU13hAYhWzUH7dlC+LqQ
	Jx5xYLZfogl98W7Iwj+agldmL09wyIzoN9cnOQ6clmEMEG66wnuO5454FnErK4td7vIlV88ww6H1G
	V6tk9TolUPt2Sr1U+n9XRTrbVRGfyDAqxSGEQKzYeoczxhYrt7IG1/bv9ebQC0+U3lpZ6sfkv2/8E
	SdE7WPW0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrgD-0001R1-PZ; Wed, 13 Nov 2019 12:23:25 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUrg4-0001QF-HP
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 12:23:18 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M1INQ-1iS7qm2l9m-002l8Y; Wed, 13
 Nov 2019 13:23:10 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
 <20191110090447.16563-1-ynezz@true.cz>
In-Reply-To: <20191110090447.16563-1-ynezz@true.cz>
Date: Wed, 13 Nov 2019 13:23:10 +0100
Message-ID: <008401d59a1d$1ce386e0$56aa94a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIH4rdC6XR+BCf4nzNUYslc8q5xIgEIiYTapxwvIQA=
X-Provags-ID: V03:K1:GO+IF2I+xBqvQNWu1UQ8Ymae/2vTccI90sBZIEg7xnVqsxP/YPb
 q86H4nOrQy5HqVU6XqU7EqWxbP1KPuaOlqU008Z5JM97+FvZm5+iOBsamvp6JsEFMRi9620
 qVkS82g4nNEKsimy3jPKJynnd7Apz2qArzHMVDLqaG65EF1MQkvGj/QZ8JD3fdMdCw8NaRW
 WSCBWq6F6RebaGubWeFQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ux51d6i5ZU8=:O34eBo4jc+nqyvxtvpF6iW
 R//915cOZVqWlLrJfrSTcd+e5my60tK3FEnQzA1Sw30R9IO+E7ZVbhdcyI0x79eHgQV1QdwNE
 uBQIPoxLlTWchOd3U899WgyMMGs2/C8tVOsyTNZVjjfjM4IVlCJmN6OlY2IwPdrSPo0594ZfA
 5VbDAV8tSB0axcRDuYF9AFpPctKljIrodzLUGHr2ODi0JsNVCuKk9lJ/HdR1P6T29fOrPBZm8
 buklVKcnfT1Y8j6ee7wo0Pq3FxsP4++5akyEtVHOEEm8EKmMdKesNm7PxBtZheG4UPfHGC8WM
 jjf6P1BqlDSPJsDHgYWPfkqPBHKqX9lT5UtlqwWu80gzWzeIUQKWlLMqHG05Wj6uMTaV4NVUr
 U37nAq0VFEnpPhoMpyX/2u01niQ3Z3yDC+096Ag9n0cNIJ6iQokjyIOEz+wW1TMSZikKuZmCw
 N7OhhYX/VIIKCIWqahQfeaNZ1JJ1VvfT7VG4U4NtAA4xqlRa/BFwKF7zqS7G2jQAIEGpf6D+w
 JOu8PYCvwP7ZJGwbm1yRs5JJbN0jF+zFkzqagtFB/hy4VDBhY30YxUrupAxfwHe1hcgYgH2KY
 AR+FZ/gz41UXro5+sMKbBZr/fNDeTF/i8D7QygpJVpdgE2fvm9c3V4+y/+AwmCKYLGKfVEc5S
 W5qVagckle7jag9ZpuQzPwOUm6rbGd221VQMCs76zc4qS6PbPgqiCQ+L/in4xhNMmE0AF8uf3
 fxvGBPnjdhDumrYwtZcTO4+LD9IOhpuLX+N3bKuP+2bkgUrLtGS+tbriN1ggwzqkbPDgAxjB5
 fQiilbgjVtz4fe/QO0JZZY9JSTu8aSi/va1bpt8RiPbqNsFnwff+60pI3qufj0lQRqTqC2fqX
 +N2PFLSej1hq0a7a8YCmj4B9Mmnu3IsPBUeIYIFnc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_042316_873085_27BC938F 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 maintainer-tools] patchwork-apply.sh:
 try to fix DMARC mangled patches
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
Content-Type: multipart/mixed; boundary="===============5350969944632518430=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5350969944632518430==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=4Po2y7UZNTNwE6=-="

This is a multipart message in MIME format.

--=-=4Po2y7UZNTNwE6=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Petr =C5=A0tetiar
> Sent: Sonntag, 10. November 2019 10:05
> To: openwrt-devel@lists.openwrt.org
> Cc: Petr =C5=A0tetiar <ynezz@true.cz>
> Subject: [OpenWrt-Devel] [PATCH v2 maintainer-tools] patchwork-apply.sh: =
try
> to fix DMARC mangled patches
>=20
> In order to avoid DMARC plague in the commit messages:
>=20
>  87f9292300cf hostapd: add IEEE 802.11k support
>  450d44a8ead2 openssl: change defaults: ENGINE:on, NPN:off, misc
>  eabc1ddc4541 build: Honour NO_COLOR in include/scan.mk
>  3fb45576ac16 cryptodev-linux: move from packages feed
>  a73283dc10f7 kernel: nf-nathelper-extra depends on ipt-raw
>  0317fc3658eb libpcap: patch to add limits.h to pcap-usb-linux.c
>  26dbf79f4905 libevent2: Don't build tests and samples
>  d59126040701 brcm63xx: initial support for Sky SR102 router
>  094d49cddf93 kernel: bump 4.14 to 4.14.51
>  247055cbfbf1 igmpproxy: bump to 0.2.1
>  c451434b963d cake: bump to 20180504 bake
>  080fb7a3fbb6 iproute2: import latest cake
>  ad5af37ca793 iproute2: backport json_print-fix-hidden-64-bit-type-promot=
ion
>  78f4305933b9 iftop: bump to latest
>  7783f31359cb base-files: nand: use CI_KERNPART whenever the kernel volum=
e is
> needed
>=20
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>

I just want to support Petr, as I also think having just the DMARC comment =
in the commit message is really a problem and should be addressed.

I think it should be dealt with both in patchwork-apply.sh and as a hook wh=
en pushing to git.openwrt.org.

Best

Adrian=20

--=-=4Po2y7UZNTNwE6=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3L9a0ACgkQoNyKO7qx
AnA5rA//RQO4LXDtYrfp5Vmo7gLNPy8TcHnb6MFidwfHP6imxDbTy3S2R83Icw3a
owRUhP7vQ9xO5f6g3bsFe8LGYLy5HjXGewjMlCeaaBq7XYvkJ9Qt66CiLGdipTui
g0CoXBmd1A6nXdVH1aP4SLlmWXUpxeSjiwJ0tBus0SPL+GpcDJeTDfns6vLmnE+N
31NccTaHSwuoFoB0ssxAhQssgIMtE3zr88M50QCPUUF5QN+G5KSYgScnkifEzpoj
9qFPN9gg2LNp+nTLS+UQxTphfcEZi+9EC9PJmv9na+luB8eEHsx+4ekQwdeCLuyy
RZrBfvEQ1MkZFCS62CR0WemsmS1e12gbeK7o8RYWuTX94n0FxxQGuSVEwfblo2SD
sBQAVIPl//NZk2phj9neY5lKhDk1LiUecue0C/7z+8UnJLue0hrH0s+FfUzu2R+K
NjFz+qA1Df1Lj5TS41mgylpclC3AviAs6OlMIxCQbOxP/ex7OvidD0qWP6c4KnQi
Q1j6pDsXuYT8AmUDwmMcAOilsXG4paQO6lb96sLUZmRwqvOp1MzhHSGPSKN6hHcf
RTtGTtSwlRiRnNv9C5q+f5BFiIfsRl+nx3BJwefq/Nvm4uhAm+CGG1f4AwcBezQw
ap4sYH4CQSWZH/EvMGWa20FRLohaIzQOVXcVYx2ARmhgQdhceWk=
=+TcF
-----END PGP SIGNATURE-----


--=-=4Po2y7UZNTNwE6=-=--



--===============5350969944632518430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5350969944632518430==--


