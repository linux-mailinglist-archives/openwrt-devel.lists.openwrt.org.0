Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5D413CD9C
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 21:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=baSj1VpyWRjJY9fiW5eq48cLUBDW/Plz0o9DbCkPCdI=; b=IY/UikcWl4+28eWnFQ+N9N46F
	a/AdCee93MK1Flkfl718lsnCCW2JFUGvAz54mCX2jwKQEtlsB143cUoAxFI1ur+kJ4x/M/7syW7cF
	8RhVv8IegpybPYee9f0zuJzXFAqmAlitE/rZo2beZ+fdgqFMLQVZudAIYlUa4zns1PwvNquMAalQC
	m3D1QhfZGnhiwOT0tACJRrOLIjkKVwpskHzVzbZPnO5zIY4trqRVlQWAih3OMczFmK9GsQC1+1dq8
	vQREnDBbuaJCCLINOa1Nz4NZeEWUV+bODnuqm1iW+LF2Fey3u1NV7ThlOP7sMf//k+N2W/lTWl/Gk
	WjEsnnKCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irosX-0006IV-1x; Wed, 15 Jan 2020 20:03:01 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irosM-0006Hz-3f
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 20:02:54 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irosJ-00029o-6r; Wed, 15 Jan 2020 21:02:47 +0100
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <20191222215052.6901e39f@kosmio.komorska>
From: John Crispin <john@phrozen.org>
Message-ID: <ba1e9fe3-0648-39b0-6774-8b497aeb0c13@phrozen.org>
Date: Wed, 15 Jan 2020 21:02:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191222215052.6901e39f@kosmio.komorska>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_120250_310064_968B264C 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/4] ath79: add support for
 QCA9563-based Netgear WNDR routers
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 22/12/2019 21:50, Michal Cieslakiewicz wrote:
> This patchset introduces support for two Netgear dual-band routers
> based on the same PCB (29764821) with QCA9563 SoC, AR9580 5GHz chip,
> 128 MiB RAM, 2 MiB SPI-NOR + 128 MiB SPI-NAND flash:
> * Netgear WNDR4300 v2
> * Netgear WNDR4500 v3
> 
> WNDR4300v2 has been tested successfully with this patchset applied
> to master branch. Since I have no access to 4500v3, configuration
> for this device is based on information provided by various websites,
> including abandoned ar71xx patch https://patchwork.ozlabs.org/patch/809227/
> 
> Note: technical wikis claim device is running CPU @ 750 MHz, while on my
> WNDR4300v2 both u-boot and OpenWrt report CPU clock value of 775 MHz.
> 
> MAC address printed on device label is for LAN interface (ART offset 0x0).
> 
> Patch #1 is a prerequisite and allows to unmask certain pins for
> ath9k-compatible wireless chips using Device Tree definition. Parameter
> is labelled "qca,gpio-mask" and accepts u32 value (see *_GPIO_MASK
> constants in ath9k/reg.h file). One of main reasons for blocking access
> to these pins is that they provide only one-way communication (in or out).
> Here - setting new mask to 0xf6ff (default one is 0xf4ff) enables RFKILL
> button wired to input pin 9.

Merged, thanks !

> Changes v1->v2:
> * kernel partition size increased from 2 MiB to 4 MiB for all Netgear WNDR
>    routers with NAND flash, including AR9344 models (WNDR4300 and WNDR3700v4)
>    already in master (patch 2/4 added)
> * dropped 'firmware' overlay partition
> 
> Patch list (4):
>    mac80211: ath9k: add GPIO mask dts property
>    ath79: WNDR4300: increase kernel partition to 4M
>    ath79: add support for Netgear WNDR4300 v2
>    ath79: add support for Netgear WNDR4500 v3
> 
>   package/boot/uboot-envtools/files/ath79       |   2 +
>   .../patches/ath/553-ath9k_of_gpio_mask.patch  |  25 ++
>   .../linux/ath79/dts/ar9344_netgear_wndr.dtsi  |  10 +-
>   .../linux/ath79/dts/qca9563_netgear_wndr.dtsi | 256 ++++++++++++++++++
>   .../ath79/dts/qca9563_netgear_wndr4300-v2.dts |  19 ++
>   .../ath79/dts/qca9563_netgear_wndr4500-v3.dts |  41 +++
>   target/linux/ath79/image/nand.mk              |  24 +-
>   .../ath79/nand/base-files/etc/board.d/01_leds |   4 +-
>   .../nand/base-files/etc/board.d/02_network    |   8 +-
>   .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   8 +-
>   10 files changed, 386 insertions(+), 11 deletions(-)
>   create mode 100644 package/kernel/mac80211/patches/ath/553-ath9k_of_gpio_mask.patch
>   create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
>   create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr4300-v2.dts
>   create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr4500-v3.dts
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
