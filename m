Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B634F217FF
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 14:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OlneY/O5Dx9DUfTLBw3N+k6iNRXOvdtWXjFzWXIGZa4=; b=QVnigVdjzmLiW4
	uyPDSBYauPMMJjcRGY9H949DWNreVy6vRxSFrufCgDFMXX2y8M7txiv8unnpXsWc131wAa66ZZCYB
	viUGsIU8q9NXnSEaQj/CeZPl0iRq4donCdSft0jOuzZtopmT6HZomvXgQNiMp0CAwUbuf4nLIOyVM
	etkv9IW2KXgJTS//nFOqIrf0drDUT1QCpe14SsZnBT90sr6kOWT6ZrJdFvGQhmvGjeODw3VyHbEjW
	KiVjxW7W9oV0syMd1XTL63ZdDJx0SETTJDfZBytgQVElkoiuiFV6BZcXEg+LzCL63eM0wlF1FSPKl
	6kmJVyI7tBs2PqBle50g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbed-0007z9-IR; Fri, 17 May 2019 12:08:03 +0000
Received: from narfation.org ([79.140.41.39] helo=v3-1039.vlinux.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbeW-0007ye-3n
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 12:07:58 +0000
Received: from sven-desktop.home.narfation.org
 (p200300C5970D5CFE00000000000002FB.dip0.t-ipconnect.de
 [IPv6:2003:c5:970d:5cfe::2fb])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id 51B371100D8;
 Fri, 17 May 2019 14:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558094872;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=/PJrSK48kAtdHpaE1ScF/dSo7eD5chpQI3FXa8B2SoI=;
 b=UWa0wDQzisnrR4s0slz1WXGAiziozN+DqbQkcQhYiKkca3btPuTBqKbi4/GJjnytqEBf1m
 Fj7oE35kS8NEWmmi3F+fmIKAIBlj+C0Wjet74aqHwK7weqtcVVtK8NdHSQT3q12cr2YgXa
 TDr81cOzPGGa6DsMsF1hQ0BANMZQ1AA=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 May 2019 14:07:45 +0200
Message-Id: <20190517120745.22877-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558094872;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=/PJrSK48kAtdHpaE1ScF/dSo7eD5chpQI3FXa8B2SoI=;
 b=UHmh5QGXKXDqjWsPM/dpId3xrSAI3U/nmwRFSZS3CDUm2fKlPD6ZXK5D19I9ChVfXCwQIV
 YwwjVVtarCAfbG5Owxj7FzAtWt2vWKyuyVIHDXTRURvwMdKpfrJolPSlzputjj5rpRFjCN
 xW4dlkbzIDtJiSxiflUR26hFwQr3abI=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558094872; a=rsa-sha256; cv=none;
 b=fJN0mkNXwO6PGP6qhPN59pBDKVcMtdnjhZe7TYzUJ17OvtOq95yAcSuaRPeRfOUc8bJbZY
 gHxgeH0OqxgU1gBRLrfxAJGjS26g8PIS85JRG6h9c1WI13iS2Rh8tsLsX14RkmaRvfQ1YN
 CtcAnSqk2BhLz5aU7Sd9wQ/0A/b1O9E=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_050756_593247_430E66EB 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [79.140.41.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] uci: fix options list of section after type
 change
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
Cc: Charlemagne Lasse <charlemagnelasse@gmail.com>,
 Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

A section can store its name in the same memory region as the section
(after the actual section object). The object is then reallocated when the
type is later changed via an uci_set. But the original address of the
section is (indirectly) stored in the section list, the object and the
object list (HEAD) of this section.

But only the section list was fixed in commit 4fb6a564b8ee ("clean up
uci_set") after the realloc finished. Traversing the object list or
accessing the section pointer caused heap-use-after-free errors.

Reported-by: Charlemagne Lasse <charlemagnelasse@gmail.com>
Fixes: 4fb6a564b8ee ("clean up uci_set")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 cli.c  |  1 +
 list.c | 31 +++++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/cli.c b/cli.c
index f8b45db..9ffd45c 100644
--- a/cli.c
+++ b/cli.c
@@ -15,6 +15,7 @@
 #include <string.h>
 #include <stdlib.h>
 #include <stdarg.h>
+#include <stdbool.h>
 #include <errno.h>
 #include <unistd.h>
 #include "uci.h"
diff --git a/list.c b/list.c
index 25aec56..78efbaf 100644
--- a/list.c
+++ b/list.c
@@ -182,6 +182,32 @@ static void uci_fixup_section(struct uci_context *ctx, struct uci_section *s)
 	s->e.name = uci_strdup(ctx, buf);
 }
 
+/* fix up option list HEAD pointers and pointer to section in options */
+static void uci_section_fixup_options(struct uci_section *s, bool no_options)
+{
+	struct uci_element *e;
+
+	if (no_options) {
+		/*
+		 * enforce empty list pointer state (s->next == s) when original
+		 * section had no options in the first place
+		 */
+		uci_list_init(&s->options);
+		return;
+	}
+
+	/* fix pointers to HEAD at end/beginning of list */
+	uci_list_fixup(&s->options);
+
+	/* fix back pointer to section in options */
+	uci_foreach_element(&s->options, e) {
+		struct uci_option *o;
+
+		o = uci_to_option(e);
+		o->section = s;
+	}
+}
+
 static struct uci_section *
 uci_alloc_section(struct uci_package *p, const char *type, const char *name)
 {
@@ -713,10 +739,15 @@ int uci_set(struct uci_context *ctx, struct uci_ptr *ptr)
 		char *s = uci_strdup(ctx, ptr->value);
 
 		if (ptr->s->type == uci_dataptr(ptr->s)) {
+			/* drop the in-section storage of type name */
+			bool no_options;
+
+			no_options = uci_list_empty(&ptr->s->options);
 			ptr->last = NULL;
 			ptr->last = uci_realloc(ctx, ptr->s, sizeof(struct uci_section));
 			ptr->s = uci_to_section(ptr->last);
 			uci_list_fixup(&ptr->s->e.list);
+			uci_section_fixup_options(ptr->s, no_options);
 		} else {
 			free(ptr->s->type);
 		}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
