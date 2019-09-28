Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62EBC1227
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 22:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WAF+x08j/A48aztFDSGUDEtrYzj4cQY3NpUaIoK/rlQ=; b=jnl8TDhWXF4TZk
	aDZWP3ovzT4TkzYq1IoNEd71X/lvbxJCI6YZzLVU4UrjYLuBoXQD3nR2h2r7sqt+CbXgebK/W/Rcp
	0kpx/pxPfKSbk/bi+3l6ccUureEQTt8M+klgvgHqkeTFY1Z9gMbjQk5CEzs+v1xjIGoyW8TYtCAz6
	nYztjBUbaa15+e9ADypXyD6ahqht/GOL1wYDik2Dp3NQnGRrYA1diWJcAsQZpTtYuiCCsf4E5BX5Z
	3+KuiMQc/JGB4B3nRLcAOpZ3Ny5Ms/ukp1BXTas0CIwgkrNXf0ibZRaiSReXfiTR4bYTIvCBq3NGE
	owI79UOLI01oVydDqbHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEJbK-0008Pm-Vt; Sat, 28 Sep 2019 20:45:58 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEJbB-0008P4-In
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 20:45:52 +0000
Received: from localhost.localdomain (udp077727uds.hawaiiantel.net
 [141.239.155.86]) (Authenticated sender: mail@aparcar.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 9FB1C100002;
 Sat, 28 Sep 2019 20:45:32 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Sep 2019 10:44:48 -1000
Message-Id: <20190928204447.19627-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_134549_770117_B0D0B1A1 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] toolchain/gcc: switch to version 8 by
 default
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

Main motivation for this commit is the introduction of
`-ffile-prefix-map=` which alows reproducible build path.

Compiling tested without errors on the following targets:

* ath79
* brcm2708
* brcm63xx
* ixp4xx
* ramips
* sunxi
* x86

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
Please let me know if I should compile more targets.

 toolchain/gcc/Config.in      | 3 +--
 toolchain/gcc/Config.version | 9 ++++-----
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
index 0977f9b4e7..7d7f34210a 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -2,8 +2,7 @@
 
 choice
 	prompt "GCC compiler Version" if TOOLCHAINOPTS
-	default GCC_USE_VERSION_8 if arc
-	default GCC_USE_VERSION_7
+	default GCC_USE_VERSION_8
 	help
 	  Select the version of gcc you wish to use.
 
diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index d9732b3e0d..1a86bcb8a6 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -2,9 +2,8 @@ config GCC_VERSION_5
 	default y if GCC_USE_VERSION_5
 	bool
 
-config GCC_VERSION_8
-	default y if GCC_USE_VERSION_8
-	default y if arc && !GCC_USE_VERSION_9
+config GCC_VERSION_7
+	default y if GCC_USE_VERSION_7
 	bool
 
 config GCC_VERSION_9
@@ -19,6 +18,6 @@ config GCC_USE_EMBEDDED_PATH_REMAP
 config GCC_VERSION
 	string
 	default "5.5.0"		if GCC_VERSION_5
-	default "8.3.0"		if GCC_VERSION_8
+	default "7.4.0"		if GCC_VERSION_7
 	default "9.2.0"		if GCC_VERSION_9
-	default "7.4.0"
+	default "8.3.0"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
