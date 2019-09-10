Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA0AE87E
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 12:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbRUz4xy4IMi0Yk499vgHfgOdbDdoRXwzPIq0+RBTiA=; b=gyfsgL3b+6JCGE
	KzXeEeJE88eYtf30Okw7OZUancYtwNBVC4QwLIV64v+uTv/QC9Ew7ppeHni0QKU5z+cQKiEDoveLN
	bPrjvsCm6PIMfl2JdJCz+pl2olkoTZPSwTMN5y3zarMZD+p9kE1TBrztIkBNCBfwaRsSS+r3wMKMr
	JJBFJl4l/xXI1OLzxHZfmGKhrYWloB7AuTOgK0wl5KdXDt8beuR/EgvwKlwRcvOH4RCw1pDVu8H+i
	n7wq+NGNkVtvLdhkbvVlYvoi0nAZFd/NJkR2uC1YvgBkricjBSKsJphDtFsxNExI6M093H5LzBjy/
	V5zVZFIh7XlVvKjwsOlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dYz-0005VP-U9; Tue, 10 Sep 2019 10:39:57 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dYn-0005Lx-H1
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 10:39:47 +0000
Received: by mail-pf1-x436.google.com with SMTP id y5so8547018pfo.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep 2019 03:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k5XCtSKTB2N+7wu5+xyO3XjYbQ38eU18vXOA34txsaw=;
 b=GuXCIFsRh2zXv+KdOtojJOxe1D5aJEHEOB8W8FsooBjnpVR6XwGJQ9vuPnDOVALO0Y
 ru2h1lVKvC8IcTh/n7z9cpaY8U8+VK2iVjQOis5gjZddEmrnGCbQ5pHrNtqdxDymLTBm
 zKg+ZxCC0510hY6cQh2fc7XilO0qYIrDJ0EBkw5RtE+x6ArKCob5Otmh8IHlRhT/gCux
 NjC4IINAWVdtnaQp3kyhfPP41uaukdesTNzxfJnwwoxe4FD0QUFKmBB3mOv95pFFtuBh
 oKY3O8vnFlKUzVtjR1VtN2O+NF6Q3DK5U4K4lRkl200+3Lplvx6QTL02iIyRpaIaEMb6
 +gxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k5XCtSKTB2N+7wu5+xyO3XjYbQ38eU18vXOA34txsaw=;
 b=QKxbfoUWMBUUUPoeZy2zo8g0TMl2ftmpR8MtZqkAdeYP39xpxKLLinj8979EANu4Uw
 i9fQjXHN5hJ6gUuX+DK4Zz9pDcnEcb/Y4cTDuKe4DbPyc1zf5/e+SG4zNADg8LjE9oz7
 trGR5LECfZc5UFQi1okFwdAUd8InFlwRtX65eMGv1GdO1TyPzhc1I4RmAhLedAWIDgLe
 TbA0exZNMU1dOnh8mIBasqYCqVS+mE5BZkoodc4eiImtbyQoZL3as09biPQDHwzWGRw8
 rMIbnn0EiqTcxaGKSiDP687fhNsU1SoL3pak0tCZwpxdbxDxbk3jxry08oSCnPXm/MLL
 qG3w==
X-Gm-Message-State: APjAAAXq16T7YEathCowfgNq3tQJRTjRRsKs5goKQS0sz1piBdHY1I82
 ZY8unktsfvXWCdnI9a30TqE=
X-Google-Smtp-Source: APXvYqwD3srWXtPhp40BDW6MZMncmwgQhWgXF115N5F9gGe4bMcHIbHLy+koXM7y7fAlnmKvSQ0b8g==
X-Received: by 2002:a63:1c22:: with SMTP id c34mr26988255pgc.56.1568111982097; 
 Tue, 10 Sep 2019 03:39:42 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id i9sm35278482pgo.46.2019.09.10.03.39.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Sep 2019 03:39:41 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: luka@openwrt.org
Date: Tue, 10 Sep 2019 10:39:24 +0000
Message-Id: <20190910103924.1215-2-yszhou4tech@gmail.com>
In-Reply-To: <20190910103924.1215-1-yszhou4tech@gmail.com>
References: <20190910103924.1215-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_033945_561435_186F71D3 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] config: kernel: remove KERNEL_LXC_MISC
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

Kernel features are neutral.  The two cascaded features can also be
useful for other container related tools

It's also less error-prone if only kconfig symbols from the kernel are
prefixed KERNEL_

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
Changes will also need to be applied to packages feed, see [1]

 [1] https://github.com/openwrt/packages/pull/9958

 config/Config-kernel.in | 55 +++++++++++++++++------------------------
 1 file changed, 22 insertions(+), 33 deletions(-)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index d9a9fe687f..310c6dfd07 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -623,41 +623,30 @@ if KERNEL_NAMESPACES
 
 endif
 
-#
-# LXC related symbols
-#
-
-config KERNEL_LXC_MISC
-	bool "Enable miscellaneous LXC related options"
-	default y if !SMALL_FLASH
-
-if KERNEL_LXC_MISC
-
-	config KERNEL_DEVPTS_MULTIPLE_INSTANCES
-		bool "Support multiple instances of devpts"
-		default y
-		help
-		  Enable support for multiple instances of devpts filesystem.
-		  If you want to have isolated PTY namespaces (eg: in containers),
-		  say Y here. Otherwise, say N. If enabled, each mount of devpts
-		  filesystem with the '-o newinstance' option will create an
-		  independent PTY namespace.
-
-	config KERNEL_POSIX_MQUEUE
-		bool "POSIX Message Queues"
-		default y
-		help
-		  POSIX variant of message queues is a part of IPC. In POSIX message
-		  queues every message has a priority which decides about succession
-		  of receiving it by a process. If you want to compile and run
-		  programs written e.g. for Solaris with use of its POSIX message
-		  queues (functions mq_*) say Y here.
+config KERNEL_DEVPTS_MULTIPLE_INSTANCES
+	bool "Support multiple instances of devpts"
+	default y
+	help
+	  Enable support for multiple instances of devpts filesystem.
+	  If you want to have isolated PTY namespaces (eg: in containers),
+	  say Y here. Otherwise, say N. If enabled, each mount of devpts
+	  filesystem with the '-o newinstance' option will create an
+	  independent PTY namespace.
+
+config KERNEL_POSIX_MQUEUE
+	bool "POSIX Message Queues"
+	default y
+	help
+	  POSIX variant of message queues is a part of IPC. In POSIX message
+	  queues every message has a priority which decides about succession
+	  of receiving it by a process. If you want to compile and run
+	  programs written e.g. for Solaris with use of its POSIX message
+	  queues (functions mq_*) say Y here.
 
-		  POSIX message queues are visible as a filesystem called 'mqueue'
-		  and can be mounted somewhere if you want to do filesystem
-		  operations on message queues.
+	  POSIX message queues are visible as a filesystem called 'mqueue'
+	  and can be mounted somewhere if you want to do filesystem
+	  operations on message queues.
 
-endif
 
 config KERNEL_SECCOMP_FILTER
 	bool

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
