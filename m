Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75489F5D4C
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 05:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yufzP809/DNg1LBwge9hAA7HxkvmT+Gm0VqhVfbloc4=; b=LsQ
	6iOoCxf1yMs9QEMmUdOcxrM//vwAZDuDIhZPw62ka9e0FqDwnwX54Oe2f+MJy1GzS17hhIB/y8JIo
	3Ll/g5BiglZuZ/7tVS0skYFm+oXVi2Y448L7RxyjRpxS6Ifk9ELHuUKHck2tNU1hMtiI/i2ZxP3Sv
	wKTB/Bm42ZHb3oMimQXHybCEhnm1EQ44L1NgXym24iFbgx08s08ppQ+p912d3McI0YM5xH8q3FNo4
	Pd6QvmhpxDPvGS40SHbWDEWdtvbuMA+aAoBjcpi/0iMjmGDhuEVdPhXimCgN6inzKcjP5rFCSAJEF
	HvIifH2stTA7EVRF038J0/J5TQ/vu8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTI18-0000md-Mv; Sat, 09 Nov 2019 04:06:30 +0000
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 20:05:51 -0800
MIME-Version: 1.0
Message-ID: <mailman.9972.1573272382.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH v2] dropbear: move failsafe code out of
 base-files
Content-Type: multipart/mixed; boundary="===============1392912209216560961=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1392912209216560961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1392912209216560961==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([2a01:4f8:c010:d56::1])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTI0x-0000mI-HZ
	for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 04:06:21 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id E7E351FD77
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 04:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1573272375;
	bh=9tA8/Ymo+vXPLUMiXFcoUIsw1Zq1jclHXnU4vMhB9IE=;
	h=From:To:Subject:Date:From;
	b=Rx7S4oqGlnC0wvaegueoPlQhTa5pAns215h+7eH4LmIEso4SH6VZow2u2LB58N+8+
	 K3xAuL/CpErOA6uBfwaLyYOk1ygz6PJwTFwhfgEq6gJMFcpb09PiWTUvu9hnZBLIOb
	 sFbvrUOGETYdf7TTukpFyJ7Qp971Rx1ptqvCR59ejew0GGcC9s+XzhchxK5387IA3m
	 vr+Sry/yqT4YZfvXq0gkENc2uto5Rec+uTse2/RprtmyjBTGHln/deMDf0JIWPVMdS
	 FgtGV6BMvZ27avwdvbAlpCwc79dYrxaIiLegIcFw2MbVJC4M/KHXPBiyazjrzoDs91
	 oYqRKXzwUx5JlGRDtI07UHAWTl2Wa6Qwlr7gWLWKOFHGk0oEYsZ/17j0Ms5Dk+e9fP
	 M6CVieeNKsiSC7N8E0Ceu6ORndwg5kpUsO9Qk4G0W7cAi9STpFFWYmw5h+ZGzpzOVv
	 UKcp28HRV3WPK13N4sVS4eINntj5btYeTUNjdOjmDq1N/LuyvgbazBfeed0LusgPwQ
	 Lb8XB8C7zgFyoaIc9ggv4vFJy7+n5Y331q2p+WlNVe1QAvaVz4VHg/A5rD3pH3KPJS
	 GTa3YIpyD98r6OpXbC4IF4s8fy230jYSY8K/IyS73iHF+HYoXZCSLhJhYqqC/Fhbwi
	 B52FmUl71oq/AeA35OFZ/VvI=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id 88C4D10484E
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 04:06:11 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH v2] dropbear: move failsafe code out of base-files
Date: Fri,  8 Nov 2019 20:05:51 -0800
Message-Id: <20191109040551.45892-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_200619_744735_19D87BC9 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [2a01:4f8:c010:d56:0:0:0:1 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Move dropbear failsafe code out of base-files and into dropbear where
it should be.

Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 package/base-files/Makefile                               | 2 +-
 package/base-files/files/lib/preinit/99_10_failsafe_login | 6 ------
 package/network/services/dropbear/Makefile                | 3 ++-
 package/network/services/dropbear/files/dropbear.failsafe | 8 ++++++++
 4 files changed, 11 insertions(+), 8 deletions(-)
 create mode 100755 package/network/services/dropbear/files/dropbear.failsafe

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index addbac8664..5c121ace24 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=206
+PKG_RELEASE:=207
 PKG_FLAGS:=nonshared
 
 PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-files/
diff --git a/package/base-files/files/lib/preinit/99_10_failsafe_login b/package/base-files/files/lib/preinit/99_10_failsafe_login
index 728c63b2e8..16ad84f4ba 100644
--- a/package/base-files/files/lib/preinit/99_10_failsafe_login
+++ b/package/base-files/files/lib/preinit/99_10_failsafe_login
@@ -2,11 +2,6 @@
 # Copyright (C) 2006-2015 OpenWrt.org
 # Copyright (C) 2010 Vertical Communications
 
-failsafe_netlogin () {
-	dropbearkey -t rsa -s 1024 -f /tmp/dropbear_failsafe_host_key
-	dropbear -r /tmp/dropbear_failsafe_host_key <> /dev/null 2>&1
-}
-
 failsafe_shell() {
 	local console="$(sed -e 's/ /\n/g' /proc/cmdline | grep '^console=' | head -1 | sed -e 's/^console=//' -e 's/,.*//')"
 	[ -n "$console" ] || console=console
@@ -17,5 +12,4 @@ failsafe_shell() {
 	done &
 }
 
-boot_hook_add failsafe failsafe_netlogin
 boot_hook_add failsafe failsafe_shell
diff --git a/package/network/services/dropbear/Makefile b/package/network/services/dropbear/Makefile
index 75a3264ebb..ec4b355268 100644
--- a/package/network/services/dropbear/Makefile
+++ b/package/network/services/dropbear/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=dropbear
 PKG_VERSION:=2019.78
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:= \
@@ -156,6 +156,7 @@ define Package/dropbear/install
 	$(INSTALL_BIN) ./files/dropbear.init $(1)/etc/init.d/dropbear
 	$(INSTALL_DIR) $(1)/usr/lib/opkg/info
 	$(INSTALL_DIR) $(1)/etc/dropbear
+	$(INSTALL_DIR) ./files/dropbear.failsafe $(1)/lib/preinit/99_10_failsafe_dropbear
 	$(if $(CONFIG_DROPBEAR_ECC),touch $(1)/etc/dropbear/dropbear_ecdsa_host_key)
 	touch $(1)/etc/dropbear/dropbear_rsa_host_key
 endef
diff --git a/package/network/services/dropbear/files/dropbear.failsafe b/package/network/services/dropbear/files/dropbear.failsafe
new file mode 100755
index 0000000000..a98ede459a
--- /dev/null
+++ b/package/network/services/dropbear/files/dropbear.failsafe
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+failsafe_dropbear () {
+	dropbearkey -t rsa -s 1024 -f /tmp/dropbear_failsafe_host_key
+	dropbear -r /tmp/dropbear_failsafe_host_key <> /dev/null 2>&1
+}
+
+boot_hook_add failsafe failsafe_dropbear
-- 
2.24.0



--===============1392912209216560961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1392912209216560961==--
