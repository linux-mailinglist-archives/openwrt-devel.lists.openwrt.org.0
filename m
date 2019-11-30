Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C72110DF64
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 22:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wIKDzaKRTpJy+zIfuwnwyFAt8NgANL1fNMlBOP4xzF0=; b=ZGyEFiOA46D8+4
	tQtlbjbCpdcXSFQa/QmyPRGNSWROEP51tG7eVtySNICO9wvDDU+HcxvZmDd7jBUA6cydAeDh77urq
	GmEQ9VpsBoD6kQOGM/kqrpO/JBkcTck4bGLNiSOcsQQocSsDmpnwyJSUQahFiOF2tlxq9En2S20AL
	UvDIF1Tc54KBPohBleTwEdILNfUtO8utE45JI8ue+3lWAIiLYPM08eWjTr5+gh9j71KDz6cqMiE6/
	FQix+qF/zLy9zgnJsWeIRBYrdRZIRVVXK07b8DQSVn0C+L40VUeRd1ygKQUuGAOdmuVpxzJweP0g5
	pW8AzdUVqyFNds6/LHKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibAFF-0003nt-7A; Sat, 30 Nov 2019 21:25:37 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibAF7-0003nO-E9
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 21:25:30 +0000
Received: by mail-pg1-x530.google.com with SMTP id e6so16134696pgi.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 Nov 2019 13:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3wxrbrDzmJ/nHgcjVrRTYUrQyVEGprywzyrRlqjp8cE=;
 b=T6RXUIsoals4C5T+vpwi5QWyGL//sxt5opmWS0Of+DQoIQSt7xjF7JmdXtJ0VZOcTv
 lsySC73TTGz2TRmPLUW+9RowiKbGvIUTes15tzLNoE3B9pC0JSof0cOSiQ/kMuQ/nPT9
 Zg4tR9YP+k4/PLoIjImylw48Y2jh0UwJWQ2RUkWQvCNiNFwDZR35wBuZlnw/reSvtJq4
 UI8Fu2i0KFLWOqqrnwirYcXSghBML+Gm83IB+k6RCk9qYajyuHjCtPU63/GP8p15Gwe1
 ox6bFsLlmUBKX71pW7++fjC9mccAPgzoeGultc6hmIBK76JtKUaLDpNe5CVX7Fje0d8B
 ptCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3wxrbrDzmJ/nHgcjVrRTYUrQyVEGprywzyrRlqjp8cE=;
 b=lt87yVZ5C1hhend/59x7n0wJUYylqLuVR3Sx9U5joGkrcCHCPloZ/haUhA6DoJ+Wjf
 YgEMjXpfVobtFGrT7Vc7Lk2eRB5kNaWObcsM9+s89/cyG9ThB2Yknuc4jCqsM6ax8o4l
 XNnIou5D4lMbizBN71lUB7rCRV3Vc/M5DFX+Sn+afv6AK6x6dUUBdbSFN+DjYjgykiVS
 LY3ciqC1x/ahdsC20PL6Wb5iV6EYJe4y+bGOIt1aGrEfdAIYIKrBmD//KTTY/A5HA9+W
 pQr18x7GObfoz/H/Lp9U64bJ441GNmtXKyh9DSPL+tCtEZjj94cjYQiJfaTRZ2uDBrxg
 txpQ==
X-Gm-Message-State: APjAAAWn8Y6qDmCXgAV0GekLfXvg3GafqGrh6w8KSsDHpQAE4frsW7CS
 +n6+nxKzYi/OrfBBWS+r/P/Rlo7rLX4=
X-Google-Smtp-Source: APXvYqxCjncEjn+4Kp4viXMAnkCMhWwQ/UadAfGzyyCc1ySo+BNcQg8UBoe8D6/f7OiHqi/6DdO7Mg==
X-Received: by 2002:a62:34c2:: with SMTP id
 b185mr64286090pfa.215.1575149127438; 
 Sat, 30 Nov 2019 13:25:27 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id i127sm15275794pfe.54.2019.11.30.13.25.26
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 13:25:26 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 30 Nov 2019 13:25:25 -0800
Message-Id: <20191130212525.12464-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_132529_499702_86DF6558 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv2] uci: Fix Wformat-nonliteral warning
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
 v2: Fixed extra warning from clang 10.
 cli.c    |  1 +
 libuci.c | 10 +++++-----
 2 files changed, 6 insertions(+), 5 deletions(-)

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
index a9e70e8..96da49b 100644
--- a/libuci.c
+++ b/libuci.c
@@ -142,11 +142,11 @@ uci_get_errorstr(struct uci_context *ctx, char **dest, const char *prefix)
 {
 	static char error_info[128];
 	int err;
-	const char *format =
-		"%s%s" /* prefix */
-		"%s%s" /* function */
-		"%s" /* error */
-		"%s"; /* details */
+#define	format \
+		"%s%s" /* prefix */ \
+		"%s%s" /* function */ \
+		"%s" /* error */ \
+		"%s" /* details */
 
 	error_info[0] = 0;
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
