Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7C41D642E
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfMhGkQBi53tw8h66JgId0jgjhguQVurC57eq3ycD8g=; b=n6NMUZ/r5vIJ52
	12Xav8/oAvgWYSyNDyzHlfvNPGf3iKaa4xSoKMUrUsinWdqFZPB74507n8HUkdFJsfHIt0ogJhl9L
	bnaI6pyYUupueaMHM+dofkxjo9uH+hv7qPf39mVljDsQAsyzXtGObz07vnA9C6Xs9ubGnv2U15dnw
	Er17nDdBqSll2iAG5vm8pnKidp6RQu9pH/lxWOzNZHJm+NKxZ8QSAdmLJmW+4nsAd65TZsBnIqXHn
	lz5CwIMnDN7FFLwgQjEfVCRtY2murQ45CCzPXaUHEW8ZmTiKtwOChrmsuZc+rcvxgdMubdTGVs4t5
	iFA2sKql+v8Ps01+KNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4Aq-00030C-UY; Sat, 16 May 2020 21:16:48 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48j-0008Kr-Iu
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:40 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id EFF1025738;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:14:03 +0200
Message-Id: <00b921d80ac0dc47339305d803f865ff43c56d63.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141437_779914_669E70B7 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 13/13] Do not print line number in
 debug messages
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

The line number does not add any significant information, and it makes
the unit tests which check for these debug messages very fragile.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 tests/cram/test_ucert.t | 4 ++--
 ucert.c                 | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/tests/cram/test_ucert.t b/tests/cram/test_ucert.t
index 985740def8f2..d4d57b243da5 100644
--- a/tests/cram/test_ucert.t
+++ b/tests/cram/test_ucert.t
@@ -57,9 +57,9 @@ check that ucert is producing expected results:
   ---
 
   $ ucert -D -c $TEST_INPUTS/invalid.ucert
-  cert_dump(406): cannot parse cert
+  cert_dump: cannot parse cert
   [1]
 
   $ ucert-san -D -c $TEST_INPUTS/invalid.ucert
-  cert_dump(406): cannot parse cert
+  cert_dump: cannot parse cert
   [1]
diff --git a/ucert.c b/ucert.c
index 24349c41349b..5523b02a7eb2 100644
--- a/ucert.c
+++ b/ucert.c
@@ -49,10 +49,10 @@ static enum {
 
 static bool quiet;
 #ifndef UCERT_STRIP_MESSAGES
-#define DPRINTF(format, ...)									\
-	do {											\
-		if (!quiet)									\
-			fprintf(stderr, "%s(%d): " format, __func__, __LINE__, ## __VA_ARGS__);	\
+#define DPRINTF(format, ...)								\
+	do {										\
+		if (!quiet)								\
+			fprintf(stderr, "%s: " format, __func__, ## __VA_ARGS__);	\
 	} while (0)
 #else
 #define DPRINTF(format, ...) do { } while (0)
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
