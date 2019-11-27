Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7BD10C035
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 23:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qz+uOWzp1EerEBtgrhxfj1Q8n98nB6iD1G41hCcJFUg=; b=HL8Va0J3wo/15yAki1zTpeGMqq
	swv2Q9l5DDVHMfSpYEaM8jPQvfg0XieqbL/aDXGfV04eE9ZAUeUuFSpCHSMfjR4/rbnxy3hRGCqxN
	IbTM95VfUYyAYvNFlemC3xjnUvkIWQnOv3gfHySAAnm0k76I2g8JlPFq4aZkMq+UKaf5RR2MYAadv
	D65sAjBFZLViXp1rrzQFlhJ7iB0OJqMatpwyc5lZE0A/yULpjCrwqhPbn4GCtR3GfHKXJwnEWnSZM
	C/IwGUlql2Dj9np/LNmFM/JF9oAQ82FCrX+Rw6tuU0goaJPjPGqV5ijpgJ1xKZJDnNnvVjU4t4ssg
	rqKjEwxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5pR-0000Zv-AT; Wed, 27 Nov 2019 22:30:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5p4-0000PR-P6
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 22:30:13 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a16so10776371pjs.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 14:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=QofphPvxg5IfNElsfv5gqQU7Dr79fkfAin8t2VGS8LY=;
 b=M/34I+rUMNPc17FX3pgx4kVFI5Qo7kLWUwtr3uX4BRuD5bJw+iTj78glMH8SCcAAy8
 CA6+/6ZBoNUGKaJHN502bH2OOzW5QodM2Ab5jKFPPu6nCYkaNZj9TWlezAYlQqRlrb8G
 wgAaIHnp2VI4EKsMkc5cVFT1Jjyoz1JmgLtCEHiSUHYUPhzWX9+e78+PhX4tYP7NBpfU
 g6yVN3RMQE+NbvSWiufEMiMC5M2giBpDd/zop43MJ53m+Q68ltaL8yV+17wlT3gmVCfY
 u1V9812xPfJfaBNfkkNTOplcI6SH8otwKarLkBNpoQ4oT80EmPgQaM96RehjGa5Dlw7e
 xO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QofphPvxg5IfNElsfv5gqQU7Dr79fkfAin8t2VGS8LY=;
 b=rvk2LGMD9RUl6tGjbTksvrY6ByreUudG6r68QADj7dEx2+TSyQiGXs2SJSppBrWbGm
 V04u5F6JRlJATYwZMmsP41IwCDpH6ee2iifB2UFTJ8iS3/jx5wRRIkODpq0YzCx6K5vA
 6gH+Pq/Oh7RwBOOH/TYQKrKLM26uHXw9wc/KqfmAS1PNGylEXG3oqM2hjO9gB4/IqA7H
 zAX14MmGbS83C21FJdx3cSSSweM3KCtRo9eTbE4ZJRYFl3thSgljCg4W19uyg+uKPzBd
 b+QkkNd/3rN/P2d5KBRea8LFlYLdZp5e50sreCTfFS4IJu8RANxSCpvYaISSRntnpoPg
 RPOQ==
X-Gm-Message-State: APjAAAXhtENgjacsF8DvKGjt+GZjGn1suLQ2psfxG2A7/JgwPTL0KjEN
 NvHszzZZq8UmFrlvy5qFKL8xFwLERJw=
X-Google-Smtp-Source: APXvYqz1AdtlPHiY+/5cvMgfyQQwtePFrwYZ6tGo53snf5Y+4fvevExFyLW1AAXW3jH6hEIjP9PciA==
X-Received: by 2002:a17:902:8c91:: with SMTP id
 t17mr6342872plo.225.1574893809614; 
 Wed, 27 Nov 2019 14:30:09 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id g191sm7411397pfb.19.2019.11.27.14.30.08
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 14:30:08 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 27 Nov 2019 14:30:05 -0800
Message-Id: <20191127223005.9632-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127223005.9632-1-rosenp@gmail.com>
References: <20191127223005.9632-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_143010_820377_7C807DFA 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/3] tools/pkgconf: Add patch to fix meson
 compilation.
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

The wrapper calls pkgconf with multiple arguments. meson wants to call
it with a single --version argument. To keep compatibility with
pkg-config, revert the upstream version change.

This fixes projects that use meson and pkg-config to find packages.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 ...me-modversion-insted-of-version-if-o.patch | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 tools/pkgconf/patches/0001-Revert-main-assume-modversion-insted-of-version-if-o.patch

diff --git a/tools/pkgconf/patches/0001-Revert-main-assume-modversion-insted-of-version-if-o.patch b/tools/pkgconf/patches/0001-Revert-main-assume-modversion-insted-of-version-if-o.patch
new file mode 100644
index 0000000000..641083a606
--- /dev/null
+++ b/tools/pkgconf/patches/0001-Revert-main-assume-modversion-insted-of-version-if-o.patch
@@ -0,0 +1,48 @@
+From b1eec6b27560928fc9b111164c8abd7d5e527588 Mon Sep 17 00:00:00 2001
+From: Andre Heider <a.heider@gmail.com>
+Date: Wed, 27 Nov 2019 15:21:42 +0100
+Subject: [PATCH] Revert "main: assume --modversion insted of --version if
+ other flags or module names are provided"
+
+This reverts commit 12a0eb124cea85586e57f33c91a1e4c73459eef6.
+
+This "user friendly" behavior is actually detrimental. pkg-config is very
+often wrapped in a shell script of cross-compiling toolchains. Such wrappers
+may pass extra arguments, such as --static, (reasonably) not expecting that
+to break --version. Some build systems (meson being one example) use
+--version to determine whether pkg-config is usable. Naturally, the wrappers
+fail this test, even though they would've worked with the original pkg-config.
+
+Fixes #6
+---
+ cli/main.c | 14 ++------------
+ 1 file changed, 2 insertions(+), 12 deletions(-)
+
+diff --git a/cli/main.c b/cli/main.c
+index 563ec8f..fc698a4 100644
+--- a/cli/main.c
++++ b/cli/main.c
+@@ -1005,18 +1005,8 @@ main(int argc, char *argv[])
+ 
+ 	if ((want_flags & PKG_VERSION) == PKG_VERSION)
+ 	{
+-		if (argc > 2)
+-		{
+-			fprintf(stderr, "%s: --version specified with other options or module names, assuming --modversion.\n", argv[0]);
+-
+-			want_flags &= ~PKG_VERSION;
+-			want_flags |= PKG_MODVERSION;
+-		}
+-		else
+-		{
+-			version();
+-			return EXIT_SUCCESS;
+-		}
++		version();
++		return EXIT_SUCCESS;
+ 	}
+ 
+ 	if ((want_flags & PKG_HELP) == PKG_HELP)
+-- 
+2.24.0
+
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
