Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9AB1DD5C6
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 20:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m/RSQPVuVSKAk45rRSAQdirlP6t1xPnzTEOSJXKen70=; b=rpO6P9LLxEY+cGQUbY5nd8xHD
	X1xHltTWZqcKWGpKEsW5PiBeAa1vYFRPXx6yw6gGM3ZLkSG9WNDaOhPmQkdgN9o2cU8ZWQcec5Xcz
	uwAur3FrEy7enwQhyj704M2Z7VSEBhpIt9VKjsDf8GMUMhWYQhaOud6ovSasTYnt+KyrxHgRkE1Jm
	4CuHecwd12kI2BQvnhFPR2WbZfIUFzO6hH7nqgbL7YrXF4uNXaWU2n1oceAR0vgAxmHIY3Uj2F8K0
	STGDO9haQwq/VprQBqJBG0eff8K7jC//9uIGdGMH9tKK3cMnO6Iiwixq+hXSjkd4y+bypbj37iUqx
	82uhEuR0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbphu-0002zn-Ms; Thu, 21 May 2020 18:14:14 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbphh-0002yf-LI
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 18:14:06 +0000
Received: from [IPv6:2001:19f0:6c01:100::2] (unknown
 [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 2C06E2604C;
 Thu, 21 May 2020 20:13:54 +0200 (CEST)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
References: <20200521180109.1667-1-freifunk@adrianschmutzler.de>
From: Matthias Schiffer <mschiffer@universe-factory.net>
Autocrypt: addr=mschiffer@universe-factory.net; prefer-encrypt=mutual; keydata=
 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
 PlNzGv4274ZWmcxbhGx8ZaE=
Message-ID: <195d3121-2205-21ac-c646-4c67371d29cd@universe-factory.net>
Date: Thu, 21 May 2020 20:13:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521180109.1667-1-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_111402_217671_480EBE37 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: use "model" instead of
 ambiguous "boardname" in 01_leds
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
Content-Type: multipart/mixed; boundary="===============6129486460948581283=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6129486460948581283==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="JcMVygrpQOqII1c3grTpExgGHzluqrC3K"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--JcMVygrpQOqII1c3grTpExgGHzluqrC3K
Content-Type: multipart/mixed; boundary="CRvtAjKGTaN7E4un4J2982LrkFd4ILcDL";
 protected-headers="v1"
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <195d3121-2205-21ac-c646-4c67371d29cd@universe-factory.net>
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: use "model" instead of
 ambiguous "boardname" in 01_leds
References: <20200521180109.1667-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200521180109.1667-1-freifunk@adrianschmutzler.de>

--CRvtAjKGTaN7E4un4J2982LrkFd4ILcDL
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 5/21/20 8:01 PM, Adrian Schmutzler wrote:
> At the moment, several board.d/01_leds files use a variable for the
> model part of their label. For historic reasons, this is called
> "boardname", though when a vendor is present in the result of the
> board_name function, it's only the model part of this result.
>=20
> To signal this difference of the variable compared to the board_name
> function, let's just rename it to "model", as it contains the model
> part of the board name/compatible.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

I don't think model is a good choice for the variable name: "model" is
generally used to refer to a human-readable device identification, both i=
n
device trees, and in OpenWrt's sysinfo.

Maybe simply call it "device"? Or leave it as is, I'm not really convince=
d
this needs to be changed.

Kind regards,
Matthias


> ---
>  .../generic/base-files/etc/board.d/01_leds    | 142 +++++++--------
>  .../etc/uci-defaults/04_led_migration         |   4 +-
>  .../etc/uci-defaults/04_led_migration         |   2 +-
>  .../ath79/nand/base-files/etc/board.d/01_leds |   2 +-
>  .../ath79/tiny/base-files/etc/board.d/01_leds |  12 +-
>  .../ipq40xx/base-files/etc/board.d/01_leds    |  44 ++---
>  .../ipq806x/base-files/etc/board.d/01_leds    |  44 ++---
>  .../cortexa9/base-files/etc/board.d/01_leds   |  10 +-
>  .../mt7620/base-files/etc/board.d/01_leds     | 162 +++++++++---------=

>  .../mt7621/base-files/etc/board.d/01_leds     |  64 +++----
>  .../etc/uci-defaults/04_led_migration         |  10 +-
>  .../mt76x8/base-files/etc/board.d/01_leds     | 106 ++++++------
>  .../rt288x/base-files/etc/board.d/01_leds     |   4 +-
>  .../rt305x/base-files/etc/board.d/01_leds     |  30 ++--
>  .../rt3883/base-files/etc/board.d/01_leds     |  10 +-
>  15 files changed, 323 insertions(+), 323 deletions(-)
>=20
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds =
b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index a3c5b3f988..ce8cc18f09 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -5,98 +5,98 @@
>  board_config_update
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  8dev,carambola2)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:orange:eth0" "eth0"
> -	ucidef_set_led_switch "wan" "WAN" "$boardname:orange:eth1" "switch0" =
"0x04"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:orange:eth0" "eth0"
> +	ucidef_set_led_switch "wan" "WAN" "$model:orange:eth1" "switch0" "0x0=
4"
>  	;;
>  alfa-network,ap121f|\
>  avm,fritz450e)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
>  	;;
>  avm,fritz1750e)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
>  	ucidef_set_rssimon "wlan1" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wla=
n1" "1" "100"
> -	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green=
:rssi1" "wlan1" "20" "100"
> -	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$boardname:green:rssi2=
" "wlan1" "40" "100"
> -	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:gre=
en:rssi3" "wlan1" "60" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi4" "w=
lan1" "80" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:green:rssi0" "wlan1" =
"1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:green:rss=
i1" "wlan1" "20" "100"
> +	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$model:green:rssi2" "w=
lan1" "40" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:r=
ssi3" "wlan1" "60" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssi4" "wlan1=
" "80" "100"
>  	;;
>  avm,fritz300e)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wla=
n0" "1" "100"
> -	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green=
:rssi1" "wlan0" "20" "100"
> -	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$boardname:green:rssi2=
" "wlan0" "40" "100"
> -	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:gre=
en:rssi3" "wlan0" "60" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi4" "w=
lan0" "80" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:green:rssi0" "wlan0" =
"1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:green:rss=
i1" "wlan0" "20" "100"
> +	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$model:green:rssi2" "w=
lan0" "40" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:r=
ssi3" "wlan0" "60" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssi4" "wlan0=
" "80" "100"
>  	;;
>  avm,fritz4020)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
> -	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0=
x1E"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
> +	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x1E"=

>  	;;
>  comfast,cf-e110n-v2)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth1"
> -	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0=
x02"
> -	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth1"
> +	ucidef_set_led_switch "wan" "WAN" "$model:green:wan" "switch0" "0x02"=

> +	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wla=
n0" "1" "100"
> -	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:r=
ssimediumlow" "wlan0" "26" "100"
> -	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:gre=
en:rssimediumhigh" "wlan0" "51" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh"=
 "wlan0" "76" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" =
"1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssim=
ediumlow" "wlan0" "26" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:r=
ssimediumhigh" "wlan0" "51" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wl=
an0" "76" "100"
>  	;;
>  comfast,cf-e120a-v3)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth1"
> -	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0=
x04"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth1"
> +	ucidef_set_led_switch "wan" "WAN" "$model:green:wan" "switch0" "0x04"=

>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wla=
n0" "1" "100"
> -	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:r=
ssimediumlow" "wlan0" "26" "100"
> -	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:gre=
en:rssimediumhigh" "wlan0" "51" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh"=
 "wlan0" "76" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" =
"1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssim=
ediumlow" "wlan0" "26" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:r=
ssimediumhigh" "wlan0" "51" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wl=
an0" "76" "100"
>  	;;
>  comfast,cf-e313ac)
> -	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0=
x02"
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
> +	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x02"=

> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wla=
n0" "1" "100"
> -	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:r=
ssimediumlow" "wlan0" "26" "100"
> -	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:gre=
en:rssimediumhigh" "wlan0" "51" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh"=
 "wlan0" "76" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" =
"1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssim=
ediumlow" "wlan0" "26" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:r=
ssimediumhigh" "wlan0" "51" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wl=
an0" "76" "100"
>  	;;
>  comfast,cf-e314n-v2)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth1"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth0"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth1"
>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wla=
n0" "1" "100"
> -	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:r=
ssimediumlow" "wlan0" "26" "100"
> -	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:gre=
en:rssimediumhigh" "wlan0" "51" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh"=
 "wlan0" "76" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" =
"1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssim=
ediumlow" "wlan0" "26" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:r=
ssimediumhigh" "wlan0" "51" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wl=
an0" "76" "100"
>  	;;
>  comfast,cf-e5)
> -	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x=
02"
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:wan" "eth1"
> +	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x02"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:blue:rssi0" "wlan=
0" "1" "100"
> -	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$boardname:blue:rssi1"=
 "wlan0" "33" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:blue:rssi2" "wl=
an0" "66" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:blue:rssi0" "wlan0" "=
1" "100"
> +	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$model:blue:rssi1" "wl=
an0" "33" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:blue:rssi2" "wlan0"=
 "66" "100"
>  	;;
>  comfast,cf-e560ac)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:wan" "eth1"
> -	ucidef_set_led_switch "lan1" "LAN1" "$boardname:blue:lan1" "switch0" =
"0x02"
> -	ucidef_set_led_switch "lan2" "LAN2" "$boardname:blue:lan2" "switch0" =
"0x04"
> -	ucidef_set_led_switch "lan3" "LAN3" "$boardname:blue:lan3" "switch0" =
"0x08"
> -	ucidef_set_led_switch "lan4" "LAN4" "$boardname:blue:lan4" "switch0" =
"0x10"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
> +	ucidef_set_led_switch "lan1" "LAN1" "$model:blue:lan1" "switch0" "0x0=
2"
> +	ucidef_set_led_switch "lan2" "LAN2" "$model:blue:lan2" "switch0" "0x0=
4"
> +	ucidef_set_led_switch "lan3" "LAN3" "$model:blue:lan3" "switch0" "0x0=
8"
> +	ucidef_set_led_switch "lan4" "LAN4" "$model:blue:lan4" "switch0" "0x1=
0"
>  	;;
>  comfast,cf-ew72)
> -	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x=
02"
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:wan" "eth1"
> +	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x02"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
>  	;;
>  comfast,cf-wr752ac-v1|\
>  engenius,ecb1750)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:blue:lan" "eth0"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:blue:lan" "eth0"
>  	;;
>  devolo,magic-2-wifi)
>  	ucidef_set_led_netdev "plcw" "dLAN" "devolo:white:dlan" "eth0.1" "rx"=

> @@ -105,23 +105,23 @@ dlink,dir-842-c1|\
>  dlink,dir-842-c2|\
>  dlink,dir-842-c3|\
>  dlink,dir-859-a1)
> -	ucidef_set_led_switch "internet" "WAN" "$boardname:green:internet" "s=
witch0" "0x20"
> +	ucidef_set_led_switch "internet" "WAN" "$model:green:internet" "switc=
h0" "0x20"
>  	;;
>  engenius,ews511ap)
> -	ucidef_set_led_netdev "lan1" "LAN1" "$boardname:blue:lan1" "eth1"
> -	ucidef_set_led_netdev "lan2" "LAN2" "$boardname:blue:lan2" "eth0"
> +	ucidef_set_led_netdev "lan1" "LAN1" "$model:blue:lan1" "eth1"
> +	ucidef_set_led_netdev "lan2" "LAN2" "$model:blue:lan2" "eth0"
>  	;;
>  etactica,eg200)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:red:eth0" "eth0"
> -	ucidef_set_led_oneshot "modbus" "Modbus" "$boardname:red:modbus" "100=
" "33"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:red:eth0" "eth0"
> +	ucidef_set_led_oneshot "modbus" "Modbus" "$model:red:modbus" "100" "3=
3"
>  	;;
>  glinet,6408|\
>  glinet,6416)
>  	ucidef_set_led_netdev "lan" "LAN" "gl-inet:green:lan" "eth0"
>  	;;
>  glinet,gl-ar150)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
> -	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0=
x02"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
> +	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x02"=

>  	;;
>  glinet,gl-ar300m-lite)
>  	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m-lite:green:lan" "eth0"
> @@ -130,7 +130,7 @@ glinet,gl-ar300m16)
>  	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
>  	;;
>  glinet,gl-x750)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
>  	;;
>  netgear,wnr2200-8m|\
>  netgear,wnr2200-16m)
> @@ -155,7 +155,7 @@ pcs,cr3000)
>  	ucidef_set_led_switch "lan4" "LAN4" "pcs:blue:lan4" "switch0" "0x02"
>  	;;
>  qihoo,c301)
> -	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
> +	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
>  	;;
>  tplink,archer-a7-v5|\
>  tplink,archer-c7-v4|\
> @@ -291,15 +291,15 @@ ubnt,powerbeam-5ac-gen2)
>  	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "ubnt:blue:rssi3" "wlan0" "=
76" "100"
>  	;;
>  wd,mynet-wifi-rangeextender)
> -	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:rssi-low" "wlan0"=
 "1" "100"
> -	ucidef_set_led_rssi "rssimedium" "RSSIMED" "$boardname:blue:rssi-med"=
 "wlan0" "33" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIMAX" "$boardname:blue:rssi-max" "=
wlan0" "66" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:rssi-low" "wlan0" "1"=
 "100"
> +	ucidef_set_led_rssi "rssimedium" "RSSIMED" "$model:blue:rssi-med" "wl=
an0" "33" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIMAX" "$model:blue:rssi-max" "wlan=
0" "66" "100"
>  	;;
>  yuncore,a770)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
> -	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0=
x10"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
> +	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x10"=

>  	;;
>  zbtlink,zbt-wd323)
>  	ucidef_set_led_switch "lan1" "LAN1" "zbt-wd323:orange:lan1" "switch0"=
 "0x10"
> diff --git a/target/linux/ath79/generic/base-files/etc/uci-defaults/04_=
led_migration b/target/linux/ath79/generic/base-files/etc/uci-defaults/04=
_led_migration
> index cffc2e6c4b..eb73e08361 100644
> --- a/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_mig=
ration
> +++ b/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_mig=
ration
> @@ -4,7 +4,7 @@
>  . /lib/functions/migrations.sh
> =20
>  board=3D$(board_name)
> -boardonly=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  engenius,epg5000)
> @@ -19,7 +19,7 @@ tplink,archer-c60-v2|\
>  tplink,archer-c7-v4|\
>  tplink,archer-c7-v5|\
>  tplink,tl-wr902ac-v1)
> -	migrate_leds "^$boardonly:=3Dtp-link:"
> +	migrate_leds "^$model:=3Dtp-link:"
>  	;;
>  tplink,archer-c7-v2|\
>  tplink,tl-wdr3600-v1|\
> diff --git a/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04=
_led_migration b/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/=
04_led_migration
> index 1a7b371a99..2ccce89a9a 100644
> --- a/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_mi=
gration
> +++ b/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_mi=
gration
> @@ -4,7 +4,7 @@
>  . /lib/functions/migrations.sh
> =20
>  board=3D$(board_name)
> -boardonly=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  mikrotik,*)
> diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/t=
arget/linux/ath79/nand/base-files/etc/board.d/01_leds
> index d9989ec538..af256e2387 100755
> --- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> @@ -5,7 +5,7 @@
>  board_config_update
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  glinet,gl-ar300m-nand|\
> diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds b/t=
arget/linux/ath79/tiny/base-files/etc/board.d/01_leds
> index 3588278b01..94ec4b770c 100755
> --- a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
> @@ -5,15 +5,15 @@
>  board_config_update
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  buffalo,whr-g301n)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
> -	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0"=
 "0x02"
