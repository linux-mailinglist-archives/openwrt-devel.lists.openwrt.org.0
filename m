Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0785E54AA
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 21:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VhvylxmY4qGlqFDBe2VeileD9scs7z/+UzWlnpikDtU=; b=S2dC6kitGv80TrlVLt3HiUNrI
	zHVjppFHliFl27ZhRGj4qsXfg07oNX8wEmYm+ZWwD7cEcnvZjczQZMdYleOV38fMrdHAPm706t25I
	3gimeoaGavD3QTwxBLS2S8GlDaF/a0G79rW5NuXf+ikM2AeSx7S6Uz3MArlOP1Fsy/ghQMd9v86F6
	GFjOPqk3yvHxZPYHW9Bx78gnDS7fUPUHQVVDC2w6930VLVpDMJcNESp5hJ1tBtnlh4CbbyqsMcL2i
	T+ZrkMp18gbFPI6JLToP96ZHM0VAx/4c79aVDHLaOrVsnQbkAYzAhsQFQPguRt1FReUe9/D+hvW9g
	IW/JPxh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO5bi-0003vf-OQ; Fri, 25 Oct 2019 19:50:46 +0000
Received: from iapetos.krtzbrtz.org ([85.124.251.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO5bb-0003uo-D5
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 19:50:41 +0000
Received: from [192.168.1.11] (194-166-119-100.hdsl.highway.telekom.at
 [194.166.119.100])
 by iapetos.krtzbrtz.org (Postfix) with ESMTPSA id 81AE49ED8F
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 21:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=krtzbrtz.org;
 s=chswiq6a; t=1572033029;
 bh=1lvSaWIifQqT8Du0kG2feLCWHcFSgH9c9qZZGhsz428=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=X9G5ClKOeC+hKiqpfmanhj3f4SUHOqWOJVVvR99Ql+wFgn6oEK/nAcTMIKVBgH1PN
 mzvz9ONc9VgqLuNGtCEE6epE624S5b4sSDwlad3VHl2gzumyu/738xowdsEUnB3NwR
 RIEWWY5KFo8hZcsGTjwK+95NVmlHdxRo5NsXa7xyHbTeTVjobroxhyJ3jrLRuHbz54
 jeVr4pcIuYqP4p4ni4wrRSmSL9fgZ7U+CdRimwKZ0foJg/scglyxoPkb+Cdp2mEDR8
 oXmw3vborTBJ4HKfH2B0IsX8PUrNfzTEX947L0/ElMrmTFde4Z3KaKP4iPuEFexpln
 I1CpkvOOS43mQ==
To: openwrt-devel@lists.openwrt.org
References: <20191024115430.19992-1-openwrt.dev@krtzbrtz.org>
 <007d01d58b27$1a730a70$4f591f50$@adrianschmutzler.de>
From: 'Patrick Supper' <openwrt.dev@krtzbrtz.org>
Message-ID: <2b2cc133-5d6f-4f60-73c8-f879bfc739aa@krtzbrtz.org>
Date: Fri, 25 Oct 2019 21:50:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <007d01d58b27$1a730a70$4f591f50$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_125039_937485_75C0F32C 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 FROM_DOMAIN_NOVOWEL    From: domain has series of non-vowel letters
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for ZyXEL NWA1123-NI
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

Hello,

thank you for reviewing. I just changed the address and ART-Label to 
lowercase in my source => fixed.

### Regarding the cal-data of the pcie-wifi (AR9382):
It seems to me it has some kind of EEPROM, from OEM-BootLog:
wmac-wifi: "Using Cal data from Flash 0xbfff0000"
pcie-wifi: "Using Cal data from EEPROM 0x3ff"

At least I was able to identify only one cal-data section in art, 
starting at 0x1000. Starting from 0x1450 art is totally empty.

On OpenWrt ath9k does not complain about missing cal-data and the 
wifi-interface is functional.

Please let me know if I might be right with my assumption, and if so, 
shall i write a comment in the dts?
For example: /* has cal-data in eeprom */

Logfiles from OpenWrt and OEM are available on the Device-Wiki:
https://openwrt.org/inbox/zyxel/zyxel_nwa1123-ni

### MAC addresses

# OEM-Firmware takes them from mib0 (/etc/rc.d/rcS and 
/etc/rc.d/rc.wlan), in short:

	strings /dev/mtdblock6 > /tmp/mtdblock6
	TEMP=`cat /tmp/mtdblock6 | grep 'eth0mac' | awk '{print $3}'`
	ETH0MAC=`expr substr $TEMP 9 17`
	ifconfig eth0 hw ether $ETH0MAC

	TEMP=`cat /tmp/mtdblock6 | grep 'wifi0mac' | awk '{print $4}'`
	WIFI0MAC=`expr substr $TEMP 10 17`
	iwpriv wifi0 setHwaddr $WIFI0MAC

	TEMP=`cat /tmp/mtdblock6 | grep 'wifi1mac' | awk '{print $5}'`
	WIFI1MAC=`expr substr $TEMP 10 17`
	iwpriv wifi1 setHwaddr $WIFI1MAC

# strings /dev/mtdblock6 (mib0) gives:
serialnum=S122L12345678 countrycode=276 eth0mac=00:11:22:33:44:05 
wifi0mac=00:11:22:33:44:06 wifi1mac=00:11:22:33:44:07
(yes, all in one line and not usable with mtd_get_mac_ascii by default)

# "strings /dev/mtd1 | grep mac" (u-boot-env) gives:
eth0mac=00:37:ff:00:00:01
wifi0mac=00:37:ff:00:00:02
wifi1mac=00:37:ff:00:00:03

...but those are generic and identical on all my devices => not usable 
by default

# art contains a valid MAC address at 0x1002, but it is the on of eth0

I guess that explains why i decided to use the following to set the 
mac-addresses:

eth0:  <&art 0x1002>
wifi0: <&art 0x1002> + 1
wifi1: <&art 0x1002> + 2

I have 4 of this devices and for those this is correct.
But i have to admit that i got them all at the same time and the vendor 
might have changed to set a valid/correct MAC address for eth0 at art 
0x1002 before/after i got mine...

How shall we proceed with this? Keep the current solution (with the risk 
that some users maybe end up with wrong MAC-addresses)? Or extend 
mtd_get_mac_ascii with an option for white-space as a field separator 
(or create a new function) and set the MAC address in 
/etc/board.d/02_network + /etc/hotplug.d/firmware/10-ath9k-eeprom?

Regards,
Patrick

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
