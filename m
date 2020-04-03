Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B3A19D979
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 16:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GM+SOXdvgloKjrZOOrrjnNkEpw58B9UzjY2cK3exozo=; b=met6TjM5geIf7udjpIBmzukz3
	/Da851kaW7y3RQqFbKbvD+McELnCNavDuZpmUdzitum+DBKDxaXJNo7QR46dT1LgNjvNCkncsYdgV
	pHwmpNpc4eCnwOtViWC2OjEU34z0gx8mIyZO1F5BeBem6L0AP5tlJMvjy+5694LVm2s+8s45ISa+y
	cJbCGVFwhNKCF976mlvnZxiedqTcimXSYxw6rwephXB5tO+B7iXQhJlc3vMouY3TzcnxLnX0s7+qe
	tV2magPC7sU/fMMm999aUBBe8oJJWcKI+yN+Z6GGoVcv2oCDa20kqmD0Fah0CknBDO99hezlWi1Oc
	xb2ZW6T2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKNeT-0003jE-Fr; Fri, 03 Apr 2020 14:50:33 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKNeL-0003id-JI
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 14:50:27 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M1Hi8-1jM1XV3Udu-002kwo; Fri, 03 Apr 2020 16:50:19 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <zajec5@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20200403142930.10236-1-zajec5@gmail.com>
In-Reply-To: <20200403142930.10236-1-zajec5@gmail.com>
Date: Fri, 3 Apr 2020 16:50:19 +0200
Message-ID: <017401d609c7$3223b0b0$966b1210$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQLiJGE3dI0sAQvZq0zlaLTqeMCW16ZPRHQw
Content-Language: de
X-Provags-ID: V03:K1:BUPU8QsF32YW4dO6EszFQJdkNYi7c/gI8j2E77qLn/g7SMbXI+J
 4vxVo5tugLG7wxS04hS2gOYBpr64zL4tlyvgLNf7+H0A34FqYRCiH2wCLvCE73ukzviJuZN
 gAyZ+ZB6G3Ti8pHjyBAOHYL28f1mOpeK42wkq+diKyLNqnLbSimCJypwyrv0S7R6Wmt8/wl
 +Xz0ioDDynbV42Y/Edr3g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4N8rR4MMPEM=:kfB46oBJcRC3YYoiBQtQ3D
 lsTtRxnWoM6hLSXVHXxI9kL9/E4ctJcRPc0QWC14GGteP1eFGxLoKHQENKPIudyXtd32PZIpc
 czUIYsrNliEoUB//c69hViWntOkbFyplYXHgvs30iCoaF9nKwTBxbM92h2B3aihdPphP9r/8G
 qGyWVlWTZvR9duZ5LunerpKg96gjuq2kHPiA7iN9MGH++Or2N42bgufhuttY2TIp0h4XIato+
 oQNtvtHfVU/7ZsWGYGK94VKCxwWuz2PakKUYvR4ZORgfn+oTfHnNuNAxoOR9zRWCbCWTz+GHJ
 6jsdAnCg8CWbhOo4M/GMur17KwaP7nOi2FDNGPMV/3gW/3nobMeeriVGYJbvLrU9QuDF30jW5
 nYVZeJubXjcW5F2MZZNqdmHA7MeaMAmV97oJvASjQU3K8p++ItfCMsq2KtcS8E17w98ixcDA5
 2AEOKXzU6+WauFcTdvmzocrpwf7dqQES6nibHaScC8lnP2EK0Z6kZezKPg24JQaZITwpBkJ/N
 N14F5kMwQJ+ximwKJrlGEvyHfTWyTDOPU3fZeX+dcverGpLfx6eKM/WYQUX4Z9eohub780tos
 tidA/ycdL1wX8P3wlAekxJo21xJtRsXV4zx1vyBs13eoS0lWY26WrXUdapvaDw6JK43dS2UWO
 CJ/pmQlvDlOGb7NXTFlyuRoAUzIYuMOSdMNunpfSrR08IVk8/Y2lkfNYMEzYcf20jEfNpZycE
 y9rcP+iYMdDqjLYyj7QJHHHpQfSPnqzoRpVXKbnOrr8H6PWvxIDK7lYgNaUhcvbFL4S1hl4zR
 8fb7Xp8n3MAKHUIOXOdxh7ibXpNAgPY4Xfa+FgO/YyBMoSFnuugSSA5NM6ZsukjEI2ViT4U
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_075025_936007_8B232FD4 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: reorder board.d code in
 02_network
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
Cc: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <rafal@milecki.pl>
Content-Type: multipart/mixed; boundary="===============4750037683526849490=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4750037683526849490==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=4O9KFcvllpEwev=-="

This is a multipart message in MIME format.

--=-=4O9KFcvllpEwev=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rafa=C5=82,

Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

One comment inline below.

