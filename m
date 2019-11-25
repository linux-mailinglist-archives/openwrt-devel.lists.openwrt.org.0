Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE3A1095C5
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y2bu9Jg957p7BR5cG08g4WQgT8jE3b+V1pX94Bniv8w=; b=YivN9PmCfynEIvaAxKsi1kTzuE
	lxycQMixTNMDAKXFm99jIda2NH7QNLNlwIt55AODfAA66sPOtSPMf/y1Y3XYbnaIyXoapXnWpaDDL
	lgQSc94p/dvbqcjZGsc/VBQJRXRlJw6WyZz0ztD6eLMKF+B3hcj3Nqtp8ql76/hI4Wc5yVvV4RJkG
	JllTpRIq3oPlZOrmMYF/rnw7v3nKz9zseRIduAhpqlp+Q3LAZXnpyeZUva+eh0lKOZL/g1+7P46eJ
	WtD5Xh85+TkMhXCuVxZSM2yM+hnrcY8h0RMt7RkaOKiWG75d9sFiCfTIUCaKZ5Dbg6pJsli06Ey2L
	VSGrtpeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN9I-0001Y3-N0; Mon, 25 Nov 2019 22:48:04 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6b-0006By-J0
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:20 +0000
Received: by mail-pl1-x62e.google.com with SMTP id j12so7158580plt.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=OknksX+O+EXZJN5u/+RBlLaonflwO5yJHnVwWXtB3ac=;
 b=WF4ULkewTLgQyPDWr/cC0JW8VniAzh/5e0BgHohitPevzCAGqR6nQGSzGpANXIh6Kj
 YTA1tiH20lnDMUFKfxxxPOgRx4tRTx/Y58bEar/TfO7mpcdiLPUTHq6BjajOWXj6pS98
 EcsRA3dQVYw/m+PtRUo+OTqPFLp/hMB2di9Sco9zaZ8X6FSNytMqs3RhSmaN1gSjPXyq
 gSjSpoXlKQ4cjP/J/iIn01Fw3OQdkWxbYHoYjcIblvCRzVVAp4kDdo+h3kUvag5Vhwqr
 /Qbq2PE9Xab4wLy8LeDyupzQ5oq6fOYqDOqGC4Okqa9UMhmN0k8v2iWN8f/w2y5KsC1F
 +myA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OknksX+O+EXZJN5u/+RBlLaonflwO5yJHnVwWXtB3ac=;
 b=WhklCxlaPapxb91iLMzlys8hDkHnxqbvo1Caeb/m7YV/CvxCZZbA3KX+woI3flYCvR
 zNN6r7msdSDWWrXjrHbtrem4u3ll9EVg2urluDyaPdUJIImOyxdBwgf0YHBvowTKaoFh
 vEb2UI0kkfYljGm8yWxkuMdxQzv3NajQZkqzgZbUoSKtV+Cdgwmu5Z9hN0h3mVLZkx9n
 X+sdJ+JX20P0IKiH2oCrzGlTZob3TibHzrIreZOn5I4OcLb5zDbNJ8FPYzP9qMjFFEh0
 d5ydjEtT8PoMt29vJ7lSvx+qX2KpCtpGzuxGQD8Lik5otlw8Ae8NwD1dfcmQHwol+pZf
 937Q==
X-Gm-Message-State: APjAAAXXlRknl9ogecTxnZ7gOiIYtfVJdF/xblxjSfkNAsx0XIVEV3KF
 XhkLmEF9ue7zQ8jkgPD5N279qXVtoH8=
X-Google-Smtp-Source: APXvYqwJYiS5A4LW9GkRAq/9dr2Q5RvDypl9zCh60E7dwuygHv+Rlfw/vNw/uSzhPP+1D4m/5hMqXg==
X-Received: by 2002:a17:90b:908:: with SMTP id bo8mr1954781pjb.1.1574721915425; 
 Mon, 25 Nov 2019 14:45:15 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.14
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:14 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:57 -0800
Message-Id: <20191125224502.266177-12-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144517_640251_5290AAB1 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
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
Subject: [OpenWrt-Devel] [PATCH 12/17] dns313_gen_hdd_img.sh: Switch to
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
 target/linux/gemini/image/dns313_gen_hdd_img.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/gemini/image/dns313_gen_hdd_img.sh b/target/linux/gemini/image/dns313_gen_hdd_img.sh
index 6e899ec840..813852232f 100755
--- a/target/linux/gemini/image/dns313_gen_hdd_img.sh
+++ b/target/linux/gemini/image/dns313_gen_hdd_img.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 
 set -x
 [ $# -eq 5 ] || {
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
