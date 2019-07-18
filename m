Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02506CEE6
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 15:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KMIRr9HHt3jMjO9QzAJCwAOGum9C8CVTqmQVYa86PAI=; b=XYUMyhez+4tpLULxqnisv7Szni
	cHH66XhTIukytiM56pP1xsKANU7PudDX30K4TitiIBzO4PHVa/JxMIbx9tTlx4A122Kp9bAhgtUA6
	iZxVWholLsz+2THXTEyotkhN1ZUMNMmjfaXOji3hZvccolbtf3SngeORX9K8LPPNgIhycYVSo1iHf
	BLtn20lMvF3xNV94P5LVmVCPbxRcfe1Yfv7MkcjwFRjujaPsRh6103b3s88avzDrwQ92cVzRcPxfH
	v80/Q1OQe+TISjjFc5usT7PA+60MKki/NJ7VwOKg/bIDq3t81igpBdj+SVkFP8BHTi42R1+ib/oVM
	K+Ac9OCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6Wl-00060a-Fj; Thu, 18 Jul 2019 13:32:55 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Vj-0005Vk-1m
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 13:31:54 +0000
Received: (wp-smtpd smtp.tlen.pl 12833 invoked from network);
 18 Jul 2019 15:31:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1563456708; bh=H6ML98cVCB8kaWO3SvXHBLTtRejJMioQMxrpaOLZQOY=;
 h=From:To:Subject;
 b=dbOTXd+xDPc4P/gq47SAiN+HxB13x8njp/Zy2nCKyv0O/u2gJmhKTGh2wvgawqLsc
 KGLJxtWVqEDTbNKdXjKyI+HSJzm0DpzyhpG0NoS6Noffs3gnJdsoQpXuc93ulkdzmp
 24vZaTGIR8rqJN4dsmz2sbRwggVxLh7pLVVvMb3s=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Jul 2019 15:31:47 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 15:31:35 +0200
Message-Id: <20190718133135.6474-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718133135.6474-1-tomek_n@o2.pl>
References: <20190718133135.6474-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 1939a3772e55270c698ce751b1ec816b
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [MeNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063151_251922_70AF4B7C 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 3/3] x86: add preinit hook for bootloader
 upgrade
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

This commit fills the void for current OpenWrt installations which will be
still on old bootloader version even after "x86: add bootloader upgrade on
sysupgrade", since it performs bootloader upgrade only on sysupgrade.
To keep all OpenWrt deployments on the same GRUB version add preinit hook,
which will perform upgrade of the bootloader on first boot after
sysupgrade.
It's temporary solution and should be deleted when the first release
including this hook will no longer be supported by OpenWrt team, because
we can assume that all installations should have sysupgrade routine for
bootloader upgrade in place.

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
index 2112e6479d..0ac485199b 100644
--- a/target/linux/x86/base-files/lib/upgrade/platform.sh
+++ b/target/linux/x86/base-files/lib/upgrade/platform.sh
@@ -60,7 +60,8 @@ platform_do_bootloader_upgrade() {
 			-m "/tmp/device.map" \
 			-d "/tmp/boot/boot/grub" \
 			-r "hd0,msdos1" \
-			"/dev/$diskdev"
+			"/dev/$diskdev" \
+		&& touch /boot/grub/upgraded
 
 		umount /tmp/boot
 	fi
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
