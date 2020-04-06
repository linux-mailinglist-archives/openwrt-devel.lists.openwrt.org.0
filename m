Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6679019FE2C
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 21:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/fYxt4aNJibBhxyXaQuJSvNHkrdDadEFFa2f2+roXso=; b=EDdTjfWbIbXbqtOqYTDDr4tXj
	sCCqaqUKjCvchZJzpV9XAHGbJWRaDj3HZkP3dGGWDyFkXFkaEzu1IZlwmufAFkqmHrjaeJE+3E2Gn
	4hpS+wjG0uBQP+CyGFAeLOlnL6gDtWQjoGRShrJAttd96C0+517inBZxpITHWv7ORDRG3SER+l2SI
	39CjiholvTy2gtW3u6NUYak2v7KhU/isEjeT9sbx54xRkkRV2byQVQSr4RjXV+SFCEeLTFAoee55e
	DeE0zoYMcsJOOkdNBwSnJyDBDVuOpXFDrB4+PCZSHeYFhSZJpc+fJ3toNf3vJE208f+5zNof1VuOt
	9Nqv486aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLXat-0000Dj-MJ; Mon, 06 Apr 2020 19:39:39 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLXal-0000DB-F0
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 19:39:33 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N5max-1jE6oX0nTn-017CyN; Mon, 06 Apr 2020 21:39:26 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <zajec5@gmail.com>,
 "'Dan Haab'" <riproute@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20200406182013.86147-1-dan.haab@luxul.com>
 <02a601d60c40$e233bc90$a69b35b0$@adrianschmutzler.de>
 <c0d8fd9b-3755-369d-ab58-889664fb4228@gmail.com>
In-Reply-To: <c0d8fd9b-3755-369d-ab58-889664fb4228@gmail.com>
Date: Mon, 6 Apr 2020 21:39:25 +0200
Message-ID: <03a001d60c4b$14a18ae0$3de4a0a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQK/sri+4nxZHBxv4LxIBrb46zzEAwGlaMJpAopnAummd69mQA==
Content-Language: de
X-Provags-ID: V03:K1:5o8/NeQRcjLE6RMHD32gm4ORxjSXlhPdOJmosTE2wu+L6ED0yaF
 6gBHCFsg2pGgsDb3r+5wxUfFYSZd7lR3i2Q2Vr55fHl31q7LvcsKUKqqIDkRdLtqCRF0IiF
 W3pS64FSnxv8zEG/xBIwu0nsf9IhMv1MQAM69AvYFbOCYIXlq45JYv66Q9eCrYwkqUmgVu+
 n7VZ3U0GaXUtp1UW5cTcQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xZdJVEtY5n8=:VekD7Vwfb3/1AoFTW4+cbJ
 dIr8fERUl/V1Biw+5AYjEJYJ2K43vYelj/eaT2t9sfDqHY9hWRjOmbc9SZ5bKhAp2K5R2fyCz
 8v3rnNR4OoRz/HLaoJwdDH5EOK62zh8GmJaZH1T2qZJynvazKdJ4UYWB9d73X3m2Uf8Dx54Bu
 BsPM/lrF5EK09If7cPybsZZhcpmZDkx+neRjgSP+PhAr/14ObwAp/FLoOMWMZmsM61osVak5Y
 /Ox7bmApHeCSPlgGhlX+0dHksPhhq1jsjqleOYz8e/bXuqw/RxiDvXnyOEhU+Uc7GGfxg1pv8
 3Wuz7/yQevcGPZG2zoFKTGyst+brLRcOTm5knzi+HkwBk6e71n/zpL0e4/tPVa+B11ZMsGHAd
 T96nck5M4/YzHq0N2NwSf1OrX4C0wvVCr/eB6fxOkDhvAOVE+B1yL5S40PksOZX/707QJpl6J
 GpsNIX0JNnbPNvjeRMBGpbhGlRdz02hAlanc7UeB62t94FsdCQaZHkogiTFvJUN7Hd7I96BuY
 852AzoSshFyzRvUKn6KkbDtBXU1qhDdia9DrIeRVfuQZZHbeJte+buv5HV84Adm+PU6lQKSUs
 ri2qpl+E9J8SqksYJCJ4hm+P5VDpDf2b/67u8bZFJru5cdtse6Nrvd8uRRXTsdtWGJGqhi5Gu
 l7/CsL79yQylmf/lwheBqVILLAL+xLACmXsZIuAGrpUH0kMALWLdxkitWCqvb9TTWh6Bzg8UH
 yCpX4U9xwmP1vO5n8qtBrZav7N+AcZVXmZ/tT2dBP4RBzWF9FvxCNr8YAtclFApTD6D4EP4eq
 DjIPST2/Mup4p5j1AcKNw61/oPadMNKLGXMfxiEvVejqqBNEyLNOr+HPpaWpf1kCWpiI56y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_123932_036293_7E1A9AFD 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============6287328766375252404=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6287328766375252404==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=SrycPRuctal/yK=-="

