Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766091A7B1
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mIYsN+uquVfHxZJ7e4VJQWW5rBHEgh6GUDRypE8uOo=; b=lXZ5//jNrlPdDw
	ZTYQVjQKAmfTtoGAOjM3veooNeYPsh6LJiYATMR6kRgVQV3gHOtKXNA6KX65zkGqxVytM3X7cUz8C
	BRaPbhr4i126mExEvKH6Ii9/8mbR8VLE0IupzrW+2owZnlYJ2EU9BLo8bqYgN6DPacqXbOXFBq2Ts
	zoYGuaB7pISJInQPeoKgq4L4cjM1a8qXQxuBkD+OxyAWSCt1NEE9y878JACQGVGK9qZfaDAb4geZS
	Ya8RS153l4KFGKEudktmFtB9b3/RA3faCGGUnpdiRcd6ft3nS1TGqP54XDwGlb+y1Xcx6vRvp8Im/
	QeVRMF7NKcaqs77kvP8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQU5-0006T8-6P; Sat, 11 May 2019 11:48:09 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQTz-0006SV-3t
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:48:04 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 4294B4E9D2;
 Sat, 11 May 2019 13:47:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id B_SpzGq2X-ZG; Sat, 11 May 2019 13:47:46 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:47:36 +0200
Message-Id: <20190511114737.11922-2-hauke@hauke-m.de>
In-Reply-To: <20190511114737.11922-1-hauke@hauke-m.de>
References: <20190511114737.11922-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_044803_311444_F5D5DFC8 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] ar7: Refresh kernel configuration
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, f.fainelli@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The configuration of the generic subtarget was used as the default
configuration and then the subtarget configurations were adapted.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/ar7/config-4.9 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/target/linux/ar7/config-4.9 b/target/linux/ar7/config-4.9
index 95a5375bae..95ee60ac59 100644
--- a/target/linux/ar7/config-4.9
+++ b/target/linux/ar7/config-4.9
@@ -18,6 +18,8 @@ CONFIG_ARCH_SUSPEND_POSSIBLE=y
 CONFIG_ARCH_USE_BUILTIN_BSWAP=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_BOOT_ELF32=y
+CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
+# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CEVT_R4K=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMDLINE="rootfstype=squashfs,jffs2"
@@ -105,6 +107,7 @@ CONFIG_KALLSYMS=y
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_TRIGGER_HEARTBEAT=y
 CONFIG_MDIO_BOARDINFO=y
+CONFIG_MIGRATION=y
 CONFIG_MIPS=y
 CONFIG_MIPS_ASID_BITS=8
 CONFIG_MIPS_ASID_SHIFT=0
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
