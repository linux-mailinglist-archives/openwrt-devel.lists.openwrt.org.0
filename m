Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC8DE14FB
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 11:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7T6Tra0iYFcg1WBbKxo8lijQ7NBMO72ndHOXPlLFZbk=; b=UH1kRgGBEANnBqlJMUx486N8z
	XKEyiPfWYsogNYLNWpjK9QjhwRl6Mt7I+dViyn82iGwXp2dlPIDqqaTgnwDUYpuHlxnOOUce2/BD+
	2DVgDDwxT4ErVjQOIJpMr8cDs6KZDFgjEGJqjK5JDBzhWxxgmmAp88jJQpOV5WKAsleOBkYbLxz3+
	KbEeDeSDnQPR2VNXl1IOTZhugLneT8jfxWG9EjaVzc6ZH5CdywOoDvhYE+kFIvLzS9yjEPyCSQ4VY
	4P0V0inUKAFTv1rcPBl4rpJAWIvA+n+82E3xt5DHwa4QyZ35lOKotxvaBTPiMo6ypE/ppsl99y+Jj
	Ra0qFnboQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCVs-0004vS-LK; Wed, 23 Oct 2019 09:01:04 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCVi-0004jD-6F
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 09:00:57 +0000
Received: from [192.168.180.1] (port=43578 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1iNCVU-00082q-3C; Wed, 23 Oct 2019 11:00:41 +0200
Received: from [192.168.3.44] (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTP id CE553280175;
 Wed, 23 Oct 2019 11:00:40 +0200 (CEST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191022095149.2385-1-avalentin@marcant.net>
 <20191022095149.2385-4-avalentin@marcant.net>
 <00d501d58902$c7cc1bc0$57645340$@adrianschmutzler.de>
From: =?UTF-8?Q?Andr=c3=a9_Valentin?= <avalentin@marcant.net>
Autocrypt: addr=avalentin@marcant.net; prefer-encrypt=mutual; keydata=
 mQGiBD0cWuMRBAColkNajBIWPDHBP9p1lNWkyc5zO7EOywGqJX3beEFplGzJDgBBPZoIzNB2
 KoR7jMtQpHFF2NUc0Z/wWMY2evYlazXWj9XenUeZKiVnyN2K4CZj4LjkEqVgz4K/FMjS3dxc
 PqUI4pjPHkG0ELsR6kPdGdqcOO6UKJa1Gi48pCZBPwCgtiqLi4ZwYlCpEKpwYpcJHl4ytS8E
 AJgxoWoT7+QmaWnAZOHwIPhXCNimkRQyl3JphRi83S80i5bUEWDiIzcBrnrp2iOsrhzCkdSp
 HC4dD0fTe3rwDvQ561AYM1BaCxWEeG2UUMU/QpLk9ZIJbjR6KACes54D6j0ZO0tbFUXztvHR
 eNRPxxWYgdAOluxLrbKCYf0KBsQAA/9F5KxcXjw9aLoxM+x8RQkAzkrFf4txrOsIksFqbDyL
 FCsBJygeIx+6qcGM1W6nToozG7wq4oUy80vVHPMKFEdG9PZRdqGCScbPLmmBBTwYGYAfbGv/
 QreWt7o7NF1ZE/Bik6pkhUGm67ZwWGkZPb7MauJUcAsPMNlKJxHHZ4zuRLQrTWFyY2FudCBU
 ZWNobmlrIDx0ZWNobmlrQGxpc3RzLm1hcmNhbnQubmV0PohXBBMRAgAXBQI9HFweBQsHCgME
 AxUDAgMWAgECF4AACgkQSZoWh3g1Nl3UVwCeMbpxrq+KCIe9q000qqlmHvppYMQAoKSood56
 plB3Cap9IzkqV5eW8heKuQINBD0cW5cQCAC545/wBGyf1EAVTRYY2FvGgyFyNh4qUj1qgQ2I
 2F6IUEbRghHgZ9Q6ObYiw3GMIRtTviGXB+1AXHG7T5xcSwn9yFVNPNqP9OUmQ2lr6OcgRkBD
 TJSnb1ArZmlntpFnXjwp1FDMFrjrWyeJoFCjWmu4MKy18RLNAquMJuL3azXfICsgQSrd9Qxw
 +wK/kjE4JqDOIMGv+Fitcuf3hnk910s95hMFETjEwqetXf+LTulaIlZsbgZZ7NiIe1mjMoQz
 P4aP06Kq2syhZznroZt6EMO4MCsW9kQQ6xmS2hURY7mgi2mkO7qzEt5lZKmzHOFPCFSPEfcS
 IgH+m8Oh+nD1WOMzAAMGB/wOm2AsgNXrmnL3TEJ/QNbeBwtK7/TP8Rpkf4XWb/QXBWaS/xm6
 zIpePp+t0unqLS+D3Jh+8GBaWJTnG83lkYW899d8fuCaOJQ4jciiICtn41VvnIMnuK5OJqB3
 /W8SxnDe0jgX0xLhdUj/KWDdQi2qVm3cEWWhNnKk7+FTfhwN+XJu7ALkYPvAQDOxU8B86HNA
 TBKRlPPNQkw2cnksqQoL4mZCILqHy+LZ9PlxhorLB3c6AREN5io2SBrR6npMtauk2cgOJOQj
 zsMTlS546kEMTTw7VM5FwXyHzXRKlWt+N1Z/EXNK6VjhELO0aSlBMFDj4W2XZWZKDH2NiT4z
 naipiEYEGBECAAYFAj0cW5cACgkQSZoWh3g1Nl0UtQCcDAHtRR4R4UeleYr7ARXSrnAZ0IsA
 n1zVHHxU2yalWPKywjLmFKB5J7Zq
Organization: MarcanT AG
Message-ID: <fa904f8e-b317-79e9-f689-8bd4baad6a38@marcant.net>
Date: Wed, 23 Oct 2019 11:00:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <00d501d58902$c7cc1bc0$57645340$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_020054_541375_D3843407 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for ZyXEL NBG6716
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
Content-Type: multipart/mixed; boundary="===============7410258882934529462=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============7410258882934529462==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms040404090004000900060404"

This is a cryptographically signed message in MIME format.

--------------ms040404090004000900060404
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Adrian,

thanks you for your hints! Please see below for comments.

Am 22.10.19 um 20:01 schrieb Adrian Schmutzler:
> Hi,
>=20
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] O=
n Behalf Of Andr=C3=A9 Valentin
>> Sent: Dienstag, 22. Oktober 2019 11:52
>> To: openwrt-devel@lists.openwrt.org
>> Cc: avalentin@marcant.net
>> Subject: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for ZyXEL NBG6=
716
>>
>> Attention: Kernel partition size has been enlarged to 4MB.
>> To switch, you must update to latest ar71xx-nand snapshort and flash t=
he
>> sysupgrade-4M-Kernel.bin:
>>
>> zcat openwrt-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade-4M-Kernel.bi=
n | mtd -r -e ubi write - firmware; reboot -f
>> You will end up with a fresh config if you do not inject config into t=
he image.
>>
>> Access the real u-boot shell:
>> ZyXEL uses a proprietary loader/shell on top of u-boot: "ZyXEL zloader=
 v2.02"
>> When the device is starting up, the user can enter the the loader shel=
l
>> by simply pressing a key within the 3 seconds once the following strin=
g
>> appears on the serial console:
>>
>> |   Hit any key to stop autoboot:  3
>>
>> The user is then dropped to a locked shell.
>>
>> |NBG6716> HELP
>> |ATEN    x[,y]     set BootExtension Debug Flag (y=3Dpassword)
>> |ATSE    x         show the seed of password generator
>> |ATSH              dump manufacturer related data in ROM
>> |ATRT    [x,y,z,u] RAM read/write test (x=3Dlevel, y=3Dstart addr, z=3D=
end addr, u=3Diterations)
>> |ATGO              boot up whole system
>> |ATUR    x         upgrade RAS image (filename)
>> |NBG6716>
>>
>> In order to escape/unlock a password challenge has to be passed.
>> Note: the value is dynamic! you have to calculate your own!
>>
>> First use ATSE $MODELNAME (MODELNAME is the hostname in u-boot env)
>> to get the challange value/seed.
>>
>> |NBG6716> ATSE NBG6716
>> |012345678901
>>
>> This seed/value can be converted to the password with the help of this=

>> bash script (Thanks to http://www.adslayuda.com/Zyxel650-9.html author=
s):
>>
>> - tool.sh -
>> ror32() {
>>   echo $(( ($1 >> $2) | (($1 << (32 - $2) & (2**32-1)) ) ))
>> }
>> v=3D"0x$1"
>> a=3D"0x${v:2:6}"
>> b=3D$(( $a + 0x10F0A563))
>> c=3D$(( 0x${v:12:14} & 7 ))
>> p=3D$(( $(ror32 $b $c) ^ $a ))
>> printf "ATEN 1,%X\n" $p
>> - end of tool.sh -
>>
>> |# bash ./tool.sh 012345678901
>> |
>> |ATEN 1,879C711
>>
>> copy and paste the result into the shell to unlock zloader.
>>
>> |NBG6716> ATEN 1,0046B0017430
>>
>> If the entered code was correct the shell will change to
>> use the ATGU command to enter the real u-boot shell.
>>
>> |NBG6716> ATGU
>> |NBG6716#
>>
>> idsfg
>>
>> Signed-off-by: Andr=C3=A9 Valentin <avalentin@marcant.net>
>> ---
>>  .../ath79/base-files/etc/board.d/02_network   |   8 +
>>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
>>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
>>  .../etc/hotplug.d/ieee80211/00-wifi-migration |   3 +-
>>  .../ath79/base-files/lib/upgrade/platform.sh  |   3 +
>>  target/linux/ath79/dts/qca9557.dtsi           |  18 ++
>>  .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts | 296 +++++++++++++++++=
+
>>  target/linux/ath79/image/Makefile             |   1 +
>>  target/linux/ath79/image/common-zyxel.mk      |  29 ++
>>  target/linux/ath79/image/nand-zyxel.mk        |  21 ++
>>  10 files changed, 386 insertions(+), 1 deletion(-)
>>  create mode 100644 target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
>>  create mode 100644 target/linux/ath79/image/common-zyxel.mk
>>  create mode 100644 target/linux/ath79/image/nand-zyxel.mk
>>
>> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/ta=
rget/linux/ath79/base-files/etc/board.d/02_network
>> index fe74bddbf1..42f3462b89 100755
>> --- a/target/linux/ath79/base-files/etc/board.d/02_network
>> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
>> @@ -301,6 +301,10 @@ ath79_setup_interfaces()
>>  		ucidef_add_switch "switch0" \
>>  			"0@eth0" "3:lan:1" "4:lan:2"
>>  		;;
>> +	zyxel,nbg6716)
>> +		ucidef_add_switch "switch0" \
>> +			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth1"
>> +		;;
>>  	*)
>>  		ucidef_set_interfaces_lan_wan "eth0" "eth1"
>>  		;;
>> @@ -435,6 +439,10 @@ ath79_setup_macs()
>>  	wd,mynet-wifi-rangeextender)
>>  		lan_mac=3D$(nvram get et0macaddr)
>>  		;;
>> +	zyxel,nbg6716)
>> +		lan_mac=3D$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)=

