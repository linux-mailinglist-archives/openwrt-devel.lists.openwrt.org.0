Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D461B0D8F
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XiYlBq9sXT2mIK+zoEa6VOOfWT4MyNRJMQG+DSRh3JU=; b=VDDMewZCRVeZlI8GMgmIO+NMi
	P4XvOhHOfJCBg2JeQz2RdeVo2FlRmx8wM/HfEYYR/oUfwGJ0eO5e6VbYcpLBlSKgNvNHEkP0OJ9/f
	xxxo6zS4mGcvz2S4gG4UggLiVKsQ5QWFHIgxqXKBat89659ae7gpzobNiORuFqsBfHWSBugbTaqNq
	RZMChbBmR/t/Q9QEaeWXtAXMbd7+nyQwxVKyCjsXJkggsHM0c32+d1B0ycSFWe3WxQ0cDGjUehsyS
	Kwbp89tXy0gNyCjOy5rtK04gNp25Jt17Oo+LDmAPcJMuBAFQkHQfgX3q7tMSbWkPYH5DdTjdc0tGI
	vQHvjs8RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWwi-0003kM-QI; Mon, 20 Apr 2020 13:58:48 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWwa-0003ih-Cz
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:58:42 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MAwsT-1jWoTa2Ler-00BNkX; Mon, 20 Apr 2020 15:58:35 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-8-hacks@slashdirt.org>
In-Reply-To: <20200420133503.18700-8-hacks@slashdirt.org>
Date: Mon, 20 Apr 2020 15:58:35 +0200
Message-ID: <015601d6171b$c9392690$5bab73b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQH9rhEV/dFWOkGBLi2xOlxjqT5TbgI23nLKqCEjOKA=
Content-Language: de
X-Provags-ID: V03:K1:rdnsMnjo1MbAQZN70INHDLXVUd4CGABsHpBoY18TlOQ4YfHW+4r
 SdTIUbr4nUaHRjIzGF279AHF7u1ie/rcCfpSADRfRF4dqD2JFjHqPZKeiAPDTfWnaRKx74k
 GuIuLrrImtL0bft7huDCo/rygFU+PUWsyGnWy2O+WsUMY4CvXm1N7xUjYop62xIT+xHjpqE
 y9rsiSDbBjjnqqWOeY68Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TmtJ6zvdmzk=:2gmGsWd8CqkyybdNHtg99m
 VQfj1kkYYsh/d+ZWo9Bpo2WYVZHWdKVx30VSHtC0owMakY7xMJOnBlweEkteV/2j5zgUu58Av
 TNh+HdgNXKkRgIn7oAJYIfdIwIb4AQKLVAawDPDa1M2I57ojMeRD9rc4FLTpKAgVysEnnMglE
 Bs1xjS+/k/omPIQgnqVOUU6YGhqOkwJuMFjchS0GQBwdfJtQDbQvTC5A76h6BubVVlZdevMWn
 8oZf/izQR921XwvMJPTopp8juqYQaIZORCMOjpo5+vnDyuxIVbMtrdEFor0Ta95gvXj0lv0/1
 mfcxRw7Nbt1hSjoB+4TXdYXpVsmbzBIN+Qt8YRUt48Gj30yJ27qYiJ3mKp+V4B9ns0Zai8Mbi
 HhaMK3t0dqN9CFmU6Ug6q8k2pfLcCvDtAx6olTLaN+2YV3xA4R5cUg9531dNRZIF+w6PsPrfE
 QEL+wB2RA14KmnRLSUD7fWawqtFAHatmEpubfiaR/AayuhiUAbVSTQr9bMK6Dzu4PiztbWITJ
 2EWlUoJCJzdGxoC99xONvKkNYN4fXTtpqAARpzB0GvXc6XGkosIesFVQNV2TUdWSIStAdNw3k
 LUu0RouBoCzI+FMxBLcnZt3wIyJJtI1Uqrm95VcTqbhDgKhBjGtMAgOgO0rumnK1Wb8Bpr/BK
 E5ZaX/h8R+rw68t0iqvrQJUhTCMp2E1arDMzWnhUoRSqSdz32lD3LDiDNB8vz6bCnh5ngiiLm
 DojUGbrlBuG4a7SW2hHD88L496BEAW2Pmg8DfmwlLvNW9DophBpubHCxW0TEY+sc3YuwslJJq
 YZc2P2ivvFxpMT8xpSS2+VpRdZ5nmGFw4zs/tP7c3T2CMgnJEcT1zUljJvS8FTcYru4sVNY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_065840_737168_B019135F 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 07/14] ath79/mikrotik: don't use
 mtd-mac-address in DTS
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
Cc: koen.vandeputte@ncentric.com
Content-Type: multipart/mixed; boundary="===============2154507130639469372=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2154507130639469372==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=IothqVyydKlacp=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=IothqVyydKlacp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Thibaut VAR=C3=88NE
> Sent: Montag, 20. April 2020 15:35
> To: openwrt-devel@lists.openwrt.org
> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>; koen.vandeputte@ncentric.c=
om
> Subject: [OpenWrt-Devel] [PATCH v2 07/14] ath79/mikrotik: don't use mtd-
> mac-address in DTS
>=20
> As evidenced here[1] the device MAC address can be stored at a random
> offset in the hard_config partition. Rely on sysfs to update the MAC addr=
ess
> correctly.
>=20
> Note: this will trigger a harmless kernel message during boot:
> ag71xx 19000000.eth: invalid MAC address, using random address
>=20
> There is no clean workaround to prevent this message from being emitted.
>=20
> [1] https://github.com/openwrt/openwrt/pull/2850#issuecomment-
> 610809021
>=20
> Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> ---
>  .../ath79/dts/qca9556_mikrotik_routerboard-wap-g-5hact2hnd.dts     | 3 -=
--
>  .../ath79/dts/qca9558_mikrotik_routerboard-922uags-5hpacd.dts      | 2 --
>  target/linux/ath79/mikrotik/base-files/etc/board.d/02_network      | 7
> +++++++
>  3 files changed, 7 insertions(+), 5 deletions(-)
>=20
> diff --git a/target/linux/ath79/dts/qca9556_mikrotik_routerboard-wap-g-
> 5hact2hnd.dts b/target/linux/ath79/dts/qca9556_mikrotik_routerboard-
> wap-g-5hact2hnd.dts
> index 529ac1cf3b..3c0dc84a37 100644
> --- a/target/linux/ath79/dts/qca9556_mikrotik_routerboard-wap-g-
> 5hact2hnd.dts
> +++ b/target/linux/ath79/dts/qca9556_mikrotik_routerboard-wap-g-
> 5hact2hn
> +++ d.dts
> @@ -11,7 +11,6 @@
>  	model =3D "MikroTik RouterBOARD wAP G-5HacT2HnD";
>=20
>  	aliases {
> -		label-mac-device =3D &eth1;
>  		mdio-gpio1 =3D &mdio2;
>  		serial0 =3D &uart;
>  	};
> @@ -53,8 +52,6 @@
>  &eth1 {
>  	status =3D "okay";
>=20
> -	mtd-mac-address =3D <&hard_config 0x10>;
> -
>  	pll-data =3D <0x03000101 0x80000101 0x80001313>;
>  	phy-handle =3D <&phy0>;
>=20
> diff --git a/target/linux/ath79/dts/qca9558_mikrotik_routerboard-922uags-
> 5hpacd.dts b/target/linux/ath79/dts/qca9558_mikrotik_routerboard-
> 922uags-5hpacd.dts
> index 3f2a1a51a6..ff806ff88d 100644
> --- a/target/linux/ath79/dts/qca9558_mikrotik_routerboard-922uags-
> 5hpacd.dts
> +++ b/target/linux/ath79/dts/qca9558_mikrotik_routerboard-922uags-
> 5hpacd
> +++ .dts
> @@ -11,7 +11,6 @@
>  	model =3D "MikroTik RouterBOARD 922UAGS-5HPacD";
>=20
>  	aliases {
> -		label-mac-device =3D &eth0;
>  		led-boot =3D &led_user;
>  		led-failsafe =3D &led_user;
>  		led-upgrade =3D &led_user;
> @@ -80,7 +79,6 @@
>  &eth0 {
>  	status =3D "okay";
>=20
> -	mtd-mac-address =3D <&hard_config 0x10>;
>  	phy-handle =3D <&phy4>;
>  	pll-data =3D <0x8f000000 0xa0000101 0xa0001313>;
>=20
> diff --git a/target/linux/ath79/mikrotik/base-files/etc/board.d/02_network
> b/target/linux/ath79/mikrotik/base-files/etc/board.d/02_network
> index ee795c7496..20c670f702 100755
> --- a/target/linux/ath79/mikrotik/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/mikrotik/base-files/etc/board.d/02_network
> @@ -21,8 +21,15 @@ ath79_setup_interfaces()
>  ath79_setup_macs()
>  {
>  	local board=3D"$1"
> +	local lan_mac=3D""
> +	local wan_mac=3D""
> +	local mac_base=3D"/sys/firmware/mikrotik/hard_config/mac_base"

One of the concepts I tried to maintain for this section has been to always=
 deal with MAC addresses directly (and not other types of data, like a path=
 in this case).
Thus, I'd prefer to have

local mac_base=3D"$(cat /sys/firmware/mikrotik/hard_config/mac_base)"

and

lan_mac=3D"$mac_base"
...

Despite, we save one cat ...

Despite that, you removed the label-mac-device above, so one should add it =
as label_mac here.

Best

Adrian

>=20
>  	case "$board" in
> +	*)
> +		lan_mac=3D"$(cat $mac_base)"
> +		wan_mac=3D"$(cat $mac_base)"
> +		;;
>  	esac
>=20
>  	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
> --
> 2.11.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=IothqVyydKlacp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6dqoUACgkQoNyKO7qx
AnDjQg//XcY1vX0nuyGux9LHOPd8E0BIoYZihjzaJJQidAt18gWCwNSt9slIxPPJ
faFCUbSeTGhJfnpwQwHSa+V1IDPbI+QwRSUI6Ah2z3VxGeO9zyC7ch3mVJnFxdvL
K6pPZ8c98o8ARSpbwWoO4HrrKg1GUwdPHj5xdYgZyo3bFQklpTzX5U0JI/oaOQg4
L/KasvVk25vdQdbHi34Xx6IElICgJ/62L+Ro5WV+KZBUhTdhISYJO2Ds/9d6aWtL
vR0Pu2CjnF1hoynm2ALzawWliIvxh2XGx2pewaUai1aBkNPN0J/nhEX0PKW0auqs
MahRl83Y+FccQssZzwkJXBzjS4eeNjGP4h0sac0qj/qVXLhKI9/ayRfUtPS0gJvU
QrdVAYR4ppBFnAjesyUtdxLlSDydahc/XfzNNgt3qXxrjonNDP2txvctf/2fuBsk
9KGjzYtTxSN7OMGB/0PXOjwN1eCbEqpwFudvxUKUmhRrzXtTrWWA3orcwwwxn0ML
90fMBT76rhd4z1DVlsMbrqR7CPRHCY0yqpT6E+RUuOe5sCNWyiQhfwvFE7wOdSvU
ZqGAc3UpqmfGjxo/hb/FU7T9aBxsZX1yMN/v2HBAGxPZdxQpFh2aA4YOl0fJBOxN
9sAszvOvYO7OFRsQQlx0l1urFZfUgTQn4H4PJNfCQyRjitjGFuk=
=jss3
-----END PGP SIGNATURE-----


--=-=IothqVyydKlacp=-=--



--===============2154507130639469372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2154507130639469372==--


