Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C4B17B07C
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 22:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8pP1dIoRvepeLmwLiUtm8IEA2ze8LZs/E4BdyZg1/x4=; b=GM/XvbBuQd1SwK
	QsG76Mf+iUfWUJHipVTV2Ej7ZyQ8XLAiYrYcAgaOrB4W+/POA/L7Th/4IFz5Dgab68d2pZSS3r/TD
	xKqnqygv5UZfQG+OChXEVeG2iwNRHCsMUMb0TGsFOOZZ0wq7d939cHQRbhesG/OtYsEPX8ULU5pCT
	FIkNYqcplnI1ZdtDwsZjNfWwzCK8dtn1Taq4PCPgI7UKycconp5myven6xV9miM399PRk/2HvpyFH
	WIq4PyPRH5580RGDhauifcxQp9qKiwS7Xx4hRUOAnFhNQlKHQAY1+1QBf0AspFEtAXhNA3D29sctY
	qS75ZFWNlvWqZ9deRbCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xs7-000197-6u; Thu, 05 Mar 2020 21:17:35 +0000
Received: from a1i272.smtp2go.com ([43.228.185.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xrp-0000tU-5I
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 21:17:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m6sda0.a1-4.dyn; x=1583443929; h=Feedback-ID:
 X-Smtpcorp-Track:Message-Id:Date:Subject:To:From:Reply-To:Sender:
 List-Unsubscribe; bh=w3gW2kEGTQQSB+eh2UoYK37mv82mOuKCI4G0KtvU2HU=; b=HENyEL2i
 wECeYc0wYIa47XKAHXPs8kYdCk0mmku1HrOghHV04LQapfTMqgAYx2NJJ/ssgs4CmAM1ON8lWfhuh
 JOYPmAQUH3P/PLabdby4nBjPhw+dXfnZtTS4ClobeB3mwBIRsUdCTakVkw514j3kh3SH1A98DH4sr
 3r88QgG3C6U4nfFe9Bn9HFG5T5Qka1ZYP68rjhGxk43/bNFj8EbtvCRE/NpSCbjcwMY57TfwC3PvG
 PGDeaGqgvmk4yGG86dmuGAEFrtEsTbmfUeYBhVLmJrMWsR2ZAYx1gAOMcEIt9Lg2/Nmo264cCxi7d
 dN8k26HsHnw37O+6d6wKxLCV/w==;
Received: from [10.66.228.43] (helo=SmtpCorp)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1j9xrh-ItkH7B-8z
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 21:17:09 +0000
Received: from [10.162.83.196] (helo=mail.blazebox.homeip.net)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1j9xrg-wSERvC-RY
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 21:17:08 +0000
Received: from blazebox.homeip.net (localhost [127.0.0.1])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id 0132C61D027
 for <openwrt-devel@lists.openwrt.org>; Thu,  5 Mar 2020 16:16:46 -0500 (EST)
X-Virus-Scanned: amavisd-new at blazebox.homeip.net
Received: from mail.blazebox.homeip.net ([127.0.0.1])
 by blazebox.homeip.net (mail.blazebox.homeip.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id 4pgvSYeATZLw for <openwrt-devel@lists.openwrt.org>;
 Thu,  5 Mar 2020 16:16:43 -0500 (EST)
Received: from blaze.homeip.net (blaze
 [IPv6:2001:470:1f07:a3a:dc8:1e2:a6b:6125])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id 3C2AD61D019
 for <openwrt-devel@lists.openwrt.org>; Thu,  5 Mar 2020 16:16:43 -0500 (EST)
Received: by blaze.homeip.net (Postfix, from userid 4444)
 id D41F92078E51; Thu,  5 Mar 2020 16:16:43 -0500 (EST)
From: Paul Blazejowski <paulb@blazebox.homeip.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Mar 2020 16:16:43 -0500
Message-Id: <20200305211643.25830-1-paulb@blazebox.homeip.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Smtpcorp-Track: 1M9xrgwSERvCRY.YSxVe0VQm
Feedback-ID: 316702m:316702a3jAEqy:316702s6LRrSMcVW
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_131717_196558_A1367EE6 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [43.228.185.16 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH] exfat-nofuse: fix kernel 5.4 compilation
 issue
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

Patch taken from
https://github.com/barrybingo/exfat-nofuse/commit/8b59e1f338fdd87f1d5a9db2a119a3745bb467d5

Signed-off-by: Paul Blazejowski <paulb@blazebox.homeip.net>
---
 kernel/exfat-nofuse/Makefile               |  2 +-
 kernel/exfat-nofuse/patches/0003-5.0.patch | 88 ++++++++++++++++++++++
 2 files changed, 89 insertions(+), 1 deletion(-)
 create mode 100644 kernel/exfat-nofuse/patches/0003-5.0.patch

diff --git a/kernel/exfat-nofuse/Makefile b/kernel/exfat-nofuse/Makefile
index 8354f5621..ebc101144 100644
--- a/kernel/exfat-nofuse/Makefile
+++ b/kernel/exfat-nofuse/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=exfat-nofuse
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE_URL:=https://github.com/dorimanx/exfat-nofuse.git
 PKG_SOURCE_PROTO:=git
diff --git a/kernel/exfat-nofuse/patches/0003-5.0.patch b/kernel/exfat-nofuse/patches/0003-5.0.patch
new file mode 100644
index 000000000..da28fc03c
--- /dev/null
+++ b/kernel/exfat-nofuse/patches/0003-5.0.patch
@@ -0,0 +1,88 @@
+From 8b59e1f338fdd87f1d5a9db2a119a3745bb467d5 Mon Sep 17 00:00:00 2001
+From: Junde Yhi <lmy441900@aosc.xyz>
+Date: Thu, 10 Jan 2019 21:19:49 +0800
+Subject: [PATCH] exfat_{core,super}.c: fix build on 5.0-rc1, MS_* -> SB_*
+
+In torvalds/linux@e462ec50cb a new set of superblock flags was added
+to replace the original MS_* ones, and in torvalds/linux@e262e32d6b
+the MS_* flags are suppressed unless uapi/linux/mount.h is included.
+As is suggested, we should use the new API now.
+---
+ exfat_core.c  |  6 +++++-
+ exfat_core.h  |  6 ++++++
+ exfat_super.c | 11 ++++++++++-
+ 3 files changed, 21 insertions(+), 2 deletions(-)
+
+diff --git a/exfat_core.c b/exfat_core.c
+index 143b721..397afd6 100644
+--- a/exfat_core.c
++++ b/exfat_core.c
+@@ -1757,8 +1757,12 @@ void fs_error(struct super_block *sb)
+ 
+ 	if (opts->errors == EXFAT_ERRORS_PANIC)
+ 		panic("[EXFAT] Filesystem panic from previous error\n");
+-	else if ((opts->errors == EXFAT_ERRORS_RO) && !(sb->s_flags & MS_RDONLY)) {
++	else if ((opts->errors == EXFAT_ERRORS_RO) && !EXFAT_IS_SB_RDONLY(sb)) {
++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
+ 		sb->s_flags |= MS_RDONLY;
++#else
++		sb->s_flags |= SB_RDONLY;
++#endif
+ 		printk(KERN_ERR "[EXFAT] Filesystem has been set read-only\n");
+ 	}
+ }
+diff --git a/exfat_core.h b/exfat_core.h
+index 52d05c7..3d023b7 100644
+--- a/exfat_core.h
++++ b/exfat_core.h
+@@ -45,6 +45,12 @@
+ #include "exfat_api.h"
+ #include "exfat_cache.h"
+ 
++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & MS_RDONLY)
++#else
++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & SB_RDONLY)
++#endif
++
+ #ifdef CONFIG_EXFAT_KERNEL_DEBUG
+   /* For Debugging Purpose */
+ 	/* IOCTL code 'f' used by
+diff --git a/exfat_super.c b/exfat_super.c
+index 79ff5f9..6452b54 100644
+--- a/exfat_super.c
++++ b/exfat_super.c
+@@ -2086,7 +2086,7 @@ static void exfat_write_super(struct super_block *sb)
+ 
+ 	__set_sb_clean(sb);
+ 
+-	if (!(sb->s_flags & MS_RDONLY))
++	if (!EXFAT_IS_SB_RDONLY(sb))
+ 		FsSyncVol(sb, 1);
+ 
+ 	__unlock_super(sb);
+@@ -2142,7 +2142,12 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
+ 
+ static int exfat_remount(struct super_block *sb, int *flags, char *data)
+ {
++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
+ 	*flags |= MS_NODIRATIME;
++#else
++	*flags |= SB_NODIRATIME;
++#endif
++
+ 	return 0;
+ }
+ 
+@@ -2495,7 +2500,11 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
+ 	mutex_init(&sbi->s_lock);
+ #endif
+ 	sb->s_fs_info = sbi;
++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
+ 	sb->s_flags |= MS_NODIRATIME;
++#else
++	sb->s_flags |= SB_NODIRATIME;
++#endif
+ 	sb->s_magic = EXFAT_SUPER_MAGIC;
+ 	sb->s_op = &exfat_sops;
+ 	sb->s_export_op = &exfat_export_ops;
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