>> +		wan_mac=3D$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)=

>> +		;;
>>  	esac
>>
>>  	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
>> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-a=
th9k-eeprom b/target/linux/ath79/base-
>> files/etc/hotplug.d/firmware/10-ath9k-eeprom
>> index 3240026aec..cfffe5702a 100644
>> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-ee=
prom
>> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-ee=
prom
>> @@ -46,6 +46,10 @@ case "$FIRMWARE" in
>>  		caldata_extract "radiocfg" 0x1000 0x440
>>  		ath9k_patch_mac $(mtd_get_mac_ascii devdata "wlan24mac")
>>  		;;
>> +	zyxel,nbg6716)
>> +		caldata_extract "art" 0x1000 0x440
>> +		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
>=20
> You need to remove the "0x2".
Fixed!

>=20
>> +		;;
>>  	*)
>>  		caldata_die "board $board is not supported yet"
>>  		;;
>> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-a=
th10k-caldata b/target/linux/ath79/base-
>> files/etc/hotplug.d/firmware/11-ath10k-caldata
>> index 8ab0f6f6ad..cc0cd2b7c0 100644
>> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-c=
aldata
>> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-c=
aldata
>> @@ -112,6 +112,10 @@ case "$FIRMWARE" in
>>  	ubnt,unifiac-pro)
>>  		caldata_extract "EEPROM" 0x5000 0x844
>>  		;;
>> +	zyxel,nbg6716)
>> +		caldata_extract "art" 0x5000 0x844
>> +		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env et=
haddr) +1)
>> +		;;
>>  	esac
>>  	;;
>>  "ath10k/pre-cal-pci-0000:00:00.0.bin")
>> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-=
wifi-migration b/target/linux/ath79/base-
>> files/etc/hotplug.d/ieee80211/00-wifi-migration
>> index 37a1346fe7..b0a5d79f9d 100644
>> --- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wifi-mi=
gration
>> +++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wifi-mi=
gration
>> @@ -15,7 +15,8 @@ migrate_wifi_path() {
>>
>>  			case "$board" in
>>  				tplink,archer-c7-v1|\
>> -				tplink,archer-c7-v2)
>> +				tplink,archer-c7-v2|\
>> +				zyxel,nbg6716)
>>  					path=3D"pci0000:00/0000:00:00.0"
>>  					WIFI_PATH_CHANGED=3D1
>>  				;;
>> diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/t=
arget/linux/ath79/base-files/lib/upgrade/platform.sh
>> index f4fca06384..46bd6ab9ef 100644
>> --- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
>> +++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
>> @@ -51,6 +51,9 @@ platform_do_upgrade() {
>>  	ubnt,routerstation-pro)
>>  		redboot_fis_do_upgrade "$1" kernel
>>  		;;
>> +	zyxel,nbg6716)
>> +		nand_do_upgrade "$1"
>> +		;;
>>  	*)
>>  		default_do_upgrade "$1"
>>  		;;
>> diff --git a/target/linux/ath79/dts/qca9557.dtsi b/target/linux/ath79/=
dts/qca9557.dtsi
>> index b29dfc72b2..61e1d5f6a4 100644
>> --- a/target/linux/ath79/dts/qca9557.dtsi
>> +++ b/target/linux/ath79/dts/qca9557.dtsi
>> @@ -178,6 +178,24 @@
>>  			};
>>  		};
>>
>> +		nand: nand@1b800200 {
>> +			compatible =3D "qca,ar934x-nand";
>> +			reg =3D <0x1b800200 0xb8>;
>> +
>> +			interrupts =3D <21>;
>> +			interrupt-parent =3D <&miscintc>;
>> +
>> +			resets =3D <&rst 14>;
>> +			reset-names =3D "nand";
>> +
>> +			nand-ecc-mode =3D "hw";
>> +
>> +			#address-cells =3D <1>;
>> +			#size-cells =3D <0>;
>> +
>> +			status =3D "disabled";
>> +		};
>> +
>>  		gmac: gmac@18070000 {
>>  			compatible =3D "qca,qca9550-gmac";
>>  			reg =3D <0x18070000 0x58>;
>> diff --git a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts b/target=
/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
>> new file mode 100644
>> index 0000000000..e0065cc012
>> --- /dev/null
>> +++ b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
>> @@ -0,0 +1,296 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +#include "qca9557.dtsi"
>> +
>> +/ {
>> +	compatible =3D "zyxel,nbg6716", "qca,qca9558";
>> +	model =3D "ZyXEL NBG6716";
>> +
>> +	chosen {
>> +		bootargs =3D "console=3DttyS0,115200n8";
>> +	};
>> +
>> +	aliases {
>> +		led-boot =3D &power;
>> +		led-failsafe =3D &power;
>> +		led-running =3D &power;
>> +		led-upgrade =3D &power;
>> +		label-mac-device =3D &eth0;
>=20
> This won't work after you have removed the mtd-mac-address entries from=
 DTS.
> You will need to use label_mac in 02_network.

I remove label_mac because all 4 MACs are labeled on the device.
>=20
> Despite, I'm still waiting for your explanation on the MAC address assi=
gnment.

It's a bit unusual
WLAN2 MAC
WLAN5 MAC+1
LAN   MAC+2
WAN   MAC+3

I've doubled checked that in code!

>=20
>> +	};
>=20
> Empty line missing.
Fixed!
>=20
>> +	leds {
>> +		compatible =3D "gpio-leds";
>> +
>> +		power: power {
>> +			label =3D "nbg6716:white:power";
>> +			gpios =3D <&gpio 15 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		wan {
>> +			label =3D "nbg6716:white:internet";
>> +			gpios =3D <&gpio 18 GPIO_ACTIVE_LOW>;
>> +		};
>> +		usb1 {
>> +			label =3D "nbg6716:white:usb1";
>> +			gpios =3D <&gpio 4 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger =3D "usbport";
>> +			trigger-sources =3D <&hub_port0>;
>> +		};
>> +		usb2 {
>> +			label =3D "nbg6716:white:usb2";
>> +			gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger =3D "usbport";
>> +			trigger-sources =3D <&hub_port1>;
>> +		};
>> +		wifi2 {
>> +			label =3D "nbg6716:white:wifi2";
>> +			gpios =3D <&gpio 19 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger =3D "phy1tpt";
>> +		};
>> +		wifi5 {
>> +			label =3D "nbg6716:white:wifi5";
>> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger =3D "phy0tpt";
>> +		};
>> +		wps {
>> +			label =3D "nbg6716:white:wps";
>> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
>> +		};
>=20
> All nodes should be separated by one empty line, but without an empty l=
ine at the beginning and the end inside the parent node.
>=20
>> +	};
>> +
>> +	keys {
>> +		compatible =3D "gpio-keys";
>> +
>> +		reset {
>> +			label =3D "reset";
>> +			linux,code =3D <KEY_RESTART>;
>> +			gpios =3D <&gpio 23 GPIO_ACTIVE_LOW>;
>> +			debounce-interval =3D <60>;
>> +		};
>> +
>> +	        wifi_button {
>> +                        label =3D "WiFi button";
>> +			linux,code =3D <KEY_RFKILL>;
>> +			gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;
>> +			debounce-interval =3D <60>;
>> +		};
>> +
>> +	        usb1 {
>> +                        label =3D "USB1 eject button";
>> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
>> +			debounce-interval =3D <60>;
>> +		};
>> +
>> +	        usb2 {
>> +                        label =3D "USB2 eject button";
>> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
>> +			debounce-interval =3D <60>;
>> +		};
>=20
> Here, the indent is wrong.
Thanks, fixed!
>=20
>> +
>> +		wps {
>> +			label =3D "WPS button";
>> +			linux,code =3D <KEY_WPS_BUTTON>;
>> +			gpios =3D <&gpio 22 GPIO_ACTIVE_LOW>;
>> +			debounce-interval =3D <60>;
>> +		};
>> +	};
>> +	gpio-export {
>> +		compatible =3D "gpio-export";
>> +		#size-cells =3D <0>;
>> +
>> +		gpio_usb_power {
>> +			gpio-export,name =3D "nbg6716:power:usb";
>> +			gpio-export,output =3D <1>;
>> +			gpios =3D <&gpio 16 GPIO_ACTIVE_HIGH>;
>> +		};
>> +	};
>=20
> gpio-export is deprecated. Have a look at gpio-hog (should be easy to g=
rep inside the ath79 target).
Switched to gpio-hog. Hope it's correct.
>=20
>> +};
>> +
>> +&uart {
>> +	status =3D "okay";
>> +};
>> +
>> +&spi {
>> +	status =3D "okay";
>> +	num-cs =3D <1>;
>> +
>> +	flash@0 {
>> +		compatible =3D "jedec,spi-nor";
>> +		reg =3D <0>;
>> +		spi-max-frequency =3D <25000000>;
>> +
>> +		partitions {
>> +			compatible =3D "fixed-partitions";
>> +			#address-cells =3D <1>;
>> +			#size-cells =3D <1>;
>> +
>> +			uboot: partition@0 {
>> +				label =3D "u-boot";
>> +				reg =3D <0x000000 0x040000>;
>> +				read-only;
>> +			};
>> +
>> +                        uboot_env: partition@40000 {
>> +                                label =3D "u-boot-env";
>> +                                reg =3D <0x040000 0x010000>;
>> +                        };
>=20
> Indent!
Fixed!
>=20
>> +
>> +			art: partition@50000 {
>> +				label =3D "art";
>> +				reg =3D <0x050000 0x010000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@60000 {
>> +				label =3D "nbu";
>> +				reg =3D <0x060000 0xFA0000>;
>=20
> Consider switching to lower case.
Switched to lower case.
>=20
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&nand {
>> +	status =3D "okay";
>> +
>> +	partitions {
>> +		compatible =3D "fixed-partitions";
>> +		#address-cells =3D <1>;
>> +		#size-cells =3D <1>;
>> +
>> +		partition@0 {
>> +			label =3D "zyxel_rfsd";
>> +			reg =3D <0x0 0x200000>;
>> +		};
>> +
>> +		partition@200000 {
>> +			label =3D "romd";
>> +			reg =3D <0x200000 0x200000>;
>> +		};
>> +
>> +		partition@400000 {
>> +			label =3D "header";
>> +			reg =3D <0x400000 0x100000>;
>> +		};
>> +
>> +		firmware@500000 {
>> +			label =3D "firmware";
>> +			reg =3D <0x500000 0x7B00000>;
>=20
> Consider switching to lower case.
Also done!
>=20
>> +		};
>> +
>> +		partition@500000 {
>> +			label =3D "kernel";
>> +			reg =3D <0x500000 0x400000>;
>> +		};
>> +
>> +		partition@900000 {
>> +			label =3D "ubi";
>> +			reg =3D <0x900000 0x7700000>;
>> +		};
>> +	};
>> +};
>> +
>> +&mdio0 {
>> +	status =3D "okay";
>> +
>> +	phy0: ethernet-phy@0 {
>> +		reg =3D <17>;
>> +		phy-mode =3D "rgmii-id";
>> +	};
>> +
>> +	switch0@1f {
>> +		compatible =3D "qca,ar8327";
>> +		reg =3D <0x1f>;
>> +		qca,ar8327-initvals =3D <
>> +			0x04 0x87600000 /* PORT0 PAD MODE CTRL */
>> +			0x0c 0x00080080 /* PORT6 PAD MODE CTRL */
>> +			0x10 0x81000080 /* POWER_ON_STRIP */
>> +			0x50 0xffb7ffb7 /* LED_CTRL0 */
>> +			0x54 0xffb7ffb7 /* LED_CTRL1 */
>> +			0x58 0xffb7ffb7 /* LED_CTRL2 */
>> +			0x5c 0x03ffff00 /* LED_CTRL3 */
>> +			0x7c 0x0000007e /* PORT0_STATUS */
>> +			0x94 0x0000007e /* PORT6 STATUS */
>> +			>;
>> +	};
>> +};
>> +
>> +&mdio1 {
>> +	status =3D "okay";
>> +
>> +	phy1: ethernet-phy@1 {
>> +		reg =3D <1>;
>> +		phy-mode =3D "sgmii";
>> +	};
>> +};
>> +
>> +
>> +&eth0 {
>> +	status =3D "okay";
>> +
>> +	pll-data =3D <0xa6000000 0x00000101 0x00001616>;
>> +	phy-handle =3D <&phy0>;
>> +	fixed-link {
>> +		speed =3D <1000>;
>> +		full-duplex;
>> +	};
>> +};
>> +
>> +&eth1 {
>> +	status =3D "okay";
>> +
>> +	pll-data =3D <0x03000101 0x00000101 0x00001616>;
>> +	phy-handle =3D <&phy1>;
>> +	fixed-link {
>> +		speed =3D <1000>;
>> +		full-duplex;
>> +	};
>> +};
>> +
>> +&gpio {
>> +	status =3D "okay";
>> +};
>> +
>> +&wmac {
>> +	status =3D "okay";
>> +};
>> +
>> +&pcie1 {
>> +        status =3D "okay";
>> +
>> +	wifi@0,0 {
>> +		compatible =3D "qcom,ath10k";
>> +		reg =3D <0 0 0 0 0>;
>> +		qcom,ath10k-calibration-variant =3D "ZyXEL-NBG6716";
>> +	};
>> +};
>> +
>> +&usb_phy0 {
>> +        status =3D "okay";
>> +};
>> +
>> +&usb_phy1 {
>> +        status =3D "okay";
>> +};
>> +
>> +&usb0 {
>> +        status =3D "okay";
>> +
>> +	hub_port0: port@1 {
>> +		reg =3D <1>;
>> +		#trigger-source-cells =3D <0>;
>> +	};
>> +
>> +};
>> +
>> +&usb1 {
>> +        status =3D "okay";
>> +
>> +	hub_port1: port@1 {
>> +		reg =3D <1>;
>> +		#trigger-source-cells =3D <0>;
>> +	};
>> +};
>> +
>=20
> Remove empty line at the end.
Done!

>=20
>> diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/im=
age/Makefile
>> index 24768ef5e0..074d7ead02 100644
>> --- a/target/linux/ath79/image/Makefile
>> +++ b/target/linux/ath79/image/Makefile
>> @@ -77,6 +77,7 @@ include ./generic-ubnt.mk
>>  endif
>>  ifeq ($(SUBTARGET),nand)
>>  include ./nand.mk
>> +include ./nand-zyxel.mk
>=20
> At the moment, we have _one_ device inside nand.mk (and still only four=
 after jeffsf's changes).
>=20
> I strongly suggest to just put the contents of both common-zyxel.mk and=
 nand-zyxel.mk into nand.mk, and not have one file per definition.

I've put it all into nand.mk, I was also unsure if this is not too much.


Kind regards,

Andr=C3=A9


--------------ms040404090004000900060404
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
C6IwggVTMIIEO6ADAgECAhB+YQhLRWb/6UCa4sHjgGB7MA0GCSqGSIb3DQEBCwUAMIGCMQsw
CQYDVQQGEwJJVDEPMA0GA1UECAwGTWlsYW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNVBAoM
GkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVudCBB
dXRoZW50aWNhdGlvbiBDQSBHMTAeFw0xOTAzMjkxMDA5NTlaFw0yMDAzMjkwOTA5NTlaMCAx
HjAcBgNVBAMMFWF2YWxlbnRpbkBtYXJjYW50Lm5ldDCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBAJcCHX/1+jgsbWlaJ6wFap2kdliLBq0HeTyjDmKThw3IEaRnADoNzNuEkrcg
1gesoOXULL92Qjde+35aSVOrlOEaB7bKZLIloA2cq5YbVlGHW7AbrhjwhwJwP/DLAvhUZ9K3
jt3L5KLkeeA3fyX6SyUnuk2blXU7zT+WZdNrXBE3vGhGqWXmfVvaeKiWBEGU/yh9NoQyBj7r
ufRlRwVcLB1U/g0UxfUGCM2f3SOJ8SQfKskq/cLt+GVx3wJKfRn6zKqlGXgkrzgBAwinhkNB
YapdF49zDVvawv7mgFcUoGtNqqzFFHC4eYBM5XO7GcuBf+yO1XYXHSKcvCX/4sxEGBsCAwEA
AaOCAiQwggIgMAwGA1UdEwEB/wQCMAAwHwYDVR0jBBgwFoAUfmD8+GynPT3XrpOheQKPs3Qp
O/UwSwYIKwYBBQUHAQEEPzA9MDsGCCsGAQUFBzAChi9odHRwOi8vY2FjZXJ0LmFjdGFsaXMu
aXQvY2VydHMvYWN0YWxpcy1hdXRjbGlnMTAgBgNVHREEGTAXgRVhdmFsZW50aW5AbWFyY2Fu
dC5uZXQwRwYDVR0gBEAwPjA8BgYrgR8BGAEwMjAwBggrBgEFBQcCARYkaHR0cHM6Ly93d3cu
YWN0YWxpcy5pdC9hcmVhLWRvd25sb2FkMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
BDCB6AYDVR0fBIHgMIHdMIGboIGYoIGVhoGSbGRhcDovL2xkYXAwNS5hY3RhbGlzLml0L2Nu
JTNkQWN0YWxpcyUyMENsaWVudCUyMEF1dGhlbnRpY2F0aW9uJTIwQ0ElMjBHMSxvJTNkQWN0
YWxpcyUyMFMucC5BLi8wMzM1ODUyMDk2NyxjJTNkSVQ/Y2VydGlmaWNhdGVSZXZvY2F0aW9u
TGlzdDtiaW5hcnkwPaA7oDmGN2h0dHA6Ly9jcmwwNS5hY3RhbGlzLml0L1JlcG9zaXRvcnkv
QVVUSENMLUcxL2dldExhc3RDUkwwHQYDVR0OBBYEFMojrOmK2PN+bO+vAvSFH10XzXmtMA4G
A1UdDwEB/wQEAwIFoDANBgkqhkiG9w0BAQsFAAOCAQEAp6+QqVi+3pAreJTDH3/gUS96AmOI
dSr2XgwkOTLB3a3ONyfoXtcRnxD80HqBFuMa4e66cYm4iGpUSLJZjhxsKrtwmU9pb2lQIJCG
T854lcbwhUDEu2By7hL/W4VXC+sejhUeYH3q5+6KcVNT5sydM5mhHgK1JfVW6Ml7t9ZRk4Op
GKDuTt2viAVDerTvLiKbAXY9jwKXLNGeT0IUlfCVGzG+p4I0PSKsSRiRAmvEWTdZBCnhka0Y
JGwIF3ZFUGdqPo7AskjLR70n78GGxpINWquCgH09GkrOu4eBWM4G+b4GQ+qZs8YHHTPd78ps
2+n7iVsRX7066chFUo+O6rZRsTCCBkcwggQvoAMCAQICCCzUitOxHg+JMA0GCSqGSIb3DQEB
CwUAMGsxCzAJBgNVBAYTAklUMQ4wDAYDVQQHDAVNaWxhbjEjMCEGA1UECgwaQWN0YWxpcyBT
LnAuQS4vMDMzNTg1MjA5NjcxJzAlBgNVBAMMHkFjdGFsaXMgQXV0aGVudGljYXRpb24gUm9v
dCBDQTAeFw0xNTA1MTQwNzE0MTVaFw0zMDA1MTQwNzE0MTVaMIGCMQswCQYDVQQGEwJJVDEP
MA0GA1UECAwGTWlsYW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNVBAoMGkFjdGFsaXMgUy5w
LkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVudCBBdXRoZW50aWNhdGlv
biBDQSBHMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMD8wYlW2Yji9ARlv80J
NasoKTD+DMr3J6scEe6GPV3k9WxEtgxXM5WX3oiKjS2p25Mqk8cnV2fpMaEvdO9alrGes0vq
cUqly7PkU753RGlseYXR2XCjVhs4cuRYjuBmbxpRSJxRImmPnThKY41r0nl6b3A6Z2MOjPQF
7h6OCYYwtz/ziv/+UBV587U2uIlOukaS7Xjk4ArYkQsGTSsfBBXqqn06WL3xG+B/dRO5/mOt
Y5tHdhPHydsBk2kksI3PJ0yNgKV7o6HM7pG9pB6sGhj96uVLnnVnJ0WXOuV1ISv2eit9ir60
LjT99hf+TMZLxA5yaVJ57fYjBMbxM599cw0CAwEAAaOCAdUwggHRMEEGCCsGAQUFBwEBBDUw
MzAxBggrBgEFBQcwAYYlaHR0cDovL29jc3AwNS5hY3RhbGlzLml0L1ZBL0FVVEgtUk9PVDAd
BgNVHQ4EFgQUfmD8+GynPT3XrpOheQKPs3QpO/UwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSME
GDAWgBRS2Ig6yJ94Zu2J83s4cJTJAgI20DBFBgNVHSAEPjA8MDoGBFUdIAAwMjAwBggrBgEF
BQcCARYkaHR0cHM6Ly93d3cuYWN0YWxpcy5pdC9hcmVhLWRvd25sb2FkMIHjBgNVHR8Egdsw
gdgwgZaggZOggZCGgY1sZGFwOi8vbGRhcDA1LmFjdGFsaXMuaXQvY24lM2RBY3RhbGlzJTIw
QXV0aGVudGljYXRpb24lMjBSb290JTIwQ0EsbyUzZEFjdGFsaXMlMjBTLnAuQS4lMmYwMzM1
ODUyMDk2NyxjJTNkSVQ/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdDtiaW5hcnkwPaA7oDmG
N2h0dHA6Ly9jcmwwNS5hY3RhbGlzLml0L1JlcG9zaXRvcnkvQVVUSC1ST09UL2dldExhc3RD
UkwwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3DQEBCwUAA4ICAQBNk87VJL5BG0oWWHNfZYny
2Xo+WIy8y8QP5VsWZ7LBS6Qz8kn8zJp3c9xdOkudZbcA3vm5U8HKXc1JdzNmpSh92zq/OeZL
vUa+rnncmvhxkFE9Doag6NitggBPZwXHwDcYn430/F8wqAt3LX/bsd6INVrhPFk3C2SoAjLj
UQZibXvQuFINMN4l6j86vCrkUaGzSqnXT45NxIivkAPhBQgpGtcTi4f+3DxkyTDbWtf9LuaC
4l2jgB3gC7f56nmdpGfpYsyvKE7+Ip+WryH93pWt6C+r68KU3Gu02cU1/dHvNOXWUDeKkVT3
T26wZVrTaMx+0nS3i63KDfJdhFzutfdBgCWHcp03NhOhMqy1RnAylF/dVZgkka6hKaWe1tOU
21kS4uvsD4wM5k6tl0pin2o6u47kyoJJMOxRSQcosWtDXUmaLHUG91ZC6hvBDmDmpmS6h/r+
7mtPrpYOxTr4hW3me2EfXkTvNTvBQtbi4LrZchg9vhi44EJ7L53g7GzQFn5KK8vqqgMb1c1+
T0mkKdqSedgGiB9TDdYtv4HkUj/N00TKxZMLiDMw4V8ShUL6bKTXNfb3E68s47cD+MatFjUu
GFj0uFPvZlvlNAoJ7IMfXzIiTWy35X+akm+d49wBh54yv6icz2t/cBU1y1weuPBd8NUH/Ue3
mXk0SXwkGP3yVDGCA/YwggPyAgEBMIGXMIGCMQswCQYDVQQGEwJJVDEPMA0GA1UECAwGTWls
YW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNVBAoMGkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIw
OTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVudCBBdXRoZW50aWNhdGlvbiBDQSBHMQIQfmEI
S0Vm/+lAmuLB44BgezANBglghkgBZQMEAgEFAKCCAi8wGAYJKoZIhvcNAQkDMQsGCSqGSIb3
DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkxMDIzMDkwMDQwWjAvBgkqhkiG9w0BCQQxIgQgh1Jx
9p6Lmest+o87yuMGwfhV6W0qMVQJd7CTvNYuda8wbAYJKoZIhvcNAQkPMV8wXTALBglghkgB
ZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG
9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBqAYJKwYBBAGCNxAEMYGaMIGXMIGC
MQswCQYDVQQGEwJJVDEPMA0GA1UECAwGTWlsYW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNV
BAoMGkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVu
dCBBdXRoZW50aWNhdGlvbiBDQSBHMQIQfmEIS0Vm/+lAmuLB44BgezCBqgYLKoZIhvcNAQkQ
AgsxgZqggZcwgYIxCzAJBgNVBAYTAklUMQ8wDQYDVQQIDAZNaWxhbm8xDzANBgNVBAcMBk1p
bGFubzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0Fj
dGFsaXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcxAhB+YQhLRWb/6UCa4sHjgGB7MA0G
CSqGSIb3DQEBAQUABIIBABpxQikn6dq/h2EdSYJG67FkjPjl7qJo8551ZcAJliV4N3Hi6lJq
SKkoH6R81/yfAAG7wlG3ds0q+60yEDQufrpDBs69oSjf2uAY1b4bft/ss+fmryc5YluaZfZ5
QX6WqI/HOd2EWDmgrBgKvujZ0Q8hjQZy2gl9aB4tLU7DJ3YHc4fuqQaOKoFgH/GUF8g1GLl0
ikgouVEN5ZWwaxtJqXhMbudSRZTeilap+JUShoJa0LfrCctyH+1P5XhfO/K3WtbbAT7/+XxF
6ugMKeK1xC6NpX+d1AeTf+Int3Y4EZ913vbhmWcoT/tKVWErLC5ZiFjJwXOYy6ligE1dTxKQ
qjEAAAAAAAA=
--------------ms040404090004000900060404--


--===============7410258882934529462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7410258882934529462==--

