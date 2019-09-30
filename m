Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847A2C1B03
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Sep 2019 07:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RmkSpKCPo9Kx842gFWZKOT8PwBlTD+6IfceXHdGkreg=; b=kv/ltA9Y+X9H5u
	BfbCzZz7+5QjcohaDuI8nGBt+A+GeFR059r/DD9MJZDMor9T9AL9a1a0EFBqkL6qilsB5Rc1aKbfB
	vurFEcsPC+Cqbl1aqdCxAx5h/DWVsb93f4LT+O0K9Ly3zjiF6+WLaMsKlWDfGCXXSVQ8PGOpnE5Xz
	/954Dwijh1w+FqQ+i1wcF+0LFbunUYuCRuCEEfxTVcmZ1Zdzkhgn+u7//RiVaqvn1eoLun3B8TxCk
	euHEgLnZdGwvo6AM+GljpBzutT9unBB7rdkprDRp/u7h4cXglVEEXEQiEsDuo5Q+GgZY9+sU2bFRu
	gUe5B0cfqsJIoCQ1iddA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEoIK-0001Nn-Jx; Mon, 30 Sep 2019 05:32:24 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEoID-0001Mq-2A
 for openwrt-devel@lists.openwrt.org; Mon, 30 Sep 2019 05:32:19 +0000
X-Originating-IP: 98.151.65.6
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 6707940008;
 Mon, 30 Sep 2019 05:31:58 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Sep 2019 19:31:52 -1000
Message-Id: <20190930053152.15177-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_223217_253299_7C08625B 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel-defaults: ensure SOURCE_DATE_EPOCH
 on /init
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
Cc: Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a follow up of 8cb13f4e6d which sets the right timestamp for the
/init file in initramfs. The previous patch doesn't cover it as the
files appear to come from a later step during compilation.

CC: Alexander Couzens <lynxis@fe80.eu>

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 include/kernel-defaults.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/kernel-defaults.mk b/include/kernel-defaults.mk
index cc1e2361be..db93a53d71 100644
--- a/include/kernel-defaults.mk
+++ b/include/kernel-defaults.mk
@@ -146,6 +146,7 @@ ifneq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),)
 define Kernel/CompileImage/Initramfs
 	$(call Kernel/Configure/Initramfs)
 	$(CP) $(GENERIC_PLATFORM_DIR)/other-files/init $(TARGET_DIR)/init
+	$(if $(SOURCE_DATE_EPOCH),touch -hcd "@$(SOURCE_DATE_EPOCH)" $(TARGET_DIR)/init)
 	rm -rf $(KERNEL_BUILD_DIR)/linux-$(LINUX_VERSION)/usr/initramfs_data.cpio*
 	+$(KERNEL_MAKE) $(if $(KERNELNAME),$(KERNELNAME),all) modules
 	$(call Kernel/CopyImage,-initramfs)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
