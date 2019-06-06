Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51383812D
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Jun 2019 00:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oj1+Fh44Fx8aVmcWO14jOWFQ4J7yjvWWs1os2JbbBo=; b=QUQhZjhJEShbDg
	HqJzriMU1pqL/q8caf8pGkAacRY8N+wNoUErfknvcYfhzqTBNFv2r8i1eeT7x96yJ70I9TI8gHuDL
	OPT0wXZxsQNEAQweLdd8FzhWXmXOLji8lmccRz8/vVFhEWeO2uPvvqttcuUKViOJ6EB8oT7zYOU73
	PJgJAEUyVmVmsk61N/04721Arpr8kUd+KXWUoqQxNsBH1CXGTJ0AtK2t/iv4bBb5GrTKW2A6lKyew
	NlgycX2jnjDR2BxWFvPAdzSnfhMYMIQIB1Lk3KUnScd5nmQbu9E2EUIkQo/QVsC/lukrjjQlKgTz2
	IBIHKXEmKgYqXr0heFHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ191-0000EF-Cz; Thu, 06 Jun 2019 22:46:03 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ18K-0000BD-GL
 for openwrt-devel@lists.openwrt.org; Thu, 06 Jun 2019 22:45:27 +0000
Received: from [192.168.180.1] (port=38638 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1hZ18E-0005jU-34; Fri, 07 Jun 2019 00:45:14 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id C7E342802C9;
 Fri,  7 Jun 2019 00:45:14 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  7 Jun 2019 00:45:08 +0200
Message-Id: <20190606224510.22083-2-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190606224510.22083-1-avalentin@marcant.net>
References: <20190606224510.22083-1-avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_154521_047072_249630EC 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 1/3] kernel/netsupport: add xfrmi
 interface support
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
Cc: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add support for xfrm interfaces in kernel. XFRM interfaces are used by
the IPsec stack for tunneling.
XFRM interfaces are available since linux 4.19.

---
 package/kernel/linux/modules/netsupport.mk | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/package/kernel/linux/modules/netsupport.mk b/package/kernel/linux/modules/netsupport.mk
index 1b6247643f..385c1c65ec 100644
--- a/package/kernel/linux/modules/netsupport.mk
+++ b/package/kernel/linux/modules/netsupport.mk
@@ -380,6 +380,22 @@ endef
 
 $(eval $(call KernelPackage,ip6-vti))
 
+
+define KernelPackage/xfrm-interface
+  SUBMENU:=$(NETWORK_SUPPORT_MENU)
+  TITLE:=IPsec XFRM Interface
+  DEPENDS:=+kmod-ipsec4 +kmod-ipsec6 @LINUX_4_19
+  KCONFIG:=CONFIG_XFRM_INTERFACE
+  FILES:=$(LINUX_DIR)/net/xfrm/xfrm_interface.ko
+  AUTOLOAD:=$(call AutoLoad,33,xfrm_interface)
+endef
+
+define KernelPackage/xfrm-interface/description
+ Kernel module for XFRM interface support
+endef
+
+$(eval $(call KernelPackage,xfrm-interface))
+
 
 define KernelPackage/iptunnel4
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
