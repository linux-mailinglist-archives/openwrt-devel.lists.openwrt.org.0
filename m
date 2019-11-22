Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF6F106962
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFBy6sqs8MHj7hMp2sIjykR0AtV5kt//XU+rVqIiSts=; b=NIbBjsIF3PWWCQ
	5THHIaMiDMcjJQiQgWbCkn6bmyO+/rWFWAmksk3kWpcIu359+JgYGzIeCyhZK4NzS6UlInCGn+Ma/
	kD63juefsWsupnealupk9sBtc4127sSeqJfjNzkR5EVjUewpYE9wDsqFUHbebwwK56MBMVXizxCNg
	VJRHXeA0alk7OEKnouOsdgYVYWq3OjEnajW+WUhUsan1FIhvWrDaZQ9vL6O0iL+bATu62yyB13qUn
	b1eTK3IzB1qrlOiG8h37LKE79qSRC2HINRS4QxZto7VYKUhG7VQYB4BvEL4vkhUWikBaItSLsmiZs
	LjitZ/3M5J90jN/1V2Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5hn-0000sG-Gs; Fri, 22 Nov 2019 09:58:23 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fW-0006kg-1N
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:05 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 31B33FF80B;
 Fri, 22 Nov 2019 09:56:00 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:49 +0100
Message-Id: <20191122095556.688191-5-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015602_367558_3BA44A01 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH packages 04/11] utils/audit: new package
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 utils/audit/Makefile                          | 125 ++++++++++++++++
 utils/audit/files/audit.init                  |  16 +++
 ...tue-functions-for-strndupa-rawmemchr.patch | 133 ++++++++++++++++++
 3 files changed, 274 insertions(+)
 create mode 100644 utils/audit/Makefile
 create mode 100644 utils/audit/files/audit.init
 create mode 100644 utils/audit/patches/0001-Add-substitue-functions-for-strndupa-rawmemchr.patch

