Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9721D642D
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olOaql+hSVNoYKQeUnvgBkyYtMujZSRe1UKaGg2iRlA=; b=Ya8fDvwV2qjPGw
	kcXl93EAneZgzHkhhto21Z2/NF7HK6wZDq3StP6zALGpR1z3eifrK7nZczTAFIKFCnHG8lex9orY/
	LId6MzGm4qvFHktR8Hp8hJ0nVl+BqT2y1+qljm4LH+sGjZ93QGq4+C7hksajv+5qoIOt1+/1Nd6Oz
	26VTkud5NRRGvxwTZACDgZGzfYhwKZ7CTO5gabtchccakDm6UsM2SNKxactNWsx/ls+RU/Q28ACJi
	Jxh04wUZt1NTMBu3tVHCxqSNNYfkabtiSZfZhMYsI+BT79LtZY1Ff8I3CH2tsifHdZEXZFieqhPFZ
	GzfJjld9DHgvAkzL91OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4Ai-0002lR-3A; Sat, 16 May 2020 21:16:40 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48j-0008Kf-B2
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:39 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id AF43125736;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:14:01 +0200
Message-Id: <fe06b4b836b3afd5b27039914dea1c7fe20bd78d.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141437_537453_2EA666E4 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 11/13] usign-exec: improve usign -F
 output handling
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

While not likely to happen in pratice, nothing guarantees that read()
will retrieve more than 1 byte at a time. The easiest way to make this
code compliant is to wrap the file descriptor using fdopen().

While we're at it, also
- remove useless memset()
- check fingerprint for validity

The check is particularly relevant, as a usign bug [1] causing short
fingerprint outputs only went unnoticed for so long because the trailing
newline was considered one of the 16 characters ucert was expecting.

[1] https://patchwork.ozlabs.org/project/openwrt/patch/8ead1fd6a61117b54b4efd5111fe0d19e4eef9c5.1589642591.git.mschiffer@universe-factory.net/

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 usign-exec.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/usign-exec.c b/usign-exec.c
index 241d63077365..482e51057124 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -93,6 +93,7 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
  */
 static int usign_f(char fingerprint[17], const char *pubkeyfile, const char *seckeyfile, const char *sigfile, bool quiet) {
 	int fds[2];
+	FILE *f;
 	pid_t pid;
 	int status;
 	const char *usign_argv[16] = {0};
@@ -141,17 +142,22 @@ static int usign_f(char fingerprint[17], const char *pubkeyfile, const char *sec
 	waitpid(pid, &status, 0);
 	status = WIFEXITED(status) ? WEXITSTATUS(status) : -1;
 
-	if (fingerprint && !status) {
-		ssize_t r;
-		memset(fingerprint, 0, 17);
-		r = read(fds[0], fingerprint, 17);
-		if (r < 16)
-			status = -1;
+	if (!fingerprint || status) {
+		close(fds[0]);
+		return status;
+	}
 
-		fingerprint[16] = '\0';
+	f = fdopen(fds[0], "r");
+	if (fread(fingerprint, 1, 16, f) != 16)
+		status = -1;
+	fclose(f);
+	if (status)
+		return status;
+
+	fingerprint[16] = '\0';
+	if (strspn(fingerprint, "0123456789abcdefABCDEF") != 16)
+		status = -1;
 
-	}
-	close(fds[0]);
 	return status;
 }
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
