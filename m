Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20AB169194
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 20:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mBmmhdwWQS+OEz2rTl15tR4uU1WzT/21apsJBTPYAGQ=; b=RsOL6pUpgzsG2j
	yMdqE1XThyn3HNmJ/HRO4eyjNSK+olewY84+TXctR7rV+k6NM/Q2dMC1EQFIGfYiaYRE3bDZ03x8u
	t9Jsz4dq/D3YVDmAr58Xs+6jgcxWPQWbbR4R55xN1kYxBgwcrs7Q5EflK5ty9aHQwnlGaO4Be35qL
	2azB4axocp79fBLvm2ZE79XUqhvOhA+Sr/0NqBBCndwa1G8wkldaDyMRl+oe7gVAAkqiuQ3xRHYf+
	R66JORoRXZupBCy3dff6bwPPVXD1mDwHnMP8uquDRGeRDEbbUqySBXtumw1FAGgo6HuRMFLHmO5PV
	QzjokIfqJ2EFiV0uv5gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ahL-0006LH-Jg; Sat, 22 Feb 2020 19:44:23 +0000
Received: from mout-p-102.mailbox.org ([2001:67c:2050::465:102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ahE-0006Ko-4n
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 19:44:17 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 48PzKn4W1dzKmfS;
 Sat, 22 Feb 2020 20:44:13 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id 0QvAyirT8nms; Sat, 22 Feb 2020 20:44:10 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 20:43:56 +0100
Message-Id: <20200222194356.25095-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_114416_336375_87B50391 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] linux-atm: Fix compile warning
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The function trace_on_exit() is given to atexit() as a parameter, but
atexit() only takes a function pointer to a function with a void
parameter.

This problem was introduced when the on_exit() function was incompletely
replaced by atexit().

Fixes: ba6c8bd6142f ("linux-atm: add portability fixes")
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../patches/400-portability_fixes.patch          | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/package/network/utils/linux-atm/patches/400-portability_fixes.patch b/package/network/utils/linux-atm/patches/400-portability_fixes.patch
index 9fe3e1faea..41425eed19 100644
--- a/package/network/utils/linux-atm/patches/400-portability_fixes.patch
+++ b/package/network/utils/linux-atm/patches/400-portability_fixes.patch
@@ -34,7 +34,21 @@
  #include <linux/atmioc.h>
 --- a/src/sigd/atmsigd.c
 +++ b/src/sigd/atmsigd.c
-@@ -517,7 +517,7 @@ int main(int argc,char **argv)
+@@ -283,12 +283,11 @@ static void setup_signals(void)
+ /* ------------------------------- main ...  ------------------------------- */
+ 
+ 
+-static void trace_on_exit(int status,void *dummy)
++static void trace_on_exit(void)
+ {
+     char path[PATH_MAX+1];
+     FILE *file;
+ 
+-    if (!status) return;
+     if (!dump_dir) file = stderr;
+     else {
+ 	sprintf(path,"atmsigd.%d.trace.exit",getpid());
+@@ -517,7 +516,7 @@ int main(int argc,char **argv)
  	    exit(0);
  	}
      }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
