Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44417B4A0
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Apr 2019 00:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EX4HB99n7gYNB9XxeTCLJ/6cA0dOmgQHLJCPdogPqqY=; b=Qydo3y25/Y5dzy
	4sdZudGemJg3gwGNj8SgPwCFVbAm2mGNszioE509tdjGBrfOi/Nzc645ydVD3w9JkUhmbRUDIvAq/
	ANB30LnyDRZqjZPUAruWXCDzt5ZASGOb4nAGRaV4+I9yldJTZp1a2Ff/yT3boUFVyBVnq0Zz+VnJl
	tBFgbbNci5QYkqfkeYOOTgqstfHc2Rc46SpPdGk2m75yzSII9SRExY0JeHYMQq2E6a/1SAUmTVwMk
	KnFYBPHd94fmDkvJe6gL8QgfrZePeddh3OcpOZ7ofdE3Z3nmuRk4WQAPtbCK7dGGbC7Ect5EDYM6W
	e22v+E6lPdAFgkQdFRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVa4-0005S9-Ne; Sat, 27 Apr 2019 22:14:00 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVZx-0005Nu-EK
 for openwrt-devel@lists.openwrt.org; Sat, 27 Apr 2019 22:13:55 +0000
Received: from localhost.localdomain (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 75E57200003;
 Sat, 27 Apr 2019 22:13:43 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 28 Apr 2019 00:13:38 +0200
Message-Id: <20190427221338.17190-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_151353_783462_5452946E 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] procd: detect lxc container and behave
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

The patch is based on previous work of *containercraft* to combine
OpenWrt with lxc[0]. This patch however adds a detection copied from
*virt-what* to check /proc/1/environment for "container=lxc".

[0]: https://github.com/containercraft/openwrt-lxd/blob/master/patches/procd-openwrt-18.06/001_lxd_no_mounts.patch

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 initd/early.c   | 19 +++++++++++--------
 initd/zram.c    | 10 ++++++----
 plug/coldplug.c | 13 ++++++++-----
 procd.c         |  7 ++++++-
 4 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/initd/early.c b/initd/early.c
index 2e15112..4018e63 100644
--- a/initd/early.c
+++ b/initd/early.c
@@ -56,14 +56,17 @@ early_mounts(void)
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
+	if (!container) {
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
index b41bfd9..e8d71c2 100644
--- a/initd/zram.c
+++ b/initd/zram.c
@@ -116,10 +116,12 @@ mount_zram_on_tmp(void)
 		waitpid(pid, NULL, 0);
 	}
 
-	ret = mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NOATIME, "errors=continue,noquota");
-	if (ret < 0) {
-		ERROR("Can't mount /dev/zram0 on /tmp: %m\n");
-		return errno;
+	if (!container) {
+		ret = mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NOATIME, "errors=continue,noquota");
+		if (ret < 0) {
+			ERROR("Can't mount /dev/zram0 on /tmp: %m\n");
+			return errno;
+		}
 	}
 
 	LOG("Using up to %ld kB of RAM as ZRAM storage on /mnt\n", zramsize);
diff --git a/plug/coldplug.c b/plug/coldplug.c
index c6a89c3..aabe379 100644
--- a/plug/coldplug.c
+++ b/plug/coldplug.c
@@ -43,13 +43,16 @@ void procd_coldplug(void)
 	char *argv[] = { "udevtrigger", NULL };
 	unsigned int oldumask = umask(0);
 
-	umount2("/dev/pts", MNT_DETACH);
-	umount2("/dev/", MNT_DETACH);
-	mount("tmpfs", "/dev", "tmpfs", MS_NOSUID, "mode=0755,size=512K");
+	if (!container) {
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
diff --git a/procd.c b/procd.c
index 3de6208..b938a2f 100644
--- a/procd.c
+++ b/procd.c
@@ -26,7 +26,7 @@
 #include "plug/hotplug.h"
 
 unsigned int debug;
-
+unsigned int container = 0;
 static int usage(const char *prog)
 {
 	fprintf(stderr, "Usage: %s [options]\n"
@@ -50,6 +50,11 @@ int main(int argc, char **argv)
 		unsetenv("DBGLVL");
 	}
 
+	char *env_container = getenv("container");
+	if (strcmp("lxc",env_container) != 0) {
+		container = 1;
+	}
+
 	while ((ch = getopt(argc, argv, "d:s:h:S")) != -1) {
 		switch (ch) {
 		case 'h':
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
