Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162DB1FA299
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 23:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9wmpKUcYHPtQzJ3wK9BE/yBOgVATyJJssUkTskOXDk8=; b=auMrEIA1pmxFW1
	G5ngtXR5x6fHKkn89Jfl0W7XMkNvyiu+k2V+5cClQnwe+RcYAvIenOCYm+oGrtW0rHedYQPT9NM4G
	xY2T+BXFlpaZ29T5svqqhK2SQrZKrDYmR3dhUFix0HFnPdbbNgLJi2TXtoeoSgo5aKlkprq0vWWYL
	pAUwANrlQBqGii0NiT+d2PZOZmb8Mu9nrucc15q0dvXR/Jtwaf7udhnv+cDdBcwkS7H+n93wK0Z/4
	v/7pm6etAqL9ybJh6+aFO67uao6l0SavLwukri/u616p+qsLHPdRlfXORzdQFCMNWY354lm202MPi
	9xdod7vBwTZUrj5qMlVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkwRS-00049s-8L; Mon, 15 Jun 2020 21:14:54 +0000
Received: from mail-hk2apc01olkn0800.outbound.protection.outlook.com
 ([2a01:111:f400:febc::800]
 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkwRK-00049G-Pa
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 21:14:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jm481PY+TndeomvexLHKZr+nL/UslXcxhKSbP9oNsdzSU+fsRGgJA0br3rJtc3EMlKsF2qI8JJzwK4YnTRz6UynfzU56V6/4WOlOrCWX9p9OvZ8KNDhG+49a8GzxrdVcgKosxPmkD1+kKf7sOq6Kc0Ws270BG4OodBWB6z1rkQaG1MDMvK40IWeqnDcedHjDh3faN74L5i0YMP/yXY9tB8SuQIzZJebDgLqzMCYxqfRtcPVKtl3cknNejl0gSz3tZW/sX1ckDuL9Z8Q5gPA2+rpVe55s91Z+cbFz1zckkplHS3AwM0AxLZpBd9VL/OGcer+AeFohhfFpkZG1n/YpYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b5FdikswXG92vy6eEyOQobHoqxux9VBPOAH45K2Sk0k=;
 b=mbzJuUKAp5HcNbjWVni+2rOgIEMITBLRNH99iD9ysJePoU/3eSluBQPJpcPot52uQdUbDqw4qLhxqjiMJmHJqQR+pzgfU6gI/iHwemk5nhYuBYwHU19Tvl061GAb43zr2Gc7hsjZxI+NJgAdwEUXjdQ8NtiCR6vtt3QzGXOdhr1HoW+TbZ/JshDf5zdKRefDHpqV1fcK3s+CX1W/YNnlTYF4qUAb0vTeMCsn3zLjQP+mR+Y9UwUbDANMrqQ1/jdjfjXixaCrk/RUEfTwmwev8+qqv8oz+Gg2RD4FF03RlDsfcao9Eb/Rm29oS+rhsfNmBmZXgDNfZ52DbpyqqxQLJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b5FdikswXG92vy6eEyOQobHoqxux9VBPOAH45K2Sk0k=;
 b=eh/OsEMd3cuF6QSjj9fZ7L7rXFx36vKPINrOl0h7YTGH6Wx4GdrLk2IvS5EQwO9CQI5q2IBHdbRJmHULAiQ8S+SEexioRgR9YWYUMmU1iXSVjaJTJDT27cXljSolJm1qku9lFQzMr8/AfU318F7kK7KX8itESUH8Z33xvjUz0PCcbWGEGb5y+DP5wlPh29WVStT3NIRts3odvSJPW4pEk4yqtcDRqjRf+pfaKIOPqQ5ACMYjWLjmu8SJAF2QsE4iME2iYM5ft5gybE7399UdoRR3uDaZVWDgR7GPT36ui4r9Hkf3yG5GUwfcYd0VW/Ie+pZqePWmEtnUIPsfkE/LGw==
Received: from PU1APC01FT008.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::50) by
 PU1APC01HT191.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::176)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Mon, 15 Jun
 2020 21:14:23 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebe::4f) by PU1APC01FT008.mail.protection.outlook.com
 (2a01:111:e400:7ebe::66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Mon, 15 Jun 2020 21:14:23 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:E8611D17593A16A8599064486C89701F22FDA2B3634FF1CCB10A5A441523D6EF;
 UpperCasedChecksum:53198A2C39BE57B8B803844DB4DC128C6590983657B03C7726122D9A587D440E;
 SizeAsReceived:7369; Count:46
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3088.029; Mon, 15 Jun 2020
 21:14:23 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jun 2020 22:14:04 +0100
Message-ID: <KU1PR01MB2022122931FAA4F7C8E130C5AD9C0@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: LNXP265CA0019.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::31) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200615211404.1345084-1-iancooper@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (80.3.14.56) by
 LNXP265CA0019.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5e::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 21:14:22 +0000
