Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54309F664
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 00:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ASp0skQ09xgQDej2iXk13nd5SIzTy6cT9DN3kvK7Z8A=; b=QDq3aiC5c/93Zsr+JVTpnLWUR9
	avv7Hy2svIlToZM0MDuMib25cbdlhnGbncuBzGN+cOFVfcdTX36tRPU8OzQd8y/IWDIqjofrqza9k
	F97qF16dH5arJjj1Hyk+vmm+vGs/ZZKzGedNqStr5eKrd//F/tY+ouvrsH5uuRufXRT2aY2VMWWHV
	YmwrKMuSa/iXZiSl1pCaGDwedMjDgyGvnCsSlEaYMsveWJ2+vZlSdVx/LX6xNLYBQ7aHs8pwUROp5
	WGdAJ95MNVXuP+M4rBgMx/W9Yd2QUm/gfv/v3y4cPyuJ0ioK/3YOtHBby/AACxPybokLAS7UdWMhm
	Fi/k2kYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kHf-00027b-JZ; Tue, 27 Aug 2019 22:49:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kHI-0001wI-1G
 for openwrt-devel@lists.openwrt.org; Tue, 27 Aug 2019 22:49:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id m3so249134pgv.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 27 Aug 2019 15:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=1iahf8kQTF5jklP7RMYVUDWo4c1hbg5QDpkDIKR5PTU=;
 b=FggKRKYZ3AhsbTJm9U5vdFuGkO6RXYjVkrC50z+MKGz3kE+QIrGg+UVY6kfP5ukB5/
 /m0+IwxJXjpMxWTp9R6vEkeD7hY8S6HLoqnT8ObfT64XuviS5l4G9ZZptYUGNkzkeOM8
 +whD1igaElGR949674JO7FBxXhP2QsUoTm8xw9OtrD6iElJNXQr6yC6vmv8gm1YCQV8E
 5AsJZUOCzmuidyZ9V9x15iuJ8ImP37CcJ05BQKMkLRssva2U5iBDGkmfh5F4xaESswe9
 HB1U4I3p58fDfSUp9I7lo6a0SBri6TYqrMZb34zD66c2cUsvl0DVK9zgLwLg/2obWqw8
 i2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=1iahf8kQTF5jklP7RMYVUDWo4c1hbg5QDpkDIKR5PTU=;
 b=IfFry+/4tFcCO9efxxDfWk3wZvA9nhSrfESLSM5k4dg7ktuzW/ISmSR7J0jEVHbcax
 8a+oWZ09x8oHkAbzohgDhPCXp1fXswpq1hjsQ60kwgElb5xdZWKMlNPj43LbylqEm9HS
 MEy3CLFGljziZHh9qVZ/irDfKrXLjdItQN6Cec9Z/4n3rM3EWXC0nSGVVPAyKBGs0z97
 d2QZZITYLVs6/BOxs3Gd0MPPwAXi4juy2Vv0/r5TE8ItXSn06JhPis0yuDIUvMkBaKth
 d4of3iDYHFwNHBi1z3T6wagODPMY00YZLo6XGtHkTjpsQvUZUl65XwFKJ0+dP0ynVVPQ
 jshw==
X-Gm-Message-State: APjAAAUf5/1R7BpQvniRmqq7rLsNlmElJ7FdhKUoc+ovamDvtmiVibdO
 wW7t7nvHsJO/UQ1Eoh25OZLRysyKGKw=
X-Google-Smtp-Source: APXvYqznG9Hx1dKmA4hdgeXqmGvKolavwMTZSo5SgvLSluvcN6byPvYgk4uvdEHz9ddsvgCHLUhw/g==
X-Received: by 2002:a17:90a:858a:: with SMTP id
 m10mr1082750pjn.129.1566946164977; 
 Tue, 27 Aug 2019 15:49:24 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id d2sm218733pjg.19.2019.08.27.15.49.24
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:49:24 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 27 Aug 2019 15:49:22 -0700
Message-Id: <20190827224922.31226-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190827224922.31226-1-rosenp@gmail.com>
References: <20190827224922.31226-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_154928_074675_E26066D8 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] libnfnetlink: Avoid passing both -fPIC
 and -fpic
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

Instead, instruct the configure script to use $(FPIC) only.

Mixing -fPIC and -fpic can cause issues on some platforms like PPC.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libnfnetlink/Makefile | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/package/libs/libnfnetlink/Makefile b/package/libs/libnfnetlink/Makefile
index cc797e6e2d..7d65d63857 100644
--- a/package/libs/libnfnetlink/Makefile
+++ b/package/libs/libnfnetlink/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libnfnetlink
 PKG_VERSION:=1.0.1
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:= \
@@ -40,12 +40,13 @@ define Package/libnfnetlink/description
  and/or management tools in userspace.
 endef
 
-TARGET_CFLAGS += $(FPIC)
-
 CONFIGURE_ARGS += \
 	--enable-static \
 	--enable-shared
 
+CONFIGURE_VARS += \
+	lt_prog_compiler_pic=$(FPIC)
+
 define Build/InstallDev
 	$(INSTALL_DIR) $(1)/usr/include/libnfnetlink
 	$(CP) \
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
