Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CABC14118
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 18:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pdXfO/BeqkNh46shjQCp7udJ2jtvb7B7XbHxgMF+S3I=; b=qFFWgsLgq+cJlv
	sP5xNv34AhK1MDU6hzFuHae5eHNRl5sPQnrJrCpsd7kHTUUyk8B1ySowfqhBeElqJWw7DDDzSuA+4
	ALZ1jnoroE9JX9Wn1cu4gzUUgMQPAkEqmyjczrWva5pbZj/XlF/pXUgySbSjzkOqy387i/xF12KIN
	vERH4vb+zybdKNJnDAHPuOczTjXymWsL8CDlQDNPZDec45z3fKl0bLfGahCnKo0w4EM+BhYD6sjSL
	hbhYrCHZY9E1nzYEZowC6EBSxDmkVr8uil69bXlkZf4bktb6L3sziBHrgNdfjXDq1SvWmAtg2HPJO
	m0iPIO5JHUMU36qkVPyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNK3w-0006Fl-N0; Sun, 05 May 2019 16:32:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNK3s-0006Fe-4t
 for openwrt-devel@bombadil.infradead.org; Sun, 05 May 2019 16:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vi+4hkmXz0Nnc309UKkNXFdChAy4lAu9+qxSq9E/8+M=; b=DCXnxw/LjTmMEdKAVd+8LZweII
 0l+/+twnF4yixUIGRY3tbuguSUMtu/7G3RzRFWC3ePkqnOL9JV3uXCXtHrdX13q+IC+UAIQaDLG3o
 rY1j72nvstP7q/IbiFCwxT1wnipuMWo0E2oHdl78ImDIZS9FB2r854+WHmHpsFfxKwjEN+CG6Y0hN
 xZN6fUNYBfS5+3JRoaqzK84nnlW/M4cUXJXIko4QlKrRPi9q4U1sA4v11BsD45IXx+5aPKXaVUvne
 7tmueLNOu0+fB2mwq5yLEcAgdyBPpZSlvpf2sPjocDvaPFR/zhGDWza+gvA3E6+p1HJ85AbONQ3gk
 sQCOgxOg==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNK3n-0008V4-Ox
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 16:32:22 +0000
Received: from localhost.localdomain (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 2A70B100002;
 Sun,  5 May 2019 16:31:46 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 18:31:41 +0200
Message-Id: <20190505163141.6025-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_173219_863563_DAA1F328 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v3] procd: detect lxc container and behave
 accordingly
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

meaning to not mount some specific parts witch cause trouble.

The patch is based on previous work of @mikma to combine OpenWrt with
lxd[0]. This patch however adds a detection copied from *virt-what* to
check /proc/1/environment for the string "container".

Thanks to @dangowrt for the cleanup.

[0]: https://github.com/containercraft/openwrt-lxd/blob/master/patches/procd-openwrt-18.06/001_lxd_no_mounts.patch

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 container.h     | 22 ++++++++++++++++++++++
 initd/early.c   | 20 ++++++++++++--------
 initd/zram.c    | 11 +++++++----
 plug/coldplug.c | 14 +++++++++-----
 4 files changed, 50 insertions(+), 17 deletions(-)
 create mode 100644 container.h

diff --git a/container.h b/container.h
new file mode 100644
index 0000000..7fb0768
--- /dev/null
+++ b/container.h
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2019 Paul Spooren <mail@aparcar.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU Lesser General Public License version 2.1
+ * as published by the Free Software Foundation
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __CONTAINER_H
+#define __CONTAINER_H
+#include <stdlib.h>
+
+static inline bool is_container() {
+	return !!getenv("container");
+}
+
+#endif
diff --git a/initd/early.c b/initd/early.c
index 2e15112..7b281b2 100644
--- a/initd/early.c
+++ b/initd/early.c
@@ -25,6 +25,7 @@
 #include "../utils/utils.h"
 #include "init.h"
 #include "../libc-compat.h"
+#include "../container.h"
 
 static void
 early_dev(void)