You may also consider using the similar "function-style" approach used in a=
th79, ramips, ...:
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/generic/b=
ase-files/etc/board.d/02_network

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Rafal Milecki
> Sent: Freitag, 3. April 2020 16:30
> To: openwrt-devel@lists.openwrt.org
> Cc: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Subject: [OpenWrt-Devel] [PATCH] bcm53xx: reorder board.d code in
> 02_network
>=20
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Reorder existing code so that:
> 1. Switch config gets handled first
> 2. WAN interface generic code gets always executed
>=20
> Before this change WAN interface code wasn't executed on all devices due
> to early "exit 0".
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  .../bcm53xx/base-files/etc/board.d/02_network | 98 ++++++++-----------
>  1 file changed, 41 insertions(+), 57 deletions(-)
>=20
> diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network
> b/target/linux/bcm53xx/base-files/etc/board.d/02_network
> index 9fd26e72f4..f9cedff5b5 100755
> --- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
> +++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
> @@ -10,50 +10,79 @@ board_config_update
>=20
>  board=3D$(board_name)
>=20
> +# On BCM4708 / BCM4709(4) there are 3 Ethernet interfaces connected to
> +3 switch # ports. It's up to vendor design which to use.
>  case "$board" in
>  tenda,ac9)
>  	ucidef_add_switch "switch0" \
>  		"1:lan" "2:lan" "3:lan" "4:lan" "8@eth0" "0:wan" "5@eth1"
> -	board_config_flush
> -	exit 0
>  	;;
>  buffalo,wxr-1900dhp| \
>  buffalo,wzr-1750dhp)
>  	ucidef_add_switch "switch0" \
>  		"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan:5" "5@eth0"
> -	board_config_flush
> -	exit 0
> +	;;
> +dlink,dir-885l | \
> +netgear,r7900 | \
> +netgear,r8000 | \
> +netgear,r8500)
> +	# NVRAM specifies port 8 (eth2) - unsupported by OpenWrt b53
> +	# Use port 5 (eth0) as workaround
> +	ucidef_add_switch "switch0" \
> +		"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5t@eth0"
> +
> +	# As vendor doesn't use eth0 its MAC may be missing. Use one from
> eth2.
> +	et2macaddr=3D"$(nvram get et2macaddr)"
> +	[ -n "$et2macaddr" ] && ucidef_set_interface_macaddr "lan"

Though this is not the wan address, I'd move this to the "MAC section" belo=
w to have all MAC address assignments together, like it is done on others t=
argets.

Best

Adrian

