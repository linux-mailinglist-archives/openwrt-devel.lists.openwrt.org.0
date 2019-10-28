Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3DEE79F0
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 21:18:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cDA5evgzMZWnilK+TGekomPPIDJVkpOypXQHfa6llg4=; b=gY4UtJOxtRMht6l9IwnTz8GEd
	QrELn6pYuvhGZXFwKQXZU78x+Sed62SW7ICozTWBPfKTdPw8XYt8KYLJDlXRitE1kfdWbY5eqIWzs
	eY1qo8qdMneHRbIp5VS2TbvhJKF9RSySDsmc6o3d7xB+tSnacX3ZnyOtnTaICGShobQCwovuK7lgJ
	bRL1q2yI2kq0XV8SIaAQnR3fKzqS3WQnzfdXdAUWxw6kXc3dYR/tSBesysgvrK01oDaAp/NUon2p0
	b29bCVsx6/NuWCqCayKrJc00F5cMQIdNEuGmA/06F64cY7hFcYUPmEhiXZoJlUdXSL0oVOimM4SVA
	QlGMNoPiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBSt-0003Wb-Bd; Mon, 28 Oct 2019 20:18:11 +0000
Received: from iapetos.krtzbrtz.org ([85.124.251.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBSl-0003Vp-Nm
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 20:18:05 +0000
Received: from [192.168.1.11] (194-166-119-100.hdsl.highway.telekom.at
 [194.166.119.100])
 by iapetos.krtzbrtz.org (Postfix) with ESMTPSA id 057FD9F255
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 21:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=krtzbrtz.org;
 s=chswiq6a; t=1572293873;
 bh=biN8fJ2uMGyyz8fbexEnv3WMoqxVwKhrBuLCsMYbhxY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ERWkXFoLLRAYGuTCPrmRN41loAmY7fi7MGluys2OUfyuHmF9f/+v307pNfKs2mgnZ
 Ubfn3wSKCVJeb3PHBv/SIiFBHXKHwnEnBTk4IvUNSOa0imlQCicvyxKTJCE82i27OJ
 43ToUixCbbqWriT6XD+fZoVmFTdGib+OZhiaPOGckKtTRFtUCiz6bczdg22c1JZwQa
 I3rc2fWw4D75i9rb3bFLzWo5AMlCyXejI4AO0WvBGhJ/wJpN0fxnOLqbo168Ejnh3X
 Mcg5Xz67BCzA0U9yhtqK7qPHFVLUVRkprto6iomt8chon+sy9j5PG78Wh1uvKFZJZA
 jHSYVRPWmFqxw==
To: openwrt-devel@lists.openwrt.org
References: <20191024115430.19992-1-openwrt.dev@krtzbrtz.org>
 <007d01d58b27$1a730a70$4f591f50$@adrianschmutzler.de>
 <2b2cc133-5d6f-4f60-73c8-f879bfc739aa@krtzbrtz.org>
 <02c001d58da3$9ee856b0$dcb90410$@adrianschmutzler.de>
From: 'Patrick Supper' <openwrt.dev@krtzbrtz.org>
Message-ID: <70a0f9c3-ab80-3317-6c4b-c9a712c8b3b5@krtzbrtz.org>
Date: Mon, 28 Oct 2019 21:17:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <02c001d58da3$9ee856b0$dcb90410$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_131804_268992_1EF87E51 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 FROM_DOMAIN_NOVOWEL    From: domain has series of non-vowel letters
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

>> ### Regarding the cal-data of the pcie-wifi (AR9382):
>> It seems to me it has some kind of EEPROM, from OEM-BootLog:
>> wmac-wifi: "Using Cal data from Flash 0xbfff0000"
> 
> Note that you are currently using art 0x1000, so 0xff1000 inside flash?!
> 

ART-Partition starts at 0xff0000 in flash. Cal-data starts at 0xff1000 
if i got it right.

OEM-Firmware uses OpenWrt but proprietary Atheros-Drivers, to be honest 
i don't know what they really do, but i guess they use a offset of 
0x1000 from start of art for cal-data?

# OEM-Firmware, art (MAC-Addr changed):
/ # hexdump /dev/mtd7
0000000 0030 ab11 20e1 ffff ffff ffff ffff ffff
0000010 ffff ffff ffff ffff ffff ffff ffff ffff
*
0001000 0202 0011 2233 4455 0030 3a62 323a 6463
0001010 ...


>> How shall we proceed with this? Keep the current solution (with the risk
>> that some users maybe end up with wrong MAC-addresses)? Or extend
>> mtd_get_mac_ascii with an option for white-space as a field separator
>> (or create a new function) and set the MAC address in
>> /etc/board.d/02_network + /etc/hotplug.d/firmware/10-ath9k-eeprom?
> 
> Thanks for the extensive answer.
> 
> I'm not 100 % convinced about it, but to me using the strings seems to be the most proper solution in this context.
> 
> I'm a little surprised about your strings output. As I understand it, the separator is determined by the strings function, and not by the data read (I'm not an expert.)?
> 
> Maybe they use some special space characters in the data which can be converted by tr "X" "\n" or some other simple solution?
> 


 From man-page ("normal" strings, not the BusyBox):
"strings prints the printable character sequences that are at least 4 
characters long (or the number given with the options below) and are 
followed by an unprintable character."

In the case of for example u-boot-env the separation between the various 
"key=value" is 0x00, which is "Null" and not a printable character.

In the case of the mib0-partition it uses normal white space (0x20) as 
separator (=printable), that's why mtd_get_mac_ascii does not give the 
expected result.

But it works with replacing the space with newline:
tr ' ' '\n'

What if we set the MAC-Addresses manually in the u-boot-env and take 
them from there? (uboot-env needs to be changed anyway for setting the 
new address for bootm; so at the moment it is just an other step for the 
Install/Flash-Instructions)

Regards,
Patrick

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
