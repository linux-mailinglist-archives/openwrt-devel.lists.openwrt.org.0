Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDFEB3E5
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Apr 2019 18:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eT45lN3Ztw69UOrBhGvKnW3lBkcPFbRZDxWRSHM8v4A=; b=G+5NvHLCWAKZbY
	EmL9Hv/i2qFGfd4R0KjxXdwBb3GSlDpk64Q7u4qkxFmV0rUXe2swgSaedwsA53xt3zn5y22o2HBes
	iFpiXYfDqQyf+z0UaNi3bvX8tBE6eIJ2baTX7EwES56tjiwsVXVvz++gwJ6B7Nyp5+cPBKHf2BBVf
	iY9cRXXhUfIWx0yP1OLn2GJtLLT+jilb69kg+zSoX4Wvh7SzvamLVWgQOxvbs3pwi8ZVr9hc7p14T
	Jk5lQ1w6Jn4IIeGvUz1EF+kGDytWz/cEWHBZcZTiPfsI9Fkh5MyIuJtQc7mnp0dn7i+mR8yqeIlKs
	8KSbiSur6nG/15c0JeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKQ70-0004tW-Nj; Sat, 27 Apr 2019 16:23:38 +0000
Received: from volatilesystems.org ([136.144.153.139])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKQ6t-0004sr-Kn
 for openwrt-devel@lists.openwrt.org; Sat, 27 Apr 2019 16:23:33 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 376B115F581; Sat, 27 Apr 2019 18:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1556382207;
 bh=yKEJnXMa06iRyi0/k46fVEKz7yTolVhQ1q/9wpcazYM=;
 h=From:To:Subject:Date:From;
 b=Vi38OLppw3BLuPqvXOXxY/ZZHyLA3n8UeHeZNVufKrU6s3eGQlmHK6WbAcB3n4143
 S2SS3E7Sf3ycbKEJxxAuz1e8MF1LmAmQnh/gHyNBmBS3UXuRNaKe800NTQOm/+O+3r
 N9GqFm85P2Ljx66/l1afTETTawUDQMgDh5bIcOGk=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 atalanta.volatilesystems.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (unknown [77.109.122.153])
 by volatilesystems.org (Postfix) with ESMTPSA id 68AE715F569
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Apr 2019 18:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1556382206;
 bh=yKEJnXMa06iRyi0/k46fVEKz7yTolVhQ1q/9wpcazYM=;
 h=From:To:Subject:Date:From;
 b=lXw1C8eCiRwtPFoIYLS0xWC0RpT2ZspEo7GEuTSdkH8mp8hURQcqVq9lJuVnJwAwM
 g5kvePfN5Nets1Qwpuu/+ZpW3f/31fgLjLYd5exRQcNsRQkuAStYSdQAWqb3igDm0A
 FZe8ZK+HYbdcwG0XVSlVplLafC6pVXoTRv9/C+y4=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 27 Apr 2019 18:23:21 +0200
Message-Id: <20190427162321.28098-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_092331_845451_F9943241 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] lantiq/xrx200: enable initramfs images
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

Commit eae6cac6a3added support for the Fritz!Box 7362 SL, but one needs
an initramfs image to flash OpenWrt from stock firmware (as described in
the commit log). This patch has the initramfs image built by default.

Thanks to blogic (for pointing to the FEATURES declaration in the target
Makefiles) and Musashino on the forum for suggesting config/Config-images.in
needed editing too. While at it, reorder the TARGET_INITRAMFS_COMPRESSION_LZMA
declarations alphabetically.

This patch will result in initramfs images for all lantiq subtargets
that have the ramdisk flag set. I tested on the falcon and ase
subtargets, which lack that flag, to confirm they don't produce any
initramfs images with this patch - which they do not.

Given the limited scope of the lantiq (sub)target(s), blogic indicated
this should be OK.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 config/Config-images.in              | 5 +++--
 target/linux/lantiq/xrx200/target.mk | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/config/Config-images.in b/config/Config-images.in
index 9daaf74915..8548c7cd24 100644
--- a/config/Config-images.in
+++ b/config/Config-images.in
@@ -14,10 +14,11 @@ menu "Target Images"
 
 		choice
 			prompt "Compression"
-			default TARGET_INITRAMFS_COMPRESSION_LZMA if TARGET_ar71xx
-			default TARGET_INITRAMFS_COMPRESSION_LZMA if TARGET_ramips
 			default TARGET_INITRAMFS_COMPRESSION_LZMA if TARGET_apm821xx
+			default TARGET_INITRAMFS_COMPRESSION_LZMA if TARGET_ar71xx
+			default TARGET_INITRAMFS_COMPRESSION_LZMA if TARGET_lantiq
 			default TARGET_INITRAMFS_COMPRESSION_LZMA if TARGET_mpc85xx
+			default TARGET_INITRAMFS_COMPRESSION_LZMA if TARGET_ramips
 			default TARGET_INITRAMFS_COMPRESSION_NONE
 			depends on TARGET_ROOTFS_INITRAMFS
 			help
diff --git a/target/linux/lantiq/xrx200/target.mk b/target/linux/lantiq/xrx200/target.mk
index 4f682bf486..4d92b25bcb 100644
--- a/target/linux/lantiq/xrx200/target.mk
+++ b/target/linux/lantiq/xrx200/target.mk
@@ -1,7 +1,7 @@
 ARCH:=mips
 SUBTARGET:=xrx200
 BOARDNAME:=XRX200
-FEATURES:=squashfs atm nand
+FEATURES:=squashfs atm nand ramdisk
 CPU_TYPE:=24kc
 
 DEFAULT_PACKAGES+=kmod-leds-gpio \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
