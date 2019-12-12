Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9318311D747
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Dec 2019 20:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yBK9Cl1FP31KpxW+6HmMQf7y1hvLF6esvjKZMDGpUBo=; b=Lv3Hm2HVtfW/CZ3zc4XHmp2Na
	NdjeS3M4PJIWaf5Q3uAbSj/Ymxfn/+ykNT9uFmHbSeS50wuN6kz+gj9wMUp3xr3aZ7d4Vr+CPDkjQ
	4hiUcW2ouxs05v7YqC4g9Q0t0xVsBgVdCKbf5tOXig/ms98hU5MEZWf/2YEJYkWtZRsMCWs/H0UEP
	oEyYMhpT/ZkY3zPzsJIt1i1zDYfws9WW2soP+UxtvIS6+yn2LOgNp6qST16NcuC6OyE8OAPl9SyT6
	BMXknJvH+BU7a4CbtJSfZCmTB3bGcnYHevpP8gbzJJsMihHuho/Lk9wN2Lyz9jSbjKuvSF8ycu+Gx
	l+w8qvVjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifULM-0005Mk-KS; Thu, 12 Dec 2019 19:41:48 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifULF-0005ML-Ga
 for openwrt-devel@lists.openwrt.org; Thu, 12 Dec 2019 19:41:43 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mgvev-1i5JVm47VV-00hMXx; Thu, 12
 Dec 2019 20:41:32 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'DENG Qingfang'" <dengqf6@mail2.sysu.edu.cn>,
 <openwrt-devel@lists.openwrt.org>
References: <20191212140848.8071-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20191212140848.8071-1-dengqf6@mail2.sysu.edu.cn>
Date: Thu, 12 Dec 2019 20:41:30 +0100
Message-ID: <027201d5b124$27ac4d00$7704e700$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJKTxgNSUjoVXt2+YbME07ydqAxFabNp+Dw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:ks9br0+Ta0nTHO3RAwtJjl/qes6qDLzS4wizSJtHUQsElc4wlt1
 qxFadN6yG5ZT+ch7tfrcbsz6AQmm67IMhUJnCs05CFBWHcha2wGjypbBkqwUdiIp2n7zzv3
 q0AEzuxngSU/DoxZZQ7WqLvyElShrkILHYoflQEMGXV6pGiXt/IUZTakeyeRb7YFNZhQSo0
 7pj5MHtHPO8YWqsQSos1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A41wmljIphg=:htxbQ+iMdKAiTT96OBLGd/
 cIzWYjZVhqQo2GbPuV9kXMAcHUnRjeMkaWvqRoEZNZbhjK8hTWocV4SntQdaRt6S7CFNL8rSr
 0nVpAOGHk38EOQgp0VTR0WqAb/bF9o9b6ONz5hk662e6cUox+1Rp9MTf3SaixbBP35/WvTUny
 8tcAV3hcM+IkgF4pRiTN9Xd0o3Ldbh8i4Tg0oWubVFtcKKmz1nAAEudMZ50NcRJUIH4s4BPGn
 B/aFhUvOkZyohsXinC3TAgeYIcz7EsV5yCShZSQUCHyH4wJ0h1aIalYvdGgnVq4XGCBlQydOT
 BOfrVeOARUCwLBpPMMWEY6M4ca+72SbT/9OrFUDxR8mV+hXSeaTT7eN2sUBUy8E/5ggcrb9gm
 pssziq9yf3G8X+pWwaQyxFtACTncy7jVsSHIsmiJLs0oqXagBuh6XkgtXBrUayF/WtQ5Z2JfG
 tDGIbQCIRAa7UZcdf3UYVKY4dC0E4WBsvZo7k3mz++jZD2s79ybgYUW4jTxvnC/2CmoHZYsgm
 FU9VhFN/2PUJ3FHMySYyzbUIugbJyeGQr0FX5IjIQtq7aRJ6a5mdDD6FmwQ+SM/DvKLYSBx8w
 jFQxHyjA1E/pk3mNsgqBlo3MeAuzjs+eNjO3q/voAWHB2gUvTE2dd2073jqxYRWijFttEbT+j
 N71DAZq0J5iQAUPExrT9e2ujAqmM+3JYb1F1Gx/fDvdBlBJBNiX2mLe9prIOvJz4kIGtPCvSx
 Swm9Nm0U2ZAp58qVlTlbNLNC0P2E5kH8RlbpjEuJCqtC/V9qeQTDxR9ygMH9yf9HugBcAhydd
 QMDnw33mngoBJXiKgqFxGpwZerUorkC8TTokxiz1+5W8HSmQjY08mgV3PBczZslk9uXi/QmYO
 EGdB5zNwPQlvVOoH6u1I/yYPHVZyKFcDQrvsCW0g4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_114141_844514_E3F1E638 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH V2] ramips: add support for JCG
 JHR-AC876M
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
Content-Type: multipart/mixed; boundary="===============5935779787424650808=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5935779787424650808==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=qaDLZwa7rUcs1a=-="

