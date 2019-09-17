Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C574B503F
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 16:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/e4F4GjUswSJhsoS+/gpjAIGR0B7T/Pcsq2T8GSM7Yo=; b=LRYPG9HDGrELcf
	ufnpoSmjirSamkmqZiF4yAuRwuMbEpFBR+DyC0xcf0ABO5Yzz9fk7Z7oruTeO0BMzSW75DIu9U8mD
	XuNvOrQ1trqn31NEkWSXaE/WNkJ9BDed9JYu1pXM1zuuB+oWtbDSiqM6KCGTuRJ8qWdyWyIWPcmF2
	lP2LhDyyC/hxfN47CF8N8CdTMPdij/FDdaWtA4+GjKhA+UcxbgWdYpNSBbLPa8brjrkFZ2fiUXp50
	L1snorOLNOOjLdAG4wZDbvJb5QacKdT0V/Z3cChlCrEq3wawquIwIoLAkyFMaKiZTGDqPB2FnJuDK
	suAhlXj2PNsj9j85TrWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEMz-000076-Hk; Tue, 17 Sep 2019 14:22:17 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEMp-00006V-Ix
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 14:22:09 +0000
Received: (wp-smtpd smtp.tlen.pl 22684 invoked from network);
 17 Sep 2019 16:21:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1568730119; bh=zBIL2hdW0Tuew6FL/K3ZxIu/D4SmVcaqmHwbK51OLn0=;
 h=From:To:Cc:Subject;
 b=n570xZHtWS1GsKbxUTXkj21BSHSorFBEYmDrEJ8wRLqKosN3KVxF9v69TRnlk7Ehs
 A5n+30KmN6UdJOmch8j0oCgsB9dgL1EARvYtfFNqWSpGmu08mu3aOTyQYbL8WgHIIi
 nJ9tbxWfNc0nigqsmvGHFvuAwRVmDukTmaxZunjY=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 17 Sep 2019 16:21:59 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 16:21:51 +0200
Message-Id: <20190917142151.7281-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-WP-MailID: bd8b8d0f524ffd079e396ff5b3e64883
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [0dId]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_072207_950218_5B1A60DD 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: image: pad kernel for
 Adtran/Bluesocket devices
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
Cc: Brian Gonyer <bgonyer@gmail.com>,
 Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It has been reported that using the sysupgrade-tar image will trigger
"lzma_decode failed error". The RedBoot bootloader always loads data
from flash till block size boundary, so if there's no padding it'll also
load the beginning of rootfs, and it seems that lzma_decoder can't handle
that garbage data. Previously the script creating combined-image
silently padded the kernel and rootfs, but since sysupgrade-tar doesn't,
pad the default kernel image.

Fixes: 900330f ("ath79: image: retire combined-image for Adtran/Bluesocket
devices")
Cc: Brian Gonyer <bgonyer@gmail.com>
Cc: Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/image/generic.mk | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index dffb4bf577..4e824e7d6d 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -102,11 +102,11 @@ define Device/adtran_bsap1880
   ATH_SOC := ar7161
   DEVICE_VENDOR := Adtran/Bluesocket
   DEVICE_PACKAGES += -swconfig -uboot-envtools fconfig
-  KERNEL := kernel-bin | append-dtb | lzma
+  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
   IMAGE_SIZE := 11200k
   IMAGES += kernel.bin rootfs.bin
-  IMAGE/kernel.bin := append-kernel | pad-to $$$$(BLOCKSIZE)
+  IMAGE/kernel.bin := append-kernel
   IMAGE/rootfs.bin := append-rootfs | pad-rootfs
   IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
 endef
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
