Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9D4E886C
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 13:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46eYDE4pWv/SgT1SdsVBgiB4TDSKWSHwDmeefkNiynM=; b=CJ9MW4F3f7/WEu
	sosN3x96BQ//q7D9e0yRt/SxXDgMwmYVVGFs68/w6t/pJgvEb0xuOMt13rUnmYLlrxG9yw+r8n+9Q
	AC5olzg0USL6yHMQVHT3YRMV/8NpprPRBOhY1zKrhVDUYP4+1N9q0XSOLaBaS2ZAnoHIsyUrHfljI
	vSCLBK+qMWBpy3wOtCccyMLsCRCNJJpw/W9e5A8RsOHBty9OLAJvfJx8YL6O/u4AnkMlBoG7SoAIR
	NI70nr6WwOgUZ+TInvdwj0Cgw3a4vSCnybc6SGJ8Wt9dr7Oh59gJmrYKiFcVgbQ2CMGnfC23YnLHt
	PoSSABC+GeXdBqw5b+uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQoB-00032q-46; Tue, 29 Oct 2019 12:41:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQnM-0002KB-Vs
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 12:40:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id t12so2922675plo.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 05:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1B81C1Dh5JGsiGhtf+ZHbXnfvfzPuWVlJzGcZdbY5SU=;
 b=DxBtpXV69IhWrLVZn2W4EToCi7y6GLDd87/M2gZAKKgmHrV5fzMPyFKEvb430GjxJw
 LezGKo98QOi+Q3u6tgGwmWK8xsZilseqcGi5aQH7QwMZvXaNaKrtCZ+0p9qxHNmQwzeC
 DDAy/OMaEQZZL2a8JTRPKS2iks+UvHlYJ7wlKQkNJnFigSPZkJ5V6ss2VYTZaUurqkwZ
 vFa2SZze+cGa9Rtp3HxGo+GolK0XcjUlYNcVmrXmVAjmU38xw2HzUtTT+ORfq2ieKNBd
 jusdbuuDtFZA8BNH5fOpBhithP5QHxSstg3EGpDBA6cVAqjxluVOuv7Aa2bhwKcMEf5X
 5FqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1B81C1Dh5JGsiGhtf+ZHbXnfvfzPuWVlJzGcZdbY5SU=;
 b=CKFLOAvgI+sbiga/ut1932vhZWjiKVi8LsODPWgOiWahNNnwb5UjvJFAIV7nSq2o6d
 wO7Ry2EBEl3IJvFzB93vzpWnG7176kgrpmtA2Bxypy2om1B/rdUeolnJzBx4APcJQVLg
 ZUyeEu/CBBndLP3o/5ZTqRJRGB1QsYVlYnACA3tjBouIRXnIFMGYv0eW0cHFfyaiGq3v
 5+2cmnrKN4Z3xQNzPyEzY4Nsg57QQmxkWASNX0TF6npizjQTmgkViMR/QumBCTcxExi8
 sMSf4a3ZAJ1HF3DOC2YynJzycQC28XFK6CVBZNV2WNeDHB4uywtPPRmljlXBxGx7/yQV
 fL4A==
X-Gm-Message-State: APjAAAWhSbxaAImZ9ew/fs8jLWUrieXM0oaKBYvVFmIOofxPOiJg2+Mj
 cFK5FMYliA2H+jO9Ate94xQ=
X-Google-Smtp-Source: APXvYqwIAVjzTBek+fdLrzH4VDJbX6D7TqraXVLbzCOYGeFh80ghrdxoTxr0hD6hSUd03z8cVz+aOQ==
X-Received: by 2002:a17:902:aa8a:: with SMTP id
 d10mr4025178plr.64.1572352819522; 
 Tue, 29 Oct 2019 05:40:19 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id b26sm1090782pgs.93.2019.10.29.05.40.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 05:40:18 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: john@phrozen.org
Date: Tue, 29 Oct 2019 12:39:49 +0000
Message-Id: <20191029123950.40794-4-yszhou4tech@gmail.com>
In-Reply-To: <20191029123950.40794-1-yszhou4tech@gmail.com>
References: <20191029123950.40794-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054021_077435_C528B46D 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools 4/5] block: mount_device: skip
 extroot earlier
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
 block.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/block.c b/block.c
index 15caaba..084e7fc 100644
--- a/block.c
+++ b/block.c
@@ -1087,6 +1087,10 @@ static int mount_device(struct device *dev, int type)
 		return 0;
 	}
 
+	m = dev->m;
+	if (m && m->extroot)
+		return -1;
+
 	mp = find_mount_point(pr->dev);
 	if (mp && (type != TYPE_HOTPLUG)) {
 		ULOG_ERR("%s is already mounted on %s\n", pr->dev, mp);
@@ -1094,10 +1098,6 @@ static int mount_device(struct device *dev, int type)
 		return -1;
 	}
 
-	m = dev->m;
-	if (m && m->extroot)
-		return -1;
-
 	if (type == TYPE_HOTPLUG)
 		blockd_notify(device, m, pr);
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
