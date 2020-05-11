Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F49C1CD871
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 13:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tKb4kTUVo4CY8KMb4NAv9vOI12z9WZ3tC2jiSkc8Eew=; b=Eoy9GVmS538idl
	oypg1IprChd+q19bOdt176XkGTecRGRQ6XAWLINc0LJ3Lb8eiGMkIfG0XubDhwlcccyW8HRZyauhi
	FJqtIuu7HbRcKMqQaduTiPk5NUQiJCd5abQaVOLsd8xqr4rPuWdrGKZYq9DkPeWc1WbggGO+CVWlF
	V+FcE3oT/qKRIGZlAU4L91v2SAqinHZ3pZoQqpCPrjcLDVKuxKcSxAHBLEoG3e9AmtVewOxLQlcVf
	P+RkT/nk2UvWfKv3s1eSaCbn+zEVVTNhmkWWzgD/tucBIQ4Cz42boV5SIhhMfJR5uglm64c0dPVbl
	p8t5RycZHU+ihW3KCzOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6di-0003eP-4n; Mon, 11 May 2020 11:30:30 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6dC-00019B-Oe
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 11:30:00 +0000
Received: from feckert.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id E396C20CAE;
 Mon, 11 May 2020 11:29:44 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Jason@zx2c4.com,
	Eckert.Florian@googlemail.com,
	dedeckeh@gmail.com
Date: Mon, 11 May 2020 13:29:33 +0200
Message-Id: <20200511112933.10238-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042958_958849_4A7FDE04 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] [PATCH] wireguard-tools: fix version indicator
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
Cc: openwrt-devel@lists.openwrt.org, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

If we execute `wg --version` we get a diffrent version string that does
not match with the version string in the openwrt makefile.

Current version string:
`wireguard-tools vreboot-13159-gac5caa2718 -https://git.zx2c4.com/wireguard-tools/`

Corrected versions string:
`wireguard-tools v1.0.20200319 - https://git.zx2c4.com/wireguard-tools/`

This had already led to confusion! To fix this the versions string from
the wireguard source include file `src/version.h` is now used by
removeing the version string generation from the wireguard-tools makefile.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/network/utils/wireguard-tools/Makefile      |  2 +-
 .../patches/0001-wireguard-tools-fix-version.patch  | 13 +++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)
 create mode 100644 package/network/utils/wireguard-tools/patches/0001-wireguard-tools-fix-version.patch

diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
index 549329509a..4ccb6dd2cf 100644
--- a/package/network/utils/wireguard-tools/Makefile
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/kernel.mk
 PKG_NAME:=wireguard-tools
 
 PKG_VERSION:=1.0.20200319
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
diff --git a/package/network/utils/wireguard-tools/patches/0001-wireguard-tools-fix-version.patch b/package/network/utils/wireguard-tools/patches/0001-wireguard-tools-fix-version.patch
new file mode 100644
index 0000000000..b5ee60ac6d
--- /dev/null
+++ b/package/network/utils/wireguard-tools/patches/0001-wireguard-tools-fix-version.patch
@@ -0,0 +1,13 @@
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -46,10 +46,6 @@ CFLAGS += -DRUNSTATEDIR="\"$(RUNSTATEDIR
+ ifeq ($(DEBUG),yes)
+ CFLAGS += -g
+ endif
+-WIREGUARD_TOOLS_VERSION = $(patsubst v%,%,$(shell GIT_CEILING_DIRECTORIES="$(PWD)/../.." git describe --dirty 2>/dev/null))
+-ifneq ($(WIREGUARD_TOOLS_VERSION),)
+-CFLAGS += -D'WIREGUARD_TOOLS_VERSION="$(WIREGUARD_TOOLS_VERSION)"'
+-endif
+ ifeq ($(PLATFORM),haiku)
+ LDLIBS += -lnetwork -lbsd
+ endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
