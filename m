Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91346C0E1
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 20:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L4WvIB8MyhyO6BRVqfHuI991gJL4YADEUrW37prfblQ=; b=nwg7n9ucaOMU3dcUGJMoGXWyH
	d3vccNnUMY2sMUuheamUOik1h52qa4ZFtFIAJOlBHrGWC++R5eWeOcva6kOXPKrHYLDZwq6/x9t+A
	kousTquG1h8QOYjsOhVam1S2Hoa46AKy19fqg8VXzy00FK59aVmjm+8YKfQ0MABEfdAsmmweLpFmq
	QN8ruLz2NiQBUP379A2NTxePZphtDim5A/5B7ira2KFJeNpBblMWcA0ui/Sy9NwZjZsb3BpUl2hVS
	TioagQ4pNqcEIWSkyiYK+/wpFMFInLGQUJeSCNn7w63kkHWNjW0kSd/Yzw/aiTV5jBxHaJxgpq12w
	dQCsiWPDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnoVZ-0004xZ-Jx; Wed, 17 Jul 2019 18:18:29 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnoVP-0004wa-UG
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 18:18:21 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N0FE1-1ihALh307z-00xMP1; Wed, 17
 Jul 2019 20:18:14 +0200
From: <mail@adrianschmutzler.de>
To: "'Daniel Danzberger'" <daniel@dd-wrt.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20190716103041.15778-1-daniel@dd-wrt.com>
In-Reply-To: <20190716103041.15778-1-daniel@dd-wrt.com>
Date: Wed, 17 Jul 2019 20:18:13 +0200
Message-ID: <00b601d53ccb$fff80690$ffe813b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJzJvEjulb60WWExOJx35C9XbFcNqWTSQ+g
Content-Language: de
X-Provags-ID: V03:K1:wchKd17NaG6J89lRqA0LGGjhUGyk2dWUT4wIbcdUM0ebnsc9E1O
 sSzQucfxxyV49QMb3fQOjTWYDV/yNnxODpoAOrL3pWy1JrU4kPqGfe8P/uikBBU1tIRmbxG
 8p7dU4ngOekelwOfW/91BKXAIX1sXxmwhLaUiAnpS1aWgBpeutnAFwZMyToaJnPZKrr5uLm
 cZiDw0gdY0Hk3hmufUvBQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6RI/HojoG3Q=:BJ7C0kcVU3jxNSJdDvYHLF
 jGu4Fo4lowT1O4BhuyZYJXnGXEEInJziLh9ERhPy+t/D6HPK7P/bpvgJdwrj7Hms588RzBwuH
 2+pXKmQs4ho4J/RwOtQsTZ94z+CbMnnuT5Pq8B14KqAwOP7YK4BjsebBlQPXXCoG8Y5uOaA1f
 8AlX+xplsExd1ENexpV8xpbxH/uGbtKw5/04NXKNbIiCIFfdQojd4w7650GHrL5FwXSjXC7WE
 lbr97AcYvY6r7zUjNxJVSWqG3l336BVOpEu5MZC/d8gsRXNl6iLXLHvSBzSO/ZtDg34cYtE//
 25vdRiJy/jBRZU4HF5A2QGYk0OgLL5PgPrth86e/axtZ+uHOpVWDSLG3ROXNYLvSwaKRH8w8F
 04I314+YAk1hXLQHuMKGKaCjDcmuq8jRFWmdDg7a93ocgbVs8pw7uRQGhmOvoLSd0VoWFzog/
 WUfyDHS4LJ9gaz8FxeJXyH1c9vFwL9bKvdTlRCcJhd5cyUFx9yLfulGLj7mmFYP6+M9JmzJmt
 9mPEC2vmbevXB4UY2QY4QJxbTfh+xHtKJY7nWaPX2vnMMiF4eVf5z4zqtdx9DcsrxyWu77x/r
 4l3CsJTGGzW+neLmswRahpyOOomANkhvfQiW0RNJT1ie4sUrAtuNCkIN2uosx5avjZBKYJJh9
 Oms3XvPhc7az07aIBwOZzIXp+IAnjRSKgupZrUn6haoGt6/NxNYxTnz4FKq3SU8ZJH7WNnA8M
 I9aGywZfIKuROcU6oNMCL46QKWsGq9nTaEp4SNS5fQkofw1s4vLRoNILRt4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_111820_276763_A89E200F 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-NV1
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
Content-Type: multipart/mixed; boundary="===============5676633087979802137=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5676633087979802137==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=1F7TNJKcbuygaQ=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=1F7TNJKcbuygaQ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Daniel Danzberger
> Sent: Dienstag, 16. Juli 2019 12:31
> To: openwrt-devel@lists.openwrt.org
> Cc: Daniel Danzberger <daniel@dd-wrt.com>
> Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
> AP7621-NV1
>=20
>     SoC:    Mediatek MT7621A
>     CPU:    4x 880Mhz
>     Cache:  32 KB I-Cache and 32 KB D-Cach
>             256 KB L2 Cache (shared by Dual-Core)
>     RAM:    DDR3 512MB 16bits BUS
>     FLASH:  16MB
>     Switch: Mediatek Gigabit Switch (2 x LAN, 1 x WAN)
>     POE:    (1x PD, 2x PSE)
>     USB:    1x 3.0
>     PCI:    3x Mini PCIe (3 USB2.0 + 2 x UIM interface)
>     GPS:    Quectel L70B
>     SIM:    2 Slots
>     BTN:    Reset
>     LED:    - Power
>             - Ethernet
>             - Wifi
>             - USB
>     UART:  UART is present as Pads with throughholes on the PCB.
> 	   They are located on left side.
>            3.3V - RX - GND - TX / 57600-8N1
>            3.3V is the square pad
>=20
>     Installation
>     ------------
>     The stock image is a modified openwrt and can be overflashed via
> sysupgrade -F
>=20
> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
> ---
>  target/linux/ramips/base-files/etc/board.d/02_network |  3 +++
> target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts  |  9 +++++++++
>  target/linux/ramips/image/mt7621.mk                   | 10 ++++++++++
>  3 files changed, 22 insertions(+)
>  create mode 100644 target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index c3b7cd4390..c348b91a36 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -228,6 +228,9 @@ ramips_setup_interfaces()
>  	asiarf,ap7621-001)
>  		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
>  		;;
> +	asiarf,ap7621-nv1)
> +		ucidef_add_switch "switch0" "0:wan" "2:lan" "3:lan"
> "6@eth0"
> +		;;
>  	asiarf,awapn2403)
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "1:wan" "6@eth0"
> diff --git a/target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts
> b/target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts
> new file mode 100644
> index 0000000000..93af3950d2
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_asiarf_ap7621-nv1.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +/dts-v1/;
> +#include "mt7621_asiarf_ap7621-001.dts"

