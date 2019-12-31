Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EED12D5F7
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 04:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZQdTF3usYM+IFUXlI1VlWmNhPVLaC0EJ90Drjp6Lk9k=; b=EpecqREeRCVN4c
	+FlAs/iKowOVupU+NoQ/5aEgDhPwYR0x5trFaTDVQmwWfl2v7DpZlKyYXZ3vg/qfPJfhGrL3gbwOP
	HRMvLGagAKDmk+H6EVKGFdQMKLlS+kcTYDU4z+3R3/U/PCdVj8UN4SiNTeMjc6Ml218bH/PFIc9u0
	NHde/ihipr+g5MFJJhs1eRy2b5tqeqpWJvpznJmsCXhqgqoalDcb0NGR2xO1opc3SWe19TWF2uZ6W
	rwnHgv4b9fu8WznQF3FanncvdrUHrZfXjSpiyFTbKanBFZIMFe5YQvwdzMesNEm/ZrjOGFsOYYMUH
	S9EBcfRildAPRBY9NVcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im88n-0000c5-Vu; Tue, 31 Dec 2019 03:24:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im88b-0000bS-0o
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 03:24:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id z124so18937949pgb.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 19:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=41b/MWcgnqyeWq4jX24kZHQlzLHV68k/ib4Tm0CA02Y=;
 b=r8D2M7Y+g4oG77YFoR/I2Pvv4zTj8o2rcl5niZfWrlUNDkapzFLayXvDzXhJwa2aTo
 9p4J+3WOL6g5XjN86EIsfgVnNFBhH3qyHmCXulC6+xTGKF2bOw8TMO0R7kwMXnNiqCV3
 NFGGRAHEKB8tldgW/RMd4vXlTEHG3cu/+5lhHacd80yCyReORwN+LVre50AdsKo4dtbs
 jgI7nosOrMDQh2/nVqti1gx/NEn10ZjtFh0unFt5Zbf705tU8UNrEtn++SmjAnUxVYOJ
 uLoKuXHdoYgZU9pcFPkNCBSc/xs+D7XHfBTositX/SWFjvohv4QX8gpaDsCvL8QLEJX5
 ktag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=41b/MWcgnqyeWq4jX24kZHQlzLHV68k/ib4Tm0CA02Y=;
 b=OIyNu5isGFuipKc0sEWZQqt0YhOH18ClWCxIVZx1VxDvpphUWdBXFDupSYHEf3Becx
 ILr9gQmY8PVs2QT7z9fb2DlsUnCpzWptFejDBR670fRl58kR/ZvXw51TLjBIx2IxmhMc
 oFU7DKTv3gKjWIe3rppQLxZMy6zIJ04Z1g9bOgLS48YY1rD1ufgVRcQqRoBoGQranLck
 3ZCjPRMGH+a2pEhigB0d+4cDnqI4xoXB+lHCsUWEa3JzVpPgLcH6ogrkFv3u/valeuuq
 aGdSt9M1VneVV5UofgYLkieecIvmhB2oFPz8Q+4uQi1oZJ5xXU/rsUeqXiVm8Vwc/wL1
 G8tg==
X-Gm-Message-State: APjAAAV8NnqMUlonQJjLqqx9PPVzCvLTWxOGmuRN5+6jzlzF+qRDE3SL
 k0c7ui16vK9d62++sA7yTibcJje5fLA=
X-Google-Smtp-Source: APXvYqxQVt87NKPJ9eyxpIssGEId0U1P+aJFrOGkHHfTunQ3wKQFv9MCfK2JAoHKyfEDVRbsUH68WA==
X-Received: by 2002:a63:f814:: with SMTP id n20mr74877797pgh.318.1577762643456; 
 Mon, 30 Dec 2019 19:24:03 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c14sm32286065pfn.8.2019.12.30.19.24.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 19:24:02 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 19:24:01 -0800
Message-Id: <20191231032401.79465-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_192405_085874_FBACCB56 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] trace-cmd: Fix compilation without
 fortify-headers
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

Upstream backport.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/devel/trace-cmd/Makefile              |  2 +-
 .../devel/trace-cmd/patches/120-limits.patch  | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 package/devel/trace-cmd/patches/120-limits.patch

diff --git a/package/devel/trace-cmd/Makefile b/package/devel/trace-cmd/Makefile
index 6d3fe53758..25831d8b1b 100644
--- a/package/devel/trace-cmd/Makefile
+++ b/package/devel/trace-cmd/Makefile
@@ -2,7 +2,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=trace-cmd
 PKG_VERSION:=v2.6.1
-PKG_RELEASE=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git/snapshot/
diff --git a/package/devel/trace-cmd/patches/120-limits.patch b/package/devel/trace-cmd/patches/120-limits.patch
new file mode 100644
index 0000000000..66e26b8934
--- /dev/null
+++ b/package/devel/trace-cmd/patches/120-limits.patch
@@ -0,0 +1,26 @@
+From 293ff6d5bc9d3b8bfbc3c57d20d3d2d00986c168 Mon Sep 17 00:00:00 2001
+From: Alexander Couzens <lynxis@fe80.eu>
+Date: Sun, 26 Nov 2017 05:22:51 +0100
+Subject: [PATCH] trace-cmd listen: Include limits.h to define PATH_MAX
+
+PATH_MAX is defined by limits.h. On some system it's also
+defined by dirent.h but not on musl.
+
+Signed-off-by: Alexander Couzens <lynxis@fe80.eu>
+Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
+---
+ trace-listen.c | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/trace-listen.c b/trace-listen.c
+index 871df0e7..8cc0c64b 100644
+--- a/trace-listen.c
++++ b/trace-listen.c
+@@ -23,6 +23,7 @@
+ #include <stdlib.h>
+ #include <string.h>
+ #include <getopt.h>
++#include <limits.h>
+ #include <sys/types.h>
+ #include <sys/socket.h>
+ #include <sys/wait.h>
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
