Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE07130264
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 13:36:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1zoxrMMyVztRo7IsVY/xAfAv9z15FwDRDULc09fkzk=; b=HRwXH+mB1Lm1yK
	RDjWJQEfUjnyvDjLbpTkhO2+PKIBNA8abAZh5BdiFqd8s55PbPtfrHOKWOgiFHdLRlnvVb/RjJurD
	Ge6Vu5ITuWTy9iqHZ1DLkmUTdOZ30sRJBRQJjQmXq7nKWZ+vAXaYxDu49fqeGMudrKvRBZJv/D6B2
	C1R8qZI1zbaYmAGnkb7D0sfs74lPsJCn0CsNaY3pbeHf58aY5jVXToSX1XRBXTJYsXSALQsoKJPFe
	f1EynxLIfB9/bypdFXjFgTfSSVNJAGPXTBWLdXvfLzPlrWx66Dwy7XI3LYXls69Woert90lv2zWlC
	5IiKzRs3d+sxxBeYqiig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iniel-0005xj-My; Sat, 04 Jan 2020 12:35:51 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iniee-0005xB-Ue
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 12:35:47 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1inieR-0002Pj-2N; Sat, 04 Jan 2020 13:35:39 +0100
Date: Sat, 4 Jan 2020 14:35:25 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Message-ID: <20200104123525.GC1301@makrotopia.org>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
 <20191122095541.688125-3-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122095541.688125-3-thomas.petazzoni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_043544_989237_7678155F 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/7] package/system/procd: add SELinux
 support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Thomas,

On Fri, Nov 22, 2019 at 10:55:36AM +0100, Thomas Petazzoni wrote:
> This commit adds a patch to procd to support loading the SELinux
> policy early at boot time, and adjusts the procd package to use this
> SELinux support when libselinux is enabled.
> 
> The procd patch has been submitted separately [1]: obviously the
> intent is to have it merged in the procd Git repository rather than
> have it in OpenWrt itself.
> 
> [1] http://lists.infradead.org/pipermail/openwrt-devel/2019-November/020070.html
> 
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> ---
>  package/system/procd/Makefile                 |   5 +-
>  ...inimal-SELinux-policy-loading-suppor.patch | 110 ++++++++++++++++++
>  2 files changed, 113 insertions(+), 2 deletions(-)
>  create mode 100644 package/system/procd/patches/0001-initd-init-add-minimal-SELinux-policy-loading-suppor.patch
> 
> diff --git a/package/system/procd/Makefile b/package/system/procd/Makefile
> index c4b86ba746..53d9e1120f 100644
> --- a/package/system/procd/Makefile
> +++ b/package/system/procd/Makefile
> @@ -43,7 +43,7 @@ TARGET_LDFLAGS += -flto
>  define Package/procd
>    SECTION:=base
>    CATEGORY:=Base system
> -  DEPENDS:=+ubusd +ubus +libjson-script +ubox +USE_GLIBC:librt +libubox +libubus +libblobmsg-json +libjson-c
> +  DEPENDS:=+ubusd +ubus +libjson-script +ubox +USE_GLIBC:librt +libubox +libubus +libblobmsg-json +libjson-c +PACKAGE_libselinux:libselinux
>    TITLE:=OpenWrt system process manager
>    USERID:=:dialout=20 :audio=29
>  endef
> @@ -92,7 +92,8 @@ ifdef CONFIG_PACKAGE_procd-ujail
>  endif
>  
>  SECCOMP=$(if $(CONFIG_PACKAGE_procd-seccomp),1,0)
> -CMAKE_OPTIONS += -DSECCOMP_SUPPORT=$(SECCOMP) -DUTRACE_SUPPORT=$(SECCOMP)
> +SELINUX=$(if $(CONFIG_PACKAGE_libselinux),1,0)

Selecting this based on libselinux being selected for build is not
feasible. The buildbot always builds with all packages enabled, yet
not everyone will want libselinux installed on their small-flash
devices... Please use introduce a VARIANT:=selinux instead to have
an additional package procd-selinux. In that way, binary builds will
allow for both, selinux-enabled and non-selinux images being generated.
Another (and even better) solution would be to out-source SELinux
policy loading into a small independent executable in it's own packages
(like eg. procd-seccomp).


Cheers


Daniel