Please create a DTSI, e.g. mt7621_asiarf_ap7621.dtsi, for the includes.

> +
> +/ {
> +	compatible =3D "asiarf,ap7621-nv1", "mediatek,mt7621-soc";
> +	model =3D "AsiaRF AP7621-NV1";
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index e2928c80ce..1eb1a4cb99 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -106,6 +106,16 @@ define Device/asiarf_ap7621-001  endef
> TARGET_DEVICES +=3D asiarf_ap7621-001
>=20
> +define Device/asiarf_ap7621-nv1
> +  MTK_SOC :=3D mt7621
> +  IMAGE_SIZE :=3D $(ralink_default_fw_size_16M)

Please use the precise size of the firmware partition, I think it would be =
16000k.

Best

Adrian Schmutzler

> +  DEVICE_VENDOR :=3D AsiaRF
> +  DEVICE_MODEL :=3D AP7621-NV1
> +  DEVICE_PACKAGES :=3D \
> +	kmod-sdhci-mt7620 kmod-mt76x2 kmod-usb3 endef
> TARGET_DEVICES +=3D
> +asiarf_ap7621-nv1
> +
>  define Device/asus_rt-ac57u
>    MTK_SOC :=3D mt7621
>    DEVICE_VENDOR :=3D ASUS
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=1F7TNJKcbuygaQ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0vZl8ACgkQoNyKO7qx
AnAiWBAAzKoy8Vt15bexzXn8TZT+NyJen+N5+btjr90qAcPYxz/8Fr9jZjpkhNqN
nkSYiTOTfLMh9UHP/u1Kx4mjPjKoR+Q3b2Ar23P8THwAaeXD9Qu/qViLgwW11JnR
f64Aw0iur7Wr+1ieJ+YUm/VOikgbvI+I8AShMDTsAJ17ZPR25JdP6nDlXT/bXlq/
7cm9pD1XWQkepLITnIEhU9OjBAUL2Ok52Ia/yHW2l59Fnsv1xQ4FlWpgtQGnqWCM
lwzteJkzM7FrdHd9fPt8MLaUuijLRIWC3VgrKHVClGks5NqmgYFh+6y41Se045HO
+3u8eyNlgXRDO2yAQnmuS+7BM2KJnqvyM6faotMXsMDVP8vGb3GHqN7L5ySgszQr
DSWek/XxzAtHFsyPLiVk+awmJWChLUZvvz43i51x6V/08F0IV1oLJqNTVykL97S4
yQLuUS5dUpyeruKNkw8gyouUb18EU8pPhExYdXr/MdFnOZvFL9LYlpJX/0/WsRYP
tFVVn9C2eKm0nA3bWb0FxbGNIlVvwfQGCa465LiLCpGv/IuBSPLBwYJpTu8BrRy3
Y5TzH8Wn9BJB3f+JEGzOiVT+q0OnOyij6jZLs8kcdXVuabuZO16lrxNtQkyR+Rtn
xYjlbCbjNJ1MGfmegI6A+DYpkBQ1KEe8MhtFCcaqKfi7Mav96JY=
=qmHC
-----END PGP SIGNATURE-----


--=-=1F7TNJKcbuygaQ=-=--



--===============5676633087979802137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5676633087979802137==--


