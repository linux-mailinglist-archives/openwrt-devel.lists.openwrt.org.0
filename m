Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DF319FD1D
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 20:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MyplCCMUGCoRdymib0X0MKmFDjnN6Z2kCH9EtzFXf5s=; b=hycYHUTHGQuWMkvTUIOntP+zG
	kOl14Yksx4RNNBCNuy2m8GedSUW8VpOaoWbkAQ8TzBbKmfZi3M6Z+4Gznt76jBCJbts4J5mZo1x65
	vH6dJ+pbuPy1gRCoFAMcO/QRIvQtySRD3pcxvOML02TSmwb1oDx8KcxfhOyk1pVA7KQgGv4pSQ4e5
	27Za5/QtU9hqCjARc1wzRVsXfFL6g8L8loDyyj5acvv+Pt0bcT6JvcX0j/IV9WVzGf9Tt0j4X+Ayn
	8BwPwI5dnbNEY7JfeYEOHysJYhAN8IqnmpJ5DtKB5VZ2klAfymAxgZik/Dd+thkAT3DtSRiMMwFTq
	ghwB1kc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWSE-0005lo-Bi; Mon, 06 Apr 2020 18:26:38 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWS6-0005lB-Pt
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 18:26:32 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MCKO2-1jTjvc2cEs-009PFH; Mon, 06 Apr 2020 20:26:26 +0200
From: <mail@adrianschmutzler.de>
To: "'Dan Haab'" <riproute@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200406182013.86147-1-dan.haab@luxul.com>
In-Reply-To: <20200406182013.86147-1-dan.haab@luxul.com>
Date: Mon, 6 Apr 2020 20:26:26 +0200
Message-ID: <02a601d60c40$e233bc90$a69b35b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQK/sri+4nxZHBxv4LxIBrb46zzEA6aZGu6A
Content-Language: de
X-Provags-ID: V03:K1:tMrIfsTsA0JEuGdM/de9NHQwqVRlm4S4Hy6MfhtRjS+dXZPL5A7
 iHfm/vno6zHOMYov/riCOUgfQfZWGsAmH7BKJbyzWlT6Kuyu99ZIgAiqfSaMUd1vRxSH6hw
 opNKvecO3epQ1UsLynfFXHi4NWIr/wSOZKgLRG5+rbjAdGkWAfkaAcWTq7QlXVBOmi2Ew7y
 BGvNbOCPveTuxMVL8H4TA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z350D15+Lrg=:+Wkq7ZDrnP146cXJMJjOeK
 YenNVqv3hechZ2+XJ8gRRlz+cInueYIfTjHnh4/2YqO+z+78UkvgBB8iW4h5t1iSZtzEXErwn
 tM2VCCpg9y9gPFh45mhtQvGt6d1t281fPBdTiACOu4kEL03mgpCx2vz93ak6U4oVkoY6zMQSq
 xrlBwwcs+Vc2Yf0knuChFkTHc8HMw46kFJfGilKihD3JRsdIqpoRJfzm4Cj4/iGeHK6Sx9AK7
 MRACMBxHV1pxQbzTwELiEDF8q7hiQnOHybEbg+7Nj3pVWfu6vWXbTz+m+qMh7UdpwkzLWlwd6
 xu2cljrg2+29C6oRGdGWMy7u+gwGN8k07ClqQhwHHc5W91EjGasQui6hbO/bsTZglcQ0aWJ1l
 5rWnLUjTqyKtzV+0QodWBfPhGcAkKCXOQrAF8jyc9P9b0uJZDDM1wM6eINTCBKm/9XWXHzz/u
 mRC+4DkiLbX8j5nSIIVV29XQaPMjmsh+B62fvT5W4l0HjT2H+JKMTyv5OQ6coQBm2rwXPLLbX
 Djt4+kFzLesOBfkEeyqYWY3pInYeYAQmFo4IlJEq+eLN2VaggJxDEp44boud9LAWVwhhBKrFc
 aBkn/89/OvvxgNEw5IL4lGp0urbhz6IF3m4W4S3dUKpngys7TCJ2bS/hmZcczCeIr0NgntXPm
 wBolj5GIAPpMEqF7AX09nQYBROkAuipERzVbduYHPSh+qd+5Zw7tkXpI70EpwdV3xWIqrXrw0
 nrwQIA7a66aNyFDpfVwUpVFTvN349lWc4ozP9vrgZCVwTHNHmM1vlNdZgaiP8K6I17tIDFmLh
 +qx0IGrm2i04xBOK8QdGqdK8GDU3SsJ+lqvQg44dQy9eXO6aeQ6o8wYS3Gt9vKrSr+4Nlmq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_112631_125224_9E614677 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul FullMAC
 WiFi devices
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
Cc: 'Dan Haab' <dan.haab@legrand.com>
Content-Type: multipart/mixed; boundary="===============5856813070602641072=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5856813070602641072==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=su8FB0Xtfan1aw=-="

This is a multipart message in MIME format.

