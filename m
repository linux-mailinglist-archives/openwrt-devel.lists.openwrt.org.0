Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8161056F5
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:24:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLAvffqSjSd0mx9YBWRxkaMZ2MQQFdron9jgQpjB0mc=; b=mbBbSclSzAhpjk
	2oNhsS6iES75Q7qkPIpH5PicHbfBlNDDs7qbwniOGj2WzLv08yHYXxs4Nhq5ZyqY6uKlPs14wspra
	LbABdDMd3Qk7WKQPAaIaXbx5x3rzUpNWmtUm9TNiWST+7JOGeXsmLfmKMGrA11U59/LIF4BBuk6W6
	itBatIzCwRyzYrEVBHmSiAYqB5f54cTmJTLWOBp0Yn1MEjYO1W4jw7bYNQWt0VTQQG7dElN7/UHgU
	XhMrZC83Sb6TDQu6L97ukZV2D+w3iec0MXG0uf+SzWvj7rrX2OKMPuRzLbUXkbhESSZ09ekrFPbEZ
	gzPu9W087HdM4yOW1sdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpG0-0003XZ-0a; Thu, 21 Nov 2019 16:24:36 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF2-0002nJ-J6
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:38 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4866F1BF211;
 Thu, 21 Nov 2019 16:23:32 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:22 +0100
Message-Id: <20191121162322.671035-13-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082336_769431_2E36F3A2 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 12/12] target/linux/mvebu: generate a FIT
 image on Armada XP GP with dm-verity
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When a dm-verity capable is selected, the user will most likely need
the U-Boot script that contains the various dm-verity related
configuration details, needed by U-Boot to build the kernel command
line with the appropriate dm="..." argument.

Therefore, for the Marvell Armada XP GP platform, make sure a FIT
image containing the dm-verity related U-Boot script is produced when
CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED is enabled.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 target/linux/mvebu/image/cortex-a9.mk | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index cf70031b99..1d3d37e987 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -142,6 +142,19 @@ define Device/marvell_axp-db
 endef
 TARGET_DEVICES += marvell_axp-db
 
+ifeq ($(CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED),y)
+define Device/armada-xp-gp/kernel
+	ITS_UBOOT_SCRIPT := $(KDIR)/root.squashfs-hashed-dm-verity-uboot-script.txt
+	KERNEL := kernel-bin | append-dtb | fit none
+	KERNEL_SIZE := 4096k
+endef
+else
+define Device/armada-xp-gp/kernel
+	KERNEL := kernel-bin | append-dtb | uImage none
+	KERNEL_SIZE := 4096k
+endef
+endif
+
 define Device/marvell_axp-gp
   $(Device/NAND-512K)
   DEVICE_VENDOR := Marvell
@@ -149,6 +162,7 @@ define Device/marvell_axp-gp
   DEVICE_DTS := armada-xp-gp
   SUPPORTED_DEVICES += armada-xp-gp
   IMAGES += factory.img
+  $(Device/armada-xp-gp/kernel)
 endef
 TARGET_DEVICES += marvell_axp-gp
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
