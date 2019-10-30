Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2C6E9B71
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 13:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KINX0XwFen1AZcS8Gb7hgdL32DA96ci2oWgBXAwBAJs=; b=VpJ6K24N7BTVYgrOOWKBwhjfJ
	ZPlPiKUYGT4L+kqOmH1RH6bEUYloZs1UD39hy1r6ZBct0CW2Cx3+5WsmUY1QX9xZQidMVv2eaYhE+
	aSLI5XCnr3VwwJu/aQQQYnTAT8JBYKjGVtT/voEQYJqLjuWBEX+8EafHNG7Pxk3HjpCYMwPbdAUyH
	olu24wJzoVvzzkqty3yLVXL3Cj3+hLLxKoF+h3/SeJhbfUVLD6P1+Ybx1meqioSibiXJleo55Ikuc
	kEp8r+uijoVRP7EkVfAFFwjJg62sVgodlbcXZ+0xdAkPCL3jYvvJGE4OM8Jn4x/rqeYhubZSaQcw8
	E24Y1gGUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPn16-0006nl-81; Wed, 30 Oct 2019 12:24:00 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPn0y-0006nA-6P
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 12:23:54 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MdeSt-1hqBDB1vJB-00Zg6G; Wed, 30
 Oct 2019 13:23:40 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Daniel Danzberger'" <daniel@dd-wrt.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-4-daniel@dd-wrt.com>
In-Reply-To: <20191030112726.13106-4-daniel@dd-wrt.com>
Date: Wed, 30 Oct 2019 13:23:40 +0100
Message-ID: <003601d58f1c$dcdc2990$96947cb0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJg73Umv9Ge7aZvmwNDkcLmh55XHwIlojovpksq5rA=
Content-Language: de
X-Provags-ID: V03:K1:35PgIlSscwA+9EUfDCxhfWiW7DooN8OKwIOPZG8VMZwwXEljeqQ
 b18uMEx+yIFqqAQO3VYM+sflMmEIMxoG/0UGDIc4WYkQeXbxxFzu6nFApas3EOpvNnZFQF2
 LdhKC8mwTq3AvrHKC3JYjYyagZHNCy98BA/BUoz3X0eLZpEl/iFKA2uKh0Kys/s3RdoHHRW
 YDpOqh+uQQUTLimGAvcMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HvIPZUU4rsI=:YQ28apNms9Jo5LtH+13ekO
 q7VLW5BcYTTI8jYv0r9I4G6/9YktFU5PZUWccdNMuavAf7X8/SaX32F8ee7OFfxPqC77/URhD
 saUxwHOpd5OFYGot2GRq2X6jqyRtqBEJaHHkDpNWB0xNPFnXn6I7y2XOuFqKbqM9N2nMjJd5d
 AKjtO8Uc5BYgzGjRo3YjBIlypidHjCkCLQwGCdWgrv5EEYwM1JsWj7LRukijfmXJ07r6IIMGB
 B8gEL9ro3QpO5cwM1tMKc19hQOSxfl5SjCRnmWvVmvUhgn76JKYLYEw6nAtMNQsbQFGfbzOZM
 v8AbQPPbkKjVCaPgVdiP8bsAJXJSzP1RmaP9KY2WY0kobJdMStaCPTyxzkG5oZUxi5ta/YdST
 PsewQg5YaSv4+y2Sq3JEwSBWQv4/6TvRi0guDEUJiFDvtfTwnN6mum0nOJpBL1nLVeyLS3QdI
 RuV04JygGG0aCnNQVKtmqPSOdy9e23xsIZlQSBR9ta7+YlL2JJoBIgcywrFFGz8mcuq5KRMI1
 gQtCe+tovquQXy30uz4KXYlA+sGz48eJBqiGokKWgx4Mrqe9VSidIIUO+DDJrDhg3J//neQs8
 ZVhy5Rardtfy6TRroXj1DvYCi8td96dFjbxz6n0iyJjhzm51ex7pQfdGslJcaxzIJILPmDuHw
 C69fewY4d4ZGIic/IjXJ0UsCqofD37NGyMjZZr0a1rCHWcFJgjYH8X8rhARdYzXjEUMBvdUf8
 a6wP/qEkFTpq4walvw+O9+6KuqlqImgFutsAe8BMWC6HbCceaQ2b3kLfd6dg+Oyabjo/u1Rtp
 T0y+HekWHzjEWfQPh/9W7yD+D8mM1t/yqRsSDB1mS7Vo/bJYoLAbnB3soDEye1jvnCYSSISCP
 ecC96xeTVRSAT3EszD6D5HaeyX1DKeoocrDA95ICo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_052352_530281_CFE9A4DC 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ipq40xx: ipq4019: Add new device
 Compex WPJ419
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
Content-Type: multipart/mixed; boundary="===============2048312636341027073=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2048312636341027073==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=wKZC5ydJsA+FZV=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=wKZC5ydJsA+FZV=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

