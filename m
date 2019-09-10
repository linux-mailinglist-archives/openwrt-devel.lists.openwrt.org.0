Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B8BAE87C
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 12:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xiCw1e5gojd39BxTR/cSwHFuDKzTkc4OHbMrD0VYr4w=; b=lcH3VNVB9pAmZo
	I/71rkrSBEQs5PhWdErcJ23JemhjLFIQVZOrAjyOFc2CfICNDDjH7aAuB1UvDMkvZkZCTN4UZvP1F
	lMP87bk+a4E2u0RkY75n9k1l6T0QzYo1w6NR44kyzbg3IyLzsjyypuSBJFXnppwzKLpWsFL88exSR
	Y3o4xuuUUiWz9Q+y/zyTlaMX4fiNgHpk4MFHGkF3Vyvu0gg3dtV+Rr/wEiQEXrQ3dEdL3kFueIrD+
	i7EmplJpBKfa75gR/R+3/QTJHERnMLLCX8diVCk1CCBBKybhPaY7WGVQ8hssAVqKXDlm1sSIoQmtK
	Peg4ucHPqKkEDZcXQQMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dYs-0005Mw-57; Tue, 10 Sep 2019 10:39:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dYl-0005Lp-SO
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 10:39:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so11311371pfr.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep 2019 03:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mfG+ldvltN5JDBf6JD3mcNOz+y7BMKgHAbqGmcCOR9M=;
 b=hgDcqasXf98pVKIvGMSSAknLMUD0EOWX4ysZ7blMikfvT2Jdj2DyIJ5YpL+kvDpdJn
 lvzn8NifOVxbNG3Ula0+pQQwkFZz61VhwadeGu6aKW98iDnHoFfxbhfL3WCvc8sp06xf
 n6yE6m+ycIkT9Yzs0eJfKZBgECgxEQ07coReEUMJgZu6fW4VfoBtPo5OgBVkgTIShKMR
 oufV7iz8dTMMivX65iCWaxxc9A+2+HR6CSd99XfUVvXhedsAeZyRllJFVe89fEMU7uco
 /jmuUVPQPlCcG+KRg3osZZA/Mg3irSJndlvZEp8bm2rvgdClXoP+9hXrorxK1riLnx/K
 uCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mfG+ldvltN5JDBf6JD3mcNOz+y7BMKgHAbqGmcCOR9M=;
 b=L+jTbD9T+iAMRT1CHdm0kabIm6kW0MFt0GIuFmV/p+wMWxP+wPT9RNlUHkbFC+Keq7
 53nyyv8zl8Gq5iGsHa5RhYcj9UcUAwlvT5nIR6MNd7rGPLyw0Uj7c4DY4J2Yv8ufU7fQ
 yTENoUi81DJGyM1h8vcTYtN4/G46POAdwQby+DL/zLiPannH9NjorBaFNWTY5HZOv7D9
 vwYs8kpCX0U4b/Ig4hltNB7jKoe9VCjTHdn8Lsg1oeqgQkf70j2FQnsR2f6SnqOt17u1
 CodNELz+0USxs5PI0Ey1LF/nAYpRCqDGrwrQC1yXCdS98jFZcO0SE7ZfF+11FG+p1KvR
 7khw==
X-Gm-Message-State: APjAAAVIHJQZBbkZrRXkLQy4j/jT1eEYWo55sToBgQUaMQ4rDVNnXgsI
 fFYiblqflyWDS5w09Qzjp2I=
X-Google-Smtp-Source: APXvYqy+CZ1iSxsFhgMdHfIhyh02uFf5TXGZBxTYvihuX4mb16JN1xe02f6LWaxKYlWR+Qi/8fqJcw==
X-Received: by 2002:a65:4304:: with SMTP id j4mr27875320pgq.419.1568111978709; 
 Tue, 10 Sep 2019 03:39:38 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id i9sm35278482pgo.46.2019.09.10.03.39.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Sep 2019 03:39:37 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: luka@openwrt.org
Date: Tue, 10 Sep 2019 10:39:23 +0000
Message-Id: <20190910103924.1215-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_033943_919888_FF375657 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] config: kernel: add
 KERNEL_X86_VSYSCALL_EMULATION
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

Binaries in container images may need this.  E.g. nginx:1.7.9 used in
k8s default deployment manifest file for demostration [1]

 [1] https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#creating-a-deployment

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 config/Config-kernel.in | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index eeda3e1b6f..d9a9fe687f 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -54,6 +54,24 @@ config KERNEL_ARM_PMU
 	default n
 	depends on (arm || aarch64)
 
+config KERNEL_X86_VSYSCALL_EMULATION
+	bool "Enable vsyscall emulation"
+	default n
+	depends on x86_64
+	help
+	  This enables emulation of the legacy vsyscall page.  Disabling
+	  it is roughly equivalent to booting with vsyscall=none, except
+	  that it will also disable the helpful warning if a program
+	  tries to use a vsyscall.  With this option set to N, offending
+	  programs will just segfault, citing addresses of the form
+	  0xffffffffff600?00.
+
+	  This option is required by many programs built before 2013, and
+	  care should be used even with newer programs if set to N.
+
+	  Disabling this option saves about 7K of kernel size and
+	  possibly 4K of additional runtime pagetable memory.
+
 config KERNEL_PERF_EVENTS
 	bool "Compile the kernel with performance events and counters"
 	default n

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
