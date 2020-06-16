Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9831FB6F7
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 17:43:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1RxndauCuglnD+iDl7O0pJZiLwivky5BdxS6s49okDQ=; b=LqZ97cKRSrxd1llPw//GuXoUq
	yn0dYS+HE/iSuDRH5FkpD0bzQnz+3keEnn4k6F0DpQ34sqwnm2mLrGt0BZ85S5vKeNpqgZNNfP4/Y
	27TkucOSJEBpLiVfcXePWuDOXlAr3oAsw2BPE4XMP9PsW3pBo2CEXIQMXSYu10iWPeQhQMdvxai4V
	e21uRVBILLibrAmNFS3ENgXvSD0zYg5IG8gqgVA7w1zO665Ht+SaC3T++6H2ngk5WNrvhnR0bWCAg
	+7fx4GMvsQXiEYcVY2mBWSIe2NS8AqnB3hOTMLpdbm3xS0FFpVn1JKTQC7Sbf2QF580TWa262j9aY
	cdJm5bDww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDjs-0007hX-Sy; Tue, 16 Jun 2020 15:43:04 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDjl-0007gV-5K
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jun 2020 15:42:59 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N2m7O-1ikHPI033c-0132D4; Tue, 16 Jun 2020 17:42:48 +0200
From: <mail@adrianschmutzler.de>
To: "'Florian Eckert'" <fe@dev.tdt.de>, <john@phrozen.org>, <dev@kresin.me>,
 <Eckert.Florian@googlemail.com>
References: <20200616082613.892-1-fe@dev.tdt.de>
In-Reply-To: <20200616082613.892-1-fe@dev.tdt.de>
Date: Tue, 16 Jun 2020 17:42:47 +0200
Message-ID: <00a001d643f4$c92fc2c0$5b8f4840$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQEG47kmHZyVOI3rW4exIkOGUnN8B6p6IaVQ
Content-Language: de
X-Provags-ID: V03:K1:xzxO0ovoFPhV7v8lMvnexniFbPKEZxigh4ebKPZJZWaSrP3FQzh
 /q7Qfo7MQQUvPCxx8VYx3hsjzaBSUOc9dZCkkS8Mu0DHpBTlkxD4Hn6qkJVrp7TvVG5fM2X
 1JBSoETAeOP66B9rBwKomZqbHx5NFIC8qwDHILJFUFdc0VdyBhxtafXFp+IE0bbiniizD91
 WwNOYy7c6u/zz/foLml0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bQXBsy5mXR8=:Iqb+bd3EMp2Y2BY2sfYEth
 H4knRFBVuc+U0Ta2iOE+ynsVdE6R/h/h9cpuq7WCjfYGy1Q1tk0ajB4/KTGZOt/YBRyaPhY2x
 Nv46c9qTgMOZrYV0SgGiMROO+t2krvxoLmZUBQ5LmhBHb0+StfWC6pPATwCoM8m6J6rmx5MzV
 F9o7HY5ekg2yktMY6uD/IHWeSh4mG3j7Elf7fxSkSk0W75cmJZOXe76R9c326xj8b/xdxRda0
 9UzMpTOl5hjp/7O/TTn0arLUtmgspCm5BsmlvpuR5ZegpgzZpolAVe8F1SOLAKVddBCr8khaq
 7altruYh2+6InbtY62w5eP6fGyAnLcqb1tHbT8jxqW6wawT55RjTI2Elde2FiKDkBgLFJyvRK
 zPCZxW7To4sSNN8Z+DqM97MK/oQCJ9AkWrBJpInRphPLuX/7edIWR5j1JuQu+oUASY66JGNDB
 kYFANuF6ko+9v74WfJbvR6vn84SNq/A5Q8l6BOH77EZ72D5nZbOadJIC3GLQzG15CXYSsMgsm
 sgNViV3LxXOxd1HV2d2gb5zuMfffJTIdCm9rVQRxRkYG0DcSqrMya65lRcSP5s8YK8koxj/vr
 Zzdnh5nlKemkguEGKl66QgmDSkVlurGS09ur2l88waZq7CrpC9OvC0nX4Bcf4n407JigMiLxk
 ekpX2rwe9xqx/PTcmjT0+UGPfo+d3C+6YwFZ5IV5eg9ZqKKHfM8GIWXMorecFX3JYk7CzLwwS
 pX8JzpZdtrpe0/jOiVjzkZYiz7WMb2exfnbVznnLCCnBFVJv1XPzY0y4grMLZmBidzrZlhFuR
 lw62f+8cxZLFPwee09a25jVhuMxTH/rpOw3cD7E6IhgiyvuLT5aaZz+pWzDAla2KY8e3Cu+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_084257_497977_7B145849 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============3714178350569736948=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3714178350569736948==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=xsNkeeBjMYQ/aD=-="

This is a multipart message in MIME format.

--=-=xsNkeeBjMYQ/aD=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

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

Interesting file this lantiq_dsl.sh ...

I'm wondering whether all of this really need to be in this file, or whethe=
r stuff can be moved to the package actually dealing with it?
This might also make it easier to change it when necessary.

Adrian

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

--=-=xsNkeeBjMYQ/aD=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7o6HMACgkQoNyKO7qx
AnBBhA//To2VBTthdstJc8GZdAHprbS7CWISd2yuTCYhuWtDB1w/FZb08WtfRTwX
Wc61dPNWnvBJbYh95LcI83B8cEdVmbvSeMrkGzbaOgXcxRFHcsirOWaXu3unSxuj
ZUs+CBRiphCQCceTwwZJ2DJ+87kPJIKX6GGUFeRi0ha7PPz8ygq3yZRDUYvfzmhe
hovk6ehYohS8iuR1TM4kC5KDTPOHPpamC9i2e7UOU6v+dou6sRXiYG96sqt35TH7
jKb4pxFlS86g7zSn8OKjLEJgeaX6baXtphi4H+q+pC2QMm0z/bzMC4hcNPT4F1s3
OJ4FvAYtDo3vq7Rq088BG6ipq/ukKsZlsND2UP5vsLJoIdNKHd76J09/NG0e+oui
PT9IlnduGK1rT4bKFcTJ0rqtMDU9xF6hcHKzsTeJpwrBeYUmUQRn8YhwRRkxcPCF
FgRc6/h6fQGI2AUw/ibZmxnsuXuMYFRVpT8sZUC+VQqR4HKMh69s7BllsmXA09JO
yWeFScZi3swh34ZHcO258beT0wNOFBXOZJjKVOHiAahWReBPC8u5PKerAX/PR813
4Ehg7yOKhOQyjIyMuqQ4L5aF4HkwaPa4V+runsxYoBmwILgEtxrv10N6Jrd/dX2T
EGkwv7CPwM3Nmzy973e5nH3Xtiz4nJvgCoWKG/5Js0FvNNIZJyc=
=qj7I
-----END PGP SIGNATURE-----


--=-=xsNkeeBjMYQ/aD=-=--



--===============3714178350569736948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3714178350569736948==--