X-Mailer: git-send-email 2.25.1
X-Microsoft-Original-Message-ID: <20200615211404.1345084-1-iancooper@hotmail.com>
X-TMN: [fpAVPoSBbDBfZgaPBYonfrmMLl1gKHS5]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: ecdbc568-1bfa-4cb6-e98d-08d81171136c
X-MS-TrafficTypeDiagnostic: PU1APC01HT191:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1h29+kmJiMqSGmZ5KdG2EzDLiuXnFklNXhEiVTwH2XqM7Mu/HzwFmUBSDfqShGZCtMUoEKTQ7rSGmGd4nVndsOtI/lN2ausItdkIFUym+8tFkdOEusuVjNi6+ea8mjXKVS+Eo3yktuSudTmLxBXSMj8xMc7gELx9nYv07HJ1VFkiz5JsZOgJ0OCidnNPa0JCZq1p6HKL3JDDJLV8RX5bbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: Si5uGBmiy0V7a6KiXGbaGq9kTa5VILM5yGghDnns2TsfKL8DJxa80x3mSUeuPnShnwuMpsu8s0fSvwqNbLSkwPGMQ1/BYH6vTyyC28cKoiqdsj4Vt6MK3cxKkUJSbn4zIq45ZCrWR+oArcB0H/2E+Q==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecdbc568-1bfa-4cb6-e98d-08d81171136c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 21:14:23.1534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT191
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_141446_942892_433045D2 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:febc:0:0:0:800 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3] toolchain: remove gcc libssp and use
 libc variant
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

Removes the standalone implementation of stack smashing protection
in gcc's libssp in favour of the native implementation available
in glibc and uclibc. Musl libc already uses its native ssp, so this
patch does not affect musl-based toolchains.

Stack smashing protection configuration options are now uniform
across all supported libc variants.

This also makes kernel-level stack smashing protection available
for x86_64 and i386 builds using non-musl libc.

Signed-off-by: Ian Cooper <iancooper@hotmail.com>
---

V3: remove all references to gcc's libssp everywhere.

Compile tested on x86_64 glibc, x86_64 musl, arc uclibc, i386 glibc
Run-tested on x86_64 glibc

Note: if applying this patch on a glibc or uclibc toolchain, you must
do a make dirclean as the toolchain and all packages will need to be
rebuilt due to elimination of gcc's libssp in those toolchains. Musl
toolchains do not require a rebuild. 

 config/Config-build.in          |  4 ----
 include/package-defaults.mk     |  2 +-
 package/libs/toolchain/Makefile | 41 ---------------------------------
 toolchain/Config.in             |  2 +-
 toolchain/gcc/Config.in         |  8 -------
 toolchain/gcc/common.mk         |  9 +-------
 toolchain/glibc/common.mk       |  3 ++-
 7 files changed, 5 insertions(+), 64 deletions(-)

