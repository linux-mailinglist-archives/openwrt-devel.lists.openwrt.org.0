Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44291A7F04
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 15:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4LKNlbZtU3LCJedD5S97fBwH5P1Od8g8z3SZfQ03ing=; b=fm3bPFkqBcurHc
	RCldkdzIl1zSOskDVA4CzGay6uzFE8plDFQvOGQEANH055gBmTp50gLsgZw3qTofEnAyXAlMesGK0
	J0aGZsNs0dqMoVMKIiuGTCX0QFEMqHDYYIAYxswVBemcSkwRDY+immH7jJdsjWYQTnbsff2h41xUy
	s/49DI25Cwi59emetqrWmc/gqBb+XovH222eYx3k2bUkJgNb3pgWirygTY4S0btHJcmCjNnxhDbQT
	LrvFYi8N8VeELd2kU/A6sbz3KXj0GJr0iUr2ISdg7aI1I4yjAQyMNiGlQyAXNXtaIObH2PTaOqBNU
	cHsrWfca+09F/GhV85Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOM65-0000I3-OG; Tue, 14 Apr 2020 13:59:29 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOM5h-00004y-C2
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 13:59:07 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MTznO-1jpGtS3E5C-00R4ED; Tue, 14 Apr 2020 15:59:00 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 15:58:08 +0200
Message-Id: <20200414135808.62915-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:0LHEHuyGZOtTXNcWi2wQCWxY/MQw1OqycSmiLb7ZogjwymS/nfg
 f3MC65nUG3pmX6CfNuU7Ed/lUfV4uDJ7eOH+Ek1qikTIYyDXR7nTE4jlG+59EB61sBXC26y
 5efTUE9/xQx7GFa+2AKPrvjN9HBevNmNaBFHZ0RrBhU2sRS9qb2iVLwc5sZFPb6+rOBMGd6
 Xo7ABsBZhkA8x67elaRTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:91JdshZcvaI=:UNPF55vJIw+bSet8rtDDcM
 VbSIMJDjhPPTHedCGuXQ9dVHBPG1G+wZtrWyHEDE8E1Yn/6FgA/SpqgZ3BXzAPw49FVCuWUmq
 VH6PjrBraYf+5fQ28SsdQiapUfp7cWLHDSQ2wbTuYnnReiv8iGPYEoapn2vJkfUX4FAhL83Lm
 ho7qdR3LOumaLR8NUh4ucWqWSlsIa3FOAklZt1YOqm28BDCEg5/K6BKYnCkpAUN/qQyG+O8nw
 /JqUL9d6H2rqUEkMnpcNuTzv4cxH5k8j4vR9+rTkh3EuTcVL3LI9Dh0OI/o4mT9vK9nvCkx0J
 e5qhcBEmG8B38JfWP3B0EZlNJgK2IAOqICG5KnbvbDw5Ca/497eGk/EeAeSVGQWTYGKVnnkp5
 Gx//HQqUC3uhbl3gI1tiMB2Rbgd4FKRlT8e05rp9mvUfDpRxJQ4NOAwcyZz3jRwjbfrU0MG2x
 GhA7AUuqTAsbQ1tM4PS/fOGAI5mIQFkBMBsmRukPq7vJXfXwT24f77KFdb+PJIWM1Va8NLNAy
 BSZZZ0Q4nlc0YP7AUgwRSHazP1pIAdQPOOX4eL7RJ99th07R9zCftjAuwDmE0uT+1qrvt03kG
 bEagqPpjpNnaoucTAK7R10CCLhpZ8w+PXOEY2wvdWKfDktK87V0y12CuXhYQuFpyL23UsZwS7
 qnwirW6RzkymoYXoI50lQevFfkTV2MeUZz2SPzAAfm+7YQwZqKlGB1OWcZzfz7pqQeJQ/p1RY
 aodKCA0KTK0Cojue2K8C5YkEcWrADluFDtvsRlQMse2pXP2gc1qBPPLvanKq1zvSohnDep7y2
 TA3O8YXIFcQ9FMwabC/IrJ7va5UPeL4lvOtlGZIOpJKXdbl5gzmweNbebFe0PeoPldS8VG1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_065905_702623_689FBB00 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ltq-adsl(-fw): Makefile clean-up and fixes
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This fixes a few minor issues (partially cosmetic) in ltq-adsl and
ltq-adsl-fw Makefiles:
- fix PKG_SOURCE_URL and switch to https
- remove non-existant FW_NAME variable
- fix package name for config inclusion

