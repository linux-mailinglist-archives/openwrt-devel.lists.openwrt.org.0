Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA241E194E
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 04:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nsXsSEfmB1ntuOzy1KPZF6POvn3WD1L6xVxD3fO1JSA=; b=p2cwa9bsIhkmO7nnxUMKfduB2/
	MCHE61FEL/suKTGEkLDXoijgtWO2R7wYritrfOT7EMezi/l6Hp6e8+hH6QPqfL6c4jptrWs2/Pxwh
	62r2ZXmxpD0gf8XfMq/zQxRyF62sxmywPu1PhrGhNHQ3innpN/PMdQEOKufWJ0tOR3scvyLLDY7+U
	v08FXxgI+43maX3P2BfyQqtH4DpBIsw4CG/BYbs+JB+mUtUwCMY0c2iZIWUrIpnvV27FN4uxcw/Kp
	eoSm6T8WqygCeWIo/hsTgnbYa1qLCv9y8fkN2s+8BYSPYyjnxpLqLMB1G0bZmbaZBJmA8lbNHB0Ay
	Sm6FRxSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdPDB-00053n-Hg; Tue, 26 May 2020 02:21:01 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPD1-000519-9O
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 02:20:52 +0000
Received: from mail-oln040092253015.outbound.protection.outlook.com
 ([40.92.253.15] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <iancooper@hotmail.com>) id 1jdPCz-0000Eo-4B
 for openwrt-devel@openwrt.org; Mon, 25 May 2020 22:20:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PheBBBQwQc0jwSfqFFA00fKsdLQS+YlwKREdl5hUcwwvzREivyUDL63y9bMv4SHh0oxiX5t0TpGbr7bqW2xLSATH7/qTBxlUrrEzqwQHtzoLBH6YX7PEsrsUJVr0sv7sitmjWaMidxNtpr37jJwHTLIFPJDLv37uIFopjDlL/YOfAXdf2W1tR4pLbw7trSTC4ZKgyYfM3cbRN9xurTWWoA4XdsixLrkdXRHoTDH2QEq88YtJt17R1c2mw2ocHr90O5WR3B/hEP5sZKuq6gjZghLsRB/RIogc3j3jgPull4wkiP5PMFcaIdyhrCSBVGCRbLadbJLbyoVv9iFQXkLWTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nk9QErQNZJPIrGRx5mgv8UVJVO61Cu1M8b+sho6CpY=;
 b=YcV+aDuLeHU7p/twsOXx/dj5HLSfs6CHBiWZw1mPdRaCMubBAEUynLBEG7moScFap6xekjHlXhlXQPbfC30etFOBamlas9aR2Mn0mLCJUzJUQANfvHahYbLxdRFr89ZmEDhqLsd2lSJl+dMdmLSWA2aNGvErqa5Bggxv8mSqOu0YXYcjuMwHTHxHDI0B/F5IQPdNbGxo6HsdBFCgvGS+/XnQoWU410eHBebbYHbcBNicB7XEmuT/y45ow0/gPdJeHGDSyqlfWAevkVMxqvEGmUwPRxIeYOVJWYWM8xZqW4/nruB0I9hTRtOGMfhDAzMX1PMMtZpdNUGxKAcA4Peibw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hotmail.com; dmarc=pass action=none header.from=hotmail.com;
 dkim=pass header.d=hotmail.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nk9QErQNZJPIrGRx5mgv8UVJVO61Cu1M8b+sho6CpY=;
 b=plGUyNsK+gcIeXiHgJrvs1FRdRoaLI9OnN/CbpPWHUBm5tVVauFGzrMDQtoGrDkBkDAJMnN67NrtvMeOAZ0TO69U0QcYh1XZzMEQUd7CaBCofNBH+hYBU4r4To2EtBoAI1rzTQxwfpZWBpDiovT4AEzfRkMpsHD7/yxZgBCGuWjT9amJz0vB0QP/M55Dwcj71O75DKLGDDsImb1PXv5W7eQTBctRsqTTS+R6TWyC82wJ7ndFTWZROqjZjUWI4ITVYBNUezpba5smXV2wEq4cPjppI/MoHrDkQu1i9zav4DUo5aD8vubvQ7ZClTuHQJuF6XVIdzifWYub7Vg9vdVsjQ==
