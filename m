Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DAACF01F
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 03:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7TWx0sfg273MUsqKbYlBny7fHTqihQ0Y41wHvDKRVI4=; b=P415/jWuTE4gKQ5SOMmpvXqQ1b
	FumAe1zeNJsclT9/HZ0zHhxMj/ztSZ7wTOCnM9VvKYQSo6IkiEfifODZt/tQFeeLdoQZJgUMDtohA
	b8xjaDkazw46EXg9W8tEBff4bNk99AZf+Eu96pSPwm0PVnhZTcMvqUlR1t1ebjKdH5l4UemApZs9S
	ANHeOC7bVmp4m4PGk1I99qFUR1tUr41LngGxwaoHAMsbd9Md0fDp+sFRstdnQXwLqtILaZinmFuHB
	ZvPxvkIuDMmCQVya1lVRVYHZPuVMqkQc4Ph1CRsV6fVCc+q/DaRtfpvM0Atxynw1gNZ6vdxTvJ+GG
	fB86owMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHduF-0006Eq-Mz; Tue, 08 Oct 2019 01:03:15 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdtX-0005mB-Qc
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 01:02:34 +0000
Received: by mail-pf1-x431.google.com with SMTP id h195so9756257pfe.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 18:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=xzcr3ejfFd0iQUyKgURR2jI6sjyOzSiWrwq/XRAc4tI=;
 b=FeDDMnryjr6ZZTBFqdkDl8M5Zz26HvYJTZaReFcVAy/w/NeEJPv/0Xe1Ga0muyy5Db
 B9sHNhE0pccKqRXCyUi0FOAtyoASCf0IvOMCY2cuosU2RXBUxHAHf+jAt1iPFVxwXm+C
 8yCZ3lpj+QKr0vUGxwiCLGBmzvbySDvR0oqKS/9UzqG+IggmUcUVIjcDAfIu7mHQhw0w
 PF0f0ZI5hN991ddgEgEpon9/3YUhWTavwGOwvMOmG0B9qdvFPGhGqt8T6IjbqAE0QJ1U
 AxomXedUFnOT/hTUWLSLgQZXPcCC1rd/lsznx61z4h9u+Whl/5gw+8tYM4bfO7viJhWl
 c7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=xzcr3ejfFd0iQUyKgURR2jI6sjyOzSiWrwq/XRAc4tI=;
 b=Ffi1LgBR6hwxTtZ1+84w2FdUMe4DVs4AbRIR5pwE/pKrGEvryW3i7JKyAWPgpcPio/
 u9oB+avgoZF3IIAmURHBD6j7a5MeFhkOZZrxJ+Y+wJh8DhJVyoIHkYq2SENLsXhHRNP6
 WSv+ySfcYM/QXhA5ccy/87cfGVWPLxsriYwrngMWXl5n1zgnSl+IK4appkjr/QHb/SDY
 aaJp2DvaZc7IyQzSuQwC9rOBfoEQck0+ytmfSbRJGjQ+67CWKdV5mYuYcMhgfhP4KtjO
 FS677TbU33XXFSWWPqwbyLqlZG1MnQ8mCZPZz07HS6mizK9eojWnZ/CQgkiOL8/SBumu
 aHFA==
X-Gm-Message-State: APjAAAUlcSOE/YLJ+wKmBAMT3Jslp5rNNVd3Hj7LN52QzgvXenKUWbjY
 d508TNChSLT90Bn/asFuZ0iV6aV4
X-Google-Smtp-Source: APXvYqwzh+nRIgXZsXkBSDAhVrFdpcrLiPyKlo+PozL4pIAwvz6kJ/jCLpHSB006UL8W1ZgbBFgjDQ==
X-Received: by 2002:aa7:96c1:: with SMTP id h1mr37374059pfq.111.1570496550651; 
 Mon, 07 Oct 2019 18:02:30 -0700 (PDT)
Received: from mangix-pc.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id x9sm594901pje.27.2019.10.07.18.02.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 18:02:29 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 18:02:21 -0700
Message-Id: <20191008010225.8822-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008010225.8822-1-rosenp@gmail.com>
References: <20191008010225.8822-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_180231_854878_C8D78D03 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 4/8] tools/coreutils: add cygwin
 compatibility
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alexey Loukianov <lx2@lexa2.ru>

Properly handle ".exe" suffix on CYGWIN hosts.

Signed-off-by: Alexey Loukianov <lx2@lexa2.ru>
(rebased)
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/coreutils/Makefile | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/tools/coreutils/Makefile b/tools/coreutils/Makefile
index e338796053..8de2cb9894 100644
--- a/tools/coreutils/Makefile
+++ b/tools/coreutils/Makefile
@@ -16,7 +16,13 @@ PKG_HASH:=8891d349ee87b9ff7870f52b6d9312a9db672d2439d289bc57084771ca21656b
 
 HOST_BUILD_PARALLEL := 1
 
-BUILD_PROGRAMS = date readlink touch
+ifeq (CYGWIN,$(findstring CYGWIN,$(HOST_OS)))
+EXEC_SUFFIX:=.exe
+else
+EXEC_SUFFIX:=
+endif
+
+BUILD_PROGRAMS = date$(EXEC_SUFFIX) readlink$(EXEC_SUFFIX) touch$(EXEC_SUFFIX)
 
 include $(INCLUDE_DIR)/host-build.mk
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
