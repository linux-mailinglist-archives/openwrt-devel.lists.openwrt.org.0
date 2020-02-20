Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174431655E6
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 04:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TlojLNcxz7GGYLD2/Fr27/f/O+qTLolF17PDxXK2ns0=; b=hU1WY6gFrlqtEZ
	rMkQdbArzimSqLgXRwLIoZF0mhi9m4uJBSfHiwUIihIFPUBKajL0CdXejqtR9izwmStBZ22wo8Iy9
	UPn0i4TmmwmDqaiku9Im44d2Qc1caD9KCGpskbep1/0u8spxeUwAK5G5t2Jjzp0GFFkm21S9jTRSw
	WzChdn2P62ehF7ZMWWSBqvZu82yhSjR2Lu7YoyvkNCNaaiSDajfSwcvCXsMZPMknagEPbV26UBr4a
	BTjhOZrzzAlEgNpXHZZ85DJoC8t/2wzYxXB5DeX9Y0yrSEa2WIfO8r6goTVTAdXVBlgyFbcldHxM4
	xWoe5o3PjxA48tne9Hbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4cxB-0006JE-39; Thu, 20 Feb 2020 03:56:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4cww-0006Ie-C6
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 03:56:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so982659pll.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Feb 2020 19:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rE0qCvuNYnGoz5yAd8Vp6Fnm8+BxH+k05EyUDlIG1dI=;
 b=FAvZclD2/lqwSlRR68L2qxI4la1npTPYE0ufQf+HadswXiOrIp+Nm44fxy8cYIM9Iq
 dOn441uSdhm5qWH5VyjttBYtZpAMieREPLdOdD675T5N39z2/F9D7L0BoTUqjVCgsDHF
 OOh7Iv1t4QLn5iEgC/woOZF8tAK4mJCZnEX29jGbkKnRsUE0Rjp/mhpo7wSMWyLMr3ZS
 G/rA1slz7nKeYauGgg7jChtbyhokaHdD2Pr7BDpjpuBS50urRvS1TJOkHxI3agJkYIg3
 PpHp1sfmi/l1OdwdpD+fifPsQRoVCYohvFxKWWhKsxy+4TpRdurrlmIdwiM74TbZk43Y
 JrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rE0qCvuNYnGoz5yAd8Vp6Fnm8+BxH+k05EyUDlIG1dI=;
 b=nHTZxHAeazxS1k8rTB6i+x0nOGrNEWk6Yl3K7lmYmLk8Hw/oHJwVSTqRJJLlvp7oe6
 VOw36p9mQ7E2FZrDCDODmoKOavzWAnGIjlBkWQropuEm7cLPPjOiw+7GICZVA9n2Vsnp
 bC5+WDyxxTH4Zg7pqhk+vr19wcGZDhcS8tbDyRFXMyzztBhFZndg4qsafzlPQKX85hG3
 cPOy3VTQltopzhLtlTYZQ67990Oa7WffP8vdzECthgeLlJ0P3dQAVIt/+Wlp59/RjNi5
 jnUxKoNsYtSrU4dHX9cH9Y4HuhtyQQbzkkvleQD90QetnVm5dgjD4PFLJdAVHLGJjh25
 eG4A==
X-Gm-Message-State: APjAAAVRjWTd/aHOhfdO9VJp1c6Ct9J5Q6uiecoS1UVFIvNNHXEI7CrO
 Z23UcfTfhVwPScqhbkg1eENmZASfE5Y=
X-Google-Smtp-Source: APXvYqw21ntlMhTfhxpXtfnysdt4K0m+eC5NKswQN5Q1GC/f3HaEsFiWOmohkeCuco8oUWX54+n87w==
X-Received: by 2002:a17:90a:191a:: with SMTP id
 26mr1177545pjg.111.1582170989396; 
 Wed, 19 Feb 2020 19:56:29 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id v7sm1151084pfn.61.2020.02.19.19.56.28
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 19:56:28 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Feb 2020 19:56:27 -0800
Message-Id: <20200220035627.490891-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_195634_796948_A68B1AFD 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] uci: install from ipkg-install
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

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/system/uci/Makefile | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/package/system/uci/Makefile b/package/system/uci/Makefile
index 5c2b68f00a..d0a94ee57b 100644
--- a/package/system/uci/Makefile
+++ b/package/system/uci/Makefile
@@ -22,6 +22,7 @@ PKG_LICENSE_FILES:=
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
+CMAKE_INSTALL:=1
 PKG_BUILD_PARALLEL:=0
 
 include $(INCLUDE_DIR)/package.mk
@@ -61,29 +62,21 @@ CMAKE_OPTIONS = \
 
 define Package/libuci/install
 	$(INSTALL_DIR) $(1)/lib
-	$(CP) $(PKG_BUILD_DIR)/libuci.so* $(1)/lib/
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libuci.so* $(1)/lib/
 endef
 
 define Package/libuci-lua/install
 	$(INSTALL_DIR) $(1)/usr/lib/lua
-	$(CP) $(PKG_BUILD_DIR)/lua/uci.so $(1)/usr/lib/lua/
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lua/uci.so $(1)/usr/lib/lua/
 endef
 
 define Package/uci/install
 	$(INSTALL_DIR) $(1)/etc/uci-defaults
 	$(INSTALL_DIR) $(1)/sbin
-	$(INSTALL_BIN) $(PKG_BUILD_DIR)/uci $(1)/sbin/
+	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/uci $(1)/sbin/
 	$(CP) ./files/* $(1)/
 endef
 
-define Build/InstallDev
-	$(INSTALL_DIR) $(1)/usr/include
-	$(CP) $(PKG_BUILD_DIR)/uci{,_config,_blob,map}.h $(1)/usr/include
-	$(INSTALL_DIR) $(1)/usr/lib
-	$(CP) $(PKG_BUILD_DIR)/libuci.so* $(1)/usr/lib
-	$(CP) $(PKG_BUILD_DIR)/libucimap.a $(1)/usr/lib
-endef
-
 $(eval $(call BuildPackage,uci))
 $(eval $(call BuildPackage,libuci))
 $(eval $(call BuildPackage,libuci-lua))
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
