Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4024109408
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5kK8B+4nzadwWXHdJjTpX6FgIOMLC74JI2QVLcanJco=; b=Y2puzYB5lk3l86tCl19FINGmIv
	vf7fNpHbuUpYTBbgTYeLonIaL8GdrFKGFRRNJS/+WJp8xGhNygJhzYuB7U1pSPk1fDVomAZhFbwl+
	1kdbDBIaawmsxRlU+Y0T7ZhkVN22l5IjgONjGtebzhXeV+0aJLxn2bNiZiqM+ZDn75jVKlePfEsKy
	l5LyZcmMKFQuIzNUkcacbL1akMoBrG4aVg7igedcP3kY2cRAv1PkbrvhBA7GbIm6mQFoQLe3crs7p
	pu6a0DXdpyC9REado6YuRJbIUBSa4le/rLC2qhk7ZX0ExiiL+7+fV9pSl5PgcAEbKVxFZ09JxK4k5
	G//uNm8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJoR-0007Vi-V8; Mon, 25 Nov 2019 19:14:19 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJns-000715-T1
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:13:46 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 207so7641735pge.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 11:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=p52XMx0Hfft8aRN2RtzfvT606xNVIlpwhCVhdi4u23Y=;
 b=qOdxyWrvlnWFbywGa9DnUhDKsEO64Vfl4wDhg+igh4kDzBeRSJVz9B+V7etzuC+RG+
 qJToWGdftruEB9E4d1ikczh3kFFKqr8zFnlOwnERZrZ9xotQOETXUr1+VNPRWT/txSDV
 wNGK5dF6G+Lj8LA/sIBB9M57/SwkUi95r4gt+UvuMugBZ+B3Lb83aMOsFuNswPKBmQNE
 qzdHizDzBT1wk2unkiBun9pp7GV0GxuT3ODlwF+r4XkPWYFFV6AXRjZz6tLy2xN6/cEE
 hATak0QGCM58s7hPoTvdlSJ6Bj3BRMzp/bkgGRivjONUoxDtIOytvFaDcNNEzwMJwf11
 8Hmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p52XMx0Hfft8aRN2RtzfvT606xNVIlpwhCVhdi4u23Y=;
 b=gq6O6egMSUXw5BYaxKdklTqeir5A4uvSU00SDL92tHJDDf/ibreRpp2dmBGBv+ru6s
 JPgEwMVHdUqTe1TEUKhfUPf5L1TKrMVh82F1gVtPkpr5Hr6sp7oXZJ3PTyQEVzzq8ovQ
 VWxnKv3kQbsXkZxdwx/Jz2Dk3rnfnGmwXCDKOkxBBzXRyLKtyAlVMyIOpmAemRvg7gxH
 b7mE/DgP03LEXMAxHHCyqaMkMMjNXn5rCeiudtdnpsZ+UkYbYKww9hBpodjkREmen7cE
 PsToejewm0g29t3pPs3okzkCZq/BBdDGMCK24Ym8fDfXL+i5+CkSoUeVl3xGu5o+gkIe
 6eEQ==
X-Gm-Message-State: APjAAAX1ar8jd4RZxnMlGbLtPtHHEerNdbI+BiFBwJUwjWO7v1XBO/Go
 BlGngTH7OyTPka4tr+pTJ2RClVsLtA0=
X-Google-Smtp-Source: APXvYqxgE56cpu5XzbVDQYKBTZCnr5QlhkHws841UYtN6qRGmhldEWmOOZxJBZMbBwqq+KOi/aE40A==
X-Received: by 2002:a62:4e03:: with SMTP id c3mr36318763pfb.114.1574709223735; 
 Mon, 25 Nov 2019 11:13:43 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id 12sm135168pjm.11.2019.11.25.11.13.42
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 11:13:43 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 11:13:26 -0800
Message-Id: <20191125191340.5980-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125191340.5980-1-rosenp@gmail.com>
References: <20191125191340.5980-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_111344_932100_983D83E8 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
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
Subject: [OpenWrt-Devel] [PATCH 03/17] gen_mvebu_sdcard_img.sh: Use /bin/sh
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

There is nothing that needs bash anymore.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/mvebu/image/gen_mvebu_sdcard_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index 277c9377c1..54935ca7c4 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bash/sh
 #
 # Copyright (C) 2016 Josua Mayer
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