Cc: John Crispin <john@phrozen.org>

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/kernel/lantiq/ltq-adsl-fw/Makefile | 6 +++---
 package/kernel/lantiq/ltq-adsl/Makefile    | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/package/kernel/lantiq/ltq-adsl-fw/Makefile b/package/kernel/lantiq/ltq-adsl-fw/Makefile
index 5775d0cf50..66f91a991e 100644
--- a/package/kernel/lantiq/ltq-adsl-fw/Makefile
+++ b/package/kernel/lantiq/ltq-adsl-fw/Makefile
@@ -13,7 +13,7 @@ PKG_RELEASE:=1
 
 PKG_BUILD_DIR:=$(BUILD_DIR)/ltq-dsl-fw-$(PKG_VERSION)
 PKG_SOURCE:=ltq-dsl-fw-$(PKG_VERSION).tar.bz2
-PKG_SOURCE_URL:=http://mirror2.openwrt.org/sources/
+PKG_SOURCE_URL:=https://sources.openwrt.org/
 PKG_HASH:=28676d41c4b76e5bf7a2c5eae106a61fb96b93eabc0cb71120575fff9997269f
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 
@@ -45,8 +45,8 @@ endef
 
 define Package/kmod-ltq-adsl-$(BUILD_VARIANT)/install
 	$(INSTALL_DIR) $(1)/lib/firmware/
-	$(CP) $(PKG_BUILD_DIR)/$(FW_NAME)/ltq-dsl-fw-$(ANNEX)-$(SOC).bin $(1)/lib/firmware/
-	ln -s /lib/firmware/$(FW_NAME)/ltq-dsl-fw-$(ANNEX)-$(SOC).bin $(1)/lib/firmware/adsl.bin
+	$(CP) $(PKG_BUILD_DIR)/ltq-dsl-fw-$(ANNEX)-$(SOC).bin $(1)/lib/firmware/
+	ln -s /lib/firmware/ltq-dsl-fw-$(ANNEX)-$(SOC).bin $(1)/lib/firmware/adsl.bin
 endef
 
 $(eval $(call BuildPackage,kmod-ltq-adsl-danube-fw-a))
diff --git a/package/kernel/lantiq/ltq-adsl/Makefile b/package/kernel/lantiq/ltq-adsl/Makefile
index e6817efffc..8684529fb3 100644
--- a/package/kernel/lantiq/ltq-adsl/Makefile
+++ b/package/kernel/lantiq/ltq-adsl/Makefile
@@ -10,10 +10,10 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ltq-adsl
 PKG_VERSION:=3.24.4.4
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 PKG_SOURCE:=drv_dsl_cpe_api_danube-$(PKG_VERSION).tar.gz
 PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/ltq-dsl-$(BUILD_VARIANT)/drv_dsl_cpe_api-$(PKG_VERSION)
-PKG_SOURCE_URL:=http://mirror2.openwrt.org/sources/
+PKG_SOURCE_URL:=https://mirror2.openwrt.org/sources/
 PKG_HASH:=eb2ed59715d3bf4e8a1460bbbe2f1660039e0a9f9d72afb1b2b16590094eb33c
 PKG_MAINTAINER:=John Crispin <john@phrozen.org>
 
@@ -38,7 +38,7 @@ KernelPackage/ltq-adsl-danube=$(call KernelPackage/ltq-adsl-template,danube,(TAR
 KernelPackage/ltq-adsl-ar9=$(call KernelPackage/ltq-adsl-template,ar9,TARGET_lantiq_xway)
 KernelPackage/ltq-adsl-ase=$(call KernelPackage/ltq-adsl-template,ase,TARGET_lantiq_ase)
 
-define KernelPackage/ltq-dsl/config
+define KernelPackage/ltq-adsl/config
 	source "$(SOURCE)/Config.in"
 endef
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