> -	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0"=
 "0x04"
> -	ucidef_set_led_switch "lan3" "LAN3" "$boardname:green:lan3" "switch0"=
 "0x08"
> -	ucidef_set_led_switch "lan4" "LAN4" "$boardname:green:lan4" "switch0"=
 "0x10"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth0"
> +	ucidef_set_led_switch "lan1" "LAN1" "$model:green:lan1" "switch0" "0x=
02"
> +	ucidef_set_led_switch "lan2" "LAN2" "$model:green:lan2" "switch0" "0x=
04"
> +	ucidef_set_led_switch "lan3" "LAN3" "$model:green:lan3" "switch0" "0x=
08"
> +	ucidef_set_led_switch "lan4" "LAN4" "$model:green:lan4" "switch0" "0x=
10"
>  	;;
>  dlink,dir-615-e4)
>  	ucidef_set_led_netdev "wan" "WAN" "d-link:green:wan" "eth0"
> diff --git a/target/linux/ipq40xx/base-files/etc/board.d/01_leds b/targ=
et/linux/ipq40xx/base-files/etc/board.d/01_leds
> index 0a128e8cbc..af4692b0cf 100755
> --- a/target/linux/ipq40xx/base-files/etc/board.d/01_leds
> +++ b/target/linux/ipq40xx/base-files/etc/board.d/01_leds
> @@ -8,15 +8,15 @@
>  board_config_update
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  alfa-network,ap120c-ac)
> -	ucidef_set_led_netdev "wan" "WAN" "${boardname}:amber:wan" "eth1"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:amber:wan" "eth1"
>  	;;
>  asus,rt-ac58u)
> -	ucidef_set_led_netdev "wan" "WAN" "${boardname}:blue:wan" "eth1"
> -	ucidef_set_led_switch "lan" "LAN" "${boardname}:blue:lan" "switch0" "=
0x1e"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
> +	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x1e"
>  	;;
>  avm,fritzbox-4040)
>  	ucidef_set_led_wlan "wlan" "WLAN" "fritz4040:green:wlan" "phy0tpt" "p=
hy1tpt"
> @@ -25,28 +25,28 @@ avm,fritzbox-4040)
>  	;;
>  avm,fritzbox-7530 |\
>  glinet,gl-b1300)
> -	ucidef_set_led_wlan "wlan" "WLAN" "${boardname}:green:wlan" "phy0tpt"=

> +	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
>  	;;
>  engenius,eap1300)
> -	ucidef_set_led_netdev "lan" "LAN" "${boardname}:blue:lan" "eth0"
> -	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:blue:wlan2g" "phy=
0tpt"
> -	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:yellow:wlan5g" "p=
hy1tpt"
> -	ucidef_set_led_default "mesh" "MESH" "${boardname}:blue:mesh" "0"
> +	ucidef_set_led_netdev "lan" "LAN" "$model:blue:lan" "eth0"
> +	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:blue:wlan2g" "phy0tpt"
> +	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:yellow:wlan5g" "phy1tpt=
"
> +	ucidef_set_led_default "mesh" "MESH" "$model:blue:mesh" "0"
>  	;;
>  engenius,eap2200)
> -	ucidef_set_led_netdev "lan1" "LAN1" "${boardname}:blue:lan1" "eth0"
> -	ucidef_set_led_netdev "lan2" "LAN2" "${boardname}:blue:lan2" "eth1"
> +	ucidef_set_led_netdev "lan1" "LAN1" "$model:blue:lan1" "eth0"
> +	ucidef_set_led_netdev "lan2" "LAN2" "$model:blue:lan2" "eth1"
>  	;;
>  engenius,ens620ext)
> -	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2G" "ph=
y0tpt"
> -	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5G" "ph=
y1tpt"
> -	ucidef_set_led_netdev "lan1" "LAN1" "${boardname}:green:lan1" "eth0"
> -	ucidef_set_led_netdev "lan2" "LAN2" "${boardname}:green:lan2" "eth1"
> +	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2G" "phy0tpt"=

> +	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5G" "phy1tpt"=

> +	ucidef_set_led_netdev "lan1" "LAN1" "$model:green:lan1" "eth0"
> +	ucidef_set_led_netdev "lan2" "LAN2" "$model:green:lan2" "eth1"
>  	;;
>  mobipromo,cm520-79f)
> -	ucidef_set_led_netdev "wan" "WAN" "${boardname}:blue:wan" "eth1"
> -	ucidef_set_led_switch "lan1" "LAN1" "${boardname}:blue:lan1" "switch0=
" "0x10"
> -	ucidef_set_led_switch "lan2" "LAN2" "${boardname}:blue:lan2" "switch0=
" "0x08"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
> +	ucidef_set_led_switch "lan1" "LAN1" "$model:blue:lan1" "switch0" "0x1=
0"
> +	ucidef_set_led_switch "lan2" "LAN2" "$model:blue:lan2" "switch0" "0x0=
8"
>  	;;
>  netgear,ex6100v2 |\
>  netgear,ex6150v2)
> @@ -59,12 +59,12 @@ qxwlan,e2600ac-c2)
>  	ucidef_set_led_wlan "wlan5g" "WLAN1" "e2600ac:green:wlan1" "phy1tpt"
>  	;;
>  zyxel,nbg6617)
> -	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2G" "ph=
y0tpt"
> -	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5G" "ph=
y1tpt"
> +	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2G" "phy0tpt"=

> +	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5G" "phy1tpt"=

>  	;;
>  zyxel,wre6606)
> -	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2g" "ph=
y0tpt"
> -	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5g" "ph=
y1tpt"
> +	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2g" "phy0tpt"=

> +	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5g" "phy1tpt"=

>  	;;
>  *)
>  	;;
> diff --git a/target/linux/ipq806x/base-files/etc/board.d/01_leds b/targ=
et/linux/ipq806x/base-files/etc/board.d/01_leds
> index f8b6c32358..f169397224 100755
> --- a/target/linux/ipq806x/base-files/etc/board.d/01_leds
> +++ b/target/linux/ipq806x/base-files/etc/board.d/01_leds
> @@ -8,46 +8,46 @@
>  board_config_update
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  buffalo,wxr-2533dhp)
> -	ucidef_set_led_wlan "wlan" "WLAN" "${boardname}:white:wireless" "phy0=
tpt"
> -	ucidef_set_led_switch "wan" "WAN" "${boardname}:white:internet" "swit=
ch0" "0x20"
> +	ucidef_set_led_wlan "wlan" "WLAN" "$model:white:wireless" "phy0tpt"
> +	ucidef_set_led_switch "wan" "WAN" "$model:white:internet" "switch0" "=
0x20"
>  	;;
>  compex,wpq864)
> -	ucidef_set_led_usbport "usb" "USB" "wpq864:green:usb" "usb1-port1" "u=
sb2-port1"
> -	ucidef_set_led_usbport "pcie-usb" "PCIe USB" "wpq864:green:usb-pcie" =
"usb3-port1"
> +	ucidef_set_led_usbport "usb" "USB" "$model:green:usb" "usb1-port1" "u=
sb2-port1"
> +	ucidef_set_led_usbport "pcie-usb" "PCIe USB" "$model:green:usb-pcie" =
"usb3-port1"
>  	;;
>  nec,wg2600hp)
> -	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2g" "ph=
y1tpt"
> -	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5g" "ph=
y0tpt"
> -	ucidef_set_led_switch "wan" "WAN" "${boardname}:green:active" "switch=
0" "0x2"
> +	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2g" "phy1tpt"=

> +	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5g" "phy0tpt"=

