Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20421D67D3
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 13:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALtVAESNoBYDf1eP2tKKd4UO0D+/Q4LpHlAw7WesQuw=; b=IHk4gDpSuPUH3R
	FZ4kHHlD89UK8FjsfY76bvWD2YrC4UgHqDlotk3Sp1LM8PGJvX1c77TX5mwrbEpajL5DTbTV5QAoQ
	IFq9gY7DydrQYgLwuttTHb1A1lFy953gLMcgj4WR25ypaFnarVkzstbndZx8WnLm8USBtr4cVRtlQ
	W6agEgMz7tGmx+CHN7mCZal44/PJmUkkvAhaVfthDZb0WT5joM2WKzkcaZ8SVjHR27j0E6/njj3Ju
	k0BFga9zmRsqtXoxaPzhhw7D+gQDoVcZkVR4DgCxV+VNR8eiJ1lO7VFdfURRyoyiKbG6m7O2Ebc0y
	kP4YB1eIRXTWIUPplspg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaHq4-0006HW-OZ; Sun, 17 May 2020 11:52:16 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaHpl-00067g-35
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 11:51:58 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 2802125782;
 Sun, 17 May 2020 13:51:53 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 May 2020 13:51:42 +0200
Message-Id: <2d9ce4d894da492ed79b6a2d3ba51d6e859e81a2.1589716209.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589396871.git.mschiffer@universe-factory.net>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_045157_276303_A8145EAD 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 3/4] build: compress kernel debuginfo
 using zstd
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

zstd with its default settings (compression level -3) compresses better
than bzip2 -9 (which is the default setting), and is an order of magnitude
faster.

I made the following measurements for the most common compression tools
(all standard Debian Buster versions, default flags unless noted
otherwise), using the debug information of a large x86-64 kernel with
ALL_KMODS:

* kernel-debug.tar: 376M
* kernel-debug.tar.gz: 101M, compressed in ~12s
* kernel-debug.tar.bz2: 91M, compressed in ~15s
* kernel-debug.tar.xz: 57M, compressed in ~101s
* kernel-debug.tar.zst: 86M, compressed in ~1s

With zstd, there is still some room for improvement by increasing the
compression, but the slight increase in compression ratio
(22.83% -> 19.46%) does not justify the significant increase in
compression time (about 5 times on my machine) in my opinion.

Note that multithreaded compression (-T argument) does not affect
reproducibility with zstd.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 include/kernel-build.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/kernel-build.mk b/include/kernel-build.mk
index c371e78ab9b0..32c91a5b8359 100644
--- a/include/kernel-build.mk
+++ b/include/kernel-build.mk
@@ -70,7 +70,7 @@ ifdef CONFIG_COLLECT_KERNEL_DEBUG
 	$(FIND) $(KERNEL_BUILD_DIR)/debug -type f | $(XARGS) $(KERNEL_CROSS)strip --only-keep-debug
 	$(TAR) c -C $(KERNEL_BUILD_DIR) debug \
 		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
-		| bzip2 -c -9 > $(BIN_DIR)/kernel-debug.tar.bz2
+		| zstd -T0 -f -o $(BIN_DIR)/kernel-debug.tar.zst
   endef
 endif
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
