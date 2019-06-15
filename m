Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA3646F7D
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 12:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhFZ4OPKt+benWHmA8y4j5QrV4GY95OC5p2MPlZyEH8=; b=kZwjHxLpbP9cVH
	1qnhmQfKNhlHyrzXko03Snb8qux/AmDPkdE85N640fBW5qUV8M2ok/OTZpUvOXvtuTvFsA/ut146F
	s1aRnCCJMWpBymVm1K1ZNeMk/K/RWfyIFU9txjSFljnDbpNWMCsBaDLZSvMrIcc+Xq9jBXTd2kj2W
	OOUPpaqTwpbZOp4J5ExZvfOWuTJL8VYCUbEIf3hdWskmOawHMCFQ6rw25zacflgIE148HtteancM9
	QqUPgrSVOBYTmBk7Ftj3JxuwPT4ddZLtodWspOOSrswnywWQpJmD2wDtUl16PiC0f/hsi7wJL5RNn
	bEGqk2GVlOftoIWtFj9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5fB-0006Oo-1E; Sat, 15 Jun 2019 10:11:57 +0000
Received: from smtp.soverin.net ([159.69.232.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5dZ-0004o0-FC
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 10:10:21 +0000
Received: from soverin.net by soverin.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=oranjevos.nl;
 s=default; t=1560593411;
 bh=E3TQR1zLORGhDAf6Q55uC6l8KJpLFAFesRy/lgn4vPs=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=gWEd/AJ8NhoMMSqhl5svF/GBhKtdXWGGxLdapYAfq8AfJ94Jq/3y2b8yUepuM1yKS
 wR8jP7MFrWxgWZ7L5yv+Tfz8uw8sbMVo+bwI5qPeR8EMGBExWOZwb4d99R5O+IW6eH
 lOaGzMqgpRVRvHCdILrmpgp+n+Q9HFSA3egplZs4=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <5667b3c1-d675-dc9e-8b33-27d6629d1111@gmail.com>
Date: Sat, 15 Jun 2019 12:10:09 +0200
Message-Id: <987922AB-9F3B-4DAA-8D6E-A4948B3C0492@oranjevos.nl>
References: <CANDHWrd_nLzKm8AXivb9xGZW=aKFniSS6GQng7NabrB83MmjRg@mail.gmail.com>
 <7dc092d9-2aa3-f2a4-2448-eee0e1a7f2f9@gmail.com>
 <CANDHWrdHtN7qf7YYpsE2M2mYKsjFVj7Hf0Av4DbZmpfmtkJXfg@mail.gmail.com>
 <5667b3c1-d675-dc9e-8b33-27d6629d1111@gmail.com>
X-Virus-Scanned: clamav-milter 0.100.3 at c03mi01
X-Virus-Status: Clean
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_031017_986068_3719B545 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [159.69.232.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Netgear DM200 Boot Issue/Patch Availability?
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
Cc: Chris <threshnode@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

IIRC OpenWRT can also be flashed onto the DM200 with nmrpflash [1].

[1] https://github.com/jclehner/nmrpflash

Regards,
Paul

p.s.
top posted as this thread already does that.

> Op 2 jun. 2019, om 22:42 heeft Alberto Bursi <bobafetthotmail@gmail.com> het volgende geschreven:
> 
> It's not an Arduino, it's a USB dongle to communicate with Arduino
> 
> (and any other embedded device's) TTL serial pins.
> 
> Search for "arduino USB-TTL dongle" on ebay or amazon to find this tool.
> 
> -Alberto
> 
> On 02/06/19 17:39, Chris wrote:
>> Hi Alberto,
>> 
>> Thanks for explaining the situation to me. I'll get hold of an Arduino and give this a shot.
>> 
>> All the best,
>> Chris
>> 
>> On Tue, May 28, 2019 at 4:52 PM Alberto Bursi <bobafetthotmail@gmail.com> wrote:
>> 
>> 
>> Last attempt I saw was here https://github.com/openwrt/openwrt/pull/1770
>> 
>> but it was rejected.
>> 
>> 
>> 
>> I have some experience with the bootloader used in this device, I can 
>> 
>> provide more complete instructions to do the uboot fix though.
>> 
>> TTL/serial access seems to be easy (there is a header as you see in the photo),
>> 
>> and you need an inexpensive "arduino USB-TTL dongle" to connect to this device.
>> 
>> Connect the pins as defined in the wiki, open up your serial 
>> 
>> communication program (Putty usually)
>> 
>> and set it for 115200 serial speed, others default.
>> 
>> Then boot the device, press a key to stop boot when you see 
>> 
>> "Hit any key to stop autoboot: 2 1 0"
>> 
>> It should stop and accept console commands.
>> 
>> then copy-paste this line 
>> 
>> setenv sleep 1;nmrp;sf probe 0:3;sf read $loadaddr 0x30000 0x400000;bootm $loadaddr
>> 
>> This will alter the bootloader configuration that is causing the issue. Now it will boot kernels up to 4MB big
>> 
>> Will still be able to boot stock firmware, we are just increasing a size limit.
>> 
>> and then save the change by writing
>> 
>> saveenv
>> 
>> and then you can reboot the device by pulling the plug or writing
>> 
>> reset
>> 
>> Now you can install OpenWrt as normal.
>> 
>> -Alberto
>> 
>> 
>> 
>> On 28/05/19 14:00, Chris wrote:
>>> Hi folks,
>>> 
>>> I was wondering if a patch enabling this device was ever released?
>>> 
>>> http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html
>>> 
>>> The wiki suggests one can only install/boot into OpenWRT by wiring up a JTAG/serial interface and manually intervene... Which is far beyond my comfort zone.
>>> 
>>> Am very eagar to make use of this equipment, so any news would be really appreciated.
>>> 
>>> All the best,
>>> Chris
>>> 
>>> 
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> 
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
