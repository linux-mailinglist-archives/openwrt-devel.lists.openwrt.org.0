Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01474DE476
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 08:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBG0RxFr5kdsaYc5CVQCP92HMIkrkpVOs7BhNNolpew=; b=VRJE21kAjdGyQS
	IVmRPHlDtyJU1Oe+G9LQdtP+lZ0cIe7Sw40UnIb/YNVsD6BIQ13VsJ93D9SXP7Kb2AaufvIGmvFpr
	UJodZScOyh82GzXbVqIuEjerPQjN0mdRwwoxrisKYtAtthYnPK+W1l8dsDbp5dZF0qteebR5LU9XY
	Sqy39PYzgz9jKsnGkLVxU3KP0eNeOKYgFfizB1hgOcFJMXIzBScXqxYjEw9BoAeYKITasY5d81P1W
	cLkeFmfZkt/n47LsJZsNQzwxozTFDS+NOzYI7tchQR7VZly2Uevq4vdahgQYBbwCHujf+rFXxtNEr
	rA3IbeQwLoaGh+9xRjqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR4B-0004Ai-0b; Mon, 21 Oct 2019 06:21:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR34-0002O6-U6
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 06:20:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id w8so6102040plq.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 23:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y+cd/mTDc3lc5WzC6mmSoTRtAxA7VUtk54DyNACU7r4=;
 b=JjDFDKyK98cW3r/50LWNZ6yZRVWJTOJ7s4lihS2gAbhSSYdjEkcOZq75bi4Aup0BOx
 o2XdW1SSeNcdF0c/+8/Su9Yo/1KycacOwuqn4uyIXdTO9YWegfEbJ7FW+7ZncBNqPMVM
 fKzn0cgMBj+59ZDEyG77PmaNTZPdf/aNE0/ByzdBXF0aNDQYkV9zCSbnvJF3JKsHL+re
 DA6zEopz8n1DlN1k6GLcNJK3DTmXFcs+dZSXBwfkldc1iU12uHNnERC03ooEbUjEEX3k
 HNa6rr+lySz/G3ksM29ekpU/kX9ItT/tCumSl+DtFDzDbIMJt5Mx3WM4pMrSLOjkSRoq
 2sYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y+cd/mTDc3lc5WzC6mmSoTRtAxA7VUtk54DyNACU7r4=;
 b=IFxdug9RRjfQ7GdG0XP5tpIBBb0X6eJz+H6yUWy2fteLUI0fUploBLgIFxyHmetDhx
 5cCW8qnichkhCVutPj9Bg+4wq5nveLc+2s9Cc2Q60szZBdk8G5yYgV/SBRnfXWj/51uw
 q1mQNqNZvMP9LQB2L/gXrCuPAZgCey3mBvYVMlmbsxFxYWIUwJHVHC2WKN0sJeOiEiZ0
 gI/PyHd8BkDD2NRhdEvMxs9hYrqWLkQwZm97mNpYa7a099o83BPiGSY9DVZajoM14zkX
 XTK+T0c1xytSTMmM4dRXXbte5aND+qePfBx1Qh6QIOoJ/lA67pNi/YiIiq/sZm4sP5K1
 6img==
X-Gm-Message-State: APjAAAWQ8Km96Hxw6NgJ3Xp1Y78DhfGyeDU3MzkuFNQ00b+G/dKqjXg9
 xPV5TCWLmua+Gn4Wb3yKr6NjAvXMmFY=
X-Google-Smtp-Source: APXvYqzU1q7zCs19tQIxxBO5gT98o7j+daqRzUT8jkTX47QAA2SiV0CPVfEWzpcyi1+NqBySph4rSw==
X-Received: by 2002:a17:902:a712:: with SMTP id
 w18mr23246245plq.304.1571638808472; 
 Sun, 20 Oct 2019 23:20:08 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id b22sm13524784pfo.85.2019.10.20.23.20.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 23:20:07 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Mon, 21 Oct 2019 06:10:29 +0000
Message-Id: <20191021061031.81230-5-yszhou4tech@gmail.com>
In-Reply-To: <20191021061031.81230-1-yszhou4tech@gmail.com>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_232011_096292_39928719 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Subject: [OpenWrt-Devel] [PATCH rpcd v2 4/6] uci: free configs list memory
 on return
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
 uci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/uci.c b/uci.c
index 1587a19..7667505 100644
--- a/uci.c
+++ b/uci.c
@@ -1284,6 +1284,7 @@ rpc_uci_changes(struct ubus_context *ctx, struct ubus_object *obj,
 
 		uci_unload(cursor, p);
 	}
+	free(configs);
 
 	blobmsg_close_table(&buf, c);
 
@@ -1388,6 +1389,7 @@ rpc_uci_configs(struct ubus_context *ctx, struct ubus_object *obj,
 
 	for (i = 0; configs[i]; i++)
 		blobmsg_add_string(&buf, NULL, configs[i]);
+	free(configs);
 
 	blobmsg_close_array(&buf, c);
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
