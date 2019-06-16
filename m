Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C5947469
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 13:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o9t0ZObwzSHpTrajOYmG4qFTmYsPSCG9bNgBVTbn9ss=; b=klpQTxWU/ZG6Bs
	eljhFFsTL19jVBvoNO3YYP4RD+sRbg5H8KO+RlKFKrPrKWlP5nGevE2njxBRwWYCXrJDgv2NWbWbv
	ThzCEmwzz9dECJ6gBcaUy4zAqCZELk/v+J6kpqkFinDOpfTrE9HT40P17lah2phxZ6LWabcYBedJD
	k8I2WyDJ5abpee25OJvtZVt+4GclGrOHyqFiaGRg5XnzFecY0DahYJoEOdji8OK8wYxlr5vX/jAMp
	z03VbFvwNc/RZWc/jBBbK//ZklfAoogcHo5JjDb/xFbwNmINflsZb7KRufaCIP+ruzq6MjGwpaKBt
	SyEbjunld29ZFsG3JSJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcTll-0005xd-L5; Sun, 16 Jun 2019 11:56:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcTlZ-0005xG-ON
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 11:56:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so6295897wmj.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 04:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lMe+A6zJLt8KFq9kZqFLoeSKj2OzG6ZBbtmvN7cJD2E=;
 b=Lxxx6UMcym64KTcmVwRBJfLYSyq36RlmYHEmAj4y7+Z5WBbIAaRuDWA9KgYAb9xF0b
 is+NXz4hvSvG/IezuvOyAuWj6IChmKe9840ixWxjuYCn4kw08xO1ZebdTxUf4osF7Tff
 wcl+dQclsS5j8tt0Y1DbssMQ8bIm1Yqegkm+CICL/+POmXoiDPFkRjfV+x53tD+5NKcd
 0FC9qRfYxm3nqmSqLRtkYlIUYHHlzMZCnL0xgBsPPsoLmvqrbeO5/xnYt68yiXLXrnHM
 usqGe9dS9Qm8flmEeom7suRzaXLzbV71ai+ZfXXFuTEEPNsAUMsgP/vglVOJHlvveVCu
 52Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lMe+A6zJLt8KFq9kZqFLoeSKj2OzG6ZBbtmvN7cJD2E=;
 b=eJZTUV1N4oZQeugreplgq0Bf3IslksQSEVT2vlltr2Vt/jPjaM4a8tuu3ldKguPna3
 ZiaYUUBRYYUdICKMUUlGsq067cGYY5ZyGKBX9PeQoRIwojZty6yHmhjK4eb30w6ZJAAJ
 weRRy4lKXUbO9Mb6+p3ErrZE17cX9VkZePMjFVZ8oFDEqvx0/nqu0sfd7loIqA/x157I
 NaQN2KWBURuIBhYuV9tZXMn9Q2x4yAs6m1OWbT7KOP0ySKRCxjh3THrZRDuuceCDpkpd
 PvJflGy57yg9wXr8r19yOpfhOze3NdDQIiDkS+7k1Y2BVOTddmmQfKGWRqSsTKHqETnF
 VKEg==
X-Gm-Message-State: APjAAAUMBqSLS2WV1hNGijkDhojtGqlkJR2BeQ0u3FCzNdcEKaYLt4SW
 1tdHJXnutd5TayplDy+HtKFiYU6K
X-Google-Smtp-Source: APXvYqxtjV0ZRev+jYpWUSzDcZfGHj8HvdJPAAuDKwKvpSlAfuf15VVPhjLFRpQZ+E7/7IN/OTas+w==
X-Received: by 2002:a7b:cf32:: with SMTP id m18mr15321441wmg.27.1560686166651; 
 Sun, 16 Jun 2019 04:56:06 -0700 (PDT)
Received: from debian64.daheim (pD9E29820.dip0.t-ipconnect.de.
 [217.226.152.32])
 by smtp.gmail.com with ESMTPSA id 17sm6920972wmx.47.2019.06.16.04.56.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 04:56:06 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>) id 1hcTlV-0001pW-DA
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 13:56:05 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 16 Jun 2019 13:56:05 +0200
Message-Id: <20190616115605.6992-1-chunkeey@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_045609_818061_17148456 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] phytool: add phytool utility
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

From the README.md:

phytool is a Linux MDIO register access utility.

Usage:

phytool read  IFACE/ADDR/REG
phytool write IFACE/ADDR/REG <0-0xffff>
phytool print IFACE/ADDR[/REG]

where

ADDR := C22 | C45
C22  := <0-0x1f>
C45  := <0-0x1f>:<0-0x1f>
REG  := <0-0x1f>

Note: Not all MDIO drivers support the port:device
      Clause 45 address format.

The read and write commands are simple register level accessors.
The print command will pretty-print a register. When using the
print command, the register is optional. If left out, the most
common registers will be shown.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 package/network/utils/phytool/Makefile | 46 ++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 package/network/utils/phytool/Makefile

diff --git a/package/network/utils/phytool/Makefile b/package/network/utils/phytool/Makefile
new file mode 100644
index 0000000000..b971c1ad13
--- /dev/null
+++ b/package/network/utils/phytool/Makefile
@@ -0,0 +1,46 @@
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=phytool
+PKG_VERSION:=2
+PKG_RELEASE:=1
+
+PKG_RELEASE=$(PKG_SOURCE_VERSION)
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
+PKG_SOURCE_URL:=https://github.com/wkz/phytool/releases/download/v$(PKG_VERSION)
+PKG_HASH:=9901a14e8c6af02b7333c60b21ff81f50620e8326d54827185e5617ff9b11d21
+
+PKG_LICENSE:=GPL-2.0+
+PKG_LICENSE_FILES:=LICENSE
+
+PKG_MAINTAINER:=Christian Lamparter <chunkeey@gmail.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/phytool
+  SECTION:=net
+  CATEGORY:=Utilities
+  TITLE:=phytool Linux MDIO register access
+  URL:=https://github.com/wkz/phytool.git
+endef
+
+define Package/phytool/description
+   Linux MDIO register access
+endef
+
+define Build/Configure
+endef
+
+define Build/Compile
+	$(MAKE) -C $(PKG_BUILD_DIR) \
+		CC="$(TARGET_CC)" \
+		CFLAGS="$(TARGET_CFLAGS) -Wall" \
+		LDFLAGS="$(TARGET_LDFLAGS)"
+endef
+
+define Package/phytool/install
+	$(INSTALL_DIR) $(1)/usr/bin
+	$(INSTALL_BIN) $(PKG_BUILD_DIR)/phytool $(1)/usr/bin/
+endef
+
+$(eval $(call BuildPackage,phytool))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
