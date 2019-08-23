Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFD89B15A
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6xNkfL3FwpCmDUQQhT1moAt258ZwPBGc2BQGdEYR6C8=; b=Idpo1p0yKDlRjULVMxcKtYtAx2
	wR7DMSXsIpjQjESHSsoggvQRMbsTSt5OipnvxNWmd7cvsprHQnmdFok9ufRLRHYAdZIndf40KWUwM
	eu80mP0w6mlRvQlW63c7ksWGHu6btD0N+zEzD9IJteVyvp17PRGVAFRYxyKOrtJ6fsE6QBoHwAe2c
	7LsrpI8keM9TrtqxnDwuUwJN0YMA9bltRuLykOwyHYI9p/DXKtKag/ccb9CR2FtHuTXLBhmYCDPQH
	GPX5ugqlc74NcsBPtoMsZZhMV6Ut1LSjbGCBWSsDNjrwvTTSdflkFVfznFj5xlGh8iXrwX5axrAni
	bwnk491w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19zD-0008Ns-Ka; Fri, 23 Aug 2019 13:52:15 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19y7-0006dv-8V
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:51:09 +0000
Received: (wp-smtpd smtp.tlen.pl 19608 invoked from network);
 23 Aug 2019 15:51:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566568264; bh=y5wKHeeBOWRq/9HSOJrt3QXoyb7lsFAc0K0SIvTtss8=;
 h=From:To:Subject;
 b=jrw1Uas+HBlP8v2hz2abDaUI7sD774rUP9HWw6MkgCb5/vZBLB5idzZhEICDrAbz5
 SGJz/fC496ARB8KFuIfGzYGC546JY6mZEQYuyU9qoxufACRvsCRqx7o2BnFwf615RB
 rg/B4UDhs2gHQg1EVk2TvtMMN8VWSuIX1FGZg590=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 23 Aug 2019 15:51:04 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 15:50:49 +0200
Message-Id: <20190823135052.2305-5-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823135052.2305-1-tomek_n@o2.pl>
References: <20190823135052.2305-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: b953137fde558c25c381d96bc8592dc9
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [kfPF]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065107_544411_3C57033F 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 4/7] ath79: image: append metadata to
 routerstations and ja76pf2 images
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

This target enforces metadata check so add the necessary information. It
was previously removed because md5 sum check. When using these sysupgrade
images on ar71xx target the check would complain about them not matching.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/image/generic-ubnt.mk | 2 +-
 target/linux/ath79/image/generic.mk      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 6db083861f..3af1f2676e 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -210,7 +210,7 @@ define Device/ubnt_routerstation_common
   IMAGE_SIZE := 16128k
   IMAGES += factory.bin
   IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | check-size $$$$(IMAGE_SIZE)
-  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
 #  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
   KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 45a1baa632..c1cd347baf 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -643,7 +643,7 @@ define Device/jjplus_ja76pf2
   DEVICE_VENDOR := jjPlus
   DEVICE_MODEL := JA76PF2
   DEVICE_PACKAGES += -kmod-ath9k -swconfig -wpad-mini -uboot-envtools fconfig
-  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
 #  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
   KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
