Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4D2173745
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 13:34:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ViiOwRg3dy3KTvo36qA69aGRCfkljGIIt19zwpMypeg=; b=T8YmcQ5n1uMqEpIJ17dNAWgDa
	kWhaM/TOy2pvCzWtNLRvXMJ3O4MNgWh8lH0e74kejtOpiphTnkKFZAYrzzTFZW0RIaCZWnRaQgm0G
	E3vY4IAvtIAQ3/QyJcEdd8e70jds6nhA2UkZW7/+24HgGc90rZcAT0xzIBJa+/BOGdJmXf+ZWVlOm
	mrk5ljjTk45PRk4svttzAaJeLl92D67WmPdqb8+lwZCeUH5OYys0zSf/T0OLKFUZa5N5Gk20EUqT4
	4mcDwk5QOyc4lVd1AtDfdLu7gnBbctfs2vn6u4xLW0thnNoAal9Cjg1ujrCb8aulRB92AgKyV4M1I
	PVYZBYKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eqR-0003P5-6D; Fri, 28 Feb 2020 12:34:19 +0000
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200227134625.48028-1-freifunk@adrianschmutzler.de>
 <20200227134625.48028-2-freifunk@adrianschmutzler.de>
Date: Fri, 28 Feb 2020 13:33:28 +0100
In-Reply-To: <20200227134625.48028-2-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.34496.1582893224.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: fix and tidy up DTS for
 D-Link DIR-810L
Content-Type: multipart/mixed; boundary="===============4917846136139469254=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4917846136139469254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4917846136139469254==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtp1.guifi.net ([2a00:1508:1000::6d45:935])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7epl-0002z7-S4
	for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 12:33:40 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 48TTV12D21z437L;
	Fri, 28 Feb 2020 13:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-language:content-transfer-encoding:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:subject:subject:received
	:received:received; s=dkim; t=1582893209; x=1584707610; bh=tpPqy
	cMvOgLmmQAsJk/Qrfa2svv2hcg+j5At/yfWQLM=; b=WNAVNyFJjVDo7P90rcApW
	CWsRypV6Mh4Yi3e3A+f8fXsw6i7/e37Fx0GY9unZ65zUL6XGEEu7D4cm7YVAnJrg
	/yZm3wLIUs5lpwMsJkrJfBaeCS5pXEjn3bwgI/NcZ3TcxNuUhCZiMDNu8XxFbNpS
	3loG9D6JB8W38yt+k2vBe3Q9bZ8sgjg2zir6trg7zhnkpuKJRX005/vAwgGL6ywU
	KK3Xg5Fgv/LunVq0Q/VlgTwXLdL9upWjukTBzWu/BaOBdwuBqP/d8ACYWCz/srBk
	uLL+J+KxU6k3jWInX7PvOJM8f2EK2lYBFVlBS5Ag8tuuD27cyV1SI/ZjrmqxiTrX
	g==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id US3TiSaPc3MJ; Fri, 28 Feb 2020 13:33:29 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 48TTV060hLz3ykH;
	Fri, 28 Feb 2020 13:33:28 +0100 (CET)
Received: from [147.83.42.157] (dync-42-157.ac.upc.es [147.83.42.157])
	by mail.guifi.net (Postfix) with ESMTPSA id 86B8B6A5817;
	Fri, 28 Feb 2020 13:33:28 +0100 (CET)
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: fix and tidy up DTS for
 D-Link DIR-810L
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200227134625.48028-1-freifunk@adrianschmutzler.de>
 <20200227134625.48028-2-freifunk@adrianschmutzler.de>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
Message-ID: <cf52ef4e-2f5a-bbdb-cc0b-4d847fa5ff28@guifi.net>
Date: Fri, 28 Feb 2020 13:33:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200227134625.48028-2-freifunk@adrianschmutzler.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_043338_386703_AC182FD6 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Hi Adrian,

I tested the patches on the device. I sysupgraded from the current
master and everything seems OK.

- Partitions

