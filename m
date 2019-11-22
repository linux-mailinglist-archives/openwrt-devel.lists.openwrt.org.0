Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A75010696D
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 11:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcX0oNmffsi0UC757WbqvEvpUesFc2HUftHHHnms6Ao=; b=PjEsFeDfRHUcx4
	tGGzbpquefF3Kz+OtzWZr2D9tvrqXuhix/thRTvgbpSiro+c0TuVA4uaNcJyb+TH8ctS27GzZNmct
	udbi6zpX2JNylTqWypMoyCWVqs7sz/FmMjf/DhDS/q4LtopC0uRWuDwsMyhE4XVZZMbwLqg9hJxzp
	a3LR2a1Rx6WX9gdc7EvjLqJaBLBQ5/IclJS7FnzhR2MFYlcwmFGkIN0wzgaLnJER83pfoJp/2utlo
	tqj6QTYgVB8ICWtj4gKzV1QPtdFRQnEQ1Ux/OtjRXfxgjfIq3RGfdis88ojjH+Q6idP0YRkqpTYZr
	QH26fDG3ydLW+TLHbUHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5jw-0004Ts-Sx; Fri, 22 Nov 2019 10:00:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5gH-0007dk-IJ
 for openwrt-devel@bombadil.infradead.org; Fri, 22 Nov 2019 09:56:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ws1DQPFZD5N8JuZmVDesw4puDshhDKrYk4br/IPEtDU=; b=LVBetTrCc/8ue1Gzo+b3BplqyU
 CQ0jRa8SWKRivK282XqavYM0ut3lBkxkgvUjbk7A4L6ScDzOO/k/wiW+WrY40dx4teRdy2iX1eWZv
 TrRIUsxYcdx967iLyI/RdQ8oFU6nGBXiSe1aPC/SdztIiOumX3fnM7dwUlLXBXHxtQZON7OAe1/LH
 vjeEpVDhSNCfhPw5FROsApAkXV3DyUubuhpqfBYkHhzub4tcHSCTcdy1oJ/HQNoOK3HLlzM5uBfV8
 rMhZWvEcM9XaaULjR5vvDz3rPx1WT/PJrZ0x62yoLiO5YaVAYnRF0nwVxwHYVQBRUPl1Xg7LjB9ZG
 lP9g2NFw==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5gn-00044Z-AB
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:57:24 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 98D671BF203;
 Fri, 22 Nov 2019 09:56:03 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:56 +0100
Message-Id: <20191122095556.688191-12-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_095721_440347_81B9CE86 
X-CRM114-Status: GOOD (  22.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH packages 11/11] utils/selinux-python: new
 package
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
 utils/selinux-python/Makefile                 | 155 ++++++++++++++++++
 .../0001-sepolgen-adjust-data_dir.patch       |  26 +++
 ...hardcode-search-for-ausearch-in-sbin.patch |  38 +++++
 .../0003-Don-t-force-using-python3.patch      |  67 ++++++++
 4 files changed, 286 insertions(+)
 create mode 100644 utils/selinux-python/Makefile
 create mode 100644 utils/selinux-python/patches/0001-sepolgen-adjust-data_dir.patch
 create mode 100644 utils/selinux-python/patches/0002-sepolgen-don-t-hardcode-search-for-ausearch-in-sbin.patch
 create mode 100644 utils/selinux-python/patches/0003-Don-t-force-using-python3.patch