> +	ucidef_set_led_switch "wan" "WAN" "$model:green:active" "switch0" "0x=
2"
>  	;;
>  netgear,d7800 |\
>  netgear,r7500 |\
>  netgear,r7500v2 |\
>  netgear,r7800)
> -	ucidef_set_led_usbport "usb1" "USB 1" "${boardname}:white:usb1" "usb1=
-port1" "usb2-port1"
> -	ucidef_set_led_usbport "usb2" "USB 2" "${boardname}:white:usb2" "usb3=
-port1" "usb4-port1"
> -	ucidef_set_led_switch "wan" "WAN" "${boardname}:white:wan" "switch0" =
"0x20"
> -	ucidef_set_led_ide "esata" "eSATA" "${boardname}:white:esata"
> +	ucidef_set_led_usbport "usb1" "USB 1" "$model:white:usb1" "usb1-port1=
" "usb2-port1"
> +	ucidef_set_led_usbport "usb2" "USB 2" "$model:white:usb2" "usb3-port1=
" "usb4-port1"
> +	ucidef_set_led_switch "wan" "WAN" "$model:white:wan" "switch0" "0x20"=

> +	ucidef_set_led_ide "esata" "eSATA" "$model:white:esata"
>  	;;
>  tplink,c2600)
> -	ucidef_set_led_usbport "usb1" "USB 1" "${boardname}:white:usb_2" "usb=
1-port1" "usb2-port1"
> -	ucidef_set_led_usbport "usb2" "USB 2" "${boardname}:white:usb_4" "usb=
3-port1" "usb4-port1"
> -	ucidef_set_led_switch "wan" "wan" "${boardname}:white:wan" "switch0" =
"0x20"
> -	ucidef_set_led_switch "lan" "lan" "${boardname}:white:lan" "switch0" =
"0x1e"
> +	ucidef_set_led_usbport "usb1" "USB 1" "$model:white:usb_2" "usb1-port=
1" "usb2-port1"
> +	ucidef_set_led_usbport "usb2" "USB 2" "$model:white:usb_4" "usb3-port=
1" "usb4-port1"
> +	ucidef_set_led_switch "wan" "wan" "$model:white:wan" "switch0" "0x20"=

> +	ucidef_set_led_switch "lan" "lan" "$model:white:lan" "switch0" "0x1e"=

>  	;;
>  tplink,vr2600v)
> -	ucidef_set_led_usbport "usb" "USB" "${boardname}:white:usb" "usb1-por=
t1" "usb2-port1" "usb3-port1" "usb4-port1"
> -	ucidef_set_led_switch "lan" "lan" "${boardname}:white:lan" "switch0" =
"0x1e"
> -	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:white:wlan2g" "ph=
y0tpt"
> -	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:white:wlan5g" "ph=
y1tpt"
> -	ucidef_set_led_switch "wan" "wan" "${boardname}:white:wan" "switch0" =
"0x20"
> +	ucidef_set_led_usbport "usb" "USB" "$model:white:usb" "usb1-port1" "u=
sb2-port1" "usb3-port1" "usb4-port1"
> +	ucidef_set_led_switch "lan" "lan" "$model:white:lan" "switch0" "0x1e"=

> +	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:white:wlan2g" "phy0tpt"=

> +	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:white:wlan5g" "phy1tpt"=

> +	ucidef_set_led_switch "wan" "wan" "$model:white:wan" "switch0" "0x20"=

>  	;;
>  zyxel,nbg6817)
> -	ucidef_set_led_netdev "wan" "WAN" "${boardname}:white:internet" "eth1=
"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:white:internet" "eth1"
>  	;;
>  *)
>  	;;
> diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds=
 b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
> index a7762f0080..08db772e4a 100755
> --- a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
> +++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
> @@ -9,17 +9,17 @@
>  board_config_update
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  linksys,caiman|\
>  linksys,cobra|\
>  linksys,rango|\
>  linksys,shelby)
> -	ucidef_set_led_netdev "wan" "WAN" "pca963x:$boardname:white:wan" "eth=
1"
> -	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:$boardname:white:usb2"=
 "usb1-port1"
> -	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:$boardname:white:usb3_=
1" "usb2-port1" "usb3-port1"
> -	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:$boardname:white=
:usb3_2" "usb3-port1"
> +	ucidef_set_led_netdev "wan" "WAN" "pca963x:$model:white:wan" "eth1"
> +	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:$model:white:usb2" "us=
b1-port1"
> +	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:$model:white:usb3_1" "=
usb2-port1" "usb3-port1"
> +	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:$model:white:usb=
3_2" "usb3-port1"
>  	;;
>  linksys,mamba)
>  	ucidef_set_led_netdev "wan" "WAN" "mamba:white:wan" "eth1"
> diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds =
b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> index c1deae59e3..e644434f93 100755
> --- a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
> @@ -9,7 +9,7 @@ set_wifi_led() {
> =20
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  board_config_update
> =20
> @@ -18,41 +18,41 @@ led_wlan=3D"$(get_dt_led wlan)"
> =20
>  case $board in
>  aigale,ai-br100)
> -	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" "eth0.2"
> -	set_wifi_led "$boardname:blue:wlan"
> +	ucidef_set_led_netdev "wan" "wan" "$model:blue:wan" "eth0.2"
> +	set_wifi_led "$model:blue:wlan"
>  	;;
>  alfa-network,ac1200rm)
> -	set_wifi_led "$boardname:green:wlan2g" "wlan1"
> +	set_wifi_led "$model:green:wlan2g" "wlan1"
>  	;;
>  alfa-network,r36m-e4g)
> -	ucidef_set_led_netdev "4g" "4g" "$boardname:orange:4g" "wwan0"
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x8"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x10"
> +	ucidef_set_led_netdev "4g" "4g" "$model:orange:4g" "wwan0"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x8"
> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x10"=

>  	;;
>  alfa-network,tube-e4g)
> -	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0"
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" "eth0"
> +	ucidef_set_led_netdev "4g" "4g" "$model:green:4g" "wwan0"
> +	ucidef_set_led_netdev "lan" "lan" "$model:blue:lan" "eth0"
>  	;;
>  asus,rp-n53)
> -	ucidef_set_led_netdev "eth" "Network" "$boardname:white:back" "eth0"
> -	set_wifi_led "$boardname:blue:wifi"
> +	ucidef_set_led_netdev "eth" "Network" "$model:white:back" "eth0"
> +	set_wifi_led "$model:blue:wifi"
>  	;;
>  asus,rt-n12p)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0.1
> -	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" eth0.2
> -	set_wifi_led "$boardname:green:air"
> +	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" eth0.1
> +	ucidef_set_led_netdev "wan" "wan" "$model:green:wan" eth0.2
> +	set_wifi_led "$model:green:air"
>  	;;
>  asus,rt-n14u)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" eth0.1
> -	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" eth0.2
> -	set_wifi_led "$boardname:blue:air"
> +	ucidef_set_led_netdev "lan" "lan" "$model:blue:lan" eth0.1
> +	ucidef_set_led_netdev "wan" "wan" "$model:blue:wan" eth0.2
> +	set_wifi_led "$model:blue:air"
>  	;;
>  bdcom,wap2100-sk)
> -	set_wifi_led "$boardname:green:wlan2g"
> +	set_wifi_led "$model:green:wlan2g"
>  	;;
>  comfast,cf-wr800n)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:white:ethernet" eth0.1
> -	set_wifi_led "$boardname:white:wifi"
> +	ucidef_set_led_netdev "lan" "lan" "$model:white:ethernet" eth0.1
> +	set_wifi_led "$model:white:wifi"
>  	;;
>  dlink,dwr-116-a1|\
>  head-weblink,hdrm200|\
> @@ -62,146 +62,146 @@ zbtlink,zbt-wr8305rt|\
>  zyxel,keenetic-omni|\
>  zyxel,keenetic-omni-ii|\
>  zyxel,keenetic-viva)
> -	set_wifi_led "$boardname:green:wifi"
> +	set_wifi_led "$model:green:wifi"
>  	;;
>  dlink,dwr-118-a1)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1f"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x20"
> -	set_wifi_led "$boardname:green:wlan2g" "wlan1"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1f"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x20"=

> +	set_wifi_led "$model:green:wlan2g" "wlan1"
>  	;;
>  dlink,dwr-118-a2)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> -	set_wifi_led "$boardname:green:wlan2g" "wlan1"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

