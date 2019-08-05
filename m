Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B3D824F4
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 20:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzSnJD0LZhz+XMJLxZEHjsCUkERAqwUd9GqCPd/BV4s=; b=lodktzo/vzcwsp
	LGLxNKNMQqntB+6eBqGBfMna5Mmo7K7yWZrmJ8upxk7WDp6G6ejomsKcDQVTR/fmRSgds7fUUX1eE
	Qa+Jyzlcb6JJvpMXP2gmMY5dAhW0Va8xq4aJYVQMSP60/xA9msCFuxBlh0Itu4DqN8NglL7WSYcST
	4XvqSMo5RPoM465tfyy+fdl3W6xiYTFgKNuorIoUUrkCSAgczzpr5svXf9NjmQ4BGuJsQsxj64tuK
	GcahzWIGqKfhVX4OSTAC8Bqfqo+WBxJMeglH7b5GdEZ/n9QOob5NCGau6ra9weBVqxUL+R5KOnUhm
	N4Is/y9k9yqwi0iwjiVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhq6-0001wo-SU; Mon, 05 Aug 2019 18:36:10 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhpc-0001VY-AA
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 18:35:41 +0000
Received: by mail-qk1-x741.google.com with SMTP id d15so60856816qkl.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 11:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3TT3O2lVbQI7RHfeUYHWZaZHO2ycslZOSUkCh3jN8fE=;
 b=dwVbVfNozprwVj2MmxF6fyHI2kCz7afBaQ5PDvDnZNBn48SoSKx9KMuWmLi7UNKQs2
 Y1IUysU7modO7r/B/ox1KL8l7C4Kw9ho3FEN+CXUJ2l1pc69lcGbiqCAKtI75XiwrDZQ
 7sYUvYkI3b4VhWI0ixfgkRJ9p/b8bqlGPCEJzw2QNDOcq0gogVH1kgz6Alf7qIlGvpA0
 lv8gHHdqGnqJVRngLCMhP+hXG0EC585nmYfeQEzhjobe0ZusO0DlkWoJ3KJXCmRLJ29E
 UmYv/XbET6wgURwZYZZe1Hv9mIYMfoEHx/lcaa8fopkiFkIjJlH9po/Gd2nGyClQ9cD/
 TJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3TT3O2lVbQI7RHfeUYHWZaZHO2ycslZOSUkCh3jN8fE=;
 b=qLJGxbtwJGBtOjUEX1+SSgyTZXFsfhe3wl5I61obKGpWx2GU3C2+0ds1wNR5aHkBg6
 0wKVXLjJJxcjtAd6uBzMINpbdsmWrFr/evZlUUedrG8yBfau5/WAX6Dg1jpXqlVMP07s
 hDDGUKMa7Cb2G5mK8CcZYpuLLCfYwQNSAZpZb9CpOPiKIRVHZllhP6rNQ0vhc5jT/sQj
 +J77ybA2T8ifuz5uZVS9C8FiZeY9Mpky3JmcMRwLl6Gya+O28Ji8iEEXpLXKnrndk7im
 dAZupWq2VNmu9lT8xoakdvQNVDmsWlYUiiYMa4CNKElMSHZQiOlz8iA8lZ4zkSRbxRQM
 5G6Q==
X-Gm-Message-State: APjAAAUwUbTrJkJrzmx1Zn3uxEHpAXWg/iDDNNWPprLvoCI+HR6PZpAl
 FFTKjDSHwutBxaAanKEaxpnYs+4QjRM=
X-Google-Smtp-Source: APXvYqyhQPGHbnplGeqkd+XPy+BcELYg4XAMpVnGWKOB2GV9NaKXZVbXmF3KUfPiOwAldFeJ1trn3Q==
X-Received: by 2002:a37:6312:: with SMTP id
 x18mr102303332qkb.300.1565030138863; 
 Mon, 05 Aug 2019 11:35:38 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e7sm34565926qtp.91.2019.08.05.11.35.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 11:35:38 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 15:34:38 -0300
Message-Id: <20190805183439.17926-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805183439.17926-1-cotequeiroz@gmail.com>
References: <20190805183439.17926-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_113540_357653_F339D343 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/3] px5g: support EC keys
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds an 'eckey' command to generate an EC key, with an optional
curve name argument, with P-256 as default.

For the 'selfsigned' command, it adds an 'ec' algorithm argument to the
'-newkey' option, and a '-pkeyopt ec_paramgen_curve:<curvename>' option,
mirroring the way openssl specifies the curve name.

Notice that curve names are not necessarily the same in mbedtls and
openssl.  In particular, secp256r1 works for mbedtls, but openssl uses
prime256v1 instead. px5g uses mbedtls, but short NIST curve names P-256
and P-384 are specifically supported.