diff --git a/utils/selinux-python/Makefile b/utils/selinux-python/Makefile
new file mode 100644
index 000000000..4fd0376b6
--- /dev/null
+++ b/utils/selinux-python/Makefile
@@ -0,0 +1,155 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=selinux-python
+PKG_VERSION:=2.9
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://github.com/SELinuxProject/selinux/releases/download/20190315
+PKG_HASH:=3650b5393b0d1790cac66db00e34f059aa91c23cfe3c2559676594e295d75fde
+PKG_BUILD_DEPENDS:=PACKAGE_selinux-audit2allow:libsepol
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+include $(INCLUDE_DIR)/package.mk
+include ../../lang/python/python-package.mk
+
+#
+# common definitions
+#
+
+define Package/selinux-python/Default
+  SECTION:=utils
+  DEPENDS:=+python +python-libselinux
+  CATEGORY:=Utilities
+  URL:=http://selinuxproject.org/page/Main_Page
+endef
+
+define Package/selinux-python/Default/description
+	A set of SELinux tools written in python that help with
+	managing a system with SELinux enabled.
+endef
+
+MAKE_VARS = \
+	PYTHON=$(HOST_PYTHON_BIN) \
+	PYTHONLIBDIR=$(PYTHON_PKG_DIR)
+
+define Build/Compile
+	$(call Build/Compile/Default,all)
+endef
+
+#
+# selinux-audit2allow
+#
+
+define Package/selinux-audit2allow
+$(call Package/selinux-python/Default)
+  TITLE:=selinux-audit2allow
+  DEPENDS:=+python-sepolgen +libsepol
+endef
+
+define Package/selinux-audit2allow/description
+$(call Package/selinux-python/Default/description)
+  This package contains the audit2allow and audit2why tools.
+endef
+
+define Package/selinux-audit2allow/install
+	$(MAKE_VARS) $(MAKE) -C $(PKG_BUILD_DIR)/audit2allow DESTDIR=$(1) install
+	rm -rf $(1)/usr/share/man
+endef
+
+#
+# selinux-chchat
+#
+
+define Package/selinux-chcat
+$(call Package/selinux-python/Default)
+  TITLE:=selinux-chcat
+endef
+
+define Package/selinux-chcat/description
+$(call Package/selinux-python/Default/description)
+  This package contains the chcat tool.
+endef
+
+define Package/selinux-chcat/install
+	$(MAKE_VARS) $(MAKE) -C $(PKG_BUILD_DIR)/chcat DESTDIR=$(1) install
+	rm -rf $(1)/usr/share
+endef
+
+#
+# selinux-semanage
+#
+
+define Package/selinux-semanage
+$(call Package/selinux-python/Default)
+  TITLE:=selinux-semanage
+  DEPENDS:=+python-sepolicy
+endef
+
+define Package/selinux-semanage/description
+$(call Package/selinux-python/Default/description)
+  This package contains the semanage tool.
+endef
+
+define Package/selinux-semanage/install
+	$(MAKE_VARS) $(MAKE) -C $(PKG_BUILD_DIR)/semanage DESTDIR=$(1) install
+	rm -rf $(1)/usr/share
+endef
+
+#
+# python-sepolgen
+#
+
+define Package/python-sepolgen
+$(call Package/selinux-python/Default)
+  SUBMENU:=Python
+  SECTION:=lang
+  CATEGORY:=Languages
+  TITLE:=python-sepolgen
+endef
+
+define Package/python-sepolgen/description
+$(call Package/selinux-python/Default/description)
+  This package contains the sepolgen Python library.
+endef
+
+define Package/python-sepolgen/install
+	$(MAKE_VARS) $(MAKE) -C $(PKG_BUILD_DIR)/sepolgen DESTDIR=$(1) install
+	$(INSTALL_DIR) $(1)/usr/share/sepolgen/
+	$(INSTALL_DATA) $(1)/var/lib/sepolgen/perm_map $(1)/usr/share/sepolgen/perm_map
+	$(RM) -rf $(1)/var
+endef
+
+#
+# python-sepolicy
+#
+
+define Package/python-sepolicy
+$(call Package/selinux-python/Default)
+  SUBMENU:=Python
+  SECTION:=lang
+  CATEGORY:=Languages
+  TITLE:=python-sepolicy
+endef
+
+define Package/python-sepolicy/description
+$(call Package/selinux-python/Default/description)
+  This package contains the sepolicy Python library.
+endef
+
+define Package/python-sepolicy/install
+	$(MAKE_VARS) $(MAKE) -C $(PKG_BUILD_DIR)/sepolicy DESTDIR=$(1) install
+	rm -rf $(1)/usr/share
+endef
+
+$(eval $(call BuildPackage,selinux-audit2allow))
+$(eval $(call BuildPackage,selinux-chcat))
+$(eval $(call BuildPackage,selinux-semanage))
+$(eval $(call BuildPackage,python-sepolgen))
+$(eval $(call BuildPackage,python-sepolicy))
diff --git a/utils/selinux-python/patches/0001-sepolgen-adjust-data_dir.patch b/utils/selinux-python/patches/0001-sepolgen-adjust-data_dir.patch
new file mode 100644
index 000000000..5b5426007
--- /dev/null
+++ b/utils/selinux-python/patches/0001-sepolgen-adjust-data_dir.patch
@@ -0,0 +1,26 @@
+From 4dfa91b1377b6dc57e66443ea1a08c6d79a3a6e2 Mon Sep 17 00:00:00 2001
+From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+Date: Wed, 2 Oct 2019 12:04:24 +0200
+Subject: [PATCH] sepolgen: adjust data_dir()
+
+Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+---
+ sepolgen/src/sepolgen/defaults.py | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/sepolgen/src/sepolgen/defaults.py b/sepolgen/src/sepolgen/defaults.py
+index 6e800695..a61d1efd 100644
+--- a/sepolgen/src/sepolgen/defaults.py
++++ b/sepolgen/src/sepolgen/defaults.py
+@@ -57,7 +57,7 @@ Various default settings, including file and directory locations.
+ """
+ 
+ def data_dir():
+-    return "/var/lib/sepolgen"
++    return "/usr/share/sepolgen"
+ 
+ def perm_map():
+     return data_dir() + "/perm_map"
+-- 
+2.21.0
+
diff --git a/utils/selinux-python/patches/0002-sepolgen-don-t-hardcode-search-for-ausearch-in-sbin.patch b/utils/selinux-python/patches/0002-sepolgen-don-t-hardcode-search-for-ausearch-in-sbin.patch
new file mode 100644
index 000000000..0ebc3e593
--- /dev/null
+++ b/utils/selinux-python/patches/0002-sepolgen-don-t-hardcode-search-for-ausearch-in-sbin.patch
@@ -0,0 +1,38 @@
+From a8a7f8fb5cfe95f28cd5f7ff4b4679ca122fe410 Mon Sep 17 00:00:00 2001
+From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+Date: Wed, 2 Oct 2019 13:38:18 +0200
+Subject: [PATCH] sepolgen: don't hardcode search for ausearch in /sbin
+
+ausearch may be installed in another location, just rely on PATH to
+find ausearch.
+
+Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+---
+ sepolgen/src/sepolgen/audit.py | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/sepolgen/src/sepolgen/audit.py b/sepolgen/src/sepolgen/audit.py
+index 4adb851f..5eafa587 100644
+--- a/sepolgen/src/sepolgen/audit.py
++++ b/sepolgen/src/sepolgen/audit.py
+@@ -41,7 +41,7 @@ def get_audit_boot_msgs():
+     s = time.localtime(time.time() - off)
+     bootdate = time.strftime("%x", s)
+     boottime = time.strftime("%X", s)
+-    output = subprocess.Popen(["/sbin/ausearch", "-m", "AVC,USER_AVC,MAC_POLICY_LOAD,DAEMON_START,SELINUX_ERR", "-ts", bootdate, boottime],
++    output = subprocess.Popen(["ausearch", "-m", "AVC,USER_AVC,MAC_POLICY_LOAD,DAEMON_START,SELINUX_ERR", "-ts", bootdate, boottime],
+                               stdout=subprocess.PIPE).communicate()[0]
+     if util.PY3:
+         output = util.decode_input(output)
+@@ -56,7 +56,7 @@ def get_audit_msgs():
+        string contain all of the audit messages returned by ausearch.
+     """
+     import subprocess
+-    output = subprocess.Popen(["/sbin/ausearch", "-m", "AVC,USER_AVC,MAC_POLICY_LOAD,DAEMON_START,SELINUX_ERR"],
++    output = subprocess.Popen(["ausearch", "-m", "AVC,USER_AVC,MAC_POLICY_LOAD,DAEMON_START,SELINUX_ERR"],
+                               stdout=subprocess.PIPE).communicate()[0]
+     if util.PY3:
+         output = util.decode_input(output)
+-- 
+2.21.0
+
diff --git a/utils/selinux-python/patches/0003-Don-t-force-using-python3.patch b/utils/selinux-python/patches/0003-Don-t-force-using-python3.patch
new file mode 100644
index 000000000..c0746d026
--- /dev/null
+++ b/utils/selinux-python/patches/0003-Don-t-force-using-python3.patch
@@ -0,0 +1,67 @@
+From 193e708d53517802040742e63041716e1f89a039 Mon Sep 17 00:00:00 2001
+From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+Date: Wed, 2 Oct 2019 13:40:20 +0200
+Subject: [PATCH] Don't force using python3
+
+Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+---
+ audit2allow/audit2allow    | 2 +-
+ audit2allow/sepolgen-ifgen | 2 +-
+ chcat/chcat                | 2 +-
+ semanage/semanage          | 2 +-
+ sepolicy/sepolicy.py       | 2 +-
+ 5 files changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/audit2allow/audit2allow b/audit2allow/audit2allow
+index 09b06f66..81f610ad 100644
+--- a/audit2allow/audit2allow
++++ b/audit2allow/audit2allow
+@@ -1,4 +1,4 @@
+-#!/usr/bin/python3 -Es
++#!/usr/bin/python -Es
+ # Authors: Karl MacMillan <kmacmillan@mentalrootkit.com>
+ # Authors: Dan Walsh <dwalsh@redhat.com>
+ #
+diff --git a/audit2allow/sepolgen-ifgen b/audit2allow/sepolgen-ifgen
+index be2d093b..99700ea9 100644
+--- a/audit2allow/sepolgen-ifgen
++++ b/audit2allow/sepolgen-ifgen
+@@ -1,4 +1,4 @@
+-#!/usr/bin/python3 -Es
++#!/usr/bin/python -Es
+ #
+ # Authors: Karl MacMillan <kmacmillan@mentalrootkit.com>
+ #
+diff --git a/chcat/chcat b/chcat/chcat
+index ba398684..63e91635 100755
+--- a/chcat/chcat
++++ b/chcat/chcat
+@@ -1,4 +1,4 @@
+-#!/usr/bin/python3 -Es
++#!/usr/bin/python -Es
+ # Copyright (C) 2005 Red Hat
+ # see file 'COPYING' for use and warranty information
+ #
+diff --git a/semanage/semanage b/semanage/semanage
+index 144cc000..552ace6a 100644
+--- a/semanage/semanage
++++ b/semanage/semanage
+@@ -1,4 +1,4 @@
+-#!/usr/bin/python3 -Es
++#!/usr/bin/python -Es
+ # Copyright (C) 2012-2013 Red Hat
+ # AUTHOR: Miroslav Grepl <mgrepl@redhat.com>
+ # AUTHOR: David Quigley <selinux@davequigley.com>
+diff --git a/sepolicy/sepolicy.py b/sepolicy/sepolicy.py
+index 1934cd86..af606857 100755
+--- a/sepolicy/sepolicy.py
++++ b/sepolicy/sepolicy.py
+@@ -1,4 +1,4 @@
+-#!/usr/bin/python3 -Es
++#!/usr/bin/python -Es
+ # Copyright (C) 2012 Red Hat
+ # AUTHOR: Dan Walsh <dwalsh@redhat.com>
+ # see file 'COPYING' for use and warranty information
+-- 
+2.21.0
+
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
