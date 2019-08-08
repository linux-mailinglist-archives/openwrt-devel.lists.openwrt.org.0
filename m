Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249B38693F
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 21:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bvbFWXwCRAs6mdIp2r3GWJVLifAyZ2UjGCJq1pZnQLI=; b=WXih3IlwODNhMj
	m5GIyyo360IQy95N1pJ2Q1yDLkZJ+OV1T+yyU4JhCZqca8UoopCWjduLKObkWAgFBTY7OeiAo//MM
	IGyqg55QDl8EisifIesQ4j2BeQmcQ1DWOxyz3BIo2Qi/6JiR3I3W6GUAN2qfr+RKJrXo4omSfWeHs
	Ni75MQoIIHgmMQUEYP2UyKyA0d6jgoa4Z3bjc0mxR3hsE4s7Fi1ojBzj2sGnSgo/c3cBx9r/6uZIS
	+ulK15mEjV81h1MLfaDRVQQYH4j/YUFIvQrsMD1ojngOtwgfVev69fvfGWAlYhnLu81nhQ3KFFVeB
	qlsmbBAgl73prD90xfAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnfI-0004Mx-F1; Thu, 08 Aug 2019 19:01:32 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnfA-0004L0-8q
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 19:01:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so43960711plb.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 08 Aug 2019 12:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=njE0bT90ySlcj1lkZJXoGBt5oFtxfqbOTnBprJtKmYc=;
 b=WsCxNg/iKOZRA0R/JgdZisa6Y2VLGBv3fcmAYrYUD5SAUEvsUAWENIghoISwxwV4S2
 PidOSmVQFErXM0p+ZCF8rAah+IsD1qHjxovrWaA692v5Tp9EigfpHZchydTv65wmQWMq
 9D/MAOyDck2Su9RXlwOEzGszzJNOF12HyRLotsVq2nKNN6ptxQsYMuvl2T/DneM15hgp
 9QtKiK6BQhQEzGkMG3vVrIlMdpTxlQl0cnEQxW//7P7PukfU0BSenLCsSCAWNcvXw/JK
 /gdHncHqWlGps4tM241qAsbUHSB8ztzWJomf+gJVLhOacaSYc51XcFdJRPGuZ63vrDVo
 1XbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=njE0bT90ySlcj1lkZJXoGBt5oFtxfqbOTnBprJtKmYc=;
 b=sHbuvzYX83JOolIAP/bguQebZF/yEgXL3SfU3ReUzbAv6wn7QchHUo2NrUBRHMPzFC
 S1EbKTp+KXBXXOym50uAE/xvwmVpYdu54HtCWfteNbNHBwZ1rc73mhCSNe9GCt0aKhnx
 dmLFk8IyRIH75yZxFX16nb4R1y9mXpLAlFY1DbK03H3P/yMDhn/K74x1FYubZOzZzaC8
 qzdBr0egDa85sG06uoqaQHnvE0vAMzCzexJDxIc37oFdhObvGRVKtcFkrrRdNBcJSy5l
 QwHto0O95cFHL4daKf3Hm0UKI5kzhmJBCE+zOi8igzMakJuZtoB5kcCUprXJbWdboOoQ
 Z0Ug==
X-Gm-Message-State: APjAAAV3b3aW1zPaTqOqfAjipsrwLawNv16u+ZDwLGC2LhddW0G5exEJ
 D/uhHwF0ZnbtTv87Z+M5hORrw2x14c4=
X-Google-Smtp-Source: APXvYqwRpkSCbHZeKq/J1t+G0V20jgGxnxFScWr7Fa6m24ytsithZeoDHKDQNZb32ufxhagokb/dCg==
X-Received: by 2002:a17:902:684f:: with SMTP id
 f15mr15321961pln.332.1565290883074; 
 Thu, 08 Aug 2019 12:01:23 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id s11sm100631602pgv.13.2019.08.08.12.01.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 12:01:22 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  8 Aug 2019 12:01:21 -0700
Message-Id: <20190808190121.10128-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_120124_344649_C1277C0C 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] bzip2: Update to 1.0.8
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

It seems bzip2 was abandoned by the author and adopted by the sourceware
people. The last release of bzip2 was from 2010.

Several security bugs were fixed as well as others.

Fixed up PKG_LICENSE to be compatible with SPDX.

Changed URLs to point to the new home.

