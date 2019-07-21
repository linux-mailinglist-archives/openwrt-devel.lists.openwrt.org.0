Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4566F1F2
	for <lists+openwrt-devel@lfdr.de>; Sun, 21 Jul 2019 07:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gOrbZTCUykjozgBiE5E9l8UtJXmlbNKmUVNPKrUXuo=; b=cqCvzOE+4ulRku
	07X7kd7h3M8jBOQRTv0uFkSQhjhFN0tEu/0yquED3kNGJmHr/erAwfiUHzZ6Mci6jL2UnALpcT6hM
	JqfCkRzLZ0SaMib/CMHp0fwLE8U9zwwIOQb1mPZYo7EB26ujaRTuTgIUu7PTpVPuyqFLeJfeFEUO+
	p8ZhGkZh2WScf2XWJLcAw8qnnTJxmj4AwaQPAz4bueeetE6VWm3FmhR50S0+VsM6Q+9O4kPxfScp/
	zTGSguMYA81YUl79IWrAPT2Zt93L02Z33rbfT+xCqPwlozutS1P+7z0eR2DEeH2TuOs3wfFZgQxxO
	qnmJBN3uudPoAEnsjtvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp4Ku-0007yv-Nl; Sun, 21 Jul 2019 05:24:40 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp4Ke-0007yW-Oy
 for openwrt-devel@lists.openwrt.org; Sun, 21 Jul 2019 05:24:26 +0000
Received: from p200300c5871ba600c4334eedf16ec09e.dip0.t-ipconnect.de
 ([2003:c5:871b:a600:c433:4eed:f16e:c09e]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hp4KM-0001KW-9R; Sun, 21 Jul 2019 07:24:06 +0200
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <32dabb5c-00ec-8793-17e1-9f946ff4f6a0@birger-koblitz.de>
 <007e01d53f37$e7407510$b5c15f30$@adrianschmutzler.de>
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <2529d3a4-992c-3e60-9a92-323d039bf148@birger-koblitz.de>
Date: Sun, 21 Jul 2019 07:24:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <007e01d53f37$e7407510$b5c15f30$@adrianschmutzler.de>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1563686664;
 799c34f4; 
X-HE-SMSGID: 1hp4KM-0001KW-9R
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_222424_963282_5D57F64B 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Asus RT-AC85P
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On 20.07.19 22:15, mail@adrianschmutzler.de wrote:
> Hi,
> 
>> -----Original Message-----

>> MAC:	The MAC address on the router-label matches the MAC of
>> 	the 2.4 GHz WiFi.
>> 	LAN and WAN MAC are identical: MAC_LABEL+4
>> 	5 GHz WiFi MAC: also MAC_LABEL+4
> 
> That's a nice idea. We should encourage adding similar description for other device support commits, too.
> 
> Question: So, LAN MAC, WAN MAC AND 5 GHz MAC are the same?
Yes, indeed, this is the setup of the original firmware. It is quite strange that the 3 addresses in between
are nowhere used.

> 
>> +	asus,rt-ac85p|\
>>  	dlink,dir-860l-b1|\
>>  	elecom,wrc-1167ghbk2-s|\
>>  	elecom,wrc-1900gst|\
> 
> Please move the block so sorting of blocks keep correct.
Will do.

> 
>> @@ -532,6 +533,9 @@ ramips_setup_macs()
>>  		lan_mac=$(macaddr_setbit_la "$lan_mac")
>>  		wan_mac=$(mtd_get_mac_binary factory 32772)
>>  		;;
>> +	asus,rt-ac85p)
>> +		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
>> +		;;
> 
> This should be before asus,rt-n56u.
Will do.

> 
> Despite, if WAN_MAC and ethernet MAC address are really the same, you technically would not need to set eth0.2 (wan) MAC address again.
> However, if you completely remove the case here, you will fall into default and set wrong addresses.
> So, one could just set the wan_mac anyway or just add an "empty" case:
>> +	asus,rt-ac85p)
>> +		;;
I would prefer to keep this as is, since it allows to configure the MAC in the U-Boot environment.
Also Asus might discover in a later FW version they could make use of the 3 addresses they were assigned,
and do not currently use...


> 
> ...
> 
>> +	compatible = "asus,rt-ac85p", "mediatek,mt7621-soc";
>> +	model = "Asus RC-AC85P";
> 
> RT instead of RC?
Ooops.


