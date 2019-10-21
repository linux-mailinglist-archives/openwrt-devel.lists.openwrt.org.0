Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24200DECF2
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKrItd23Wsl85FwGdc7DlMCKPRTIH/VWpQFD4cYssrg=; b=pD7s+a80HDY5EK
	xFbn4X609D6kWM4xVyaO6ikTZKn2G7RI5A6k7WP69O8R9Fwrq40RDpxExNjTPUISVUGt2hn+KWooK
	E3qfap7ZUSN58NiZg6GB+LbG0A49FXfRbTZXC7bf1+us4UHcs3J9ZBVxrJbdd0dmtDGJ2hFDLHjP/
	/zqzXYIswD8r/Ttgvvj73AgINap9BmZwDAW8FfbfGuGHUYEV9+cqMBcvOJYasc/2fe3YwocPoCWlM
	VvacRt9pLArClPtXdxgGE/yONxSu0KZpHkAQI1yS3NK1iR5Mj9QAnvsmNYmlotLhAK/hXanGRJaiQ
	CoCecFwotwz8V5VKSoBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXHu-0003Bj-4W; Mon, 21 Oct 2019 12:59:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXHi-0003B0-Gf
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:59:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id p1so7790709pgi.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 05:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q9hdKeZbSFvbKqGiUnL/KlVn+J1eBFMLqvPvJIrTN9I=;
 b=GhPt+99kkK30jjTpJGInn3P1gg42eZOa8l+6+uxLJVfnTUkDrWGLV0kpoLcULIpr8g
 iPDARMmAX4zdb2f+0gzR2z5TIllsPxxXmDcHf7Ib6T2TX6/me0XHIMVxvAnDOB/3kdCI
 MnFp+5aYXLQsrJrOqrL0iflOSp3bb+Wve/a/flDkho0IBgHBgltLFoe527jyZLkleCQH
 u0qGN37qg4cz98C6UqyLXpzjpqiS2Wbi2fqZYkAzInKuVKvyEZcYw0Vov5N0ftF+ud+B
 0/dR7pvyclna73ms49mOpMXi5p9XoqcxpnkdPSiy9ICYkmWOwcXcKB5ywC8QSKGx35t2
 ZKKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q9hdKeZbSFvbKqGiUnL/KlVn+J1eBFMLqvPvJIrTN9I=;
 b=bVHdX6gCk3GHO0dvo6YBiMMqkQt32fo+SqLC/poN5FEKoGbE2NH8rS0WzKsRsvzWja
 TMb2VjozREMzeqTFsyB6G1ahkbrYSVYGO2pT2sfQuV+YiVMW0YzbOgmjctNxB1Mw2f4Z
 wiVYz+c2vDooD3hU/GFdRIUylj6+5o5deQ9uD+0jBEIHsF8KtY7qfHM3sMPD/CXgxPyM
 kP+puqx3LAeUjDl3kW2GnhguUhHm8sMitdz212mJ6ws34fOSROyx9iSl9w0Xr8mjdiYU
 A+eKZ1pHDj7dCTho3RLDNhhLDquSUCOmwcBuUHImqFPegrQb9MwdmPhQPdtpMVDelKM1
 LBHw==
X-Gm-Message-State: APjAAAXfs4S4Ut8oG8icRsNwVbVnwzoUyVKm9vOWTKatATMfKcKiAbdy
 uf8kxM3UuQzmnjB+2bnUA0c=
X-Google-Smtp-Source: APXvYqw5fAu5aAd2OhqUWkZ19+Ps5wkOqJUjdkkzaDkNTW9AHZv6o+GyE2ptfSfNLs2V7RfZjJCmhg==
X-Received: by 2002:a17:90a:c382:: with SMTP id
 h2mr27791806pjt.110.1571662781409; 
 Mon, 21 Oct 2019 05:59:41 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id 20sm15880813pfp.153.2019.10.21.05.59.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 05:59:40 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Mon, 21 Oct 2019 12:59:23 +0000
Message-Id: <20191021125924.37223-1-yszhou4tech@gmail.com>
In-Reply-To: <20191021061031.81230-1-yszhou4tech@gmail.com>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_055942_571225_D939B56D 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Subject: [OpenWrt-Devel] [PATCH rpcd v2 5/6] file: exec: properly free
 memory on error
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
 file.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/file.c b/file.c
index b1adcb7..47fcd9a 100644
--- a/file.c
+++ b/file.c
@@ -823,13 +823,15 @@ rpc_file_exec_run(const char *cmd, const struct blob_attr *sid,
 	if (!c)
 		return UBUS_STATUS_UNKNOWN_ERROR;
 
-	if (pipe(opipe) || pipe(epipe))
-		return rpc_errno_status();
+	if (pipe(opipe))
+		goto fail_opipe;
+	if (pipe(epipe))
+		goto fail_epipe;
 
 	switch ((pid = fork()))
 	{
 	case -1:
-		return rpc_errno_status();
+		goto fail_fork;
 
 	case 0:
 		uloop_done();
@@ -921,6 +923,16 @@ rpc_file_exec_run(const char *cmd, const struct blob_attr *sid,
 	}
 
 	return UBUS_STATUS_OK;
+
+fail_fork:
+	close(epipe[0]);
+	close(epipe[1]);
+fail_epipe:
+	close(opipe[0]);
+	close(opipe[1]);
+fail_opipe:
+	free(c);
+	return rpc_errno_status();
 }
 
 static int

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
