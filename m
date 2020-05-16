Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA4B1D6429
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPHyIp5ojBL3l8IIu1lylRQNbv3JpjKPwA8m8/eonTU=; b=bnjfhMTFWLx1Rb
	lpcBUO6eYSenETBMNd9GLUKzPB6ZjLP23PdUs1419V26r3uWn/AAljvkzf98xZZx8So4WLCsaKRbO
	WakZHhg2+ynP/+7pKtIKt79iIkf9ttAutKk+IpGvr+Ms71WutMuWiqHLzWFuXrJO53l5qcqUTY29P
	9rZQpwmpbuNwbFEuT6YQ/d1y6QvdDNHu1yUBej/GVdm1xeu3Bk301T4Zd7Y0IJiV4Gdt3A/mGLZQU
	lMPvzwf7iSlWyhYlOpfTxROMWjqtQlxQfNu7yh8O7tfZG3lKkeJn4eUeNlak1bTxAkFWUKk7xVGeD
	WQe2SAa0nzIwOrk38GVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4A7-0001ma-9m; Sat, 16 May 2020 21:16:03 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48j-0008KV-5J
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:39 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 4C41825733;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:58 +0200
Message-Id: <7ec4bb764e1eb58f5d499d3b47f97bfc9a09eb0a.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141437_376789_037FBF30 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 08/13] usign-exec: remove redundant
 return statements
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

All switch() cases were already returning value or exiting. Instead,
move the default case out of the switch to reduce indentation (only
relevant for usign_f()).

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 usign-exec.c | 43 +++++++++++++++++--------------------------
 1 file changed, 17 insertions(+), 26 deletions(-)

diff --git a/usign-exec.c b/usign-exec.c
index 294c794b1c50..c9aecf99f9c0 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -76,13 +76,10 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
 		if (!quiet)
 			perror("Failed to execute usign");
 		_exit(1);
-
-	default:
-		waitpid(pid, &status, 0);
-		return WEXITSTATUS(status);
 	}
 
-	return -1;
+	waitpid(pid, &status, 0);
+	return WEXITSTATUS(status);
 }
 #else
 int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bool quiet) {
@@ -137,26 +134,23 @@ static int usign_f(char fingerprint[17], const char *pubkeyfile, const char *sec
 		if (!quiet)
 			perror("Failed to execute usign");
 		_exit(1);
+	}
 
-	default:
-		waitpid(pid, &status, 0);
-		status = WEXITSTATUS(status);
-		if (fingerprint && !WEXITSTATUS(status)) {
-			ssize_t r;
-			memset(fingerprint, 0, 17);
-			r = read(fds[0], fingerprint, 17);
-			if (r < 16)
-				status = -1;
+	waitpid(pid, &status, 0);
+	status = WEXITSTATUS(status);
+	if (fingerprint && !WEXITSTATUS(status)) {
+		ssize_t r;
+		memset(fingerprint, 0, 17);
+		r = read(fds[0], fingerprint, 17);
+		if (r < 16)
+			status = -1;
 
-			fingerprint[16] = '\0';
+		fingerprint[16] = '\0';
 
-		}
-		close(fds[0]);
-		close(fds[1]);
-		return status;
 	}
-
-	return -1;
+	close(fds[0]);
+	close(fds[1]);
+	return status;
 }
 
 /*
@@ -237,11 +231,8 @@ int usign_v(const char *msgfile, const char *pubkeyfile,
 		if (!quiet)
 			perror("Failed to execute usign");
 		_exit(1);
-
-	default:
-		waitpid(pid, &status, 0);
-		return WEXITSTATUS(status);
 	}
 
-	return -1;
+	waitpid(pid, &status, 0);
+	return WEXITSTATUS(status);
 }
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
