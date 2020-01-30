Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B66B14DC58
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 14:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rLP0DgRtpKh+e5JJ9mMVDXPzsIdRg+LL4HWFAv5oUlM=; b=O4t6iqMvlY+KxO
	TVJMVvsGjdVfX4SPvyl9mI6pelPCrW9EPzyBiA2+opyA965uI+Z6yco1s+I3N/E9IX9WeyfKtjyvf
	T40Mk1ExM204lbFQ5PmXaoQmvNW4VGtJ1cnFNu5xlJSn5iFPvYVqhXdXvEaz1Q7irUrpdnrqiZm7H
	X/9qcX+SaB81P7M+y/vEgqetpkMq2lVuSJ+ARzTgzj1mv1Ko0/Ulg73yXN1caaazuPFcoFAVGcn5q
	XstLwTLm5HqKMYV9PvHbGpiCJDShC0EHALTAimP5d6ESNvez2w1eMCNuUP9RtnYHjoElWWm2bG1RE
	iOZFxIm02tfrcUtZxDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixAHP-0003VQ-3m; Thu, 30 Jan 2020 13:54:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixAHK-0003Us-2n
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 13:54:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id a6so4083623wrx.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Jan 2020 05:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qek94nOlZkZszzyzX66hOKH04YdNFdYSvP1pe4X/pY8=;
 b=KPwQ8+6ngmI7+d9GTz69kThMg0uHS9WV/NYtza7LxS0iQaa73sXLxS5s0U571TZ2PZ
 waXsh9gG8SKeTOTfj6tesen3VyYeEIlpXetS3OzLXoCQ5H7srbJjn4SLdFli+tqnQ2YK
 EDcc1ZafhsLTH1Znc5Cr9lZkgTPVtjUKsJ8wBRJ9mxhwQ0/GQNBLFcaxxAkw3xYjTRY4
 wm4pv2q76KPHHO9wkTlhHIzVPqxSSlutYP1bPtBSgcYVMUWdZEONHu/+rupQh/V1gYsF
 IyqJJ/5ebYIuyqv8q6UGcvr+17jle1rBC0QUTUCL/UrMSurgvMHuBAx7N4sAbiEq8NeI
 nXSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qek94nOlZkZszzyzX66hOKH04YdNFdYSvP1pe4X/pY8=;
 b=mLeELfucwn+dsVJ8BSxH06sL829A2L4y8i4B9H2Rl1m14RUnCqL5+Yn/0VjlWp257k
 XUwQ85Din6odRuYPaAFCDIg7wnCUvT/0cce+YUAYNbHGv5MCqa1FXDWkKC6dPS1IR2WF
 jjTr65un+wyrcfTS6DjcGVvatd0gO/0ppcJHc1mcGP4s7E7q51IlSUNwqONxGSNgFyDT
 S4lfnq7neo3jJQMfn2/xcMqtIbl0r4RiU++4vEvTzvzTS7NvYM++ZpQO3Uw+sqcJE6D2
 WjAxVbxfO4xxt+pZDbqIlT76pwdobDABUpAbAQ8ZsL5fZrwyoV5nwdwHsLa6nrd0KIi8
 ViPg==
X-Gm-Message-State: APjAAAXjeU+aLx4ct3+yzj/5auyp5w3q40MI6K/AiDJlx2bTC3kdEF9S
 rIZScll5U+9rIOkATx3FaxGrXvs=
X-Google-Smtp-Source: APXvYqwcxEmvaX28/W3k/BUdLGw2Ua9OcPbt1fp1h68DvGy2f2LPLMfsLf0/QH1mwWngvFxEpEJGbA==
X-Received: by 2002:a5d:4984:: with SMTP id r4mr5619577wrq.137.1580392479699; 
 Thu, 30 Jan 2020 05:54:39 -0800 (PST)
Received: from localhost.localdomain (a109-49-10-77.cpe.netcabo.pt.
 [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id i16sm6945793wmb.36.2020.01.30.05.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 05:54:39 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 30 Jan 2020 13:54:22 +0000
Message-Id: <20200130135422.15939-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_055442_127238_93419704 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2] firewall3: utils: create a common helper
 to find strings in files
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
Cc: Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

v2: Actually make it work. Use strncmp instead of strcmp (strangely
enough, strcmp fails for the ip*names case, but I don't understand why).

Both fw3_has_table and fw3_has_target do the same thing. Factor out the
common code into a separate function.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 utils.c | 38 ++++++++++++--------------------------
 utils.h |  7 ++++++-
 2 files changed, 18 insertions(+), 27 deletions(-)

diff --git a/utils.c b/utils.c
index da65632..6289ec9 100644
--- a/utils.c
+++ b/utils.c
@@ -316,23 +316,19 @@ fw3_command_close(void)
 	pipe_pid = -1;
 }
 
-bool
-fw3_has_table(bool ipv6, const char *table)
+static bool
+file_contains(const char *path, const char *str)
 {
 	FILE *f;
-
 	char line[12];
 	bool seen = false;
 
-	const char *path = ipv6
-		? "/proc/net/ip6_tables_names" : "/proc/net/ip_tables_names";
-
 	if (!(f = fopen(path, "r")))
 		return false;
 
 	while (fgets(line, sizeof(line), f))
 	{
-		if (!strncmp(line, table, strlen(table)))
+		if (!strncmp(line, str, MIN(sizeof(line), strlen(str))))
 		{
 			seen = true;
 			break;
@@ -345,31 +341,21 @@ fw3_has_table(bool ipv6, const char *table)
 }
 
 bool
-fw3_has_target(const bool ipv6, const char *target)
+fw3_has_table(const bool ipv6, const char *table)
 {
-	FILE *f;
+	const char *path = ipv6
+		? "/proc/net/ip6_tables_names" : "/proc/net/ip_tables_names";
 
-	char line[12];
-	bool seen = false;
+	return file_contains(path, table);
+}
 
+bool
+fw3_has_target(const bool ipv6, const char *target)
+{
 	const char *path = ipv6
 		? "/proc/net/ip6_tables_targets" : "/proc/net/ip_tables_targets";
 
-	if (!(f = fopen(path, "r")))
-		return false;
-
-	while (fgets(line, sizeof(line), f))
-	{
-		if (!strcmp(line, target))
-		{
-			seen = true;
-			break;
-		}
-	}
-
-	fclose(f);
-
-	return seen;
+	return file_contains(path, target);
 }
 
 bool
diff --git a/utils.h b/utils.h
index 254bea4..ff58cc6 100644
--- a/utils.h
+++ b/utils.h
@@ -55,6 +55,11 @@ void error(const char *format, ...)
 void info(const char *format, ...)
 	__attribute__ ((format (printf, 1, 2)));
 
+#define MIN(x, y) ({		\
+	typeof(x) _x = (x);	\
+	typeof(y) _y = (y);	\
+	(void) (&_x == &_y);	\
+	_x < _y ? _x : _y; })
 
 #define warn_section(t, r, e, fmt, ...)					\
 	do {									\
@@ -103,7 +108,7 @@ void fw3_command_close(void);
 void fw3_pr(const char *fmt, ...)
 	__attribute__ ((format (printf, 1, 2)));
 
-bool fw3_has_table(bool ipv6, const char *table);
+bool fw3_has_table(const bool ipv6, const char *table);
 
 bool fw3_has_target(const bool ipv6, const char *target);
 
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
