Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C45D6F5F
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 08:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aYbTZ7hJy4XsahUkGfgZtZVv+pryc/QcY0pR+tnykGU=; b=o1mIXKJ5G7fNwa
	jh2SUOvDDedqKpzRPc5qJ04uUVPcqOf98yEG7JwwdqyJuaOU4yNmuRY8E02t8omBPLLB5b+Rty4m2
	7af9Xi/Zwr9IC0F8cD4OGeeuQy3Bddv4Bb/FlxTphHGTkxSPjr0hSoxLdKOvXtZMsbllB7/fgmo8a
	VLu3EMfJ6iBSxE9HmtJohDyR0bvU8aujzLvL96c3QnZ4koRP+4x0b83azZ+A25vj84+BvYPGRVP4c
	xXFOrHO8CXfbrGeLi5zxF8brqOfUxAQOnTEISFnlPOJFsJuSN2nep7iGQUnucNIwaGPmLR8sgUDYT
	jAqkyHowMMDQ8+9xUXxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKFs8-0006Eb-Nj; Tue, 15 Oct 2019 05:59:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKFs1-0006E0-8E
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 05:59:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id w3so4531277pgt.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 14 Oct 2019 22:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=NIQ1tDVZvPZRGrGV3BF41M/+TQsw1T7IepVU8stxiR0=;
 b=kcbKbGuMoHs/6tRCdNuU33WhZf4QNm/udN52bWIcrgN/M46Iz4gvLGeHwjiYZz6PR2
 +cf80tGkS1OPfiN5uUGu8RI2y1oB+LjVgM+hR6uvmwCYBHff2VL9Rw+jZTGWB4yyqB2t
 nwwYN936lu+S22/8GIdvjLZzDyOfUzkfpxh5AaPF+ZI2ClNtGtesK2WH43qX+4o6zrny
 rW7Fbu4J8vuD/nDRZfZn3v/JKJUyR/gVTY/Z+bT7xWznqP5Xf1WVZNkCZvfxm1L7miOn
 TFIHTaACx0BHmWu8zddoVvecMnAga4kEOYgGKAyYv7LcvXmZg2FINQnbHWtvQSad9/QM
 qhbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=NIQ1tDVZvPZRGrGV3BF41M/+TQsw1T7IepVU8stxiR0=;
 b=e52NcH2xD6n5ptzINyMjcusuKYKqFS+4E3lQlnf1SyuZmFQGfLUD8fewebl1mb+srD
 u4d2J5at/C5Dux9JQo8DMsUI66+dnji0vsA0hj/pDEMIH5O60E4h6ZjSvwz7GfVeIDvr
 VerHm10KhBV9pXBsi0vRqvsNCO0sHMHtuADxnWb6tNJHrUkr1Qr08j3sS/b8+azSdj2Q
 QjfOprMCwizbaRpU18XbmFXIRhJPBTXDIloMrAJkgjJY0us46L0ReSjQMjeDQygg3qsq
 9+/3UFG77qtaYfUuI7RBQa5HSj4B24Zyd3YX1BsOZ43p/RimxWLW6sSxhpCX/diH/Yt/
 7YSg==
X-Gm-Message-State: APjAAAUQ4BU2lH2vLvdcm9xiaXN7iM60+ZNDYk6YrnVdYKz3FrbIcWnt
 gakXxF9J8pvHs6jvkck9rfXPP3Lm
X-Google-Smtp-Source: APXvYqwjxB/7bKmuzw9x/juMJZ4rCihCryyfKSsbBt6zUDuUk85cFEl+bdTgj8mm4BEnKGb55SOxcA==
X-Received: by 2002:a17:90a:c505:: with SMTP id
 k5mr38660370pjt.84.1571119183136; 
 Mon, 14 Oct 2019 22:59:43 -0700 (PDT)
Received: from DESKTOP-VIRSTQA.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id a20sm3129189pjs.30.2019.10.14.22.59.42
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 22:59:42 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 14 Oct 2019 22:59:42 -0700
Message-Id: <20191015055942.2560-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_225945_347392_E78B724B 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] lua: Fix linking under glibc
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

Compilation of liblua itself works, but when other packages link against
it, the linker starts throwing undefined references to a bunch of math
functions in libm.

First discovered in a failed attempt to transition a package to uClibc++.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/lua/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/utils/lua/Makefile b/package/utils/lua/Makefile
index e376e8c472..0421abc301 100644
--- a/package/utils/lua/Makefile
+++ b/package/utils/lua/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=lua
 PKG_VERSION:=5.1.5
-PKG_RELEASE:=6
+PKG_RELEASE:=7
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=http://www.lua.org/ftp/ \
@@ -99,7 +99,7 @@ define Build/Compile
 		RANLIB="$(TARGET_CROSS)ranlib" \
 		INSTALL_ROOT=/usr \
 		CFLAGS="$(TARGET_CPPFLAGS) $(TARGET_CFLAGS)" \
-		MYLDFLAGS="$(TARGET_LDFLAGS)" \
+		MYLDFLAGS="$(TARGET_LDFLAGS) $(if $(CONFIG_USE_GLIBC),-lm)" \
 		PKG_VERSION=$(PKG_VERSION) \
 		linux
 	rm -rf $(PKG_INSTALL_DIR)
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
