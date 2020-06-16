Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F851FAF1D
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 13:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bBNJVZ220MssK9SEGcJLu5z92fo9Hy5Mt5exZPKG/zI=; b=rczQyZrFkvkYmw7Qs57FOovsW
	upU46TTysAVdSvdmkHkQI7aoBRd3wFghmKVaSKrf1mMp2Z5Zlxg8+fLG6TIIF+Ot23aPhS5+za/lg
	sSZOC02ujbgV8oPCUZvchNMMElq361bTtJlfgcL3/8zvZUKrI5D7KIaGgIHLijVOcRrFGymtTRHIz
	uNCvkKB6xdRHWY8kcCs6AjCg2hEVuWQeQK3knzkqWfMkQEYbgyJ0hdi0pJV31Qf1+OOOAk7zxg/t3
	3Xri3bA/WXptsWLJGlB9a1G7YdOowrt9KBxZOqYoXpNT81k/KnT1rLG82XEzw+5mmLww6c1vkhJ0Z
	LKPLToqWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9kJ-0001nw-U7; Tue, 16 Jun 2020 11:27:16 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9kB-0001nY-Qf
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jun 2020 11:27:10 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mqagw-1j7P5a3veq-00mb4C; Tue, 16 Jun 2020 13:27:03 +0200
From: <mail@adrianschmutzler.de>
To: "'Florian Eckert'" <fe@dev.tdt.de>, <john@phrozen.org>, <dev@kresin.me>,
 <Eckert.Florian@googlemail.com>
References: <20200616082613.892-1-fe@dev.tdt.de>
In-Reply-To: <20200616082613.892-1-fe@dev.tdt.de>
Date: Tue, 16 Jun 2020 13:27:02 +0200
Message-ID: <004301d643d1$0eccb190$2c6614b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQEG47kmHZyVOI3rW4exIkOGUnN8B6p52iuQ
Content-Language: de
X-Provags-ID: V03:K1:usH++gN/Tnb88QazMxwQo4SEdinj6jxv41EBNriuPiySOqMf7/T
 V9AViz+ES4GN+c5vY8Rk51jGT+/OC194nWO0J+EXvu0d9h6AvvqAK+xS9EB0VoH2G+mahC3
 KSttk4mmB7PZ96RkEYvGuRwY+B7rBJThiCfDl0XeE9NJZ2qKKE1TTSwmGivyGZNvB+F4OIe
 S3cXAIP65RZFPnf9e4puw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0slvOXkY1Oo=:MJzj3wSRpDs/0zLDDHCPNd
 1NAUQXe4ZlLPxRKu9T0hXXdrJRN1TlH2/UROVLpYNNqWncK9YByK1loVdrPLnYMT5pAcO2w1f
 c+YM5GBK4jKCwJwaICTEC6hz5WucsHJqYqMEmQPc7vc0vzF1LCQBHaRitTm+s7HeN3cPeaCMX
 JLhnX3XmyP0OC9vuGfLf63N6dlt3cvqJK+BDeFtNy5KMTKXXgjhX5ijJEZJDYjt+y68HP8xTq
 urla7GucJarBckHrFI04h3TY1/doKCxl8sRy6A40I9ELQQycm6/SCjLzFADqpw4/n7adnEnYY
 4HIB6DPELGdEoTw90GLZgww4Lz02iWjMajMhn4569wy3aUCBSYzjsOEDS8XSwNRh0aTkeZE4l
 4hJMW+sJalAD/bLIiZaor1sU1K50w4DaRCe/tzLXUsPeg/OGQMzxPlsquqWe02IKgBdTX3YHL
 a5dUys855RNVwCe8hvM1NBg4pVevASJOarA78i34YRWUZkUVXSLL9f7b7vIES8DOPfLomyO5Y
 CnNytHQ7FMuIx5BUtzzMRdV0vtNoCXjBUuOGuV2zHcekZp30U82qzrAVetYKvfk8tlv1d6eFP
 681Q+az757sT2Xa2eG4j2JzftFvYdd+bQ4RruVrDetH6T6qO8cwIMQ3fHVD4nz2UT4iZnQ8DS
 JvV+mBCemn6bXvlrrzedMar/NLohka/T9PESajMKx821Qef7K1FXS1Y82wWrXsLtMXRwaKaL5
 HpBQNjpgueykbK7+abHbQXfNmATmyzzq4iDtcNlcdGeb8h/hgtyYq8RdzAJpyWN1dqDishUQ4
 zOtCTF9zI5PGDSr04+sT87K4Z3g8T2WwIn+YJ5NCqPmHhT73o4NDUSyZlfKwh/JdfZzAwmL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_042708_159616_ADE888AF 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: add dsl line_state mapping
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============2452018440486649028=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2452018440486649028==
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=5sTLJSez0eM0VU=-="
Content-Language: de