> +	set_wifi_led "$model:green:wlan2g" "wlan1"
>  	;;
>  dlink,dwr-921-c1|\
>  dlink,dwr-922-e2)
> -	set_wifi_led "$boardname:green:wifi"
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x0f"
> -	ucidef_set_led_netdev "signalstrength" "signalstrength" "$boardname:g=
reen:sigstrength" "wwan0" "link"
> -	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0" "tx rx"=

> +	set_wifi_led "$model:green:wifi"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x0f"=

> +	ucidef_set_led_netdev "signalstrength" "signalstrength" "$model:green=
:sigstrength" "wwan0" "link"
> +	ucidef_set_led_netdev "4g" "4g" "$model:green:4g" "wwan0" "tx rx"
>  	;;
>  dlink,dwr-960)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x2e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x2e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	;;
>  dovado,tiny-ac)
> -	set_wifi_led "$boardname:orange:wifi"
> +	set_wifi_led "$model:orange:wifi"
>  	;;
>  edimax,br-6478ac-v2|\
>  edimax,ew-7478apc)
> -	set_wifi_led "$boardname:blue:wlan"
> +	set_wifi_led "$model:blue:wlan"
>  	;;
>  edimax,ew-7476rpc|\
>  edimax,ew-7478ac)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan"  "switch0" "=
0x20"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan"  "switch0" "0x20=
"
>  	;;
>  elecom,wrh-300cr)
> -	set_wifi_led "$boardname:green:wlan"
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:green:ethernet" "eth0"
> +	set_wifi_led "$model:green:wlan"
> +	ucidef_set_led_netdev "lan" "lan" "$model:green:ethernet" "eth0"
>  	;;
>  engenius,esr600)
> -	ucidef_set_led_netdev "wlan5g" "5.0GHz" "$boardname:blue:wlan5g" "wla=
n0"
> -	ucidef_set_led_netdev "wlan2g" "2.4GHz" "$boardname:blue:wlan2g" "wla=
n1"
> +	ucidef_set_led_netdev "wlan5g" "5.0GHz" "$model:blue:wlan5g" "wlan0"
> +	ucidef_set_led_netdev "wlan2g" "2.4GHz" "$model:blue:wlan2g" "wlan1"
>  	;;
>  glinet,gl-mt300a|\
>  glinet,gl-mt300n|\
>  glinet,gl-mt750)
> -	set_wifi_led "$boardname:wlan"
> +	set_wifi_led "$model:wlan"
>  	;;
>  hiwifi,hc5661|\
>  hiwifi,hc5761)
> -	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet=
" "switch0" "0x01"
> +	ucidef_set_led_switch "internet" "internet" "$model:blue:internet" "s=
witch0" "0x01"
>  	;;
>  hiwifi,hc5861)
> -	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet=
" "switch0" "0x20"
> +	ucidef_set_led_switch "internet" "internet" "$model:blue:internet" "s=
witch0" "0x20"
>  	;;
>  hnet,c108)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
> -	ucidef_set_led_netdev "modem" "modem" "$boardname:green:modem" "wwan0=
"
> +	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" "eth0"
> +	ucidef_set_led_netdev "modem" "modem" "$model:green:modem" "wwan0"
>  	;;
>  iodata,wn-ac1167gr|\
>  iodata,wn-ac733gr3)
> -	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$boardname:green:wlan5g" "phy0=
radio"
> -	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$boardname:green:wlan2g" "phy1=
radio"
> +	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5g" "phy0radi=
o"
> +	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2g" "phy1radi=
o"
>  	;;
>  kimax,u25awf-h1)
>  	set_wifi_led "u25awf:red:wifi"
>  	ucidef_set_led_netdev "eth" "eth" "u25awf:green:lan" "eth0"
>  	;;
>  kimax,u35wf)
> -	set_wifi_led "$boardname:blue:wifi"
> -	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
> +	set_wifi_led "$model:blue:wifi"
> +	ucidef_set_led_netdev "eth" "ETH" "$model:green:eth" "eth0"
>  	;;
>  kingston,mlw221|\
>  kingston,mlwg2|\
>  sanlinking,d240)
> -	set_wifi_led "$boardname:blue:wifi"
> +	set_wifi_led "$model:blue:wifi"
>  	;;
>  lava,lr-25g001)
> -	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g=
" "wlan1"
> -	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:green:wlan5g" =
"wlan0"
> +	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$model:green:wlan2g" "w=
lan1"
> +	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$model:green:wlan5g" "wla=
n0"
>  	;;
>  lenovo,newifi-y1)
> -	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:blue:wifi" "wlan1"
> -	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi5g" "wla=
n0"
> -	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x=
03"
> +	ucidef_set_led_netdev "wifi" "WIFI" "$model:blue:wifi" "wlan1"
> +	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$model:blue:wifi5g" "wlan0"
> +	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x03"
>  	;;
>  lenovo,newifi-y1s)
> -	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:yellow:wifi" "wlan1"
> -	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi" "wlan0=
"
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:internet" "eth0.2"=
 "tx rx"
> +	ucidef_set_led_netdev "wifi" "WIFI" "$model:yellow:wifi" "wlan1"
> +	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$model:blue:wifi" "wlan0"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:blue:internet" "eth0.2" "tx=
 rx"
>  	;;
>  netgear,ex2700|\
>  netgear,wn3000rp-v3)
> -	set_wifi_led "$boardname:green:router"
> +	set_wifi_led "$model:green:router"
>  	;;
>  netgear,ex3700|\
>  netgear,ex6130)
> -	ucidef_set_led_netdev "wlan5g" "ROUTER (green)" "$boardname:green:rou=
ter" "wlan0"
> -	ucidef_set_led_netdev "wlan2g" "DEVICE (green)" "$boardname:green:dev=
ice" "wlan1"
> +	ucidef_set_led_netdev "wlan5g" "ROUTER (green)" "$model:green:router"=
 "wlan0"
> +	ucidef_set_led_netdev "wlan2g" "DEVICE (green)" "$model:green:device"=
 "wlan1"
>  	;;
>  phicomm,psg1208)
> -	set_wifi_led "$boardname:white:wlan2g"
> +	set_wifi_led "$model:white:wlan2g"
>  	;;
>  planex,mzk-ex750np|\
>  zbtlink,zbt-we826-e)
> -	set_wifi_led "$boardname:red:wifi"
> +	set_wifi_led "$model:red:wifi"
>  	;;
>  tplink,archer-c2-v1)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch1" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch1" "0=
x01"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch1" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch1" "0x01"=

