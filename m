Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D4089E05
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 14:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2vWIt18ZqStQMiQg/EutBtauodpTxp23C/fSnId7GcM=; b=eTvrPnhk4XMek2El5ubzGKbjc
	ai3T57EPg+IU/INGm5WsIok2E9YxUhdrF/gz9w2x2MwUh9Ktaqx1ylvdAS91K3Bvvt0v6x28mss6F
	bqKrj222jJgrP5LJyBNHhxbqutqtvqCuTJk/YM36yBw1P/qLe65Ty4wv72df9tXShS/ZlftJ20Qcf
	Wnjj5/QqtrILmHYJyo9vd/6JOV/xb9UgRmD6uQ96J1tm92F/CA2IOxeJtRQPpP6Qv+taIcP1aFZnx
	OOfg1lLSQX8Z76sstQXuNX/4n92EGr7s2ol3RYIrupnTwk9v+o5R5wyAaDMzY5tiaXbTannO34Xai
	C6GQ+wFBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9Lt-0007ca-Td; Mon, 12 Aug 2019 12:23:05 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Li-0007cE-Mr
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 12:22:56 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Ma1HG-1hl0Ho1FDQ-00VwxV; Mon, 12
 Aug 2019 14:22:52 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190811223921.572cda5b@kosmio.komorska>
 <20190811224446.3334b7e6@kosmio.komorska>
In-Reply-To: <20190811224446.3334b7e6@kosmio.komorska>
Date: Mon, 12 Aug 2019 14:22:52 +0200
Message-ID: <000b01d55108$a98631f0$fc9295d0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQECHRWgK9NZjHBUix22RzISCgT6OAJECYHTqIu1pBA=
Content-Language: de
X-Provags-ID: V03:K1:JEgw87aDwgKEYWdWpgqkIUJYyAgEYdA1s4Y62XYymPtxzLdvqJn
 whGEdC0ZHP5YDR8m39pGAkQdIIaihWIoeas/vcVdr0qQD47ZUtq2Y/5kc/2TMJmrsQGruS4
 WGjpyGU3y3HKB9VR36HhLAxB4LngAB38XSvyVA3Ip/wiYCwwavHUHQJuATlJ+VGZTpR2ibh
 k3A0duxbkmkqjY725mOOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:snpqzLkl8y4=:fBSRYBCFfupReLlqTWDmNw
 t1qsFEqKzo8hVrg2lVGus721+c9ZM9eusonsDP4QfdnNE0ux6WR3ZDfz7i6hjlRLuX3r63tDd
 AjZzVrMzXJprR1syR2JaKDryqX1k/yJV5RcBn464ZYuvvmx4tvfrVhjAqqVHd+SHZgRyWCxIS
 vgqMyh2HtrFHFF7xrV6ZfJmTwhJuAiHMTm7eoNr0lAhiRYoMcXdCqXBru5lu7GFvomXVdzMUQ
 xkoPY+1F+DmvWlEfWwRbvi2wa2lCCmS0/0L693R072AMeR4QDDO77hOqG3W5pyWTdZSevfueR
 74P149epBIl1+bZlsEWz4DoOUAPeDpTxGN0RpJej999GLb1BUzRByOrkaVmSZW8PFnhGZh4ks
 dHoMobQb3I002rsdj4cE7tT3uggls4ZmtP4ZQKciaYT4OWcWtw9ZQnWBFiOSJf3Tp+SdDGYuv
 WwPD0fMAn6iPD3JwwNBdwdJS7mfMfug2FCorKLjNs45Sqt8fjX7kvvampfc8CPScNtktYzq7H
 eVUFTMpCDLVmSkUSBmxpMO5YjOV5jdkPHX8QKLzmX9CGy9GP+ncnuy1I9045jI3Tag10rp1VM
 +r/gdNlXb7Iwf1Qo0e7YLRSA+7ftN9c46Tlqsk5R3ey/6iv3W05TJGZ/oEwrMGAydI30Kr3cV
 4iv1A0xo7maZNU408Xh3sGy9xcVVqNqNG8RxBTozwbZZl6WS1H9Mqmv9jEtZ5wMzlZ/RT2svG
 NOCUBSMyt1jsGTuQQVFzVhiSzxm5RLCrykDDDabl5YRooaL2P0xyYPhcDFY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_052255_041861_09A462A0 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH v3 3/5] ath79: add support for Netgear
 WNR2000 v3
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
Content-Type: multipart/mixed; boundary="===============1159903500144576234=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1159903500144576234==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=ctPUyEAmQrEw3y=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=ctPUyEAmQrEw3y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, comments below, too:

> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9=
k-eeprom b/target/linux/ath79/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> index ec597dd1d4..747c1aab58 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> @@ -165,6 +165,7 @@ case "$FIRMWARE" in
>  	winchannel,wb2000)
>  		ath9k_eeprom_extract "art" 20480 1088
>  		;;
> +	netgear,wnr2000-v3|\
>  	netgear,wnr612-v2|\
>  	on,n150r|\
>  	pcs,cap324|\

You are using mtd-cal-data in DTS for this device. Does this work? Then you=
 should be able to remove the entries in 10-ath9k-eeprom. Otherwise, remove=
 mtd-cal-data. Based on the result, you may want to change the other device=
s accordingly.

> +&pcie {
> +	status =3D "okay";
> +
> +	ath9k: wifi@0,0 {
> +		compatible =3D "pci168c,002e";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mtd-mac-address =3D <&art 0x0>;
> +		mtd-mac-address-increment =3D <1>;
> +		mtd-cal-data =3D <&art 0x1000>;

Despite comments from above, we have the same situation regarding MAC addre=
ss here. Is the MAC address read via cal-data already? Then act as describe=
d in the previous patch annotation.

> +	};
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&gpio {
> +        status =3D "okay";
> +};

Leading spaces here. Change to tabs. And maybe check all your files, as I j=
ust found this by accident and did not look everywhere ...

Best

Adrian

--=-=ctPUyEAmQrEw3y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1RWhsACgkQoNyKO7qx
AnA5qw/+Ju58on5T4wGFjtK5a7yV5RKOjElDHKbRgMZYetesb9B3Qw4fIOnxyzZR
nXa3cCMDUu1EpZxoVaqrWR+C56elmEaOYqCvfC9ADM29UYUgKTupa61VEXq2AMlS
1dAuwqsIsq2gqq/2fM//nqb7B4x4Cm52g1SwcEEF68A62VAJ+k86BTOVqoibN0Cq
Ay9rJ0cAdj7q6LyGM05wv30NS/jbFUS/Uro4SknOhNI0pdt+U6W4eQuu2FTxhhXA
QObjx+IglWafe8Q4xECt0Td+E4QnfhxMyVvdJxK8YyGD1QtA6w+Iq/sfmefwWxFz
+9s5jSCNCWrA8uG9Rm8NSCWbdOJv1J5h1rnwTuuLa1fM3UIsYm8vGMN45USg2Qst
v5atDxDHl8a41wz8jTbNV3/aYuKTMLIFT46sN8aaq+n1WdSvMegFbGCPTHjEBHGO
/xVfxUU9M7JPKNdernA7zA9lJ0MfRhZrjq84fGUDaFZaVhuoVvgqnzy6Z/KH5H99
n6BkDrarkEbXykJLq1WLJA32Uy7z5iUIEs1sdePOisW0bC0e2fugbEUamFeVdN1T
wQBMF6sxpt/FMql5jfP/FwzijvW++YbXT9WYVqbgDJWgMEIPQb8O++jYa3wPksK2
jdfAMh6RqRv7wJ/xOduMV7c5Igt3JX5D/2TK43nHF+B8ngN5a6k=
=qiji
-----END PGP SIGNATURE-----


--=-=ctPUyEAmQrEw3y=-=--



--===============1159903500144576234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1159903500144576234==--


