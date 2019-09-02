Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5A3A5D19
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 22:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QyHc7IWMKxkZZ4grlWjgbJgbwfMtdI1xJfv0NrGSkhg=; b=pyi5IRaK+pOw/R
	LZPBDPDkPYGb+/8E8JI/FNhQFyKe7auGYfUbQKfW32+QvjtQmZuKpkrnwHkybfK16egL4yjOQmkKv
	QR9Gl26NgdDTvTxwnRFoIbvc5I3Oh1UaH2iojVc8Ei1UIrrjHCGiaVjTh2Sz7DkMdP0Yy6DAqz4sr
	Yu02zHyrdtxhseiIWtTgyoOe5nTqXAw1NUszCWijIvD9qQpXiNjseyfG4G0Mz/1PFDQ2bwZKy6QI+
	hwIdjErXdRfeSQ03H/gCDb4OhjDW3rX9f6oDGuHXM5QJG7wyZYp/t8fTSHmDZyko+08BGBRXyG4BD
	3Tu1bMLn3gxhaLC+2FCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4sw7-00059W-FQ; Mon, 02 Sep 2019 20:28:27 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4svn-00058n-3c
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 20:28:08 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id A37EBA1598;
 Mon,  2 Sep 2019 22:28:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 8aBn87HHKzRe; Mon,  2 Sep 2019 22:27:49 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 22:27:35 +0200
Message-Id: <20190902202735.26723-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_132807_314724_55CB6398 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] firewall3: Fix some format string problems
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds annotations for the format strings to the print functions and
fixes the newly found problems. One of them is a format security
problem.

Coverity: #1412532
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 defaults.c  |  2 +-
 includes.c  |  2 +-
 redirects.c |  5 ++---
 utils.h     | 15 ++++++++++-----
 4 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/defaults.c b/defaults.c
index 91bd617..f03765c 100644
--- a/defaults.c
+++ b/defaults.c
@@ -393,7 +393,7 @@ set_default(const char *name, int set)
 
 	snprintf(path, sizeof(path), "/proc/sys/net/ipv4/tcp_%s", name);
 
-	info(" * Set tcp_%s to %s", name, set ? "on" : "off", name);
+	info(" * Set tcp_%s to %s", name, set ? "on" : "off");
 
 	if (!(f = fopen(path, "w")))
 	{
diff --git a/includes.c b/includes.c
index 8639210..23b2244 100644
--- a/includes.c
+++ b/includes.c
@@ -140,7 +140,7 @@ print_include(struct fw3_include *include)
 	}
 
 	while (fgets(line, sizeof(line), f))
-		fw3_pr(line);
+		fw3_pr("%s", line);
 
 	fclose(f);
 }
diff --git a/redirects.c b/redirects.c
index 97529ee..d376555 100644
--- a/redirects.c
+++ b/redirects.c
@@ -254,14 +254,13 @@ check_redirect(struct fw3_state *state, struct fw3_redirect *redir, struct uci_e
 	}
 	else if (redir->ipset.set && state->disable_ipsets)
 	{
-		warn_section("redirect", redir, e, "skipped due to disabled ipset support",
-				redir->name);
+		warn_section("redirect", redir, e, "skipped due to disabled ipset support");
 		return false;
 	}
 	else if (redir->ipset.set &&
 			!(redir->ipset.ptr = fw3_lookup_ipset(state, redir->ipset.name)))
 	{
-		warn_section("redirect", redir, e, "refers to unknown ipset '%s'", redir->name,
+		warn_section("redirect", redir, e, "refers to unknown ipset '%s'",
 				redir->ipset.name);
 		return false;
 	}
diff --git a/utils.h b/utils.h
index 2388072..c8cf69a 100644
--- a/utils.h
+++ b/utils.h
@@ -46,10 +46,14 @@ extern bool fw3_pr_debug;
 
 struct fw3_address;
 
-void warn_elem(struct uci_element *e, const char *format, ...);
-void warn(const char *format, ...);
-void error(const char *format, ...);
-void info(const char *format, ...);
+void warn_elem(struct uci_element *e, const char *format, ...)
+	__attribute__ ((format (printf, 2, 3)));
+void warn(const char *format, ...)
+	__attribute__ ((format (printf, 1, 2)));
+void error(const char *format, ...)
+	__attribute__ ((format (printf, 1, 2)));
+void info(const char *format, ...)
+	__attribute__ ((format (printf, 1, 2)));
 
 
 #define warn_section(t, r, e, fmt, ...)					\
@@ -96,7 +100,8 @@ bool __fw3_command_pipe(bool silent, const char *command, ...);
 #define fw3_command_pipe(...) __fw3_command_pipe(__VA_ARGS__, NULL)
 
 void fw3_command_close(void);
-void fw3_pr(const char *fmt, ...);
+void fw3_pr(const char *fmt, ...)
+	__attribute__ ((format (printf, 1, 2)));
 
 bool fw3_has_table(bool ipv6, const char *table);
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
