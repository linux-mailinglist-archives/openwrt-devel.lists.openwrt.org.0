Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E97E64AE
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 18:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQdpOiDG3H10oUiVSBwDy041xuC2GDb+3yxjK1suJ30=; b=BsWqMlE6JBUQsk
	yfMfItbe0dqinCXlFWWodv16JtokV1wwA3oCdFXU6wKoGU+2zMR1CkLTh1nxFjgti95w2PkaSBqoB
	omr/UXYjYpRLG7wnVq3Da9uuMC3xlp5+lE9UsiKhaPDyHIoxT8KFtt5UYPMDHTKjsIWnYefAEkhqh
	mrh2Ljfrjmhyyut21hbgMQejMWaMFAwuzGXPoNS9Cfq26Y/n83haj+QdI21YzyquW5oIyhUYVF77j
	ah6MYL9QO/rVwDHtYW0XQGhNJsWPm9buxhZ8UF4zTzg3W9CeHB4hSEad9lIrFF0i1sVZ3klutXnJ0
	u3qa+WCzKCLl6i8YZbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmdB-000663-I8; Sun, 27 Oct 2019 17:47:09 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbQ-00048E-K7
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 17:45:25 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 6CBD1A249A;
 Sun, 27 Oct 2019 18:45:12 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id a70kED-UMTsW; Sun, 27 Oct 2019 18:45:08 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 18:44:38 +0100
Message-Id: <20191027174438.25795-7-hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-1-hauke@hauke-m.de>
References: <20191027174438.25795-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104522_303940_FC697796 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 6/6] lantiq: Allow PKG_ASLR_PIE for DSL and
 voice drivers
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, daniel.engberg.lists@pyret.net,
 lynxis@fe80.eu, dave@taht.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When ASLR_PIE was activated globally these drivers failed to build
because the user space LDFLAGS leaked into the kernel build process.
This was fixed in upstream Linux kernel commit ce99d0bf312d ("kbuild:
clear LDFLAGS in the top Makefile") which went into Linux 4.17. The
lantiq target is now on Linux 4.19 only and these exceptions are not
needed any more.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/kernel/lantiq/ltq-adsl/Makefile      | 1 -
 package/kernel/lantiq/ltq-ifxos/Makefile     | 1 -
 package/kernel/lantiq/ltq-tapi/Makefile      | 1 -
 package/kernel/lantiq/ltq-vdsl-mei/Makefile  | 2 --
 package/kernel/lantiq/ltq-vdsl/Makefile      | 1 -
 package/kernel/lantiq/ltq-vmmc/Makefile      | 1 -
 package/network/config/ltq-vdsl-app/Makefile | 1 -
 7 files changed, 8 deletions(-)

diff --git a/package/kernel/lantiq/ltq-adsl/Makefile b/package/kernel/lantiq/ltq-adsl/Makefile
index 0fbda34ff9..e6817efffc 100644
--- a/package/kernel/lantiq/ltq-adsl/Makefile
+++ b/package/kernel/lantiq/ltq-adsl/Makefile
@@ -18,7 +18,6 @@ PKG_HASH:=eb2ed59715d3bf4e8a1460bbbe2f1660039e0a9f9d72afb1b2b16590094eb33c
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 
 PKG_CHECK_FORMAT_SECURITY:=0
-PKG_ASLR_PIE:=0
 PKG_FIXUP:=autoreconf
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/kernel/lantiq/ltq-ifxos/Makefile b/package/kernel/lantiq/ltq-ifxos/Makefile
index 4771fda20a..4a368309d3 100644
--- a/package/kernel/lantiq/ltq-ifxos/Makefile
+++ b/package/kernel/lantiq/ltq-ifxos/Makefile
@@ -17,7 +17,6 @@ PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 PKG_LICENSE:=GPL-2.0 BSD-2-Clause
 PKG_LICENSE_FILES:=LICENSE
 
-PKG_ASLR_PIE:=0
 PKG_FIXUP:=autoreconf
 
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/kernel/lantiq/ltq-tapi/Makefile b/package/kernel/lantiq/ltq-tapi/Makefile
index 171103350e..072041c589 100644
--- a/package/kernel/lantiq/ltq-tapi/Makefile
+++ b/package/kernel/lantiq/ltq-tapi/Makefile
@@ -17,7 +17,6 @@ PKG_SOURCE_URL:=http://mirror2.openwrt.org/sources
 PKG_HASH:=109374d52872716570fca3fef3b93c9a93159a804dfd42484b19152b825af5c0
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 
-PKG_ASLR_PIE:=0
 PKG_CHECK_FORMAT_SECURITY:=0
 PKG_FIXUP:=autoreconf
 
diff --git a/package/kernel/lantiq/ltq-vdsl-mei/Makefile b/package/kernel/lantiq/ltq-vdsl-mei/Makefile
index 9597de0072..b8d75a8b2b 100644
--- a/package/kernel/lantiq/ltq-vdsl-mei/Makefile
+++ b/package/kernel/lantiq/ltq-vdsl-mei/Makefile
@@ -22,8 +22,6 @@ PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 PKG_LICENSE:=GPL-2.0 BSD-2-Clause
 PKG_LICENSE_FILES:=LICENSE
 
-PKG_ASLR_PIE:=0
-
 include $(INCLUDE_DIR)/package.mk
 
 define KernelPackage/ltq-vdsl-vr9-mei
diff --git a/package/kernel/lantiq/ltq-vdsl/Makefile b/package/kernel/lantiq/ltq-vdsl/Makefile
index cf3711beb7..d518bd647d 100644
--- a/package/kernel/lantiq/ltq-vdsl/Makefile
+++ b/package/kernel/lantiq/ltq-vdsl/Makefile
@@ -19,7 +19,6 @@ PKG_HASH:=b4966a60653acc49254b168c6cc9c49eb36c54548e763617788aa4f252a29f21
 PKG_LICENSE:=GPL-2.0 BSD-2-Clause
 PKG_LICENSE_FILES:=LICENSE
 
-PKG_ASLR_PIE:=0
 PKG_FIXUP:=autoreconf
 
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
diff --git a/package/kernel/lantiq/ltq-vmmc/Makefile b/package/kernel/lantiq/ltq-vmmc/Makefile
index e44b509b2e..99263cce43 100644
--- a/package/kernel/lantiq/ltq-vmmc/Makefile
+++ b/package/kernel/lantiq/ltq-vmmc/Makefile
@@ -17,7 +17,6 @@ PKG_HASH:=707f515eb727c032418c4da67d7e86884bb56cdc2a606e8f6ded6057d8767e57
 PKG_SOURCE_URL:=http://mirror2.openwrt.org/sources
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 
-PKG_ASLR_PIE:=0
 PKG_CHECK_FORMAT_SECURITY:=0
 PKG_FIXUP:=autoreconf
 
diff --git a/package/network/config/ltq-vdsl-app/Makefile b/package/network/config/ltq-vdsl-app/Makefile
index 198841977c..670f720e29 100644
--- a/package/network/config/ltq-vdsl-app/Makefile
+++ b/package/network/config/ltq-vdsl-app/Makefile
@@ -19,7 +19,6 @@ PKG_LICENSE:=BSD-2-Clause
 
 PKG_BUILD_DEPENDS:=ltq-vdsl
 
-PKG_ASLR_PIE:=0
 PKG_FLAGS:=nonshared
 
 include $(INCLUDE_DIR)/package.mk
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
