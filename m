Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47CB19CAA6
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 21:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wobNL84MfQoz5NEllow95Lf5cFVbYne9QX2VUKoOkcU=; b=WB0f67cZOJ//j6
	GY8G89cyiDm2OnzdsjkJk6afzmG3mlpCBb40KF7Q9jEjEvXaoJUQBfBZG8kd8pR7TcsHy8rCYblKw
	i6ddWTIgihA6gEkNEeap7xuw0Y09UyXJASJ0Rb7wJErTKXF/Pq5xI3z7gQ/Lhpkrdfr58kwX/PsoY
	cK58Dkd/bUoXI78IyAz9BUzUMrub/HU8ALz86CwlgSCSwm65y8bM9wqmFMUbFj9odiwgxd3MCilF8
	K18+JKDyiuGrs6XxzrwoDHztOTlmQGjNO/+E7K2MEMiqWYBZ4YHF871E0zCGch0LXO7LNeh6MiL4r
	sxf6vv2haTmY4udZRHuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5v7-00019A-4Z; Thu, 02 Apr 2020 19:54:33 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5uz-00018c-EX
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 19:54:28 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0AB200009727073B357A33.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0a:b200:97:2707:3b35:7a33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 159F81F9E5
 for <openwrt-devel@lists.openwrt.org>; Thu,  2 Apr 2020 21:54:11 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 21:53:59 +0200
Message-Id: <20200402195359.51545-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_125425_633235_641B921B 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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

As the reported major bugs are ironed out, switch to the new kernel to
begin testing with a broader audience.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/Makefile b/target/linux/ath79/Makefile
index 9b203cf48e..a955602ba9 100644
--- a/target/linux/ath79/Makefile
+++ b/target/linux/ath79/Makefile
@@ -8,7 +8,7 @@ SUBTARGETS:=generic mikrotik nand tiny
 
 FEATURES:=ramdisk
 
-KERNEL_PATCHVER:=4.19
+KERNEL_PATCHVER:=5.4
 KERNEL_TESTING_PATCHVER:=5.4
 
 include $(INCLUDE_DIR)/target.mk
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
