Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EF610F442
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 01:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dlx/LAz2ljFWp8hLDnFdRdWvsyGaETKwBQ0RM1Tt5aw=; b=E4AJ0xrHCwhjr9
	GxYIXo9iCWYxs7/cGzEZZaSGP/T5Sikd/hJXFZijtDHhXO+i6c+qLHYoLnlAinebpmLEgST6HwMfp
	yv8+zZ8l6RyT1ZCVsYsIcPjh8NR98adh5Yr+uW9t0T5Cul6468ImATwmKqMjFfQLi/VsBQ+Mz7W/b
	X5A6dzvj778hRSdo39U2vGygSVBKvLDiP/2q7HNl/uvDf3Bj13gD3k4gyt88sgMpLf7jipOYqOZ2+
	tziSIMbYSKOjOQn8LqHO0ki/6pUYEEP6P7gNO2JJ20CE3Ru+wOoi7HuOKOoVa0BAULfoNAIntHmGI
	vf8iKuTQghIzmIsn/11A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibwSv-0007Hp-2r; Tue, 03 Dec 2019 00:54:57 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibwSp-0007Gw-Hp
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 00:54:52 +0000
Received: by mail-pj1-x1042.google.com with SMTP id r67so699257pjb.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Dec 2019 16:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DKBYGjm4ssDsMHdsCWgComZylf1kSDpFWexa3yBsobE=;
 b=Nxy7JXvNnGaAhQmpyVeYOu4rUBOw6IAuMtrFdDCXnxAhVj1/5srxFW7T2lxOkir7r5
 OIf+z4MpiACqcBXuZR8ZIH7mfW4hxhyfoINVv9I0/V+fjSpE4tVcXtVUUIDT2AnoVoyx
 1nEfJO42yr0lA3wQ7BM7d8uSpE+aicGlf0CaLP82jfWhPv7U4JFekFSC1nUmOt9uPkw7
 k+KNJ07TmaBglDfn4DLll6Cm6y+DOAkcpVlKC0kOqH9rihRwABintVQTUBagJZk2fxJ3
 iriBJUKXXY+gBIGbrLVYLQptj8KZJo68GGfz6yOJSmmBW7Lgj5Hyg5R3/oz5kDjV+HNj
 h5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DKBYGjm4ssDsMHdsCWgComZylf1kSDpFWexa3yBsobE=;
 b=qZIWOWAFB98ELXq3Ef+a8+wOfdnMYcv8f3BBmWHXnD+2FeeWVU+eSMjYn1vPWkQ82D
 enae/BxZLhUSyPIDMtu1ABXz9IU90ThvBxcstII8s0Itb0pT9IWQVx5+pEs2rDjJvNAv
 uyziuwo6q5n9xuMriSxCJxaFmTUN5ycAQhwvPmryLuJC/SvA/ffXFifk3u7b0grSpopW
 xBrFo2ccDUSHlRboMvEsK7mvRKNMBCdHIqusOGbMhfxH5B+M9n4EOU3SZhn8TEcqR++b
 WxEZfzObaXanWxPc6fftkUfYHypnMrkyAdTMcIs/dRf7ua9MCZNS61l4zsCe0Udz65ba
 I/1A==
X-Gm-Message-State: APjAAAV2vpKGH10ol41mfWRKRlyCI77apVXLHm2k/rW8hLci03xX/W/B
 e4IXqQOJDbQsbYTc02H1OasYtibdbsw=
X-Google-Smtp-Source: APXvYqzPuHKAVTyJq89jL/B8n0P34CdG+/X0O9BC6tm2QwzGBCsKIB9uJEON6UIbmSBjXfMXQ4R5bg==
X-Received: by 2002:a17:90b:24c:: with SMTP id
 fz12mr2351422pjb.51.1575334489568; 
 Mon, 02 Dec 2019 16:54:49 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k19sm721601pfg.132.2019.12.02.16.54.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 16:54:48 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Dec 2019 16:54:47 -0800
Message-Id: <20191203005447.4607-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_165451_614442_28D9E7A6 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] uci: Fix Wformat-nonliteral warning
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

A const char * variable is being passed as a format string. Unfortunately,
this is not correct.

A constant expression needs to be passed so that GCC can determine the
types of the format properly.

Also fixed a different warning that needs a printf attribute.

Fixes:

error: format not a string literal, argument types not checked
[-Werror=format-nonliteral]
  176 |    error_info);
      |    ^~~~~~~~~~
error: format not a string literal, argument types not checked
[-Werror=format-nonliteral]
  185 |    error_info);

cli.c:196:19: error: format string is not a string literal
[-Werror=format-nonliteral]
           vfprintf(stderr, fmt, ap);

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v3: Moved define to top of file.
 v2: Fixed extra warning from clang 10.
 cli.c    |  1 +
 libuci.c | 15 ++++++++-------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/cli.c b/cli.c
index 8970f4f..6ba97ea 100644
--- a/cli.c
+++ b/cli.c
@@ -185,6 +185,7 @@ static void cli_perror(void)
 	uci_perror(ctx, appname);
 }
 
+__attribute__((format(printf, 1, 2)))
 static void cli_error(const char *fmt, ...)
 {
 	va_list ap;
diff --git a/libuci.c b/libuci.c
index a9e70e8..0f0211a 100644
--- a/libuci.c
+++ b/libuci.c
@@ -40,6 +40,12 @@ static const char *uci_errstr[] = {
 #include "uci_internal.h"
 #include "list.c"
 
+#define errstr \
+	"%s%s" /* prefix */ \
+	"%s%s" /* function */ \
+	"%s" /* error */ \
+	"%s" /* details */
+
 __private const char *uci_confdir = UCI_CONFDIR;
 __private const char *uci_savedir = UCI_SAVEDIR;
 
@@ -142,11 +148,6 @@ uci_get_errorstr(struct uci_context *ctx, char **dest, const char *prefix)
 {
 	static char error_info[128];
 	int err;
-	const char *format =
-		"%s%s" /* prefix */
-		"%s%s" /* function */
-		"%s" /* error */
-		"%s"; /* details */
 
 	error_info[0] = 0;
 
@@ -169,7 +170,7 @@ uci_get_errorstr(struct uci_context *ctx, char **dest, const char *prefix)
 		break;
 	}
 	if (dest) {
-		err = asprintf(dest, format,
+		err = asprintf(dest, errstr,
 			(prefix ? prefix : ""), (prefix ? ": " : ""),
 			(ctx && ctx->func ? ctx->func : ""), (ctx && ctx->func ? ": " : ""),
 			uci_errstr[err],
@@ -178,7 +179,7 @@ uci_get_errorstr(struct uci_context *ctx, char **dest, const char *prefix)
 			*dest = NULL;
 	} else {
 		strcat(error_info, "\n");
-		fprintf(stderr, format,
+		fprintf(stderr, errstr,
 			(prefix ? prefix : ""), (prefix ? ": " : ""),
 			(ctx && ctx->func ? ctx->func : ""), (ctx && ctx->func ? ": " : ""),
 			uci_errstr[err],
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
