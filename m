Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5458B115E0E
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 19:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=apt3+4cDw7rcJiLYCQkPJdNLhLBoAps1XFG4RwCkVgc=; b=kXQ2qDh1IigOOJ
	k+HfqHqts9ZoZvasNaVOARWsSkczb2gK1XyHVIrFzwyIDTrNnZ9MTFB4uK7zvqZ2wrUYnHwZY9sgO
	p8TcVeeHLCvUKBv//VYAu3sIuwWHx0AzUd+bXa7bLz7BI0MCs8Mfzg+nSUYCURTaVFaoh5VoFWMfJ
	n+hVB6FDSR1iyObRgf0Dg1qRRHrsEPclprv1BnSrR7E9U2m7YY3BvEjzI7P9HEKxzYPH5L3swLbTr
	3Q9Y6PcvcWSqVM3axymCcUSwoBuEmfwi9Aj96f9KQe5g1C8Ikaeuw+gSM4PsCmJY1Nv5zcHzLp/ks
	HdksOlQWi+deRhK0uF3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idfAJ-0001Gc-BZ; Sat, 07 Dec 2019 18:50:51 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idfAD-0001G8-U6
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 18:50:47 +0000
Received: by mail-pg1-x532.google.com with SMTP id r11so5014382pgf.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 10:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WtKSroPi7eznLyyhL8kSnsjUypJ6jBuTkz9qpxLb/cQ=;
 b=LjJ4NCOFWjg1jOfP6BANVm5TOqaiz9k4FWgTsK9YTfSm63gGxy2v8KhpxWahUdMbJE
 EK3mfXLj9ZGFjmfMs3X6JpKPGF5tpc1ZPeAPXNTe31c35wV3J6TORuZXjbYd+P3JxoAo
 ghEreqGVBciX+nTawQ1h4ChQuGSdLtv59fYQ9Ak38eZ/VeYix08Fjts9XKEtzUc/Mhly
 4vTBmxQXThH8QQ32nwQahJgfV8P546RKsQq+d4GysuBU2mjdPi1jVp4yUKhasRxAMKX+
 QvGcvc9KyeSBZwLLvTfeHiUDI1wh88J2pqw9MqbE38s+6slMAsex/vo77lcqcBWhYPCP
 xpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WtKSroPi7eznLyyhL8kSnsjUypJ6jBuTkz9qpxLb/cQ=;
 b=ObOVfzoY96pFfBZKS6YsQ4Qo5geuotMgTIGkL7segmO//EDiotgagHFiNgSK6gq8XH
 fU/RHs+fjtqbQQL8yjxWFskH2RQb0r5GYeDU7BnKJGUjPREtiCF5oH8FfmVs/N1I6Kx0
 shBFdRWb3rkpM8abhj4Xp7ixp6PeN9GrT04elSOGGqYqGHeLd+usCZ77uM6AmEhgAJBs
 xUoVFnuvX1pUA+Cb8hgBhchOGdUUep6lLskNjANFoH9e4n+MGdsmyUnbFWPDiSZN2nTa
 0OB7NLUvtssN0i0u/LA4zeXnEvaVf4jZ03X7WAGu/Db1cyjgUSprFZp5gZ2LXHJ0ylnT
 fAAg==
X-Gm-Message-State: APjAAAXNRratJIFCOMpOJIpKG+01ctt9aF0zHfSIKEFq36oO2DqTmV2r
 XYNGiiDZQHihoHdEeqTsP1DOOWUaX/Q=
X-Google-Smtp-Source: APXvYqw/UISKF8O47hRaQgUSIiaR6bXBc2CEb9eQOFhVCiHRwm8hygQbPaA5rVn/+kcMQ9K6KHov/A==
X-Received: by 2002:a63:9d07:: with SMTP id i7mr10842513pgd.344.1575744644350; 
 Sat, 07 Dec 2019 10:50:44 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c8sm21843458pfj.106.2019.12.07.10.50.42
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 10:50:43 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 10:50:41 -0800
Message-Id: <20191207185041.8861-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_105045_993836_006F8D70 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv4] uci: Fix Wformat-nonliteral warning
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
 v4: Use a proper named define
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
index a9e70e8..2e46456 100644
--- a/libuci.c
+++ b/libuci.c
@@ -40,6 +40,12 @@ static const char *uci_errstr[] = {
 #include "uci_internal.h"
 #include "list.c"
 
+#define UCI_ERR_FORMAT \
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
+		err = asprintf(dest, UCI_ERR_FORMAT,
 			(prefix ? prefix : ""), (prefix ? ": " : ""),
 			(ctx && ctx->func ? ctx->func : ""), (ctx && ctx->func ? ": " : ""),
 			uci_errstr[err],
@@ -178,7 +179,7 @@ uci_get_errorstr(struct uci_context *ctx, char **dest, const char *prefix)
 			*dest = NULL;
 	} else {
 		strcat(error_info, "\n");
-		fprintf(stderr, format,
+		fprintf(stderr, UCI_ERR_FORMAT,
 			(prefix ? prefix : ""), (prefix ? ": " : ""),
 			(ctx && ctx->func ? ctx->func : ""), (ctx && ctx->func ? ": " : ""),
 			uci_errstr[err],
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
