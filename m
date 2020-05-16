Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035351D6426
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLIB80yDwn6WAuK9v5fYsFB21X7EmWon7h/wGu8B9xY=; b=uqh+n+TGnSNPbE
	A9S+JoV9BPY5vUgti6XUQ72TZ+hsZFzjsJLqrd6KacTpDIjBBJSNKtt/aYo7+z3VJOPvzkaZQ3otK
	9ziivZXmYXHCK6wm9RBnkgKTSo33A6kLyGk7x5l9uCGsmHnqV/Zw3U50F0w3nVdNMtAikg8za+Cj2
	NtH9nuwnyDJuIvcU5W98CI/HZcK6ZVSiUZ8BzWMtoYvd3Z4701/3cskxZa/0TPAC9vK88C3ynZDUF
	9P7HXVRlhdh7BNYiyizHYi/pVBhq1RtuWi8ZNfz9Mjy9hRlqetBjAWuZZM+Q0uI+/pXKFOWFNrV2V
	VK6I7EackKuh+/Rm0+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja49e-00012Z-0t; Sat, 16 May 2020 21:15:34 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48j-0008KW-4X
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:38 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 6C4CC25734;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:59 +0200
Message-Id: <077feb5b5824beb3af28385d350e2398ffe46f27.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141437_328607_62A5ACBD 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 09/13] usign-exec: close writing end
 of pipe early in parent process
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

When the child process exited without producing output (for example
because usign was not found), the parent process would hang forever in
read(). By closing the writing end early in the parent process, read
will return as soon as no writing FDs are left - that is, when the child
process has exited.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 usign-exec.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/usign-exec.c b/usign-exec.c
index c9aecf99f9c0..0dde81ed647b 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -136,6 +136,8 @@ static int usign_f(char fingerprint[17], const char *pubkeyfile, const char *sec
 		_exit(1);
 	}
 
+	close(fds[1]);
+
 	waitpid(pid, &status, 0);
 	status = WEXITSTATUS(status);
 	if (fingerprint && !WEXITSTATUS(status)) {
@@ -149,7 +151,6 @@ static int usign_f(char fingerprint[17], const char *pubkeyfile, const char *sec
 
 	}
 	close(fds[0]);
-	close(fds[1]);
 	return status;
 }
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
