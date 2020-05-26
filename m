Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F251E3136
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 23:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vQYvzaUx/PI69m086M7Mp0sPxzZLoELncsTF12Aolso=; b=ImIMfs6T/ZIFxcGUAuTPJWAIN
	J6VRECO0fkwHJXhO6sonRIB8kbR6X+cQai1sRRAa85+vqmkryw6t720VFFI37hiVroHCUhVf9aeju
	rRUaxUmUvEiM38oLnzALl13OcO51D0+Os2hl3dJLwnNW2hDq+Ir6Cenq0dAN+0dqqTF7lwUhYVjZB
	9dhF9ZirgCoavlQYRS6cfYqwcdcZEsSPYUMJcnsxT3HgMsgJR+Y9DoSMhwx8Tr1t0/l4W0OfSzCCR
	x99IJuGE6zMVZ++78FHp+M0ds+eV39STlxAn+1BWRkDWhGgB7NEUIPJPsy6FGQfWQ6K8SU2EyXiB8
	apv9a9Nxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdh9P-0001Ch-MU; Tue, 26 May 2020 21:30:19 +0000
Received: from li825-139.members.linode.com ([104.237.157.139]
 helo=mail.factglobal.ca)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdh97-00009I-2f
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 21:30:04 +0000
Received: from [192.168.0.187] (modemcable184.72-21-96.mc.videotron.ca
 [96.21.72.184])
 by mail.factglobal.ca (Postfix) with ESMTPSA id 93CEB78B56;
 Tue, 26 May 2020 21:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kryma.net; s=mail;
 t=1590528598; bh=CkQNRGJIAlzXZ0GAivYmLWhSaNfV+frQdjsSfzguUu8=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=qhPILGRYAX8czXKWmR1MmwH67wPzPBDtfyHmZ3rgzQfCMrGBOHxcX3UM69P2nm/II
 VhGerpir7xvpSsyKMJdbisGxihCRW/SpVbUrmgS5yQy17eydDWFvTs+F7LApZtZ+1j
 ZSxHmyI/QTBb83Fpxq4pnxX1FN1HgmsCah8DImIU=
To: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de
References: <20200327033255.19291-1-admin@kryma.net>
 <007001d631c0$e40282e0$ac0788a0$@adrianschmutzler.de>
From: Pavel Balan <admin@kryma.net>
Message-ID: <d73a20a7-fd7a-0175-9de0-5022091522ef@kryma.net>
Date: Tue, 26 May 2020 17:29:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <007001d631c0$e40282e0$ac0788a0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_143001_223875_503AFD81 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v6] ath79: add support for COMFAST
 CF-E130N v2
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
Content-Type: multipart/mixed; boundary="===============8434358011495307088=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============8434358011495307088==
Content-Type: multipart/alternative;
 boundary="------------064ADBA6ABFD4D1F65B0F661"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------064ADBA6ABFD4D1F65B0F661
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello. I have just run-tested the patch from your tree on actual 
hardware - the web GUI works fine, as do both internet and wireless 
interfaces.

An investigation into the art partition has shown that there are four 
sequential MAC addresses stored in memory.

The first and the third are back-to-back, addresses 0x0000 and 0x0006 
respectively.

The second one is located at 0x1002, and the fourth one is at 0x5006. I 
have no explanation for why it is like that.

To answer your question - it's not an exact match, but it's close to that.


P.S. Thank you for catching the v5/v6 difference - or lack of thereof, 
rather.