Added patch that gets rid of deprecated utime function and switches it to
utimensat.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/bzip2/Makefile                  | 15 +++++------
 .../bzip2/patches/010-CVE-2016-3189.patch     | 11 --------
 .../utils/bzip2/patches/020-no-utime.patch    | 27 +++++++++++++++++++
 3 files changed, 34 insertions(+), 19 deletions(-)
 delete mode 100644 package/utils/bzip2/patches/010-CVE-2016-3189.patch
 create mode 100644 package/utils/bzip2/patches/020-no-utime.patch

diff --git a/package/utils/bzip2/Makefile b/package/utils/bzip2/Makefile
index 9c64d2264a..7ae089f4f4 100644
--- a/package/utils/bzip2/Makefile
+++ b/package/utils/bzip2/Makefile
@@ -8,16 +8,15 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=bzip2
-PKG_VERSION:=1.0.6
-PKG_RELEASE:=5
+PKG_VERSION:=1.0.8
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_SOURCE_URL:=http://distfiles.gentoo.org/distfiles/ \
-	http://distcache.freebsd.org/ports-distfiles/
-PKG_HASH:=a2848f34fcd5d6cf47def00461fcb528a0484d8edef8208d6d2e2909dc61d9cd
-PKG_MAINTAINER:=Steven Barth <cyrus@openwrt.org>
+PKG_SOURCE_URL:=https://sourceware.org/pub/bzip2
+PKG_HASH:=ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269
 
-PKG_LICENSE:=BZIP2
+PKG_MAINTAINER:=Steven Barth <cyrus@openwrt.org>
+PKG_LICENSE:=bzip2-1.0.8
 PKG_LICENSE_FILES:=LICENSE
 PKG_CPE_ID:=cpe:/a:bzip:bzip2
 
@@ -26,7 +25,7 @@ include $(INCLUDE_DIR)/package.mk
 
 define Package/bzip2/Default
   SUBMENU:=Compression
-  URL:=http://www.bzip.org/
+  URL:=https://sourceware.org/bzip2/
 endef
 
 define Package/libbz2
diff --git a/package/utils/bzip2/patches/010-CVE-2016-3189.patch b/package/utils/bzip2/patches/010-CVE-2016-3189.patch
deleted file mode 100644
index 064f982c48..0000000000
--- a/package/utils/bzip2/patches/010-CVE-2016-3189.patch
+++ /dev/null
@@ -1,11 +0,0 @@
-diff -up ./bzip2recover.c.old ./bzip2recover.c
---- ./bzip2recover.c.old	2016-03-22 08:49:38.855620000 +0100
-+++ ./bzip2recover.c	2016-03-30 10:22:27.341430099 +0200
-@@ -457,6 +457,7 @@ Int32 main ( Int32 argc, Char** argv )
-             bsPutUChar ( bsWr, 0x50 ); bsPutUChar ( bsWr, 0x90 );
-             bsPutUInt32 ( bsWr, blockCRC );
-             bsClose ( bsWr );
-+            outFile = NULL;
-          }
-          if (wrBlock >= rbCtr) break;
-          wrBlock++;
diff --git a/package/utils/bzip2/patches/020-no-utime.patch b/package/utils/bzip2/patches/020-no-utime.patch
new file mode 100644
index 0000000000..9eea15554e
--- /dev/null
+++ b/package/utils/bzip2/patches/020-no-utime.patch
@@ -0,0 +1,27 @@
+--- a/bzip2.c
++++ b/bzip2.c
+@@ -69,7 +69,6 @@
+ #if BZ_UNIX
+ #   include <fcntl.h>
+ #   include <sys/types.h>
+-#   include <utime.h>
+ #   include <unistd.h>
+ #   include <sys/stat.h>
+ #   include <sys/times.h>
+@@ -1051,12 +1050,12 @@ void applySavedTimeInfoToOutputFile ( Char *dstName )
+ {
+ #  if BZ_UNIX
+    IntNative      retVal;
+-   struct utimbuf uTimBuf;
++   struct timespec uTimBuf[2] = {};
+ 
+-   uTimBuf.actime = fileMetaInfo.st_atime;
+-   uTimBuf.modtime = fileMetaInfo.st_mtime;
++   uTimBuf[0].tv_sec = fileMetaInfo.st_atime;
++   uTimBuf[1].tv_sec = fileMetaInfo.st_mtime;
+ 
+-   retVal = utime ( dstName, &uTimBuf );
++   retVal = utimensat ( AT_FDCWD, dstName, uTimBuf , 0 );
+    ERROR_IF_NOT_ZERO ( retVal );
+ #  endif
+ }
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
