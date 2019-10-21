Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAC1DECF4
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 15:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHNqpEqj7ZB8nUMIYX7uE3bmlVaAIz9KNGJPsb5N9DE=; b=VXfN620dsODeqj
	mG5mZj5I0xLwh0eS1KqSYF6K6RGyE1Vfg7GYP8csyusf2FsDOB8Z5owdDfiHxcn7wHrfMrm9DX/5r
	8UQ+pgDcMtWmg1exFOmHyImcJ0Qb3ZQPbooaxEhwxWNNIlqnJD1l7Tl6j7ASgQSdp/pQ6QfEwdGE4
	GJ5vetz6812zk7N6nJAMAa7NeV+XX12js104bytpScSjsUsT16QiTAHtQpLezomkGNV/S3wBGv4fc
	d8Bj58gwRUOFdC4ooBoH64e6u89zYu9+g/y05OrQeDW+jxK/PCu2b1YGrWYwzbytEj/EjU+eZBYpv
	NY90mwIC2SCjAReP9isg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXIF-0003oe-Oa; Mon, 21 Oct 2019 13:00:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXI0-0003RI-U3
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 13:00:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id a2so8390549pfo.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 06:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W6hg5DzKfbUUZ45XfZCgQZ7FjvjJEZSIJo0bMLSzhyU=;
 b=PZAaaZPHE6ZiJMksn9Jh45IWnb30m3NgGdC4W1lb+u/gPWLdEWkPA1zTnrA9YKyPi7
 KFsSQPc/T+hcmTjMyRrLpijFbPtLnkjpn9VLHcqN8D2jw6QmimxDheajM8lp6wWieeNq
 uYFqGJkiww1CjnD2k9O9HKqd1FkkRdZA/UrtAym3VsfNeBRda+RIwrrB+tiWBmGXP2D5
 9M5lHDAZq4iZvWiBHEBTw5EeFjLxWojRzkb7kNBR21KkNIN3QYcnd58jl6Za3UfY0Z8U
 GaAWCgiPEwOMfgJgXE5JaFmuHZ1hc3eyKDD8lhn6L5J8tKiuQYH/HXIjeUitnERNaGta
 gF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W6hg5DzKfbUUZ45XfZCgQZ7FjvjJEZSIJo0bMLSzhyU=;
 b=RSc4e3LEzvCi4DeUh/nlOELwxXZ477cmZp4x1DZZgyKTddTzp4Omwqh4czEXtGs/6j
 N3SLyJuMNWNZIgVp6UxkeR74l15OM3jRmtqEg19Ya9cYRSS2t62t8vlHDjhHk15FKpOn
 XJgq5gVzoex3lGOxnbjcBZ0PTT05LxTNvwmEoe+F8WdME5C3g2IS9JSwUyNBqwT1ZY3l
 pCullN2tacaocoEHHOW5jUEmj87VforKsCQAvziokt/ZxvHXVbsgWAKRJI3zdYT+9NyU
 oXGL8SE5o2F3PacR8AGTFNuvjzky7JGMAEGB2NG2nZv6GIEzVukCgEPhe4qNvptrBFql
 yYTQ==
X-Gm-Message-State: APjAAAXhWevmx/0gzs033c6NUl0vcZIyYzSEi4OouvgtApVHpDtUbDqL
 8szaGkSMx35Dnlpcoh8B+YE=
X-Google-Smtp-Source: APXvYqz2kqN6a1BfQt82ZKnEC5aHS2Vg9YUwDQeinkKKcRkcDHbAkp1cKQHppstvKXASEcDUQgsSEA==
X-Received: by 2002:a17:90a:fc82:: with SMTP id
 ci2mr28088790pjb.13.1571662799605; 
 Mon, 21 Oct 2019 05:59:59 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id 20sm15880813pfp.153.2019.10.21.05.59.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 05:59:58 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Mon, 21 Oct 2019 12:59:24 +0000
Message-Id: <20191021125924.37223-2-yszhou4tech@gmail.com>
In-Reply-To: <20191021061031.81230-1-yszhou4tech@gmail.com>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_060000_974596_2D814C89 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH rpcd v2 6/6] main: exec_self: make clang
 analyzer happy
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, ynezz@true.cz,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/main.c b/main.c
index 1db3241..12cb4c5 100644
--- a/main.c
+++ b/main.c
@@ -47,12 +47,16 @@ static void
 exec_self(int argc, char **argv)
 {
 	int i;
-	const char *cmd = rpc_exec_lookup(argv[0]);
-	char **args = calloc(argc + 1, sizeof(char *));
+	const char *cmd;
+	char **args;
 
-	if (!cmd || !args)
+	cmd = rpc_exec_lookup(argv[0]);
+	if (!cmd)
 		return;
 
+	args = calloc(argc + 1, sizeof(char *));
+	if (!args)
+		return;
 	for (i = 0; i < argc; i++)
 		args[i] = argv[i];
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