root@OpenWrt:~# cat /proc/mtd
dev:=C2=A0=C2=A0=C2=A0 size=C2=A0=C2=A0 erasesize=C2=A0 name
mtd0: 00030000 00001000 "u-boot"
mtd1: 00010000 00001000 "u-boot-env"
mtd2: 00010000 00001000 "factory"
mtd3: 00010000 00001000 "factory5g"
mtd4: 00010000 00001000 "Wolf_Config"
mtd5: 00080000 00001000 "MyDlink"
mtd6: 00080000 00001000 "Jffs2"
mtd7: 00690000 00001000 "firmware"
mtd8: 00198a90 00001000 "kernel"
mtd9: 004f7570 00001000 "rootfs"
mtd10: 001d4000 00001000 "rootfs_data"

- Button codes OK both

- No missing functionalities

I noticed, however, that the green "Internet" LED blinks to the LAN4
port, while -I guess- it should blink to the INTERNET (wan/eth0.2) port.
But this was already happening before, it's not related to your patch.

Roger

El 27/2/20 a les 14:46, Adrian Schmutzler ha escrit:
> This patch addresses several issues for D-Link DIR-810L:
>
> - add correct button codes
> - harmonize button node names
> - use generic flash@0
> - remove unused pin groups from state_default
> - improve sorting of properties
>
> The patch is only build-tested.
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>
> ---
>
> If somebody owns this device, I'd be delighted about a test of both pat=
ches
> in general as well as if somebody would test if higher SPI frequency is=

> possible.
>
> ---
>  .../ramips/dts/mt7620a_dlink_dir-810l.dts      | 18 ++++++++++--------=

>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts b/targe=
t/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
> index 0b1ca26ba4..514e9cc354 100644
> --- a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
> +++ b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
> @@ -23,20 +23,20 @@
>  		reset {
>  			label =3D "reset";
>  			gpios =3D <&gpio0 1 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <BTN_0>;
> +			linux,code =3D <KEY_RESTART>;
>  		};
> =20
>  		wps {
>  			label =3D "wps";
>  			gpios =3D <&gpio0 2 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <BTN_0>;
> +			linux,code =3D <KEY_WPS_BUTTON>;
>  		};
>  	};
> =20
>  	leds {
>  		compatible =3D "gpio-leds";
> =20
> -		led_power_green: power {
> +		led_power_green: power_green {
>  			label =3D "dir-810l:green:power";
>  			gpios =3D <&gpio0 9 GPIO_ACTIVE_HIGH>;
>  		};
> @@ -46,7 +46,7 @@
>  			gpios =3D <&gpio0 12 GPIO_ACTIVE_HIGH>;
>  		};
> =20
> -		power2 {
> +		power_orange {
>  			label =3D "dir-810l:orange:power";
>  			gpios =3D <&gpio0 13 GPIO_ACTIVE_HIGH>;
>  		};
> @@ -56,7 +56,7 @@
>  &spi0 {
>  	status =3D "okay";
> =20
> -	m25p80@0 {
> +	flash@0 {
>  		compatible =3D "jedec,spi-nor";
>  		reg =3D <0>;
>  		spi-max-frequency =3D <10000000>;
> @@ -119,7 +119,7 @@
> =20
>  &state_default {
>  	gpio {
> -		ralink,group =3D "mdio", "rgmii1", "i2c", "wled", "uartf";
> +		ralink,group =3D "i2c", "uartf";
>  		ralink,function =3D "gpio";
>  	};
>  };
> @@ -130,9 +130,10 @@
>  };
> =20
>  &gsw {
> -	mediatek,port4 =3D "ephy";
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&ephy_pins>;
> +
> +	mediatek,port4 =3D "ephy";
>  };
> =20
>  &pcie {
> @@ -140,9 +141,10 @@
>  };
> =20
>  &wmac {
> -	ralink,mtd-eeprom =3D <&factory 0x0>;
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pa_pins>;
> +
> +	ralink,mtd-eeprom =3D <&factory 0x0>;
>  	mtd-mac-address =3D <&factory 0x28>;
>  };
> =20



--===============4917846136139469254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4917846136139469254==--
