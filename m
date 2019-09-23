Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE6EBB616
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 16:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0piMOMZOAAU4TWhVgomOu3MVp+nQmXbpb6FaPEp8Wos=; b=MTaDPJttb64T9B
	3TxHd13x2JHnDYXyLtANpHZNpzRsJxdNAnGWIAyN7jb2His8c0d6STX0K5y8oxJep4OUECMizY5Tq
	wiDrpcP2lrk3kal9D8bq/q49xCWocmUcIYxsNOt3Gx5NtfL+tvY+sCCFnilq41pJHsy6BLtQIqGvR
	7vtHvDHJCJUGBed0ObFn+5lB7wTI0Isy9GfTBzs/VUR9SCjLol4+oi2n2Ly07fTUqq3R2wvf8bYlZ
	5cVy7Aza4hOGp96TKaAoMKkVJA9ZzF79+InFJPqyy9xzjp04spqat6zhwM+EYPqMIjNDEQqY9FF2V
	xpw7OdG+YIBmuIsUv99A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOu5-00016l-1x; Mon, 23 Sep 2019 14:01:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOtr-00011u-2s
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 14:01:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id 3so9440682wmi.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 07:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sGVyQTLpk2JCPLbijWk5eKOO73e2N2rwms4EKH6zpPU=;
 b=s2giXOQYAciM3ZQrcKkur1svQyQUrH7f42YxtzLLsRWJH49RwRlDFaEGlHHr0pINZP
 7C2J1g0Ni7xvzqVMzd4FDpt06y2Jcyb08zR5vFvbGCCByJOxdyp2t5m8fyHLlYBfcn0m
 TwaFsTzpDC4On2QfqKFSj3GapsY9xx7/EjNkjFcoljEipW/9aKP5JEq2Z8+I0Nc9bJPw
 bu0+D9wN+RvH3z52+PeKQUlSPPDx2UpWQx1zr6+Ispr0kwPc4H/7Tw0k9yfjOM+bLADw
 comQUEiKZLlae9H2/Fk3wLGszLCY0fqfm2+3em0i/h6FVb4KmQGK7UrTF/E767H1EadL
 yDMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sGVyQTLpk2JCPLbijWk5eKOO73e2N2rwms4EKH6zpPU=;
 b=LBW2hsELnKduNfqINgU3nQ4eVFQJ3uaTKl9AouBkLTjqOxxooM63bLPnufQqaYcU0H
 9FarzNPqJ3wIIiUY0bShrsNAW0a9xU+Impjl0nPmjjQ5BVQMmd7pTanDolbRbQbZwuMJ
 FQGlU0um1O9MeiE5Wl5SYS2SNPGsaUU5SC/ziyT5z1u2cKI2IAgiEKUdCsQXrYLmNYm2
 4UpYoSXm7TKO57L9rx+SAietcylnwYZA6azEcrvqoQLjTcvYaLuliJMbTEHVz2Rp651o
 EyVR/XQ2X9zqQWEHPOonAAuyEr41C34ych0w4DcDQZk1i3QS/Jn20TY47vSSa4yIfN/z
 15bw==
X-Gm-Message-State: APjAAAVlFYTq9pW2ndo+bY/arAjk/lT0Gt66nZGnuXByBw2sVm73LX0m
 lUwadAy8d2lKF8nM99YGBk9azk2n
X-Google-Smtp-Source: APXvYqwWc44jPqw8RLWWaVkCw/OGzqIU8GfsOJdgYQ5HYRU4sC7rhBO7bveOXnH6m3Zl/GmHrDLLmw==
X-Received: by 2002:a1c:2d85:: with SMTP id t127mr14873877wmt.81.1569247269031; 
 Mon, 23 Sep 2019 07:01:09 -0700 (PDT)
Received: from localhost.localdomain (a89-182-65-88.net-htp.de. [89.182.65.88])
 by smtp.gmail.com with ESMTPSA id h7sm10570705wrt.17.2019.09.23.07.01.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 07:01:08 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Sep 2019 16:00:52 +0200
Message-Id: <20190923140053.14738-1-a.heider@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_070111_210942_607B7251 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/2] sunxi: update kernel config
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
Cc: wigyori@uid0.hu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is just a `make kernel_oldconfig` run without further changes.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 target/linux/sunxi/config-4.19 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/sunxi/config-4.19 b/target/linux/sunxi/config-4.19
index ef5e1b28d3..b1a9d7342c 100644
--- a/target/linux/sunxi/config-4.19
+++ b/target/linux/sunxi/config-4.19
@@ -79,6 +79,7 @@ CONFIG_BLK_SCSI_REQUEST=y
 CONFIG_BOUNCE=y
 CONFIG_CACHE_L2X0=y
 CONFIG_CAN=y
+CONFIG_CC_HAS_ASM_GOTO=y
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLKSRC_MMIO=y
 CONFIG_CLONE_BACKWARDS=y
@@ -210,6 +211,7 @@ CONFIG_GENERIC_EARLY_IOREMAP=y
 CONFIG_GENERIC_IDLE_POLL_SETUP=y
 CONFIG_GENERIC_IRQ_CHIP=y
 CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
+CONFIG_GENERIC_IRQ_MIGRATION=y
 CONFIG_GENERIC_IRQ_MULTI_HANDLER=y
 CONFIG_GENERIC_IRQ_SHOW=y
 CONFIG_GENERIC_IRQ_SHOW_LEVEL=y
@@ -370,14 +372,11 @@ CONFIG_MMC_SUNXI=y
 CONFIG_MMU_NOTIFIER=y
 CONFIG_MODULES_TREE_LOOKUP=y
 CONFIG_MODULES_USE_ELF_REL=y
-CONFIG_MTD=y
-CONFIG_MTD_SPLIT_SUPPORT=y
-CONFIG_MTD_SPLIT_FIT_FW=y
-CONFIG_MTD_OF_PARTS=y
-CONFIG_MTD_JEDECPROBE=y
 # CONFIG_MTD_IMPA7 is not set
+CONFIG_MTD_JEDECPROBE=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_SPI_NOR=y
+CONFIG_MTD_SPLIT_FIT_FW=y
 CONFIG_MUTEX_SPIN_ON_OWNER=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEON=y
@@ -517,6 +516,7 @@ CONFIG_SOUND_OSS_CORE=y
 CONFIG_SPARSE_IRQ=y
 CONFIG_SPI=y
 CONFIG_SPI_MASTER=y
+CONFIG_SPI_MEM=y
 CONFIG_SPI_SUN4I=y
 CONFIG_SPI_SUN6I=y
 CONFIG_SRCU=y
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
