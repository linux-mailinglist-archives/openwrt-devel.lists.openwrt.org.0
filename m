Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB2FEE632
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 18:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z3RL3+trCYx9Cm+W9LfmzD69QqSEGDpecWRH8VfhbD0=; b=dsFIo4Q0vt3ADs4Hv967DZdd7
	genyou4Hk3/Q1SIQHuoh51jPyvf/aLltE42j8LEvaO/t8BXl9f3uZ08E9Bx/S+tNEUbMBDiml3blo
	BfAcqrbsXWjFYUNaeYO2rbyUpkGZ5yv1tMwWLSI9NkFqe/lfHR/my/Eh1B2rcPjDC0B0CGSRQJpjV
	rMqEeI2eQO3N1vOru866eG2I3ScH68DSMnSRNAhwwuKTNDmXxFkUcX477iQcH8Bhp9IRj9QP8qDwS
	i9jAw8sG+0GyNiy6QKpLEWYU5IcCasVXqTNIaBTnpypBPxv43bxxW6RCQuFY6/sKBXjpCmqQXwZ/Z
	J2zAuNZ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgJ0-0001DD-48; Mon, 04 Nov 2019 17:38:18 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgIt-0001Ch-7X
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 17:38:12 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MLyvH-1iAHsI0bi5-00Hxvl; Mon, 04
 Nov 2019 18:38:03 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1571708559-3717-1-git-send-email-wurobinson@qq.com>
In-Reply-To: <1571708559-3717-1-git-send-email-wurobinson@qq.com>
Date: Mon, 4 Nov 2019 18:38:02 +0100
Message-ID: <02b301d59336$9bfaf550$d3f0dff0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHM5avfHimkharpnxyojQMVyc6b+qeMkUUg
MIME-Version: 1.0
X-Provags-ID: V03:K1:dOeX+ufNyJawaE/RTp3+GztD3JbxQoVbUVf/spiveOD5+/f3TDP
 aXjAPlTgyQ3OA8H94lDPktBqVyIYBvnXKrhMpzr3SQDYtwI0BtWDg2B9E9Db7g1Y/yQGsRs
 C19DxlDRDTiXboL9axfjm6cwHLmJzb2/UF+3SE+R3DfAMlNkQIHr5l49JBJxTTj7DrJFZ13
 /veugysAQW3I/f9lqwcbA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8b2w8rKgRfY=:MTfq1yZ1cb/CcMBX7GDjL0
 VDYFshkiOWcSMglw1aRfS7/S3XoYyXUYvmhkYdSoe+5WVxpKx5iIwWn1WmQVQyKWtzpoPHQVC
 irfJtmzn6hLdUGBI4o3sFZiozVenriyTKE/7tI0JmkF7ziUNZI9Or7dCc4CjJaWJErBAbO0Da
 BA58eI8v3XAd8v3Fk2WCfHLBLG47cHzWHRP/nwVfVWtn0ZzV0dTFmmunpZigsUIK44ht8IaNi
 84qvYMLXK1qBa9kIV6zYxgXDKuyntPy6gliLEZyHO4FTj3xPZvKE1o6BsEMH90rvPoDkktQ2f
 NK7O3mgQDGnW0a8rXchuPTGZNW4f2EToMC9KEvO/iJ/1d2cxGXdkfvodU4GC8JsqI6myENEXO
 GqPY26rlRtoIR6UFcG3DnQMmzozSfD6bbcs1A8xq0zxuRHyb++s12C9Hwoul6cCwBrYG4e0fY
 owy0YVZyPlEOjS9ywUsm2Vo9bkzRticEZMw37ldEQbRo2rXA/fOb1oQ0LpmNBmFjJguD6rzzs
 EdutAji9SkCnDLUdLAXRo+SD1ZQDlqjZUZWKwhTC68N0/dfd6RYbO1DmFsc5kVY0o4f6o/V1z
 YDtSXZRL7SzH9LH6jEkgNg4sfYH0npNnAVZ3XJ04HKenVW1mxDBzDcpM4doyvDDn/5drIRx/h
 TJD1LVcCdUzGzvOe7/O6QtjcaOizmY66JRnM8zMzgvg+8GjQSUBjGjR60nYCFaAV12QSVYHLy
 8y6wONQ34GE8nJXAdPF2G1JWytg3/wQiIijpHKXtWX9X9Ur9tKKXs7Fho2nseJ2zIqdPdDYyd
 YbVF5sGEGtKCWHKla4AozxsDVfcoeyln2BHUd9eF0gHdBhkWIh4SoxBVVyR5M4Ik8qIYgWMD7
 R3JFUpNsIrXdKlHLfkFt11FRFqcjdxJJu05kxAyWU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_093811_561833_4134A13F 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4] ramips: add support for JS76x8
 series DEV boards
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
Content-Type: multipart/mixed; boundary="===============8411859216048855724=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8411859216048855724==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=n8vy/JMPTQpkRe=-="