just some cosmetical drive-by comments below:

...
> diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-at=
h10k-caldata b/target/linux/ipq40xx/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 2336ef3c7b..b18d17e422 100644
> --- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-ca=
ldata
> +++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-ca=
ldata
> @@ -71,6 +71,7 @@ case "$FIRMWARE" in
>  		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x207 -l 12064 -o /lib/f=
irmware/$FIRMWARE $(find_mtd_chardev
> "urlader1")
>  		;;
>  	compex,wpj428 |\
> +	compex,wpj419 |\

Please apply correct alphabetic sorting.

>  	engenius,eap1300 |\
>  	openmesh,a42 |\
>  	openmesh,a62 |\
> @@ -134,6 +135,7 @@ case "$FIRMWARE" in
>  		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x208 -l 12064 -o /lib/f=
irmware/$FIRMWARE $(find_mtd_chardev
> "urlader1")
>  		;;
>  	compex,wpj428 |\
> +	compex,wpj419 |\

Please apply correct alphabetic sorting.

>  	engenius,eap1300 |\
>  	openmesh,a42 |\
>  	openmesh,a62 |\
> diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/conf=
ig-4.19
> index 8948b73ff7..3ee921abed 100644
> --- a/target/linux/ipq40xx/config-4.19
> +++ b/target/linux/ipq40xx/config-4.19
> @@ -303,6 +303,9 @@ CONFIG_MTD_NAND_ECC=3Dy
>  CONFIG_MTD_NAND_QCOM=3Dy
>  CONFIG_MTD_SPI_NAND=3Dy
>  CONFIG_MTD_SPI_NOR=3Dy
> +CONFIG_MTD_SPINAND_MT29F=3Dy
> +CONFIG_MTD_SPINAND_GIGADEVICE=3Dy
> +CONFIG_MTD_SPINAND_ONDIEECC=3Dy
>  CONFIG_MTD_SPLIT_FIRMWARE=3Dy
>  CONFIG_MTD_SPLIT_FIT_FW=3Dy
>  CONFIG_MTD_UBI=3Dy
> diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq40=
19-bus.dtsi b/target/linux/ipq40xx/files-
> 4.19/arch/arm/boot/dts/qcom-ipq4019-bus.dtsi
> new file mode 100644
> index 0000000000..169505973f
> --- /dev/null
> +++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-bus.=
dtsi
> @@ -0,0 +1,1142 @@
> +/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
> + *
> + * Permission to use, copy, modify, and/or distribute this software for =
any
> + * purpose with or without fee is hereby granted, provided that the above
> + * copyright notice and this permission notice appear in all copies.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANT=
IES
> + * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> + * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE F=
OR
> + * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> + * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> + * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT =
OF
> + * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
> + *
> + */
> +
> +#include <dt-bindings/msm/msm-bus-ids.h>
> +
> +/ {
> +
> +soc {

Child nodes  (=3Dsoc) should be indented.

> +	ad_hoc_bus: ad-hoc-bus {
> +		compatible =3D "qcom,msm-bus-device";
...

> diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq40=
19-wpj419.dts b/target/linux/ipq40xx/files-
> 4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
> new file mode 100644
> index 0000000000..5553bbd166
> --- /dev/null
> +++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj4=
19.dts
> @@ -0,0 +1,371 @@
...
> +&gmac0 {
> +qcom,phy_mdio_addr =3D <4>;
> +qcom,poll_required =3D <1>;
> +qcom,forced_speed =3D <1000>;
> +qcom,forced_duplex =3D <1>;
> +vlan_tag =3D <2 0x20>;
> +};
> +
> +&gmac1 {
> +qcom,phy_mdio_addr =3D <3>;
> +qcom,poll_required =3D <1>;
> +qcom,forced_speed =3D <1000>;
> +qcom,forced_duplex =3D <1>;
> +vlan_tag =3D <1 0x10>;
> +};
> +
> +&wifi0 {
> +status =3D "okay";
> +};
> +
> +&wifi1 {
> +status =3D "okay";
> +};

Fix indent for the content of the four nodes above.

> diff --git a/target/linux/ipq40xx/files-4.19/include/dt-bindings/msm/msm-=
bus-ids.h b/target/linux/ipq40xx/files-4.19/include/dt-
> bindings/msm/msm-bus-ids.h
> new file mode 100644
> index 0000000000..da0b83e831
> --- /dev/null
> +++ b/target/linux/ipq40xx/files-4.19/include/dt-bindings/msm/msm-bus-ids=
.h
...
> +#define	MSM_BUS_SLAVE_CATS_128 663
> +#define	MSM_BUS_SLAVE_OCMEM_64 664
> +#define MSM_BUS_SLAVE_PCIE_0 665
> +#define MSM_BUS_SLAVE_PCIE_1 666

Mixed indent here ...

...
> +#define	MSM_BUS_SLAVE_SRVC_SNOC 754
> +
> +#define	MSM_BUS_SYSTEM_FPB_SLAVE_SYSTEM  MSM_BUS_SYSTEM_SLAVE_SYSTEM_FPB
> +#define MSM_BUS_CPSS_FPB_SLAVE_SYSTEM MSM_BUS_SYSTEM_SLAVE_CPSS_FPB

and here.

...
> diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/i=
mage/Makefile
> index ed46bca649..a13a17b3cf 100644
> --- a/target/linux/ipq40xx/image/Makefile
> +++ b/target/linux/ipq40xx/image/Makefile
> @@ -179,6 +179,20 @@ define Device/compex_wpj428
>  endef
>  TARGET_DEVICES +=3D compex_wpj428
>=20
> +define Device/compex_wpj419
> +	$(call Device/FitImage)
> +	$(call Device/UbiFit)
> +	DEVICE_VENDOR :=3D Compex
> +	DEVICE_MODEL :=3D WPJ419
> +	DEVICE_DTS :=3D qcom-ipq4019-wpj419
> +	DEVICE_DTS_CONFIG :=3D config@12
> +	KERNEL_INSTALL :=3D 1
> +	BLOCKSIZE :=3D 128k
> +	PAGESIZE :=3D 2048
> +	FILESYSTEMS :=3D squashfs
> +endef
> +TARGET_DEVICES +=3D compex_wpj419

Please use correct sorting for the node (before wpj428).
IMAGE_SIZE is missing compared to wpj428, I have not checked whether it is =
required.

Best

Adrian

--=-=wKZC5ydJsA+FZV=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl25gMUACgkQoNyKO7qx
AnCz6Q/+JHtAyQbtuP1gvhxxm23f5GrJ8D4AvMowFMChtaHHqD8xosv74L+tOuKS
wZpajKUrCDoaDuOQqSlGQUTvUyOuj6eYeI6BYqIyzFQvBfXnuT8+l6NENyLLZj4g
4Wu8GGzDQcsBLpNTSmvOBQOKCeEfeRwz/IvE+ruDBGrMixio95QAaAcAZQuXxCAt
FTl0AcDLPbVU9S/0wvVv3P7faJ0Mt5FcViecPvOFfFZa/JTZIsBHMw0XD/j2lZbW
UaSCY99gSP1glxm/3itgrRLVA+3f62dErfrKSndbqzPQIshGbZuvC8dXHyfOGfUw
P1jsStYOlILBVgBk2nCUxJCZSBKT5z7nIM6AIQYu3fLqKvtk6d4G61x0cxaWNdpp
uVq3Hcg7l1ruTdlKDA5aMjRFpSi4zs3TSTi6CuU7OGoGAW7peemgKldpgyJakiOd
1cK3IHRljIv2T5Pt4Vd61D8+7NrhOMIMlJvU4YTJZ/PEAjckIGv2tAoj4eTHl6tX
uIsYLbwGt8OMDJ7A1EGQ3pRH1C/uw7+kWdxJBA2syt0kRzQomC34kka0X/6ij0p/
y/mtfoGaYxYfx6xs1+jt1sQH4dodvnnLsupCSTgEh3m4arlmG0hkxzbkR+Se+Y+4
76o8pC7B48UmA0zbRuV2LfDaZY9ixdr4poriofHHeLvogWZsT4w=
=Ky/6
-----END PGP SIGNATURE-----


--=-=wKZC5ydJsA+FZV=-=--



--===============2048312636341027073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2048312636341027073==--


