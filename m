Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31221D6422
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPOQpxHBimBYSxnM11eeh7b75VhstebppGmOk2Fd6mc=; b=ZFWfwWfQco7tN5
	0jvwX+P1aOm2IYQj3WUcpeg7FXC94SQaXDHPf2sbLYbnNVMMAoP3SXwvNoJKBbuHArZdjmINxmc0u
	63VbMcweipYgqHOnp/v8aWDNhuDl1zyxZTFPkNgNn7Y4BDzfw9PK9rK9NekciGzAgxTl78haj9YTK
	uH4+46SzzQ9ULeLDK+lejm/ZjGmdeDpg5b/QMQc0FPSBVBNtlK9AqpD4g0eOJwc7HKYbj7VDgx8x2
	YA0ldDumdOWXSWnjK/+4bPoqLXZmFOmGOgqQJdtZmfgOJi0GgzQcP4kQINJJ7lAddl3ej/u7F3ebZ
	rbyctOoKn/xS0075cBAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja491-000051-7P; Sat, 16 May 2020 21:14:55 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48e-0008IE-Uj
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:34 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 628A12572C;
 Sat, 16 May 2020 23:14:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:51 +0200
Message-Id: <fdff10852326122134a60911a3b3c7c2aeab5723.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141433_140544_BB8D3FFB 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 01/13] stdout/stderr improvements
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

- Print error messages to stderr
- fprintf(stdout, ...) is just printf(...)

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 ucert.c      | 6 +++---
 usign-exec.c | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/ucert.c b/ucert.c
index d822199eb7f8..2ea939947d72 100644
--- a/ucert.c
+++ b/ucert.c
@@ -381,7 +381,7 @@ static void cert_dump_blob(struct blob_attr *cert[CERT_ATTR_MAX]) {
 
 		switch(cert_policy[i].type) {
 		case BLOB_ATTR_BINARY:
-			fprintf(stdout, "signature:\n---\n%s---\n", (char *) blob_data(v));
+			printf("signature:\n---\n%s---\n", (char *) blob_data(v));
 			break;
 		case BLOB_ATTR_NESTED:
 			json = blobmsg_format_json_indent(blob_data(v), false, 0);
@@ -389,7 +389,7 @@ static void cert_dump_blob(struct blob_attr *cert[CERT_ATTR_MAX]) {
 				DPRINTF("cannot parse payload\n");
 				continue;
 			}
-			fprintf(stdout, "payload:\n---\n%s\n---\n", json);
+			printf("payload:\n---\n%s\n---\n", json);
 			free(json);
 			break;
 		}
@@ -408,7 +408,7 @@ static int cert_dump(const char *certfile) {
 	}
 
 	list_for_each_entry(cobj, &certchain, list) {
-		fprintf(stdout, "=== CHAIN ELEMENT %02u ===\n", ++count);
+		printf("=== CHAIN ELEMENT %02u ===\n", ++count);
 		cert_dump_blob(cobj->cert);
 	}
 
diff --git a/usign-exec.c b/usign-exec.c
index 85e5f956ee1f..7f6106580b16 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -209,13 +209,13 @@ int usign_v(const char *msgfile, const char *pubkeyfile,
 
 	if (usign_f_sig(fingerprint, sigfile)) {
 		if (!quiet)
-			fprintf(stdout, "cannot get signing key fingerprint\n");
+			fprintf(stderr, "cannot get signing key fingerprint\n");
 		return 1;
 	}
 
 	if (pubkeydir && _usign_key_is_revoked(fingerprint, pubkeydir)) {
 		if (!quiet)
-			fprintf(stdout, "key %s has been revoked!\n", fingerprint);
+			fprintf(stderr, "key %s has been revoked!\n", fingerprint);
 		return 1;
 	}
 	usign_argv[usign_argc++] = USIGN_EXEC;
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