This is a multipart message in MIME format.

--=-=qaDLZwa7rUcs1a=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of DENG Qingfang
> Sent: Donnerstag, 12. Dezember 2019 15:09
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH V2] ramips: add support for JCG JHR-AC876M
>=20
> JCG JHR-AC876M is an AC2600M router
>=20
> Hardware specs:
>   SoC: MT7621AT
>   2.4GHz: MT7615N 4x4 @ PCIe0
>   5GHz: MT7615N 4x4 @ PCIe1
>   Flash: Winbond W25Q128JVSQ 16MiB
>   RAM: Nanya NT5CB128M16 256MiB
>   USB 2.0 and 3.0 ports
>   6 LEDs, 3 of which are connected to SoC GPIO
>   Reset and WPS buttons
>=20
> Flash instructions:
> Stock to OpenWrt:
>   Upload factory.bin in stock firmware's upgrade page,
>   do not preserve settings
>=20
> OpenWrt to stock:
>   Push and hold the reset button for 5s while power cycling to
>   enter recovery mode;
>   Visit 192.168.1.1 and upload stock firmware

Please add information about the MAC addresses to the commit message, as su=
ggested in the previous e-mail, something like

0x4        *:00  wlan2g/wan/label=20
0x8004 *:01  wlan5g=20
0xe000 *:02  lan=20
0xe006 *:03  not used in stock FW

[...]

> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group =3D "i2c", "uart3", "jtag", "wdt";
> +			ralink,function =3D "gpio";
> +		};
> +	};
> +};

For mt7621, state_default is already defined in mt7621.dtsi. So, you may us=
e it directly:

 +&state_default {
 +	gpio {
 +		ralink,group =3D "i2c", "uart3", "jtag", "wdt";
 +		ralink,function =3D "gpio";
 +	};
 +};

> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index d663aa29da..cbbda06822 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -361,6 +361,19 @@ define Device/iodata_wnpr2600g
>  endef
>  TARGET_DEVICES +=3D iodata_wnpr2600g
>=20
> +define Device/jcg_jhr-ac876m
> +  MTK_SOC :=3D mt7621
> +  IMAGE_SIZE :=3D 16064k
> +  IMAGES +=3D factory.bin
> +  IMAGE/factory.bin :=3D \
> +        $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | jcg-header 89=
.1
> +  JCG_MAXSIZE :=3D 16449536

I've built a patch to allow kilobytes here:
https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/staging

I'm currently built-testing it, maybe you can test with
JCG_MAXSIZE :=3D 16064k
too.

Best

Adrian=20

--=-=qaDLZwa7rUcs1a=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3yl+cACgkQoNyKO7qx
AnBX5RAAjsoGVFutxwI88/1KzOdh1mu+tt0suZBDg2vTb4aKxwV9WJ8BNdkyMVLw
VfQadIxmlvVeiPBhi1V9Fh7dJt6NVQO7MPfHPUJpm0oKnpFw61IMHiaFOBEDK+IT
aw+xLKnYkyMStyKIaKsfAfyvD7x7mztHyZI6QJvyOdzae107hMiY2ex3T3m63TkW
6fK/VK3MZD+vsoPj6ycVyBT/n/Ps2HgA0z2IT2RW6kCtQUovRW4ldLzUAaIm7Y6n
nE3OzsnJ6i4P3C4lMPJUIvx9csjC/pjoSwjEtJd10V9Dsb9tAr5jtzga3YD8mwyD
20nC/BZFLSqw1geh2OR8lXbpggvT0rSaEvSYn8No1JMRUXWp6e5xLYVLjq1iDFSK
2ah+MF7aDN/7licM5e/jlA6OssWxdVaySbTdzC1W6d47qCan5uo5/xkEHfblVkmK
OT7NbMNvJYNC/Y5TCnr6EaDfLulkRZOcrCCMutsHp06VlBNJ/9nr4XrrfDkobAss
NQ+pv+XoDdRHSEXgd2OZchjLHbjZ2d2G0sFBCK8x6sTuHhVFiFYl2nxyKcb28djD
ZooTrNsv/zBZWVDzbsgo4YWlqDuV5IiVCVge5ErISsdlkpYhY6fqjCI1oEDYt32A
BJ0OXfST/wfqEqYg8aDB376q3hDDnYkaMt5IuSt05Fm17O+qB6U=
=+d7R
-----END PGP SIGNATURE-----


--=-=qaDLZwa7rUcs1a=-=--



--===============5935779787424650808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5935779787424650808==--


