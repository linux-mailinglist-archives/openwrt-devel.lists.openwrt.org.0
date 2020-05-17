Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE571D67D4
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 13:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASGZCAT7OyBwDZbPQH4F1ja/fsWrYP2r6sWgr8nSGVM=; b=L1+lY6X5Aq89zC
	cG96a9+flZ9XF5WS2WKIKq4EWsM8L2X8+62Qti3AAT4DVd1ZlmXuxUQNnAnf1j4Yxz9EBcaD68LjA
	tudE1rCanwvmqPOFZ3VcmMrZkPDUhLeC/xoTNKvTFZdauHNEuJJ2NFysbFJaFbG6EtcmM+zoWUqBj
	BxZwOu1PuRpVUWp08bUxWECo/RSNC0xlgHDPwTpMhBgkrD40jSQlqn+2qYDznUPkEjdNM3POA0qVJ
	YCUfhC7380jQgbNrrLZ5168WFGQxkm+AepVhZQJZ8SL7u+VPrdU48idy4JmjPMMYwzl5Xb6aUrA/1
	VRqrSzQlvQqMHNWJGVXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaHqK-0006X2-U5; Sun, 17 May 2020 11:52:32 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaHpl-00067h-CL
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 11:51:59 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 4AB5825783;
 Sun, 17 May 2020 13:51:53 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 May 2020 13:51:43 +0200
Message-Id: <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589396871.git.mschiffer@universe-factory.net>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_045157_576171_7889959B 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 4/4] build: use zstd for SDK and
 ImageBuilder tarballs
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

Comression level -19 was chosen as it provides a very good tradeoff
between compression ratio and performance, especially in multithreaded
operation.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 target/imagebuilder/Makefile | 8 ++++----
 target/sdk/Makefile          | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/target/imagebuilder/Makefile b/target/imagebuilder/Makefile
index b463feb456ee..5c09109150a8 100644
--- a/target/imagebuilder/Makefile
+++ b/target/imagebuilder/Makefile
@@ -21,7 +21,7 @@ IB_IDIR:=$(patsubst $(TOPDIR)/%,$(PKG_BUILD_DIR)/%,$(STAGING_DIR_IMAGE))
 
 all: compile
 
-$(BIN_DIR)/$(IB_NAME).tar.xz: clean
+$(BIN_DIR)/$(IB_NAME).tar.zst: clean
 	rm -rf $(PKG_BUILD_DIR)
 	mkdir -p $(IB_KDIR) $(IB_LDIR) $(PKG_BUILD_DIR)/staging_dir/host/lib \
 		$(PKG_BUILD_DIR)/target $(PKG_BUILD_DIR)/scripts $(IB_DTSDIR)
@@ -86,12 +86,12 @@ endif
 	(cd $(PKG_BUILD_DIR); find staging_dir/host/bin/ $(IB_LDIR)/scripts/dtc/ -type f | \
 		$(XARGS) $(SCRIPT_DIR)/bundle-libraries.sh $(PKG_BUILD_DIR)/staging_dir/host)
 	STRIP=sstrip $(SCRIPT_DIR)/rstrip.sh $(PKG_BUILD_DIR)/staging_dir/host/bin/
-	$(TAR) -cf - -C $(BUILD_DIR) $(IB_NAME) | xz -T$(if $(filter 1,$(NPROC)),2,0) -zc -7e > $@
+	$(TAR) -cf - -C $(BUILD_DIR) $(IB_NAME) | zstd -T0 -19 -f -o $@
 
 download:
 prepare:
-compile: $(BIN_DIR)/$(IB_NAME).tar.xz
+compile: $(BIN_DIR)/$(IB_NAME).tar.zst
 install: compile
 
 clean: FORCE
-	rm -rf $(PKG_BUILD_DIR) $(BIN_DIR)/$(IB_NAME).tar.xz
+	rm -rf $(PKG_BUILD_DIR) $(BIN_DIR)/$(IB_NAME).tar.zst
diff --git a/target/sdk/Makefile b/target/sdk/Makefile
index 6d818347204a..13389c849958 100644
--- a/target/sdk/Makefile
+++ b/target/sdk/Makefile
@@ -81,7 +81,7 @@ KERNEL_FILES := $(patsubst $(TOPDIR)/%,%,$(wildcard $(addprefix $(LINUX_DIR)/,$(
 
 all: compile
 
-$(BIN_DIR)/$(SDK_NAME).tar.xz: clean
+$(BIN_DIR)/$(SDK_NAME).tar.zst: clean
 	mkdir -p $(SDK_BUILD_DIR)/dl $(SDK_BUILD_DIR)/package
 	$(CP) -L $(INCLUDE_DIR) $(SCRIPT_DIR) $(SDK_BUILD_DIR)/
 	$(TAR) -cf - -C $(TOPDIR) \
@@ -156,13 +156,13 @@ $(BIN_DIR)/$(SDK_NAME).tar.xz: clean
 	find $(SDK_BUILD_DIR) -name CVS | $(XARGS) rm -rf
 	-make -C $(SDK_BUILD_DIR)/scripts/config clean
 	(cd $(BUILD_DIR); \
-		tar -I 'xz -7e' -cf $@ $(SDK_NAME); \
+		tar -I 'zstd -T0 -19' -cf $@ $(SDK_NAME); \
 	)
 
 download:
 prepare:
-compile: $(BIN_DIR)/$(SDK_NAME).tar.xz
+compile: $(BIN_DIR)/$(SDK_NAME).tar.zst
 install: compile
 
 clean:
-	rm -rf $(SDK_BUILD_DIR) $(BIN_DIR)/$(SDK_NAME).tar.xz
+	rm -rf $(SDK_BUILD_DIR) $(BIN_DIR)/$(SDK_NAME).tar.zst
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
