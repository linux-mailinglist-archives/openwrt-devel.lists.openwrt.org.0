Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1E71C2832
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 May 2020 22:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jlcs+bMeV6K22ISjCCd5mo6xw8QEqLGdmFZ7kshFfQ4=; b=fS644s/sGG7XQL
	ZU2IW5HFp+xun2uWkmTdW6kbF+73iWobm3yhv9MgWmNMYo+XPRfLF8eLRvO/XDuqBy3JhPI3iJKvl
	L8aW9gs0GFd5Zl7CQxeVUEb9wDngLijxmCqWQ7EA9FrG8AC+4Il8kv2A672RPrOBBJQ2CMLd58Fk7
	LcrerwiYbJhccpFmmsyiao5DgE9ET7SsbibVnSNckDounZQHBlFeJHiAjHSghn1jQBPmLN/sPPZRe
	CC23G7mPSmRqtX+NSCDtS8ZZ8rKitLBK68QTGZ4d78fn23T59nRrcHdi/M7ljcf/4Ggx4Vr6/76fb
	wlHUh90uxBI4ZJsTREmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUyXK-0006Tt-OK; Sat, 02 May 2020 20:14:58 +0000
Received: from mail.rdts.de ([195.243.153.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUyXE-0006F7-05
 for openwrt-devel@lists.openwrt.org; Sat, 02 May 2020 20:14:53 +0000
Received: from webmail.rdts.de (php1.rdts.de [82.223.13.20])
 by mail.rdts.de (Postfix) with ESMTPSA id ADC9FA226E
 for <openwrt-devel@lists.openwrt.org>; Sat,  2 May 2020 22:14:30 +0200 (CEST)
MIME-Version: 1.0
Date: Sat, 02 May 2020 22:14:30 +0200
From: Gerhard Bertelsmann <info@gerhard-bertelsmann.de>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Message-ID: <abf6f66d2a318c1c32bda0029b2f5025@gerhard-bertelsmann.de>
X-Sender: info@gerhard-bertelsmann.de
User-Agent: Roundcube Webmail/1.2.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_131452_191628_78575393 
X-CRM114-Status: UNSURE (   3.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] mt76x8: Strange GPIO numbering on Onion Omega2+
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I've installed the latest OpenWRT trunk version. Everything
seems to be fine except the port numbering:

~# cat /sys/kernel/debug/gpio
gpiochip2: GPIOs 416-447, parent: platform/10000600.gpio, 
10000600.gpio-bank2:

gpiochip1: GPIOs 448-479, parent: platform/10000600.gpio, 
10000600.gpio-bank1:
  gpio-454 (                    |reset               ) in  lo IRQ
  gpio-460 (                    |omega2p:amber:system) out hi ACTIVE LOW

gpiochip0: GPIOs 480-511, parent: platform/10000600.gpio, 
10000600.gpio-bank0:
  gpio-498 (                    |omega2p:green:link  ) out hi ACTIVE LOW
  gpio-499 (                    |omega2p:amber:activi) out hi ACTIVE LOW

The DTS file looks like:

         leds {
                 compatible = "gpio-leds";

                 system_led: system {
                         gpios = <&gpio 44 GPIO_ACTIVE_LOW>;
                 };
                 network1 {
                         label = "omega2p:green:link";
                         gpios = <&gpio 18 GPIO_ACTIVE_LOW>;
                 };
                 network2 {
                         label = "omega2p:amber:activity";
                         gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
                 };
         };

         keys {
                 compatible = "gpio-keys";

                 reset {
                         label = "reset";
                         gpios = <&gpio 38 GPIO_ACTIVE_HIGH>;
                         linux,code = <KEY_RESTART>;
                 };



Is this common to the new kernel versions or is there
something missing ?

Here the kernel log:

~# dmesg  | head ; dmesg | grep gpio
[    0.000000] Linux version 5.4.36 (misterx@ding) (gcc version 8.4.0 
(OpenWrt GCC 8.4.0 r12975-9fd36f54f5)) #0 PREEMPT Thu Apr 30 19:51:12 
2020
[    0.000000] Board has DDR2
[    0.000000] Analog PMU set to hw control
[    0.000000] Digital PMU set to hw control
[    0.000000] SoC Type: MediaTek MT7688 ver:1 eco:2
[    0.000000] printk: bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019655 (MIPS 24KEc)
[    0.000000] MIPS: machine is Onion Omega2+
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Primary instruction cache 64kB, VIPT, 4-way, linesize 32 
bytes.
[    0.287441] mt7621_gpio 10000600.gpio: registering 32 gpios
[    0.294177] mt7621_gpio 10000600.gpio: registering 32 gpios
[    0.300558] mt7621_gpio 10000600.gpio: registering 32 gpios


Regards

Gerd

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
