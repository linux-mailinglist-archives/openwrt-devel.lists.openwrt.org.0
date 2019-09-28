Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9F3C1233
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 23:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TFrF3/qxYoRG/Cocr6QQ8M68RmZCTynDHZd/tDWnDt8=; b=SQUfw8VT27/KCc
	a5fBKLgDOHH+wQMiEIK6Y03dpt4i1tcsdFCJxPMVbkfifDaSIrpAgtr42ezapLVwFT+GNgk+/1UNO
	+vHHzU+ctYEbBqJ/iekwq5iYKgyGmqadm8oK6DmdUtxLdA3goC3Plqckh6gBpiNYVPCb+KAGWRN+A
	yPcTBD6PzQkCMzIGOw9y6FVrHw8pvwYkicEaN99RGoJYdC7sr/CxXHq3zPX4DjPAHtOWdSgcxtJUF
	sIp/PlIwj58PI+kQiEyb5ewWttdzACMXAXzzx7mig5bnhTNhjpcSyxnG5nZQS60CTYI6a9aCP7C2e
	SGBpg0cnYWZY5SKWckdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEK1V-0007tP-3c; Sat, 28 Sep 2019 21:13:01 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEK1K-0007t6-Vg
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 21:12:52 +0000
X-Originating-IP: 141.239.155.86
Received: from localhost.localdomain (udp077727uds.hawaiiantel.net
 [141.239.155.86]) (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id CA8E6240002;
 Sat, 28 Sep 2019 21:12:36 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Sep 2019 11:12:21 -1000
Message-Id: <20190928211221.20857-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_141251_169100_4D58630D 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] rules: allow arbitrary log destination
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

Add option BUILD_LOG_DIR to menuconfig to change log destination.

The mix-up of *DIR* and *FOLDER* is confusing however.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 config/Config-devel.in | 7 +++++++
 rules.mk               | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/config/Config-devel.in b/config/Config-devel.in
index fd7c3ead1e..70ec0ce9a7 100644
--- a/config/Config-devel.in
+++ b/config/Config-devel.in
@@ -105,6 +105,13 @@ menuconfig DEVEL
 		help
 		  If enabled, log files will be written to the ./log directory.
 
+	config BUILD_LOG_DIR
+		string "Log folder" if DEVEL
+		default ""
+		help
+		  Store build logs in this directory.
+		  If not set, uses './logs'
+
 	config SRC_TREE_OVERRIDE
 		bool "Enable package source tree override" if DEVEL
 		help
diff --git a/rules.mk b/rules.mk
index 80cb3d63f4..b140fbca70 100644
--- a/rules.mk
+++ b/rules.mk
@@ -159,7 +159,7 @@ TARGET_ROOTFS_DIR?=$(if $(call qstrip,$(CONFIG_TARGET_ROOTFS_DIR)),$(call qstrip
 TARGET_DIR:=$(TARGET_ROOTFS_DIR)/root-$(BOARD)
 STAGING_DIR_ROOT:=$(STAGING_DIR)/root-$(BOARD)
 STAGING_DIR_IMAGE:=$(STAGING_DIR)/image
-BUILD_LOG_DIR:=$(TOPDIR)/logs
+BUILD_LOG_DIR:=$(if $(call qstrip,$(CONFIG_BUILD_LOG_DIR)),$(call qstrip,$(CONFIG_BUILD_LOG_DIR)),$(TOPDIR)/logs)
 PKG_INFO_DIR := $(STAGING_DIR)/pkginfo
 
 BUILD_DIR_HOST:=$(if $(IS_PACKAGE_BUILD),$(BUILD_DIR_BASE)/hostpkg,$(BUILD_DIR_BASE)/host)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
