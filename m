Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A95A19A93C
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 12:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4EHMU67ZBHNyEJgCuFSjC5Xp+1MwgyDFROlXBD94zk=; b=TG4pYkYIxjfjRE
	d7hXUb6VSpLTi7p4SmOPqrNc/GfdBUoL3Hc0HIp29Bemv6qmqCBwm4IwbjtUjstHGzBeKIos8bSqh
	2kbMqVMSrd5ClfeHHCYZQAQmCxA8AlDO58ckWotBRonwaS/hfOkaszwigdkpOXiCEyRDqG4N+k/zk
	HgnHXyn0dzy2eCOwa6KkPGyYirH78KEpJM4x2ijR1EVF8wu1VzpCiPUGhbkzHvh3ZUFJFVIvnFjSD
	zXhGNVAuRMA+lzTOBdfPjAxIp8Hr2XYu62R6FdNAd0XC7YedNupi3i4heNO5U+Feg68jABTVi0hG1
	jgSPksR0hoJdkiDwPvCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJaOg-0002W8-MM; Wed, 01 Apr 2020 10:14:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJaOO-0002Nd-RV
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 10:14:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id i19so6533748wmb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Apr 2020 03:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ilba68JsXHhTMly5LnEpFHe/uFSQW5vDwKtKqu1uEZ4=;
 b=EUMxAI4ykBzpGp4aCtg0KS0DkvcnlJrOigIavZ109Z+F8qBA7xj/ofUeRm+/czeKHo
 aqK7HwJqL5YzQeRow4DBE03H7+kBq+6QfvHmRplaEdWVDPTn5jcDGUWU9mB+L1S6UYsB
 ZG9E5UkHQbIy4+QgJCjPszrDlSGAO3Tg4kt4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ilba68JsXHhTMly5LnEpFHe/uFSQW5vDwKtKqu1uEZ4=;
 b=r16ZFwthuamK7gZSPyc1wF9vP+RMEsAteOX0kFMjBCFwHXCXcGygFzqjOOVxqq9ccu
 uOBpoAtZfjxhthRqBEi0OlsBDn2SUrmwUGsidFWGGmQNsvKZ5HDeNz5EOhAJR1S7YQY4
 sPtqCETIwVP4+pRloOt4LuK16Wtc554R9cJ0vnc+nOGuiWwHcuI3HQe4b4jihNKpBkxi
 VDZMeR0TARU0tv79lFaW6sO0NqG64qhcZDKaDCfLWgwxXJ0y6GTdGteK9//Q4O3iqWSk
 Xv+qIJuf+eMto8sV2mJMDXUe6oWbbRvCOQqGQd9XmlA2EHH3TJ6MlFvA6pRXhuLzBYGu
 BKxw==
X-Gm-Message-State: AGi0PubGNriYo53Ozb5MJHvCW6fga541q8J96bXWzf5nF6kCboBGkKqp
 k1IQlaZ4srse5Y9+N6v2Z5qup72hAlA=
X-Google-Smtp-Source: APiQypJGbm/MeJLUatUGGrHhreKEgVWROu1II9hDlYyCD2ylg+RxZETeTilawAC1Frid4KwrR0MHrg==
X-Received: by 2002:a7b:cd02:: with SMTP id f2mr3392146wmj.97.1585736075209;
 Wed, 01 Apr 2020 03:14:35 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id d18sm2457932wrn.9.2020.04.01.03.14.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 03:14:34 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Apr 2020 11:14:22 +0100
Message-Id: <20200401101423.8618-2-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.1 (Apple Git-126)
In-Reply-To: <20200401101423.8618-1-ldir@darbyshire-bryant.me.uk>
References: <20200401101423.8618-1-ldir@darbyshire-bryant.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_031440_890536_374B982E 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v1 1/2] kmod-sched-cake: rename to
 kmod-sched-cake-oot
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In preparation for dropping the out of tree cake module and using
in tree cake from upstream, rename the package to kmod-sched-cake-oot
(out of tree)

Initially add a PROVIDES kmod-sched-cake so that package dependencies
can be satisfied.

Ultimately this package will be removed when linux 4.14 is removed.

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 .../Makefile                                        | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)
 rename package/kernel/{kmod-sched-cake => kmod-sched-cake-oot}/Makefile (75%)

diff --git a/package/kernel/kmod-sched-cake/Makefile b/package/kernel/kmod-sched-cake-oot/Makefile
similarity index 75%
rename from package/kernel/kmod-sched-cake/Makefile
rename to package/kernel/kmod-sched-cake-oot/Makefile
index 42e45b5789..fbcb9cec4b 100644
--- a/package/kernel/kmod-sched-cake/Makefile
+++ b/package/kernel/kmod-sched-cake-oot/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
-PKG_NAME:=sched-cake
+PKG_NAME:=sched-cake-oot
 PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
@@ -20,23 +20,24 @@ PKG_MAINTAINER:=Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
 
 include $(INCLUDE_DIR)/package.mk
 
-define KernelPackage/sched-cake
+define KernelPackage/sched-cake-oot
   SUBMENU:=Network Support
-  TITLE:=Cake fq_codel/blue derived shaper
+  TITLE:=OOT Cake fq_codel/blue derived shaper
   URL:=https://github.com/dtaht/sch_cake
   FILES:=$(PKG_BUILD_DIR)/sch_cake.ko
   AUTOLOAD:=$(call AutoLoad,75,sch_cake)
-  DEPENDS:=+kmod-ipt-conntrack
+  DEPENDS:=+kmod-sched-core
+  PROVIDES:=kmod-sched-cake
 endef
 
 include $(INCLUDE_DIR)/kernel-defaults.mk
 
 define KernelPackage/sched-cake/description
-  Common Applications Kept Enhanced fq_codel/blue derived shaper
+  O(ut) O(f) T(ree) Common Applications Kept Enhanced fq_codel/blue derived shaper
 endef
 
 define Build/Compile
 	$(KERNEL_MAKE) M="$(PKG_BUILD_DIR)" modules
 endef
 
-$(eval $(call KernelPackage,sched-cake))
+$(eval $(call KernelPackage,sched-cake-oot))
-- 
2.24.1 (Apple Git-126)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