diff --git a/config/Config-build.in b/config/Config-build.in
index 61a9265ad7..ac1e05d2ff 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -249,7 +249,6 @@ menu "Global build settings"
 
 	choice
 		prompt "User space Stack-Smashing Protection"
-		depends on USE_MUSL
 		default PKG_CC_STACKPROTECTOR_REGULAR
 		help
 		  Enable GCC Stack Smashing Protection (SSP) for userspace applications
@@ -257,18 +256,15 @@ menu "Global build settings"
 			bool "None"
 		config PKG_CC_STACKPROTECTOR_REGULAR
 			bool "Regular"
-			select GCC_LIBSSP if !USE_MUSL
 			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
 		config PKG_CC_STACKPROTECTOR_STRONG
 			bool "Strong"
-			select GCC_LIBSSP if !USE_MUSL
 			depends on KERNEL_CC_STACKPROTECTOR_STRONG
 	endchoice
 
 	choice
 		prompt "Kernel space Stack-Smashing Protection"
 		default KERNEL_CC_STACKPROTECTOR_REGULAR
-		depends on USE_MUSL || !(x86_64 || i386)
 		help
 		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
 		config KERNEL_CC_STACKPROTECTOR_NONE
diff --git a/include/package-defaults.mk b/include/package-defaults.mk
index 31e331b2d5..2fed72b1a4 100644
--- a/include/package-defaults.mk
+++ b/include/package-defaults.mk
@@ -5,7 +5,7 @@
 # See /LICENSE for more information.
 #
 
-PKG_DEFAULT_DEPENDS = +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread
+PKG_DEFAULT_DEPENDS = +libc +USE_GLIBC:librt +USE_GLIBC:libpthread
 
 ifneq ($(PKG_NAME),toolchain)
   PKG_FIXUP_DEPENDS = $(if $(filter kmod-%,$(1)),$(2),$(PKG_DEFAULT_DEPENDS) $(filter-out $(PKG_DEFAULT_DEPENDS),$(2)))
diff --git a/package/libs/toolchain/Makefile b/package/libs/toolchain/Makefile
index c13e9e4928..f92a1779da 100644
--- a/package/libs/toolchain/Makefile
+++ b/package/libs/toolchain/Makefile
@@ -83,33 +83,6 @@ define Package/libatomic/config
 	endmenu
 endef
 
-define Package/libssp
-$(call Package/gcc/Default)
-  DEPENDS+=@GCC_LIBSSP
-  TITLE:=GCC support library
-endef
-
-define Package/libssp/config
-	menu "Configuration"
-		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libssp
-
-	config LIBSSP_ROOT_DIR
-		string
-		prompt "libssp shared library base directory"
-		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libssp
-		default TOOLCHAIN_ROOT  if !NATIVE_TOOLCHAIN
-		default "/"  if NATIVE_TOOLCHAIN
-
-	config LIBSSP_FILE_SPEC
-		string
-		prompt "libssp shared library files (use wildcards)"
-		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libssp
-		default "./lib/libssp.so.*"
-
-	endmenu
-endef
-
-
 define Package/libstdcpp
 $(call Package/gcc/Default)
   NAME:=libstdc++
@@ -519,11 +492,6 @@ ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
 	$(CP) $(TOOLCHAIN_DIR)/lib/libgfortran.so.* $(1)/usr/lib/
   endef
 
-  define Package/libssp/install
-	$(INSTALL_DIR) $(1)/lib
-	$(CP) $(TOOLCHAIN_DIR)/lib/libssp.so.* $(1)/lib/
-  endef
-
   define Package/libstdcpp/install
 	$(INSTALL_DIR) $(1)/usr/lib
 	$(CP) $(TOOLCHAIN_DIR)/lib/libstdc++.so.* $(1)/usr/lib/
@@ -670,14 +638,6 @@ else
 	done
   endef
 