diff --git a/utils/audit/Makefile b/utils/audit/Makefile
new file mode 100644
index 000000000..16ee560a1
--- /dev/null
+++ b/utils/audit/Makefile
@@ -0,0 +1,125 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=audit
+PKG_VERSION:=2.8.5
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=http://people.redhat.com/sgrubb/audit
+PKG_HASH:=0e5d4103646e00f8d1981e1cd2faea7a2ae28e854c31a803e907a383c5e2ecb7
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+PKG_FIXUP:=autoreconf
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/audit/Default
+  SECTION:=utils
+  TITLE:=Audit Daemon
+  URL:=http://people.redhat.com/sgrubb/audit/
+endef
+
+define Package/audit/Default/description
+	The audit package contains the user space utilities for
+	storing and searching the audit records generated by
+	the audit subsystem in the Linux 2.6 kernel
+endef
+
+define Package/libaudit
+$(call Package/audit/Default)
+  CATEGORY:=Libraries
+  TITLE+= (library)
+  DEPENDS:=+@KERNEL_AUDIT
+endef
+
+define Package/libaudit/description
+$(call Package/audit/Default/description)
+ This package contains the audit shared library.
+endef
+
+define Package/audit
+$(call Package/audit/Default)
+  CATEGORY:=Utilities
+  TITLE+= (daemon)
+  DEPENDS:= +libaudit
+endef
+
+define Package/audit/description
+$(call Package/audit/Default/description)
+ This package contains the audit daemon.
+endef
+
+CONFIGURE_VARS += \
+	LDFLAGS_FOR_BUILD="$(HOST_LDFLAGS)" \
+	CPPFLAGS_FOR_BUILD="$(HOST_CPPFLAGS)" \
+	CFLAGS_FOR_BUILD="$(HOST_CFLAGS)" \
+	CC_FOR_BUILD="$(HOSTCC)"
+
+CONFIGURE_ARGS += \
+	--without-libcap-ng \
+	--disable-systemd \
+	--without-python \
+	--without-python3 \
+	--disable-zos-remote
+
+ifeq ($(ARCH),aarch64)
+CONFIGURE_ARGS += --with-aarch64
+else ifeq ($(ARCH),arm)
+CONFIGURE_ARGS += --with-arm
+endif
+
+# We can't use the default, as the default passes $(MAKE_ARGS), which
+# overrides CC, CFLAGS, etc. and defeats the *_FOR_BUILD definitions
+# passed in CONFIGURE_VARS
+define Build/Compile
+	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH)
+endef
+
+define Build/Install
+	$(call Build/Install/Default,install)
+	$(SED) 's%^dispatcher *=.*%dispatcher = /usr/sbin/audispd%' $(PKG_INSTALL_DIR)/etc/audit/auditd.conf
+endef
+
+define Build/InstallDev
+	$(INSTALL_DIR) $(1)/usr/include
+	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
+	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
+	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
+endef
+
+define Package/libaudit/install
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so.* $(1)/usr/lib/
+	$(INSTALL_DIR) $(1)/etc
+	$(CP) $(PKG_INSTALL_DIR)/etc/libaudit.conf $(1)/etc/
+endef
+
+define Package/audit/install
+	$(INSTALL_DIR) $(1)/usr/bin
+	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
+	$(INSTALL_DIR) $(1)/usr/sbin
+	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/* $(1)/usr/sbin/
+	$(INSTALL_DIR) $(1)/etc/audit
+	$(CP) $(PKG_INSTALL_DIR)/etc/audit/* $(1)/etc/audit/
+	$(INSTALL_DIR) $(1)/etc/init.d
+	$(INSTALL_BIN) ./files/audit.init $(1)/etc/init.d/audit
+endef
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_CONFIGURE_ARGS += \
+        --without-python \
+        --without-python3 \
+        --disable-zos-remote \
+        --without-libcap-ng
+
+$(eval $(call HostBuild))
+$(eval $(call BuildPackage,libaudit))
+$(eval $(call BuildPackage,audit))
diff --git a/utils/audit/files/audit.init b/utils/audit/files/audit.init
new file mode 100644
index 000000000..4a9f53884
--- /dev/null
+++ b/utils/audit/files/audit.init
@@ -0,0 +1,16 @@
+#!/bin/sh /etc/rc.common
+# Copyright (c) 2014 OpenWrt.org
+
+START=11
+
+USE_PROCD=1
+PROG=/usr/sbin/auditd
+
+start_service() {
+	mkdir -p /var/log/audit
+	procd_open_instance
+	procd_set_param command "$PROG" -n
+	procd_set_param respawn
+	procd_close_instance
+	test -f /etc/audit/rules.d/audit.rules && /usr/sbin/auditctl -R /etc/audit/rules.d/audit.rules
+}
diff --git a/utils/audit/patches/0001-Add-substitue-functions-for-strndupa-rawmemchr.patch b/utils/audit/patches/0001-Add-substitue-functions-for-strndupa-rawmemchr.patch
new file mode 100644
index 000000000..ac292c57d
--- /dev/null
+++ b/utils/audit/patches/0001-Add-substitue-functions-for-strndupa-rawmemchr.patch
@@ -0,0 +1,133 @@
+From c39a071e7c021f6ff3554aca2758e97b47a9777c Mon Sep 17 00:00:00 2001
+From: Steve Grubb <sgrubb@redhat.com>
+Date: Tue, 26 Feb 2019 18:33:33 -0500
+Subject: [PATCH] Add substitue functions for strndupa & rawmemchr
+
+(cherry picked from commit d579a08bb1cde71f939c13ac6b2261052ae9f77e)
+Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+---
+ auparse/auparse.c   | 12 +++++++++++-
+ auparse/interpret.c |  9 ++++++++-
+ configure.ac        | 14 +++++++++++++-
+ src/ausearch-lol.c  | 12 +++++++++++-
+ 4 files changed, 43 insertions(+), 4 deletions(-)
+
+diff --git a/auparse/auparse.c b/auparse/auparse.c
+index 650db02..2e1c737 100644
+--- a/auparse/auparse.c
++++ b/auparse/auparse.c
+@@ -1,5 +1,5 @@
+ /* auparse.c --
+- * Copyright 2006-08,2012-17 Red Hat Inc., Durham, North Carolina.
++ * Copyright 2006-08,2012-19 Red Hat Inc., Durham, North Carolina.
+  * All Rights Reserved.
+  *
+  * This library is free software; you can redistribute it and/or
+@@ -1118,6 +1118,16 @@ static int str2event(char *s, au_event_t *e)
+ 	return 0;
+ }
+ 
++#ifndef HAVE_STRNDUPA
++static inline char *strndupa(const char *old, size_t n)
++{
++	size_t len = strnlen(old, n);
++	char *tmp = alloca(len + 1);
++	tmp[len] = 0;
++	return memcpy(tmp, old, len);
++}
++#endif
++
+ /* Returns 0 on success and 1 on error */
+ static int extract_timestamp(const char *b, au_event_t *e)
+ {
+diff --git a/auparse/interpret.c b/auparse/interpret.c
+index 51c4a5e..67b7b77 100644
+--- a/auparse/interpret.c
++++ b/auparse/interpret.c
+@@ -853,6 +853,13 @@ err_out:
+ 		return print_escaped(id->val);
+ }
+ 
++// rawmemchr is faster. Let's use it if we have it.
++#ifdef HAVE_RAWMEMCHR
++#define STRCHR rawmemchr
++#else
++#define STRCHR strchr
++#endif
++
+ static const char *print_proctitle(const char *val)
+ {
+ 	char *out = (char *)print_escaped(val);
+@@ -863,7 +870,7 @@ static const char *print_proctitle(const char *val)
+ 		// Proctitle has arguments separated by NUL bytes
+ 		// We need to write over the NUL bytes with a space
+ 		// so that we can see the arguments
+-		while ((ptr  = rawmemchr(ptr, '\0'))) {
++		while ((ptr  = STRCHR(ptr, '\0'))) {
+ 			if (ptr >= end)
+ 				break;
+ 			*ptr = ' ';
+diff --git a/configure.ac b/configure.ac
+index 6e345f1..6f3007e 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1,7 +1,7 @@
+ dnl
+ define([AC_INIT_NOTICE],
+ [### Generated automatically using autoconf version] AC_ACVERSION [
+-### Copyright 2005-18 Steve Grubb <sgrubb@redhat.com>
++### Copyright 2005-19 Steve Grubb <sgrubb@redhat.com>
+ ###
+ ### Permission is hereby granted, free of charge, to any person obtaining a
+ ### copy of this software and associated documentation files (the "Software"),
+@@ -72,6 +72,18 @@ dnl; posix_fallocate is used in audisp-remote
+ AC_CHECK_FUNCS([posix_fallocate])
+ dnl; signalfd is needed for libev
+ AC_CHECK_FUNC([signalfd], [], [ AC_MSG_ERROR([The signalfd system call is necessary for auditd]) ])
++dnl; check if rawmemchr is available
++AC_CHECK_FUNCS([rawmemchr])
++dnl; check if strndupa is available
++AC_LINK_IFELSE(
++  [AC_LANG_SOURCE(
++    [[
++      #define _GNU_SOURCE
++      #include <string.h>
++      int main() { (void) strndupa("test", 10); return 0; }]])],
++ [AC_DEFINE(HAVE_STRNDUPA, 1, [Let us know if we have it or not])],
++ []
++)
+ 
+ ALLWARNS=""
+ ALLDEBUG="-g"
+diff --git a/src/ausearch-lol.c b/src/ausearch-lol.c
+index 5d17a72..758c33e 100644
+--- a/src/ausearch-lol.c
++++ b/src/ausearch-lol.c
+@@ -1,6 +1,6 @@
+ /*
+ * ausearch-lol.c - linked list of linked lists library
+-* Copyright (c) 2008,2010,2014,2016 Red Hat Inc., Durham, North Carolina.
++* Copyright (c) 2008,2010,2014,2016,2019 Red Hat Inc., Durham, North Carolina.
+ * All Rights Reserved. 
+ *
+ * This software may be freely redistributed and/or modified under the
+@@ -152,6 +152,16 @@ static int compare_event_time(event *e1, event *e2)
+ 	return 0;
+ }
+ 
++#ifndef HAVE_STRNDUPA
++static inline char *strndupa(const char *old, size_t n)
++{
++	size_t len = strnlen(old, n);
++	char *tmp = alloca(len + 1);
++	tmp[len] = 0;
++	return memcpy(tmp, old, len);
++}
++#endif
++
+ /*
+  * This function will look at the line and pick out pieces of it.
+  */
+-- 
+2.21.0
+
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
