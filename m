Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C8F1A167F
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 22:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLLOcxQ4Laq14Rm7DF6Co72w5COG6tWe2KV8PPNqHo0=; b=AAj/9ZxttUT+UK
	L2UZ0ocZ44xpDf1xKvxBkRvs8/PqBtxHDSV74BTC9+JAUy5DoXH6NRJmxRKGdxz1pGdpF2+ZZyIZt
	J5by7u2fjwU66rxSAIBDCR/05YsiprBhN/ZoFsuHG9TRosAWffUtagLirfM5c2uVO16F2X0klpHQj
	cDEKrqh2dS19y/hwlEktntDjnIBq9JuQsIZH9v/fbDIQj99NjqopBb0oPCImX/hWa4k0bl0W+0KC4
	8Y4H2kGoNATVMDtCwnbNrGDbZNpKjos2y/Fpf18Vve1qtpkDRWZJBSFXwfPIqS+eEfKbh5ZAiw3DE
	t6cP4hreXtMgq5j0cQxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuW3-0006vp-3Y; Tue, 07 Apr 2020 20:08:11 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuVX-0006UK-AD
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 20:07:40 +0000
Received: by mail-qk1-x742.google.com with SMTP id l25so780577qkk.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 13:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ltp+88nBrghKNuMRbXQ0AVRdavlMzYKEB1i7JKhEsYk=;
 b=X4eY944u/iJJ5yxyQHltsoNg2AbVIQrndkd6qWm8jyHHHJ5iqwpOriaonsiAbVfMZ/
 g3JjpuQnuhL/lKqptabyLI7bfo6eomOYavbqBOYuTD2ZxqpfifgRhrJ9vHJShrMcGf2N
 hg6cAARRasfKV2SnRzK2QVimf7LhnJ6USy+mDGGfSBgHJx7/PFlMeQUeKOFw4tHa3Thd
 ecuo9qoCXm6SDQMIwSg1IHkqK64/Bih7YOW5c2NR8f5Ga7uCanOAn+3b4zp/XqEfFR+h
 X34ve4o6CCSSw+cyq31eD1yZD6C9wWUGqamyP1fxz88IOhVzuMoejh+MZ7servcEKq9T
 SxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ltp+88nBrghKNuMRbXQ0AVRdavlMzYKEB1i7JKhEsYk=;
 b=kSf6mt9WOIhhq4U3r49qrnzPKZJvVt3bGwckf1+Wfx7hhb30ErrlAuOxOtNU5ZLZDQ
 9oXwSiIZiV6L9561rXU4zLeBlnnEpWSX3b6rkQNrW4whyssnAmm6kKUVbHBJg5kv8Emb
 oReRkGqKbL/1sM9IwZ7Jo3y6YHzc/QpdfvPZ9E+QLWqJdWrzu+It3BSoNoTnB+WE+92G
 rfVqNWcfKTXZ83zyHCbIiQ2MV/M8AhOdzDoulE85DPnQnBfGUg5zzteGMXxyKZKOarp7
 1GFlX7PXEBESxCoFKZqI0cksggMPi2IeW6VXcbayFMjxHWMEy5jeMzkOKi2ZZmRzFKIt
 HmcA==
X-Gm-Message-State: AGi0PuZ4RI3IMq5L0N1nPlevWP1EyLvyE8y35OtvZnBmNWqqRdTpaJjl
 rC4qHs3vi+tlrP7qlsQz7lTqk7H3dMg=
X-Google-Smtp-Source: APiQypJ+x8MiMNx8g4DuAtlu+AIvwZrdqU79QDtuHQDLJo+maNG/ApayyVhIu1Qh2V8KM8t333nC+A==
X-Received: by 2002:a37:418d:: with SMTP id o135mr4190538qka.349.1586290057803; 
 Tue, 07 Apr 2020 13:07:37 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e10sm4913365qtj.76.2020.04.07.13.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 13:07:37 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 17:07:20 -0300
Message-Id: <20200407200724.8308-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200407200724.8308-1-cotequeiroz@gmail.com>
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_130739_353900_79BA08A9 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 2/6] busybox: quote 'source' filenames in
 Config.in
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Newer versions of the kconfig program requires quoting the arguments of
the 'source' directive.  These are the last ones not using them.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
 package/utils/busybox/config/Config.in        | 44 +++++++++----------
 .../utils/busybox/config/networking/Config.in |  2 +-
 .../utils/busybox/config/util-linux/Config.in |  2 +-
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/package/utils/busybox/config/Config.in b/package/utils/busybox/config/Config.in
index 8d1394c2e2..03af3464f9 100644
--- a/package/utils/busybox/config/Config.in
+++ b/package/utils/busybox/config/Config.in
@@ -702,30 +702,30 @@ config BUSYBOX_CONFIG_EFENCE
 
 endchoice
 
-source libbb/Config.in
+source "libbb/Config.in"
 
 endmenu
 
 comment "Applets"
 
-source archival/Config.in
-source coreutils/Config.in
-source console-tools/Config.in
-source debianutils/Config.in
-source klibc-utils/Config.in
-source editors/Config.in
-source findutils/Config.in
-source init/Config.in
-source loginutils/Config.in
-source e2fsprogs/Config.in
-source modutils/Config.in
-source util-linux/Config.in
-source miscutils/Config.in
-source networking/Config.in
-source printutils/Config.in
-source mailutils/Config.in
-source procps/Config.in
-source runit/Config.in
-source selinux/Config.in
-source shell/Config.in
-source sysklogd/Config.in
+source "archival/Config.in"
+source "coreutils/Config.in"
+source "console-tools/Config.in"
+source "debianutils/Config.in"
+source "klibc-utils/Config.in"
+source "editors/Config.in"
+source "findutils/Config.in"
+source "init/Config.in"
+source "loginutils/Config.in"
+source "e2fsprogs/Config.in"
+source "modutils/Config.in"
+source "util-linux/Config.in"
+source "miscutils/Config.in"
+source "networking/Config.in"
+source "printutils/Config.in"
+source "mailutils/Config.in"
+source "procps/Config.in"
+source "runit/Config.in"
+source "selinux/Config.in"
+source "shell/Config.in"
+source "sysklogd/Config.in"
diff --git a/package/utils/busybox/config/networking/Config.in b/package/utils/busybox/config/networking/Config.in
index 1a740d998e..f07a2d46e5 100644
--- a/package/utils/busybox/config/networking/Config.in
+++ b/package/utils/busybox/config/networking/Config.in
@@ -1196,7 +1196,7 @@ config BUSYBOX_CONFIG_ZCIP
 	See http://www.zeroconf.org for further details, and "zcip.script"
 	in the busybox examples.
 
-source udhcp/Config.in
+source "udhcp/Config.in"
 
 config BUSYBOX_CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS
 	string "ifup udhcpc command line options"
diff --git a/package/utils/busybox/config/util-linux/Config.in b/package/utils/busybox/config/util-linux/Config.in
index 1cb2245e32..1a3871e92c 100644
--- a/package/utils/busybox/config/util-linux/Config.in
+++ b/package/utils/busybox/config/util-linux/Config.in
@@ -994,6 +994,6 @@ config BUSYBOX_CONFIG_FEATURE_MTAB_SUPPORT
 	About the only reason to use this is if you've removed /proc from
 	your kernel.
 
-source volume_id/Config.in
+source "volume_id/Config.in"
 
 endmenu

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
