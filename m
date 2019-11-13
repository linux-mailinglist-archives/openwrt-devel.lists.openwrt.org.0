Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30456FB36B
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 16:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Zl1uU0OYFcYzsKyr8Edgw2c4R7SfoqVYKshSugsvfA=; b=NtyLJnBwgUwRBQ
	zGeB4a8PxGKfKf3TBvmKWuzGgI0Aey9WU61OQCimuvMsDb5ik9f70Xut0U1euflBbVeBiMxQGCwZl
	oyxEEzZPoJ0WspfyvlbxzLNrVtls4KMx86kGUFJ3GwQVLamKiZyDOs+Jn/U5KQPB1vE1T7d8sJwSx
	b0diG0Sig6W30csfXpnhjla0SMAnHme39+eVHcBUkGoFYovJvgsIG/19ii4Ujy3McfxEfTV6NS2lm
	KiIlkh03Q9ABoqZatmE0NwIk0RT+UEdlEnFK4qM1wnm4w7qsvIVK+tSZIaFTW5MEEKE0e0+nSOiS2
	UlCAsCZPq1WQPzPfnY/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuM7-0006bI-8E; Wed, 13 Nov 2019 15:14:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuKi-0005PO-Ux
 for openwrt-devel@bombadil.infradead.org; Wed, 13 Nov 2019 15:13:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tfg5O1i8djy95267R9y8QOmECFT4AGCt71CCn0BbfNs=; b=DTUWIX/z0bg5kWZq2FefUUd698
 V4O2rSixPR4IYAnwrdHewwNlWW850O3zWzPEWamuQ/YAue7enbE5MHUoUIAO7mVP3tN+afmmNJFeE
 1r1QiSgzdfKRAP20IMN5e/2gHEtGFXwffy1GFnVyyiu2s4ehJ7yV56Y3nAOjiElIoba/i5W+fehvW
 5+bFR+VJl1kiEY1rY5Tr0JK0ewgK5a7FqqfWvUXap/GhBSbksEhtky0uOfLjtx/ziGzLgiJ43IChZ
 sQbwvRmBM2gcswiwyX7rqJ5Q1EYE4+lE+FdsXoQLd6qUavtysSpG2UEFxfddrfs/JGjcjBHgLiCGB
 ZwK8iaoA==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuLD-00042N-FD
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 15:13:57 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 09988C0004;
 Wed, 13 Nov 2019 15:12:45 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 16:12:41 +0100
Message-Id: <20191113151241.752720-1-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_151355_536291_4A9E6E92 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH procd] initd/init: add minimal SELinux
 policy loading support
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In order to support SELinux in OpenWRT, this commit introduces minimal
support for loading the SELinux policy in the init code. The logic is
very much inspired from what Busybox is doing: call
selinux_init_load_policy() from libselinux, and then re-execute init
so that it runs with the SELinux policy in place and enforced.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
I have patches ready to add some minimal SELinux support to OpenWRT,
which I intend to send in the near future.
---
 CMakeLists.txt |  9 ++++++++-
 initd/init.c   | 41 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 4b3eebd..865e43c 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -40,6 +40,12 @@ IF(ZRAM_TMPFS)
   SET(SOURCES_ZRAM initd/zram.c)
 ENDIF()
 
+IF(SELINUX)
+  include(FindPkgConfig)
+  pkg_search_module(SELINUX REQUIRED libselinux)
+  add_compile_definitions(WITH_SELINUX)
+ENDIF()
+
 add_subdirectory(upgraded)
 
 ADD_EXECUTABLE(procd ${SOURCES})
@@ -56,7 +62,8 @@ ADD_DEFINITIONS(-DDISABLE_INIT)
 ELSE()
 ADD_EXECUTABLE(init initd/init.c initd/early.c initd/preinit.c initd/mkdev.c sysupgrade.c watchdog.c
 	utils/utils.c ${SOURCES_ZRAM})
-TARGET_LINK_LIBRARIES(init ${LIBS})
+TARGET_INCLUDE_DIRECTORIES(init PUBLIC ${SELINUX_INCLUDE_DIRS})
+TARGET_LINK_LIBRARIES(init ${LIBS} ${SELINUX_LIBRARIES})
 INSTALL(TARGETS init
 	RUNTIME DESTINATION ${CMAKE_INSTALL_SBINDIR}
 )
diff --git a/initd/init.c b/initd/init.c
index 9b47826..f765b60 100644
--- a/initd/init.c
+++ b/initd/init.c
@@ -29,6 +29,10 @@
 #include <unistd.h>
 #include <stdio.h>
 
+#if defined(WITH_SELINUX)
+#include <selinux/selinux.h>
+#endif
+
 #include "../utils/utils.h"
 #include "init.h"
 #include "../watchdog.h"
@@ -67,6 +71,41 @@ cmdline(void)
 	}
 }
 
+#if defined(WITH_SELINUX)
+static int
+selinux(char **argv)
+{
+	int enforce = 0;
+	int ret;
+
+	/* SELinux already initialized */
+	if (getenv("SELINUX_INIT"))
+		return 0;
+
+	putenv("SELINUX_INIT=1");
+
+	printf("Loading SELinux policy...\n");
+
+	ret = selinux_init_load_policy(&enforce);
+	printf("selinux_init_load_policy returned %d\n", ret);
+	if (ret == 0)
+		execv(argv[0], argv);
+
+	if (enforce > 0) {
+		fprintf(stderr, "Cannot load SELinux policy, but system in enforcing mode. Halting.\n");
+		return 1;
+	}
+
+	return 0;
+}
+#else
+static int
+selinux(char **argv)
+{
+	return 0;
+}
+#endif
+
 int
 main(int argc, char **argv)
 {
@@ -79,6 +118,8 @@ main(int argc, char **argv)
 	sigaction(SIGUSR2, &sa_shutdown, NULL);
 	sigaction(SIGPWR, &sa_shutdown, NULL);
 
+	if (selinux(argv))
+		exit(-1);
 	early();
 	cmdline();
 	watchdog_init(1);
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
