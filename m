Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6F0154C4E
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 20:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dJemUI/JM1KTpzJUZe7i1CHSfODy3Whj95SP9r+9ltQ=; b=TFz/wTV3hanink
	WExtXEnEpjN5rM8ErkSyIXg7jj26TUCJgpEKQXlgxwzuUN4tdOemyczeIUYV6eNOW7YhCxEyDU9J4
	POJQldyd13c6TMhKE4NQJRQ/Yxlap7vA0JH4B8Q+0a8g1MOXNZjMrmrHb5ONYfg+SbH7L3mdvh+Sb
	B8rNdCXv/LvD/2HMSjSVOk00WNTgg1uNlKEN5+HD/5q3Dus4R8d9nqFbR1qhgaGU6ZqEq5oab3SU6
	cOzNovSmhNxFmcu+8p5irM48CSbaMPd3OfRhvIrcogG9z58lBc/T39oA1G/M0WOcvj7n1kNe8ZXM+
	apVvt3W/PUcqPKVbMmHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmuQ-0005vI-1V; Thu, 06 Feb 2020 19:33:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmuJ-0005v0-AV
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 19:33:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id u131so3236586pgc.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 11:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ujIwDu9nAyAEX1HhJYOpz1ILRVUPvag8eoV0SDwOi0=;
 b=K3luHD8ltEaiU/t0JquFYdXv9f7hBG2p0rb5oMytSC47hkOVBpd+MGequkHUmmIz/6
 RADOnbT1hSyS80zHnIyF4AMK/A8Ll80YOfCz0dEAxGMu5h4o/V3fBIWtPEOXD2Lw8TR1
 907NeyjdSkXv9pneznQ0LlWWCh5TK1h9uxUfrjF5ZK+fWYevP7nKivLJeVlqfNQwG7i4
 2UkDSShaLrJf3B73oWnCtnQm8D0wBcYEnoDO+/AMKacL5NYuaU7U6xvjpvn01SwhyDEO
 7YtNG8JX69L7cOg7zuopOmx78PS93HaRFyL+ty9YygLHaG5KY0gxK5uctbngBvatgENx
 vHaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1ujIwDu9nAyAEX1HhJYOpz1ILRVUPvag8eoV0SDwOi0=;
 b=gZEk1OpYLIpKAcfS1pvhco2cuOfnWvZSZatOlJQrtx1KYcVrchiCX7EUwQPIVfLpvo
 +072Ase8lvWYVNbUNEfqh7/QYpRh6fGZBhohevphd58nLRy4w2ytxNtXJs56+zxFxsJ/
 nILMVNYPJsdPd8owK3bWU5382MTh4qj5HtR3FTIkyNXycsB6LHRuwjDULu9d2rOqzRbU
 Ad07mUiqcgTyKqoD7nBP5IcP1z0SK26RleakENERxRmHabDfxnEb/bMEnkhBJ1taw+Fs
 nOrCQuI0Q5dpm9OYaMXjsznyP2+7vrJhNw4HDqVD+5ts5aPffeMw0P/9vxgj/KGrg8hW
 V9cw==
X-Gm-Message-State: APjAAAUA+Da0kc3f8Fi9HLYZoRE/cndG1pY3LGiAEwPAiGKQKp6oYw4J
 E7CazcZD0v1U7p+CQG0WfxvJC+WOhzg=
X-Google-Smtp-Source: APXvYqxkBH8Ju6CkDGkehW/N07DiDJ58ANdR8JkSyCYiYmkwhKOpN7iBB/44A2jroS3miau8LGHDAg==
X-Received: by 2002:a62:830c:: with SMTP id h12mr5874660pfe.162.1581017626166; 
 Thu, 06 Feb 2020 11:33:46 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id e84sm174884pfh.149.2020.02.06.11.33.44
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 11:33:45 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  6 Feb 2020 11:33:43 -0800
Message-Id: <20200206193343.23727-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_113347_364801_BDC73D76 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] include/cmake: fix compilation with a host
 subdir
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

Some packages such as libcxx do not accept being build in the same
directory, which breaks host compilation.

This commit adds the same behavior present for target builds.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 include/cmake.mk      | 4 +++-
 include/host-build.mk | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/cmake.mk b/include/cmake.mk
index 2726b83a1e..3f69d403e9 100644
--- a/include/cmake.mk
+++ b/include/cmake.mk
@@ -8,6 +8,7 @@ endif
 
 CMAKE_BINARY_DIR = $(PKG_BUILD_DIR)$(if $(CMAKE_BINARY_SUBDIR),/$(CMAKE_BINARY_SUBDIR))
 CMAKE_SOURCE_DIR = $(PKG_BUILD_DIR)$(if $(CMAKE_SOURCE_SUBDIR),/$(CMAKE_SOURCE_SUBDIR))
+HOST_CMAKE_BINARY_DIR = $(HOST_BUILD_DIR)$(if $(CMAKE_BINARY_SUBDIR),/$(CMAKE_BINARY_SUBDIR))
 HOST_CMAKE_SOURCE_DIR = $(HOST_BUILD_DIR)$(if $(CMAKE_SOURCE_SUBDIR),/$(CMAKE_SOURCE_SUBDIR))
 MAKE_PATH = $(firstword $(CMAKE_BINARY_SUBDIR) .)
 
@@ -84,7 +85,8 @@ endef
 Build/InstallDev = $(if $(CMAKE_INSTALL),$(Build/InstallDev/cmake))
 
 define Host/Configure/Default
-	(cd $(HOST_BUILD_DIR); \
+	mkdir -p $(HOST_CMAKE_BINARY_DIR)
+	(cd $(HOST_CMAKE_BINARY_DIR); \
 		CFLAGS="$(HOST_CFLAGS)" \
 		CXXFLAGS="$(HOST_CFLAGS)" \
 		LDFLAGS="$(HOST_LDFLAGS)" \
diff --git a/include/host-build.mk b/include/host-build.mk
index 9fc14241c6..1270ca393e 100644
--- a/include/host-build.mk
+++ b/include/host-build.mk
@@ -102,7 +102,7 @@ endef
 
 define Host/Compile/Default
 	+$(HOST_MAKE_VARS) \
-	$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR) \
+	$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR)/$(MAKE_PATH) \
 		$(HOST_MAKE_FLAGS) \
 		$(1)
 endef
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
