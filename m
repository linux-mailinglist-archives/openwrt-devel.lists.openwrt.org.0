Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0015DE46F
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 08:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abZa8+XJUfQnUeMNtMZUnK9Ey5TdVWbvObp/ciU03EY=; b=iJxYL7lcKRgb/u
	pkhuifZfoAph1LcxMI2+fTJArM1els3JPdztPMHRs1ZyhyTI3dXzrAOa0mTqbOPUcAhlcdZ5ZYDTe
	aeEe6b4YxlnZI7mqnYB5cKWEHg5dBKfQnHrx/07+BqPhN6Ndp7Vc2/qTaerX72y5DE3WBj/HUA5by
	NaNlpcz7d4cl19qt+BYGfYUPAd3QTbR+jDnR4JcuTiFvm9jZEOpMurR7TUeZjUt0bRt5WEZ9BnA9r
	RPEsIIEeqI+jNISpX/j76EjMqA6jqdkrtoxyoCWaaXEYJrxsGt+s+3P6N/HXTo6UUhUWoki46sTVD
	I0T/wmixzJ2d6rSbSEyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR3S-0003Bo-5z; Mon, 21 Oct 2019 06:20:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR2z-0001lh-TJ
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 06:20:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id 15so1760204pgt.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 23:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dewVCS/7JBbxKksE2Vov+3TUCQAWtJOnNFVCaWe2Me0=;
 b=CVrUlbu9MH8o9yMxbkGAFvf8QzZNGLuQmPpopSDhKVHRNOFzgajoac2lpyk0j1HsQY
 GYUXGnDpwNEzahdW3OIGQ0pWO5qSYjeLw1O6rb+W+IDi1Kz47+twUreWADNNayKT/Uz0
 jHknUWWtJwKI5zPwzZglMUQqfCGl4NtyY80HBfg1sFf4tdQrffMRJ+HF+4ecybNAyFp7
 qaXABiY9tatSoqMJeXGV/qU5cNQ7UlHBsLv1MM1TCZF3L1LMncDUya0tS2etyf8Ua74l
 YfNcntcu2ZX4mSDXqYkgCJhq6RK8jO5jpizQujNZVaVF/GFHnGJ2vXbceAFZy5sH3ImM
 oWaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dewVCS/7JBbxKksE2Vov+3TUCQAWtJOnNFVCaWe2Me0=;
 b=qUNS9w54KDH5YcIU84Qk9a94hetQY9/hrIFG1zt0flj4quJijtmstG110bZIT/j/ds
 HrT1iwJsRAF5gCRQbWedi83pULpOlwON9wWaCyf+oYE7IhAGJ7ygKnJE9jwphOczFyOn
 QT9WcaWY1goJHEJps4iPv03PZjPzBGO92+Hr7UBOqYRNcFvuHr2SEhveWKn4F7SzSrFR
 FrCEDcyAXZu4fjWi6BzYep1xUmS9jgsA6CxJ+SVc1vui+xLQT4s7i2EbGwL88lwyIWGT
 Do0NMSdjbilFzZXgAJXhZC9os9vuqL0FeRFyxSCqIt8Js4i6m2EBFp+so3Cy1aDWhEUk
 rRaQ==
X-Gm-Message-State: APjAAAWsnn8KBIInc0bd2Rl9yTTUBTPAxUSglGjM/Yq2gLIt51UgSMeH
 dG73aZTyTeeNw0EDyRt6hBsDz1AJPlI=
X-Google-Smtp-Source: APXvYqysuZU/zGV0M83+qcYZDTtWU276rZSykEEaPjFpRNdYRfj/iHJAureABuYNbwgUxD1O+0CzJw==
X-Received: by 2002:a17:90a:de02:: with SMTP id
 m2mr26757185pjv.21.1571638803255; 
 Sun, 20 Oct 2019 23:20:03 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id b22sm13524784pfo.85.2019.10.20.23.20.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 23:20:02 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Mon, 21 Oct 2019 06:10:27 +0000
Message-Id: <20191021061031.81230-3-yszhou4tech@gmail.com>
In-Reply-To: <20191021061031.81230-1-yszhou4tech@gmail.com>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_232006_133247_0288F395 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Subject: [OpenWrt-Devel] [PATCH rpcd v2 2/6] exec: properly free memory on
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, ynezz@true.cz,
 openwrt-devel@lists.openwrt.org
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
