Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83B3ABBAD
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 17:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ggAACFfHsaI1On6Lizq6h6ZEjuhTZPttJEN7dUA1B64=; b=QK9q691FMf7kje2az7bRePLb5U
	fNWmmPk7EK4ctu5l67yJzPnm7n20nfRqrymmF84KUtUS9bat0yfVoSEiNdWFJBgZrm1/SUOKW5kT5
	wrYe+XE98ho8QLibUx8BNOLdYDW8qhB2RI81Jsm9ZG1sVqINMwyBg11raQlsvRAnHKRv+7PX3zo4Y
	9hCUKp/Qe6H0+mtEjjMIumt2aX1vBhmYobUOSD2Y9SO/sMAveStCVVolRSu5edg01xjWsfnxB1kTo
	ixrITMrtni12V6SMFkOXX1xjOlNIQT9kA00WSD5nojObn1Hy13N2wTmbR4Tq+TJv8uglwasH5eE3Y
	rOOGZaSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fjw-0003Cm-Tt; Fri, 06 Sep 2019 15:01:32 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fjm-0003BG-Hd
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 15:01:24 +0000
Received: (wp-smtpd smtp.tlen.pl 28723 invoked from network);
 6 Sep 2019 17:01:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1567782077; bh=udUfa1eEIn2nXWxOSp9SChg5/zWKCOUtgF4YhmP5XpI=;
 h=From:To:Subject;
 b=fxV/Pg9MlslVkoB4CxTCsbvLRqygtHg+E3zNNe1P6Y/B6vt7oh1HvJtj0r6DoZ63k
 6U1C2xfQHmaQI3GsRZr0XfGoQjGlGayARmr250MEIBIJqZneZFSkloE8pwrtSSzi6h
 W3VIjN6PjcGP7l7j0jgua+cwsv8Nk/Yd8f51BgpQ=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Sep 2019 17:01:17 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 17:01:07 +0200
Message-Id: <20190906150108.31098-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906150108.31098-1-tomek_n@o2.pl>
References: <20190906150108.31098-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 7911b3f008727dd0c7e46e3a1b698191
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [kaNF]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080122_908043_F5859546 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/4 openwrt-19.07] ath79: image: append
 metadata to routerstations and ja76pf2 images
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
(cherry picked from commit 077d06a1a5a23caae4d0c53afb60913955d2a3ea)
---
 target/linux/ath79/image/generic-ubnt.mk | 2 +-
 target/linux/ath79/image/generic.mk      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index b189d66770..f9f74d0f51 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -205,7 +205,7 @@ define Device/ubnt_routerstation_common
   IMAGE_SIZE := 16128k
   IMAGES += factory.bin
   IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | check-size $$$$(IMAGE_SIZE)
-  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
 #  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
   KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 4bfdd69d6d..a2b82cbf7f 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -474,7 +474,7 @@ define Device/jjplus_ja76pf2
   ATH_SOC := ar7161
   DEVICE_TITLE := jjPlus JA76PF2
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
