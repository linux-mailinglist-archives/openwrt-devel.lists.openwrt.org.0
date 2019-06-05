Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6632435701
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 08:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sw3NfypT/RAcdeVpTavKVlBebO4R5it4eQtqmxHs0IY=; b=RmzVas9EkOiqBp
	XUtuFl1LN15+IH3TLvDglpGHDUzw9cLt69GGY3sBKmixmBhmi+FDf9wtsDidmHuG61uPtjEjsuoPK
	WoraOdNLBp2L2YspVV5WuvXsKHqWhFVp8x07JMarTTfK4j8yZV2yf5d77bAWYqnDTLu7tbKICad9V
	vM1ZRsj3wxWvPjScsnTw4qvfIWtbMr7IkPgJXAWWdCtQlvCgAY+D+VC+/iZL0/s691rWaZ06herXv
	urz6d7POwgC3zEVzT7m8xCv9HoWgVGTnJxy72v8BQnSWAUtIfMkkCvKeFnct75x6vePX5qOtPUCbm
	9V5KM4Mcx8uQvngmDt0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPTl-0004zE-V7; Wed, 05 Jun 2019 06:32:57 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPTf-0004yH-Nc
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 06:32:53 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=bertha.fritz.box) by ds12 with esmtpa (Exim 4.89)
 (envelope-from <john@phrozen.org>)
 id 1hYPTb-0007c8-LA; Wed, 05 Jun 2019 08:32:47 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Jun 2019 08:32:38 +0200
Message-Id: <20190605063239.27540-1-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_233251_936181_7E47C1A5 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH V2 1/2] image: make the folder that gets
 included intot he RootFS configurable
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This allows managing several different folder for varying env profiles.

Signed-off-by: John Crispin <john@phrozen.org>
---
 config/Config-images.in | 6 ++++++
 package/Makefile        | 7 +++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/config/Config-images.in b/config/Config-images.in
index 8548c7cd24..a618da1b6c 100644
--- a/config/Config-images.in
+++ b/config/Config-images.in
@@ -286,4 +286,10 @@ menu "Target Images"
 		  it will be mounted by PARTUUID which makes the kernel find the
 		  appropriate disk automatically.
 
+	config TARGET_ROOTFS_INCLUDE_FOLDER
+		string "RootFS include folder"
+		default "files"
+		help
+		  Override the folder that is included into the RootFS by default.
+
 endmenu
diff --git a/package/Makefile b/package/Makefile
index abbf5f91f2..9899d4b48a 100644
--- a/package/Makefile
+++ b/package/Makefile
@@ -32,6 +32,10 @@ ifneq ($(IGNORE_ERRORS),)
   $(curdir)/builddirs-ignore-host-compile := $(package-ignore-subdirs)
 endif
 
+ifeq ($(CONFIG_TARGET_ROOTFS_INCLUDE_FOLDER),"")
+CONFIG_TARGET_ROOTFS_INCLUDE_FOLDER:=files
+endif
+
 PACKAGE_INSTALL_FILES:= \
 	$(foreach pkg,$(sort $(package-y)), \
 		$(foreach variant, \
@@ -75,8 +79,7 @@ $(curdir)/install: $(TMP_DIR)/.build $(curdir)/merge $(if $(CONFIG_TARGET_PER_DE
 	done || true
 
 	$(CP) $(TARGET_DIR) $(TARGET_DIR_ORIG)
-
-	$(call prepare_rootfs,$(TARGET_DIR),$(TOPDIR)/files)
+	$(call prepare_rootfs,$(TARGET_DIR),$(TOPDIR)/$(call qstrip, $(CONFIG_TARGET_ROOTFS_INCLUDE_FOLDER)))
 
 $(curdir)/index: FORCE
 	@echo Generating package index...
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
