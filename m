Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0403D19016D
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 23:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u4ZddldOMbZkYSdr4PzhdRwThLWtJLohNFxnnkxIbfc=; b=COQTjJWV41xWga
	ttk0N9d8R+6yfqPsoE0OPejab8si6SCDWhlQDZUwMYQaGB7eKTXMm6YbeXw8MhcQxn7dP2beIwTbk
	dgbZx6kToyVK1jrDM6r8fe0yYNpUMNPkXEVvvmwcpuh6+EeiHPKXTEcXkN+5T8z9BLs9gkG5kZYBt
	M1xCHgb/dP4ZeHELh4K9sWtTCf9YkUMv1NrQoGW5zoB8KmyJ5Clq9JmTp+tP86FkISWHGmRw6FhJC
	8p/u/bAPX3CsR/qRGb6FXj5HaOQMQOdn9Idaase5SiidjnK/LulESP2fMawCY5C2gadzt/xDBkZVC
	0b/julEAWV2hW6brE8EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVzz-0007d8-1I; Mon, 23 Mar 2020 22:56:47 +0000
Received: from mout-p-103.mailbox.org ([2001:67c:2050::465:103])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVzK-0007Cn-00
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 22:56:08 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 48mV996B4CzKmgk;
 Mon, 23 Mar 2020 23:55:57 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id wLwWgny02k0Y; Mon, 23 Mar 2020 23:55:55 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Mar 2020 23:55:38 +0100
Message-Id: <20200323225540.10886-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_155606_204228_5085F106 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/3] linux-atm: Fix build with glibc
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Without this change linux-atm does not build any more with glibc and
kernel 5.4, because SIOCGSTAMP is missing. This patch adds a missing
include to fix this compile problem.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../patches/410-missing-SIOCGSTAMP.patch      | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 package/network/utils/linux-atm/patches/410-missing-SIOCGSTAMP.patch

diff --git a/package/network/utils/linux-atm/patches/410-missing-SIOCGSTAMP.patch b/package/network/utils/linux-atm/patches/410-missing-SIOCGSTAMP.patch
new file mode 100644
index 000000000000..3288466e3405
--- /dev/null
+++ b/package/network/utils/linux-atm/patches/410-missing-SIOCGSTAMP.patch
@@ -0,0 +1,20 @@
+--- a/src/maint/atmdump.c
++++ b/src/maint/atmdump.c
+@@ -16,6 +16,7 @@
+ #include <sys/socket.h>
+ #include <netinet/in.h> /* for htonl and ntohl */
+ #include <atm.h>
++#include <linux/sockios.h>
+ 
+ 
+ static const char *pti[] = { "Data SDU 0","Data SDU 1","Data SDU 0, CE",
+--- a/src/maint/saaldump.c
++++ b/src/maint/saaldump.c
+@@ -16,6 +16,7 @@
+ #include <sys/types.h>
+ #include <sys/socket.h>
+ #include <atm.h>
++#include <linux/sockios.h>
+ 
+ #include "pdu.h"
+ #define DUMP_MODE
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
