Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26CA1D6428
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecUPWf3VYCwj6M6V9F3Izx3nvHXICf+kejH51p5XthY=; b=W+QPSQsOeONCvd
	1Z98vqWhUOryJDRUFNkwxvaVWD0euWWtPZzrOh6AYdkXVsY+qnzpNaWBLtdJ2dAx8u98Vp6T7MIaK
	gTvISErAMiMrLoEbZROuGhjUNuT3lC4tJ9CUwqT+KeMvoifNhbg8k4bxwrmHtXlh10Xi4fPTnHx+U
	iFXjJ5jw16X968ZmKCidfsQXgiUaCpr/aP7TKO9vQzEacBme4NnyRQTJq0AS1IPM1GJbfBvAzmv6C
	ZavuCFEpc/H6W+ygtUAkCJCpD909X8pjQth/yvIPCAD+kWpSmz8s0r4OetRrqRbEfwuVWw2J7jUMG
	UTc67+I0FJJwEtV6tIbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja49z-0001XX-3T; Sat, 16 May 2020 21:15:55 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48h-0008JX-Pv
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:37 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 2B3FA25732;
 Sat, 16 May 2020 23:14:30 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:57 +0200
Message-Id: <5a738e549d31a54b31ac673af88e23686e453aef.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141436_006952_449F69B5 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 07/13] usign-exec: change usign_f_*
 fingerprint argument to char[17]
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

This makes it more obvious that a buffer with space for 17 characters is
expected to be passed. The code still works the same (a char[17] is
equivalent to char* as an argument).

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 usign-exec.c | 8 ++++----
 usign.h      | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/usign-exec.c b/usign-exec.c
index 436c627356b0..294c794b1c50 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -94,7 +94,7 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
  * call usign -F ... and set fingerprint returned
  * return WEXITSTATUS or -1 if fork fails
  */
-static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckeyfile, const char *sigfile, bool quiet) {
+static int usign_f(char fingerprint[17], const char *pubkeyfile, const char *seckeyfile, const char *sigfile, bool quiet) {
 	int fds[2];
 	pid_t pid;
 	int status;
@@ -162,21 +162,21 @@ static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckey
 /*
  * call usign -F -p ...
  */
-int usign_f_pubkey(char *fingerprint, const char *pubkeyfile, bool quiet) {
+int usign_f_pubkey(char fingerprint[17], const char *pubkeyfile, bool quiet) {
 	return usign_f(fingerprint, pubkeyfile, NULL, NULL, quiet);
 }
 
 /*
  * call usign -F -s ...
  */
-int usign_f_seckey(char *fingerprint, const char *seckeyfile, bool quiet) {
+int usign_f_seckey(char fingerprint[17], const char *seckeyfile, bool quiet) {
 	return usign_f(fingerprint, NULL, seckeyfile, NULL, quiet);
 }
 
 /*
  * call usign -F -x ...
  */
-int usign_f_sig(char *fingerprint, const char *sigfile, bool quiet) {
+int usign_f_sig(char fingerprint[17], const char *sigfile, bool quiet) {
 	return usign_f(fingerprint, NULL, NULL, sigfile, quiet);
 }
 
diff --git a/usign.h b/usign.h
index 9c3207aa97ed..fc734575a76b 100644
--- a/usign.h
+++ b/usign.h
@@ -37,11 +37,11 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
  *
  * calls: usign -F ...
  */
-int usign_f_pubkey(char *fingerprint, const char *pubkeyfile, bool quiet);
+int usign_f_pubkey(char fingerprint[17], const char *pubkeyfile, bool quiet);
 
-int usign_f_seckey(char *fingerprint, const char *seckeyfile, bool quiet);
+int usign_f_seckey(char fingerprint[17], const char *seckeyfile, bool quiet);
 
-int usign_f_sig(char *fingerprint, const char *sigfile, bool quiet);
+int usign_f_sig(char fingerprint[17], const char *sigfile, bool quiet);
 
 /**
  * custom extension to check for revokers
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