This is a multipart message in MIME format.

--=-=5sTLJSez0eM0VU=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Florian Eckert
> Sent: Dienstag, 16. Juni 2020 10:26
> To: john@phrozen.org; dev@kresin.me; Eckert.Florian@googlemail.com
> Cc: openwrt-devel@lists.openwrt.org; Florian Eckert <fe@dev.tdt.de>
> Subject: [OpenWrt-Devel] [PATCH] lantiq: add dsl line_state mapping
>=20
> The line_state of the DSL connection is described in the system via a
> hexadecimal variable. With this change the hexadecimal is mapped to a
> decimal value. With this change it is now possible to store this value in=
 a
> database, so that it can be easily evaluated.
>=20
> This is especially relevant for the collectd and gravana backend.
>=20
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
>  .../base-files/lib/functions/lantiq_dsl.sh    | 82 +++++++++++++------
>  1 file changed, 55 insertions(+), 27 deletions(-)
>=20
> diff --git a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
> b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
> index 11b02fc4aa..4827d10bc5 100755
> --- a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
> +++ b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
> @@ -650,40 +650,68 @@ line_data() {
>  line_state() {
>  	local lsg=3D$(dsl_cmd lsg)
>  	local ls=3D$(dsl_val "$lsg" nLineState);
> -	local s;
> +	local s n;
>=20
>  	case "$ls" in
> -		"0x0")		s=3D"not initialized" ;;
> -		"0x1")		s=3D"exception" ;;
> -		"0x10")		s=3D"not updated" ;;
> -		"0xff")		s=3D"idle request" ;;
> -		"0x100")	s=3D"idle" ;;
> -		"0x1ff")	s=3D"silent request" ;;
> -		"0x200")	s=3D"silent" ;;
> -		"0x300")	s=3D"handshake" ;;
> -		"0x380")	s=3D"full_init" ;;
> -		"0x400")	s=3D"discovery" ;;
> -		"0x500")	s=3D"training" ;;
> -		"0x600")	s=3D"analysis" ;;
> -		"0x700")	s=3D"exchange" ;;
> -		"0x800")	s=3D"showtime_no_sync" ;;
> -		"0x801")	s=3D"showtime_tc_sync" ;;
> -		"0x900")	s=3D"fastretrain" ;;
> -		"0xa00")	s=3D"lowpower_l2" ;;
> -		"0xb00")	s=3D"loopdiagnostic active" ;;
> -		"0xb10")	s=3D"loopdiagnostic data exchange" ;;
> -		"0xb20")	s=3D"loopdiagnostic data request" ;;
> -		"0xc00")	s=3D"loopdiagnostic complete" ;;
> -		"0x1000000")	s=3D"test" ;;
> -		"0xd00")	s=3D"resync" ;;
> -		"0x3c0")	s=3D"short init entry" ;;
> -		"")		s=3D"not running daemon"; ls=3D"0xfff" ;;
> -		*)		s=3D"unknown" ;;
> +		"0x0")		s=3D"not initialized"
> +				n=3D1 ;;

Wouldn't it be more user-friendly to just use the decimal number equivalent=
 of the hex code?
Empty and error could be modelled with negative numbers then.

Just meant as a suggestion, I won't block this if you keep the current sche=
me ...

Best

Adrian