> +CMAKE_OPTIONS += -DSECCOMP_SUPPORT=$(SECCOMP) -DUTRACE_SUPPORT=$(SECCOMP) -DSELINUX=$(SELINUX)
>  
>  define Package/procd/install
>  	$(INSTALL_DIR) $(1)/sbin $(1)/etc $(1)/lib/functions
> diff --git a/package/system/procd/patches/0001-initd-init-add-minimal-SELinux-policy-loading-suppor.patch b/package/system/procd/patches/0001-initd-init-add-minimal-SELinux-policy-loading-suppor.patch
> new file mode 100644
> index 0000000000..cfab059b40
> --- /dev/null
> +++ b/package/system/procd/patches/0001-initd-init-add-minimal-SELinux-policy-loading-suppor.patch
> @@ -0,0 +1,110 @@
> +From fe74ad8b11977d0ced5c44f5e389c50ee70bc008 Mon Sep 17 00:00:00 2001
> +From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> +Date: Thu, 23 May 2019 13:57:30 +0200
> +Subject: [PATCH] initd/init: add minimal SELinux policy loading support
> +
> +In order to support SELinux in OpenWRT, this commit introduces minimal
> +support for loading the SELinux policy in the init code. The logic is
> +very much inspired from what Busybox is doing: call
> +selinux_init_load_policy() from libselinux, and then re-execute init
> +so that it runs with the SELinux policy in place and enforced.
> +
> +Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> +---
> + CMakeLists.txt |  9 ++++++++-
> + initd/init.c   | 38 ++++++++++++++++++++++++++++++++++++++
> + 2 files changed, 46 insertions(+), 1 deletion(-)
> +
> +diff --git a/CMakeLists.txt b/CMakeLists.txt
> +index 4b3eebd..865e43c 100644
> +--- a/CMakeLists.txt
> ++++ b/CMakeLists.txt
> +@@ -40,6 +40,12 @@ IF(ZRAM_TMPFS)
> +   SET(SOURCES_ZRAM initd/zram.c)
> + ENDIF()
> + 
> ++IF(SELINUX)
> ++  include(FindPkgConfig)
> ++  pkg_search_module(SELINUX REQUIRED libselinux)
> ++  add_compile_definitions(WITH_SELINUX)
> ++ENDIF()
> ++
> + add_subdirectory(upgraded)
> + 
> + ADD_EXECUTABLE(procd ${SOURCES})
> +@@ -56,7 +62,8 @@ ADD_DEFINITIONS(-DDISABLE_INIT)
> + ELSE()
> + ADD_EXECUTABLE(init initd/init.c initd/early.c initd/preinit.c initd/mkdev.c sysupgrade.c watchdog.c
> + 	utils/utils.c ${SOURCES_ZRAM})
> +-TARGET_LINK_LIBRARIES(init ${LIBS})
> ++TARGET_INCLUDE_DIRECTORIES(init PUBLIC ${SELINUX_INCLUDE_DIRS})
> ++TARGET_LINK_LIBRARIES(init ${LIBS} ${SELINUX_LIBRARIES})
> + INSTALL(TARGETS init
> + 	RUNTIME DESTINATION ${CMAKE_INSTALL_SBINDIR}
> + )
> +diff --git a/initd/init.c b/initd/init.c
> +index 29eee50..561970c 100644
> +--- a/initd/init.c
> ++++ b/initd/init.c
> +@@ -29,6 +29,10 @@
> + #include <unistd.h>
> + #include <stdio.h>
> + 
> ++#if defined(WITH_SELINUX)
> ++#include <selinux/selinux.h>
> ++#endif
> ++
> + #include "../utils/utils.h"
> + #include "init.h"
> + #include "../watchdog.h"
> +@@ -67,6 +71,38 @@ cmdline(void)
> + 	}
> + }
> + 
> ++#if defined(WITH_SELINUX)
> ++static int
> ++selinux(char **argv)
> ++{
> ++	int enforce = 0;
> ++	int ret;
> ++
> ++	/* SELinux already initialized */
> ++	if (getenv("SELINUX_INIT"))
> ++		return 0;
> ++
> ++	putenv("SELINUX_INIT=1");
> ++
> ++	ret = selinux_init_load_policy(&enforce);
> ++	if (ret == 0)
> ++		execv(argv[0], argv);
> ++
> ++	if (enforce > 0) {
> ++		fprintf(stderr, "Cannot load SELinux policy, but system in enforcing mode. Halting.\n");
> ++		return 1;
> ++	}
> ++
> ++	return 0;
> ++}
> ++#else
> ++static int
> ++selinux(char **argv)
> ++{
> ++	return 0;
> ++}
> ++#endif
> ++
> + int
> + main(int argc, char **argv)
> + {
> +@@ -79,6 +115,8 @@ main(int argc, char **argv)
> + 	sigaction(SIGUSR2, &sa_shutdown, NULL);
> + 	sigaction(SIGPWR, &sa_shutdown, NULL);
> + 
> ++	if (selinux(argv))
> ++		exit(-1);
> + 	early();
> + 	cmdline();
> + 	watchdog_init(1);
> +-- 
> +2.21.0
> +
> -- 
> 2.23.0
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
