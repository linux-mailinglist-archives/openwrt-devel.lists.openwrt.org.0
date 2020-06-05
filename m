Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB191F0394
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 01:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xPZT/jqxn3zlGjZmg+2txYU32zLA5Eg8ugz9DWNNYIo=; b=NSI+NlzzrtOV70
	W4q4ZdGh7yORhMgs6knxXGffY/0SS/5tXdFLNPSM4yIGctgmh1eDDVW9oLEdBbZ14mA2rJcS1ywKB
	PMl74yF3WLhzvM7vhyPlS07y/2V8uqr8jmSSB9mxUnvdlKZirLKVkWPiXcW4mTCIlR0EPdVkIXE8y
	3XmrA9c6HG6nlV8CdTlkx7FzSymKtjvX7h4imVia9IAiJ09YbPv48ztG2aP2eX3KySTh/HM6IdGA/
	8OYLs3DPLoSvj9Z01JiK5PDZdvyt3VGexrW4Smi/lP9KhWAwenu2O6y0pcb4ngNv1E27eugtDRGes
	v1MiiiHiZgRb97oCD4sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhLzA-0001yV-HV; Fri, 05 Jun 2020 23:42:52 +0000
Received: from mail-oln040092253091.outbound.protection.outlook.com
 ([40.92.253.91] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhLz2-0001xE-Qd
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 23:42:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+Gx+kndzXF2ToSNfQmK4mvm+qmfPcFopKXXwBHIhoN1aWYmenlLGUfIJqXPeNqe7UDzKIAIjl5eLS5HY75t2wDTJpBAMZSWzXvuTjC3YfyfphsDWlevsc0kkNhY+Glza5QApRgGw763J1MhADdM/2bIwbR1piYq8okh+lnT3wuyGF088IJKLYcoreiL8X2EMtxJvQ5qy598eJbJMPp1YvkJaqQWJzFLsLmhVFsm2fcm41oYvneh8Gyivp9P2avt43exOrudTBw8s23l/PljEEgZKrGhm7uy3Nca5nOICjgnkwNTC1/2ekv3fwnkQkdspcxAl0SZ8kadOvxUzrifsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zk16l4DnD4aYeqX3j8nn6hUANUF+bdp2e3OgCh9gGdc=;
 b=bPygVao4RsmIIv8Pv0Nz+8LCWgdi9X0mrvxK7QgP3RxFsezsikrAXfy1mcTte0ilucpa14unwGl7OJfBKiH+DNm3DOq4ARPUz/aY9/X2qrZAA36lsWLxawXNwx7Kd/Yl+u2bDstWJxyn5hPl8ucf+9J0k8Wx5DoEN/oANqEgTWpSAerjUGZG8QVUfKM3nB07TioHP6Y+kV+IsVErLomX0gHCzUDgT4XLd4tuLoEdJOn+zzorxmdwjxz2vVnkNrr7kL5+O3kZR+l+bjndjjSt4ogAwl82ovIztIN95nYWzoXg9V28yu8r0XfpXnvFDGX7e9HJyYNf09ODV7o5OGYyig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zk16l4DnD4aYeqX3j8nn6hUANUF+bdp2e3OgCh9gGdc=;
 b=kgIaZWyK7CLVC+HP7XAZXlJIhS2/gYaNtsOy5Tt1ImFONkNox9gMulltCeBKPUvlocYvyuALT+1unV219+g3uXxqE52tqRXKHhTtOc75POOP1LoULNUg+ylYF+gPL65nKJGV26mhFRqV0BCVLGAmzpLC526EivIXXi+OvcoCVq77EBEHTZIClM9HQAwcCo8voMcB0BA/O7ZVx2KS7cJzC8IvYUNYYhnZ8SxjvuJznY0L7GkAw+Xnfo39gTcv7CKwrjR+2yEuGswmt3HfgJ7ht8zZGwMdG1PAVzkV6U2DedDE6Us/mK4Fv80d6gMuV5X4oZcbllRO8/bkvxqBeKpI6Q==
Received: from HK2APC01FT021.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4e) by
 HK2APC01HT031.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::266)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Fri, 5 Jun
 2020 23:42:40 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebc::4c) by HK2APC01FT021.mail.protection.outlook.com
 (2a01:111:e400:7ebc::181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Fri, 5 Jun 2020 23:42:40 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:5060D630B071A493804D86A6753A0D8E4701066F9AF0954498DFB2443BD1E2BD;
 UpperCasedChecksum:D50A5795B1B8A5B59A96FE66A654DFF80EF95A7518E3EB73AF43C6F4603BED23;
 SizeAsReceived:7415; Count:47
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3066.022; Fri, 5 Jun 2020
 23:42:39 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  6 Jun 2020 00:42:15 +0100
Message-ID: <KU1PR01MB2022EE2CC6B85C0499DD382CAD860@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: LO2P265CA0182.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::26) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200605234215.1467282-1-iancooper@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (80.3.14.56) by
 LO2P265CA0182.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.18 via Frontend Transport; Fri, 5 Jun 2020 23:42:37 +0000
X-Mailer: git-send-email 2.25.1
X-Microsoft-Original-Message-ID: <20200605234215.1467282-1-iancooper@hotmail.com>
X-TMN: [8wWpyftxyHiQBRw37rDM+qHBpT0UyU1J]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: a70f75ff-8da9-4a85-7679-08d809aa2165
X-MS-TrafficTypeDiagnostic: HK2APC01HT031:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jsdJWCU6nkTnycbIp5QpJOMtpzZxPnoIhBxs2TTeQah3EImZTuGYt4J62B6oC5hgSPmtiHvjNQLyYufKLmLFqUcmcl3YybrGZBLxc33gMQJu5yhO8fgiZLoCMFVi3/q3Pe9GKjbziUm4YWc5Gz1K6aSF5NgpowEqKiMHlqQESyt1rKr8sUhNA0MUTEx1RVCE8ujC4gNAlV18CvYgQN1wrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: pLvLYiYChQB0U5GCpSaKIqJDWhu/+r5d12trf0Aigm9m5gObXL6YPkbk/dlu2ee51Yub42Dpj8niZGhYQZ9J0Enc8AIUh0jjsyU49FJTBp/x3fZ/r8ienkkQXbsp9zEZwTvYBt9U0bbKuJjtstgLmA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a70f75ff-8da9-4a85-7679-08d809aa2165
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 23:42:39.7284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_164244_932802_BF749DD1 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.92.253.91 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.253.91 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2] toolchain: remove gcc libssp and use
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

Update fixes an artefact with menuconfig which caused a toolchain
menu option to move to the front page of menuconfig due to the
removal of a prompt associated with a different CONFIG_ variable.

NOTE: after applying this patch you must do a make dirclean as the
entire toolchain and all packages will need to be rebuilt.

This patch does not change the behaviour ot the musl toolchain.
There are no changes to the uclibc toolchain since it's already
being compiled with it's native ssp implementation enabled.

 config/Config-build.in    | 4 ----
 toolchain/Config.in       | 6 +++++-
 toolchain/gcc/Config.in   | 8 --------
 toolchain/glibc/common.mk | 3 ++-
 4 files changed, 7 insertions(+), 14 deletions(-)

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
index 762f4e10d7..e2af1c2c8e 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -283,8 +283,12 @@ config USE_MUSL
 	default y if !TOOLCHAINOPTS && !EXTERNAL_TOOLCHAIN && !NATIVE_TOOLCHAIN && !(arc)
 	bool
 
+config GCC_LIBSSP
+        default n
+        bool
+
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
