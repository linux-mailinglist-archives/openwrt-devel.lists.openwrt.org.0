Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20AD1ACC3
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 17:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VONqoBEqe0p9exRHqV83+ReW88F/GChu7FEbzSTKvW8=; b=MpmVOyFkxCJCFR
	QX9gs77aDxLQq3nqDINVu4mfS55EMEBzkYIVZyxV9LQJLLSdH9FuDga7pGao6ISXJyqICtWRqNg5e
	dChEGkt9+rTHsgcucYlBzo6yXTgzeQfuRyXQ6IkVCUJphGOc/ECZlnDPqpXSEya8Cr/cXxt9FE3jw
	FEk4T/WjeV8h0426DXLRarnPERGWho2oG8OT4ItdrUUFEW7OTT/YH34/XTFCw4ZKlTlKVoHAovYWn
	V6Ht6aSMNUvkL9dykm972JFtlgREejTNYU3XIvZW27o/za1SJcvBctbJ7aEiI0gmVqViGLf9KwUOG
	M2wSn5kI6Q62lrXQhVtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqJW-0003nR-Oq; Sun, 12 May 2019 15:22:58 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqJH-0003aE-LU
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 15:22:46 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 6F5224DE5E;
 Sun, 12 May 2019 17:22:42 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id 2EGMVfo4W8qp; Sun, 12 May 2019 17:22:33 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 17:22:27 +0200
Message-Id: <20190512152227.13719-2-hauke@hauke-m.de>
In-Reply-To: <20190512152227.13719-1-hauke@hauke-m.de>
References: <20190512152227.13719-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082244_059957_053EA9A4 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] valgrind: Add support for ARM64
 architecture
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

valgrind also works on the ARM64 architecture, build it also for such CPUs.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/devel/valgrind/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/devel/valgrind/Makefile b/package/devel/valgrind/Makefile
index 0c5b0cffd4..956e5ad722 100644
--- a/package/devel/valgrind/Makefile
+++ b/package/devel/valgrind/Makefile
@@ -31,7 +31,7 @@ include $(INCLUDE_DIR)/kernel.mk
 define Package/valgrind
   SECTION:=devel
   CATEGORY:=Development
-  DEPENDS:=@mips||mipsel||i386||x86_64||powerpc||arm_v7 +libpthread +librt
+  DEPENDS:=@mips||mipsel||i386||x86_64||powerpc||arm_v7||aarch64 +libpthread +librt
   TITLE:=debugging and profiling tools for Linux
   URL:=http://www.valgrind.org
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
