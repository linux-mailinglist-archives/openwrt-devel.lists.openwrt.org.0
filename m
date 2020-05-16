Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627E91D642C
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPrRfB10i711La+oSRu8Sb2k1yLzqgAARm5uQJAakFE=; b=nZEmbiNRhoQFKZ
	DtECosmvkS+abG2lp5U9f1ywjfhFZhQMF6rEGE8V39681zCYyeFqjU+yWocnMj9Sj3nXiZ/BCZReu
	oUa5fCUF/kC74McGy9lNCmoiOFgWugI+Vel6T8N3vS60Fr5hRLJpGQxj4fVfBHh2KOObREFHfikN3
	6cMmEVGs11GRwENttKR72KkVcXpXaw/mOrHcJKj0kL0uHhrv0vI+3omxxEipBI67voZ+Na2IVn5Gs
	rLlG+W74e7ac+44SebesUsKZzkambm9YSHLFhKlzAsVYxATZWimZV63N7eqVCl9cB9RY/XfQo3ab4
	Vp5vlHEka7WgQxRROL2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4AZ-0002Ws-Kt; Sat, 16 May 2020 21:16:31 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48j-0008Ke-B4
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:39 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 8C63625735;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:14:00 +0200
Message-Id: <19f9e1917e1b458ed3b80d0d0295d62ae3ee3185.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141437_533306_12C6DE66 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 10/13] usign-exec: return code fixes
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

- WEXITSTATUS() should only be called when WIFEXITED() returns true
- Fix double WEXITSTATUS() in usign_f()

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 usign-exec.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/usign-exec.c b/usign-exec.c
index 0dde81ed647b..241d63077365 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -79,7 +79,7 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
 	}
 
 	waitpid(pid, &status, 0);
-	return WEXITSTATUS(status);
+	return WIFEXITED(status) ? WEXITSTATUS(status) : -1;
 }
 #else
 int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bool quiet) {
@@ -139,8 +139,9 @@ static int usign_f(char fingerprint[17], const char *pubkeyfile, const char *sec
 	close(fds[1]);
 
 	waitpid(pid, &status, 0);
-	status = WEXITSTATUS(status);
-	if (fingerprint && !WEXITSTATUS(status)) {
+	status = WIFEXITED(status) ? WEXITSTATUS(status) : -1;
+
+	if (fingerprint && !status) {
 		ssize_t r;
 		memset(fingerprint, 0, 17);
 		r = read(fds[0], fingerprint, 17);
@@ -235,5 +236,5 @@ int usign_v(const char *msgfile, const char *pubkeyfile,
 	}
 
 	waitpid(pid, &status, 0);
-	return WEXITSTATUS(status);
+	return WIFEXITED(status) ? WEXITSTATUS(status) : -1;
 }
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
