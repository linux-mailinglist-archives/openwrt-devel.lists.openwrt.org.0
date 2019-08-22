Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284A999F4E
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 21:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9G1e48GkR2loBmtQgqWxXX1h4fHIYkNTZRyydkoajk=; b=PzmH31cfrrHTsc
	VRKh7TkXcMU3OLLGS9s0MBx293jH8VobDMwai+VNWMH2Tk7U+lzr6iWF1vLIxYNPzbz4YhfJWcM3R
	ShxAM1BIOrCBxSxjluxzG+jsvPoQTmy5OOs5OiYU1/5dmM/Met2Gauj+6Nmz/elxkENlJMszMXjoX
	Eq1D6W4kjoJcwk4+JmYPG62X0/tKrZ0l8pyAJazEvZh9y6LM0yfk0TB9ED6P7SiNGlPvE5I17Uazp
	q5WmfaJak3DIb2pG0pj5L71nxz50pd3jVgm0Cowd1dlHucBDO/ykmCh9wqGMUeZLtrfMSbTIus0AJ
	Mug445U863o2Ae8xwB2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sL2-0004rP-60; Thu, 22 Aug 2019 19:01:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sJa-0002uY-VP
 for openwrt-devel@bombadil.infradead.org; Thu, 22 Aug 2019 19:00:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8v5OEq6XzmFpRNTGiFPhfU04nAIxPVRY8lSLa8MsdQ4=; b=RFANiXIT6QBHlJINZcpeROmLZa
 B1lS5hycZypf/wi1IniQjlGx7DIh043DFfcGB0WXHbLBeoz0qyFzJYd3QFwD/PloNyXfqItxfBK5J
 2KxerAgxHtREeOdfPfm8QFqZYAV8hm5+VkEPmWjOpo6bocmrOUGUumrFNPRl4ZJMoJFF2SgZwaqkJ
 XOgFntO5JEJ6JrCWRg+JbssnEPEHNNL3CqBz+MPzKQjMXoCna2VqGRU8otRolJrIEkbnBt9P+K4dG
 xTgNQxGiORDjQT7tPB62m2QudibVrTncJ5tFvR4aMJ4jGfQgkX1RQvqg6jSmeO3/GVy19xN8yX1TV
 HuLLlb5g==;
Received: from mx-out.tlen.pl ([193.222.135.148])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sJr-0004Mf-SA
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 19:00:25 +0000
Received: (wp-smtpd smtp.tlen.pl 31231 invoked from network);
 22 Aug 2019 20:59:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566500364; bh=8v5OEq6XzmFpRNTGiFPhfU04nAIxPVRY8lSLa8MsdQ4=;
 h=From:To:Cc:Subject;
 b=epikcDBYgS7drpgGrSZjp463YbeTqmTnbCkyVjrrkxdwqrKv+hUsxVBmHliWnU06b
 8VbhhfnksSS4QEZX9CFuBiEtqNUBsV9zt6F5qSnKCc5bpIf/EF5wyjiAh4ap5DEMjA
 ujT4s95TAXbO+Ycu+jk2HKq1ph49X8NDAYvjiqNk=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Aug 2019 20:59:24 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 20:59:11 +0200
Message-Id: <20190822185911.12336-8-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190822185911.12336-1-tomek_n@o2.pl>
References: <20190822185911.12336-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 8c307d83282cdb0ccf13347f66d8d70d
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [cXPl]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_200024_001350_CD60E66C 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 7/7] ath79: image: disable sysupgrade images
 for routerstations and ja76pf2
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
Cc: Matt Merhar <mattmerhar@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Because a bug in handling partial erase blocks in 4.19 kernel, using
sysupgrade images will hard brick devices that use RedBoot bootloader
and have "FIS directory" with "RedBoot config" on the same erase block.
Since flashing the devices from bootloader is safe, and to not cause a
situation where external chip programmer or JTAG is needed, disable
sysupgrade images for affected boards while creating kernel.bin and
rootfs.bin for jjPlus JA76PF2 board, which doesn't have factory image.

To set up the JA76PF2 board follow "Installation" instructions in b3a0c97
("ath79: add support for jjPlus JA76PF2") except the part of loading
initramfs image and using sysupgrade image for flashing (point 6 and 7).
Enter following commands to flash the board from bootloader:
  fis init
  load -r -b 0x80060000 <openwrt_kernel_image_name>
  fis create linux
  load -r -b %{FREEMEMLO} <openwrt_rootfs_image_name>
  fis create rootfs
  fis load -l linux
  exec -c ""

For RouterStations use TFTP recovery procedure.

Ref: FS#2428
Cc: Matt Merhar <mattmerhar@protonmail.com>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/image/generic-ubnt.mk | 2 +-
 target/linux/ath79/image/generic.mk      | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index c696aac3a8..fd61261193 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -208,7 +208,7 @@ define Device/ubnt_routerstation_common
   DEVICE_VENDOR := Ubiquiti
   ATH_SOC := ar7161
   IMAGE_SIZE := 16128k
-  IMAGES += factory.bin
+  IMAGES := factory.bin
   IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | check-size $$$$(IMAGE_SIZE)
   IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
 #  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index b4e709de3e..437265a707 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -643,6 +643,9 @@ define Device/jjplus_ja76pf2
   DEVICE_VENDOR := jjPlus
   DEVICE_MODEL := JA76PF2
   DEVICE_PACKAGES += -kmod-ath9k -swconfig -wpad-mini -uboot-envtools fconfig
+  IMAGES := kernel.bin rootfs.bin
+  IMAGE/kernel.bin := append-kernel
+  IMAGE/rootfs.bin := append-rootfs | pad-rootfs
   IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
 #  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
   KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
