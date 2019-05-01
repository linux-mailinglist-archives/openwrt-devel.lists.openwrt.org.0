Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDD610C57
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=by4yJhz5xc3OJz9vSln7BMOva+MdBsEsrDSyZtrYi+o=; b=Fcu1blo3s7bnra
	ln/7ESMibrsRKJYihZvzmXjyIvalEVscmzhlt5QUDPko4cN8XpJ95KZImXJ3Pk3heJF2O+hQNXWGb
	7MG5QVZRBSYTMziDl9JTOhdoHAC2lypsOADgYK3kP1XDOJM5MU7QS/LDCvtWJFikADOlWgI9E/dwt
	5155gHswcgbFFBH/P1u2WMPY07j74GeN88QlVlr4M/bYdloJwc2my7UVzYFGjOGTi8R+UTXCf9ryI
	S/EsGI7NTuQvzublHq1MAiXf4aTY3AtOWlAkEEKwkRU9vJQGFSg034kZ5VWutzMjcvylnOvbY+yh3
	8Qj796/pTMYMOWcPR2lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtHJ-0001E3-Lf; Wed, 01 May 2019 17:44:21 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtH0-0000uL-Qs
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:44:11 +0000
Received: (wp-smtpd smtp.tlen.pl 10310 invoked from network);
 1 May 2019 19:44:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556732640; bh=bBc+lL+H3iCX4xjQxMko2sRKQ2Ev7ePFg4KKQ8GEEQ8=;
 h=From:To:Subject;
 b=sGKyNo4+ad8OCiFvhAsaGx35cFX5BwvkcO9bjJa6RMVlrZAw+smmqRoVk3U7ajpi9
 MwmzgIjyLm4WgEK86AiokCe7KCFFJMPPoTFqbs/dbFqvgq32qNTUcMFbN+PuAtGlH+
 zfV4uUHaB7uskED156TxUF6IOt2xmDYldMhSNCFA=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 1 May 2019 19:44:00 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 19:43:54 +0200
Message-Id: <20190501174354.19409-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-WP-MailID: b442ddcab31e5ba35b146d771a0e0e4f
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [cbME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_104403_654850_634CCF2E 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] tegra: add vendor string to device name
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

for better identification. Also create SUPPORTED_DEVICES string from it
which corresponds to dts compatible string.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/uboot-tegra/Makefile | 2 +-
 target/linux/tegra/image/Makefile | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/boot/uboot-tegra/Makefile b/package/boot/uboot-tegra/Makefile
index a42d9cfc27..4b9f7876f8 100644
--- a/package/boot/uboot-tegra/Makefile
+++ b/package/boot/uboot-tegra/Makefile
@@ -23,7 +23,7 @@ endef
 
 define U-Boot/trimslice
   NAME := CompuLab TrimSlice
-  BUILD_DEVICES := trimslice
+  BUILD_DEVICES := compulab_trimslice
   UBOOT_IMAGE := trimslice-mmc.img trimslice-spi.img
   SOC := tegra20
   VENDOR := compulab
diff --git a/target/linux/tegra/image/Makefile b/target/linux/tegra/image/Makefile
index 706cc65d92..c1aa81bedd 100644
--- a/target/linux/tegra/image/Makefile
+++ b/target/linux/tegra/image/Makefile
@@ -44,16 +44,16 @@ define Device/Default
   KERNEL_NAME := zImage
   KERNEL := kernel-bin
   PROFILES := Default
+  SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
 endef
 
-define Device/trimslice
+define Device/compulab_trimslice
   DEVICE_TITLE := CompuLab TrimSlice
   DEVICE_DTS := tegra20-trimslice
   DEVICE_PACKAGES := kmod-r8169 kmod-rt2800-usb kmod-rtc-em3027 \
 	kmod-usb-storage wpad-mini
-  SUPPORTED_DEVICES := compulab,trimslice
   UBOOT := trimslice-mmc
 endef
-TARGET_DEVICES += trimslice
+TARGET_DEVICES += compulab_trimslice
 
 $(eval $(call BuildImage))
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
