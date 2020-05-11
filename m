Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514B51CD8A0
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 13:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PVxN4n7UuIKDFPl14xQXa3JJf9do3Ipb6NW8LuHMQZg=; b=s3f06UKPudwrLS
	+pEgJIzyJ5DjeS6spUmF/QTqVutwHOQrVGodiDeU4bMlMYic9E4N826f4VuJ8Zl868i10cUBKUfeG
	QNSgikRj608K7ME1LVGQy3fuTZrV4X6KKwB3Rt/Pd88tSxrXeguB37+NpBeqAMumZAw4ADgZlYsHG
	XAJQexHRamXVDpJwqYNJxkZdirPQtaKTuNRJJ2jE/+dKjErCkqpbwrWeLZx14JrOg1HlZjOMrP1g4
	tg0xpXDK9fggiTQVhR40FMYid1AFdXiUC9cg7OFZ9EutUZrSNIKvXRarDG9MkPxRKlf3bBpBJp89e
	icQdpkHYhf9/tNHcBdfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6kN-0007F8-GE; Mon, 11 May 2020 11:37:23 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6kA-0007DP-6I
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 11:37:12 +0000
Received: from feckert.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 5B85B20CAE;
 Mon, 11 May 2020 11:37:09 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Jason@zx2c4.com,
	Eckert.Florian@googlemail.com,
	dedeckeh@gmail.com
Date: Mon, 11 May 2020 13:37:02 +0200
Message-Id: <20200511113702.10975-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_043710_382856_FAF1EFF0 
X-CRM114-Status: UNSURE (   9.33  )
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
Subject: [OpenWrt-Devel] [PATCH v2] wireguard-tools: fix version indicator
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

This had already led to confusion! To fix this, the version string of
the wireguard source code include file 'src/version.h' must be used. This
is achieved by removing version string generation from the
wireguard-tools src/Makefile during build.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---

v2: Update commit message

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
