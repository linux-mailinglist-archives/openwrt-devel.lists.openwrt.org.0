Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D6C1095C9
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:48:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UM6z9ObpQw5fuVHatTruZNBWc6w7MjxZMhr9hQOHUYY=; b=Sl8/uChUTEKkh2pCpTk9lmMVB6
	U1JfZxkCbSz55jCMrhPdHzNNumosw4e7+TQHDJlbpcMExeAzMWjsuhfbpQ9UkQEiuGSvf4dQ9yRPQ
	mplyMutfYbF1Nq19/Vl4qN2raUL7viub0zWTe3amLy1yeJAM2QzizhlUluH4uLLufBYQdBADLkd/4
	D7+0vpMqr5RTJcxn5Yc1wraojQsZJL49gykyd3jWWuTySw/p+pGCDoiSLb8cs5Kwqhj8xlks2gq5w
	aL8CGlAepVvxePJ0fsN9RR2Rm70AjD5qtBux1QrhV2/vM3wj910AZoF75zMPHoZhbl3aOh7dGVdPQ
	j9fs71UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN9l-0002IC-4p; Mon, 25 Nov 2019 22:48:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6f-0006H5-6y
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:22 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a16so7280527pjs.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=EQF27iEFb1mWbjySpiPt9ZTKNezjYALInuk45jkZUEY=;
 b=NgvC5RLtcL9YuQuGePVNQ564S3pxQI5qP2xNLBTLAkF+wpq6uozZh+0knX6yOhuQ0p
 sEF07s94h+TldQmv6zeb/6yB6ZheqCuDKP3om46L6l5uSO5BDOWZWRMsXjtQzlZpWC35
 vh5YzxOiitH2gtUR9kGNml4Ew86mzOhXdVTscW/jtwsl8aQyMCW2fT+xkls//6Xf+8h+
 6ulZTn1ag6trHLr3KSCFhRyCW2xt8kF/dYeORBVilSxJNwMy7nw5hvogVNsqdtgZnW23
 WFl4c9VUw9vZBXTnV5ZRIPmbmy41b/fmL9SjQ2i+HmvZW5fdHz2aNsxNpGT8y5tu8k7P
 1cdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EQF27iEFb1mWbjySpiPt9ZTKNezjYALInuk45jkZUEY=;
 b=aLR5r8118SFfzOXKFCu3YRn20WAam8apRLnTG3UddIqBvTmX5iP+AiCAEsUN8r9e/e
 PVvVEiW0oPeBydU1smka4Jhr2GAQuvn03FdvilV62SwN0u3ILkqbMF+dNqKr63PvEjYl
 k1x96A+8KqDov45vxiOubSJy3fWUCD4KOgLXNMcwGbWJAAH7fJNDtV3gTCVet7aTo/Jd
 PuCKjQovNch/KaMMB7giofO1Vg4UE67YjjYO2zOlFwZiTDqj7F1RF+ZSX/tt5lPdiUv5
 QD0Kr7IUTdprTq355OAql7rGz+Zzv8I1tkCsl0cSP1dYze0EbJnZ5Oh/cg1wMsNcVZ8e
 JSyg==
X-Gm-Message-State: APjAAAXdi+iBdLUsB5Jc8RESRneMioUMkj38eqgzrOZLlXBNqT4k8+Wu
 tWGfmMFkPB+W3arKhZfeO6lcBiiurnY=
X-Google-Smtp-Source: APXvYqyBXGJMGR8quk6msEw2mwk1ota+G+pB3CmB91Slm4ERtCM+0nexplSb5d0TAso9Exkxqckbfw==
X-Received: by 2002:a17:90a:1a8a:: with SMTP id
 p10mr1954004pjp.6.1574721919057; 
 Mon, 25 Nov 2019 14:45:19 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.18
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:18 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:45:01 -0800
Message-Id: <20191125224502.266177-16-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144521_318256_8A2B8F45 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 16/17] gen_axs10x_sdcard_img.sh: Switch to
 /bin/sh
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

Nothing here needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/arc770/image/gen_axs10x_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/arc770/image/gen_axs10x_sdcard_img.sh b/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
index 3cbd2caceb..87c2bba92c 100755
--- a/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
+++ b/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 #
 # Copyright (C) 2016 OpenWrt.org
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