This is a multipart message in MIME format.

--=-=SrycPRuctal/yK=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Rafal Milecki
> Sent: Montag, 6. April 2020 21:26
> To: mail@adrianschmutzler.de; 'Dan Haab' <riproute@gmail.com>; openwrt-
> devel@lists.openwrt.org
> Cc: 'Dan Haab' <dan.haab@legrand.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul
> FullMAC WiFi devices
>=20
> On 06.04.2020 20:26, mail@adrianschmutzler.de wrote:
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Dan Haab
> >> Sent: Montag, 6. April 2020 20:20
> >> To: openwrt-devel@lists.openwrt.org
> >> Cc: Dan Haab <dan.haab@legrand.com>
> >> Subject: [OpenWrt-Devel] [PATCH] bcm53xx: add support for Luxul
> >> FullMAC WiFi devices
> >>
> >> From: Dan Haab <dan.haab@legrand.com>
> >>
> >> This prepares support for models XAP-1610 and XWR-3150. Flashing
> >> requires using Luxul firmware version:
> >> 1) 8.1.0 or newer for XAP-1610
> >> 2) 6.4.0 or newer for XWR-3150
> >> and uploading firmware using "Firmware Update" web UI page.
> >>
> >> Signed-off-by: Dan Haab <dan.haab@legrand.com>
> >> ---
> >>   .../bcm53xx/base-files/etc/board.d/02_network | 22
> >> ++++++++++++++++++-
> >>   target/linux/bcm53xx/image/Makefile           | 18 +++++++++++++++
> >>   2 files changed, 39 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network
> >> b/target/linux/bcm53xx/base-files/etc/board.d/02_network
> >> index f86f12407f..9256cbdc54 100755
> >> --- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
> >> +++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
> >> @@ -36,6 +36,15 @@ bcm53xx_setup_interfaces()
> >>   		ucidef_add_switch "switch0" \
> >>   			"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
> >> "5@eth0"
> >>   		;;
> >> +	luxul,xap-1610-v1)
> >> +		ucidef_add_switch "switch0" \
> >> +			"0:lan" "1:lan" "5@eth0"
> >> +		ucidef_set_interface_lan "eth0.1" "dhcp"
> >> +		;;
> >> +	luxul,xwr-3150-v1)
> >> +		ucidef_add_switch "switch0" \
> >> +			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan"
> >> "5@eth0"
> >> +		;;
> >>   	phicomm,k3)
> >>   		ucidef_add_switch "switch0" \
> >>   			"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
> >> @@ -100,7 +109,18 @@ bcm53xx_setup_macs()
> >>   	esac
> >>
> >>   	# If WAN MAC isn't explicitly set, calculate it using base MAC as
> >> reference.
> >> -	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] &&
> >> wan_macaddr=3D$(macaddr_add "$etXmacaddr" 1)
> >> +	[ -z "$wan_macaddr" -a -n "$etXmacaddr" ] && {
> >> +		local offset=3D1
> >> +
> >> +		case "$board" in
> >> +		luxul,xwr-3100v1 | \
> >> +		luxul,xwr-3150-v1)
> >> +			offset=3D5
> >> +			;;
> >> +		esac
> >> +
> >> +		wan_macaddr=3D$(macaddr_add "$etXmacaddr" $offset)
> >> +	}
> >
> > This adds another level of nesting. I'd prefer if you just added your
> > devices to the case directly above and just use
> >
> > [ -n "$wan_macaddr" ] || wan_macaddr=3D$(macaddr_add "$etXmacaddr"
> 5)
> >
> > for them there.
>=20
> We cannot do that, because the lower
> [ -z "$wan_macaddr" -a -n "$etXmacaddr" ] &&
> wan_macaddr=3D$(macaddr_add "$etXmacaddr" 1) will overwrite what Luxul-
> specific one did.

No, it won't, because wan_macaddr won't be empty then (checked by -z)?

>=20
> What about having offset set by device specific code? Like:
>=20
>=20
> etXmacaddr=3D$(nvram get et0macaddr)
> offset=3D1
> case "$board" in
> asus,rt-ac87u)
> 	etXmacaddr=3D$(nvram get et1macaddr)
> 	;;
> dlink,dir-885l | \
> netgear,r7900 | \
> netgear,r8000 | \
> netgear,r8500)
> 	etXmacaddr=3D$(nvram get et2macaddr)
> 	;;
> luxul,foo)
> 	offset=3D5
> 	;;
> esac

