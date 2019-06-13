Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0AE44396
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 18:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aMHroL/Sc0VOgTwcZdnjKLsWg4iFTt81Zi1vaFyiTUk=; b=cbMf0Yg2b4lwm7
	uRjwZwhyxYNPcBth0saSZ3v2m2NvFsTA4RHq6EGF7NcHeVh2dKioyO96Cm3LQ3yRA3bFCRRp/HAtj
	FbKL1g/p2XHK/juf1lQipwokIYlrHFooNNeLSikdzHWqcalU77Tp1SKmd6Z4Od6Lyk0yongnAhS02
	eLJeRC9ve8lBxa7380zZXQZtLljeGjXY5PKHtZxqWmsuitLNG7Om2y+AXmLkGmBooibNbFPNHyoHc
	qkbp+2nZs00wR6Czs7phQMu25/6SEa6ahUkthhkLI+aXWd+Gh3FugFJ8Pal5hDIk2CTrr14Fwh7z3
	bllBEbCehn8Ro66T62+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSeA-0000Oj-IT; Thu, 13 Jun 2019 16:32:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSdd-0008Tp-75
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 16:31:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so6287823pfl.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Jun 2019 09:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y50bx5NJCZZv27UYI0egoPzk/yuzzmWP9MpGLarq2tw=;
 b=hIWaOaqQU7Pdi/jb6X76jjbSr6HnaEV8LABQ/NfQBkaTKQ4+ZPNwLY0+wrJpD8z3uE
 oXTjzPfHFcP/vQaJG5Xxk1jjZY+2WF0kDcasAcypZNPq0FI6XwNB3fk4agsmnwnLv/0F
 SxkoYeL4NJ0Ifk/H9sm9A5po31mFk617N406ykJCLPfyKnTdD4YaMnLlLmnIaSS5t2Vj
 kVkrErkq1jFCNXz1a1cgVmka8aXPqKsO5OyllI7koBncEPOQi83/vz4vm0lgU1oCOOdV
 chzBej1bCb9SfIvXHGgasUJicKbwo07G+328wpppwhm7THLIkCpompvb3ccNlyqYNpqK
 i2zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y50bx5NJCZZv27UYI0egoPzk/yuzzmWP9MpGLarq2tw=;
 b=A9Y3N5UTPhmDJoJtKPMma2OkyjdV4003/v3+p++AAdThKJm51k9gk9MrAiRaz7vKH6
 MBSaWenevMvFFSXWZ0dcKiKYjJiqIe/vr/0pfHMJoyA+Ef4F7kHNK9evgswN7/xk1yeS
 HRMSYzz/bOqqeSDcSk8aCCPKK13BzqG4s46espTatW8YK0dn2DkEMd6+HAfD3HMdtxgd
 RoRS5AOZTG+1JICKjyT8s3V9SoIa121Afxk0h9s1cYpuHndVbzDYGRttCt75zLE/QNqX
 Wtw3bnpB/0L0zkkp2C8j8oFr0zzoARvi1dKsEWxZpEn5D/bkj6UqP8y4EoPZi90ZFHdy
 8ZWw==
X-Gm-Message-State: APjAAAW5yltHxQIb7Xku9+zqmpp1zjRZTY8mG4SY/3sM/Ib14yn4eikh
 044TGya7MwUv1AuIDrI6jvw=
X-Google-Smtp-Source: APXvYqxog8BKAX20nSP3ImTgrDoQmoeFL8tvtMcD2+bznOOv64lKQIYAfSihrjMXnxPUfoMtPAq/Zg==
X-Received: by 2002:a63:a514:: with SMTP id n20mr2080617pgf.438.1560443504458; 
 Thu, 13 Jun 2019 09:31:44 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id d187sm191331pfa.38.2019.06.13.09.31.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 09:31:43 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