> 
>> +	leds {
>> +		compatible = "gpio-leds";
> 
> Add an empty line here.
> 
Will do.

>> +&nand {
>> +	status = "okay";
>> +
>> +	partitions {
>> +		compatible = "fixed-partitions";
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +
>> +		partition@0 {
>> +			label = "u-boot";
>> +			reg = <0x0 0xe0000>;
>> +			read-only;
>> +		};
>> +
>> +		partition@e0000 {
>> +			label = "u-boot-env";
>> +			reg = <0xe0000 0x100000>;
>> +			read-only;
>> +		};
>> +
>> +		factory: partition@1e0000 {
>> +			label = "factory";
>> +			reg = <0x1e0000 0x100000>;
>> +			read-only;
>> +		};
>> +
>> +		factory2: partition@2e0000 {
>> +			label = "factory2";
>> +			reg = <0x2e0000 0x100000>;
>> +			read-only;
>> +		};
>> +
>> +		partition@3e0000 {
>> +			label = "kernel";
>> +			reg = <0x3e0000 0x400000>;
>> +		};
>> +
>> +		partition@7e0000 {
>> +			label = "ubi";
>> +			reg = <0x7e0000 0x2e00000>;
>> +		};
>> +
>> +		partition@35e0000 {
>> +			label = "firmware2";
> 
> Where is firmware1? kernel+ubi?
Yes, indeed. The router uses an interesting setup.
Both the web-interface and the tftp in U-Boot always install the firmware twice into the partitions
firmware 1: 3e0000  - 35dffff
firmware 2: 35e0000 - 67e0000
During boot U-Boot verifies the checksums of both partitions. If one is not OK, the content of the other
is copied over. It then boots the first partition. The second partition never gets active and therefore
should not be made available to OpenWRT apart from this blob.
One idea I had would be for sysupgrade to clear the checksum of the firmware2 partition after a sysupgrade and
have U-Boot make a backup of firmware1 into firmware2 on the subsequent reboot. Alternatively, before a sysupgrade,
a backup from firmware 1 to firmware 2 is made.
However, the present setup also has its advantage: I did manage to have sysupgrade mess-up the first partition and
U-Boot happily corrected this...

>> +&pcie0 {
>> +	wifi@0,0 {>
> Maybe add "wifi0:" here.
Will do.

> 
>> +		compatible = "pci14c3,7603";
>> +		reg = <0x0000 0 0 0 0>;
>> +		mediatek,mtd-eeprom = <&factory 0x0000>;
>> +		ieee80211-freq-limit = <2400000 2500000>;
>> +		mtd-mac-address = <&factory 0x4>;
>> +	};
>> +};
>> +
>> +&pcie1 {
>> +	wifi@0,0 {
> 
> Maybe add "wifi1:" here.
Will do.

> 
>> +		compatible = "pci14c3,7662";
>> +		reg = <0x0000 0 0 0 0>;
>> +		mediatek,mtd-eeprom = <&factory 0x8000>;
>> +		ieee80211-freq-limit = <5000000 6000000>;
>> +		mtd-mac-address = <&factory 0x8004>;
>> +	};
>> +};
>> +
>> +&ethernet {
>> +	mtd-mac-address = <&factory 0xe000>;
> 
> So, this is the same as <&factory 0x8004>, but stored twice?
Yes:
birger@AMDDesktop:~/router/rt-ac85p$ hd backup-OpenWrt-factory-2019-07-10.bin|grep 00000000
00000000  15 76 a0 00 04 92 XX YY  ZZ 90 15 76 c3 14 00 00  |.v....&E...v....|
birger@AMDDesktop:~/router/rt-ac85p$ hd backup-OpenWrt-factory-2019-07-10.bin|grep 00008000
00008000  15 76 a0 00 04 92 XX YY  ZZ 94 15 76 c3 14 00 80  |.v....&E...v....|
birger@AMDDesktop:~/router/rt-ac85p$ hd backup-OpenWrt-factory-2019-07-10.bin|grep 0000e000
0000e000  04 92 XX YY ZZ 94 04 92  XX YY ZZ 90 ff ff ff ff  |..&E....&E......|

> 

>> +define Device/asus_rt-ac85p
>> +  MTK_SOC := mt7621
>> +  DEVICE_VENDOR := Asus
> 
> Use all caps as for the rt-ac57u.
Will do.

Cheers,
  Birger

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