Package size increased by about 900 bytes (arm).

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/utils/px5g/Makefile b/package/utils/px5g/Makefile
index 7b5748425d..cfd1bfc80e 100644
--- a/package/utils/px5g/Makefile
+++ b/package/utils/px5g/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=px5g
-PKG_RELEASE:=8
+PKG_RELEASE:=9
 PKG_LICENSE:=LGPL-2.1
 PKG_BUILD_DIR:=$(BUILD_DIR)/px5g-$(BUILD_VARIANT)
 
@@ -53,7 +53,7 @@ ifeq ($(BUILD_VARIANT),standalone)
   TARGET_LDFLAGS := -Wl,-Bstatic $(TARGET_LDFLAGS) -Wl,-Bdynamic
 endif
 
-TARGET_CFLAGS += -Wl,--gc-sections
+TARGET_CFLAGS += -Wl,--gc-sections -Wall -Werror
 
 define Build/Compile
 	$(TARGET_CC) $(TARGET_CPPFLAGS) $(TARGET_CFLAGS) -o $(PKG_BUILD_DIR)/px5g px5g.c $(TARGET_LDFLAGS)
diff --git a/package/utils/px5g/px5g.c b/package/utils/px5g/px5g.c
index f0fe4dcfd3..0b72154509 100644
--- a/package/utils/px5g/px5g.c
+++ b/package/utils/px5g/px5g.c
@@ -32,6 +32,7 @@
 
 #include <mbedtls/bignum.h>
 #include <mbedtls/x509_crt.h>
+#include <mbedtls/ecp.h>
 #include <mbedtls/rsa.h>
 #include <mbedtls/pk.h>
 
@@ -73,6 +74,23 @@ static void write_file(const char *path, int len, bool pem)
 	fclose(f);
 }
 
+static mbedtls_ecp_group_id ecp_curve(const char *name)
+{
+	const mbedtls_ecp_curve_info *curve_info;
+
+	if (!strcmp(name, "P-256"))
+		return MBEDTLS_ECP_DP_SECP256R1;
+	else if (!strcmp(name, "P-384"))
+		return MBEDTLS_ECP_DP_SECP384R1;
+	else if (!strcmp(name, "P-521"))
+		return MBEDTLS_ECP_DP_SECP521R1;
+	curve_info = mbedtls_ecp_curve_info_from_name(name);
+	if (curve_info == NULL)
+		return MBEDTLS_ECP_DP_NONE;
+	else
+		return curve_info->grp_id;
+}
+
 static void write_key(mbedtls_pk_context *key, const char *path, bool pem)
 {
 	int len = 0;
@@ -89,24 +107,33 @@ static void write_key(mbedtls_pk_context *key, const char *path, bool pem)
 	write_file(path, len, pem);
 }
 
