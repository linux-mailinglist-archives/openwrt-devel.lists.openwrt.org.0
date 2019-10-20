Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B13DDE45
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 13:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abZa8+XJUfQnUeMNtMZUnK9Ey5TdVWbvObp/ciU03EY=; b=aREtR0o0V3/ASo
	9MFWbEXjQOt/DA9lVuLUXHMW5dip+Es2TSIvSxO+xO1Hyci6KAY+9a4PsBb+5jDI66y5X31ciVWsv
	tGBUyPr77YCmIqmtBEzNJ0cCQgWIVWlG2JB6wv+OfZ6RznmmEfLaQBkyKShYLt4hLqyZu2IWdRou9
	1d8Jd9jATe0nS5TsbGwydi2tWB+82GTh1H4zinF3yNe8/72YekAzFTiXoACDuxqY2tVFOO4MgydWR
	Sm5htCYGPYHw06jK32+1DHbpwuDjE0emPq8/WEYvZRJtWIS382cGTUVbaMRLWDurwbhIYLZ07sFb/
	6GAWVYIqeFvWgPTsRYbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM9MS-00056C-LU; Sun, 20 Oct 2019 11:27:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM9M6-0004sm-S6
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 11:26:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id e15so5882846pgu.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 04:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dewVCS/7JBbxKksE2Vov+3TUCQAWtJOnNFVCaWe2Me0=;
 b=TAj2NMR9WoQCZqeQdDwDi3ZAkmKZSVuE+i6kKLm0MmVEW6WP4zi6WZe+/yCQOsCM5T
 QO7p2W00FJhIDAUssBS+TnbzyXIV3g5JY0PxGk9mqrWx7p39D/RBml7QahM+GkeMA7Zg
 YEtDMlt13FvKkj640kNuLlePR1Zswy3fHHFsHHmctkiPRl9O1tX6nL33MCv3PSz8Bnry
 sqc5gOSDBxws/Kn2q7pff59EudB7J0kYmHo26jT1DHqseYrRPvKxOY+lwDgyVN5yxipw
 l/dc0qngzUZlCyY/y5gYW8Z5AadmmxzcjqFgabNywLanOXfn2TRBJCUs1o55gh/5y/vB
 A9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dewVCS/7JBbxKksE2Vov+3TUCQAWtJOnNFVCaWe2Me0=;
 b=qJtJsySYmh3joKMKAiavuEerN0aByiw8YN9Oz3vIgbLG8giBzZb9B9C7BFYAMc5DXQ
 tggLlrmBmsnb0WnDcd1XzNXBpZ4CfXmfviMUcLiBUd/XRhtIkrkHKQ7a2SDTI0aTnY6N
 QHd6bKm1JQWVlDOoFhkpTlUnwafEeSnbIGMLcbkDHj5D1aA5mjkD87xQ4KyQLTQde6Cq
 9RH2ZSHXHxxNuB/Ml+w09xc1hNoeusxDhrpDn1P058akcsCgcEhqMEJljxOq1O1E1vca
 HmL/tgqHX4f6IGsbHmgYs0wKB1uBdAcOC5N3vk33xKEPQ+2OVP+ve5zkWMFAhu/U8u7f
 jWsA==
X-Gm-Message-State: APjAAAUbDJUB3Cni1SudZP5d+gCUd8w8u3UCR6e3G9N5+PfifLRWiApk
 8twE3HzhnzuRaSbl1ExG1DggoQ8Na4o=
X-Google-Smtp-Source: APXvYqxTwdtuEFvIBcmxDboHa9FKV7eh1fkEPp9Wn9LPJqVbegIsV8idBWPas7u2atuxPAFrOA0RJA==
X-Received: by 2002:a63:1e1f:: with SMTP id e31mr6310773pge.303.1571570798137; 
 Sun, 20 Oct 2019 04:26:38 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id q42sm13008983pja.16.2019.10.20.04.26.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 04:26:37 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Sun, 20 Oct 2019 11:26:06 +0000
Message-Id: <20191020112608.129703-2-yszhou4tech@gmail.com>
In-Reply-To: <20191020112608.129703-1-yszhou4tech@gmail.com>
References: <20191020112608.129703-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_042638_902583_E95B2B03 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH rpcd 2/4] exec: properly free memory on
 rpc_exec() error
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 exec.c   | 7 ++++++-
 plugin.c | 4 +++-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/exec.c b/exec.c
index eb52966..f490ad7 100644
--- a/exec.c
+++ b/exec.c
@@ -313,7 +313,7 @@ rpc_exec(const char **args, rpc_exec_write_cb_t in,
 	switch ((pid = fork()))
 	{
 	case -1:
-		return rpc_errno_status();
+		goto fail_fork;
 
 	case 0:
 		uloop_done();
@@ -372,6 +372,10 @@ rpc_exec(const char **args, rpc_exec_write_cb_t in,
 
 	return UBUS_STATUS_OK;
 
+fail_fork:
+	close(epipe[0]);
+	close(epipe[1]);
+
 fail_epipe:
 	close(opipe[0]);
 	close(opipe[1]);
@@ -381,5 +385,6 @@ fail_opipe:
 	close(ipipe[1]);
 
 fail_ipipe:
+	free(c);
 	return rpc_errno_status();
 }
diff --git a/plugin.c b/plugin.c
index d3526aa..ac8de6d 100644
--- a/plugin.c
+++ b/plugin.c
@@ -161,9 +161,11 @@ rpc_plugin_call(struct ubus_context *ctx, struct ubus_object *obj,
 	c->argv[1] = "call";
 	c->argv[2] = c->method;
 
-	return rpc_exec(c->argv, rpc_plugin_call_stdin_cb,
+	rv = rpc_exec(c->argv, rpc_plugin_call_stdin_cb,
 	                rpc_plugin_call_stdout_cb, rpc_plugin_call_stderr_cb,
 	                rpc_plugin_call_finish_cb, c, ctx, req);
+	if (rv == UBUS_STATUS_OK)
+		return rv;
 
 fail:
 	if (c)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