@@ -56,14 +57,17 @@ early_mounts(void)
 {
 	unsigned int oldumask = umask(0);
 
-	mount("proc", "/proc", "proc", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
-	mount("sysfs", "/sys", "sysfs", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
-	mount("cgroup", "/sys/fs/cgroup", "cgroup",  MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
-	mount("tmpfs", "/dev", "tmpfs", MS_NOATIME | MS_NOSUID, "mode=0755,size=512K");
-	ignore(symlink("/tmp/shm", "/dev/shm"));
-	mkdir("/dev/pts", 0755);
-	mount("devpts", "/dev/pts", "devpts", MS_NOATIME | MS_NOEXEC | MS_NOSUID, "mode=600");
-	early_dev();
+	if (!is_container()) {
+		mount("proc", "/proc", "proc", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
+		mount("sysfs", "/sys", "sysfs", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
+		mount("cgroup", "/sys/fs/cgroup", "cgroup",  MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
+		mount("tmpfs", "/dev", "tmpfs", MS_NOATIME | MS_NOSUID, "mode=0755,size=512K");
+		ignore(symlink("/tmp/shm", "/dev/shm"));
+		mkdir("/dev/pts", 0755);
+		mount("devpts", "/dev/pts", "devpts", MS_NOATIME | MS_NOEXEC | MS_NOSUID, "mode=600");
+
+		early_dev();
+	}
 
 	early_console("/dev/console");
 	if (mount_zram_on_tmp()) {
diff --git a/initd/zram.c b/initd/zram.c
index b41bfd9..487d3d6 100644
--- a/initd/zram.c
+++ b/initd/zram.c
@@ -12,6 +12,7 @@
 #include <sys/stat.h>
 
 #include "../log.h"
+#include "../container.h"
 
 #include "init.h"
 
@@ -116,10 +117,12 @@ mount_zram_on_tmp(void)
 		waitpid(pid, NULL, 0);
 	}
 
-	ret = mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NOATIME, "errors=continue,noquota");
-	if (ret < 0) {
-		ERROR("Can't mount /dev/zram0 on /tmp: %m\n");
-		return errno;
+	if (!is_container()) {
+		ret = mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NOATIME, "errors=continue,noquota");
+		if (ret < 0) {
+			ERROR("Can't mount /dev/zram0 on /tmp: %m\n");
+			return errno;
+		}
 	}
 
 	LOG("Using up to %ld kB of RAM as ZRAM storage on /mnt\n", zramsize);
diff --git a/plug/coldplug.c b/plug/coldplug.c
index c6a89c3..12df421 100644
--- a/plug/coldplug.c
+++ b/plug/coldplug.c
@@ -22,6 +22,7 @@
 #include "../libc-compat.h"
 
 #include "hotplug.h"
+#include "../container.h"
 
 static struct uloop_process udevtrigger;
 
@@ -43,13 +44,16 @@ void procd_coldplug(void)
 	char *argv[] = { "udevtrigger", NULL };
 	unsigned int oldumask = umask(0);
 
-	umount2("/dev/pts", MNT_DETACH);
-	umount2("/dev/", MNT_DETACH);
-	mount("tmpfs", "/dev", "tmpfs", MS_NOSUID, "mode=0755,size=512K");
+	if (!is_container()) {
+		umount2("/dev/pts", MNT_DETACH);
+		umount2("/dev/", MNT_DETACH);
+		mount("tmpfs", "/dev", "tmpfs", MS_NOSUID, "mode=0755,size=512K");
+		mkdir("/dev/pts", 0755);
+		mount("devpts", "/dev/pts", "devpts", MS_NOEXEC | MS_NOSUID, 0);
+	}
+
 	ignore(symlink("/tmp/shm", "/dev/shm"));
-	mkdir("/dev/pts", 0755);
 	umask(oldumask);
-	mount("devpts", "/dev/pts", "devpts", MS_NOEXEC | MS_NOSUID, 0);
 	udevtrigger.cb = udevtrigger_complete;
 	udevtrigger.pid = fork();
 	if (!udevtrigger.pid) {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