On 2020-05-24 7:45 a.m., mail@adrianschmutzler.de wrote:
> Hi,
>
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of admin@kryma.net
>> Sent: Freitag, 27. März 2020 04:33
>> To: openwrt-devel@lists.openwrt.org
>> Cc: Pavel Balan <admin@kryma.net>
>> Subject: [OpenWrt-Devel] [PATCH v6] ath79: add support for COMFAST CF-
>> E130N v2
>>
>> From: Pavel Balan <admin@kryma.net>
>>
>> This patch adds support for the COMFAST CF-E130N v2, an outdoor wireless
>> CPE with a single Ethernet port and a 802.11bgn radio.
>>
>> Specifications:
>>
>>   - QCA9531 SoC
>>   - 1x 10/100 Mbps Ethernet with PoE-in support
>>   - 64 MB of RAM (DDR2)
>>   - 16 MB of FLASH
>>   - 5 dBi built-in antenna
>>   - POWER/LAN/WLAN green LEDs
>>   - 4x RSSI LEDs (2x red, 2x green)
>>   - UART (115200 8N1) and GPIO (J9) headers on PCB
>>
>> Flashing instructions:
>>
>>   The original firmware is based on OpenWrt so a sysupgrade image can be
>> installed via the stock web GUI.
>>
>>   The U-boot bootloader also contains a backup TFTP client to upload the
>> firmware from. Upon boot, it checks its ethernet network for the IP
>> 192.168.1.10. Host a TFTP server and provide the image to be flashed as  file
>> firmware_auto.bin.
>>
>> Signed-off-by: Pavel Balan <admin@kryma.net>
>> ---
>> Run-tested on hardware.
>>
>> Changes since v5:
>>
>>   Made partition@7e0000 read-only.
>>
>>   Changed IMAGE_SIZE to 7936k.
> it looks like you have actually sent the v5 version of your patch again, as the v6-changes you report are not included. Anyway, I've added these (and a few others) myself and pushed the result to my staging tree here:
>
> https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=refs/heads/staging
>
> Please run this on your device and check whether everything is okay, so I can merge this.
>
> Despite, I'd be interested whether the MAC address from calibration data (art 0x1002) is actually the same as art 0x0, so we can drop mtd-mac-address from wmac.
>
> Best
>
> Adrian
>
>> ---
>>   .../ath79/dts/qca9531_comfast_cf-e130n-v2.dts | 150
>> ++++++++++++++++++
>>   .../generic/base-files/etc/board.d/01_leds    |   8 +
>>   .../generic/base-files/etc/board.d/02_network |   1 +
>>   target/linux/ath79/image/generic.mk           |  10 ++
>>   4 files changed, 169 insertions(+)
>>   create mode 100644 target/linux/ath79/dts/qca9531_comfast_cf-e130n-
>> v2.dts
>>
>> diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
>> b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
>> new file mode 100644
>> index 0000000000..dc1e037307
>> --- /dev/null
>> +++ b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
>> @@ -0,0 +1,150 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +#include "qca953x.dtsi"
>> +
>> +/ {
>> +	compatible = "comfast,cf-e130n-v2", "qca,qca9531";
>> +	model = "COMFAST CF-E130N v2";
>> +
>> +	aliases {
>> +		serial0 = &uart;
>> +		led-boot = &led_rssihigh;
>> +		led-failsafe = &led_rssihigh;
>> +		led-upgrade = &led_rssihigh;
>> +		label-mac-device = &eth1;
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		pinctrl-names = "default";
>> +
>> +		wlan {
>> +			label = "cf-e130n-v2:green:wlan";
>> +			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger = "phy0tpt";
>> +		};
>> +
>> +		lan {
>> +			label = "cf-e130n-v2:green:lan";
>> +			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		unused {
>> +			label = "cf-e130n-v2:green:unused";
>> +			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		rssilow {
>> +			label = "cf-e130n-v2:red:rssilow";
>> +			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		rssimediumlow {
>> +			label = "cf-e130n-v2:red:rssimediumlow";
>> +			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		rssimediumhigh {
>> +			label = "cf-e130n-v2:green:rssimediumhigh";
>> +			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		led_rssihigh: rssihigh {
>> +			label = "cf-e130n-v2:green:rssihigh";
>> +			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
>> +		};
>> +	};
>> +
>> +	keys {
>> +		compatible = "gpio-keys";
>> +
>> +		reset {
>> +			label = "reset";
>> +			linux,code = <KEY_RESTART>;
>> +			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
>> +			debounce-interval = <60>;
>> +		};
>> +	};
>> +};
>> +
>> +&spi {
>> +	status = "okay";
>> +
>> +	num-cs = <1>;
>> +
>> +	flash@0 {
>> +		compatible = "jedec,spi-nor";
>> +		reg = <0>;
>> +		spi-max-frequency = <25000000>;
>> +
>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			partition@0 {
>> +				label = "u-boot";
>> +				reg = <0x000000 0x010000>;
>> +				read-only;
>> +			};
>> +
>> +			art: partition@10000 {
>> +				label = "art";
>> +				reg = <0x010000 0x010000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@20000 {
>> +				compatible = "denx,uimage";
>> +				label = "firmware";
>> +				reg = <0x020000 0x7c0000>;
>> +			};
>> +
>> +			partition@7e0000 {
>> +				compatible = "denx,uimage";
>> +				label = "configs";
>> +				reg = <0x7e0000 0x010000>;
>> +			};
>> +
>> +			partition@7f0000 {
>> +				label = "nvram";
>> +				reg = <0x7f0000 0x010000>;
>> +				read-only;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&uart {
>> +	status = "okay";
>> +
>> +};
>> +
>> +&eth0 {
>> +	compatible = "syscon", "simple-mfd";
>> +};
>> +
>> +&eth1 {
>> +	status = "okay";
>> +
>> +	phy-handle = <&swphy0>;
>> +
>> +	mtd-mac-address = <&art 0x0>;
>> +
>> +	gmac-config {
>> +		device = <&gmac>;
>> +		switch-phy-swap = <1>;
>> +	};
>> +};
>> +
>> +&wmac {
>> +	status = "okay";
>> +
>> +	mtd-mac-address = <&art 0x0>;
>> +	mtd-cal-data = <&art 0x1000>;
>> +};
>> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> index fbb0d0ea03..3046d34605 100755
>> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
>> @@ -47,6 +47,14 @@ comfast,cf-e120a-v3)
>>   	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
>> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
>>   	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
>> "$boardname:green:rssihigh" "wlan0" "76" "100"
>>   	;;
>> +comfast,cf-e130n-v2)
>> +	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
>> +	ucidef_set_rssimon "wlan0" "200000" "1"
>> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow"
>> "wlan0" "1" "100"
>> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
>> "$boardname:red:rssimediumlow" "wlan0" "26" "100"
>> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
>> "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
>> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
>> "$boardname:green:rssihigh" "wlan0" "76" "100"
>> +	;;
>>   comfast,cf-e313ac)
>>   	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan"
>> "switch0" "0x02"
>>   	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan"
>> "eth1"
>> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
>> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
>> index 10ca213e70..b1ecc066fd 100755
>> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
>> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
>> @@ -14,6 +14,7 @@ ath79_setup_interfaces()
>>   	alfa-network,ap121f|\
>>   	aruba,ap-105|\
>>   	avm,fritz300e|\
>> +	comfast,cf-e130n-v2|\
>>   	devolo,dvl1200i|\
>>   	devolo,dvl1750c|\
>>   	devolo,dvl1750i|\
>> diff --git a/target/linux/ath79/image/generic.mk
>> b/target/linux/ath79/image/generic.mk
>> index 70631c20d0..256481ece3 100644
>> --- a/target/linux/ath79/image/generic.mk
>> +++ b/target/linux/ath79/image/generic.mk
>> @@ -258,6 +258,16 @@ define Device/comfast_cf-e120a-v3  endef
>> TARGET_DEVICES += comfast_cf-e120a-v3
>>
>> +define Device/comfast_cf-e130n-v2
>> +  ATH_SOC := qca9531
>> +  DEVICE_VENDOR := COMFAST
>> +  DEVICE_MODEL := CF-E130N
>> +  DEVICE_VARIANT := v2
>> +  DEVICE_PACKAGES := rssileds kmod-leds-gpio -swconfig -uboot-envtools
>> +  IMAGE_SIZE := 8000k
>> +endef
>> +TARGET_DEVICES += comfast_cf-e130n-v2
>> +
>>   define Device/comfast_cf-e313ac
>>     ATH_SOC := qca9531
>>     DEVICE_VENDOR := COMFAST
>> --
>> 2.17.1
>>
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------064ADBA6ABFD4D1F65B0F661
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello. I have just run-tested the patch from your tree on actual
      hardware - the web GUI works fine, as do both internet and
      wireless interfaces.</p>
    <p>An investigation into the art partition has shown that there are
      four sequential MAC addresses stored in memory.</p>
    <p>The first and the third are back-to-back, addresses 0x0000 and
      0x0006 respectively.</p>
    <p>The second one is located at 0x1002, and the fourth one is at
      0x5006. I have no explanation for why it is like that.</p>
    <p>To answer your question - it's not an exact match, but it's close
      to that.</p>
    <p><br>
    </p>
    <p>P.S. Thank you for catching the v5/v6 difference - or lack of
      thereof, rather.<br>
    </p>
    <div class="moz-cite-prefix">On 2020-05-24 7:45 a.m.,
      <a class="moz-txt-link-abbreviated" href="mailto:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:007001d631c0$e40282e0$ac0788a0$@adrianschmutzler.de">
      <pre class="moz-quote-pre" wrap="">Hi,

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: openwrt-devel [<a class="moz-txt-link-freetext" href="mailto:openwrt-devel-bounces@lists.openwrt.org">mailto:openwrt-devel-bounces@lists.openwrt.org</a>]
On Behalf Of <a class="moz-txt-link-abbreviated" href="mailto:admin@kryma.net">admin@kryma.net</a>
Sent: Freitag, 27. März 2020 04:33
To: <a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
Cc: Pavel Balan <a class="moz-txt-link-rfc2396E" href="mailto:admin@kryma.net">&lt;admin@kryma.net&gt;</a>
Subject: [OpenWrt-Devel] [PATCH v6] ath79: add support for COMFAST CF-
E130N v2

From: Pavel Balan <a class="moz-txt-link-rfc2396E" href="mailto:admin@kryma.net">&lt;admin@kryma.net&gt;</a>

This patch adds support for the COMFAST CF-E130N v2, an outdoor wireless
CPE with a single Ethernet port and a 802.11bgn radio.

Specifications:

 - QCA9531 SoC
 - 1x 10/100 Mbps Ethernet with PoE-in support
 - 64 MB of RAM (DDR2)
 - 16 MB of FLASH
 - 5 dBi built-in antenna
 - POWER/LAN/WLAN green LEDs
 - 4x RSSI LEDs (2x red, 2x green)
 - UART (115200 8N1) and GPIO (J9) headers on PCB

Flashing instructions:

 The original firmware is based on OpenWrt so a sysupgrade image can be
installed via the stock web GUI.

 The U-boot bootloader also contains a backup TFTP client to upload the
firmware from. Upon boot, it checks its ethernet network for the IP
192.168.1.10. Host a TFTP server and provide the image to be flashed as  file
firmware_auto.bin.

Signed-off-by: Pavel Balan <a class="moz-txt-link-rfc2396E" href="mailto:admin@kryma.net">&lt;admin@kryma.net&gt;</a>
---
Run-tested on hardware.

Changes since v5:

 Made partition@7e0000 read-only.

 Changed IMAGE_SIZE to 7936k.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
it looks like you have actually sent the v5 version of your patch again, as the v6-changes you report are not included. Anyway, I've added these (and a few others) myself and pushed the result to my staging tree here:

<a class="moz-txt-link-freetext" href="https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=refs/heads/staging">https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=refs/heads/staging</a>

Please run this on your device and check whether everything is okay, so I can merge this.

Despite, I'd be interested whether the MAC address from calibration data (art 0x1002) is actually the same as art 0x0, so we can drop mtd-mac-address from wmac.

Best

Adrian

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
---
 .../ath79/dts/qca9531_comfast_cf-e130n-v2.dts | 150
++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |   8 +
 .../generic/base-files/etc/board.d/02_network |   1 +
 target/linux/ath79/image/generic.mk           |  10 ++
 4 files changed, 169 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_comfast_cf-e130n-
v2.dts

diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
new file mode 100644
index 0000000000..dc1e037307
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
+
+#include &lt;dt-bindings/gpio/gpio.h&gt;
+#include &lt;dt-bindings/input/input.h&gt;
+
+#include "qca953x.dtsi"
+
+/ {
+	compatible = "comfast,cf-e130n-v2", "qca,qca9531";
+	model = "COMFAST CF-E130N v2";
+
+	aliases {
+		serial0 = &amp;uart;
+		led-boot = &amp;led_rssihigh;
+		led-failsafe = &amp;led_rssihigh;
+		led-upgrade = &amp;led_rssihigh;
+		label-mac-device = &amp;eth1;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+
+		wlan {
+			label = "cf-e130n-v2:green:wlan";
+			gpios = &lt;&amp;gpio 0 GPIO_ACTIVE_LOW&gt;;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		lan {
+			label = "cf-e130n-v2:green:lan";
+			gpios = &lt;&amp;gpio 2 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		unused {
+			label = "cf-e130n-v2:green:unused";
+			gpios = &lt;&amp;gpio 3 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		rssilow {
+			label = "cf-e130n-v2:red:rssilow";
+			gpios = &lt;&amp;gpio 11 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		rssimediumlow {
+			label = "cf-e130n-v2:red:rssimediumlow";
+			gpios = &lt;&amp;gpio 12 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		rssimediumhigh {
+			label = "cf-e130n-v2:green:rssimediumhigh";
+			gpios = &lt;&amp;gpio 14 GPIO_ACTIVE_LOW&gt;;
+		};
+
+		led_rssihigh: rssihigh {
+			label = "cf-e130n-v2:green:rssihigh";
+			gpios = &lt;&amp;gpio 16 GPIO_ACTIVE_LOW&gt;;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			linux,code = &lt;KEY_RESTART&gt;;
+			gpios = &lt;&amp;gpio 17 GPIO_ACTIVE_LOW&gt;;
+			debounce-interval = &lt;60&gt;;
+		};
+	};
+};
+
+&amp;spi {
+	status = "okay";
+
+	num-cs = &lt;1&gt;;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = &lt;0&gt;;
+		spi-max-frequency = &lt;25000000&gt;;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = &lt;1&gt;;
+			#size-cells = &lt;1&gt;;
+
+			partition@0 {
+				label = "u-boot";
+				reg = &lt;0x000000 0x010000&gt;;
+				read-only;
+			};
+
+			art: partition@10000 {
+				label = "art";
+				reg = &lt;0x010000 0x010000&gt;;
+				read-only;
+			};
+
+			partition@20000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = &lt;0x020000 0x7c0000&gt;;
+			};
+
+			partition@7e0000 {
+				compatible = "denx,uimage";
+				label = "configs";
+				reg = &lt;0x7e0000 0x010000&gt;;
+			};
+
+			partition@7f0000 {
+				label = "nvram";
+				reg = &lt;0x7f0000 0x010000&gt;;
+				read-only;
+			};
+		};
+	};
+};
+
+&amp;uart {
+	status = "okay";
+
+};
+
+&amp;eth0 {
+	compatible = "syscon", "simple-mfd";
+};
+
+&amp;eth1 {
+	status = "okay";
+
+	phy-handle = &lt;&amp;swphy0&gt;;
+
+	mtd-mac-address = &lt;&amp;art 0x0&gt;;
+
+	gmac-config {
+		device = &lt;&amp;gmac&gt;;
+		switch-phy-swap = &lt;1&gt;;
+	};
+};
+
+&amp;wmac {
+	status = "okay";
+
+	mtd-mac-address = &lt;&amp;art 0x0&gt;;
+	mtd-cal-data = &lt;&amp;art 0x1000&gt;;
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index fbb0d0ea03..3046d34605 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -47,6 +47,14 @@ comfast,cf-e120a-v3)
 	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
"$boardname:green:rssimediumhigh" "wlan0" "51" "100"
 	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
"$boardname:green:rssihigh" "wlan0" "76" "100"
 	;;
+comfast,cf-e130n-v2)
+	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_rssimon "wlan0" "200000" "1"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow"
"wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
"$boardname:red:rssimediumlow" "wlan0" "26" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
"$boardname:green:rssimediumhigh" "wlan0" "51" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH"
"$boardname:green:rssihigh" "wlan0" "76" "100"
+	;;
 comfast,cf-e313ac)
 	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan"
"switch0" "0x02"
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan"
"eth1"
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 10ca213e70..b1ecc066fd 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -14,6 +14,7 @@ ath79_setup_interfaces()
 	alfa-network,ap121f|\
 	aruba,ap-105|\
 	avm,fritz300e|\
+	comfast,cf-e130n-v2|\
 	devolo,dvl1200i|\
 	devolo,dvl1750c|\
 	devolo,dvl1750i|\
diff --git a/target/linux/ath79/image/generic.mk
b/target/linux/ath79/image/generic.mk
index 70631c20d0..256481ece3 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -258,6 +258,16 @@ define Device/comfast_cf-e120a-v3  endef
TARGET_DEVICES += comfast_cf-e120a-v3

+define Device/comfast_cf-e130n-v2
+  ATH_SOC := qca9531
+  DEVICE_VENDOR := COMFAST
+  DEVICE_MODEL := CF-E130N
+  DEVICE_VARIANT := v2
+  DEVICE_PACKAGES := rssileds kmod-leds-gpio -swconfig -uboot-envtools
+  IMAGE_SIZE := 8000k
+endef
+TARGET_DEVICES += comfast_cf-e130n-v2
+
 define Device/comfast_cf-e313ac
   ATH_SOC := qca9531
   DEVICE_VENDOR := COMFAST
--
2.17.1


_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------064ADBA6ABFD4D1F65B0F661--


--===============8434358011495307088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8434358011495307088==--