-  define Package/libssp/install
-	for file in $(call qstrip,$(CONFIG_LIBSSP_FILE_SPEC)); do \
-		$(INSTALL_DIR) $(1)/lib ; \
-		$(CP) $(call qstrip,$(CONFIG_LIBSSP_ROOT_DIR))/$$$$file $(1)/lib/ ; \
-	done ; \
-	exit 0
-  endef
-
   define Package/libstdcpp/install
 	for file in $(call qstrip,$(CONFIG_LIBSTDCPP_FILE_SPEC)); do \
 		$(INSTALL_DIR) $(1)/lib ; \
@@ -789,7 +749,6 @@ endif
 $(eval $(call BuildPackage,libc))
 $(eval $(call BuildPackage,libgcc))
 $(eval $(call BuildPackage,libatomic))
-$(eval $(call BuildPackage,libssp))
 $(eval $(call BuildPackage,libstdcpp))
 $(eval $(call BuildPackage,libasan))
 $(eval $(call BuildPackage,libtsan))
diff --git a/toolchain/Config.in b/toolchain/Config.in
index 762f4e10d7..cb557d4ad3 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -284,7 +284,7 @@ config USE_MUSL
 	bool
 
 config SSP_SUPPORT
-	default y if USE_MUSL || GCC_LIBSSP
+	default y if !PKG_CC_STACKPROTECTOR_NONE
 	bool
 
 config USE_EXTERNAL_LIBC
diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
index 7d7f34210a..4b2ba7aaae 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -47,14 +47,6 @@ config GCC_DEFAULT_SSP
 	help
 	    Use gcc configure option --enable-default-ssp to turn on -fstack-protector-strong by default.
 
-config GCC_LIBSSP
-	bool
-	prompt "Build gcc libssp" if TOOLCHAINOPTS
-	depends on !USE_MUSL
-	default y if !USE_MUSL
-	help
-	    Enable Stack-Smashing Protection support
-
 config SJLJ_EXCEPTIONS
 	bool
 	prompt "Use setjump()/longjump() exceptions" if TOOLCHAINOPTS
diff --git a/toolchain/gcc/common.mk b/toolchain/gcc/common.mk
index 7fb30285aa..ec3ea8fff1 100644
--- a/toolchain/gcc/common.mk
+++ b/toolchain/gcc/common.mk
@@ -104,6 +104,7 @@ GCC_CONFIGURE:= \
 		--disable-multilib \
 		--disable-libmpx \
 		--disable-nls \
+		--disable-libssp \
 		$(GRAPHITE_CONFIGURE) \
 		--with-host-libstdcxx=-lstdc++ \
 		$(SOFT_FLOAT_CONFIG_OPTION) \
@@ -131,14 +132,6 @@ ifneq ($(CONFIG_GCC_DEFAULT_SSP),)
 		--enable-default-ssp
 endif
 
-ifneq ($(CONFIG_GCC_LIBSSP),)
-  GCC_CONFIGURE+= \
-		--enable-libssp
-else
-  GCC_CONFIGURE+= \
-		--disable-libssp
-endif
-
 ifneq ($(CONFIG_EXTRA_TARGET_ARCH),)
   GCC_CONFIGURE+= \
 		--enable-biarch \
diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
index db4f0fcc0e..f0b95d3cc7 100644
--- a/toolchain/glibc/common.mk
+++ b/toolchain/glibc/common.mk
@@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
   endif
 endif
 
-
 # -Os miscompiles w. 2.24 gcc5/gcc6
 # only -O2 tested by upstream changeset
 # "Optimize i386 syscall inlining for GCC 5"
@@ -61,6 +60,8 @@ GLIBC_CONFIGURE:= \
 		--without-cvs \
 		--enable-add-ons \
 		--$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
+		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protector=yes) \
+		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=strong) \
 		--enable-kernel=4.14.0
 
 export libc_cv_ssp=no
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