This is a multipart message in MIME format.

--=-=n8vy/JMPTQpkRe=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

there has been a split of the board.d files in ramips target towards the su=
btargets, so you would have to rebase onto that. (Put your definitions into=
 mt76x8/base-files/etc/board.d/0x... instead of base-files/etc/board.d/0x..=
.).

Despite, two additional comments below.

> diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-16m.dts
> b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-16m.dts
> new file mode 100644
> index 0000000..7123e63
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-16m.dts
> @@ -0,0 +1,60 @@
> +/dts-v1/;
> +
> +#include "mt7628an_zhuotk_js76x8.dtsi"
> +
> +/ {
> +	compatible =3D "zhuotk,js76x8-16m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS76x8 (16M)";
> +};
> +
> +&spi0 {
> +	status =3D "okay";

The only difference between your DTS files here is the size of the firmware=
 partition. Thus, you should move the entire spi0 node to the DTSI. There y=
ou would add a label to the partition@50000 node:

	firmware: partition@50000 {

Then, remove the reg entry for the firmware partition in the DTSI and just =
put that one in the DTS files. With that change, DTS file would only contai=
n compatible/model and firmware partition size:

&firmware {
	reg =3D <0x50000 0x7b0000>;
};

Obviously, just use the correct size for the according DTS files.=20

[...]
> +
> +	gpio-leds {

This should be named "leds".

Best

Adrian=20

--=-=n8vy/JMPTQpkRe=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3AYfcACgkQoNyKO7qx
AnCl+Q/+K7O3BOeqvFYIy6U7+cK16bsr98e8FexWBZNPJ0XiTQfXgVKquxjTV/f8
SDiJJXDuVmc6Bq32TAHZe5Wz5qYeewJSPW8NmHrI8QgpO4l3fObfvb7wK5Qip9NB
GpOycJ4xraS6QUG4WeyPibR/GTLxldSF89SoFkxp5STJ+REVi5lccqLJ0m52RvhB
WSPALxujcS1n8eTwPY+t4US561P7FvPsC6PNKlIFhJ2e7F1zh+zslQNnw8FHnTvx
dO1yltzu931Kkxi9xwEC720hk21KT3gPJql0RmVYcNr1wNwkH+2lxlpckGRhRW5W
Unr0UT8q7ZOe/c+0VScCZo/hF2UFSu+macMbLx4aKHv3EAcc5d7YIbTlzMtyGAZj
JfoG1bvhgEmPdSF8cgt3dOAw0pQj9yZjq1dg7sckM5EvggXZmr1qieWxDPxtc8R3
QXCf13Wfd/PjmKsq69GfKBf7ZuLguEhpXx7DJcolfrhEf48ajMaXLJDEdfJYn9MY
ZiFYzhu3G8B7DFzfZf2hUnpleaqOPgznbLZCnyDHvVK3WaKcROEYXXipYJ/oeEBp
Nlnf01otWSN4hzBbQaHkCk7JN/WTtY+iI8+R3vtX0QnEIvxD2hzaUresApAVHae6
+BO5sYyiDXW58UqOcKiNJEpQZcOKOsAjm6gwzGIa8rs1RkMD+JE=
=ecvb
-----END PGP SIGNATURE-----


--=-=n8vy/JMPTQpkRe=-=--



--===============8411859216048855724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8411859216048855724==--


