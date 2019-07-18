Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F8D6C439
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 03:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZ41+2k8bqdTnDOnbjOsEQPJLH4drzErhPLZTGHZhVY=; b=oXeyuMlpqX/Rpv
	n/Cd1xaNG1pIA8kzs6CxhwRRlHrEm+cuyy0oqLcbTNoZNfHAcYGg5o8dZ8IpChErV8JHLWxLQ6s52
	9o+0LtEs0++AMxHUQULiN9P+EYcAZnbSsfWBnhO1oUgJVOl1Dui/fpRjfRQt0tCEiOjD4/rCwYLL9
	E6oeZ4KQCSVhRbisYCTYlkUW3IughKLc18bAvdnPj7TxPO+I+A+hiBtOvriDpiqsPfWsyUaIoF3Z3
	ezRGgBNrAg6+9vXoivmyyEql6OjwMCergc9ohMfbsjrF7vwWlpo3pSQoWqajhM6+ZvuEV+seR8/C5
	aAec8IY9LPk/6BRPqx+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvFb-0003n8-Pq; Thu, 18 Jul 2019 01:30:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvFD-0002iU-L7
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 01:30:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so12951845plb.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 18:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=XG3XNtBY00sBEnNdGdZzZDaLqT9mMnffoh+GSb641/Q=;
 b=kcNm90iRTvd0vDMD37k2bIdhyRY1zvOGb0tZDI6AD3QAn9NVX3/9SbbXxZJDYstOKI
 YTztZrZ/EnC1H8Neb3iarPrZWWILhDvq/po3vbGKrI0eW600LOdWhwZ93K+arnU+gGzM
 sDXTur3AL1J52ZHA50LQkwl78ZFnQ21Rv/noiy39NoT3bFukQF6fBHMIKS+G3FbpmmNp
 ArVQlSPuIPD+bh7+rErJWkDe+nGqL4o9PdoJmMhR8iisljjV7oZyOS2P9PQ7M2DnUrBv
 Kx0ipOVzHEBtccVNep29dVz1fYa06EE6GgaRZaCdWx/ta71DMJjcv4YLTkNvSY7nNhZq
 lX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=XG3XNtBY00sBEnNdGdZzZDaLqT9mMnffoh+GSb641/Q=;
 b=ZtBHlala8/5K3HO+FUBZnpoHRnNMZD2eIk0ZSqcLyU75mU199sSPW19lcItmYQVA75
 q7DfWMeATC10hpHchgq6YHeIoJf9ldr8virkd1L+/d+QPfl0w2ZF1Aetehs570WOWswd
 ZPv8I5xcdEt6/rsTzgs5iCVnpWtJCRbHP9xjnpHA4LDy+Ao5nzJJnYzyO/gjnpAtakSs
 OWkvU2fKARD8GWouBkgHSLBYiUw0MkzTBHe0X0vNaSMqJtuprkE6xRmDTiUDbqqgQ730
 vjj0Oz0vjoVNvB77U3pWfwRSJEiyQnd3Fm14xhVJVz1mwfmO+DzM4LT2hrnHxFsAHSMZ
 UCng==
X-Gm-Message-State: APjAAAXln0x7v7nAzaUYpURZG/sHBLjn3fVKKidtaLZonrSxNBA6VGGi
 /AnN1PR9PvE8DeAv3/DWxAYqBGTAyh8=
X-Google-Smtp-Source: APXvYqz4yKc/dYLkygJEL9rK28RIit6RkESc+kHayb1TXgYBWi8z1UxeqmeiXfIKP8jtDWVq99X4yw==
X-Received: by 2002:a17:902:2884:: with SMTP id
 f4mr46177689plb.286.1563413402217; 
 Wed, 17 Jul 2019 18:30:02 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id y10sm26538694pfm.66.2019.07.17.18.30.01
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 18:30:01 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 18:30:00 -0700
Message-Id: <20190718013000.18102-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_183003_723398_B3933E5E 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] util-linux: Fix widechar check
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

Patch is an upstream backport.

Fixes compilation when -Werror=implicit-function-declaration is passed.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/util-linux/Makefile             |  2 +-
 .../util-linux/patches/010-stdlib.h.patch     | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 package/utils/util-linux/patches/010-stdlib.h.patch

diff --git a/package/utils/util-linux/Makefile b/package/utils/util-linux/Makefile
index 261a9615ef..3ce6354ec3 100644
--- a/package/utils/util-linux/Makefile
+++ b/package/utils/util-linux/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=util-linux
 PKG_VERSION:=2.34
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/linux/utils/$(PKG_NAME)/v2.34
diff --git a/package/utils/util-linux/patches/010-stdlib.h.patch b/package/utils/util-linux/patches/010-stdlib.h.patch
new file mode 100644
index 0000000000..49745c7dc7
--- /dev/null
+++ b/package/utils/util-linux/patches/010-stdlib.h.patch
@@ -0,0 +1,26 @@
+From 1632856ef19efb50c57c939b82a9ff712b3c0b09 Mon Sep 17 00:00:00 2001
+From: Florian Weimer <fweimer@redhat.com>
+Date: Fri, 5 Jul 2019 17:20:27 +0200
+Subject: [PATCH] build-sys: Include <stdlib.h> in ./configure wchar_t test
+
+Without #include <stdlib.h>, this configure check fails for strict
+C99/C11 compilers which do not support implicit function declarations
+(which are a C90 feature removed from C99).
+
+Signed-off-by: Karel Zak <kzak@redhat.com>
+---
+ configure.ac | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/configure.ac b/configure.ac
+index a840e20ee..997b6388c 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -752,6 +752,7 @@ UL_REQUIRES_COMPILE([widechar], [[
+   #include <wchar.h>
+   #include <wctype.h>
+   #include <stdio.h>
++  #include <stdlib.h>
+   ]], [[
+     wchar_t wc;
+     wint_t w;
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
