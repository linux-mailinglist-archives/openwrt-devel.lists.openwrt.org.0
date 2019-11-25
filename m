Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60951095BC
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qdhmBS5wYiMoTPPqxbII1gnxjcuq8DBjHLdh/fSW+Z8=; b=h/+0BMUr5ijcZ1jVsAwK911cjD
	rEoQnJIBksdO0fWfN7WAXjEmpAE2GAZ/X7+boYO6M25cdlxuwCoQ3MeeXnQMsQ30nELr6U8bF9rSx
	TuqZx/O9kAe4kyDUYuQgc0Qtax8iJYBj1IFHMfML5Fg1s45wquFuTatZFdDJfG8v6TQifQcPLhykX
	iFgq/1/50eixr1vGH/25oEfhtccox3UGm1+6QvrAtS0sbCyQhyIbSWVrgUri1G6ELKKHcoeFNRThw
	6V4sczSUM170ckIYE4bK1+iTivlu5960Zr1jTwhIXcu3usN6aswFrn2GwT/IdmZYJWyq5NCKDEWvs
	Xxgj4sAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN7r-0007cm-Ip; Mon, 25 Nov 2019 22:46:35 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6V-0005zj-GT
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:13 +0000
Received: by mail-pl1-x634.google.com with SMTP id q16so2982830plr.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XoxGPYMxekBJALE0e1iB+kg+KgmvxIsfLDvQZ1NMEVU=;
 b=QlIl2Rp5DLlYIqg0jwi14KKPjKn4tHDTwxJ9B1YdoDwI+CqwlAS+Yr2IroOQZ8YlPk
 fU2Y39qT1+b41IF2PSrWS3oEkQ/5BdxDk423t+GaamFbfJkk6XkWygF954OWzUP95Kyp
 dmAcuJUlA+bGyX0L5g4p/fI9EeVvP2TSA2tBZ9WwfECOjf63Qf/vKVLfmPTIrxuiX2oq
 fsLsFICKRTQ9mmWBI8vAwKy59cWJ3Ox0Fij2Z18iQ64ZecN7NWR8iZ15PTDY2AkT9nFO
 1wMl6QjkUMliR0nQ7IC1rV6bzxV3b/vyLoK8GIOqVWJgDFEF23BnSjQMaT7DkC+3yG2J
 Kpug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XoxGPYMxekBJALE0e1iB+kg+KgmvxIsfLDvQZ1NMEVU=;
 b=cdSIfDLXcmD9RmQv1tkC0lam/Qg/OglzORIvDnPLOXK4ZSs7Pw0zfZi68GVLLrJQVk
 yjGlcThMckcN6KMMxQJy9g7H4s3qq29UEzDx7VD79CftHu5jq3rlAiR6BVF8+leFXDtK
 Ge7y9CqZbtwi6PlXoP4f30G1VW9xKmnX86o6sg2NFW2YqCVfOComNFFYyzJZs/7uZYC6
 Q5DL0EnqQ9hjhNdNTxInO3YUQbbAvcerkKukftmu8sALootEToP/B/Az9P/ysUnSPWKj
 u+nUky+G5uJ5302C8RKSMsCCNnWSPPrV690OANHiqe6wToLsQqqXJ9ZYQMx5W4thIh2q
 UOWA==
X-Gm-Message-State: APjAAAUClzvs0S65eZGrUBKyy0MPMM/lVS47lJkCC2hJyMkYBBH1VlOu
 7mIAbu6QfjdJcVSE0hW6m5xim9scSMI=
X-Google-Smtp-Source: APXvYqy52BfAb8XpEqn8//G29172HOzmyx7qjn0yaIV1zrQ/s78+VmusE/v8ezRGKDnOVxmjJs+4Pg==
X-Received: by 2002:a17:90a:a483:: with SMTP id
 z3mr1846055pjp.55.1574721909552; 
 Mon, 25 Nov 2019 14:45:09 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.08
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:08 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:51 -0800
Message-Id: <20191125224502.266177-6-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144511_568337_7BDC5B2E 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH 06/17] rb532/gen_image.sh: Use /bin/sh
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
 target/linux/rb532/image/gen_image.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/rb532/image/gen_image.sh b/target/linux/rb532/image/gen_image.sh
index a9d48d86ca..e46539fd85 100755
--- a/target/linux/rb532/image/gen_image.sh
+++ b/target/linux/rb532/image/gen_image.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 OUTPUT="$1"
 KERNELSIZE="$2"
 KERNELIMAGE="$3"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
