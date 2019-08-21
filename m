Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B9F986B7
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 23:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9Bp+cACzU7lFrNJe0nWq2zpS/UFiTWj5PlS6YBd6wOY=; b=W/xLgmm7OCgI3ng4IVwKjrSCQ
	rVDifnLZj9JBzxElIe1Rzb0G3oLvUTZYwP+xdH8/d5XyfvuXlCm8EQ9HLfuQyasVyZdmWXSZfQLD2
	uXdVAnO0nP3zJmfPz9BA5DzrWvNfX3hzcy7VIf1bePWjAxL1iEt9wUP016wHShyzC9jEqptBH2U7Y
	RrFWBrJr5Rth1R/oGU+3V2wtpPgCdtkHLN5MdJ2rCPKuVkXMCGpNUmTpYrerkK2QHvXUGm91yy7fX
	fkkwG09VgsHJAE/nPo6dH+LWxnsCinNgMmC+RK533xoD9S7GAU2vrq0hCQ6vT8dDaZA2b104XNhFZ
	aV3gCZbXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0YNA-0001sw-Lh; Wed, 21 Aug 2019 21:42:28 +0000
Received: from tunnel231050-pt.tunnel.tserv1.bud1.ipv6.he.net
 ([2001:470:1f1a:93::2] helo=trabant.uid0.hu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0YMw-0001cV-OV
 for openwrt-devel@lists.openwrt.org; Wed, 21 Aug 2019 21:42:22 +0000
Received: from [178.48.144.69] (port=61646 helo=[10.1.1.1])
 by trabant.uid0.hu with esmtpsa (Exim 4.89 #1 (Debian))
 id 1i0YMq-0000En-Ge
 from <wigyori@uid0.hu>; Wed, 21 Aug 2019 23:42:08 +0200
To: Michael Heimpold <mhei@heimpold.de>
References: <20190731214247.11683-1-mhei@heimpold.de>
 <2371323.9LdJS25nyt@kerker>
From: Zoltan HERPAI <wigyori@uid0.hu>
Message-ID: <01a39139-52c4-bd9f-4694-2a2eb237f888@uid0.hu>
Date: Wed, 21 Aug 2019 23:42:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2371323.9LdJS25nyt@kerker>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_144214_954386_400FE851 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] uboot-mxs: bump to v2019.07
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

Hi Michael,

On 8/21/2019 20:34, Michael Heimpold wrote:
> Hi wigyori,
>
> Am Mittwoch, 31. Juli 2019, 23:42:45 CEST schrieb Michael Heimpold:
>> Also update the U-Boot BSP patch for I2SE Duckbill devices.
>>
>> Run tested on I2SE Duckbill and Olimex OLinuXino Maxi boards.
> any objections on this patch?
No objections on either patch, I did a test build for my Olinuxino Maxi, 
but haven't got to push to trunk - will do in the next few days.

Thanks,
Zoltan H

>> Signed-off-by: Michael Heimpold <mhei@heimpold.de>
>> ---
>>   package/boot/uboot-mxs/Makefile                     |  4 ++--
>>   .../uboot-mxs/patches/001-add-i2se-duckbill.patch   | 13 +++++++------
>>   2 files changed, 9 insertions(+), 8 deletions(-)
>>
>> diff --git a/package/boot/uboot-mxs/Makefile
>> b/package/boot/uboot-mxs/Makefile index c4485f5b3d..da98496895 100644
>> --- a/package/boot/uboot-mxs/Makefile
>> +++ b/package/boot/uboot-mxs/Makefile
>> @@ -8,10 +8,10 @@
>>   include $(TOPDIR)/rules.mk
>>   include $(INCLUDE_DIR)/kernel.mk
>>
>> -PKG_VERSION:=2019.01
>> +PKG_VERSION:=2019.07
>>   PKG_RELEASE:=1
>>
>> -PKG_HASH:=50bd7e5a466ab828914d080d5f6a432345b500e8fba1ad3b7b61e95e60d51c22
>> +PKG_HASH:=bff4fa77e8da17521c030ca4c5b947a056c1b1be4d3e6ee8637020b8d50251d0
>>
>>   include $(INCLUDE_DIR)/u-boot.mk
>>   include $(INCLUDE_DIR)/package.mk
>> diff --git a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
>> b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch index
>> 9acb6a508d..e0ac283827 100644
>> --- a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
>> +++ b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
>> @@ -1,4 +1,4 @@
>> -From 6af0148a38b23ba761905f98a7211fab986033ce Mon Sep 17 00:00:00 2001
>> +From 85d7689cbd3a8162153f445a0656d57122c58d90 Mon Sep 17 00:00:00 2001
>>   From: Michael Heimpold <mhei@heimpold.de>
>>   Date: Thu, 13 Sep 2018 21:40:19 +0200
>>   Subject: [PATCH] arm: mxs: add support for I2SE's Duckbill boards
>> @@ -32,9 +32,9 @@ Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>>    board/i2se/duckbill/Makefile    |  10 ++
>>    board/i2se/duckbill/duckbill.c  | 186 ++++++++++++++++++++++++++++++++
>>    board/i2se/duckbill/iomux.c     | 156 +++++++++++++++++++++++++++
>> - configs/duckbill_defconfig      |  38 +++++++
>> + configs/duckbill_defconfig      |  39 +++++++
>>    include/configs/duckbill.h      | 179 ++++++++++++++++++++++++++++++
>> - 8 files changed, 595 insertions(+)
>> + 8 files changed, 596 insertions(+)
>>    create mode 100644 board/i2se/duckbill/Kconfig
>>    create mode 100644 board/i2se/duckbill/MAINTAINERS
>>    create mode 100644 board/i2se/duckbill/Makefile
>> @@ -471,10 +471,10 @@ index 0000000000..1db3c52c34
>>   +}
>>   diff --git a/configs/duckbill_defconfig b/configs/duckbill_defconfig
>>   new file mode 100644
>> -index 0000000000..f92a67d53d
>> +index 0000000000..9dea20a87d
>>   --- /dev/null
>>   +++ b/configs/duckbill_defconfig
>> -@@ -0,0 +1,38 @@
>> +@@ -0,0 +1,39 @@
>>   +CONFIG_ARM=y
>>   +CONFIG_ARCH_MX28=y
>>   +CONFIG_SYS_TEXT_BASE=0x40002000
>> @@ -483,14 +483,15 @@ index 0000000000..f92a67d53d
>>   +CONFIG_SPL_LIBGENERIC_SUPPORT=y
>>   +CONFIG_TARGET_DUCKBILL=y
>>   +CONFIG_SPL_SERIAL_SUPPORT=y
>> -+CONFIG_SPL=y
>>   +CONFIG_NR_DRAM_BANKS=1
>> ++CONFIG_SPL=y
>>   +CONFIG_BOOTDELAY=1
>>   +CONFIG_SYS_CONSOLE_IS_IN_ENV=y
>>   +CONFIG_VERSION_VARIABLE=y
>>   +# CONFIG_DISPLAY_BOARDINFO is not set
>>   +CONFIG_ARCH_MISC_INIT=y
>>   +# CONFIG_SPL_FRAMEWORK is not set
>> ++CONFIG_SPL_TEXT_BASE=0x00001000
>>   +CONFIG_HUSH_PARSER=y
>>   +CONFIG_CMD_BOOTZ=y
>>   +# CONFIG_CMD_ELF is not set


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
