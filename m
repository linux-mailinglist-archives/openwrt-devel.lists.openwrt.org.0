Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B661D6427
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cd1lfC9ch/V2hPAhMGZpWNWRJ/BIhV6KqeIXX8oeJU=; b=Hj2iBpqWAnUh63
	7M0v9cqahanKjDVTk3BBUJgRZmYqihiXNTBM90BZXNNiJNc72nGpm8mvVV+YJZf3QFBTzoV+d3ikB
	HBP5oIRnQfE3FnQlDsjWzFySLKlsHofl82quCvZxgHeQbWIHgaHzXeGWhapr9MPfLUSiQBEmX7fbv
	+HSE6QTWvIPG6DUGs9qQfzt9Dv/SVHUd7BwJif5zlAPhXDBG6bB6hfQFCDX+o0zeehKbCQO0LcX6T
	xRI4A0wbnxBB1kh9DDvVZtdxW/3uqPH45v4t1xJguoPGh8rtKThrg4ZJcsNN97T/BsdeMh/eOKFWl
	H3N4W487WmbUY05atc9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja49r-0001Dp-5h; Sat, 16 May 2020 21:15:47 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48h-0008JV-PH
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:37 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id C1CCE2572F;
 Sat, 16 May 2020 23:14:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:54 +0200
Message-Id: <a9be4fb17df233fb9d23d3dae7aa6ce19fd7f38c.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141436_010231_910C0384 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 04/13] usign-exec: simplify usign
 execv calls
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When the executable to exec is passed as an absolute path, execv() and
execvp() are equivalent, so there it no need to make the code hard to
read with #ifdefs.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 usign-exec.c | 24 +++---------------------
 1 file changed, 3 insertions(+), 21 deletions(-)

diff --git a/usign-exec.c b/usign-exec.c
index 7f6106580b16..4ff2e63c5be1 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -72,13 +72,7 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
 		return -1;
 
 	case 0:
-		if (
-#ifdef UCERT_HOST_BUILD
-			execvp(usign_argv[0], (char *const *)usign_argv)
-#else
-			execv(usign_argv[0], (char *const *)usign_argv)
-#endif
-		   )
+		if (execvp(usign_argv[0], (char *const *)usign_argv))
 			return -1;
 
 		break;
@@ -141,13 +135,7 @@ static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckey
 		close(fds[0]);
 		close(fds[1]);
 
-		if (
-#ifdef UCERT_HOST_BUILD
-		    execvp(usign_argv[0], (char *const *)usign_argv)
-#else
-		    execv(usign_argv[0], (char *const *)usign_argv)
-#endif
-		   )
+		if (execvp(usign_argv[0], (char *const *)usign_argv))
 			return -1;
 
 		break;
@@ -247,13 +235,7 @@ int usign_v(const char *msgfile, const char *pubkeyfile,
 		return -1;
 
 	case 0:
-		if (
-#ifdef UCERT_HOST_BUILD
-		    execvp(usign_argv[0], (char *const *)usign_argv)
-#else
-		    execv(usign_argv[0], (char *const *)usign_argv)
-#endif
-		   )
+		if (execvp(usign_argv[0], (char *const *)usign_argv))
 			return -1;
 
 		break;
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