> +		"0x1")		s=3D"exception"
> +				n=3D2 ;;
> +		"0x10")		s=3D"not updated"
> +				n=3D3 ;;
> +		"0xff")		s=3D"idle request"
> +				n=3D4 ;;
> +		"0x100")	s=3D"idle"
> +				n=3D5 ;;
> +		"0x1ff")	s=3D"silent request"
> +				n=3D6 ;;
> +		"0x200")	s=3D"silent"
> +				n=3D7 ;;
> +		"0x300")	s=3D"handshake"
> +				n=3D8 ;;
> +		"0x380")	s=3D"full_init"
> +				n=3D9 ;;
> +		"0x400")	s=3D"discovery"
> +				n=3D10 ;;
> +		"0x500")	s=3D"training"
> +				n=3D11 ;;
> +		"0x600")	s=3D"analysis"
> +				n=3D12 ;;
> +		"0x700")	s=3D"exchange"
> +				n=3D13 ;;
> +		"0x800")	s=3D"showtime_no_sync"
> +				n=3D14 ;;
> +		"0x801")	s=3D"showtime_tc_sync"
> +				n=3D15 ;;
> +		"0x900")	s=3D"fastretrain"
> +				n=3D16 ;;
> +		"0xa00")	s=3D"lowpower_l2"
> +				n=3D17 ;;
> +		"0xb00")	s=3D"loopdiagnostic active"
> +				n=3D18 ;;
> +		"0xb10")	s=3D"loopdiagnostic data exchange"
> +				n=3D19 ;;
> +		"0xb20")	s=3D"loopdiagnostic data request"
> +				n=3D20 ;;
> +		"0xc00")	s=3D"loopdiagnostic complete"
> +				n=3D21 ;;
> +		"0x1000000")	s=3D"test"
> +				n=3D22 ;;
> +		"0xd00")	s=3D"resync"
> +				n=3D23 ;;
> +		"0x3c0")	s=3D"short init entry"
> +				n=3D24 ;;
> +		"")		s=3D"not running daemon"
> +				ls=3D"0xfff"
> +				n=3D25 ;;
> +		*)		s=3D"unknown"
> +				n=3D26 ;;
>  	esac
>=20
>  	if [ "$action" =3D "lucistat" ]; then
>  		echo "dsl.line_state_num=3D$ls"
>  		echo "dsl.line_state_detail=3D\"$s\""
> +		echo "dsl.line_state_mapping=3D$n"
>  		if [ "$ls" =3D "0x801" ]; then
>  			echo "dsl.line_state=3D\"UP\""
>  		else
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=5sTLJSez0eM0VU=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7orIMACgkQoNyKO7qx
AnCQVg/9H4YXQkr0ff35KLIk3dmYcBZa4ObGChE/rtTXZHxH7vStBI1g2t/+hUlI
M3nyq8v9jBrcc9SZwEZ7GiFpIonLb5qACMp0gE39YeY4+VLP+wlX9MMFyNBYeZeG
9PHbegW/N2ACrfUBbJFVE0VJqqe5EVW6NB2khyLx0lhT1T4mxciy+XrmsfnZgH3I
pXiSFTVIHKJl8jGUYJ2LnfS1Vb8WS6OWAo2JjeSel2JrKc42Pv7bQlwISrnsmPj2
+2VyfwUwMvmZLHUOCALwvaKzHBT8lB01C2aGbpPGQMfhF/jXIyVuV/aHlNtS5jwp
07rhR4pqvVio9Iz9I05ZHpZO3vJsUxXltji28nkyJo/G7IgJ9/tkDQvpywH61PCs
wYlQdIW3zUYZcWmARpcGjP7hOKltcATChmmFMjR81ERBMPH9UTTf83u4lBog5PY4
+yTKPPbte/fsYLaYxoNKvgHt4ZePPKcUkqYkOa/420X/D3v3G8ZQroKRP4meUf8p
jht/GsXRV9cqmLaeq7HzsydCW7C7kfUv6LvgmL+LjMZnUXD2h3PidiZxU9dsjJRE
PF8ENdNMUllLovFd/NrUzcTUxsOyhJ1b1VGfvmn0gHGYxYTgq2SNZFP+hihF6Fqe
wTrq4It1Hfnyqukj7GNRdT0vCCEJg54kEWpslBb3jDSFM6SdXwU=
=8/5q
-----END PGP SIGNATURE-----


--=-=5sTLJSez0eM0VU=-=--



--===============2452018440486649028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2452018440486649028==--