> "$et2macaddr"
>  	;;
>  luxul,abr-4500-v1|\
>  luxul,xbr-4500-v1)
>  	ucidef_add_switch "switch0" \
>  		"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5@eth0"
> -	board_config_flush
> -	exit 0
>  	;;
>  phicomm,k3)
>  	ucidef_add_switch "switch0" \
>  		"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
> -	board_config_flush
> -	exit 0
> -    ;;
> +	;;
> +*)
> +	# NVRAM entries may contain unsorted ports, e.g. Netgear R6250
> uses
> +	# vlan1ports=3D3 2 1 0 5*
> +	# vlan2ports=3D4 5u
> +	# and early Netgear R8000 was using
> +	# vlan1ports=3D3 2 1 0 5 7 8*
> +	vlan1ports=3D"$(echo $(nvram get vlan1ports | tr " " "\n" | sort))"
> +	vlan2ports=3D"$(echo $(nvram get vlan2ports | tr " " "\n" | sort))"
> +	if echo "$vlan1ports" | egrep -q "^1 2 3 4 5" && \
> +	   echo "$vlan2ports" | egrep -q "^0 5"; then
> +		ucidef_add_switch "switch0" \
> +			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5t@eth0"
> +	elif echo "$vlan1ports" | egrep -q "^1 2 3 5 7" && \
> +	     echo "$vlan2ports" | egrep -q "^0 7"; then
> +		ucidef_add_switch "switch0" \
> +			"1:lan" "2:lan" "3:lan" "5:lan" "0:wan" "7t@eth1"
> +	elif echo "$vlan1ports" | egrep -q "^0 1 2 3 5 7 8" && \
> +	     echo "$vlan2ports" | egrep -q "^4 8"; then
> +		ucidef_add_switch "switch0" \
> +			"0:lan" "1:lan" "2:lan" "3:lan" "5:lan" "7:lan" "4:wan"
> "8t@eth2"
> +	else
> +		ucidef_add_switch "switch0" \
> +			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5t@eth0"
> +	fi
> +	;;
>  esac
>=20
>  wan_macaddr=3D"$(nvram get wan_hwaddr)"
>  case "$board" in
>  asus,rt-ac87u)
> -	ifname=3Deth1
>  	etXmacaddr=3D$(nvram get et1macaddr)
>  	;;
>  dlink,dir-885l | \
>  netgear,r7900 | \
>  netgear,r8000 | \
>  netgear,r8500)
> -	ifname=3Deth2
>  	etXmacaddr=3D$(nvram get et2macaddr)
>  	;;
>  *)
> -	ifname=3Deth0
>  	etXmacaddr=3D$(nvram get et0macaddr)
>  	;;
>  esac
> @@ -61,51 +90,6 @@ esac
>  # If WAN MAC isn't explicitly set, calculate it using base MAC as refere=
nce.
>  [ -z "$wan_macaddr" -a -n "$etXmacaddr" ] &&
> wan_macaddr=3D$(macaddr_add "$etXmacaddr" 1)
>=20
> -# Workaround for devices using eth2 connected to (CPU) switch port 8 -ca=
se
> "$board" in -dlink,dir-885l | \
> -netgear,r7900 | \
> -netgear,r8000 | \
> -netgear,r8500)
> -	ifname=3Deth0
> -	ucidef_add_switch "switch0" \
> -		"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5t@$ifname"
> -
> -	# These devices should use eth2 so their eth0 interface often has no
> MAC
> -	# assigned. Manually assign eth2's MAC to the LAN.
> -	et2macaddr=3D"$(nvram get et2macaddr)"
> -	[ -n "$et2macaddr" ] && ucidef_set_interface_macaddr "lan"
> "$et2macaddr"
> -	[ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan"
> "$wan_macaddr"
> -
> -	board_config_flush
> -	exit 0
> -	;;
> -esac
> -
> -# NVRAM entries may contain unsorted ports, e.g. Netgear R6250 uses -#
> vlan1ports=3D3 2 1 0 5* -# vlan2ports=3D4 5u -# and early Netgear R8000 w=
as
> using -# vlan1ports=3D3 2 1 0 5 7 8* -vlan1ports=3D"$(echo $(nvram get vl=
an1ports
> | tr " " "\n" | sort))"
> -vlan2ports=3D"$(echo $(nvram get vlan2ports | tr " " "\n" | sort))"
> -if echo "$vlan1ports" | egrep -q "^1 2 3 4 5" && \
> -   echo "$vlan2ports" | egrep -q "^0 5"; then
> -	ucidef_add_switch "switch0" \
> -		"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5t@$ifname"
> -elif echo "$vlan1ports" | egrep -q "^1 2 3 5 7" && \
> -     echo "$vlan2ports" | egrep -q "^0 7"; then
> -	ucidef_add_switch "switch0" \
> -		"1:lan" "2:lan" "3:lan" "5:lan" "0:wan" "7t@$ifname"
> -elif echo "$vlan1ports" | egrep -q "^0 1 2 3 5 7 8" && \
> -     echo "$vlan2ports" | egrep -q "^4 8"; then
> -	ucidef_add_switch "switch0" \
> -		"0:lan" "1:lan" "2:lan" "3:lan" "5:lan" "7:lan" "4:wan"
> "8t@$ifname"
> -else
> -	ucidef_add_switch "switch0" \
> -		"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5t@$ifname"
> -fi
> -
>  [ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan"
> "$wan_macaddr"
>=20
>  board_config_flush
> --
> 2.25.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=4O9KFcvllpEwev=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6HTSgACgkQoNyKO7qx
AnBoNhAAg1KE/q0gCq7GTxv2slqsPudcL13490y/yeZaT5B4BzVWK9BlKB7lkXEs
+koQTThPK1ppF7MVFBt0wJqsZRFptdguCaeI5IzkRQ11dM2cWcRo9Eax6r6nM9IQ
WE1pOucRXiBrmuPIRZjAqYdVs+88w5FY5/4BwSO0Tt8ey1Elx52ADV2uSx0c44DJ
tTJJK6kbxraMf19m3XL+XEDjOp5bkaaVHsaqHV1bSKSPTS1DsBo8sxNvfqWCf8a0
wA6YZ+u57cu0+bj0E45DnDuyrMUktJBSa0JXkYgvkipkzZ2SSQ/XbDzWLUOkvW2e
HW+msn+EyosJ6dnD3aFpHFNRtz5PxknQqEr/3Hb0GnysegjQB9DLKqZ1JxFzBRe8
WUwH8H5pT2w5PDOLT5qQwXDVqj1b6ljdj1wIOsA1rnVlj37iCmMixOFa0+Rke7uI
6+FXAUfersiV8MeMrUBXKo6MQQYok04yYHlTnTr1KEh9/Ikoqp4nmj2OTBGUCqnf
F8k+zEiQAuji0nnHAvPYLPnmSgjMZZXu2Qj+ex/ZKJZGq044ccfegHIN/vGruhhb
h1WFoeI0Z8a3CyRikRil4yCGOt/qyynGCC2NxVSFEvfkvtbqpNtze64lzHG7MMza
02hKxhyeeihSJLa/bJLiujh0HN0+PKk1MAJnjEBis/XpndIWbqY=
=UsUM
-----END PGP SIGNATURE-----


--=-=4O9KFcvllpEwev=-=--



--===============4750037683526849490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4750037683526849490==--


