Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8BB14A5DC
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 15:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F+bLhQLXGRRYZI05zMdFoTVs5d5ICxZKQXpK5n/ZZQk=; b=NJz
	pBohaJCfgl/qYz+RnyWpGqNdX1SxwmShuBg2rFB7VaZHllW9xWesnzqv0WUEs80Cv9hLTuPndpQJ/
	cqyE61eI8anpGwl4KhfiJegxl/nMGgG08nxBTcHJNpz2+3kcp3HUvInk0VrzIb6ufeWIER8/W/DYg
	cn3BcQPBLOzYi/NcpbZb2zg933P0orYg4a/+BC6fAefyJhYnoz3yMNEHQihYFrwvyR2PbSB/Vbf0M
	VqvKh1nereWtUVMtAPNDc9Z1LyJvGl2u8/LE3j7PdKA4evGnEjUt/WLEQxmnDNcATGRLBucYxqq9V
	7GOyxXeA5asjnaXk/GDlcf7ymPeEI/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5Bl-0004fC-Uq; Mon, 27 Jan 2020 14:16:30 +0000
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Date: Mon, 27 Jan 2020 15:16:12 +0100
MIME-Version: 1.0
Message-ID: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik RouterBOARD
 922UAGS-5HPacD
Content-Type: multipart/mixed; boundary="===============8124098970887954711=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8124098970887954711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8124098970887954711==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from masdeu.rogerpueyo.com ([5.134.119.116])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5Ba-0004dQ-Op
	for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 14:16:23 +0000
Received: from [147.83.42.157] (dync-42-157.ac.upc.edu [147.83.42.157])
	by masdeu.rogerpueyo.com (Postfix) with ESMTPSA id 984B07D3
	for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 15:16:15 +0100 (CET)
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Subject: ath79: NAND bad eraseblocks in MikroTik RouterBOARD 922UAGS-5HPacD
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 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
Message-ID: <28349c9e-8c0d-325c-0b60-82d2088f895f@guifi.net>
Date: Mon, 27 Jan 2020 15:16:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_061621_141462_D3633879 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)

Hi,

I'm working on porting a second MikroTik device, the RouterBOARD
922UAGS-5HPacD, from ar71xx to ath79 and I'm having trouble with the
NAND storage. The chip is detected, but bad eraseblocks are reported
when booting an initramfs image via TFTP (haven't tried sysupgrade yet):

[=C2=A0=C2=A0=C2=A0 0.791848] Creating 4 MTD partitions on "spi0.0":
[=C2=A0=C2=A0=C2=A0 0.796717] 0x000000000000-0x00000000c000 : "routerboot=
"
[=C2=A0=C2=A0=C2=A0 0.802857] 0x00000000c000-0x00000000d000 : "art"
[=C2=A0=C2=A0=C2=A0 0.808379] 0x00000000d000-0x00000000e000 : "bios"
[=C2=A0=C2=A0=C2=A0 0.813924] 0x00000000e000-0x00000000f000 : "soft_confi=
g"
[=C2=A0=C2=A0=C2=A0 0.823549] nand: device found, Manufacturer ID: 0xec, =
Chip ID: 0xf1
[=C2=A0=C2=A0=C2=A0 0.830034] nand: Samsung NAND 128MiB 3,3V 8-bit
[=C2=A0=C2=A0=C2=A0 0.834717] nand: 128 MiB, SLC, erase size: 128 KiB, pa=
ge size: 2048,
OOB size: 64
[=C2=A0=C2=A0=C2=A0 0.842435] Scanning device for bad blocks
[=C2=A0=C2=A0=C2=A0 0.846909] Bad eraseblock 2 at 0x000000040000
[=C2=A0=C2=A0=C2=A0 0.851500] Bad eraseblock 3 at 0x000000060000
=C2=A0=C2=A0=C2=A0 [...] eraseblocks continue on all blocks, from 4 to 15=

[=C2=A0=C2=A0=C2=A0 0.911492] Bad eraseblock 16 at 0x000000200000
[=C2=A0=C2=A0=C2=A0 1.036624] 3 fixed-partitions partitions found on MTD =
device ar934x-nand
[=C2=A0=C2=A0=C2=A0 1.043531] Creating 3 MTD partitions on "ar934x-nand":=

[=C2=A0=C2=A0=C2=A0 1.048844] 0x000000000000-0x000000040000 : "booter"
[=C2=A0=C2=A0=C2=A0 1.054605] 0x000000040000-0x000000400000 : "kernel"
[=C2=A0=C2=A0=C2=A0 1.060369] 0x000000400000-0x000000800000 : "ubi"
[=C2=A0=C2=A0=C2=A0 1.477206] UBI error: unable to read from mtd6

The current 19.07.0 or snapshot ar71xx initramfs images do not complain
about any bad eraseblocks, and can properly managa the UBI fs at mtd6:

[=C2=A0=C2=A0=C2=A0 3.402365] nand: device found, Manufacturer ID: 0xec, =
Chip ID: 0xf1
[=C2=A0=C2=A0=C2=A0 3.408818] nand: Samsung NAND 128MiB 3,3V 8-bit
[=C2=A0=C2=A0=C2=A0 3.413534] nand: 128 MiB, SLC, erase size: 128 KiB, pa=
ge size: 2048,
OOB size: 64
[=C2=A0=C2=A0=C2=A0 3.421239] Scanning device for bad blocks
[=C2=A0=C2=A0=C2=A0 3.579454] Creating 3 MTD partitions on "ar934x-nfc":
[=C2=A0=C2=A0=C2=A0 3.584716] 0x000000000000-0x000000040000 : "booter"
[=C2=A0=C2=A0=C2=A0 3.607604] 0x000000040000-0x000000400000 : "kernel"
[=C2=A0=C2=A0=C2=A0 3.630593] 0x000000400000-0x000008000000 : "ubi"

It looks like the NAND chip is correctly detected, but I don't know what
I'm missing that causes the [wrong] bad eraseblocks to appear. Any
suggestions? The tree with the commit adding support is at
https://github.com/rogerpueyo/openwrt/tree/ath79-mikrotik-rb-922uags-5hpa=
cd_badblocks

Thanks!

Roger




--===============8124098970887954711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8124098970887954711==--
