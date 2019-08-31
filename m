Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59FBA465C
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 23:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bCTAWmMpVUp20B0ymKHvrOwe/7MJlOlG/ADYXnKwjPE=; b=k+RFpN+PIh16LVBe8IH48nhQb
	yiinjAiFYaIM9eG7mXCB4intEulmQ1DyVsCCIUlbr7jG98seES0LcDG1kgyOBStiQAslqZeZktHOq
	ge6gkMfDWK1b6pG3gYxfYV/U6z3p97/LzEqfOgC39Wlshbw+xAlNHwJB51zw0InS/1ynUcuyUIpSO
	qaxMFxeXxC7JIRW8YSmSJcGbhrb+bMexz9wnlQkGtkqa+oRmsBYw17cLXvvOxBWZjlFVf3eMQajsN
	C7wlcjc9r4wS68vEm5E4bOmwBk3hKTqLOcjMrgplgkYMCYKD86qpbD+hjSgj22uqArQ87OlkSSacZ
	zFitccvDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Azg-0007Cy-LC; Sat, 31 Aug 2019 21:33:12 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4AzM-0007CH-8H
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 21:32:54 +0000
Received: from desktop ([188.193.187.204]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MmU9X-1iUg1z3c4f-00iUpl; Sat, 31 Aug 2019 23:32:34 +0200
From: <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, "'John Crispin'" <john@phrozen.org>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
In-Reply-To: <20190828090924.14695-1-fercerpav@gmail.com>
Date: Sat, 31 Aug 2019 23:32:33 +0200
Message-ID: <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKIGW1Y570Qne3YyC7HKhrAHEQTGAFDBQKYpaY6psA=
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:bcgGV9hOGwkJ6Rwtb+pvlAdQdnGXC1rdJBxo4iEQM3/DkVUKy9n
 3w+q50xu5nOZeAM9ZqMDWeLXSp5Hgey84WyoWXzzU4pPWsSP1yDsrc0fg5htiOQRSUuaCHx
 ANi8yTmbASZtj2fb6QF2Xbm54/UpM8DA2DewgYQj2H9o+fCl72f3D/7hPid3mkR9581aRXW
 RxPXNeZIty/6r7NQFdi3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VwacTDKKq/s=:RSE7/7eL0UBi+eaFffZtRs
 WWz/DXEC16wLQwfWERRJNMIzq7PBylDEIagViOPD5hT0bQOqA9BdBQLX/fKrtyQXhOid9/zKr
 c9jq8H5PPJs1MuZoCsvdfHgP/lfF/vpxs9J74vcVsSBlSPrMoqjblxYsOMwC0H09ASfdsC+Lr
 wvKulxctzU4sDzZWfDylPx1j3lMZGfbDznRIvATQCthGiCYTBaD+kk2s0vHShguXUZPRn7WfC
 re8l5tAbU7ywHJfiJiugUWG3AIMd6iRYnwhhFjsF6XivUoCZZibtSR7ZA+TE5GAYFe9HJ1ig2
 sHuXdQ6KJFUpcuRDvG6lotqkAVZnAJUov4rSGNXIuDJAsWurYycpdhN+1rH4qtQMEl8ehFzX5
 2wLGYPVAwt4DSxONXkguLI3G2UpOSpdwV4p0FlrBUsENEHx5XLGMpD17Wk30htwcVFZe5upHr
 CCGTKXWi35rLJrjzNJdfXVFNGJWDsqJ6FuTS1eYUDfi6Am7vL9KpYWtK2pym5LOjpLD5ayOQK
 Ei7y8NQydOfqmx/oV5nPtTfOOdBws2U/dTdo5tgzy57qR7c3g4UJNRwXKb78eFKFTXgmGcQ7s
 gaNoaNWhu77x7cxk7XRMoP7hlnKwHOspQGeJ4hyB6aYje14dtzxr9dnB0LRrE4jrL+NddQOqK
 pKNP+OisFwsLi7KWv1QJqZFYNAbRHklCI+alpnjuY3Ui+lw5RBz9KTyizr9Qd+IrFvVbgJFop
 vjbiQgztnQWJkRoinR3BpMfOb0ynxkX55uZtlUpVUdPpFFSA0YdfmgFkeeXpZ++EcczRIhtoj
 KJJ9NvhCtv2iej7++5CAFTadDIs2ImqWF3PMT0ptKaFCscSDHE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_143252_587032_EEFB7FA8 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Content-Type: multipart/mixed; boundary="===============8008166996816373506=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8008166996816373506==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=rYUJd3ZT0ThoqP=-="

This is a multipart message in MIME format.

--=-=rYUJd3ZT0ThoqP=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

additional comments below.

> -----Original Message-----
> From: Paul Fertser [mailto:fercerpav@gmail.com]
> Sent: Mittwoch, 28. August 2019 11:09
> To: John Crispin <john@phrozen.org>
> Cc: openwrt-devel@lists.openwrt.org; Adrian Schmutzler
> <mail@adrianschmutzler.de>; Roger Pueyo Centelles
> <roger.pueyo@guifi.net>; Paul Fertser <fercerpav@gmail.com>
> Subject: [PATCH v3] ramips: add support for Xiaomi Mi Wi-Fi Router 3G v2
>=20
> - CMIIT ID: 2019AP2581
> - SoC:      MediaTek MT7621
> - Flash:    16MiB NOR SPI (GigaDevice GD25Q128B)
> - RAM:      128MiB DDR3 (ESMT M15T1G1664A)
> - Serial:   As marked on PCB, 3V3 logic, baudrate is 115200, 8n1
> - Ethernet: 3x 10/100/1000 Mbps (switched, 2xLAN + WAN)
> - WIFI0:    MT7603E 2.4GHz 802.11b/g/n
> - WIFI1:    MT7612E 5GHz 802.11ac
> - Antennas: 4x external (2 per radio), non-detachable
> - LEDs:     Programmable "power" LED (two-coloured, yellow/blue)
>             Non-programmable "internet" LED (shows WAN activity)
> - Buttons:  Reset
>=20
> INSTALLATION:
>=20
> Bootloader won't accept any serial input unless "boot_wait" u-boot
> environment variable is changed to "on". Vendor firmware (looks like an
> illegal OpenWrt fork) won't accept any serial input unless "uart_en" is s=
et to
> "1". Tricks to force u-boot to use default environment do not help as it's
> restricted in the same way.
>=20
> With bootloader unlocked the easiest way would be to TFTP the sysupgrade
> image or to sysupgrade after loading an initramfs one.
>=20
> For porting the flash contents were changed externally with an SPI
> programmer (after lifting Vcc flash IC pin away from the PCB).
>=20
> Forum thread [0] indicates that this device is identical to "Xiaomi Mi Ro=
uter
> 4A Gigabit Edition".
>=20
> [0] https://forum.openwrt.org/t/xiaomi-mi-router-4a-gigabit-edition-r4ag-
> r4a-gigabit-fully-supported-but-requires-overwriting-spi-flash-with-
> programmer/36685
>=20
> Signed-off-by: Paul Fertser <fercerpav@gmail.com>
> ---
> Changes for v2:
>=20
>     - Addressed all Adrian Schmutzl's comments
>=20
> Changes for v3:
>=20
>     - Add SPDX license header
>     - Use new ALT variables to support R4AG model name
>=20
>=20
>  .../linux/ramips/base-files/etc/board.d/02_network |   7 +
>  target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts | 147
> +++++++++++++++++++++
>  target/linux/ramips/image/mt7621.mk                |  12 ++
>  3 files changed, 166 insertions(+)
>  create mode 100644 target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index 27f85d7458..2b166dd944 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -469,6 +469,10 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"2:lan:2" "3:lan:1" "1:wan" "6t@eth0"
>  		;;
> +	xiaomi,mir3g-v2)
> +		ucidef_add_switch "switch0" \
> +			"2:lan:2" "3:lan:1" "4:wan" "6t@eth0"
> +		;;

