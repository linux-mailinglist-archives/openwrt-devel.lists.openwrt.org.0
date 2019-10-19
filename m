Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DDFDD9B4
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 18:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pD3cwV1qcta7RLhrbKYFqrTPcfNg259zS+SmyDqxYqY=; b=C7sZG6JQwa5l1e
	V3EjLL1Lbr6z0hw+JNp4WQPrcglFrWRHNYwfuoFpeuNmUxUPcOyaTwAFJH07y5BKWVOJgM2W22DQv
	3yhbq6HSleqlpOHolp8zh/5ivcu558cEO+zy9wLGeb2rEJYB+SEfqeGwNBf6BR9gUAI5eh4fDQHVB
	Fc6Udd6Jp9K91mcCz8iEK9add/4perOvJjSUtD1l/xguTpkXe8+KC9Qp97DIvQhViYe9mWwXAwN3o
	8l+cEKsgpB7IkYr6bufIN2RAbcA7RoiVzBB30kI+Ec1n/iHKD/oqClh83l2l8QzmFMoR5ebSfUjMV
	/FqR5Rqg+Rjc9pRiR+Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLrwP-000880-9b; Sat, 19 Oct 2019 16:50:57 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLrwI-00087R-Qu
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 16:50:52 +0000
Received: from pepe-notebook.office.nic.cz (unknown
 [IPv6:2001:1488:fffe:6:119:a108:369e:b1c4])
 by mail.nic.cz (Postfix) with ESMTPSA id D022F141350
 for <openwrt-devel@lists.openwrt.org>; Sat, 19 Oct 2019 18:50:46 +0200 (CEST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 19 Oct 2019 18:50:44 +0200
Message-Id: <20191019165044.29934-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
 URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_095051_027523_A227F7BD 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list 2.0 SPOOFED_FREEMAIL       No description available.
Subject: [OpenWrt-Devel] [PATCH] strace: update to version 5.3
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

Makefile changes:
- moves PKG_MAINTAINER above PKG_LICENSE
- Change PKG_LICENSE to LGPL-2.1-or-later and correct PKG_LICENSE_FILES
- changes URL to a more appropriate one, which uses HTTPS
- adds 2 spaces as an indentation in description

Compile and run tested on Turris Omnia, mvebu

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/devel/strace/Makefile | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/package/devel/strace/Makefile b/package/devel/strace/Makefile
index 2d4332bf79..950dafc5d9 100644
--- a/package/devel/strace/Makefile
+++ b/package/devel/strace/Makefile
@@ -9,18 +9,17 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=strace
-PKG_VERSION:=5.0
+PKG_VERSION:=5.3
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://strace.io/files/$(PKG_VERSION)
-PKG_HASH:=3b7ad77eb2b81dc6078046a9cc56eed5242b67b63748e7fc28f7c2daf4e647da
-
-PKG_LICENSE:=BSD-3c
-PKG_LICENSE_FILES:=COPYRIGHT
-PKG_CPE_ID:=cpe:/a:paul_kranenburg:strace
+PKG_HASH:=6c131198749656401fe3efd6b4b16a07ea867e8f530867ceae8930bbc937a047
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
+PKG_LICENSE:=LGPL-2.1-or-later
+PKG_LICENSE_FILES:=COPYING
+PKG_CPE_ID:=cpe:/a:paul_kranenburg:strace
 
 PKG_FIXUP:=autoreconf
 PKG_INSTALL:=1
@@ -47,13 +46,13 @@ define Package/strace
   SECTION:=utils
   CATEGORY:=Utilities
   TITLE:=System call tracer
+  URL:=https://strace.io/
   DEPENDS:=+STRACE_LIBDW:libdw +STRACE_LIBUNWIND:libunwind
-  URL:=http://strace.sourceforge.net/
 endef
 
 define Package/strace/description
-A useful diagnostic, instructional, and debugging tool. Allows you to track what
-system calls a program makes while it is running.
+  A useful diagnostic, instructional, and debugging tool. Allows you to track what
+  system calls a program makes while it is running.
 endef
 
 define Package/strace/config
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
