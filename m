Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519901600FE
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 23:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AGRY9mIxS+HzSP25U5xcsQA4xuJxm97pelafGoONiHU=; b=EUXJLM5AeflgKy
	Vo2NqW3nKfiOynVEWFWE7h63imA9DkeMX+8hy2jFk1/W1ytnIiujLzViNXJoyTTRERzwnH23zXejC
	nLx4HnfxJl24NzfKCxrVKGyQFCaGvsMQiGTFMlTtg5423p5h3/SqUoYz3UwlTLcq/wR36w3fDBYfn
	xRmVSGhbUrhdhBS6Hkzn5O+p7uSsPnmCAKP7Xzt0+eMBEiQFcMz/NBPr2i5r/VaQwJ7kqkqHwUrm6
	RUDS0PW4VPKt2VbjUoASAYjPpE4uwKu4hZ0MQO4ovUJn4RaoZ4bHj+x3TfFEO5fmhtiaCKVU8hnfY
	SiTnPwN0Wbdp9KbA1O4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j36Lx-0004cD-BC; Sat, 15 Feb 2020 22:56:01 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j36Lq-0004bf-Cz
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 22:55:56 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 26EB656424; Sat, 15 Feb 2020 23:55:53 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id C7ED856422
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Feb 2020 23:55:52 +0100 (CET)
Received: (qmail 98314 invoked from network); 15 Feb 2020 23:55:52 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 15 Feb 2020 23:55:52 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Feb 2020 23:55:51 +0100
Message-Id: <20200215225551.1652646-1-jo@mein.io>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_145554_747565_20A894E6 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uhttpd] tls: support specifying accepted TLS
 ciphers
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

Introduce a new `-P` option which allows specifying a colon separated list
of accepted TLS ciphers.

Depending on the underlying ustream-ssl provider, the list either follows
OpenSSL's cipher string format or, in case of mbedTLS, is a simple colon
separated cipher whitelist.

Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 main.c | 12 +++++++++---
 tls.c  |  7 ++++++-
 tls.h  |  4 ++--
 3 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/main.c b/main.c
index 6c29afe..26e74ec 100644
--- a/main.c
+++ b/main.c
@@ -139,6 +139,7 @@ static int usage(const char *name)
 		"	-s [addr:]port  Like -p but provide HTTPS on this port\n"
 		"	-C file         ASN.1 server certificate file\n"
 		"	-K file         ASN.1 server private key file\n"
+		"	-P ciphers      Colon separated list of allowed TLS ciphers\n"
 		"	-q              Redirect all HTTP requests to HTTPS\n"
 #endif
 		"	-h directory    Specify the document root, default is '.'\n"
@@ -249,7 +250,7 @@ int main(int argc, char **argv)
 	int bound = 0;
 #ifdef HAVE_TLS
 	int n_tls = 0;
-	const char *tls_key = NULL, *tls_crt = NULL;
+	const char *tls_key = NULL, *tls_crt = NULL, *tls_ciphers = NULL;
 #endif
 #ifdef HAVE_LUA
 	const char *lua_prefix = NULL, *lua_handler = NULL;
@@ -261,7 +262,7 @@ int main(int argc, char **argv)
 	init_defaults_pre();
 	signal(SIGPIPE, SIG_IGN);
 
-	while ((ch = getopt(argc, argv, "A:aC:c:Dd:E:fh:H:I:i:K:k:L:l:m:N:n:p:qRr:Ss:T:t:U:u:Xx:y:")) != -1) {
+	while ((ch = getopt(argc, argv, "A:aC:c:Dd:E:fh:H:I:i:K:k:L:l:m:N:n:P:p:qRr:Ss:T:t:U:u:Xx:y:")) != -1) {
 		switch(ch) {
 #ifdef HAVE_TLS
 		case 'C':
@@ -272,6 +273,10 @@ int main(int argc, char **argv)
 			tls_key = optarg;
 			break;
 
+		case 'P':
+			tls_ciphers = optarg;
+			break;
+
 		case 'q':
 			conf.tls_redirect = 1;
 			break;
@@ -282,6 +287,7 @@ int main(int argc, char **argv)
 #else
 		case 'C':
 		case 'K':
+		case 'P':
 		case 'q':
 		case 's':
 			fprintf(stderr, "uhttpd: TLS support not compiled, "
@@ -523,7 +529,7 @@ int main(int argc, char **argv)
 			return 1;
 		}
 
-		if (uh_tls_init(tls_key, tls_crt))
+		if (uh_tls_init(tls_key, tls_crt, tls_ciphers))
 		    return 1;
 	}
 #endif
diff --git a/tls.c b/tls.c
index d969b82..1da0881 100644
--- a/tls.c
+++ b/tls.c
@@ -31,7 +31,7 @@ static struct ustream_ssl_ops *ops;
 static void *dlh;
 static void *ctx;
 
-int uh_tls_init(const char *key, const char *crt)
+int uh_tls_init(const char *key, const char *crt, const char *ciphers)
 {
 	static bool _init = false;
 
@@ -63,6 +63,11 @@ int uh_tls_init(const char *key, const char *crt)
 		return -EINVAL;
 	}
 
+	if (ciphers && ops->context_set_ciphers(ctx, ciphers)) {
+		fprintf(stderr, "No recognized ciphers in cipher list\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
diff --git a/tls.h b/tls.h
index 9be74ba..f457cb7 100644
--- a/tls.h
+++ b/tls.h
@@ -22,13 +22,13 @@
 
 #ifdef HAVE_TLS
 
-int uh_tls_init(const char *key, const char *crt);
+int uh_tls_init(const char *key, const char *crt, const char *ciphers);
 void uh_tls_client_attach(struct client *cl);
 void uh_tls_client_detach(struct client *cl);
 
 #else
 
-static inline int uh_tls_init(const char *key, const char *crt)
+static inline int uh_tls_init(const char *key, const char *crt, const char *ciphers)
 {
 	return -1;
 }
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
