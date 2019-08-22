Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1199F4A
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 21:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lz3YpkQvaMwG8RBk4yr0hthjJk5xcM16xkcXGBAtFg0=; b=J2wWC0lKnTo69I5yB0Wa3KpfsG
	tcEf+Mp+LKdlc0sNGjdn+efSvuNuL2JvLzoXnK/tjGmwsVkeNr7hpoFRXYBSE9r6IwS81LXHEzCiB
	wrfefTsMdYObDNCZFWj59VEvc5Vc9pi918QAR2bj/8rAbljmVeuRhcetGKeVXTIgo0JrPKeqqDKuc
	UMK/CMYBtDZrFki9TR9Jgr/9TLu9EdUA+HxblHgN9OltCy+/IlZcyJHhc8Wk5RYLNF5AF2N3/Fhom
	oy0BsdNud2h41kDym1GtLrEIF6w9H+fSMJlOv0zJ/ira6FQ45I6IhOlm0AaGjV7C4EMJNA/ilGHHx
	u/cCAMNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sJp-0002GN-Ej; Thu, 22 Aug 2019 19:00:21 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sIv-0001YS-RA
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 18:59:27 +0000
Received: (wp-smtpd smtp.tlen.pl 30243 invoked from network);
 22 Aug 2019 20:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566500363; bh=PkhURra1KW2nP1OmMFB49P84bKwIWD+ZgMMhQXwib4k=;
 h=From:To:Subject;
 b=OvgOd59I9pMLFxKICQir7R9V+n1CL7mY+3WOmQATncMBYTeVaQ3C+QrHvVLi7jQkn
 iBFCKVcBtYiLIVFienO49JfzMk5wjxZTo7sSG+NkIUc749t9pYjI/SolE0EUckRDpl
 SH/MzUB7mniYKtuXyB/Sf4SKliRfVn6upk5kSQBM=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Aug 2019 20:59:23 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 20:59:10 +0200
Message-Id: <20190822185911.12336-7-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190822185911.12336-1-tomek_n@o2.pl>
References: <20190822185911.12336-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 7c7c8fd25e1af1707ca8363a69589986
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EfPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_115926_058015_5C90F222 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 6/7] ath79: fix FIS partition detection for
 4.19 kernel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When bumping to 4.19 the patch responsible for scaning flash for FIS
partition got left out. Without it devices with RedBoot bootloader using
automatic partitions detection in dts won't boot with the new kernel.

Fixes: 3771176 ("ath79: add support for linux 4.19")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 .../408-mtd-redboot_partition_scan.patch      | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 target/linux/ath79/patches-4.19/408-mtd-redboot_partition_scan.patch

diff --git a/target/linux/ath79/patches-4.19/408-mtd-redboot_partition_scan.patch b/target/linux/ath79/patches-4.19/408-mtd-redboot_partition_scan.patch
new file mode 100644
index 0000000000..cd41e7ceb2
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/408-mtd-redboot_partition_scan.patch
@@ -0,0 +1,44 @@
+--- a/drivers/mtd/redboot.c
++++ b/drivers/mtd/redboot.c
+@@ -76,12 +76,18 @@ static int parse_redboot_partitions(stru
+ 	static char nullstring[] = "unallocated";
+ #endif
+ 
++	buf = vmalloc(master->erasesize);
++	if (!buf)
++		return -ENOMEM;
++
++ restart:
+ 	if ( directory < 0 ) {
+ 		offset = master->size + directory * master->erasesize;
+ 		while (mtd_block_isbad(master, offset)) {
+ 			if (!offset) {
+ 			nogood:
+ 				printk(KERN_NOTICE "Failed to find a non-bad block to check for RedBoot partition table\n");
++				vfree(buf);
+ 				return -EIO;
+ 			}
+ 			offset -= master->erasesize;
+@@ -94,10 +100,6 @@ static int parse_redboot_partitions(stru
+ 				goto nogood;
+ 		}
+ 	}
+-	buf = vmalloc(master->erasesize);
+-
+-	if (!buf)
+-		return -ENOMEM;
+ 
+ 	printk(KERN_NOTICE "Searching for RedBoot partition table in %s at offset 0x%lx\n",
+ 	       master->name, offset);
+@@ -170,6 +172,11 @@ static int parse_redboot_partitions(stru
+ 	}
+ 	if (i == numslots) {
+ 		/* Didn't find it */
++		if (offset + master->erasesize < master->size) {
++			/* not at the end of the flash yet, maybe next block :) */
++			directory++;
++			goto restart;
++		}
+ 		printk(KERN_NOTICE "No RedBoot partition table detected in %s\n",
+ 		       master->name);
+ 		ret = 0;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