"6t@eth0" and "6@eth0" should be the same, so this can be merged with cudy,=
wr1000.

>  	xiaomi,mir3p)
>  		ucidef_add_switch "switch0" \
>  			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
> @@ -683,6 +687,9 @@ ramips_setup_macs()
>  	xiaomi,mir3p)
>  		lan_mac=3D$(mtd_get_mac_binary factory 0xe006)
>  		;;
> +	xiaomi,mir3g-v2)
> +		wan_mac=3D$(mtd_get_mac_binary factory 0xe006)
> +		;;

This can be merged with elecom,wrc-1167ghbk2-s|\ etc.

Best

Adrian

--=-=rYUJd3ZT0ThoqP=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1q52oACgkQoNyKO7qx
AnAn4hAAvNZ+/WZDfmtHJQbJ4yOZeXpOv3XutMYILEMOzng4Vu2wkfAFiEoyorTV
RP5cus3vmuhynGPaXZfS1+RMzODPI01pmIsw5J2TnLy8KSjRUuaKM7DpC+Y4M/Vm
wxg4XqOThyp09uSAaGw/9BBLYsylDieaM4bXuU5fmTyrjFkJyF/TmcRuxnFgAA05
cY+duJ62JrCb7sqZd8iP/estIQe5Fr0ykUUdwj0Ak6zkSERwu/PgKTOcu0lqL61y
kAnaehD4cXj4PHTK67UVpw/MotG1UsQHxXmFb/1ynRVrtcjbHBMrTau5vema2raw
l2r6qXp6UNYFekTGt8V76NotCFfdW4Tk5PTZbNPwq6F4gg7mbKsqLgzDar7iLmq7
8MVxGJS8WXXDTLFHuPcltuC6KBXimzEk2F2876gz+RiI3EXPrr+DP4h+kFsvKtnR
ZkBDS5j9WOsE2elIxjTrHlLawd8860cVTmOJmiBgLxtqhSIVdWjJ3KbLYU1zHKuc
beiYUVCHCEaeFivft7tGsC+nIIiQnTa0KtMMsCGxxt7PCQulUUoHVi+AcQjuzSgk
cQCgDY4OxFx3oSsaIQF3XXxyd8ajlrDFdccSuyCZy1nBcletpKX/u71hRYBRJoFY
9JnImHrQiYqft41gVe/mys95nDBWkBItAoa090SdzPDP3tdtmCU=
=hk2N
-----END PGP SIGNATURE-----


--=-=rYUJd3ZT0ThoqP=-=--



--===============8008166996816373506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8008166996816373506==--


