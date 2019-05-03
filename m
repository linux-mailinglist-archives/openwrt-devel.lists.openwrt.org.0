Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71E813492
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4zUw/s4IFeTgpJx2QOo8rqxoIDF8ICoSV3MVD4YPvU=; b=omQaRSuX2PF50u
	GX7qFlETbNeooH/apzZynuBtzMe0XPpDL6Xqnvq0sdZaZgD6s4YPCqorM66JOyCOH3FABQ9gSUxID
	8M+PqDoTd0GfTYAihgHIepfof5pi4rSsLzDsfMVg4Vg4Eel1PsiXjswvYlObE+ecDubN8fYwpq0GH
	ZpcRfYtvyaTFilU53VWb6WJgBMROm4xQj3JomMikQA/Cn5/86cIQARsp5wqaVk+4EAg8t71YyLGSr
	9FwsrFcVEGdaDPMeTd+nb+LhHz8nnnwInPgc4bqwOPDNyjZzy9b9s8HclJ0UIHOF3fgkgQSQ0bXLW
	V6yyB6ojenFJDBtDh2lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfC9-00015d-Tc; Fri, 03 May 2019 20:54:13 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAj-0007ZZ-Ut
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:48 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id AE09FA10E5;
 Fri,  3 May 2019 22:52:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id VBT-fqcCfwYi; Fri,  3 May 2019 22:52:27 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:51:58 +0200
Message-Id: <20190503205207.7675-2-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135246_206146_05F45E4A 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 01/10] Kernel: Activate
 CONFIG_HARDENED_USERCOPY
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds additional checks to the copy_from_user() and copy_to_user()
functions. The details are described in this article:
https://lwn.net/Articles/695991/

This should only have a very small performance impact on system calls
and should not affect routing performance.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/generic/config-4.14 | 3 ++-
 target/linux/generic/config-4.19 | 4 +++-
 target/linux/generic/config-4.9  | 3 ++-
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 6f2db60989..e607c6dc80 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -1593,7 +1593,8 @@ CONFIG_GENERIC_NET_UTILS=y
 # CONFIG_HAMACHI is not set
 # CONFIG_HAMRADIO is not set
 # CONFIG_HAPPYMEAL is not set
-# CONFIG_HARDENED_USERCOPY is not set
+CONFIG_HARDENED_USERCOPY=y
+# CONFIG_HARDENED_USERCOPY_PAGESPAN is not set
 # CONFIG_HARDLOCKUP_DETECTOR is not set
 # CONFIG_HAVE_AOUT is not set
 CONFIG_HAVE_ARCH_HARDENED_USERCOPY=y
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index 3acfbb1f69..7e1528f517 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -1688,7 +1688,9 @@ CONFIG_GPIOLIB_FASTPATH_LIMIT=512
 # CONFIG_HAMACHI is not set
 # CONFIG_HAMRADIO is not set
 # CONFIG_HAPPYMEAL is not set
-# CONFIG_HARDENED_USERCOPY is not set
+CONFIG_HARDENED_USERCOPY=y
+# CONFIG_HARDENED_USERCOPY_FALLBACK is not set
+# CONFIG_HARDENED_USERCOPY_PAGESPAN is not set
 CONFIG_HARDEN_EL2_VECTORS=y
 # CONFIG_HARDLOCKUP_DETECTOR is not set
 # CONFIG_HAVE_AOUT is not set
diff --git a/target/linux/generic/config-4.9 b/target/linux/generic/config-4.9
index 1ed16edf02..cf50b4919c 100644
--- a/target/linux/generic/config-4.9
+++ b/target/linux/generic/config-4.9
@@ -1439,7 +1439,8 @@ CONFIG_GENERIC_NET_UTILS=y
 # CONFIG_HAMACHI is not set
 # CONFIG_HAMRADIO is not set
 # CONFIG_HAPPYMEAL is not set
-# CONFIG_HARDENED_USERCOPY is not set
+CONFIG_HARDENED_USERCOPY=y
+# CONFIG_HARDENED_USERCOPY_PAGESPAN is not set
 # CONFIG_HARDLOCKUP_DETECTOR is not set
 # CONFIG_HAVE_AOUT is not set
 CONFIG_HAVE_ARCH_HARDENED_USERCOPY=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
