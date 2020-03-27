Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57828195F7A
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 21:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IBicalEYNV/OeysXtktmeAAIoQoWc/JYYNrUK9v3E6o=; b=o39vKRy7GmUeuZ
	Q1b/Mw+Zg2CdApsHgX+jdeB8oTV1pkKuoZdUo2fpcbBQeUNgRgGGKQI00ezPccWhNgx3DpwpSoPNH
	RVsgJdpT3qbU+F0BdiKzyExVoHwoUy+7g/Vh4EAMsg03eNYLLDCAlnW0twlE+LV6PGX16cKzvPiqC
	4IQTu5LqSLY4kWRebTTrJIZ/mq8plm5HbBkGGAngBnWQUrT2MPLomAXSIQ4NnluCIqefXM5B+RoSs
	5iAuKSnc3um8CVf6B0leRKePb57b4cxxu6IP7UP9kcGuuNjtOkNKnV60sb4gc8Gn6nb40CsCjxiPL
	JXQ06umGQEzEvZIAKm0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHvQP-0006F3-EU; Fri, 27 Mar 2020 20:17:53 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHvQH-0006EV-J9
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 20:17:47 +0000
Received: (wp-smtpd smtp.wp.pl 31548 invoked from network);
 27 Mar 2020 21:17:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1585340260; bh=mpv56ADPHAH0lV9zzt87zXFGX6P+rMggMcKbUgDSe+Q=;
 h=From:To:Cc:Subject;
 b=txg42/rKEIiqYxAaZt0s1pEcEaLDsDIywg8k0Ve3GK3IG8eoScJCdHvjVjHJa2du/
 vsH4k2trXS9wzAANv0BjMjQLJpj/JQNvBodbUFuHreHlq0RJaE8d4rHeDNp17VA00o
 X/HQgZgbzfcfpZyNkomfOM33lkuGLNdDO9v/siWM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 27 Mar 2020 21:17:40 +0100
Date: Fri, 27 Mar 2020 21:15:00 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200327211500.30fe7f6a@kosmio.komorska>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 2066c6f8b0d6888fe38fed6951672121
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [4ZPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_131746_132636_5548C5E3 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] kernel: generic: 5.4: fix mtd concat panic
 on read/write functions
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
Cc: David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Commit 2431c4f5b46c32c4ac495456b1ef4ce59c0bb85d ("mtd: Implement
mtd_{read,write}() as wrappers around mtd_{read,write}_oob()") for kernel 5.4
restrict mtd devices to register only one type of read/write functions
(either generic or OOB).

mtd concat does not follow above rule and defines both methods at the same
time, causing this type of device to be rejected by kernel. For routers that
use mtd concat for root UBI volume that means kernel panic and boot loop with
following error:

[    0.767307] Creating 1 MTD partitions on "ubi-concat":
[    0.772547] 0x000000000000-0x000007500000 : "ubi"
[    0.777953] ------------[ cut here ]------------
[    0.782683] WARNING: CPU: 0 PID: 1 at drivers/mtd/mtdcore.c:621 add_mtd_device+0x84/0x5f4
[    0.790983] Modules linked in:
[    0.794093] CPU: 0 PID: 1 Comm: swapper Not tainted 5.4.24 #0
[    0.799932] Stack : 80680000 8062af20 00000000 00000000 8062a0f0 87c2dae4 87c282fc 8065fd23
[    0.808430]         805c64f4 00000001 807b32d8 80670000 80670000 00000001 87c2da98 25c15bcb
[    0.816909]         00000000 00000000 807e0000 0000006e 61696e74 00000000 2e342e32 34202330
[    0.825397]         0000006e cef2ada7 00000000 000c1ded 00000000 00000009 00000000 8034de64
[    0.833889]         00000009 80670000 80670000 80676d18 00000000 80320044 00000000 807b0000
[    0.842381]         ...
[    0.844861] Call Trace:
[    0.847367] [<80069994>] show_stack+0x30/0x100
[    0.851913] [<8007e8ac>] __warn+0xc0/0x10c
[    0.856072] [<8007e954>] warn_slowpath_fmt+0x5c/0xac
[    0.861134] [<8034de64>] add_mtd_device+0x84/0x5f4
[    0.866001] [<80352a50>] add_mtd_partitions+0xd8/0x1b8
[    0.871231] [<803527b8>] parse_mtd_partitions+0x238/0x3f8
[    0.876717] [<8034e51c>] mtd_device_parse_register+0x48/0x1b0
[    0.882586] [<8038dd2c>] virt_concat_probe+0x170/0x1ec
[    0.887820] [<803334c8>] platform_drv_probe+0x40/0x94
[    0.892970] [<80331638>] really_probe+0x104/0x35c
[    0.897766] [<80331d54>] device_driver_attach+0x70/0x98
[    0.903072] [<80331ddc>] __driver_attach+0x60/0x100
[    0.908042] [<8032f668>] bus_for_each_dev+0x68/0xa4
[    0.912989] [<803309d4>] bus_add_driver+0x1f0/0x200
[    0.917952] [<80332448>] driver_register+0x84/0x148
[    0.922906] [<80060a1c>] do_one_initcall+0x7c/0x1dc
[    0.927870] [<80684e14>] kernel_init_freeable+0x158/0x23c
[    0.933361] [<805387d8>] kernel_init+0x10/0xf0
[    0.937883] [<80064dd8>] ret_from_kernel_thread+0x14/0x1c
[    0.943375] ---[ end trace 62e0927fba490f68 ]---
[...]
[    2.266513] Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
[    2.274893] Rebooting in 1 seconds..

This patch makes mtd concat to follow new mtd requirements by registering
either normal or oob versions of read/write functions, but not both at the
same time. OOB is used only when underlying mtd devices provide such
functionality (like NAND chips) - otherwise generic methods are used.

Tested successfully on Netgear WNDR4300.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 ...-mtdconcat-select-readwrite-function.patch | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 target/linux/generic/pending-5.4/498-mtd-mtdconcat-select-readwrite-function.patch

diff --git a/target/linux/generic/pending-5.4/498-mtd-mtdconcat-select-readwrite-function.patch b/target/linux/generic/pending-5.4/498-mtd-mtdconcat-select-readwrite-function.patch
new file mode 100644
index 0000000000..129bbffd0f
--- /dev/null
+++ b/target/linux/generic/pending-5.4/498-mtd-mtdconcat-select-readwrite-function.patch
@@ -0,0 +1,24 @@
+--- a/drivers/mtd/mtdconcat.c
++++ b/drivers/mtd/mtdconcat.c
+@@ -642,8 +642,12 @@ struct mtd_info *mtd_concat_create(struc
+ 		concat->mtd._writev = concat_writev;
+ 	if (subdev[0]->_read_oob)
+ 		concat->mtd._read_oob = concat_read_oob;
++	else
++		concat->mtd._read = concat_read;
+ 	if (subdev[0]->_write_oob)
+ 		concat->mtd._write_oob = concat_write_oob;
++	else
++		concat->mtd._write = concat_write;
+ 	if (subdev[0]->_block_isbad)
+ 		concat->mtd._block_isbad = concat_block_isbad;
+ 	if (subdev[0]->_block_markbad)
+@@ -701,8 +705,6 @@ struct mtd_info *mtd_concat_create(struc
+ 	concat->mtd.name = name;
+ 
+ 	concat->mtd._erase = concat_erase;
+-	concat->mtd._read = concat_read;
+-	concat->mtd._write = concat_write;
+ 	concat->mtd._sync = concat_sync;
+ 	concat->mtd._lock = concat_lock;
+ 	concat->mtd._unlock = concat_unlock;
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
