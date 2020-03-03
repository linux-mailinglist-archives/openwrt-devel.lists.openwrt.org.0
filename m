Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2E1177700
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 14:30:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yavHuinseMTeDGL0lSDo/QFFKHXP4CrrDOoBBjQEcrM=; b=lgNdzuraO3ycj8
	4XJiuyWwNuIKIpWpzLlpQA7Lph0aEcmmoVhag5/7Lx75XcQZrtroywjcJVCiW2YPB5qDjyARAAARu
	1gPVsj+5Ym2UJUcalC9A7Tif+gJjcbt7OYnpGo2s6W3IUWj/ZZbLd5feh4CDoOnegivhnqehxhxFs
	/YGCxiry4KBsr6x+EaDJ0CPqIc74FfW0UrV2fkF0SFlUNRo4kqFcm9IdTG0/ue5eiY96DnJxC9jiU
	GfihWhIxFU/F/lP8j27mNm5eUQK3f1HypyJTsvaZew3R56kuhx8WbTNtD3LVPfWNY4Hj1GjywTKPo
	1HRSE4v6gdSspIVBvDhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97cI-0008U6-A9; Tue, 03 Mar 2020 13:29:46 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97cB-0008Sf-Jw
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 13:29:41 +0000
Received: from localhost.localdomain (ip5f5ac5fa.dynamic.kabel-deutschland.de
 [95.90.197.250]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 023DT1L9025727
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Tue, 3 Mar 2020 14:29:28 +0100
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 14:28:44 +0100
Message-Id: <20200303132844.103585-1-peter.stadler@student.uibk.ac.at>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_052939_973719_00666F2A 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] opkg: check for reverse conflicts on install
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
Cc: Peter Stadler <peter.stadler@student.uibk.ac.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Do not install a package if another package that is already installed
lists the new package (or one of its providees) as conflicting.
Without checking for reverse conflicts, the conflicting packages need
cyclic conflicts, which are not supported by `make menuconfig`.

Signed-off-by: Peter Stadler <peter.stadler@student.uibk.ac.at>
---
 libopkg/pkg_depends.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/libopkg/pkg_depends.c b/libopkg/pkg_depends.c
index 3abdcd3..9f62faf 100644
--- a/libopkg/pkg_depends.c
+++ b/libopkg/pkg_depends.c
@@ -292,6 +292,8 @@ static int is_pkg_a_replaces(pkg_t * pkg_scout, pkg_t * pkg)
 
 pkg_vec_t *pkg_hash_fetch_conflicts(pkg_t * pkg)
 {
+	pkg_vec_t * installed_pkgs;
+	pkg_t *installed_pkg;
 	pkg_vec_t *installed_conflicts, *test_vec;
 	compound_depend_t *conflicts, *conflict;
 	depend_t **possible_satisfiers;
@@ -312,17 +314,14 @@ pkg_vec_t *pkg_hash_fetch_conflicts(pkg_t * pkg)
 	}
 
 	conflicts = pkg_get_ptr(pkg, PKG_CONFLICTS);
-	if (!conflicts) {
-		return (pkg_vec_t *) NULL;
-	}
 	installed_conflicts = pkg_vec_alloc();
 
 	/* foreach conflict */
-	for (conflict = conflicts; conflict->type; conflict++ ) {
-		possible_satisfiers = conflicts->possibilities;
+	for (conflict = conflicts; conflict && conflict->type; conflict++ ) {
+		possible_satisfiers = conflict->possibilities;
 
 		/* foreach possible satisfier */
-		for (j = 0; j < conflicts->possibility_count; j++) {
+		for (j = 0; j < conflict->possibility_count; j++) {
 			possible_satisfier = possible_satisfiers[j];
 			if (!possible_satisfier)
 				opkg_msg(ERROR,
@@ -355,9 +354,19 @@ pkg_vec_t *pkg_hash_fetch_conflicts(pkg_t * pkg)
 				}
 			}
 		}
-		conflicts++;
 	}
 
+	/* reverse conflicts */
+	installed_pkgs = pkg_vec_alloc();
+	pkg_hash_fetch_all_installed(installed_pkgs);
+	for (j = 0; j < installed_pkgs->len; j++) {
+		installed_pkg = installed_pkgs->pkgs[j];
+		if (pkg_conflicts(installed_pkg, pkg)) {
+			pkg_vec_insert(installed_conflicts, installed_pkg);
+		}
+	}
+	pkg_vec_free(installed_pkgs);
+
 	if (installed_conflicts->len)
 		return installed_conflicts;
 	pkg_vec_free(installed_conflicts);
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
