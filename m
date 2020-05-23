Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3AC1DF61D
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 10:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5/wKgtcUuDQHe79tVcLkmQKiZZA0YjLde5U2SbjHeNU=; b=Hv3nIxD3Ecc45+In6BVVfql3z
	IKdiN9A1++nOxf2pMWUgtrpHc/exOamaZJR2EM2RPGpxVSb330YsDoLTgIx6zhF9vv8nGtPn+cVN0
	JRTz4Uy+lRFRrhrihBNL3+mijdzaxqWvcBkHwzRfxuxb4UCciZB7vmRrH7OusMbh93Wpz8crrWCMA
	G7vTIw7BFBc+t5iRmDRIp1KaRvmq7apIlXRmlh7jYXnhfFiTp1EMB79wh52U7Wp23mUD9jSIBUFYp
	kH9oAomjLVMdifJ6gnqQvERx/D6j3ZTdDJJaIQ6SUh14gK1e5MeCpwm3ahpGzzyR+tcSs6K/Fg5JR
	H57s8+zsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcPpR-0000ce-0J; Sat, 23 May 2020 08:48:25 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcPpI-0000bk-3D
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 08:48:18 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 4FCE7FB253; Sat, 23 May 2020 10:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590223683;
 bh=+TDROrGpJdYbXT2z1xlrsQ+1dydgmDeCHZNvazgYS7k=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=ODQ2WwLpS2XS3EJkOf+K9aS7lM7MOPycSppkRfMpRMhUCvj0L67R2JuQVwgoFd9oM
 owr0qJOr9QRUyt7MiLmife5t+9WQEienw5ikGVjA1v2embi6QEUk/d48YkoJ9mldSD
 jRgLeKdXLtFtjm5XL4C53FIfxkqYD1eqlArJgxC8=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.166.32.adsl.dyn.edpnet.net [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 06052FB24F;
 Sat, 23 May 2020 10:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590223681;
 bh=+TDROrGpJdYbXT2z1xlrsQ+1dydgmDeCHZNvazgYS7k=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=Z3nEg5YpAoIYIDDxjEvKykKhs9MTyt5Y5haqCMLjnbFaViA8dhbuip4+xXn3NWAH0
 kIIF7fQWZoRyA1k3mgW5Cqlxb/Oxg8J9zUTzSuf+S8UmvWuFYpewAPrNg8IXH78JQe
 nz62T4j4ES+FoSyKzJKo+1QUpgNpNxqJ0CGw7ygo=
Date: Sat, 23 May 2020 10:47:54 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: mail@adrianschmutzler.de
Message-Id: <UF0SAQ.KA1RJ3QG7MXL3@volatilesystems.org>
In-Reply-To: <018c01d63065$3befa6c0$b3cef440$@adrianschmutzler.de>
References: <20200522174111.3539-1-foss@volatilesystems.org>
 <20200522174815.3723-1-foss@volatilesystems.org>
 <018c01d63065$3befa6c0$b3cef440$@adrianschmutzler.de>
X-Mailer: geary/3.36.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_014816_432333_2EBC5188 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79/nand: add support for Netgear
 WNDR4300 SW
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

Op vrijdag 22 mei 2020 om 20u17 schreef mail@adrianschmutzler.de:
> Hi,
> 
> this starts with some nitpicks, and becomes more important closer to 
> the end:
> 
>>  -----Original Message-----
>>  From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>>  On Behalf Of Stijn Segers
>>  Sent: Freitag, 22. Mai 2020 19:48
>>  To: openwrt-devel@lists.openwrt.org
>>  Subject: [OpenWrt-Devel] [PATCH v2] ath79/nand: add support for 
>> Netgear
>>  WNDR4300 SW
>> 
>>  The Netgear WNDR4300 SW is identical to the regular WNDR4300 and 
>> only
>>  differs by its BOARD_ID.
> 
> Personally, I like to have the Specifications and Flashing 
> instructions for each device support patch, even if it's just a 
> stupid clone (which in turn should make it easy to get the relevant 
> information from the clone).
> 
>> 
>>  Resulting image has been confirmed working [1].
>> 
>>  Because of the minor difference with the regular model I am unsure 
>> about
>>  the approach, so please let me know if this overdoes it (and what I 
>> should
>>  change).
> 
> This sentence should not go into the commit description itself (as it 
> would end up in the repo if the patch was just merged), but could be 
> added after a line containing just "---". Everything after that would 
> be cut off if somebody takes the patch from patchwork.
> 
> For example, have a look at how this is done in my patch here: 
> https://patchwork.ozlabs.org/project/openwrt/patch/20200326155654.48317-1-freifunk@adrianschmutzler.de/
> 
> (Sorry if I tell you something you already know :-) ).
> 
>> 
>> 
>>  [1] https://forum.openwrt.org/t/porting-wndr4300-to-ath79/16006/57
>> 
>>  Signed-off-by: Stijn Segers <foss@volatilesystems.org>
>>  ---
>>   target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts |  9 +++++++++
>>   target/linux/ath79/image/nand.mk                     | 12 
>> ++++++++++++
>>   .../linux/ath79/nand/base-files/etc/board.d/01_leds  |  1 +
>>   .../ath79/nand/base-files/etc/board.d/02_network     |  1 +
>>   .../etc/hotplug.d/firmware/10-ath9k-eeprom           |  1 +
>>   5 files changed, 24 insertions(+)
>>   create mode 100644
>>  target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
>> 
>>  diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
>>  b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
>>  new file mode 100644
>>  index 0000000000..fb90eee550
>>  --- /dev/null
>>  +++ b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
>>  @@ -0,0 +1,9 @@
>>  +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
>>  +
>>  +#include "ar9344_netgear_wndr.dtsi"
>>  +
>>  +/ {
>>  +	compatible = "netgear,wndr4300sw", "qca,ar9344";
>>  +	model = "Netgear WNDR4300SW";
>>  +};
>>  diff --git a/target/linux/ath79/image/nand.mk
>>  b/target/linux/ath79/image/nand.mk
>>  index 3ccd19914f..9814815ff1 100644
>>  --- a/target/linux/ath79/image/nand.mk
>>  +++ b/target/linux/ath79/image/nand.mk
>>  @@ -172,6 +172,18 @@ define Device/netgear_wndr4300  endef
>>  TARGET_DEVICES += netgear_wndr4300
>> 
>>  +define Device/netgear_wndr4300sw
>>  +  SOC := ar9344
>>  +  DEVICE_MODEL := WNDR4300
>>  +  DEVICE_VARIANT := SW
> 
> If you use DEVICE_VARIANT here, this implies a space between WNDR4300 
> and SW: "WNDR4300 SW"
> For consistency, this would then require a hyphen in definition and 
> compatible, DTS name etc.: netgear_wndr4300-sw
> 
> A simpler alternative would be to "decide" SW is not a variant, but 
> part of the device model name. Then you would just use
> DEVICE_MODEL := WNDR4300SW
> without DEVICE_VARIANT.
> 
> Based on googling, I could not find out what's the "true name" here.