>  	;;
>  tplink,archer-c20-v1)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x=
1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x=
01"
> +	ucidef_set_led_switch "lan" "lan" "$model:blue:lan" "switch0" "0x1e"
> +	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x01"
>  	;;
>  tplink,archer-c20i)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x=
1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x=
01"
> +	ucidef_set_led_switch "lan" "lan" "$model:blue:lan" "switch0" "0x1e"
> +	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x01"
>  	;;
>  tplink,archer-c50-v1)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	;;
>  tplink,archer-mr200)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:white:lan" "eth0.1"
> -	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "usb0"
> +	ucidef_set_led_netdev "lan" "lan" "$model:white:lan" "eth0.1"
> +	ucidef_set_led_netdev "wan" "wan" "$model:white:wan" "usb0"
>  	;;
>  tplink,re200-v1)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" "eth0"
>  	;;
>  youku,yk1)
> -	set_wifi_led "$boardname:blue:air"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x=
10"
> +	set_wifi_led "$model:blue:air"
> +	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x10"
>  	;;
>  zbtlink,zbt-ape522ii)
> -	ucidef_set_led_netdev "wlan2g4" "wlan1-link" "$boardname:green:wlan2g=
4" "wlan1"
> -	ucidef_set_led_netdev "sys1" "wlan1" "$boardname:green:sys1" "wlan1" =
"tx rx"
> -	ucidef_set_led_netdev "sys2" "wlan0" "$boardname:green:sys2" "wlan0" =
"tx rx"
> +	ucidef_set_led_netdev "wlan2g4" "wlan1-link" "$model:green:wlan2g4" "=
wlan1"
> +	ucidef_set_led_netdev "sys1" "wlan1" "$model:green:sys1" "wlan1" "tx =
rx"
> +	ucidef_set_led_netdev "sys2" "wlan0" "$model:green:sys2" "wlan0" "tx =
rx"
>  	;;
>  zbtlink,zbt-wa05)
> -	set_wifi_led "$boardname:blue:air"
> +	set_wifi_led "$model:blue:air"
>  	;;
>  zbtlink,zbt-we826-16m|\
>  zbtlink,zbt-we826-32m)
> @@ -217,7 +217,7 @@ zbtlink,zbt-we1026-h-32m)
>  	ucidef_set_led_switch "wan" "wan" "we1026-h:green:wan" "switch0" "0x1=
0"
>  	;;
>  zbtlink,zbt-we2026)
> -	set_wifi_led "$boardname:green:wlan"
> +	set_wifi_led "$model:green:wlan"
>  	;;
>  esac
> =20
> diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds =
b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
> index fdfd29d011..8073c71aea 100755
> --- a/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
> @@ -9,7 +9,7 @@ set_wifi_led() {
> =20
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  board_config_update
> =20
> @@ -18,70 +18,70 @@ led_wlan=3D"$(get_dt_led wlan)"
> =20
>  case $board in
>  d-team,newifi-d2)
> -	ucidef_set_led_netdev "internet" "internet" "$boardname:amber:interne=
t" "wan"
> -	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:blue:wlan2g"=
 "wlan0"
> -	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:blue:wlan5g" "=
wlan1"
> +	ucidef_set_led_netdev "internet" "internet" "$model:amber:internet" "=
wan"
> +	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$model:blue:wlan2g" "wl=
an0"
> +	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$model:blue:wlan5g" "wlan=
1"
>  	;;
>  d-team,pbr-m1|\
>  gehua,ghl-r-001)
> -	ucidef_set_led_netdev "internet" "internet" "$boardname:blue:internet=
" "wan"
> +	ucidef_set_led_netdev "internet" "internet" "$model:blue:internet" "w=
an"
>  	;;
>  dlink,dir-860l-b1)
> -	ucidef_set_led_netdev "wan" "wan" "$boardname:green:net" "wan"
> +	ucidef_set_led_netdev "wan" "wan" "$model:green:net" "wan"
>  	;;
>  gnubee,gb-pc1|\
>  gnubee,gb-pc2)
> -	ucidef_set_led_netdev "lan1" "lan1" "$boardname:green:lan1" "lan1"
> -	ucidef_set_led_netdev "lan2" "lan2" "$boardname:green:lan2" "lan2"
> +	ucidef_set_led_netdev "lan1" "lan1" "$model:green:lan1" "lan1"
> +	ucidef_set_led_netdev "lan2" "lan2" "$model:green:lan2" "lan2"
>  	;;
>  linksys,ea7500-v2)
> -	ucidef_set_led_netdev "lan1" "lan1 link" "$boardname:green:lan1" "lan=
1" "link"
> -	ucidef_set_led_netdev "lan2" "lan2 link" "$boardname:green:lan2" "lan=
2" "link"
> -	ucidef_set_led_netdev "lan3" "lan3 link" "$boardname:green:lan3" "lan=
3" "link"
> -	ucidef_set_led_netdev "lan4" "lan4 link" "$boardname:green:lan4" "lan=
4" "link"
> -	ucidef_set_led_netdev "wan" "wan link" "$boardname:green:wan" "wan" "=
link"
> +	ucidef_set_led_netdev "lan1" "lan1 link" "$model:green:lan1" "lan1" "=
link"
> +	ucidef_set_led_netdev "lan2" "lan2 link" "$model:green:lan2" "lan2" "=
link"
> +	ucidef_set_led_netdev "lan3" "lan3 link" "$model:green:lan3" "lan3" "=
link"
> +	ucidef_set_led_netdev "lan4" "lan4 link" "$model:green:lan4" "lan4" "=
link"
> +	ucidef_set_led_netdev "wan" "wan link" "$model:green:wan" "wan" "link=
"
>  	;;
>  mikrotik,routerboard-m11g)
>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wla=
n0" "1" "100"
> -	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green=
:rssi1" "wlan0" "20" "100"
> -	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:gre=
en:rssi2" "wlan0" "40" "100"
> -	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi3" "w=
lan0" "60" "100"
> -	ucidef_set_led_rssi "rssiveryhigh" "RSSIVERYHIGH" "$boardname:green:r=
ssi4" "wlan0" "80" "100"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:green:rssi0" "wlan0" =
"1" "100"
> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:green:rss=
i1" "wlan0" "20" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:r=
ssi2" "wlan0" "40" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssi3" "wlan0=
" "60" "100"
> +	ucidef_set_led_rssi "rssiveryhigh" "RSSIVERYHIGH" "$model:green:rssi4=
" "wlan0" "80" "100"
>  	;;
>  mtc,wr1201)
> -	ucidef_set_led_netdev "eth_link" "LAN link" "$boardname:green:eth_lin=
k" "br-lan"
> +	ucidef_set_led_netdev "eth_link" "LAN link" "$model:green:eth_link" "=
br-lan"
>  	;;
>  netgear,r6220|\
>  netgear,r6260|\
>  netgear,r6350|\
>  netgear,r6850|\
>  netgear,wndr3700-v5)
> -	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" "wan"
> +	ucidef_set_led_netdev "wan" "wan" "$model:green:wan" "wan"
>  	;;
>  netgear,r6700-v2|\
>  netgear,r6800)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:white:wan" "wan"
> -	ucidef_set_led_netdev "lan1" "LAN1" "$boardname:white:lan1" "lan1"
> -	ucidef_set_led_netdev "lan2" "LAN2" "$boardname:white:lan2" "lan2"
> -	ucidef_set_led_netdev "lan3" "LAN3" "$boardname:white:lan3" "lan3"
> -	ucidef_set_led_netdev "lan4" "LAN4" "$boardname:white:lan4" "lan4"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:white:wan" "wan"
> +	ucidef_set_led_netdev "lan1" "LAN1" "$model:white:lan1" "lan1"
> +	ucidef_set_led_netdev "lan2" "LAN2" "$model:white:lan2" "lan2"
> +	ucidef_set_led_netdev "lan3" "LAN3" "$model:white:lan3" "lan3"
> +	ucidef_set_led_netdev "lan4" "LAN4" "$model:white:lan4" "lan4"
>  	;;
>  tplink,re350-v1|\
>  tplink,re650-v1)
> -	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "$boardname:blue:wifi2G" "=
wlan0"
> -	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "$boardname:blue:wifi5G" "wl=
an1"
> -	ucidef_set_led_netdev "eth_act" "LAN act" "$boardname:green:eth_act" =
"lan" "tx rx"
> -	ucidef_set_led_netdev "eth_link" "LAN link" "$boardname:green:eth_lin=
k" "lan" "link"
> +	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "$model:blue:wifi2G" "wlan=
0"
> +	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "$model:blue:wifi5G" "wlan1"=

