Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8701095C2
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nFhT/ErPR1OC06bhMpv3oA4+v+0Ctd3vJGAvXQMR068=; b=s+EwvhAzFeFE2qX6ZImZ005ih8
	yY18H1BhuDPOONtTv+/BC2HgIu7X2LizM9eKWEbNeTr27pRENe47WpUFuJ0onxeJB6BFo0aUpTCur
	ctSbTRt1uMN6CJKdL+oRHRvmq93ZcI3lhYjjz8eYYhsVJnpl9+BZy2eJJ1k9fBEglM8ZyUmM2HKEi
	T3iAzRGnCi4gBWWS6T/7LWK0JeV76O5wJMRXOY6z7YH32QE36oz7HRxE8DRvG9XVPNQQrKigeLf5G
	2kbsyh2J5Wqfb0xeQU6SwPCIhw1RQj9ColYw5EWwt0oph/HM+ylWNrfc2ZIunrAuBkFJmCE5374qz
	T/G5TqGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN8j-0000Zi-9J; Mon, 25 Nov 2019 22:47:29 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6Y-00068u-JD
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:15 +0000
Received: by mail-pl1-x62c.google.com with SMTP id s10so7179754plp.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=94Ok746n/qRpJVYDIpK3pZJhJwriXHG0+ONJY7RSNYA=;
 b=pLPLVRH4PLVNzrt3Za5/ZGBn535g0WeVw3JoFr/1/SMROOdKqG2dzjGug6ww0pFh/C
 tXmaxkYT9NcM0LXUVP4r0w8JN3/59VwpoQl9TN5Cn2pj3CEymfpcZUyaZffBwxc3QztY
 obIgKdgVLShDpoIfaRaT39I+TUjk2LykdSaahqplJ7bZ58fzGJM9K5v9OYNvv68Dhvps
 U8FS4JDvQtcKAiHBQpqdbpTz7lR5oC2IpIZT2nB1i67XbN2eHy5zQqidqofqc2xyo8Qv
 TQltS7x09Oo79SEazlmqSInCfj5dcR0hHhIMO0FliO6TtvPmbP7ttoe6ulu6OnODWlJ/
 pjxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=94Ok746n/qRpJVYDIpK3pZJhJwriXHG0+ONJY7RSNYA=;
 b=HZrmLBCwhevImggHdGwQGfDVxePWOeMhrCjJfm/vgjAuy7yGAp2fl+tmMghHebN9zG
 e1ea3ocwTLRKOxDKM0KFl+DYyEaQqSVM+pERAd2yZ4Ha2CD+gWwMsektQyCilw/dZQBJ
 QTqqPR4EU/BpBE7pHHekRqSYSs1F5WdqUzg8tv/WioIm2KFuSmq+TXuMXM/GEVl59K3E
 0lQg+xZk6d3OixCHdNO0gjkI1/vss90/vdyuqOdqFa9yzFIiKWJbY77f76hPMbYZebFD
 yVfMOgsm7EUmwZ9WEnWYcJ4C4r8KSPiSuKpuZWW630JWFc3zI+AoQOp4DPNhiyUf1NzH
 tUyg==
X-Gm-Message-State: APjAAAWdoWdOiiknMPVZ6bBBhIJ5Y5DgAdQA6VsvCgjaUKYOe4E8y8WP
 R7Wag6XgrbkPEFnlwc7cuvBG1z7SVIg=
X-Google-Smtp-Source: APXvYqyzJkU1RIOEXICFEskE5v7uWiCisFJDYaYBJB7f5CoPpVs2T7Y6oK3O8WyvGnDG2y9QLBzgww==
X-Received: by 2002:a17:90a:7188:: with SMTP id i8mr1961307pjk.6.1574721913282; 
 Mon, 25 Nov 2019 14:45:13 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.12
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:12 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:55 -0800
Message-Id: <20191125224502.266177-10-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144514_645072_5F307962 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62c listed in]
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
Subject: [OpenWrt-Devel] [PATCH 10/17] gen_mt7623_emmc_img.sh: Use /bin/sh
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
 target/linux/mediatek/image/gen_mt7623_emmc_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mediatek/image/gen_mt7623_emmc_img.sh b/target/linux/mediatek/image/gen_mt7623_emmc_img.sh
index 1cb0883fb0..a5f296ef14 100755
--- a/target/linux/mediatek/image/gen_mt7623_emmc_img.sh
+++ b/target/linux/mediatek/image/gen_mt7623_emmc_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 OUTPUT_FILE=$1
 KERNEL_FILE=$2
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
