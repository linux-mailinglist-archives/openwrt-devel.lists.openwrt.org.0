Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D591D6425
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rav0rWWHRRyt5e7FAt9ishGS9MijT1liXRWIFMaGf5o=; b=QbIUq/K8/Qxzrk
	PvLWzq7yMzD8Pid/71Wyterc8e95nuLJZ28ApSPZzFb0EZaiylxYeGu6BAaaM3bEag9v8LQ8i9IKZ
	OA7s+mLfkbw7ja7LD0t44P0/T4+Kfxm0QTHzIX/0it//LhJrrvVAKoGiNTRWXXdXjqsQu2w8nhZK0
	SGlfGzZK8ZD7bGtUC1XYz4nE4Tz0F3o5HnJiST2FW3sARn5ONrWBCHzvbEno3gWPi2sYz033ukuQM
	NSqMOUSRtzolp78yF6QG05r+e6vaMw/qXQf1Sir2DUocUh8SUxdf3i8ws6o/RCM4gO307/28C0LdQ
	aiaVQcQAYwOAqlNDbdbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja49V-0000oo-Fx; Sat, 16 May 2020 21:15:25 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48e-0008IG-Uj
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:36 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id A22272572E;
 Sat, 16 May 2020 23:14:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:53 +0200
Message-Id: <854d93e2326a0c027686b0058116629002fd011f.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141433_291157_C69C0ED2 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 03/13] Introduce read_file() helper,
 improve error reporting
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

This helper simplifies handling, ensures that there are no resource
leaks, and checks for EOF more robustly.

Also introduce error reporting at all call sites to give the user some
feedback when something went wrong.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 ucert.c | 97 +++++++++++++++++++++++++++++++++------------------------
 1 file changed, 57 insertions(+), 40 deletions(-)

diff --git a/ucert.c b/ucert.c
index 7de4c12711e8..89bf0c64d4b5 100644
--- a/ucert.c
+++ b/ucert.c
@@ -15,6 +15,7 @@
 
 #include <fcntl.h>
 #include <dlfcn.h>
+#include <errno.h>
 #include <stdio.h>
 #include <stdbool.h>
 #include <stdlib.h>
@@ -129,28 +130,51 @@ static bool write_file(const char *filename, void *buf, size_t len, bool append)
 	return (outlen == len);
 }
 
