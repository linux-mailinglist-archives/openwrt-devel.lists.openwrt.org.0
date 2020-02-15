Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D90F1600FF
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 23:56:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRAE5FbCUOLxB4gPJDHBVUiV1Frw3W8RtD1eFNwolJI=; b=gA4qjuu7waGl+C
	wV9Xcz4lbA+bIygQkyi2wCHmJMlpk8SXtaZyxQIUGPdSuZSa4MrRSYwndptUWajZ5Vy8xB6d30IlU
	UQv7KFSG2Ed6mr/yOiBoCgbJkh1PblJKZGO0v2rLd/Q05e6bslqXfqXCFKdxL2YxlWoxfeS2PUjYA
	5UCQm1+V3hWOsXLQ89xuZVMN31/MXnH2F7ge8X567A1DSaxj/jQd+6yf88aXvLNyMdC5nEshZUI5Q
	O+JMEvVurWYqVJMCmtYr5l1lpcMco3C+4izvDOZCAkck4j/GbcHAgktr7TABQ2fn9vvuRVIEApu0N
	/1las0z2bIYV7mF+CyDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j36Mp-0004tS-9f; Sat, 15 Feb 2020 22:56:55 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j36Mf-0004tB-4L
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 22:56:46 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id E71D856427; Sat, 15 Feb 2020 23:56:43 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id C3DAB56425
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Feb 2020 23:56:43 +0100 (CET)
Received: (qmail 549 invoked from network); 15 Feb 2020 23:56:43 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 15 Feb 2020 23:56:43 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Feb 2020 23:56:41 +0100
Message-Id: <20200215225641.1652718-1-jo@mein.io>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_145645_325859_DC0BE719 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uclient] uclient-fetch: support specifying
 advertised TLS ciphers
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Introduce a new `--ciphers` option which allows specifying a colon separated
list of usable TLS ciphers.

Depending on the underlying ustream-ssl provider, the list either follows
OpenSSL's cipher string format or, in case of mbedTLS, is a simple colon
separated cipher whitelist.

Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 uclient-fetch.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/uclient-fetch.c b/uclient-fetch.c
index 38c9c53..a06be5d 100644
--- a/uclient-fetch.c
+++ b/uclient-fetch.c
@@ -467,6 +467,7 @@ static int usage(const char *progname)
 		"HTTPS options:\n"
 		"	--ca-certificate=<cert>		Load CA certificates from file <cert>\n"
 		"	--no-check-certificate		don't validate the server's certificate\n"
+		"	--ciphers=<cipherlist>		Set the cipher list string\n"
 		"\n", progname);
 	return 1;
 }
@@ -510,6 +511,7 @@ static int no_ssl(const char *progname)
 enum {
 	L_NO_CHECK_CERTIFICATE,
 	L_CA_CERTIFICATE,
+	L_CIPHERS,
 	L_USER,
 	L_PASSWORD,
 	L_USER_AGENT,
@@ -525,6 +527,7 @@ enum {
 static const struct option longopts[] = {
 	[L_NO_CHECK_CERTIFICATE] = { "no-check-certificate", no_argument },
 	[L_CA_CERTIFICATE] = { "ca-certificate", required_argument },
+	[L_CIPHERS] = { "ciphers", required_argument },
 	[L_USER] = { "user", required_argument },
 	[L_PASSWORD] = { "password", required_argument },
 	[L_USER_AGENT] = { "user-agent", required_argument },
@@ -568,6 +571,15 @@ int main(int argc, char **argv)
 				if (ssl_ctx)
 					ssl_ops->context_add_ca_crt_file(ssl_ctx, optarg);
 				break;
+			case L_CIPHERS:
+				if (ssl_ctx) {
+					if (ssl_ops->context_set_ciphers(ssl_ctx, optarg)) {
+						if (!quiet)
+							fprintf(stderr, "No recognized ciphers in cipher list\n");
+						exit(1);
+					}
+				}
+				break;
 			case L_USER:
 				if (!strlen(optarg))
 					break;
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
