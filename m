Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D541D642A
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MICu4PFtArvz/dtJB+ywdD31pDk0OxOF53CmQwQfVHU=; b=q+qmUDwftOVObA
	rV5Mtl7NeVfEyrYVrQLZCC3wJIj2jBcoqLHEj0ozBblbSeUbD+PyldDn+NkmQBt3wFck623lQptzH
	X7EBNLYojSFtg/PfVz0Gm52DG9Q5Zloc3LZEIwv9pIDAlzYvp/wqKiUugbcjUnna78SmUZMhqYqc1
	4ceuVotVVXfb60/TP7cI/Q7Dy5gdLQFjsIoJZWzlVIejJO2zK9NRlhcTtuA48Mt43+jniDxh8oiOx
	lonnao7PK4fvkvMvPOKlxQajYTjBOSbiPGXu2w7VyY0ydzQoU3J6QclKhFff2+/wb3z8XBI/pSry6
	CjV2rA/l1Rs75+kwu0ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja4AH-00023A-L1; Sat, 16 May 2020 21:16:13 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48h-0008JU-OS
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:38 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id E3B2C25730;
 Sat, 16 May 2020 23:14:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:55 +0200
Message-Id: <38dcb1a6f12115e156aa4f36997bd4760347e821.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141436_131366_2640F928 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 05/13] usign-exec: fix exec error
 handling
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

When execvp fails in the forked process, we must exit. Also add an error
message.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 ucert.c      |  4 ++--
 usign-exec.c | 40 ++++++++++++++++++++--------------------
 usign.h      |  8 +++++---
 3 files changed, 27 insertions(+), 25 deletions(-)

diff --git a/ucert.c b/ucert.c
index 89bf0c64d4b5..208d5f67e10d 100644
--- a/ucert.c
+++ b/ucert.c
@@ -349,7 +349,7 @@ static int chain_verify(const char *msgfile, const char *pubkeyfile,
 				   blobmsg_data_len(payloadtb[CERT_PL_ATTR_PUBKEY]),
 				   false);
 
-			if (usign_f_pubkey(chainedfp, chainedpubkey)) {
+			if (usign_f_pubkey(chainedfp, chainedpubkey, quiet)) {
 				DPRINTF("cannot get fingerprint for chained key\n");
 				ret = 2;
 				goto clean_and_return;
@@ -460,7 +460,7 @@ static int cert_issue(const char *certfile, const char *pubkeyfile, const char *
 
 	pkb[pklen] = '\0';
 
-	if (usign_f_pubkey(pkfp, pubkeyfile))
+	if (usign_f_pubkey(pkfp, pubkeyfile, quiet))
 		return -1;
 
 	gettimeofday(&tv, NULL);
diff --git a/usign-exec.c b/usign-exec.c
index 4ff2e63c5be1..22fdc14e7ebb 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -72,10 +72,10 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
 		return -1;
 
 	case 0:
-		if (execvp(usign_argv[0], (char *const *)usign_argv))
-			return -1;
-
-		break;
+		execvp(usign_argv[0], (char *const *)usign_argv);
+		if (!quiet)
+			perror("Failed to execute usign");
+		_exit(1);
 
 	default:
 		waitpid(pid, &status, 0);
@@ -94,7 +94,7 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
  * call usign -F ... and set fingerprint returned
  * return WEXITSTATUS or -1 if fork or execv fails
  */
-static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckeyfile, const char *sigfile) {
+static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckeyfile, const char *sigfile, bool quiet) {
 	int fds[2];
 	pid_t pid;
 	int status;
@@ -135,10 +135,10 @@ static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckey
 		close(fds[0]);
 		close(fds[1]);
 
-		if (execvp(usign_argv[0], (char *const *)usign_argv))
-			return -1;
-
-		break;
+		execvp(usign_argv[0], (char *const *)usign_argv);
+		if (!quiet)
+			perror("Failed to execute usign");
+		_exit(1);
 
 	default:
 		waitpid(pid, &status, 0);
@@ -164,22 +164,22 @@ static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckey
 /*
  * call usign -F -p ...
  */
-int usign_f_pubkey(char *fingerprint, const char *pubkeyfile) {
-	return usign_f(fingerprint, pubkeyfile, NULL, NULL);
+int usign_f_pubkey(char *fingerprint, const char *pubkeyfile, bool quiet) {
+	return usign_f(fingerprint, pubkeyfile, NULL, NULL, quiet);
 }
 
 /*
  * call usign -F -s ...
  */
-int usign_f_seckey(char *fingerprint, const char *seckeyfile) {
-	return usign_f(fingerprint, NULL, seckeyfile, NULL);
+int usign_f_seckey(char *fingerprint, const char *seckeyfile, bool quiet) {
+	return usign_f(fingerprint, NULL, seckeyfile, NULL, quiet);
 }
 
 /*
  * call usign -F -x ...
  */
-int usign_f_sig(char *fingerprint, const char *sigfile) {
-	return usign_f(fingerprint, NULL, NULL, sigfile);
+int usign_f_sig(char *fingerprint, const char *sigfile, bool quiet) {
+	return usign_f(fingerprint, NULL, NULL, sigfile, quiet);
 }
 
 
@@ -195,7 +195,7 @@ int usign_v(const char *msgfile, const char *pubkeyfile,
 	unsigned int usign_argc = 0;
 	char fingerprint[17];
 
-	if (usign_f_sig(fingerprint, sigfile)) {
+	if (usign_f_sig(fingerprint, sigfile, quiet)) {
 		if (!quiet)
 			fprintf(stderr, "cannot get signing key fingerprint\n");
 		return 1;
@@ -235,10 +235,10 @@ int usign_v(const char *msgfile, const char *pubkeyfile,
 		return -1;
 
 	case 0:
-		if (execvp(usign_argv[0], (char *const *)usign_argv))
-			return -1;
-
-		break;
+		execvp(usign_argv[0], (char *const *)usign_argv);
+		if (!quiet)
+			perror("Failed to execute usign");
+		_exit(1);
 
 	default:
 		waitpid(pid, &status, 0);
diff --git a/usign.h b/usign.h
index d57d09ec7b74..9c3207aa97ed 100644
--- a/usign.h
+++ b/usign.h
@@ -15,6 +15,8 @@
 #ifndef _USIGN_H
 #define _USIGN_H
 
+#include <stdbool.h>
+
 /**
  * Verify
  *
@@ -35,11 +37,11 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
  *
  * calls: usign -F ...
  */
-int usign_f_pubkey(char *fingerprint, const char *pubkeyfile);
+int usign_f_pubkey(char *fingerprint, const char *pubkeyfile, bool quiet);
 
-int usign_f_seckey(char *fingerprint, const char *seckeyfile);
+int usign_f_seckey(char *fingerprint, const char *seckeyfile, bool quiet);
 
-int usign_f_sig(char *fingerprint, const char *sigfile);
+int usign_f_sig(char *fingerprint, const char *sigfile, bool quiet);
 
 /**
  * custom extension to check for revokers
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
