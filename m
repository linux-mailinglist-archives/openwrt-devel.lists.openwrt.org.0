Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77D61A7F40
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 16:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mHO87ed38j6hiIHtO5XJtXMw7n2nN+QgIUcMpZpuHLI=; b=c8jVRPpJZXB7Cb
	Lm9n+FZkySe6PH8J/oNWwoPEbei2zPgJFPibVhdupHJuORvc3UPbYuLPI3pxjpGWA89T5NHAnXwZb
	z72Q9+uUYiHhjHtqlu3p7VKNUkTZkEY2spHJi7bSREkvoWcCQ8SjB72lXKQ7hTQ1ACgHbkXYucNRF
	UQX124gscOkretaYeBTY9uYsHt2oJIbZETqTa6cNt1NCKtJDFDxPjuK4yGNffsADG+HSNm//60U8w
	XdMx4igoiIZz/txUFejNT1YmkwPyU3+8fl2qX0OnkwiKWkgxNLeA98Vv4+VJdS6vx+EqwJImXMJpG
	Ua+5t97x8KaqblLEBsaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMI0-00022A-FT; Tue, 14 Apr 2020 14:11:48 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMHs-00021U-8c
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 14:11:42 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MXHBo-1jlzqa3wdy-00YjEn; Tue, 14 Apr 2020 16:11:35 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 16:10:49 +0200
Message-Id: <20200414141049.63426-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:KXcLMmkDaUlzpTjAelhrXl164pPkRg3ENLJ5o83todF1V8XUZ5V
 R/kpvs3FjLknYd7WHQukLXZNsoXXepCEVmXtS1iqMJfDOS4qhwaVxNACNnEUTxZf+KV7Wf4
 K1gbfJ1nQ93EE2+IvhXTMFwbh2VrnERwRcTGSD4840qYVA3FR210mrY2MDpxqObbjyrRc9Z
 LOKhmw5Tkwvgl0edUlusg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uZSOHIDfF94=:dU6iR1QFv9xGBmxqBqvpJJ
 vBpzXv8PgIzdo5qtUQyCLQJ9c62VIRokxf8jFjgsSJ6eP+ZwX9tWeSPitEfWSDquJrRJ3gEwl
 Nlfyd4wlTA0RQei8i3v0vSo6d94AErWqfgCaFK5TMZ8KwuMoPtewOgSoG7xfzPIXsb0ldZro4
 +qGhcCu/ssDBk+OAtEiCCNSd8dLWoMS1rE0/gqnm7itsmIWUiLzlTKH/vhaq1AXaoeuurrEi8
 uAtpxpDePXYipn+QbvrxlaM5BKVPugl3+EV6LVGwahlKL9NzkrqKRk6IMW86RYV9cnfhCbHQ0
 pLLPGfKm/ev/PaF0lwHCmI3BFJF4lJq2pYTf0KCa40eSAWPD4AMB5d4MozEDvCPylEls4f4+w
 0bFp4KGDZdRPH2mkqdVR2vfckWhfu52mn9TAQgj1knsSNCuE1VkOgb2jBCyeLh2hi+COBZ0F3
 hT6e0caA3+GB29hs7RTV6f5/b6Nl0EWy6MXj8aAQSviecLhKnTBPlRttjh0Xxl5IYU/wJp7/H
 wi6pCmUt6TA/s7nmpHgaS2hspeNgyhYUWnAftOmusgqbVR9O8nmBoF6+6DlIfQJFB1jyG1gDd
 Ej08mBas6g6pG6aI+/UbO40e14j0rnBBy+6HPcJrJuhMQdWm0+t4HEGY9YWCuuFAOB5UfegT9
 JJWJvdTvFKD1aHwmknkryOsUVQA/PkEuEW4fojRkOIMzzE9ADbPIx1EZRuuop4v9fqzpP6HET
 1qdi8I/vrMD1GYbrTPbL5wX7XLN4CEdPZRW7JkNLNZNo0Gwe4HmhzZMIlz3RB5eklAvM7mE2I
 14V4BFqye/960UZseZu/wWqJh/yGzuSz+wW0yNDOJQEOlmghiVLJ4i1urEDu9ECdXvB24Lc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_071140_593834_D3A0B5A8 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] ltq-adsl(-fw): Makefile clean-up and
 fixes
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
- fix config symbol for debugging

Fixes: 1d0a9d0c0470 ("move ltq-adsl")

Cc: John Crispin <john@phrozen.org>

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/kernel/lantiq/ltq-adsl-fw/Makefile | 6 +++---
 package/kernel/lantiq/ltq-adsl/Config.in   | 6 +++---
 package/kernel/lantiq/ltq-adsl/Makefile    | 8 ++++----
 3 files changed, 10 insertions(+), 10 deletions(-)

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
diff --git a/package/kernel/lantiq/ltq-adsl/Config.in b/package/kernel/lantiq/ltq-adsl/Config.in
index 6d9caf4419..8ae65d373a 100644
--- a/package/kernel/lantiq/ltq-adsl/Config.in
+++ b/package/kernel/lantiq/ltq-adsl/Config.in
@@ -1,5 +1,5 @@
-config LANTIQ_DSL_DEBUG
+config LANTIQ_ADSL_DEBUG
 	bool "verbose debugging"
-	depends on PACKAGE_kmod-ltq-dsl
+	depends on PACKAGE_kmod-ltq-adsl
 	help
-	  Say Y, if you need ltq-dsl to display debug messages.
+	  Say Y, if you need ltq-adsl to display debug messages.
diff --git a/package/kernel/lantiq/ltq-adsl/Makefile b/package/kernel/lantiq/ltq-adsl/Makefile
index e6817efffc..1a9128fc58 100644
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
 
@@ -75,7 +75,7 @@ CONFIGURE_ARGS += --enable-add-drv-cflags="-DMODULE -DCONFIG_$(CONFIG_TAG_$(BUIL
 
 CONFIGURE_ARGS += --enable-danube
 
-ifeq ($(CONFIG_LANTIQ_DSL_DEBUG),y)
+ifeq ($(CONFIG_LANTIQ_ADSL_DEBUG),y)
 CONFIGURE_ARGS += \
 	--enable-debug=yes \
 	--enable-debug-prints=yes
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
