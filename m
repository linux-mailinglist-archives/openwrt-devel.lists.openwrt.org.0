Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E398041C19
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 08:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oDcOrHQY3rSBcfq3uRGvFkNmxrIUhHG+WaF9Ve4rHrg=; b=B5T42qn6a1lzFx
	L93rVy+Q87rH+NRvgZsjdv6VdwfkVtndntJjgULqGcWQgjSobAUjOLT8X9d3F491p/6stLuTG8QfE
	diqabw5vxdSb1fzM4Tz/wsoqpG91cI2l11a/gPc496u+p2MfLM28EIMoAlCW1P1LhxFv+jwe2Lze4
	SsUlYEIryrMRa/15mEe2F7ibwcBzRKGFbTCPXAjvIhU28xePMisd+V49UrVUU3nUKzFPwvQ2CAsFF
	akUG9a4Ejoy1I/k8v3QxwrFqXjrAgyeWoXcc5eSBKHTj4plzqKzxc7GkWlWBj9JGdLSA2jaLpkFIA
	YK7t+GiXmHwxwRLuUyJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haway-0004kK-64; Wed, 12 Jun 2019 06:18:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawaq-0004k0-EX
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 06:18:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id g21so6197576plq.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 23:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UmyQeZb2TTztntgo6qLS6De6mik+cyWUsX+HRwVtqhk=;
 b=BCYq/FI2ygm2T319kuI7TdzpXJOnsZZ19RSSR+/dAaxJw4zso/+HcA4TEkHpCGSI/u
 IMoJH9DDS39ClQgJeIv62m1bR5FQnfx0xylbnjCE0patzaPKpFe8wPnrny+LSakjOWG1
 +sgGI78OmCFlkavytoOrNfSI3XK7MMu8ijSlvOC7kdM6imGQkvUyzbKRgOxRXo8LIDzC
 IGb/k1J9GRvPZKuw1pwzEUGqZwSaeqx9rYwC8OuJNldd/hqxuuMynrftM1BZxz2eZuDY
 RIgGVJLjjOVoU93B3E9YSv2P/xQL+XNPBwEbc9kGC5QTUyVNUrOs2cGndiOuLPDdsc8C
 bY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UmyQeZb2TTztntgo6qLS6De6mik+cyWUsX+HRwVtqhk=;
 b=MHGNMVPZFeUIWp2OrLmJzNSlgR1b7gRfg/3q9wLSV51BM1oOW/ztLjmKPYCH+7Pyuq
 WV1oPgEV0RiNSUJwAZcHMxhqYhkWfTePMpVNPbCj7FnPvbyJgHt/PIXbtFh/VuDcmQZL
 OwhaagMVAe9VNVsLOYMbmHevVHc57ir8+Jm0COjklbuNEDEN90PFrTLz5GQung9SM61U
 yofzbO/0wW7vjLvshA5e9fPpWGdTlvLwVpqf06lPsvU7H8gJ4g+GzlpEvwEjvz05YEnG
 5K6VMSce1ajc93E8k4kiNAJFvacjEueBhbc4Dly754Hq/nQnJL6Z79WTDsKqQe26O5Yk
 ojSQ==
X-Gm-Message-State: APjAAAVXVSwBLM3e+IxQIr4byN2HdQRQwHGqY8bCCGC5vkicQKAmyx8/
 s597IbaXma9lyji7HRK2B1c=
X-Google-Smtp-Source: APXvYqxJMm2VGJZ5kv9RsJGDVUWd4szbKcf6kcpyzwg+GJxG60WVe7p2Zzcbro1T9TseneKjAwBaIQ==
X-Received: by 2002:a17:902:22:: with SMTP id 31mr77430504pla.15.1560320323004; 
 Tue, 11 Jun 2019 23:18:43 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id 30sm3194690pjk.17.2019.06.11.23.18.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 23:18:42 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
X-Google-Original-From: Yousong Zhou <zhouyousong@yunionyun.com>
To: jo@mein.io
Date: Wed, 12 Jun 2019 06:18:25 +0000
Message-Id: <20190612061825.123283-1-zhouyousong@yunionyun.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_231844_493370_C20FD450 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH opkg] alternatives: special-case busybox as
 alternatives provider
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
 libopkg/pkg_alternatives.c | 35 ++++++++++++++++++++++++++++++++---
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/libopkg/pkg_alternatives.c b/libopkg/pkg_alternatives.c
index 50e9d12..4a1a31c 100644
--- a/libopkg/pkg_alternatives.c
+++ b/libopkg/pkg_alternatives.c
@@ -27,6 +27,28 @@
 #include "pkg_alternatives.h"
 #include "sprintf_alloc.h"
 
+static bool pkg_alternatives_check_busybox(const char *path)
+{
+	pkg_t *pkg;
+	str_list_t *files;
+	str_list_elt_t *iter;
+	bool found = false;
+
+	pkg = pkg_hash_fetch_installed_by_name("busybox");
+	if (!pkg) {
+		return false;
+	}
+	files = pkg_get_installed_files(pkg);
+	for (iter = str_list_first(files); iter; iter = str_list_next(files, iter)) {
+		if (!strcmp(path, (char *)(iter->data))) {
+			found = true;
+			break;
+		}
+	}
+	pkg_free_installed_files(pkg);
+	return found;
+}
+
 static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed, const char *path)
 {
 	struct pkg_alternatives *pkg_alts;
@@ -35,6 +57,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 	int i, j;
 	int r;
 	char *path_in_dest;
+	char *target_path = NULL;
 
 	for (i = 0; i < installed->len; i++) {
 		pkg_t *pkg = installed->pkgs[i];
@@ -60,6 +83,12 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 		return -1;
 
 	if (the_alt) {
+		target_path = the_alt->altpath;
+	} else if (pkg_alternatives_check_busybox(path)) {
+		target_path = "/bin/busybox";
+	}
+
+	if (target_path) {
 		struct stat sb;
 
 		r = lstat(path_in_dest, &sb);
@@ -72,7 +101,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 				goto out;
 			}
 			realpath = xreadlink(path_in_dest);
-			if (realpath && strcmp(realpath, the_alt->altpath))
+			if (realpath && strcmp(realpath, target_path))
 				unlink(path_in_dest);
 			free(realpath);
 		} else if (errno != ENOENT) {
@@ -87,7 +116,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
 			if (r) {
 				goto out;
 			}
-			r = symlink(the_alt->altpath, path_in_dest);
+			r = symlink(target_path, path_in_dest);
 			if (r && errno == EEXIST) {
 				/*
 				 * the strcmp & unlink check above will make sure that if EEXIST
@@ -96,7 +125,7 @@ static int pkg_alternatives_update_path(pkg_t *pkg, const pkg_vec_t *installed,
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