X-Google-Original-From: Yousong Zhou <zhouyousong@yunionyun.com>
To: jo@mein.io
Date: Thu, 13 Jun 2019 16:31:33 +0000
Message-Id: <20190613163133.40306-1-zhouyousong@yunionyun.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_093145_303954_2F2076DE 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 opkg] alternatives: special-case busybox
 as alternatives provider
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org,
 Yousong Zhou <zhouyousong@yunionyun.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Yousong Zhou <yszhou4tech@gmail.com>

Almost all busybox applets are alternatives to some other existing
"full" utilities.  To lift the maintenance burden of enumerating CONFIG
symbols, symlink path of each applet, we special case busybox here as a
known alternatives provider.

All file pathes provided by busybox will serve as fallback alternatives
with -inf priority.  Packages intending to switch to using alternatives
mechanism will also not need to depend on the same kind of change be
applied on busybox in base system

Signed-off-by: Yousong Zhou <zhouyousong@yunionyun.com>
---
v2 <- v1 Make the code less busybox-specific by moving busybox into data section

 libopkg/pkg_alternatives.c | 49 +++++++++++++++++++++++++++++++++++---
 1 file changed, 46 insertions(+), 3 deletions(-)

diff --git a/libopkg/pkg_alternatives.c b/libopkg/pkg_alternatives.c
index 50e9d12..7ea6b5b 100644
--- a/libopkg/pkg_alternatives.c
+++ b/libopkg/pkg_alternatives.c
@@ -27,6 +27,42 @@
 #include "pkg_alternatives.h"
 #include "sprintf_alloc.h"
 
+struct alternative_provider {
+	char *name;
+	char *altpath;
+};
+
+static const struct alternative_provider const providers[] = {
+	{
+		.name = "busybox",
+		.altpath = "/bin/busybox",
+	},
+};
+
+static const char *pkg_alternatives_check_providers(const char *path)
+{
+	pkg_t *pkg;
+	str_list_t *files;
+	str_list_elt_t *iter;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(providers); i++) {
+		pkg = pkg_hash_fetch_installed_by_name(providers[i].name);
+		if (!pkg) {
+			return NULL;
+		}
+		files = pkg_get_installed_files(pkg);
+		for (iter = str_list_first(files); iter; iter = str_list_next(files, iter)) {
+			if (!strcmp(path, (char *)(iter->data))) {
+				pkg_free_installed_files(pkg);
+				return providers[i].altpath;
+			}
+		}
+		pkg_free_installed_files(pkg);
+	}
+	return NULL;
+}
+
 static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed, const char *path)
 {
 	struct pkg_alternatives *pkg_alts;
@@ -35,6 +71,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 	int i, j;
 	int r;
 	char *path_in_dest;
+	const char *target_path = NULL;
 
 	for (i = 0; i < installed->len; i++) {
 		pkg_t *pkg = installed->pkgs[i];
@@ -60,6 +97,12 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 		return -1;
 
 	if (the_alt) {
+		target_path = the_alt->altpath;
+	} else {
+		target_path = pkg_alternatives_check_providers(path);
+	}
+
+	if (target_path) {
 		struct stat sb;
 
 		r = lstat(path_in_dest, &sb);
@@ -72,7 +115,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 				goto out;
 			}
 			realpath = xreadlink(path_in_dest);
-			if (realpath && strcmp(realpath, the_alt->altpath))
+			if (realpath && strcmp(realpath, target_path))
 				unlink(path_in_dest);
 			free(realpath);
 		} else if (errno != ENOENT) {
@@ -87,7 +130,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 			if (r) {
 				goto out;
 			}
-			r = symlink(the_alt->altpath, path_in_dest);
+			r = symlink(target_path, path_in_dest);
 			if (r && errno == EEXIST) {
 				/*
 				 * the strcmp & unlink check above will make sure that if EEXIST
@@ -96,7 +139,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 				r = 0;
 			}
 			if (r) {
-				opkg_perror(ERROR, "failed symlinking %s -> %s", path_in_dest, the_alt->altpath);
+				opkg_perror(ERROR, "failed symlinking %s -> %s", path_in_dest, target_path);
 			}
 		}
 	} else {

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
