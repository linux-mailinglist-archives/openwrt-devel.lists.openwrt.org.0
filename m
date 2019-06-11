Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0F93C903
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 12:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hsVtd2qAEkn/WPkAKnO/9/LmeLIPnwEU/rJKgqIIXzs=; b=Vyd4NBHuRJRjKV
	p3SGam3T3aDE2Lg7TuHjU6G8DVwHiONPp4u9EvYujyCQNbkKK25B1IIJR7ND9eGm+HkL7zKPBTRbY
	UI5adl/eTNld4TXDxB1wAptriuUEzojMJHahzw6yrgGRc75CnYQEm0v0goG7iO3AYXgacs2VSW0V9
	tF6KRvj13KlhRsu+uuJa1DbjG7FC0SfAaGSDcsljkYW+imygaWF03BgrOJIcXPcg96rXND2+yRfin
	dOpGfQT3Mp8AnI/NHXxGRHa4VapmXlYAnJJ/pB6S6fhL/C7njObmzItmZ3FtTKm/qj/znTWQp0iD+
	weLKOmLMcApRlQOqasdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hae4W-0000Ih-5n; Tue, 11 Jun 2019 10:32:08 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hae4M-0000Eb-Ma
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 10:32:00 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x5BAPKXM076493;
 Tue, 11 Jun 2019 18:25:20 +0800 (GMT-8)
 (envelope-from nylon7@andestech.com)
Received: from atcfdc88.andestech.com (10.0.15.132) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3;
 Tue, 11 Jun 2019 18:31:51 +0800
From: Nylon Chen <nylon7@andestech.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 11 Jun 2019 18:32:48 +0800
Message-ID: <20190611103248.31917-1-nylon7@andestech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.0.15.132]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x5BAPKXM076493
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_033159_046403_BA90B6C6 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: [OpenWrt-Devel] [PATCH 4/4] package: fix "LTO" option resulted in
 building error
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
Cc: Nylon Chen <nylon7717@gmail.com>, Nylon Chen <nylon7@andestech.com>,
 Che-Wei Chuang <cnoize@andestech.com>, Greentime Hu <greentime@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When a building package has -flto option leads to building error

We must use the gcc-ar wrapper instead of ar to invoke ar with the right
plugin arguments for handling the LTO objects when -flto is specified.

Signed-off-by: Che-Wei Chuang <cnoize@andestech.com>
Signed-off-by: Nylon Chen <nylon7@andestech.com>
---
 rules.mk | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/rules.mk b/rules.mk
index 80cb3d63f4..8d1c2b7cd2 100644
--- a/rules.mk
+++ b/rules.mk
@@ -256,9 +256,15 @@ ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
   TARGET_RANLIB:=$(TARGET_CROSS)gcc-ranlib
   TARGET_NM:=$(TARGET_CROSS)gcc-nm
 else
-  TARGET_AR:=$(TARGET_CROSS)ar
-  TARGET_RANLIB:=$(TARGET_CROSS)ranlib
-  TARGET_NM:=$(TARGET_CROSS)nm
+  ifeq ($(ARCH),nds32)
+    TARGET_AR:=$(TARGET_CROSS)gcc-ar
+    TARGET_RANLIB:=$(TARGET_CROSS)gcc-ranlib
+    TARGET_NM:=$(TARGET_CROSS)gcc-nm
+  else
+    TARGET_AR:=$(TARGET_CROSS)ar
+    TARGET_RANLIB:=$(TARGET_CROSS)ranlib
+    TARGET_NM:=$(TARGET_CROSS)nm
+  endif
 endif
 
 BUILD_KEY=$(TOPDIR)/key-build
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
