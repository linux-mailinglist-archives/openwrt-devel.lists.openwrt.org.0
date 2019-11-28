Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A2210CED6
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 20:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qz+uOWzp1EerEBtgrhxfj1Q8n98nB6iD1G41hCcJFUg=; b=LoZdvAtHF9z4qIVTNNpVzpXQtM
	DgZRQy5jgbUwSdCI+mhXNguVIqjDQoo8M7HX6EvV21ZMJh/orylr/MMbJuPuKPPtxJK919MLzPm37
	STC13o6KT9aL6f8KRJKE9CPPIYwNe0l0IxYrru9rgAjLROytIX2mcg6j65rs6Z4KBboSvLnB2RIxg
	XMmAEK+byG++flMKn7EkVgxKkXsAXIP0/qpihwnUq9OkVVmoDISgrkkoxGvyC4ux70VD8F0xsT7n/
	XLOqRPA7vzHs6LKaPycbMTfH/00Fccrkm1WdXAq7OyiL8Q+7gLTql/8o4veX3SDWBcR+QTSwU1MKt
	Gp39xedA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaPKo-00008o-Nw; Thu, 28 Nov 2019 19:20:14 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaPKF-00085d-12
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 19:19:41 +0000
Received: by mail-pf1-x42e.google.com with SMTP id y206so4895510pfb.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 11:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=QofphPvxg5IfNElsfv5gqQU7Dr79fkfAin8t2VGS8LY=;
 b=LhnU37VZvodhQpUBJgYFEzgacC6VfdiiS/5nxFP2tVbDzmjenn5NRC8zVb8C0MkEY8
 5rrN+y2v+yM1veejH98r1uyBOzgqXEQdbNb5WloVXfEimuDOWgNnu6P4dRlA1Lmtx1mm
 rAyPgR/6p3EYl52cSIOG/pkBM299R4N91fOIuTHnwR3/1wK6BlutLaPeKg0j0vi2Brg+
 yP7EkWFfNkW9aadXYRsHHoCYJGLa59wX+jbAsRSFQNB/zSEVd/xOvFQXpANCxZVVHRbr
 baVoEUdPQq5G5Bod21rquHhKiEm77TEhoj07YSLgJJurZB2lArZl3TaLTotvTzk1xqpr
 +yUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QofphPvxg5IfNElsfv5gqQU7Dr79fkfAin8t2VGS8LY=;
 b=lgw5sbzeI24vUvElQRScBywbkjpG2BO/uNKT+gokmZ2YYoO+rerqvTsCp/pGLT/jXu
 HCCE/OL24pf8X8oCegwaSxFIHY09zYu/DGic32xT5VRabolTSxu94fk3bazVKWbz8XsJ
 lgAflWJMk6DwZGG4RtSG+QLiCpvmDVVAN0uNYh88L1D/yQnIUM+7si36C9L+QYQ+8G8E
 f53phET3siBYxXDWWuGbR14+fIGaaQnwI4SxU7WAR/sF4/TMR6wRjea7UZw1emQVIUJG
 TxM1BgOFV0hD6iFY5M/hs9xMDp6842rAJDOSJRPdX00ohuVN8EGJWslrsdjHM4Wo2CT5
 0cNQ==
X-Gm-Message-State: APjAAAUCQMVIosz/VeUQDFebbN3zKKUDVVTvPW888mnLQQHaracTj2nJ
 ljcuqeynF8nDAMo+H99HLPG+u8Iw/zs=
X-Google-Smtp-Source: APXvYqxPhBPnpOz+VUJ9io9T+LzcIqS/7dd/zk2F2rypY91chSICAoLJAiHD5MmL/swIrvBswj+2Fw==
X-Received: by 2002:a63:7c03:: with SMTP id x3mr13027861pgc.382.1574968776581; 
 Thu, 28 Nov 2019 11:19:36 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id x197sm238594pfc.1.2019.11.28.11.19.35
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 11:19:35 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 Nov 2019 11:19:33 -0800
Message-Id: <20191128191933.5421-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128191933.5421-1-rosenp@gmail.com>
References: <20191128191933.5421-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_111939_066869_9AA8D9EE 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv2 3/3] tools/pkgconf: Add patch to fix meson
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
