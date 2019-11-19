Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AC3102BF6
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 19:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5oT6gCKuyxGTF5HzfMjAp9gsQH2j3/yq6xVvev2+4u8=; b=hvvg5NUrBEfM0oXlw80OboLoUb
	bgJ9gcrKWe25cMC8JVydNLhlhFRgse1b9cghYIIUy1VWotxnpKa+6nI07ZbhQJzTkObIL20SxCzCX
	NJTj9YcHyU/Na2hmfWUryGfkuojmAu05uu6OKbvv8zbk8Za0nxAYWGaHApai4y1Idg5qDpVK7lk0A
	uU1UfEyai4m3DH10RFlekx+d+D6Qm+ccOthr9KrNvpdrNWPSqkM3k5yTZxsO4tB8GoBujL5DVLHE8
	8ir70+wpx6OusQvYehWl3VRCzJjQME3w5u8EbQ3Pwu2sGtNGqGofWdhBACthy5dVCypHIz8hg1jYW
	MGp+dHwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8aa-0005Hd-IZ; Tue, 19 Nov 2019 18:51:00 +0000
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 Nov 2019 18:50:00 +0000
MIME-Version: 1.0
Message-ID: <mailman.12647.1574189453.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: incoming@patchwork.ozlabs.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH v3] dropbear: move failsafe code out of
 base-files
Content-Type: multipart/mixed; boundary="===============2586284383454335995=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2586284383454335995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2586284383454335995==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([2a01:4f8:c010:d56::1])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8aP-0005FX-V6
	for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 18:50:52 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 7FB4F1F403;
	Tue, 19 Nov 2019 18:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1574189442;
	bh=zsqUmvQ1avIBVyWHsegVJMiYW1IPJEGr/8+TlV9ZoME=;
	h=From:To:Cc:Subject:Date:From;
	b=M7yJRMtFiQeZ8cOCNaqf+BpfU4YP6Y376AzIxu40n14jVWZKRk9BTUN9Y20dUIgG2
	 yxy3NrgJYOwAP02K3T63iawvswm6syzhm33/lgipQ5A9jk8pxi9TjsInUB4iIuLZSN
	 91S8IPOz3nE+YsQzwjggqgYO0RTh25Y6IPNm2UYqn5SmpdXNPRbnVN4LSWVtds3ILI
	 KgaelPotrOIfOIdzJ+VeaBYEZZv5Xz7MZZTl9kA3yOe+pwRc9ubrTFSwaYRs6Eqyq8
	 xiu8phdrWDfAyKyNqd4Kxfisq5ngsrSgxp4qxtyiwsQOpMoiN21jybyOZSny1Qb55d
	 PgxlEbroHXZa3DQ4kmpy/Q5n2ZDIcL0SQIrc7KgxMkdXa07rYUaCzl72n5M3c9p7nE
	 t6dZM7HNtgQWshrM3v/B/rPga7n/b51g0AyZXQ4bUFCw9X+GSOMrGeWPq/rzVQt1lw
	 rERjotcvr1buE+fuZd6UYC5DHdyRDg0dxr8V1afA/pdlrRzKoBMOdhWKJTljVi4iHr
	 JoZU0YEsml2hI32lsEm2bEOb5yzdd6p3RoHLxviTfxWcDsok2/Vr8PCq/q/aWI4Q9Q
	 CEsGlWrPRBldZR3oXPST9we6/CVkJtzWspCQclQ6YRjOxD5cpPZe+yZskevqs6BEvc
	 Qe8U18DJ/7t/4cNML8gZUnME=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id 33667104860;
	Tue, 19 Nov 2019 18:50:38 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Cc: incoming@patchwork.ozlabs.org
Subject: [OpenWrt-Devel] [PATCH v3] dropbear: move failsafe code out of base-files
Date: Tue, 19 Nov 2019 18:50:00 +0000
Message-Id: <20191119185000.93098-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.3-rc6
X-Spam-Checker-Version: SpamAssassin 3.4.3-rc6 (2019-11-09) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_105050_326427_4D417349 
X-CRM114-Status: UNSURE (   9.46  )
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
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Failsafe code of dropbear should be in the dropbear package not the
base-files package.

Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 package/base-files/Makefile                               | 2 +-
 package/base-files/files/lib/preinit/99_10_failsafe_login | 6 ------
 package/network/services/dropbear/Makefile                | 3 ++-
 package/network/services/dropbear/files/dropbear.failsafe | 8 ++++++++
 4 files changed, 11 insertions(+), 8 deletions(-)
 create mode 100755 package/network/services/dropbear/files/dropbear.failsafe

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index 0ca4d739f3..cf5166772d 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=209
+PKG_RELEASE:=210
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



--===============2586284383454335995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2586284383454335995==--
