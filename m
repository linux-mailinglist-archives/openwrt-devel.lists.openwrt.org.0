Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA931AD8F8
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 10:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rsQD2y1zXY91QYwmsed33Ol08Oj4thnmHWGIXmcf85Y=; b=AUvqI154P++VSGhVHbHCJtPyK
	aP6B2R/DNMP8QfTlCil33t6J7ec4ojOu27u6CNK4HC2aAryeJxdaMPqacX6ihteywz1L6SorRakYZ
	J/288v7TSCQV1kCwdA0dEvHQbaNEfugax1JEIgsBTwRZ7WmSHVTUFnWt3I5iMIaoePPm5K8pfipgW
	n56VU915Z4xFnY/cLZPWswUzARiP00RnV5jiO80t4/keEMCC2bFWKKNZaWHHjHyfogwlH7NaXL/zm
	NEZYuJXIchE3T6dXkLzfOVMn9vHMo2J4kBFqbq4ArDJ5jkOOaRz77FPE04pGZ1BGFKSxloKKwtjqP
	rVWO5Grmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMi7-0007mi-0U; Fri, 17 Apr 2020 08:50:55 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMhq-0007Rn-4A
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 08:50:40 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MLyzP-1jgcRM0ayf-00Hw5I; Fri, 17 Apr 2020 10:50:33 +0200
From: <mail@adrianschmutzler.de>
To: "'Rosen Penev'" <rosenp@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200414233728.2519084-1-rosenp@gmail.com>
In-Reply-To: <20200414233728.2519084-1-rosenp@gmail.com>
Date: Fri, 17 Apr 2020 10:50:32 +0200
Message-ID: <00ef01d61495$41440df0$c3cc29d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGJsds/u4RarFY5YXCjLtk/t/vjLKkVxbhQ
X-Provags-ID: V03:K1:tUfj8mMls2tw4Ops9FfjyCAw03oeOlR72pUBF9C7SnnhYE216HG
 OlZVRc03abw/8dgnt2Ya+jH2eIILkCKB8q+fInX0Bi1WkT9+Vb9Fu5igLHbHrMNUJjm+xco
 dEZU8/TA7GPdzE5ZI3HqDPOOfqx8Tne35vm3X0aX1opDF0f3wt2q+uIOKoHCGYbopz8GTDz
 vG+Qx6wUERcNN1jqB5gSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NnXOY8gVuxM=:sc6WQkHgRKz/8E3q8GYDYP
 Ih8Od/+Q45vY7YjvnSg0ff8K6jW/LN0vrmZgjl8uqXWjmvvx7hT+VvWsr67hhwDIKp3fMemAP
 AOxGsAt28s1RZjE2aFcIEgI5jmDyILGfXYw7iUuiogBHqXxEXmeFP+6UBjJCUfYKoHdkArwTq
 ua/0BVChxfxGTQfV594uxZ79EYwZE8d+4t7mvsYD5tzwBX9QWjL3s7JC36lzyONJApwVJ3D6k
 nVrJfdE1O5YmccxPd8+S5lYvlBETnm2LhJUJJMMJSb85E1g7qMxKy+PT7SueU+pY3GZZZDaHp
 uMe23y+bTAEWUuKkdrZ6ZhFjFAbfhV2K0HpGe8gIaCkFbv+H8kS55JidGeXhD4PDDBo4EqZQt
 hy7SSjEWRaYG6B58BIk220CvH2omSAdgGtAMba4bmYfTGjtl9jsV03vYonUqjsrWoearxM0sj
 vi4HPSNkNc06fjgz9iWBO0CVzE84Q4By+VmMb6PuM0C6/0B0RZFK2EsqDs3EWowZwLama9Adj
 Mf82c53kt+SjeaupFfAkhg/5DsRfohiDXlNi/46/fPiLoQ/D5zsguZv3AYlVBiRMwKjcU0TFO
 Iv+AquXYyEg3AAV4YEJz79oTL9TpnbspzrWYpBX6PtxGmgPDzmZ5a525AYkF94Qf4QhlCoZU+
 zgkocMSiq2drlJ+2u7gammJDeR+J/sgPHqyZBQ4hIsoBanj3dd+gwdtLLNNXhhN1Qa9LTwJey
 wTNirthBXYjct6DzLXlAqRoDvP7S/AHo0nxu6k7ibzI4m0SkxMIC+eVraycs8dL80NfOWB54C
 yrBlHzPcu6qIKE/qbINl+KVcc3HS2tOJuzpiV+Ek7TbQ71lrD5KZ9l58RmClUMh9l8A8Bqt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_015038_500659_E66A71E1 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCHv3] ubox: run init script through
 shellcheck
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
Content-Type: multipart/mixed; boundary="===============0116129678429715976=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0116129678429715976==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=hLfawKZC5ydJsA=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=hLfawKZC5ydJsA=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Rosen Penev
> Sent: Mittwoch, 15. April 2020 01:37
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCHv3] ubox: run init script through shellche=
ck
>=20
> Warnings fixed:
>=20
> SC2004: $/${} is unnecessary on arithmetic variables.
> SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
> SC2086: Double quote to prevent globbing and word splitting.
>=20
> Removed most usages of ${} with $. There's no need for it. ${} is mainly
> useful with substrings and arrays, which are not used here.
>=20
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  v3: Added quoting fixes.
>  v2: Fixed mistake with executing PIDCOUNT.
>  package/system/ubox/Makefile       |  2 +-
>  package/system/ubox/files/log.init | 32 +++++++++++++++---------------
>  2 files changed, 17 insertions(+), 17 deletions(-)
>=20
> diff --git a/package/system/ubox/Makefile
> b/package/system/ubox/Makefile index cfa0b594e4..3970a4fc9c 100644
> --- a/package/system/ubox/Makefile
> +++ b/package/system/ubox/Makefile
> @@ -1,7 +1,7 @@
>  include $(TOPDIR)/rules.mk
>=20
>  PKG_NAME:=3Dubox
> -PKG_RELEASE:=3D3
> +PKG_RELEASE:=3D4
>=20
>  PKG_SOURCE_PROTO:=3Dgit
>  PKG_SOURCE_URL=3D$(PROJECT_GIT)/project/ubox.git
> diff --git a/package/system/ubox/files/log.init
> b/package/system/ubox/files/log.init
> index 250f805b44..4873a24472 100644
> --- a/package/system/ubox/files/log.init
> +++ b/package/system/ubox/files/log.init
> @@ -32,19 +32,19 @@ validate_log_daemon()
>=20
>  start_service_daemon()
>  {
> -	[ $log_buffer_size -eq 0 -a $log_size -gt 0 ] &&
> log_buffer_size=3D$log_size
> -	[ $log_buffer_size -eq 0 ] && log_buffer_size=3D64
> +	[ "$log_buffer_size" -eq 0 ] && [ "$log_size" -gt 0 ] &&

I'm never sure whether a comparison [ "$string" -eq 0 ], i.e. one with quot=
es and one without using -eq works as expected in all cases.
I typically use [ "$string" =3D "0" ] instead, but I'm not sure whether tha=
t's effectively just the same.

Rest seems fine, despite some similar cases with -eq/-ne below.

Best

Adrian

> log_buffer_size=3D"$log_size"
> +	[ "$log_buffer_size" -eq 0 ] && log_buffer_size=3D64
>  	procd_open_instance
>  	procd_set_param command "/sbin/logd"
> -	procd_append_param command -S "${log_buffer_size}"
> +	procd_append_param command -S "$log_buffer_size"
>  	procd_set_param respawn 5 1 -1
>  	procd_close_instance
>  }
>=20
>  start_service_file()
>  {
> -	PIDCOUNT=3D"$(( ${PIDCOUNT} + 1))"
> -	local pid_file=3D"/var/run/logread.${PIDCOUNT}.pid"
> +	PIDCOUNT=3D$((PIDCOUNT + 1))
> +	local pid_file=3D"/var/run/logread.$PIDCOUNT.pid"
>=20
>  	[ "$2" =3D 0 ] || {
>  		echo "validation failed"
> @@ -52,34 +52,34 @@ start_service_file()
>  	}
>  	[ -z "${log_file}" ] && return
>=20
> -	mkdir -p "$(dirname "${log_file}")"
> +	mkdir -p "$(dirname "$log_file")"
>=20
>  	procd_open_instance
>  	procd_set_param command "$PROG" -f -F "$log_file" -p "$pid_file"
> -	[ -n "${log_size}" ] && procd_append_param command -S "$log_size"
> +	[ -n "$log_size" ] && procd_append_param command -S "$log_size"
>  	procd_close_instance
>  }
>=20
>  start_service_remote()
>  {
> -	PIDCOUNT=3D"$(( ${PIDCOUNT} + 1))"
> -	local pid_file=3D"/var/run/logread.${PIDCOUNT}.pid"
> +	PIDCOUNT=3D$((PIDCOUNT + 1))
> +	local pid_file=3D"/var/run/logread.$PIDCOUNT.pid"
>=20
>  	[ "$2" =3D 0 ] || {
>  		echo "validation failed"
>  		return 1
>  	}
> -	[ "${log_remote}" -ne 0 ] || return
> -	[ -z "${log_ip}" ] && return
> -	[ -z "${log_hostname}" ] && log_hostname=3D$(cat
> /proc/sys/kernel/hostname)
> +	[ "$log_remote" -ne 0 ] || return
> +	[ -z "$log_ip" ] && return
> +	[ -z "$log_hostname" ] && log_hostname=3D$(cat
> +/proc/sys/kernel/hostname)
>=20
>  	procd_open_instance
> -	procd_set_param command "$PROG" -f -h "$log_hostname" -r
> "$log_ip" "${log_port}" -p "$pid_file"
> -	case "${log_proto}" in
> +	procd_set_param command "$PROG" -f -h "$log_hostname" -r
> "$log_ip" "$log_port" -p "$pid_file"
> +	case "$log_proto" in
>  		"udp") procd_append_param command -u;;
> -		"tcp") [ "${log_trailer_null}" -eq 1 ] && procd_append_param
> command -0;;
> +		"tcp") [ "$log_trailer_null" -eq 1 ] && procd_append_param
> command
> +-0;;
>  	esac
> -	[ -z "${log_prefix}" ] || procd_append_param command -P
> "${log_prefix}"
> +	[ -z "$log_prefix" ] || procd_append_param command -P
> "$log_prefix"
>  	procd_close_instance
>  }
>=20
> --
> 2.25.2
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=hLfawKZC5ydJsA=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6ZbdMACgkQoNyKO7qx
AnCIHg//V/Hgn+7vEj9A6xfFBsCriwnCtx6L5oDUFjjf4D3ZNUeLvKTSFhxXgIWX
i5I6ak28CNtmt7rL7Li8SSJp01oCHVLavHjP8lNxyV/njuilR5zWJ8PtFWhr9CZR
NamPrA++cTQTC9J1Ej9FH+f+Jfp+90iZOE5K1RE4fKWxM7kQle1b1MI6aZp3uaV2
1ueN+PuUsPKKcvytjGHbIR3zJATZhfGOSHWVhM0X2S8e8FzZXR2ks+wEHQCX9t7e
fQSdhpgovk8FPMYTTyztJjYghZHlHeAOXvtBEXtuEmwrjO8hQDwRTlP89nvzyREx
U6bqeDPRiQ8QtmudnZ4Hra57vF+2UXWYMrgdOgAetR+qZ+fcJLSK6BWglAl3uUCw
zTIjsoWo64SMSJaqNUfiFmysRbzwO2NmeVn9vqyYcbh8ebZ8OBGUzCYdC8ZP2rsW
5ifdMxjG903h9LmGYZ19rPExMMNywOiXgxnl340BjdFM4BZTv0ODX552Ln29QVGO
wvf4IqTB4Q520Rza165mi0w1E/2kVsVFWECZIW7kktEQcc16GKeBZ7VLvXoH3r8y
Cv4xvx+qSJqAS+8sNgAHn38GnkNs0VP5Hbl9NWV7Il1osVlJnyNlRyoY8KHCrO6e
tIF3G1VRwdsXxJptZgt9AI/bh7f+TmR9pIHZXQnm+DRIP5qFu3c=
=NkAI
-----END PGP SIGNATURE-----


--=-=hLfawKZC5ydJsA=-=--



--===============0116129678429715976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0116129678429715976==--