+/* reads a whole file to a buffer - returns -1 on errors and sets errno */
+static ssize_t read_file(const char *filename, void *buf, size_t len, size_t minlen) {
+	FILE *f;
+	ssize_t ret;
+
+	f = fopen(filename, "r");
+	if (!f)
+		return -1;
+
+	ret = fread(buf, 1, len, f);
+
+	/* Ensure that feof() yields the correct result when the file is exactly
+	 * len bytes long */
+	fgetc(f);
+
+	if (ferror(f)) {
+		ret = -1;
+	} else if (!feof(f)) {
+		errno = EOVERFLOW;
+		ret = -1;
+	} else if ((size_t)ret < minlen) {
+		errno = EINVAL;
+		ret = -1;
+	}
+
+	fclose(f);
+	return ret;
+}
+
 /* load certfile into list */
 static int cert_load(const char *certfile, struct list_head *chain) {
-	FILE *f;
 	struct blob_attr *certtb[CERT_ATTR_MAX];
 	struct blob_attr *bufpt;
 	struct cert_object *cobj;
 	char filebuf[CERT_BUF_LEN];
 	int ret = 0, pret = 0;
-	size_t len, pos = 0;
-
-	f = fopen(certfile, "r");
-	if (!f)
-		return 1;
-
-	len = fread(&filebuf, 1, CERT_BUF_LEN - 1, f);
-	if (len < 64)
-		return 1;
+	size_t pos = 0;
+	ssize_t len;
 
-	ret = ferror(f) || !feof(f);
-	fclose(f);
-	if (ret)
+	len = read_file(certfile, filebuf, sizeof(filebuf) - 1, 0);
+	if (len < 0) {
+		if (!quiet)
+			perror("Unable to load certificate file");
 		return 1;
+	}
 
 	bufpt = (struct blob_attr *)filebuf;
 	do {
@@ -159,7 +183,7 @@ static int cert_load(const char *certfile, struct list_head *chain) {
 			/* no attributes found */
 			break;
 
-		if (pos + blob_pad_len(bufpt) > len)
+		if (pos + blob_pad_len(bufpt) > (size_t) len)
 			/* blob exceeds filebuffer */
 			break;
 		else
@@ -177,7 +201,7 @@ static int cert_load(const char *certfile, struct list_head *chain) {
 		list_add_tail(&cobj->list, chain);
 		ret += pret;
 	/* repeat parsing while there is still enough remaining data in buffer */
-	} while(len > pos + sizeof(struct blob_attr) && (bufpt = blob_next(bufpt)));
+	} while((size_t) len > pos + sizeof(struct blob_attr) && (bufpt = blob_next(bufpt)));
 
 	return (ret <= 0);
 }
@@ -185,21 +209,18 @@ static int cert_load(const char *certfile, struct list_head *chain) {
 #ifdef UCERT_FULL
 /* append signature to certfile */
 static int cert_append(const char *certfile, const char *sigfile) {
-	FILE *fs;
 	char filebuf[CERT_BUF_LEN];
 	struct blob_buf sigbuf = {0};
-	int len;
+	ssize_t len;
 	int ret;
 
-	fs = fopen(sigfile, "r");
-	if (!fs)
-		return 1;
+	len = read_file(sigfile, filebuf, sizeof(filebuf) - 1, 64);
+	if (len < 0) {
+		if (!quiet)
+			perror("Unable to load signature file");
 
-	len = fread(&filebuf, 1, CERT_BUF_LEN - 1, fs);
-	ret = ferror(fs) || !feof(fs) || (len < 64);
-	fclose(fs);
-	if (ret)
 		return 1;
+	}
 
 	blob_buf_init(&sigbuf, 0);
 	blob_put(&sigbuf, CERT_ATTR_SIGNATURE, filebuf, len);
@@ -420,27 +441,24 @@ static int cert_issue(const char *certfile, const char *pubkeyfile, const char *
 	struct blob_buf payloadbuf = {0};
 	struct blob_buf certbuf = {0};
 	struct timeval tv;
-	int pklen, siglen;
+	ssize_t pklen, siglen;
 	int revoker = 1;
 	void *c;
-	FILE *pkf, *sigf;
 	char pkb[512];
 	char sigb[1024];
 	char fname[256], sfname[256];
 	char pkfp[17];
 	char tmpdir[] = "/tmp/ucert-XXXXXX";
 
-	pkf = fopen(pubkeyfile, "r");
-	if (!pkf)
-		return -1;
-
-	pklen = fread(pkb, 1, 512, pkf);
-	pkb[pklen] = '\0';
+	pklen = read_file(pubkeyfile, pkb, sizeof(pkb) - 1, 32);
+	if (pklen < 0) {
+		if (!quiet)
+			perror("Unable to load public key file");
 
-	if (pklen < 32)
 		return -1;
+	}
 
-	fclose(pkf);
+	pkb[pklen] = '\0';
 
 	if (usign_f_pubkey(pkfp, pubkeyfile))
 		return -1;
@@ -471,16 +489,15 @@ static int cert_issue(const char *certfile, const char *pubkeyfile, const char *
 		if (usign_s(fname, seckeyfile, sfname, quiet))
 			return 1;
 
-		sigf = fopen(sfname, "r");
-		if (!sigf)
-			return 1;
+		siglen = read_file(sfname, sigb, sizeof(sigb) - 1, 1);
+		if (siglen < 0) {
+			if (!quiet)
+				perror("Unable to load signature file");
 
-		siglen = fread(sigb, 1, 1024, sigf);
-		if (siglen < 1)
 			return 1;
+		}
 
 		sigb[siglen] = '\0';
-		fclose(sigf);
 
 		unlink(fname);
 		unlink(sfname);
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