--=-=su8FB0Xtfan1aw=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Dan Haab
> Sent: Montag, 6. April 2020 20:20
> To: openwrt-devel@lists.openwrt.org
> Cc: Dan Haab <dan.haab@legrand.com>
> Subject: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul FullMAC
> WiFi devices
>=20
> From: Dan Haab <dan.haab@legrand.com>
>=20
> This prepares support for models XAP-1610 and XWR-3150. Flashing requires
> using Luxul firmware version:
> 1) 8.1.0 or newer for XAP-1610
> 2) 6.4.0 or newer for XWR-3150
> and uploading firmware using "Firmware Update" web UI page.
>=20
> Signed-off-by: Dan Haab <dan.haab@legrand.com>
> ---
>  .../bcm53xx/base-files/etc/board.d/02_network | 22
> ++++++++++++++++++-
>  target/linux/bcm53xx/image/Makefile           | 18 +++++++++++++++
>  2 files changed, 39 insertions(+), 1 deletion(-)
>=20
> diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network
> b/target/linux/bcm53xx/base-files/etc/board.d/02_network
> index f86f12407f..9256cbdc54 100755
> --- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
> +++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
> @@ -36,6 +36,15 @@ bcm53xx_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
> "5@eth0"
>  		;;
> +	luxul,xap-1610-v1)
> +		ucidef_add_switch "switch0" \
> +			"0:lan" "1:lan" "5@eth0"
> +		ucidef_set_interface_lan "eth0.1" "dhcp"
> +		;;
> +	luxul,xwr-3150-v1)
> +		ucidef_add_switch "switch0" \
> +			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan"
> "5@eth0"
> +		;;
>  	phicomm,k3)
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
> @@ -100,7 +109,18 @@ bcm53xx_setup_macs()
>  	esac
>=20
>  	# If WAN MAC isn't explicitly set, calculate it using base MAC as
> reference.
> -	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] &&
> wan_macaddr=3D$(macaddr_add "$etXmacaddr" 1)
> +	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && {
> +		local offset=3D1
> +
> +		case "$board" in
> +		luxul,xwr-3100v1 | \
> +		luxul,xwr-3150-v1)
> +			offset=3D5
> +			;;
> +		esac
> +
> +		wan_macaddr=3D$(macaddr_add "$etXmacaddr" $offset)
> +	}

This adds another level of nesting. I'd prefer if you just added your devic=
es to the case directly above and just use

[ -n "$wan_macaddr" ] || wan_macaddr=3D$(macaddr_add "$etXmacaddr" 5)

for them there.

>=20
>  	[ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan"
> "$wan_macaddr"
>  }
> diff --git a/target/linux/bcm53xx/image/Makefile
> b/target/linux/bcm53xx/image/Makefile
> index 610af03abe..b3ec1e99a2 100644
> --- a/target/linux/bcm53xx/image/Makefile
> +++ b/target/linux/bcm53xx/image/Makefile
> @@ -291,6 +291,15 @@ define Device/luxul-abr-4500  endef
> TARGET_DEVICES +=3D luxul-abr-4500
>=20
> +define Device/luxul-xap-1610
> +  $(Device/luxul)
> +  DEVICE_MODEL :=3D XAP-1610
> +  DEVICE_PACKAGES :=3D $(BRCMFMAC_4366C0)
> +  IMAGE/lxl :=3D append-rootfs | trx-serial | luxul-lxl
> +  LUXUL_BOARD :=3D XAP-1610
> +endef
> +TARGET_DEVICES +=3D luxul-xap-1610
> +
>  define Device/luxul-xbr-4500
>    $(Device/luxul)
>    DEVICE_MODEL :=3D XBR-4500
> @@ -299,6 +308,15 @@ define Device/luxul-xbr-4500  endef
> TARGET_DEVICES +=3D luxul-xbr-4500
>=20
> +define Device/luxul-xwr-3150

Could you add a -v1 here as well?

Best

Adrian

> +  $(Device/luxul)
> +  DEVICE_MODEL :=3D XWR-3150
> +  DEVICE_PACKAGES :=3D $(BRCMFMAC_4366C0) $(USB3_PACKAGES)
> +  DEVICE_DTS :=3D bcm47094-luxul-xwr-3150-v1
> +  LUXUL_BOARD :=3D XWR-3150
> +endef
> +TARGET_DEVICES +=3D luxul-xwr-3150
> +
>  define Device/netgear
>    DEVICE_VENDOR :=3D NETGEAR
>    IMAGES :=3D chk
> --
> 2.17.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=su8FB0Xtfan1aw=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6LdE8ACgkQoNyKO7qx
AnChAg/+LGpp5QJ24r+nep8svwjGbz3i+IPHvw2Nz6hsdrGkQ65P8TnrFse2CT1m
GdENxESMMqXzCROgaTFQBniKdtAsjUsq5Ikh8dsYVAf3JCkcdJLtnJLsfLUtPnY1
lbIc1VH82W+7rfNaIXaFYzdNAMDECQzxSBTDp7LN+fM2mCTd/8Y8jlbvderAEmWr
B6G6BFge/hQh5gGPnRb2gpjZhD4lVlsojnrLRZt0k/dsXo02HksO62gkR3+hXv3Q
grrXRjTGG9en5wYaMZYv0GoAKe1OhiSNmpmgU3jnSO8EmVFWMtGT/fwa4Qrcy6Po
IRrRLfSYajkUS3p7ktllSl3x+3p/GfjOsJ1jucdrI8Kd3Iwc1QMcw6ZDjqYc0Lh/
k0YEUABtvjhk1FnXAg0K4jma1x/dp8ha0VPuWGGzDiWIR58CkVTSTLC0gc3LHFVw
mSL/a4J/ZhjXGrLmgIryu3F1MgkUWPdas0ct7Xs63pCjUK25rASpohmGwdBZ1MqP
KlN+4gcYCITTsvmMGSSC2dyfT8OVq6FJ8G9lL4odHKiyVAHWj8xAyPSeRpfp4v2t
b0D/cObS6kbS/oe0TSzshrPYAyaboavpa/7FUfiCvr9EtUq6s01pUtp2wAG0pQhX
v6G54itRJ3cCXodJC3Ikflqc739ylBIeRVGjcH0rKX/3m9ylCRc=
=Q2MS
-----END PGP SIGNATURE-----


--=-=su8FB0Xtfan1aw=-=--



--===============5856813070602641072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5856813070602641072==--