> +	ucidef_set_led_netdev "eth_act" "LAN act" "$model:green:eth_act" "lan=
" "tx rx"
> +	ucidef_set_led_netdev "eth_link" "LAN link" "$model:green:eth_link" "=
lan" "link"
>  	;;
>  xzwifi,creativebox-v1)
> -	ucidef_set_led_netdev "internet" "internet" "$boardname:blue:internet=
" "wan"
> +	ucidef_set_led_netdev "internet" "internet" "$model:blue:internet" "w=
an"
>  	;;
>  xiaomi,redmi-router-ac2100)
> -	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "wan"
> +	ucidef_set_led_netdev "wan" "wan" "$model:white:wan" "wan"
>  	;;
>  youhua,wr1200js)
> -	ucidef_set_led_netdev "internet" "INTERNET" "$boardname:green:wan" "w=
an"
> +	ucidef_set_led_netdev "internet" "INTERNET" "$model:green:wan" "wan"
>  	;;
>  esac
> =20
> diff --git a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_=
led_migration b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04=
_led_migration
> index 73140fd7d5..98ae99f53d 100644
> --- a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_mig=
ration
> +++ b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_mig=
ration
> @@ -4,17 +4,17 @@
>  . /lib/functions/migrations.sh
> =20
>  board=3D$(board_name)
> -boardonly=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  case "$board" in
>  mikrotik,routerboard-750gr3)
> -	migrate_leds "^rb750gr3:=3D$boardonly:"
> +	migrate_leds "^rb750gr3:=3D$model:"
>  mikrotik,routerboard-m11g)
> -	migrate_leds "^rbm11g:=3D$boardonly:"
> +	migrate_leds "^rbm11g:=3D$model:"
>  mikrotik,routerboard-m33g)
> -	migrate_leds "^rbm33g:=3D$boardonly:"
> +	migrate_leds "^rbm33g:=3D$model:"
>  netgear,wndr3700-v5)
> -	migrate_leds "^wndr3700v5:=3D$boardonly:"
> +	migrate_leds "^wndr3700v5:=3D$model:"
>  	;;
> =20
>  esac
> diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds =
b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
> index c66e13d3c5..5dcd643dc8 100755
> --- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
> @@ -9,7 +9,7 @@ set_wifi_led() {
> =20
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  board_config_update
> =20
> @@ -18,84 +18,84 @@ led_wlan=3D"$(get_dt_led wlan)"
> =20
>  case $board in
>  alfa-network,awusfree1)
> -	set_wifi_led "$boardname:blue:wlan"
> +	set_wifi_led "$model:blue:wlan"
>  	;;
>  cudy,wr1000)
> -	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x=
10"
> -	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1" "switch0" =
"0x08"
> -	ucidef_set_led_switch "lan2" "lan2" "$boardname:blue:lan2" "switch0" =
"0x04"
> +	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x10"
> +	ucidef_set_led_switch "lan1" "lan1" "$model:blue:lan1" "switch0" "0x0=
8"
> +	ucidef_set_led_switch "lan2" "lan2" "$model:blue:lan2" "switch0" "0x0=
4"
>  	;;
>  glinet,gl-mt300n-v2)
> -	set_wifi_led "$boardname:red:wlan"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x1"
> +	set_wifi_led "$model:red:wlan"
> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x1"
>  	;;
>  hilink,hlk-7628n|\
>  skylab,skw92a)
> -	set_wifi_led "$boardname:green:wlan"
> +	set_wifi_led "$model:green:wlan"
>  	;;
>  hiwifi,hc5661a|\
>  hiwifi,hc5761a)
> -	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet=
" "switch0" "0x10"
> +	ucidef_set_led_switch "internet" "internet" "$model:blue:internet" "s=
witch0" "0x10"
>  	;;
>  mediatek,linkit-smart-7688)
>  	ucidef_set_led_wlan "wifi" "wifi" "linkit-smart-7688:orange:wifi" "ph=
y0tpt"
>  	;;
>  netgear,r6120)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x0f"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x10"
> -	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" =
"phy0tpt"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x0f"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x10"=

> +	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$model:green:wlan2g" "phy=
0tpt"
>  	;;
>  rakwireless,rak633)
> -	set_wifi_led "$boardname:blue:wifi"
> +	set_wifi_led "$model:blue:wifi"
>  	;;
>  tama,w06)
> -	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
> -	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
> +	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth0"
> +	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
>  	;;
>  tplink,archer-c20-v4|\
>  tplink,archer-c20-v5)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	;;
>  tplink,archer-c50-v3|\
>  tplink,archer-c50-v4)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> -	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan2g" "phy0=
tpt"
> -	ucidef_set_led_wlan "wlan5g" "wlan5g" "$boardname:green:wlan5g" "phy1=
tpt"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

> +	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan2g" "phy0tpt"=

> +	ucidef_set_led_wlan "wlan5g" "wlan5g" "$model:green:wlan5g" "phy1tpt"=

>  	;;
>  tplink,re200-v2|\
>  tplink,tl-mr3020-v3|\
>  tplink,tl-wa801nd-v5)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
> +	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" "eth0"
>  	;;
>  tplink,tl-mr3420-v5|\
>  tplink,tl-wr842n-v5)
> -	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tp=
t"
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	;;
>  tplink,tl-wr840n-v4)
> -	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tp=
t"
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	;;
>  tplink,tl-wr841n-v13)
> -	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tp=
t"
> -	ucidef_set_led_switch "lan1" "lan1" "$boardname:green:lan1" "switch0"=
 "0x2"
> -	ucidef_set_led_switch "lan2" "lan2" "$boardname:green:lan2" "switch0"=
 "0x4"
> -	ucidef_set_led_switch "lan3" "lan3" "$boardname:green:lan3" "switch0"=
 "0x8"
> -	ucidef_set_led_switch "lan4" "lan4" "$boardname:green:lan4" "switch0"=
 "0x10"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
> +	ucidef_set_led_switch "lan1" "lan1" "$model:green:lan1" "switch0" "0x=
2"
> +	ucidef_set_led_switch "lan2" "lan2" "$model:green:lan2" "switch0" "0x=
4"
> +	ucidef_set_led_switch "lan3" "lan3" "$model:green:lan3" "switch0" "0x=
8"
> +	ucidef_set_led_switch "lan4" "lan4" "$model:green:lan4" "switch0" "0x=
10"
> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	;;
>  tplink,tl-wr841n-v14)
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x1e"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	;;
>  tplink,tl-wr902ac-v3)
> -	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tp=
t"
> -	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0=
x10"
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x10"
> +	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
> +	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x10"=

> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x10"=

>  	;;
>  unielec,u7628-01-16m)
>  	ucidef_set_led_switch "lan1" "lan1" "u7628-01:green:lan1" "switch0" "=
0x2"
> @@ -106,28 +106,28 @@ unielec,u7628-01-16m)
>  	set_wifi_led "u7628-01:green:wlan"
>  	;;
>  wavlink,wl-wn570ha1)
> -	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0=
x01"
> +	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"=

>  	ucidef_set_rssimon "wlan0" "200000" "1"
> -	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low"=
 "wlan0" "1" "49"
> -	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med"=
 "wlan0" "50" "84"
> -	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-hi=
gh" "wlan0" "85" "100"
> -	set_wifi_led "$boardname:green:wifi"
> +	ucidef_set_led_rssi "wifi-low" "wifi-low" "$model:green:wifi-low" "wl=
an0" "1" "49"
> +	ucidef_set_led_rssi "wifi-med" "wifi-med" "$model:green:wifi-med" "wl=
an0" "50" "84"
> +	ucidef_set_led_rssi "wifi-high" "wifi-high" "$model:green:wifi-high" =
"wlan0" "85" "100"
> +	set_wifi_led "$model:green:wifi"
>  	;;
>  wavlink,wl-wn575a3)
>  	ucidef_set_rssimon "wlan1" "200000" "1"
> -	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low"=
 "wlan1" "1" "49"
> -	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med"=
 "wlan1" "50" "84"
> -	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-hi=
gh" "wlan1" "85" "100"
> +	ucidef_set_led_rssi "wifi-low" "wifi-low" "$model:green:wifi-low" "wl=
an1" "1" "49"
> +	ucidef_set_led_rssi "wifi-med" "wifi-med" "$model:green:wifi-med" "wl=
an1" "50" "84"
> +	ucidef_set_led_rssi "wifi-high" "wifi-high" "$model:green:wifi-high" =
"wlan1" "85" "100"
>  	;;
>  zbtlink,zbt-we1226)
> -	set_wifi_led "$boardname:green:wlan"
> -	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0"=
 "0x01"
