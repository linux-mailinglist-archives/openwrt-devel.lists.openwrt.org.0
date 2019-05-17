Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD56321615
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 11:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fcnd3ZwK6X0JqrNO/vlM4y1WkESfWoXEKNWESe+J6j0=; b=Gm+MaCXw2F/oZ6
	XpNnA5fIs0y9pjjr5vbHY81YpOVKdeX5qvQ52JorxEpsQyTIdAXN8AroTWi6rstJebW5WZg6JMErT
	nwh7Zb+wnPJ2BFRZ4n3x1FcOnXsBQOicAS+UuMUJkDmU3eqoAtsnYgbO2fKJyuW+HvXkx3A/INsyh
	LU8eu9XWwJYPNqpiHoY6O+i0w+4VGY1M5ImZZsx6tZ7BWOA/RL/u0M0c/8eQMnx/r9tkJczZ+/ezW
	BJYpr4qM+gj01focK1E622MsMqCtzhkllF5R8T70//VFUQLkq/WDzv83fAWJEIf8W7rLuRyl78mdl
	zWe47MEZhUI4r5CD9QbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYxV-0004hx-7U; Fri, 17 May 2019 09:15:21 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYxM-0004Ij-2h
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 09:15:15 +0000
X-Originating-IP: 95.90.180.177
Received: from dawn.lan (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 9B55960009;
 Fri, 17 May 2019 09:14:58 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 May 2019 11:14:45 +0200
Message-Id: <20190517091446.11260-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_021512_273545_A6F34D5E 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] utils: implement fw3_lock_path() &
 fw3_unlock_path()
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
Cc: Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alexander Couzens <lynxis@fe80.eu>

To lock a second lock file at the same time, introduce fw3_{un,}lock_path.
fw3_lock_path support the path as parameter in difference to fw3_lock which
only locks the fw3 lock file (/var/run/fw3.lock)

Signed-off-by: Alexander Couzens <lynxis@fe80.eu>
---
 utils.c | 34 +++++++++++++++++++++++++---------
 utils.h |  2 ++
 2 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/utils.c b/utils.c
index 7f09787..6360279 100644
--- a/utils.c
+++ b/utils.c
@@ -28,7 +28,7 @@
 #include "ipsets.h"
 
 
-static int lock_fd = -1;
+static int fw3_lock_fd = -1;
 static pid_t pipe_pid = -1;
 static FILE *pipe_fd = NULL;
 
@@ -346,13 +346,13 @@ fw3_has_table(bool ipv6, const char *table)
 
 
 bool
-fw3_lock(void)
+fw3_lock_path(int *fd, const char *path)
 {
-	lock_fd = open(FW3_LOCKFILE, O_CREAT|O_WRONLY, S_IRUSR|S_IWUSR);
+	int lock_fd = open(path, O_CREAT|O_WRONLY, S_IRUSR|S_IWUSR);
 
 	if (lock_fd < 0)
 	{
-		warn("Cannot create lock file %s: %s", FW3_LOCKFILE, strerror(errno));
+		warn("Cannot create lock file %s: %s", path, strerror(errno));
 		return false;
 	}
 
@@ -362,22 +362,38 @@ fw3_lock(void)
 		return false;
 	}
 
+	*fd = lock_fd;
+
 	return true;
 }
 
+bool
+fw3_lock()
+{
+	return fw3_lock_path(&fw3_lock_fd, FW3_LOCKFILE);
+}
+
+
 void
-fw3_unlock(void)
+fw3_unlock_path(int *fd, const char *lockpath)
 {
-	if (lock_fd < 0)
+	if (*fd < 0)
 		return;
 
-	if (flock(lock_fd, LOCK_UN))
+	if (flock(*fd, LOCK_UN))
 		warn("Cannot release exclusive lock: %s", strerror(errno));
 
-	close(lock_fd);
+	close(*fd);
 	unlink(FW3_LOCKFILE);
 
-	lock_fd = -1;
+	*fd = -1;
+}
+
+
+void
+fw3_unlock(void)
+{
+	fw3_unlock_path(&fw3_lock_fd, FW3_LOCKFILE);
 }
 
 
diff --git a/utils.h b/utils.h
index 1ada0dd..2388072 100644
--- a/utils.h
+++ b/utils.h
@@ -102,6 +102,8 @@ bool fw3_has_table(bool ipv6, const char *table);
 
 bool fw3_lock(void);
 void fw3_unlock(void);
+bool fw3_lock_path(int *fw3_lock_fd, const char *path);
+void fw3_unlock_path(int *fw3_lock_fd, const char *path);
 
 
 void fw3_write_statefile(void *state);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
