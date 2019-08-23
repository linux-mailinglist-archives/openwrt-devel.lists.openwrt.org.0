Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55E39B184
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 16:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u5mD7ehzhjZ8Q74TqZKeEcwSaxljQS0Lucjo3AAn4TA=; b=dP9cQ7ukjLBvzC
	ebz15Ma2gL8xlVLB9Otw3dYV8+87h/VmJ6RaRbzS2zAuvOe42O+Dy/yg28al8D7G+T7oZpY+jopGy
	7ECmZxwyXUDDlLKO7DUUj3K6l9IJQOjF7ImrKvB9P6EFY5ya5uuPlZry6gEp3ZKLulsCYTEWkP6iK
	YL27OyD+OHpez/1vVj09ieN0QhmF9n4Sf7H1SFaJNxLAv9n31zK+MZF5VKjnwaXONvKYw//MH98if
	GKcMmFUYw2hUXzcZYMiomPkRZzgY+laEnW9wWNxDV8809HQ3VacdVFVlCVoF8s7LoIQ0WvFdRqG8o
	GWnwRpTKs9gqZxwIsvmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1A8z-0006C5-0h; Fri, 23 Aug 2019 14:02:21 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1A8t-0006Bb-Cr
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 14:02:16 +0000
Received: by mail-lf1-x143.google.com with SMTP id b17so7224462lff.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 07:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V1Y+bkWo5D3GlvqzjH/Z83uekas3f6VyFAi0l2ejRus=;
 b=nWN/0qn+MfebmJwqpbv/fwJgBFc4/CoF2VCfR696/9FGCNI0ieZYNg2O4gaGH2f4X+
 k4OlLSPzafrsRZQ6VyO9bbPWxRTe/ya4LRwkBD3D4CNektdhAW3HMcoDqo33nISAcdZo
 eimKHl0nrvr92jKMdczBF0c5pbE/GPn+Xj57Ap7D0mRRo08FlwQJaI4+DLQChp+B8LEs
 KhAddVL/ZWR27Smw0VznkaKeQRdWCpq7/bQVvXasfG218cnzdw/ncjMmywmiCkANaE3j
 L2SFrk61ng3xOoL4NMCFQcdItAiUAr0qEBVXbJcACgFr3nf3fJbsL8p9b/lZ7HIXS196
 DcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=V1Y+bkWo5D3GlvqzjH/Z83uekas3f6VyFAi0l2ejRus=;
 b=gRL4EWSi+4w7fWgKeE1dIzgvrqyxcXe/8Ek/0z2ef+cOTG1wZBKMbfb1xk9l+Gpxs5
 jt8jfvuInlulEE+LjyxdPZEFVQxzneoTIJm4KlLEX/OySaKEAJwgz4v/6ZLBlur1eXCc
 LQfcD+0bwaE50Z/ZBD7iS+lsi9nwQA5qwudSqmUVymA69PVIJFLk8ck0oIpGEhEJ5a4W
 W7CQzZ515MNyLbbdxicqEpRGCNg33xJau3bSowodl7fmihJoE86ciZwoCvn0dZWIXFDG
 CKwyJYibzts86hvdyICnQaGcJ9Df9G3wmSO3yKP0DNkyE6ux8VjZV7/aB2nr6VcyjUfv
 3QCQ==
X-Gm-Message-State: APjAAAWM/NjL5AdQMS67X7TBTamzTUm7zuHfSPKtl0mmJ+IUrCbyGJRg
 xvPIrPGx4UjCtSVdk2YenkM=
X-Google-Smtp-Source: APXvYqzTQaeGcGBcFHQelxP7bVvMJd5UhZhzhW4ZgtbrpzjPfZcBsr4HRcCyS5AU7r+y/WxEXzp22w==
X-Received: by 2002:a19:6f09:: with SMTP id k9mr3035176lfc.102.1566568933067; 
 Fri, 23 Aug 2019 07:02:13 -0700 (PDT)
Received: from dk.user.kdf.lan ([176.59.66.109])
 by smtp.gmail.com with ESMTPSA id k4sm639009ljb.20.2019.08.23.07.02.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 07:02:11 -0700 (PDT)
