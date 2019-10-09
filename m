Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E35D0EFE
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 14:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sazAGvFN+wdZA3fx3cfr+ivM9k+Mfz+Vsct5BGULcPo=; b=nWXur+jlMJsg63
	kPrIKVVzcsqwfv+TNUR6uHgWk/F7HtNTS17J5rTAijR5YJu9pC/raYqHisb0J7GOhaWkrCXn6IdrX
	nSfKZenmNSpl3JpoBRJlzmxPLyjQ3ZsbJ1Rn0PaA7t9lDSbsGxOPqOYRyF6ct+4s1E8vLrh+o8+XO
	6zSy9DQtJ4AgO6iQiDH2mgcKiCw5bPjimiLoJlxjWa9J0GZwtWQHquuFSrbs4hlGSdG8oSkslKs1E
	WK14jt67Os0uBn/uab5cTtMtW5ZYs6MlEwlZoGlqDf7xp4WYFH1solGjNpYBH+TO/grU/IdQXUhjd
	MUuv1UEZ+hoJVbE8icXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBHu-0006z9-7u; Wed, 09 Oct 2019 12:41:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBHn-0006yZ-VH
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 12:41:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so2831518wrs.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 09 Oct 2019 05:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=uifWa4BW1/NyrKeymmb+aC8mVZsLRgwupjcW1Nb1K7g=;
 b=Ezb8NlOi4lph7EW3pBc9I41LL4Wkyn5skWVSIocVbBNNZculh0ymkjPbegeR1uIPRb
 FrMNFFLw7EwGxulx0goxTzkEM3clQ0mGdW2kT3pypGeNQpQulTo4EAK6mEmoaZcLdEQ1
 49Nrxy4hAAI69YEIHrCceFjXGNRlKjfp/zLfo7ReXWOf61ROQSkgXBnDLR9cqXZOizkp
 DHeMZlQKOd29U8EjiG3bMw2D2h4tdnsrBS3xTIq0FvXbFA0w0KR0ZFK8eafyGRWeWfER
 QKCXMhHNBlipvj5FSsXru+LCs3Ij75nlTJkhiif6s69AeDzGnIBvxezGhu3bIerSf83c
 o1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=uifWa4BW1/NyrKeymmb+aC8mVZsLRgwupjcW1Nb1K7g=;
 b=n7W5Ln+xydn2Oz3osOh86Qk93+4t7c8OeAvsq9j4shayXTNuX2g9L6zypSnnnsE1K2
 jUOh28vfNggsgOWMiOIv9eNgF+ld4UzS56hvzR3lJNQdp1fmTRLziPNPxw7Fk96ZcA6V
 +15FIjDHNxzdRSazviKt5+M1WS+5su8s1SJ33jOCgBnkLid1/9EH/4OH1cAVpWTS0b6h
 3sx+WCQwiLn9uV2LAerMN1Yy+ubjoAyAh8mvyc6h8DvmCLhz8KP8TDhCIdsU4XuQYMJe
 O0PBPtSqbrm2o270MfFoNG5HluEpYRheIsHyLDVa/78T1FfRTc5anHQbzxOFfgcOuNnC
 jt4g==
X-Gm-Message-State: APjAAAXWMlABX8+yhAXKeFRvnBvfyAFOOWL+53ZhJic17BCfzii9m6Fn
 uELSMfhnrw7ilFF7vq4pOd4d0FmL
X-Google-Smtp-Source: APXvYqwRWSSjWBdSz5cq4F+LA729evR4lCwG0FiY7XocCnXnblQi6jkxyrnSLbBRGTlf86IT25+PGg==
X-Received: by 2002:a05:6000:11cc:: with SMTP id
 i12mr2843579wrx.241.1570624904747; 
 Wed, 09 Oct 2019 05:41:44 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f013:0:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id a13sm5078099wrf.73.2019.10.09.05.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 09 Oct 2019 05:41:43 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
To: John Crispin <john@phrozen.org>,
	openwrt-devel@lists.openwrt.org
Date: Wed,  9 Oct 2019 14:41:37 +0200
Message-Id: <1570624897-16993-1-git-send-email-alin.nastac@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_054148_033440_0B7A05C4 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] fstools: add a hook before mounting the
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

Scripts located in the directory /lib/mount_root will be executed
before mounting the overlay.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 libfstools/hook.h    | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 libfstools/overlay.c |  3 ++-
 2 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 libfstools/hook.h

diff --git a/libfstools/hook.h b/libfstools/hook.h
new file mode 100644
index 0000000..76ee9d0
--- /dev/null
+++ b/libfstools/hook.h
@@ -0,0 +1,51 @@
+#ifndef _HOOK_H
+#define _HOOK_H
+
+#include <sys/types.h>
+#include <sys/wait.h>
+
+static inline int hook_execute(const char *path)
+{
+	DIR *dir;
+	struct dirent *dent;
+	char script[256];
+	pid_t pid;
+
+	ULOG_INFO("executing script in %s\n", path);
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
+
+#endif
diff --git a/libfstools/overlay.c b/libfstools/overlay.c
index 14214a3..10a16b5 100644
--- a/libfstools/overlay.c
+++ b/libfstools/overlay.c
@@ -29,6 +29,7 @@
 
 #include "libfstools.h"
 #include "volume.h"
+#include "hook.h"
 
 #define SWITCH_JFFS2 "/tmp/.switch_jffs2"
 
@@ -439,7 +440,7 @@ int mount_overlay(struct volume *v)
 
 	fs_name = overlay_fs_name(volume_identify(v));
 	ULOG_INFO("switching to %s overlay\n", fs_name);
-	if (mount_move("/tmp", "", "/overlay") || fopivot("/overlay", "/rom")) {
+	if (mount_move("/tmp", "", "/overlay") || hook_execute("/lib/mount_root") || fopivot("/overlay", "/rom")) {
 		ULOG_ERR("switching to %s failed - fallback to ramoverlay\n", fs_name);
 		return ramoverlay();
 	}
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
