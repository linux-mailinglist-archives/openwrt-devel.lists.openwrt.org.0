Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F399F5D47
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 04:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HuXbCEWygz9WlrDmJGs31S2Q3GXGKdBY9nXKfJ/wKmY=; b=CLV
	tSp+6Y76gB1fAYJn79rciGAo4Utc/OdWBV40JVA0i5xeJW2AGR0dXZddAgVC0nUj+hWTtoGFa531X
	PKfXlBTKo1AgTLi7+6NubEu4VMmViXz8fZdhDtUR9On6fxLVmBI9X+AnH0QDlULzkYq11jUAdd10v
	NGM4pemgUo4T5T+fMG7wCUrDdBqvDopiln5R7kb1+I5z5fztBPWUnOOJC5OJ/TcQTemyYXUZZf6ue
	ltXG9Aiodllb7hrc4or2vEFoFcQVgDZkEaBPfaHiDMaRECDMWf17C4KPeG9WHRMldgarlw++JiXe0
	iO0PVoATtduy4plpUbwx/f99FBELlVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTHtb-0005ve-2Y; Sat, 09 Nov 2019 03:58:43 +0000
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:57:07 -0800
MIME-Version: 1.0
Message-ID: <mailman.9971.1573271914.2486.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] [PATCH] dropbear: move failsafe code out of
 base-files
Content-Type: multipart/mixed; boundary="===============8772777519195364571=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8772777519195364571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8772777519195364571==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([116.202.17.147])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTHtQ-0005vG-Ps
	for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 03:58:34 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 96EA41FD77
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 03:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1573271911;
	bh=gJ3bEGTIKjxQh9lOcjSU+8Ag+Az0dbVeMU7VzNVEr9U=;
	h=From:To:Subject:Date:From;
	b=FYrNzA+Be56f0TagsAZtXOgSEVMVAmuFfFF4DEiYA3UJiwiy6i1Puhl1+74lNZCti
	 tvlzUlFG6GlBRSL/61kFkyk7tFL5MijmDosw9RabmKthSIRJNyPEcUTZDYDjIyoq4T
	 cCEtSNm9/I1ujnUbgBMv7R9nS8PRx7zW+B7xaA13emF6xoyeYpq3ZZfskZssDtr02H
	 yRkJ5eJ0fXvEEGfoOHclFQy3LZRwPhj7+JbyV4gSdZW4PtO7uwWmPvRYHtHZGLByfv
	 eP7exUgdwnUKe4ic8BxcxMJGyUFYKfhg+9JpKjLY3rmoNdAm1SaroswopOecHRRx7c
	 wq72JO2GN/ErlCV6sRM5Fr6pbupRL5t/S/8jXzO9lv4j3NRq8+5c8uYObKfbRRgZx4
	 EdjyAUheNXxsbSN2l9bHg0cgiD+3p7LG67JyAngQU98W5/U9fbLOIjt6hmFZpR2gse
	 Jq6XZRX5itzHi7YG150hoZkW3P5DhNg5GQHnt+v0vwXumm+GlTtJiFrxGQUpYk0pTa
	 /y+tmfN+W48BNaJVanyJgWA/LVcN07SD7KVSJpdwwxe0UX0UYalLXdF2e5x6/VcIZu
	 8Q+5dIUUJw52RYBP394C7oUBoRcXL/O9cWfTOJrwX7rLRMy9llaC846Ki1L0ZgxNXs
	 sqrYSXfJNpCVTm6CrZ63AmYE=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id C4A0910484E
	for <openwrt-devel@lists.openwrt.org>; Sat,  9 Nov 2019 03:58:22 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH] dropbear: move failsafe code out of base-files
Date: Fri,  8 Nov 2019 19:57:07 -0800
Message-Id: <20191109035707.45458-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_195832_991916_FD3020A9 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [116.202.17.147 listed in list.dnswl.org]
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
 package/base-files/files/lib/preinit/99_10_failsafe_login | 6 ------
 package/network/services/dropbear/Makefile                | 1 +
 package/network/services/dropbear/files/dropbear.failsafe | 8 ++++++++
 3 files changed, 9 insertions(+), 6 deletions(-)
 create mode 100755 package/network/services/dropbear/files/dropbear.failsafe

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
index 75a3264ebb..8c2918e8ab 100644
--- a/package/network/services/dropbear/Makefile
+++ b/package/network/services/dropbear/Makefile
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



--===============8772777519195364571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8772777519195364571==--