Received: from PU1APC01FT061.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::4e) by
 PU1APC01HT111.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::325)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Tue, 26 May
 2020 02:20:30 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebe::49) by PU1APC01FT061.mail.protection.outlook.com
 (2a01:111:e400:7ebe::280) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Tue, 26 May 2020 02:20:30 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:2BDC4BF39BBBA8F2313E0233B3D6A0856597999A9C48BC03F65B2727A0B3F47D;
 UpperCasedChecksum:93D89FB3FBBC2021F1AC03D9616AD5F28C5449BA22EF7FDBBAFAAA8C7A74C64D;
 SizeAsReceived:7557; Count:49
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 02:20:30 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: openwrt-devel@openwrt.org
Date: Tue, 26 May 2020 03:20:09 +0100
Message-ID: <KU1PR01MB2022BE75254218CF30E1C9B7ADB00@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200526022009.2545101-1-iancooper@hotmail.com>
References: <20200526022009.2545101-1-iancooper@hotmail.com>
X-ClientProxiedBy: LO2P123CA0020.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::32) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200526022009.2545101-2-iancooper@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from azeroth.kz3.eu (80.3.14.56) by
 LO2P123CA0020.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:a6::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Tue, 26 May 2020 02:20:29 +0000
X-Mailer: git-send-email 2.25.1
X-Microsoft-Original-Message-ID: <20200526022009.2545101-2-iancooper@hotmail.com>
X-TMN: [+hJyXEIaMuRk2sk1QW63Nfj81moHFpEV]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 522cdf9b-2892-49f6-9588-08d8011b5ca9
X-MS-TrafficTypeDiagnostic: PU1APC01HT111:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xKXwE9H/aiM8YXznYFCRcFDVr6+80WrX2XFwayriea+r2/fLzH+JaBW1b8hnWTOsWjXbnordG41p1JLiMC21n0kX7snmmAAz/D1pVDieLr+XDEKsFk7wV/8kBUUguCgda89bRuswVpf70A6tkkKl9rUpTsC1H6fJ5ynNCvLq1N3EmB7ENnvqXo1HTanlnL1zPogZPrRehqmomTqbJaq7QQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: yICJGef1D9nDViarcD3FOGYNKK8otexSXgmMouWgZBI+44+2/tAatbxRDNn9OD3KF90s5SklB3EOoxI6cy7u/T+ihnU4pOONN+8AJBQmxUkW8Ioqk5Z+2vBIJn4NjJLhc2OryVcZRf3uB+3Qv6hosg==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 522cdf9b-2892-49f6-9588-08d8011b5ca9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 02:20:30.5896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT111
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: Removes the standalone implementation of stack smashing
 protection
 in gcc's libssp in favour of the native implementation in musl, glibc and
 uClibc and introduces a uniform configuration interface. This also makes
 kernel-level stack smashing protection available for builds using non-musl
 libc (subject to architecture support). 
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: config-build.in]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (iancooper[at]hotmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.253.15 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_192051_502659_22F64B27 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/1] toolchain: remove gcc libssp and use
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
in gcc's libssp in favour of the native implementation in musl,
glibc and uClibc and introduces a uniform configuration interface.

This also makes kernel-level stack smashing protection available
for builds using non-musl libc (subject to architecture support).

Signed-off-by: Ian Cooper <iancooper@hotmail.com>
---
 config/Config-build.in      | 4 ----
 toolchain/Config.in         | 2 +-
 toolchain/binutils/Makefile | 8 --------
 toolchain/gcc/Config.in     | 6 +-----
 toolchain/glibc/common.mk   | 3 ++-
 5 files changed, 4 insertions(+), 19 deletions(-)

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
diff --git a/toolchain/binutils/Makefile b/toolchain/binutils/Makefile
index c5c8bf588c..6eee77eaa9 100644
--- a/toolchain/binutils/Makefile
+++ b/toolchain/binutils/Makefile
@@ -54,14 +54,6 @@ HOST_CONFIGURE_ARGS = \
 	$(SOFT_FLOAT_CONFIG_OPTION) \
 	$(call qstrip,$(CONFIG_EXTRA_BINUTILS_CONFIG_OPTIONS))
 
-ifneq ($(CONFIG_SSP_SUPPORT),)
-  HOST_CONFIGURE_ARGS+= \
-		--enable-libssp
-else
-  HOST_CONFIGURE_ARGS+= \
-		--disable-libssp
-endif
-
 ifneq ($(CONFIG_EXTRA_TARGET_ARCH),)
   HOST_CONFIGURE_ARGS+= \
 		--enable-targets=$(call qstrip,$(CONFIG_EXTRA_TARGET_ARCH_NAME))-linux-$(TARGET_SUFFIX)
diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
index 7d7f34210a..c481af88d0 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -49,11 +49,7 @@ config GCC_DEFAULT_SSP
 
 config GCC_LIBSSP
 	bool
-	prompt "Build gcc libssp" if TOOLCHAINOPTS
-	depends on !USE_MUSL
-	default y if !USE_MUSL
-	help
-	    Enable Stack-Smashing Protection support
+	default n
 
 config SJLJ_EXCEPTIONS
 	bool
diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
index 768ff19060..b908afc50f 100644
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
+		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protector=yes,) \
+		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=strong,) \
 		--enable-kernel=4.14.0
 
 export libc_cv_ssp=no
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
