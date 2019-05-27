Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE1D2B5B1
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 14:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wUesAA+7M/X5reuL5cLBwIl6dZ8+cRTK3Ev++cTV5Fo=; b=l8Hpcfao/vStBLlOhOP5WjqB3Y
	FVBXMie0X89+7qNh7bCMP4+cXoGAfyfXKKNlo1lvdOnfAyteTlxGGQaX+a9IYWtasa4Y/F8HbYoeM
	hHCNZEKpyLi0CwSVfnK7YKuoafNnWtBOndVouWuojAS4asRUZ3d5Ka9SGBwK5ZO4pXx8wKa4IcHRa
	BJmsru9VAW+7xs03nqGb3LtV0wHvw/le7hA92MGsjHr/bE3X6ajaYlkaT0MbE8kfpm9LCvDPad2ML
	KzO4fnOCNax1cb3rEbj5IQovZLQFO5L5SH5IOmaNsSfN3VRLa9/0M1av5Vf2pEn2BqwGN06nmuabB
	ZUwjI//g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVF20-0003w8-7D; Mon, 27 May 2019 12:47:12 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVF1Y-0003V9-0y
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 12:46:46 +0000
Received: (wp-smtpd smtp.tlen.pl 16276 invoked from network);
 27 May 2019 14:46:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1558961201; bh=ZnFR+bLhRgbc2tzFihJw5fTuXAA5T3mZpNRimj0atjI=;
 h=From:To:Subject;
 b=mUHKB/NX3mxz3fyCo/Yoow76nlXlscvfkB2GBJ2BDrWyiRS/s0fLDE91wfdXROqPL
 a7T49ZKuS1/eYPFxvw+wGqRM+NVfHcYr+UQgqCakTueu/nam85fF5hYQG6pFGljRg7
 T9cSpURLu8c0eEb7PunHgee45jpXyCflNl0Kbbv0=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 27 May 2019 14:46:40 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 14:46:30 +0200
Message-Id: <20190527124630.5042-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527124630.5042-1-tomek_n@o2.pl>
References: <20190527124630.5042-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 93ea97db71be6b3fb133b22d246be1ee
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [AfPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054644_310622_6C7991B7 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 3/3] x86: add preinit hook for bootloader
 upgrade
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

The current OpenWrt installations lack the necessary bits to upgrade
bootloader on sysupgrade, therefore add preinit hook which will perform
upgrade of the bootloader on first boot after sysupgrade.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 .../lib/preinit/81_upgrade_bootloader         | 19 +++++++++++++++++++
 .../x86/base-files/lib/upgrade/platform.sh    |  3 ++-
 2 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader

diff --git a/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader b/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader
new file mode 100644
index 0000000000..3a4e756b1e
--- /dev/null
+++ b/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+upgrade_bootloader() {
+	local diskdev
+
+	. /lib/upgrade/common.sh
+
+	if [ ! -f /boot/grub/upgraded ] && export_bootdevice && export_partdevice diskdev 0; then
+		echo "(hd0) /dev/$diskdev" > /tmp/device.map
+		/usr/sbin/grub-bios-setup \
+			-m "/tmp/device.map" \
+			-d "/boot/grub" \
+			-r "hd0,msdos1" \
+			"/dev/$diskdev" \
+		&& touch /boot/grub/upgraded
+	fi
+}
+
+[ "$INITRAMFS" = "1" ] || boot_hook_add preinit_main upgrade_bootloader
diff --git a/target/linux/x86/base-files/lib/upgrade/platform.sh b/target/linux/x86/base-files/lib/upgrade/platform.sh
index 1a42fd3a11..05bbd97f3b 100644
--- a/target/linux/x86/base-files/lib/upgrade/platform.sh
+++ b/target/linux/x86/base-files/lib/upgrade/platform.sh
@@ -106,7 +106,8 @@ platform_do_upgrade() {
 			-m "/tmp/device.map" \
 			-d "/tmp/boot/boot/grub" \
 			-r "hd0,msdos1" \
-			"/dev/$diskdev"
+			"/dev/$diskdev" \
+		&& touch /boot/grub/upgraded
 
 		umount /tmp/boot
 	fi
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
