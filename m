Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BC66C449
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 03:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6FqVPhouQaXSUo0vZJozw1YmrOXshN6f9HOzyddtU5o=; b=uFeRjBNsmaAzmm
	JhW+HxSpb0pIPq+yn/1oqFFewziHGQpJiduMjM+3kFRvnWpxYyIv17OMexUz/aUkDuoLjw7dhvwi2
	Viv8lNagV33tFwMHHya40SNZ4WqMo1OkLLIXP9tGKCDwOXNf+TWMI+ZNeQYK3v/eROsgfVQ/dAOY+
	2blEgv/kMTwEyJR48WIYrsRegzl7u59DJguxzaljYEkbT8wjVxf10lMqj5QDC14dBZVwj+so6qLdc
	Ols6wDkpNl/tnQUnuBLsDRxssWr+sdVyX0h94k20UxlsIugku2zf7igkPanDaDO15CnZN3EmmDtwH
	v/fN/ETIbNmRjmbhVwKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvMU-00062M-4f; Thu, 18 Jul 2019 01:37:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvMG-00061Y-K8
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 01:37:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so11768429pfl.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 18:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=hvKFINO+uBpf8LcQ/4ZfCWz9VOm7+yFZubFHl3x/rQQ=;
 b=XIGj3cbfZMJHpuGFoeAHJxjqXb4FSRAn3xhPvtgmAfpo8vsM/KZ5e9er/Znq0JPwRv
 6hFM9VclcniKJZ/nbu6AMPSCDAYKvTeZ8N8HXIuOejS8440VNfiL6J8ht1DmZC2JFiN6
 mGqANz15PaSm/YTDSFgw+Qc2LRvaweOUdodWgmnuVRk82eOE5R73x8ddFKddxAJQX5WY
 BG18BdPxkouD/TTttoSlZ6vyNGSfRgrn1hYw4jspjTzaWJ7JxeZKnE6fm03wN6jHK5vT
 V1da9Ci4gmNl/SpJEgiq6spCpHdOlBuYNmdVjqSnyRXK0xP9c7iVaa9xlb3F2QjBHSji
 0DFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=hvKFINO+uBpf8LcQ/4ZfCWz9VOm7+yFZubFHl3x/rQQ=;
 b=U36FIQnA1VMIXgn401lqf14IIqrQF27rVcfPLXsr4TpM7v3+5BV6YFvPHI7TMOGJx6
 fzvdbgn+uvB3EvkB+yras9pXQZhA1rkSyD/AvuKUPN2nFcsRvz0FctJb/sNCrIoZ6ZFF
 hk8c5PdBYN8wk/hHQwU+JfMvzdJgF4UEJGO1Es6fREpJeojP9FcsXLfRll6kvj1uOSy0
 Ho3JtIj9+C9ZzGoTWubvG0sQ1Vnkm0CJSL/pmY162V+xFs2+mPvPolKQvJxGS2M1iiuZ
 bXx6wnnUw4VDA28YjFvEFMFCCIid0vj7779yXRiWrKl+IQvdqY8AYpAQzPgZ2EecGf9f
 oAfA==
X-Gm-Message-State: APjAAAXRHJjdSdtrAXU7qQf8PdJ1ZRzuP9jAHZeBF9tBsIH++clKna/b
 0003Cbz0sE3M1By2um2qZRtpvjn/Z5k=
X-Google-Smtp-Source: APXvYqz4q96t6xhmEFo44uyl9CUtcTGfWl6QMPtzgVMz5oqkru0ciicFeeQJWfisifk9DgQXr35DKQ==
X-Received: by 2002:a63:ff20:: with SMTP id k32mr44865419pgi.445.1563413839187; 
 Wed, 17 Jul 2019 18:37:19 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id q1sm38825697pfn.178.2019.07.17.18.37.18
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 18:37:18 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 18:37:17 -0700
Message-Id: <20190718013717.19341-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_183720_666977_B16C1599 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] linux-atm: Add missing headers
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This fixes compilation with -Werror=implicit-function-declaration.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/utils/linux-atm/Makefile      |  2 +-
 .../linux-atm/patches/700-musl-include.patch  | 30 +++++++++++++++++++
 2 files changed, 31 insertions(+), 1 deletion(-)
 create mode 100644 package/network/utils/linux-atm/patches/700-musl-include.patch

diff --git a/package/network/utils/linux-atm/Makefile b/package/network/utils/linux-atm/Makefile
index f2ad888e4e..c74febcbbc 100644
--- a/package/network/utils/linux-atm/Makefile
+++ b/package/network/utils/linux-atm/Makefile
@@ -10,7 +10,7 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=linux-atm
 PKG_VERSION:=2.5.2
-PKG_RELEASE:=6
+PKG_RELEASE:=7
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@SF/$(PKG_NAME)
diff --git a/package/network/utils/linux-atm/patches/700-musl-include.patch b/package/network/utils/linux-atm/patches/700-musl-include.patch
new file mode 100644
index 0000000000..2b2268d8ac
--- /dev/null
+++ b/package/network/utils/linux-atm/patches/700-musl-include.patch
@@ -0,0 +1,30 @@
+--- a/src/include/atmd.h
++++ b/src/include/atmd.h
+@@ -10,6 +10,7 @@
+ 
+ #include <stdint.h>
+ #include <stdio.h>
++#include <string.h>
+ #include <sys/types.h>
+ #include <sys/time.h>
+ 
+--- a/src/lib/unix.c
++++ b/src/lib/unix.c
+@@ -8,6 +8,7 @@
+ 
+ #include <stdlib.h>
+ #include <stdio.h>
++#include <string.h>
+ #include <unistd.h>
+ #include <errno.h>
+ #include <sys/types.h>
+--- a/src/sigd/kernel.c
++++ b/src/sigd/kernel.c
+@@ -8,6 +8,7 @@
+ 
+ #include <stdlib.h>
+ #include <stdio.h>
++#include <string.h>
+ #include <errno.h>
+ #include <assert.h>
+ 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