-static void gen_key(mbedtls_pk_context *key, int ksize, int exp, bool pem)
+static void gen_key(mbedtls_pk_context *key, bool rsa, int ksize, int exp,
+		    mbedtls_ecp_group_id curve, bool pem)
 {
 	mbedtls_pk_init(key);
-	fprintf(stderr, "Generating RSA private key, %i bit long modulus\n", ksize);
-	mbedtls_pk_setup(key, mbedtls_pk_info_from_type(MBEDTLS_PK_RSA));
-	if (mbedtls_rsa_gen_key(mbedtls_pk_rsa(*key), _urandom, NULL, ksize, exp)) {
-		fprintf(stderr, "error: key generation failed\n");
-		exit(1);
+	if (rsa) {
+		fprintf(stderr, "Generating RSA private key, %i bit long modulus\n", ksize);
+		mbedtls_pk_setup(key, mbedtls_pk_info_from_type(MBEDTLS_PK_RSA));
+		if (!mbedtls_rsa_gen_key(mbedtls_pk_rsa(*key), _urandom, NULL, ksize, exp))
+			return;
+	} else {
+		fprintf(stderr, "Generating EC private key\n");
+		mbedtls_pk_setup(key, mbedtls_pk_info_from_type(MBEDTLS_PK_ECKEY));
+		if (!mbedtls_ecp_gen_key(curve, mbedtls_pk_ec(*key), _urandom, NULL))
+			return;
 	}
+	fprintf(stderr, "error: key generation failed\n");
+	exit(1);
 }
 
-int rsakey(char **arg)
+int dokey(bool rsa, char **arg)
 {
 	mbedtls_pk_context key;
 	unsigned int ksize = 512;
 	int exp = 65537;
 	char *path = NULL;
 	bool pem = true;
+	mbedtls_ecp_group_id curve = MBEDTLS_ECP_DP_SECP256R1;
 
 	while (*arg && **arg == '-') {
 		if (!strcmp(*arg, "-out") && arg[1]) {
@@ -120,10 +147,17 @@ int rsakey(char **arg)
 		arg++;
 	}
 
-	if (*arg)
+	if (*arg && rsa) {
 		ksize = (unsigned int)atoi(*arg);
+	} else if (*arg) {
+		curve = ecp_curve((const char *)*arg);
+		if (curve == MBEDTLS_ECP_DP_NONE) {
+			fprintf(stderr, "error: invalid curve name: %s\n", *arg);
+			return 1;
+		}
+	}
 
-	gen_key(&key, ksize, exp, pem);
+	gen_key(&key, rsa, ksize, exp, curve, pem);
 	write_key(&key, path, pem);
 
 	mbedtls_pk_free(&key);
@@ -146,20 +180,37 @@ int selfsigned(char **arg)
 	time_t from = time(NULL), to;
 	char fstr[20], tstr[20], sstr[17];
 	int len;
+	bool rsa = true;
+	mbedtls_ecp_group_id curve = MBEDTLS_ECP_DP_SECP256R1;
 
 	while (*arg && **arg == '-') {
 		if (!strcmp(*arg, "-der")) {
 			pem = false;
 		} else if (!strcmp(*arg, "-newkey") && arg[1]) {
-			if (strncmp(arg[1], "rsa:", 4)) {
-				fprintf(stderr, "error: invalid algorithm");
+			if (!strncmp(arg[1], "rsa:", 4)) {
+				rsa = true;
+				ksize = (unsigned int)atoi(arg[1] + 4);
+			} else if (!strcmp(arg[1], "ec")) {
+				rsa = false;
+			} else {
+				fprintf(stderr, "error: invalid algorithm\n");
 				return 1;
 			}
-			ksize = (unsigned int)atoi(arg[1] + 4);
 			arg++;
 		} else if (!strcmp(*arg, "-days") && arg[1]) {
 			days = (unsigned int)atoi(arg[1]);
 			arg++;
+		} else if (!strcmp(*arg, "-pkeyopt") && arg[1]) {
+			if (strncmp(arg[1], "ec_paramgen_curve:", 18)) {
+				fprintf(stderr, "error: invalid pkey option: %s\n", arg[1]);
+				return 1;
+			}
+			curve = ecp_curve((const char *)(arg[1] + 18));
+			if (curve == MBEDTLS_ECP_DP_NONE) {
+				fprintf(stderr, "error: invalid curve name: %s\n", arg[1] + 18);
+				return 1;
+			}
+			arg++;
 		} else if (!strcmp(*arg, "-keyout") && arg[1]) {
 			keypath = arg[1];
 			arg++;
@@ -196,8 +247,7 @@ int selfsigned(char **arg)
 		}
 		arg++;
 	}
-
-	gen_key(&key, ksize, exp, pem);
+	gen_key(&key, rsa, ksize, exp, curve, pem);
 
 	if (keypath)
 		write_key(&key, keypath, pem);
@@ -223,7 +273,7 @@ int selfsigned(char **arg)
 	mbedtls_x509write_crt_set_subject_key_identifier(&cert);
 	mbedtls_x509write_crt_set_authority_key_identifier(&cert);
 
-	_urandom(NULL, buf, 8);
+	_urandom(NULL, (void *) buf, 8);
 	for (len = 0; len < 8; len++)
 		sprintf(sstr + len*2, "%02x", (unsigned char) buf[len]);
 
@@ -260,8 +310,10 @@ int main(int argc, char *argv[])
 
 	if (!argv[1]) {
 		//Usage
+	} else if (!strcmp(argv[1], "eckey")) {
+		return dokey(false, argv+2);
 	} else if (!strcmp(argv[1], "rsakey")) {
-		return rsakey(argv+2);
+		return dokey(true, argv+2);
 	} else if (!strcmp(argv[1], "selfsigned")) {
 		return selfsigned(argv+2);
 	}
@@ -269,6 +321,6 @@ int main(int argc, char *argv[])
 	fprintf(stderr,
 		"PX5G X.509 Certificate Generator Utility v" PX5G_VERSION "\n" PX5G_COPY
 		"\nbased on PolarSSL by Christophe Devine and Paul Bakker\n\n");
-	fprintf(stderr, "Usage: %s [rsakey|selfsigned]\n", *argv);
+	fprintf(stderr, "Usage: %s [eckey|rsakey|selfsigned]\n", *argv);
 	return 1;
 }

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