That's a matter of taste. I personally don't like the multi-step assignment=
 at all, and would like to just set the wan_macaddr for every case directly=
 as it's done in ath79/ramips. For my taste, there are too many similar var=
iables flying around here, and I would reduce that to lan_macaddr and wan_m=
acaddr somehow.
However, if I understood your earlier comment on the tidy-up patch correctl=
y, the et.macaddr variables are a concept somehow specific to bcm53xx, and =
thus my version would not be logic/desirable here.

Thus, I leave the decision to you, as I'm not familiar with this target and=
 mainly doing drive-by comments here.
Still, you solution here looks tidier than the additional nesting introduce=
d in the initial patch.

>=20
>=20
> >>   	[ -n "$wan_macaddr" ] && ucidef_set_interface_macaddr "wan"
> >> "$wan_macaddr"
> >>   }
> >> diff --git a/target/linux/bcm53xx/image/Makefile
> >> b/target/linux/bcm53xx/image/Makefile
> >> index 610af03abe..b3ec1e99a2 100644
> >> --- a/target/linux/bcm53xx/image/Makefile
> >> +++ b/target/linux/bcm53xx/image/Makefile
> >> @@ -291,6 +291,15 @@ define Device/luxul-abr-4500  endef
> >> TARGET_DEVICES +=3D luxul-abr-4500
> >>
> >> +define Device/luxul-xap-1610
> >> +  $(Device/luxul)
> >> +  DEVICE_MODEL :=3D XAP-1610
> >> +  DEVICE_PACKAGES :=3D $(BRCMFMAC_4366C0)
> >> +  IMAGE/lxl :=3D append-rootfs | trx-serial | luxul-lxl
> >> +  LUXUL_BOARD :=3D XAP-1610
> >> +endef
> >> +TARGET_DEVICES +=3D luxul-xap-1610
> >> +
> >>   define Device/luxul-xbr-4500
> >>     $(Device/luxul)
> >>     DEVICE_MODEL :=3D XBR-4500
> >> @@ -299,6 +308,15 @@ define Device/luxul-xbr-4500  endef
> >> TARGET_DEVICES +=3D luxul-xbr-4500
> >>
> >> +define Device/luxul-xwr-3150
> >
> > Could you add a -v1 here as well?
>=20
> I see DTS file has "v1" in its name but does v2 exist at all?
>=20
> If there is not v2 and it's not planned right now I'm OK with filename wi=
tohut
> "v1".

If the rest of the patch is correct, the compatible has a -v1 as well (I ha=
ven't checked).

I'm generally looking for consistency here, but on the other hand the other=
 luxul-x... devices don't have a version suffix.
Though, again, this is not my playing ground, so feel free to ignore my com=
ments from the side.

Best

Adrian

>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=SrycPRuctal/yK=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6LhWoACgkQoNyKO7qx
AnCNjxAArzZisBQtlAMrwPh32ZJpmZd/EIygWR+ov73SBc6jTZNT/s73Vmm7mZja
ZUYpi8AT8R8rhFxYGxfRz2Xdq/HV2DafEihLhrSCWij9HWlAShbYY+byBauonpFg
/rChQpICxlNnA6EPcxnLZMA8OSJm4ptZll4/Qvfg5nKO0zkd3m9/ff5/01CHh90k
qUCFJfjoGWhSwzuCnLDEJavWIUkwjdPvpgEq0QHb5RfHXJAu9efT7CEsUZqfEUqp
NG3QQqAJ89TU6YobsG0Y3rOPDxqL2nP41i8U3ZkTx2Wu6+2ZpoJq2zAE8U97AxLt
1hF0yqFOVYds9ZgHBXEx3ggM5gMTsvz2naikCe1oC+qCDmA61l57exOKEIVJephd
Mdo7dJJ+MOW28OFVs3tqM2T5ydBFzUxtsQammAKjT4gUidThCKlQO+6dGrwfLiuY
24eaMAcItRtoMc9J2oasp0wiuuPI5Lngb7H7IGSe7rEWjwhjUFG26zp+8kc0kU35
U/vj4Dv1qWn5Hq+3k0tyyH94HLAy3MDkt/+lZDjEVQvp5TKm2U3KZVGUIPQJPV90
PyTgsq/Kg/wzMHDYpyY7QcvyDw46clP78ygVtyFGcfESiGeuVSAqN2O/Yzb2ZS2b
GoEvKujNVoqYmrFInTABD5LxSrroMwM5Rk6dxgmNluXM3atN7SA=
=wtB2
-----END PGP SIGNATURE-----


--=-=SrycPRuctal/yK=-=--



--===============6287328766375252404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6287328766375252404==--


