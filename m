Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8F2ED0AB
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 22:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NgbbQv2U81Fons+h/RVbO6GqOwADedzLitaBvppAgSk=; b=ETZpfTmFvp1uaL
	JrdMVFytTcGm8FekJ3f0hNIi+2kJ1EZrRjSmqwpdgCA6HujvNL68Lbv5j17W3D+yoj6w1UPDmOSXo
	N9eeecnsS06nSEB8BpuvM1rkLK4CGHch5sznwMGWCswVajRXvkUQla/HyOFhAyhX6NJmWzb4qUwXk
	X9He28r7V/gsCpReEoTcdrXA8nT/lWIFcCrJxXI1QD5RPUc16lRXjO2ifdzqhd6c/1Jme8B+9tlqr
	ZgeHNZpWdW756PABicZ+TV+xP/Npuqx1I3QdjKNrCmoM6fl0lkoBfb/FeM4Grm29XdwlUpQhcheXV
	cZ41kgUcTHDwaPcP2LOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR15d-0006Gf-QJ; Sat, 02 Nov 2019 21:37:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR15U-0006G5-C5
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 21:37:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id z4so3391466pfn.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 14:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=vlHjWlaeGFSN9Kkri/ctjTjtsby6YBqTsSq5uMZKUeo=;
 b=tROh6+FX6n9XeJl9Mt2qhrO3Eh+Vi3/nl1hoXVl7kHsX3W4xpqPEZ9AYX3ozBM1BLM
 OQw7B5BwlizVpE4cmb5mV4XtP6dVf7P0eeLBZwSqkVZxDMYut5LcDvJr6qonwufEq8wi
 lYRygh0GL8HWfCSyGp7aqEof3xysUYruMrLUAcaLosLw38yHDJiDMz58KJbxY5oKn4hN
 yNWOih3i0YOICaBO+sZgpE3pONz/IS1CoO7OyCC5PS9XljWv+B5DpyW/r+0KmjUOsQmW
 lGhMJnaNTdacITk0wVO3eynu29sEe+YX0XOl3aopI4GmYj9OX2uu82rOv32YneWiXRt6
 AAMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=vlHjWlaeGFSN9Kkri/ctjTjtsby6YBqTsSq5uMZKUeo=;
 b=T+k2Ij5FmNlybO33wLyUNXYfeNXmqEfpS7/qphtoQbnA7Z3LoHiQxfjwF/Ng258JBQ
 2J0Jm9hMTIVnJ9Qt14VIHSXpaTICXNcbcvFZBVuGp85CgaHSyoD5dC50rYSXuvZx+vox
 qQW8jSY0FIlgIxbVlZvMasbAzUyko53b7Ov2YcBWHrEXithOPE29/XihOMUKTpLrcy1J
 FAXNF18IU12l4gWcWTv7jfkj/Zafn+pVgqBvTO++3QPBcquiKdT7qmEskBXqd7zGwzw5
 OzYhZ8O2VQBA3OUmq/lw0coX+4QxAi9OhmkgzN0C9PXf15q7O2Dq0MjmR5nY7MIxpgD6
 BAMw==
X-Gm-Message-State: APjAAAWcgth3cQnV0NFoKriBmJWvfaZ+HlZxUoMmbZpLGzSGEx0WxpA2
 SFSe2CSL5BH1g2LQGAzVCaVniarZ+Go=
X-Google-Smtp-Source: APXvYqxRG9a/Ds6/JAIJwjqJlBS+iakAsTRJQieNsw+Rg5RsYhhQqw7NGOuMqAJxWSfeHHaPl4hweQ==
X-Received: by 2002:a63:907:: with SMTP id 7mr2714962pgj.256.1572730650393;
 Sat, 02 Nov 2019 14:37:30 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-2-23.ca.astound.net.
 [69.42.2.23])
 by smtp.gmail.com with ESMTPSA id k20sm10197478pfi.80.2019.11.02.14.37.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 14:37:29 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  2 Nov 2019 14:37:26 -0700
Message-Id: <20191102213726.248-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_143736_438054_1B8AF7D2 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] libevent2: Fix pkgconfig directories
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

includedir and libdir are set to /usr/include and /usr/lib . This breaks
compilation with packages such as tmux that use pkgconfig to find libevent

Also added PKG_LICENSE_FILES.

Simplified the InstallDev section by using cmake.mk's default rule.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libevent2/Makefile | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/package/libs/libevent2/Makefile b/package/libs/libevent2/Makefile
index 687f1b93a7..b949c9f9d6 100644
--- a/package/libs/libevent2/Makefile
+++ b/package/libs/libevent2/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libevent2
 PKG_VERSION:=2.1.11
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=libevent-$(PKG_VERSION)-stable.tar.gz
 PKG_SOURCE_URL:=https://github.com/libevent/libevent/releases/download/release-$(PKG_VERSION)-stable
@@ -18,6 +18,7 @@ PKG_BUILD_DIR:=$(BUILD_DIR)/libevent-$(PKG_VERSION)-stable
 
 PKG_MAINTAINER:=Jo-Philipp Wich <jo@mein.io>
 PKG_LICENSE:=BSD-3-Clause
+PKG_LICENSE_FILES:=LICENSE
 PKG_CPE_ID:=cpe:/a:libevent_project:libevent
 
 PKG_CONFIG_DEPENDS:= \
@@ -124,13 +125,9 @@ CMAKE_OPTIONS += \
 	-DBUILD_TESTING:BOOL=OFF
 
 define Build/InstallDev
-	$(INSTALL_DIR) $(1)/usr/include
-	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
-	$(INSTALL_DIR) $(1)/usr/lib
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libevent*.{a,so}* $(1)/usr/lib/
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cmake $(1)/usr/lib/
-	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libevent*.pc $(1)/usr/lib/pkgconfig/
+	$(call Build/InstallDev/cmake,$(1))
+	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libevent*.pc
+	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libevent*.pc
 endef
 
 define Package/libevent2/install
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