> -	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0"=
 "0x02"
> -	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0=
x10"
> +	set_wifi_led "$model:green:wlan"
> +	ucidef_set_led_switch "lan1" "LAN1" "$model:green:lan1" "switch0" "0x=
01"
> +	ucidef_set_led_switch "lan2" "LAN2" "$model:green:lan2" "switch0" "0x=
02"
> +	ucidef_set_led_switch "wan" "WAN" "$model:green:wan" "switch0" "0x10"=

>  	;;
>  zyxel,keenetic-extra-ii)
> -	set_wifi_led "$boardname:green:wifi"
> -	ucidef_set_led_switch "internet" "internet" "$boardname:green:interne=
t" "switch0" "0x01"
> +	set_wifi_led "$model:green:wifi"
> +	ucidef_set_led_switch "internet" "internet" "$model:green:internet" "=
switch0" "0x01"
>  	;;
>  esac
> =20
> diff --git a/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds =
b/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
> index a042ecfbda..a9f7145d7a 100755
> --- a/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
> @@ -9,7 +9,7 @@ set_wifi_led() {
> =20
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  board_config_update
> =20
> @@ -22,7 +22,7 @@ airlink101,ar725w)
>  	set_wifi_led "rt2800soc-phy0::radio"
>  	;;
>  belkin,f5d8235-v1)
> -	set_wifi_led "$boardname:blue:wireless"
> +	set_wifi_led "$model:blue:wireless"
>  	;;
>  ralink,v11st-fe)
>  	set_wifi_led "rt2800pci-phy0::radio"
> diff --git a/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds =
b/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
> index ae813e85d6..72485ee9a4 100755
> --- a/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
> @@ -9,7 +9,7 @@ set_wifi_led() {
> =20
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  board_config_update
> =20
> @@ -25,7 +25,7 @@ airlive,air3gii|\
>  aximcom,mr-102n|\
>  edimax,3g-6200nl|\
>  netgear,wnce2001)
> -	set_wifi_led "$boardname:green:wlan"
> +	set_wifi_led "$model:green:wlan"
>  	;;
>  alfa-network,w502u|\
>  dlink,dir-300-b1|\
> @@ -64,43 +64,43 @@ asiarf,awapn2403)
>  	set_wifi_led "rt2800soc-phy0::radio"
>  	;;
>  dlink,dcs-930l-b1)
> -	ucidef_set_led_netdev "wifi" "WiFi" "$boardname:blue:wps"
> +	ucidef_set_led_netdev "wifi" "WiFi" "$model:blue:wps"
>  	;;
>  dlink,dir-620-d1|\
>  trendnet,tew-714tru)
> -	set_wifi_led "$boardname:green:wifi"
> +	set_wifi_led "$model:green:wifi"
>  	;;
>  edimax,3g-6200n|\
>  planex,mzk-w300nh2)
> -	set_wifi_led "$boardname:amber:wlan"
> +	set_wifi_led "$model:amber:wlan"
>  	;;
>  fon,fonera-20n)
> -	set_wifi_led "$boardname:orange:wifi"
> +	set_wifi_led "$model:orange:wifi"
>  	;;
>  hauppauge,broadway)
> -	set_wifi_led "$boardname:red:wps_active"
> +	set_wifi_led "$model:red:wps_active"
>  	;;
>  hootoo,ht-tm02)
> -	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:lan" "eth0"
> -	set_wifi_led "$boardname:blue:wlan"
> +	ucidef_set_led_netdev "eth" "Ethernet" "$model:green:lan" "eth0"
> +	set_wifi_led "$model:blue:wlan"
>  	;;
>  huawei,hg255d)
> -	set_wifi_led "$boardname:green:wlan"
> -	ucidef_set_led_netdev "internet" "internet" "$boardname:green:interne=
t" "eth0.2"
> +	set_wifi_led "$model:green:wlan"
> +	ucidef_set_led_netdev "internet" "internet" "$model:green:internet" "=
eth0.2"
>  	;;
>  intenso,memory2move)
> -	set_wifi_led "$boardname:blue:wifi"
> -	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:wan" "eth0"
> +	set_wifi_led "$model:blue:wifi"
> +	ucidef_set_led_netdev "eth" "Ethernet" "$model:green:wan" "eth0"
>  	;;
>  omnima,miniembplug)
> -	set_wifi_led "$boardname:red:wlan"
> +	set_wifi_led "$model:red:wlan"
>  	;;
>  vocore,vocore-8m|\
>  vocore,vocore-16m)
>  	ucidef_set_led_netdev "eth" "ETH" "vocore:orange:eth" "eth0"
>  	;;
>  zorlik,zl5900v2)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
> +	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" eth0
>  	;;
>  esac
> =20
> diff --git a/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds =
b/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
> index 1a72112c6f..e921affb4b 100755
> --- a/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
> @@ -9,7 +9,7 @@ set_wifi_led() {
> =20
> =20
>  board=3D$(board_name)
> -boardname=3D"${board##*,}"
> +model=3D"${board##*,}"
> =20
>  board_config_update
> =20
> @@ -18,14 +18,14 @@ led_wlan=3D"$(get_dt_led wlan)"
> =20
>  case $board in
>  belkin,f9k1109v1)
> -	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:wps" "eth0"
> +	ucidef_set_led_netdev "lan" "lan" "$model:blue:wps" "eth0"
>  	;;
>  edimax,br-6475nd)
> -	set_wifi_led "$boardname:amber:wlan"
> +	set_wifi_led "$model:amber:wlan"
>  	;;
>  omnima,hpm)
> -	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
> -	set_wifi_led "$boardname:green:wifi"
> +	ucidef_set_led_netdev "eth" "ETH" "$model:green:eth" "eth0"
> +	set_wifi_led "$model:green:wifi"
>  	;;
>  esac
> =20
>=20



--CRvtAjKGTaN7E4un4J2982LrkFd4ILcDL--

--JcMVygrpQOqII1c3grTpExgGHzluqrC3K
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEZmTnvaa2aYgexS51Fu8/ZMsgHZwFAl7GxOEACgkQFu8/ZMsg
HZxICQ/9FwX7MUwrdDsq/t9lqCFxtOG52T92mTW3qhMQZtJs4BYWY4F2DMFZc4Os
OBWGpCJKqpPkgZH4ZaEUERVHeMC3DXnZ4Iq15RLur+zy5eMtjI0QqCMS0JMpDPzb
UqUdZJ9YDyXLEpB0Im4QmrnCsbj+7zjf4fEMvzp9u9SAzIfghsrULP/Sih8moGJU
ssSOO61PaNjmLo8k7NWdqoynlPhVStqTIFC9Y+xDhRryE8TK/zzwg+omKsPGgTXq
Mlw0cqJmuS2YVYP+YlHIW9sKJS3EEes7fftMULWNlKum8FciG+mIaZAtqfTaRNiE
d/1h9fC791V9CGHKJZsAOJ6OfzwlnUuAIqbBQRGowf276HKzVSbEbAtIKrPuD9aB
Fh7Ax08iGKmJSZzbKLyu03rE0Anaw8nbwaZzbunc3hctRdkhtGcHuzI6zUbPfBd9
uexNr7ZSVnqetjyMq9bTJKuMOj8B8/rV623DQptN/KXExflftkVDVqcIfQ+ZWEbF
P5Zkr9NQuaIrTetmr9Cs4MXqFZS8+T/L/0SegtsZ1usbnTppEcS8J6G3mhK+9DYS
P+lI5c05R7wAmlARRS7DFiZLR0ojOfum+4ZG3N/ZHmdwCnYUgDHofZiiIc0doDae
o+E4vKWkEGpGPPqxGlVYjJ585vHQTsEHT+ibQuZnMDebqerPXHE=
=8zRm
-----END PGP SIGNATURE-----

--JcMVygrpQOqII1c3grTpExgGHzluqrC3K--


--===============6129486460948581283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6129486460948581283==--