The firmware header has it as 'WNDR4300SW', it's a suffix without 
spaces I've been told by an owner.
> 
>>  +  NETGEAR_KERNEL_MAGIC := 0x33373033
>>  +  NETGEAR_BOARD_ID := WNDR4300SW
>>  +  NETGEAR_HW_ID := 29763948+0+128+128+2x2+3x3
>>  +  $(Device/netgear_ath79_nand)
>>  +endef
>>  +TARGET_DEVICES += netgear_wndr4300sw
>>  +
>>  +
> 
> Only one empty line please.
> 
>>   define Device/netgear_wndr4300-v2
>>     SOC := qca9563
>>     DEVICE_MODEL := WNDR4300
>>  diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
>>  b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
>>  index d9989ec538..4f601849fc 100755
>>  --- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
>>  +++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
>>  @@ -14,6 +14,7 @@ glinet,gl-ar300m-nor)
>>   	;;
>>   netgear,wndr3700-v4|\
>>   netgear,wndr4300|\
>>  +netgear,wndr4300sw|\
>>   netgear,wndr4300-v2|\
>>   netgear,wndr4500-v3)
>>   	ucidef_set_led_switch "wan-amber" "WAN (amber)"
>>  "netgear:amber:wan" "switch0" "0x20"
>>  diff --git 
>> a/target/linux/ath79/nand/base-files/etc/board.d/02_network
>>  b/target/linux/ath79/nand/base-files/etc/board.d/02_network
>>  index b2191eed92..42be72af53 100755
>>  --- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
>>  +++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
>>  @@ -44,6 +44,7 @@ ath79_setup_macs()
>>   	case "$board" in
>>   	netgear,wndr3700-v4|\
>>   	netgear,wndr4300|\
>>  +	netgear,wndr4300sw|\
>>   	netgear,wndr4300-v2|\
>>   	netgear,wndr4500-v3)
>>   		wan_mac=$(mtd_get_mac_binary caldata 0x6) diff --git
>>  
>> a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-
>>  eeprom 
>> b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-
>>  ath9k-eeprom
>>  index f5fae46dfb..f89fc83ddf 100644
>>  --- 
>> a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-
>>  eeprom
>>  +++ 
>> b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k
>>  +++ -eeprom
>>  @@ -24,6 +24,7 @@ case "$FIRMWARE" in
>>   	case $board in
>>   	netgear,wndr3700-v4|\
>>   	netgear,wndr4300|\
>>  +	netgear,wndr4300sw|\
> 
> Both 02_network and 10-ath9k-eeprom have two entries for wndr4300, 
> but you add only one for the sw variant.
> 
> Consequently, an image built from this patch should have wrong 
> wan_mac and lack calibration data for one WiFi.
> 
> Fixing everything noted above should be easy, but you should improve 
> your test protocols, as the missing caldata shouldn't have slipped 
> through :-)

Yes that was sloppy. Thanks for your thorough review, v3 follows.

Stijn

> 
> Best
> 
> Adrian
> 
>>   	netgear,wndr4300-v2|\
>>   	netgear,wndr4500-v3)
>>   		caldata_extract "caldata" 0x5000 0x440
>>  --
>>  2.20.1
>> 
>> 
>>  _______________________________________________
>>  openwrt-devel mailing list
>>  openwrt-devel@lists.openwrt.org
>>  https://lists.openwrt.org/mailman/listinfo/openwrt-devel



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
