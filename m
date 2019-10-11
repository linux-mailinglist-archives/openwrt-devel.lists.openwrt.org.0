Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E14D3A7E
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 10:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zsdTsum6ISqsYuXOBV9gqHwypNfx1uNuYSEPDWZFJ/c=; b=dH3appNYsxAww/
	vBFGXzDBVLoh5zUnUuqmLffKeUwriXIYf/epBhCPIuX2jLTC05PkopWyaqPYS/GnxRgmoPGDJMB1J
	vu0DTZ1yaK8QhJlR9izZ6dv58UXzg3+e3I9IvbXuAHP8YhHyD6kGrs9K3JTRh2WeU7xkVNhhQGVti
	+hFSmp4qm5/7sJIJWAZLeTQ5S51HIeorBezdIAY3f8GMEDLLJYJxZSBUomGrjkcx+VypqksE+LZnb
	wJDreBW9jGO4+ls2bSLTsLjylZPJ/0H/V7oS2CWab+WTOwRXJdOhU1/tJnHc86p2kuuxXxkRWRQDI
	uAcl5I507clxsJjMqgkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpro-0004Sm-UP; Fri, 11 Oct 2019 08:01:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpre-0004S8-Rf
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 08:01:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id y135so8826350wmc.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 11 Oct 2019 01:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=tR6xxu0aQN8Ve5DyM/qu+T0Cz0JLBENQYd5uMa5vK6Y=;
 b=C4vtS/gLKePTVwPeq22Ra8841COISm2RjqWdlYxknhIUeOk/iNx9aEqNPabPfpnVsN
 Phkp8HHDhhE5/UmH6lNOTT4gZC7lzcZttuEDqWbGCDWNX7QpsyJ5YaR4NYEuP2J7aPvS
 w2xyees6VoWecSzpmA+WC9aOx/ZFk5XFrnd2sK/rN0E2AmehtQxXg4ZhIV+fUQB6UV89
 ZvZ123DgJDi0hpSwuNNJ5RIr9rrvXjw1IvRE2uUtiKsOF8xLXSj3s6m+GzsvDwAa2dZe
 krShGAMwK7lpOI1UNaVfsp+IMBBq9RAJJCNmKTgsF60F+fYbHrye9kdK7hF6JnvbfHN0
 l60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=tR6xxu0aQN8Ve5DyM/qu+T0Cz0JLBENQYd5uMa5vK6Y=;
 b=LaUU5NQKTMy03jQSSY5yo8ePexlUNiJ6IvazTFxw0Ky5jTklmJeA683QTWeiTGTJdG
 zf2Y5sEal5LN7anCyxe4aU9DB2KHT7iXjeAXMyV6Rt04ko1FXtOcu1Af3gi2OJWNVVnY
 Me1JLZxA7DvgHfKO0xIrevM9zmdBKS4KQ66jCLdTsSk2pynvHQVU/Ogmm4gosB1bFV6/
 llE0ydLZo4nbHh0N00MdMgXR1tSyzg+d0fdZJtos8N50gnCEKoCy4UEe4wMSTxT3MZdP
 1y2UvXYV7ycFp1qgfmpAGRCob53XjnB25Z/UWSq9Vm+GB+VVyE6b7wjxjPoDeErvNJGm
 cP7Q==
X-Gm-Message-State: APjAAAU5mz1lUn54iJUh1gx/OwhO97G0XWjf0Fi96W9GO4GCdCsz5A5r
 Es42ApWsax2bgYbX9/WNV40=
X-Google-Smtp-Source: APXvYqzIB1BDGL+JcAeJ7jK3r1S9oH3b9JiKDqfyCvemVuCDvwinM1EJjjWWsd6RxPKJCS1o4vDP8g==
X-Received: by 2002:a1c:48d6:: with SMTP id v205mr2003082wma.35.1570780887713; 
 Fri, 11 Oct 2019 01:01:27 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f013:0:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id q22sm7359295wmj.5.2019.10.11.01.01.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 11 Oct 2019 01:01:25 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
X-Google-Original-From: Alin Nastac <alin.nastac@technicolor.com>
To: John Crispin <john@phrozen.org>,
	openwrt-devel@lists.openwrt.org
Date: Fri, 11 Oct 2019 10:01:20 +0200
Message-Id: <1570780880-11992-1-git-send-email-alin.nastac@technicolor.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_010130_924342_CBB35D44 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2] fstools: add a hook before mounting the
 overlay
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alin Nastac <alin.nastac@gmail.com>

Scripts located in the directory /etc/mount_root.d will be executed
before mounting the overlay. It can be used to implement
configuration merges between old & new setup after doing sysupgrade.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 libfstools/overlay.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/libfstools/overlay.c b/libfstools/overlay.c
index 14214a3..46c87c9 100644
--- a/libfstools/overlay.c
+++ b/libfstools/overlay.c
@@ -14,6 +14,7 @@
 #include <sys/stat.h>
 #include <sys/types.h>
 #include <sys/mount.h>
+#include <sys/wait.h>
 
 #include <asm/byteorder.h>
 
@@ -400,6 +401,49 @@ int fs_state_set(const char *dir, enum fs_state state)
 	return symlink(valstr, path);
 }
 
+static inline int hook_execute(const char *path)
+{
+	DIR *dir;
+	struct dirent *dent;
+	char script[256];
+	pid_t pid;
+
+	ULOG_INFO("executing scripts in %s\n", path);
+
+	if ((dir = opendir(path)) == NULL) {
+		ULOG_INFO("cannot open %s (%s)\n", path, strerror(errno));
+		return 0;
+	}
+
+	while ((dent = readdir(dir)) != NULL) {
+		struct stat st;
+		int wstatus;
+
+		snprintf(script, sizeof(script), "%s/%s", path, dent->d_name);
+		if (stat(script, &st))
+			continue;
+		if (!S_ISREG(st.st_mode))
+			continue;
+		ULOG_INFO("%s\n", script);
+		pid = fork();
+		if (!pid) {
+			char *cmd[] = {script, NULL};
+
+			execvp(cmd[0], cmd);
+			ULOG_ERR("Failed to execute %s\n", script);
+			exit(-1);
+		}
+		if (pid <= 0) {
+			ULOG_INFO("Failed to fork() for %s\n", script);
+			continue;
+		}
+		waitpid(pid, &wstatus, 0);
+	}
+
+	closedir(dir);
+
+	return 0;
+}
 
 int mount_overlay(struct volume *v)
 {
@@ -439,7 +483,7 @@ int mount_overlay(struct volume *v)
 
 	fs_name = overlay_fs_name(volume_identify(v));
 	ULOG_INFO("switching to %s overlay\n", fs_name);
-	if (mount_move("/tmp", "", "/overlay") || fopivot("/overlay", "/rom")) {
+	if (mount_move("/tmp", "", "/overlay") || hook_execute("/etc/mount_root.d") || fopivot("/overlay", "/rom")) {
 		ULOG_ERR("switching to %s failed - fallback to ramoverlay\n", fs_name);
 		return ramoverlay();
 	}
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
