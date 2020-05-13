Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829751D1EEC
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 21:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g96ebZHRPc4WWjCstylsw/bLTKaGkA68JpnHzzI+IHo=; b=FLStTTwIsFo9gi
	Y7NHryOsry5mmJsu7JKOZiHsJhcDHUx0NilaP7649SwM2O8DqTagpdqS5FfyXH3CvaDH8JBaE1v9U
	DHjxojCmxSmnURAXSSe7jCCJy0I9dz4wQD7FT1ouAbuuo1Amekq+fNxWHTnXRSVu2xxLcogeWPOn/
	bb7K8G82DAXTsjlVzPVidZWOO5nu89dgC7Sl+TCi4dUCaNtRJKw8RITh5BEuiwtOj0+5IgnDFSlPZ
	IuCel/t3DZDI0KJlUcwEkqoa99dE4DaY0B9sTaI0dgJVISQnYbjImYOoTXQ1DpVVcspg89040yMF2
	fWQNVSF9gSkdJ06hdNBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwvl-0007jJ-TF; Wed, 13 May 2020 19:20:37 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwve-0007ho-Ow
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 19:20:32 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id A2520251F3;
 Wed, 13 May 2020 21:20:24 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 21:19:45 +0200
Message-Id: <d9a8cdcbfe046467dcb5e19e2bedcc773092333d.1589396871.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589396871.git.mschiffer@universe-factory.net>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_122030_972696_F2C8F321 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] build: compress kernel debuginfo using
 zstd
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
Cc: mschiffer@universe-factory.net
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
 tools/Makefile          | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

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
 
diff --git a/tools/Makefile b/tools/Makefile
index 02556d4b83f3..169f36c5bb69 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -37,6 +37,7 @@ tools-y += lzma squashfskit4 zip
 tools-$(BUILD_B43_TOOLS) += b43-tools
 tools-$(BUILD_ISL) += isl
 tools-$(CONFIG_USE_SPARSE) += sparse
+tools-$(CONFIG_COLLECT_KERNEL_DEBUG) += zstd
 tools-$(CONFIG_TARGET_apm821xx)$(CONFIG_TARGET_gemini) += genext2fs
 tools-$(CONFIG_TARGET_tegra) += cbootimage cbootimage-configs
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
