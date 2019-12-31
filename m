Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D7D12D5F8
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 04:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OHhEhMavlVQhoI3ahz/hpO+yiatLHkUMSJZ3KtNf1tk=; b=hdSaJ42Pd2c5hH
	ukNJgHSedQzLsTRh5B46t9aU+jBvYAvuX0W0S+3RIoXeXH2ffyHSNqum8qXMsN50P99ifU30QNNXf
	jh6dt4qS5Zi/uJQoddu2phI2QkIo9GiwFT/8gbwbmNMucFWWoxu2CeqC9psX6hdFWyMXbg4muiG4Q
	OsBOPsFW+X2uU9C23XXupwhYbAI7rz0xuGOu0Mfvq/ecnSYCPJLz5UXhfzVnkjDbXQPe1wVPTLYyn
	2Bn3lrHqsmmUhUpX0kSEjWApp1ku+PjdB5WUzOxTFtut4OG2nqBlx6Pw7IpOZpVC2aHUj1ib0RA9J
	n2fumOsljW/Qjo9WRcNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im8BU-0002Na-KG; Tue, 31 Dec 2019 03:27:04 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im8BO-0002N6-4q
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 03:26:59 +0000
Received: by mail-pg1-x52c.google.com with SMTP id x8so18961212pgk.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 19:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0V1KO8+hW+sjbDWpNCX0LhP2ZC66tTOD+j8g2q+Ilsg=;
 b=ZrWh8p3uUBsVTh/mlryJgjc+iPhXRlzBSJVEiSgaOesqctCoDw0jvQW4DHYl1TmNMg
 m2Jo3UtgF/4NW8R6EPNFAH2m1/N5hKKdtSTMiTyi9yN+kZbWFX++GXTzITOkiSp5/5yc
 nvGaLFM9+1k19IUmvWXNE5FQEkmFD3qC+3RR8M6eJGr5PWbNDMMiLItViKXFJZwyCAO/
 ZDTFIlXFf1VPFiJ4Y4e1zrbUOL33ICKbhPd3w530Up6ZkjUC5NQu4zkvwgpBeJid16bb
 +Zz1Kn9MVBKPGsxoLlC+wkyHqk0dJjuIvH/POCUyOdP715FkuiM0cqc0pBJK2FtPpvJE
 YPoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0V1KO8+hW+sjbDWpNCX0LhP2ZC66tTOD+j8g2q+Ilsg=;
 b=Cl886xAL0r9SGynWcD2ororiQgeMmPHQ3MGbZAiysiP8n7uKR4IQYYC1hYg4awS54V
 5Wp/Ah83qtFcHNIDZORzSfuNyYbBjOxELZdOm+7eQc2jfJS4N65cosDzdK50kGjBqKSV
 cGpi/swt8QgHIcb6E/VPFVdfXBlkOjYIPDOKKfNiwLB+o/rIk/o/j8E2gGgbeIzDoauD
 24wuRHYu+Ha3vonbKDw1YTI7MRy4RCdtfJu7i/rw6DZ0V85dl0LEXP5KhiLcxAMMWSRN
 i+84pdDZmicvZVQeWErhUbSO4YXQ92vvMj24+3SsSJsS5Befc2OZdp7aR5Gd+7EBGb4J
 GG2A==
X-Gm-Message-State: APjAAAXPd9qbiNKH7Ka8gLbJpypiB/K3/2eQiW/5iTOdETdeC/XhJeV0
 n4+SBoF+lerNO3FuFqJ8/z0F8cVPXO8=
X-Google-Smtp-Source: APXvYqwAf2eaKRX6vs8QeURYRut97iQ/xhiSvvx9oI3RRpLEX2NsznEYOSCA8KVuUtivcWmBECYIYg==
X-Received: by 2002:a63:2808:: with SMTP id o8mr74586744pgo.39.1577762817140; 
 Mon, 30 Dec 2019 19:26:57 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id e6sm53374509pfh.32.2019.12.30.19.26.56
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 19:26:56 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 19:26:55 -0800
Message-Id: <20191231032655.79913-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_192658_188218_2022808A 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] lldpd: Fix compilation without
 fortify-headers
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

Upstream backport.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/network/services/lldpd/Makefile       |  2 +-
 .../services/lldpd/patches/010-limits.patch   | 21 +++++++++++++++++++
 2 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 package/network/services/lldpd/patches/010-limits.patch

diff --git a/package/network/services/lldpd/Makefile b/package/network/services/lldpd/Makefile
index 5b36155b71..eb1fe6539d 100644
--- a/package/network/services/lldpd/Makefile
+++ b/package/network/services/lldpd/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=lldpd
 PKG_VERSION:=1.0.3
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://media.luffy.cx/files/lldpd
diff --git a/package/network/services/lldpd/patches/010-limits.patch b/package/network/services/lldpd/patches/010-limits.patch
new file mode 100644
index 0000000000..26d5078669
--- /dev/null
+++ b/package/network/services/lldpd/patches/010-limits.patch
@@ -0,0 +1,21 @@
+From b2eebb31fc21b5ce12ef8944b50088119f1b9427 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?S=C3=B6ren=20Tempel?= <soeren+git@soeren-tempel.net>
+Date: Mon, 25 Mar 2019 18:43:03 +0100
+Subject: [PATCH] priv: include limits.h for PATH_MAX
+
+---
+ src/daemon/priv.c | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/src/daemon/priv.c b/src/daemon/priv.c
+index f4d6bdf4..ba5ae58c 100644
+--- a/src/daemon/priv.c
++++ b/src/daemon/priv.c
+@@ -27,6 +27,7 @@
+ #include <unistd.h>
+ #include <signal.h>
+ #include <errno.h>
++#include <limits.h>
+ #include <sys/wait.h>
+ #include <sys/stat.h>
+ #include <sys/socket.h>
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
