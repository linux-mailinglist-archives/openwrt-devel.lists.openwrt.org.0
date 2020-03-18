Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3728B18A214
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 19:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wDKyxphyW2RuCdEJ35S65410rSTo3tWH5ThPbLo051k=; b=l2s4UqCOFwjE6otTeiz+wJXkFm
	jC5ywqNJ8P+40RI7K54gEXf3vcrd8YYvUM7I8ZO1uHmM1MFHoETXyqF3wShB9PA9IkEwfxNbxe4kk
	2DIfJNmGHmBpCPCAg+jZRlYpHOk2qfP9mFa87gTX1ADQ8iSvNw58ouDQbvbdIQmwS64smEFoQSs1b
	4luSEkfxmU3/495Z83B6zd50LAWkN1TwZ495LEdy4pfkgpuWfD0sgSx+lyW7+BPBvzQuZASJmJao/
	RNZiNAUdxLvvGWDZa+tYc+gOdiciQnnSsQ1pJ4csf9rp9GP0NF+dkUGaDj6JtiU94CNLn839QrKLs
	4Tgpr1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEd3h-0006EE-C8; Wed, 18 Mar 2020 18:04:49 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEd3M-00065U-QR
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 18:04:31 +0000
Received: (wp-smtpd smtp.tlen.pl 12620 invoked from network);
 18 Mar 2020 19:04:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1584554665; bh=MDWeOuNHl5pDNdj+SDEtyzrcgciyzRyLjXrVQ+YNvw0=;
 h=From:To:Subject;
 b=ldt70SFOzn3zphjaPeRIS/LFpVHkv/T4jSUwfIJABt9yhbullR7AcdMomYs6IQhH1
 I+aopQf2BYpsBr1tj/NzDEOfrVRnGB5UQfwdkBzLc9u0BYID1fivzLtR/nMcCtV+eZ
 kBsqreak3YgAVr2Me+VfPvAtiPK+vgDRcDJInxfY=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Mar 2020 19:04:25 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 19:04:13 +0100
Message-Id: <20200318180413.409555-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318180413.409555-1-tomek_n@o2.pl>
References: <20200318180413.409555-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 5701a636f68ff8bce1846464fe70d130
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [AWMk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_110429_103001_16322C4F 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] tegra: correct cpu subtype
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

Tegra 2 processors have only 16 double-precision registers. The change
introduced by 8dcc1087602e ("toolchain: ARM: Fix toolchain compilation
for gcc 8.x") switched accidentally the toolchain for tegra target to cpu
type with 32 double-precision registers. This stems from gcc defaults
which assume "vfpv3-d32" if only "vfpv3" as mfpu is specified. That
change resulted in unusable image, in which kernel will kill userspace as
soon as it causing "Illegal instruction".

Ref: https://forum.openwrt.org/t/gcc-was-broken-on-mvebu-armada-370-device-after-commit-on-2019-03-25/43272
Fixes: 8dcc1087602e ("toolchain: ARM: Fix toolchain compilation for
gcc 8.x")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/tegra/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/tegra/Makefile b/target/linux/tegra/Makefile
index 0b48fc16baa2..5dd4d439849e 100644
--- a/target/linux/tegra/Makefile
+++ b/target/linux/tegra/Makefile
@@ -11,7 +11,7 @@ BOARD := tegra
 BOARDNAME := NVIDIA Tegra
 FEATURES := audio boot-part display ext4 fpu gpio pci pcie rootfs-part rtc squashfs usb
 CPU_TYPE := cortex-a9
-CPU_SUBTYPE := vfpv3
+CPU_SUBTYPE := vfpv3-d16
 
 KERNEL_PATCHVER := 5.4
 KERNEL_TESTING_PATCHVER := 5.4
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