From: Denis Kalashnikov <denis281089@gmail.com>
To: Matti Laakso <malaakso@elisanet.fi>
Date: Fri, 23 Aug 2019 16:57:49 +0300
Message-Id: <20190823135749.32764-1-denis281089@gmail.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_070215_464112_89055D3E 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (denis281089[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (denis281089[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] uqmi: separate into libuqmi library and
 uqmi util itself
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
Cc: openwrt-devel@lists.openwrt.org, Denis Kalashnikov <denis281089@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It is needed to reuse qmi code, e.g. in a modem manager util
which is useful on routers with several cell modems.

Signed-off-by: Denis Kalashnikov <denis281089@gmail.com>

---
 package/network/utils/uqmi/Makefile           | 25 +++++++++-
 .../utils/uqmi/patches/10000-libuqmi.patch    | 46 +++++++++++++++++++
 2 files changed, 70 insertions(+), 1 deletion(-)
 create mode 100644 package/network/utils/uqmi/patches/10000-libuqmi.patch

diff --git a/package/network/utils/uqmi/Makefile b/package/network/utils/uqmi/Makefile
index dee4bd051e..49386c9f7a 100644
--- a/package/network/utils/uqmi/Makefile
+++ b/package/network/utils/uqmi/Makefile
@@ -24,7 +24,7 @@ define Package/uqmi
   SECTION:=net
   CATEGORY:=Network
   SUBMENU:=WWAN
-  DEPENDS:=+libubox +libblobmsg-json +kmod-usb-net +kmod-usb-net-qmi-wwan +wwan
+  DEPENDS:=+libubox +libblobmsg-json +kmod-usb-net +kmod-usb-net-qmi-wwan +wwan +libuqmi
   TITLE:=Control utility for mobile broadband modems
 endef
 
@@ -33,6 +33,17 @@ define Package/uqmi/description
   the QMI-protocol.
 endef
 
+define Package/libuqmi
+  SECTION:=libs
+  CATEGORY:=Libraries
+  DEPENDS:=+libubox +kmod-usb-net +kmod-usb-net-qmi-wwan +wwan
+  TITLE:=Control library for mobile broadband modems
+endef
+
+define Package/libuqmi/description
+ Shared library for controlling mobile broadband modems using the QMI-protocol.
+endef
+
 TARGET_CFLAGS += \
 	-I$(STAGING_DIR)/usr/include -ffunction-sections -fdata-sections
 
@@ -41,10 +52,22 @@ TARGET_LDFLAGS += -Wl,--gc-sections
 CMAKE_OPTIONS += \
 	-DDEBUG=1
 
+define Build/InstallDev
+	$(INSTALL_DIR) $(STAGING_DIR)/usr/include/libuqmi
+	$(CP) $(PKG_BUILD_DIR)/*.h $(STAGING_DIR)/usr/include/libuqmi
+	$(CP) $(PKG_BUILD_DIR)/libuqmi.so $(STAGING_DIR)/usr/lib
+endef
+
 define Package/uqmi/install
 	$(INSTALL_DIR) $(1)/sbin
 	$(INSTALL_BIN) $(PKG_BUILD_DIR)/uqmi $(1)/sbin/
 	$(CP) ./files/* $(1)/
 endef
 
+define Package/libuqmi/install
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_BUILD_DIR)/libuqmi.so $(1)/usr/lib
+endef
+
 $(eval $(call BuildPackage,uqmi))
+$(eval $(call BuildPackage,libuqmi))
diff --git a/package/network/utils/uqmi/patches/10000-libuqmi.patch b/package/network/utils/uqmi/patches/10000-libuqmi.patch
new file mode 100644
index 0000000000..b17aecb078
--- /dev/null
+++ b/package/network/utils/uqmi/patches/10000-libuqmi.patch
@@ -0,0 +1,46 @@
+Index: uqmi-2019-06-27-1965c713/CMakeLists.txt
+===================================================================
+--- uqmi-2019-06-27-1965c713.orig/CMakeLists.txt
++++ uqmi-2019-06-27-1965c713/CMakeLists.txt
+@@ -8,7 +8,8 @@ ADD_DEFINITIONS(-Os -ggdb -Wall -Werror
+ 
+ SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
+ 
+-SET(SOURCES main.c dev.c commands.c qmi-message.c mbim.c)
++SET(SOURCES main.c commands.c)
++SET(LIB_SOURCES dev.c qmi-message.c mbim.c)
+ 
+ FIND_PATH(ubox_include_dir libubox/usock.h)
+ FIND_PATH(blobmsg_json_include_dir libubox/blobmsg_json.h)
+@@ -61,11 +62,15 @@ ADD_CUSTOM_COMMAND(
+ ADD_CUSTOM_TARGET(gen-errors DEPENDS qmi-errors.c)
+ ADD_CUSTOM_TARGET(gen-headers DEPENDS ${service_headers})
+ 
+-ADD_EXECUTABLE(uqmi ${SOURCES} ${service_sources})
++ADD_LIBRARY(uqmi SHARED ${LIB_SOURCES} ${service_sources})
+ ADD_DEPENDENCIES(uqmi gen-headers gen-errors)
+ 
+-TARGET_LINK_LIBRARIES(uqmi ${LIBS})
++ADD_EXECUTABLE(uqmi_bin ${SOURCES})
++TARGET_LINK_LIBRARIES(uqmi_bin ${LIBS} uqmi)
++SET_TARGET_PROPERTIES(uqmi_bin PROPERTIES OUTPUT_NAME uqmi)
+ 
+-INSTALL(TARGETS uqmi
++INSTALL(TARGETS uqmi_bin
+ 	RUNTIME DESTINATION sbin
+ )
++
++INSTALL(TARGETS uqmi LIBRARY DESTINATION /usr/lib)
+Index: uqmi-2019-06-27-1965c713/dev.c
+===================================================================
+--- uqmi-2019-06-27-1965c713.orig/dev.c
++++ uqmi-2019-06-27-1965c713/dev.c
+@@ -353,8 +353,6 @@ int qmi_device_open(struct qmi_dev *qmi,
+ 	struct ustream *us = &qmi->sf.stream;
+ 	int fd;
+ 
+-	uloop_init();
+-
+ 	fd = open(path, O_RDWR | O_EXCL | O_NONBLOCK | O_NOCTTY);
+ 	if (fd < 0)
+ 		return -1;
-- 
2.19.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
