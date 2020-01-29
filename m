Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8C014C9E8
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 12:51:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TbaHtztQtxSAkw053/zWlfSPq+HY69MoogpKGtZusIo=; b=EqKPRVC+VRhDez
	6Zu7XOwMjWFKQ77Xr3l1kODcKcmB/8u4maopIM58k3AWh8NHNaiQkR8GA2mcHz00QzWLAJMFnUYA5
	7O0LquJsPQXVpUt0O7RCUDovP8tRo7Y46/khu/O349rwaugzklVaWqHAdNhJm8Sp55N1+n/In6dSD
	q0jXLPe69mXeX0hDE7qP98XviXrjFqTIP9kfHwlTdjGMbXaxzPsiSKyQmmi/XAkXHQRTBfpVG/755
	ddfdebehLwcTeqnrab6t4+xZrRzHIr+chjWA5b5POH/NUV4BImJc/4/wI/GZN8KQIJ+siw8lhhPcf
	xx0puyM8OxXrz73R/IbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwls0-0000Zj-A2; Wed, 29 Jan 2020 11:50:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwlrs-0000ZQ-Ap
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 11:50:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so19831245wrw.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 03:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gJ/nRSrRuGJlbg4O1LWCHcr/tI0xUypKg49I0gPsxmQ=;
 b=ImAEB6j5mZiuCtHhbe7oV8gdPvKlRQuIzsPncM5z62QW1mYDRfHkij1elgfYH/SoQT
 2iKYhX+Yy1+5YYw8Bn2JoX/VMUCDaSWvgEkSRh1C0iRrDSBkXrFqgs3Xs22gLLO+TII7
 YdnFHrG3p37XpWB4EBNNszPB64IjHsiZOI7mSVXxJxH/occNZAY0tiY2OrAZRPMTZts4
 zJSPxqBOUn47WnpAcGUnNb8kHjs+7r0r2I8wUbrNiR4JwylA/YUWsg4X6ZRs9pQ1kK97
 3In387Gklp9amWgUOWmxaJzLpQtcFu1wHH4QKbfkPgFtpviDRJoW/+/ZCzEhlo4UCfNN
 WQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gJ/nRSrRuGJlbg4O1LWCHcr/tI0xUypKg49I0gPsxmQ=;
 b=kBEWM/9Af4QtEx3GylrE66w9CLSjSagInJ7WT9nLIfncgsXhgKRn1BI9Q3ZjBiGPF9
 6vWGBzgu6aTesR6+jkRLoCgTYwlYHvMTxxCcoxz0YQV3FnDe/TyanyK/OOitO/j26Klk
 NvtEqxqQ6wvwk6Tv9G90wvVSqXJ1iPwZU3MYSkGAEC79GV1GA6JU02Pj0Qzd1OEB5pGG
 93ebPWFLPcc0K4W04r8HsA710TCi9vmMKkvFPe4yJWdrF4gC6Hav/oY2/RrSc3lY0tIR
 I5H+bwuknyFdj2+q6pdJVGNHc8W2kgk7bv1DBb/TJQA0aZpN2NHCUSHhM33vwSQlvAJo
 TYAQ==
X-Gm-Message-State: APjAAAWE5KGvfSBfo3+ZjT6clPYZq2YStQOspUlOeA6TPEoRk20Mh/vo
 23XBNKfP6Ty8nulz2SEi0+BB8iA=
X-Google-Smtp-Source: APXvYqyLvEXB/GmJwDB+fszh0Jf88SR52/PcTbLZjSli8vyeW2OevYE/J/Csr9y3DDPvwtoljfy0EQ==
X-Received: by 2002:adf:f850:: with SMTP id d16mr34315382wrq.161.1580298645882; 
 Wed, 29 Jan 2020 03:50:45 -0800 (PST)
Received: from presler.lan (a109-49-10-77.cpe.netcabo.pt. [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id b16sm2621353wrj.23.2020.01.29.03.50.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 03:50:45 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Jan 2020 11:50:33 +0000
Message-Id: <20200129115033.22430-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_035048_398972_1CD0C76A 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] firewall3: utils: create a common helper to
 find strings is files.
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

Both fw3_has_table and fw3_has_target do the same thing. Factor out the
common code into a separate function.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 utils.c | 42 ++++++++++++++----------------------------
 1 file changed, 14 insertions(+), 28 deletions(-)

diff --git a/utils.c b/utils.c
index da65632..228d63f 100644
--- a/utils.c
+++ b/utils.c
@@ -316,23 +316,19 @@ fw3_command_close(void)
 	pipe_pid = -1;
 }
 
-bool
-fw3_has_table(bool ipv6, const char *table)
+static bool
+file_contains(const char *path, const char* str)
 {
 	FILE *f;
-
 	char line[12];
 	bool seen = false;
 
-	const char *path = ipv6
-		? "/proc/net/ip6_tables_names" : "/proc/net/ip_tables_names";
-
-	if (!(f = fopen(path, "r")))
+	if(!(f = fopen(path, "r")))
 		return false;
 
-	while (fgets(line, sizeof(line), f))
+	while(fgets(line, sizeof(line), f))
 	{
-		if (!strncmp(line, table, strlen(table)))
+		if (!strcmp(line, str))
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
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
