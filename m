Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9691DF2D1
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 01:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LVNfjgRNGgpJPYCrJC09lxP5D3tSBfT6eSWHN4cvm/I=; b=lziAjWvlUIFsXV
	zjVWQ7/U7AR6zmWT6AnGeDfk8zZjsIzyvFMXbyNEtWQs5xhsGZIhxQL9ZTNzfpexDP/NzYmX7I2tz
	zQiIkUbxwRaCn4W2nUXaxMPvKpv8Q4ZIIjkdGnvjIf6qrvlelUAaIWveFG7kfCIhYmxDn9Re1uzxA
	ZLNwvGaNy/NkG6QJcHVw3iTa4IMyLJ08jOk/jogRjgu021wSYiy9bwWJRE9qQCL5NKyFYfoJ579MN
	S69DQ1jRwNdbIZpanBrSpnZ/oKCwdjVeETbGjWwJuLQTnTzhiB+CKev9AiITgnQzXIVBW8PDnafDg
	xHTzuoChKVJBuEEfT+yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGuP-0000Dw-2F; Fri, 22 May 2020 23:16:57 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGuI-0000Cx-JS
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 23:16:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id x11so4024792plv.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 16:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S1d++Bpe982/2ZI5cr78SUZMe1/zRAEK+xDhPlnJQjQ=;
 b=e3f7/gRQPuYpq4DtV/2o2JZ6O8h5M/g03l9xBdHXsMxRelcvV5PHCcxc9GrMqJ4HyF
 o7OUGTISkaIj894UnPn8N/Wh+/5YyZnv2riJq84DQzdGNFQWYZOhTy7ZM1u1pIodKJJQ
 Gy+XnAvJXVIDr6u7kApXauDebQTMhndn+bVjUs8hRKGRuNrqTmVSVeN1bXT6MziMtHxD
 LNVpjRO3Pb3h32SACBcKADH1jr0eYmAKv66sbY+f9qyjvpWi0TliiBUqiepACt95MDFz
 UxsJFOEs+IyEyHCom4G7LftxEFAtyjWsg6upmWKfqjEUvXip0KoMEJKCF3TCJvwFqvFj
 Uvfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S1d++Bpe982/2ZI5cr78SUZMe1/zRAEK+xDhPlnJQjQ=;
 b=BE7/dpYvVjp58dT0sitV1GDnB5mDRun+gvgSRVDgAhb9a5P4sHgYKKlkSYQH2u9YjL
 UwN/U8bRE6CWnZZExN3oeRddTEtLKxiqRSx3b6Z0B5/Gm4Rp+9YyXBEaiY90IoDk39w5
 f6+hQ8vckllmGiyn5FgXVQjmfWL8cmgrLxnBjR4jNjiToBtRHDklZmUxA9j3zQ1mqhN8
 tcrlDn3kOFmmtxw9ls7Et9W/KyDiDhhMxhinh98BcmLA1mQi94pyIRb0RoKDyF05gER7
 fsmDvu2eBr3retovnCsBhiOXcUub/QhveGxJoMQGfPqMLKXw9swxGHpc99y++YqG0BMQ
 LFOQ==
X-Gm-Message-State: AOAM532GpaaMoY/0NZiWpT25kBd0eAYIl1gTbH89HeljpDI/z4sEBuBi
 EHfFvv6BzkQeAbs2NygsrMJfwZ9m+/I=
X-Google-Smtp-Source: ABdhPJzfM59H+3hOwTYQx/b7rTMstfuB8xdYUeX6b33WGHEHyfKc15x/bwrrxw/DjxtBWYeiG8VP/w==
X-Received: by 2002:a17:902:c411:: with SMTP id
 k17mr15963464plk.165.1590189409070; 
 Fri, 22 May 2020 16:16:49 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id go14sm7746645pjb.42.2020.05.22.16.16.48
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:16:48 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 May 2020 16:16:47 -0700
Message-Id: <20200522231647.64742-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_161650_658063_AB5D93E6 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] libconfig: remove
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

No package in base uses libconfig. Everything is in the packages feed.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libconfig/Makefile | 60 ---------------------------------
 1 file changed, 60 deletions(-)
 delete mode 100644 package/libs/libconfig/Makefile

diff --git a/package/libs/libconfig/Makefile b/package/libs/libconfig/Makefile
deleted file mode 100644
index 39fcddf082..0000000000
--- a/package/libs/libconfig/Makefile
+++ /dev/null
@@ -1,60 +0,0 @@
-#
-# Copyright (C) 2008-2012 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-include $(TOPDIR)/rules.mk
-
-PKG_NAME:=libconfig
-PKG_VERSION:=1.7.2
-PKG_RELEASE:=2
-
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_SOURCE_URL:=https://hyperrealm.github.io/libconfig/dist/
-PKG_HASH:=7c3c7a9c73ff3302084386e96f903eb62ce06953bb1666235fac74363a16fad9
-
-PKG_FIXUP:=autoreconf
-PKG_INSTALL:=1
-
-PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
-PKG_LICENSE:=LGPL-2.1+
-
-include $(INCLUDE_DIR)/package.mk
-
-define Package/libconfig
-  SECTION:=libs
-  CATEGORY:=Libraries
-  TITLE:=Configuration File Library
-  URL:=http://www.hyperrealm.com/libconfig/
-  ABI_VERSION:=11
-endef
-
-define Package/libconfig/description
- Libconfig is a simple library for manipulating structured configuration
- files. This file format is more compact and more readable than XML. And
- unlike XML, it is type-aware, so it is not necessary to do string
- parsing in application code.
-
- Libconfig is very compact -- just 38K for the stripped C shared
- library (less than one-fourth the size of the expat XML parser library)
- and 66K for the stripped C++ shared library. This makes it well-suited
- for memory-constrained systems like handheld devices.
-endef
-
-CONFIGURE_ARGS += \
-	--enable-shared \
-	--disable-static \
-	--disable-cxx
-
-define Build/InstallDev
-	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
-endef
-
-define Package/libconfig/install
-	$(INSTALL_DIR) $(1)/usr/lib
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libconfig.so.* $(1)/usr/lib/
-endef
-
-$(eval $(call BuildPackage,libconfig))
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
