Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE771E187E
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 02:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yd6LI4fYiybUMTQB/C20b1XFC3gJ6cd3qPOTj4Czt0Y=; b=hKV/Jsu6PPJSND
	+rmm9HZ4Ix1x9xXY/TFGWIBNgdVTPIdazi9xklvq+RAHwvIBQI/BuChvnYbnZZQiGMbpL5cuV9ljr
	e1+/lLka81nyeKAoNTmkdhWtuUXMSDKHkD4RsxMMqu17SfhSkh/LLCe2zcVmjVJixaJF2yPF6kn9A
	R9LQIoxvEjAUG/V1S+woaUG97tWqLb5XXB9+CE9s+ZHqnNnfcVkWfLZGXQksXs8Duj59U/JPLbHNs
	ExGX+SZWvoadcsb/pJ6Ne2ag29L3rlDJbICgCtbvLMa7YXMkJwCBo7Nrq3yrtlReRXV9Ohjgy8V0g
	ZTFSahdeOfVdPpwYoL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdNVU-0007Fv-Lz; Tue, 26 May 2020 00:31:48 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdNVM-0007FL-FO
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 00:31:42 +0000
Received: from fudo.makrotopia.org ([185.142.180.71])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <daniel@makrotopia.org>) id 1jdNVI-0008HJ-1N
 for openwrt-devel@openwrt.org; Mon, 25 May 2020 20:31:37 -0400
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jdN61-0000Yf-GP; Tue, 26 May 2020 02:05:30 +0200
Date: Tue, 26 May 2020 01:05:24 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: "Heppler, J. Scott" <shep971@centurylink.net>
Message-ID: <20200526000524.GB1542@makrotopia.org>
References: <20200525235736.GA35779@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525235736.GA35779@centurylink.net>
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  On Mon, May 25, 2020 at 04:57:36PM -0700, Heppler, J. Scott
 wrote: > > * MediaTek MT7620A (580 Mhz) > * 8 MB of FLASH > * 64 MB of RAM
 > * 2.4Ghz and 5.0Ghz radios both now functional > * 5x 10/100 Mb [...] 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_173140_657500_06CA6E8E 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=daniel%40makrotopia.org; ip=46.101.232.90; r=bombadil.infradead.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v5] ramips: add support for Trendnet
 TEW-810DR
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
Cc: openwrt-devel@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, May 25, 2020 at 04:57:36PM -0700, Heppler, J. Scott wrote:
> 
> * MediaTek MT7620A (580 Mhz)
> * 8 MB of FLASH
> * 64 MB of RAM
> * 2.4Ghz and 5.0Ghz radios both now functional
> * 5x 10/100 Mbps Ethernet (1 WAN and 4 LAN)
> * UART header on PCB (57600 8n1)
> * Green/Orange Power LEDs illuminating a Power-Button Lens
>   Green/Orange Internet LEDs GPIO controlled illuminating a Globe/Internet Lens
> * 3x button - wps, power and reset
> * U-boot bootloader
> 
> Installation:
> 
> The sysupgrade.bin image is reported to be OEM web flashed with an ncc_att_hwid
> appended.  ncc_att_hwid is a 32bit binary in the GPL Source download for either
> the TEW-810DR or DIR-810L and is located at
> source/user/wolf/cameo/ncc/hostTools.
> The invocation is: ncc_att_hwid
> -f tew-810dr-squashfs-factory.bin -a -m "TEW-810DR" -H "1.0R" -r "WW" -c "1.0"
> This may need to be altered if your hardware version is "1.1R".
> The image can also be directly flashed via serial tftp.
> 1.  Load *.sysupgrade.bin to your tftp server directory and rename for
> convenience.
> 2.  Set a static ip 192.168.10.100.
> 3.  NIC cable to a lan port.
> 4.  Serial connection parameters 57600,8N1
> 5.  Power on the TEW-810 and press 4 for a u-boot command line prompt.
> 6.  Verify IP's with U-Boot command "printenv".
> 7.  Adjust tftp settings if needed per the tftp documentation
> 8.  Boot the tftp image to test the build.
> 9.  If the image loads, reset your server ip to 192.168.1.10 and restart network.
> 10. Log in to Luci, 192.168.1.1, and flash the *sysupgrade.bin image.
> 
> Signed-off-by: J. Scott Heppler <shep971@centurylink.net>
> 
> Summary v4 -> v5
> 1.  Enumerated installation steps and corrected grammar.
> 2.  Added SPDX License Identifier to *.dts.
> 3.  gpio-keys-polled -> gpio-keys in *.dts.
> 4.  gpio2 0 is actually behind a Globe/Internet lens - changed to wan.
> 5.  Increased spi-max-frequency 10000000 -> 50000000
> 6.  jffs2 partition 0xe0000 -> 0xf0000.
> 7.  &state_default groups; dropped mdio, rgmii1, wled.
> 8.  MAC assignments mirror DIR-810L code and verify in Luci.  Unchanged
> 02_network and *.dts.
> 9.  01_leds changed consistent with #4.
> 10. Removed SUPPORTED_DEVICES from image/mt7620.mk.  Note: the D-Link
> DIR-810L has the same SUPPORTED_DEVICES entry in image/mt7620.mk.
> 11. Builds/Runs on my test Device.
> ---
>  .../ramips/dts/mt7620a_trendnet_tew-810dr.dts | 166 ++++++++++++++++++
>  target/linux/ramips/image/mt7620.mk           |   9 +
>  .../mt7620/base-files/etc/board.d/01_leds     |   3 +
>  .../mt7620/base-files/etc/board.d/02_network  |   8 +-
>  4 files changed, 183 insertions(+), 3 deletions(-)
>  create mode 100644 target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> 
> diff --git a/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> new file mode 100644
> index 0000000000..5012d39b51
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
> @@ -0,0 +1,166 @@
> +//SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7620a.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible = "trendnet,tew-810dr", "ralink,mt7620a-soc";
> +	model = "TRENDnet TEW-810DR";
> +
> +	aliases {
> +		led-boot = &led_power_green;
> +		led-failsafe = &led_power_green;
> +		led-running = &led_power_green;
> +		led-upgrade = &led_power_green;
> +		label-mac-device = &ethernet;
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		reset {
> +			label = "reset";
> +			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +
> +		wps {
> +			label = "wps";
> +			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_WPS_BUTTON>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_power_green: power_green {
> +			label = "tew-810dr:green:power";
> +			gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wan_orange: wan_orange {
> +			label = "tew-810dr:orange:wan";
> +			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wan_green: wan_green {
> +			label = "tew-810dr:green:wan";
> +			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_power_orange {
> +			label = "tew-810dr:orange:power";
> +			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +};
> +
> +&spi0 {
> +	status = "okay";
> +

What kind of chip is doing 5GHz wifi? Are you sure you don't need to
define EEPROM and/or mac-adress from MTD in the device-tree as well?

The patch was cut here misses the other files, only the DTS was
partially sent :(


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
