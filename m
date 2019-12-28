Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A1E12BCE9
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 07:52:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGqp99QoeCCZVfSFM2ze8u7pI0DBWHoMEyQzvxP02nU=; b=fGKlHmGgwEGC5M
	8+VDzNQGdhVhITcnGpaI+WRh9tVQWV9laAFX1n32cpi/+BvUpGPtfPg62VOzfjmT2/YfuTNVc1Ffh
	ohgcYmhj2Evr49/lRzX6/AM+avLUbtp7OQVOh7IF6cfV44SK6dJR5KOdLNoj/bPQHF4ti6jxHsSL7
	mYLJ/krM8HavCWjN7ASt40CdWBl6/CO61LS1PKOgjreFMxD82f2J5e2OrDV0X2Wno8Xbr7Ui+PU/W
	yi4ZEY2EnPhECWTNAQBzKw69dJAIi2hM7ScI/x7dDZFOULRTMkL0Tfvk+Q1JUkt2xVINPWKlm5tIv
	j2DVzntZwdEUED/Zyt7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il5x1-0003nw-Lo; Sat, 28 Dec 2019 06:51:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il5ww-0003nc-8L
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 06:51:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id k197so15471938pga.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Dec 2019 22:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9yXfMD6mu7ZeS/aUVeuwhlhk3s/RJA0k/uRsD4zAwI=;
 b=uS2slznk+njTkwjWnVx2FBUuAie/V8QGg4wizQFzG1aLBJuS+13di+RmrSCy6ADWnF
 gkpIJkY0I+B2Nn2M0FdBfyVtg+OflueRL29FD9b4mPQ0c8LnXrFb3D37wu0lZLClVzQh
 OAQ21tB0L/rMs8q8BcKHJujfmIqQ1zqrLsrxbdpK2kJLh/w8EHCD0kRRzbCuKzWOQwlP
 +qecBl2hY0oHhK65CYZxWA2DDi9WI2DCXGs/6TG+zohksy+7JlE1iMcL0LMY+FLeK00x
 +Dfi7/NZ25L4P9p1EQUY63zH0T0rjAvTGm5/Hm9Q4Ur5ViXWVyoBwyjm0EZqpzI/XGjC
 9e1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9yXfMD6mu7ZeS/aUVeuwhlhk3s/RJA0k/uRsD4zAwI=;
 b=hIci/NqRdXPOYhbE6oH59s+Lzy2FW9Ph8y3pZIhZIL8dZi8UdtuAguKfZkvD17UFg8
 bSYGjRxrb4StNOg0AdeZFSJM9U/5NdTXwhg8KmQSAFXi+SOW9YQLxwm9YZgH2mwGCgB0
 9hENonyjAVZJb7WvhuwZRLnGXHFSNYzTrwQttJ7tiqP8rtJmvNlwn3OH8DD7buN79Az7
 cTwIcxgB8QpZGhZOAP+QH/kRTO9mNdkT0QUJVIL7ZlzD9R03yr1TA8FbQYbpao7Cm95I
 bkSruFy7IKYKtl9jLM626RD6C99RkWry0QqmPKYA7KiWhMbVYkVgifq6t+G0EbBAOfqQ
 nc7Q==
X-Gm-Message-State: APjAAAU8qUw3AU+Z+wVFZsstWmviHrR6MJvo5mXEjx8PeWjhe4fEGdvt
 p8sp1KQLVnFl1u4NAuHk6lSzEJzEUrQ=
X-Google-Smtp-Source: APXvYqyNQJM3386woq0S1IfSgcYCqapF0wrZPg3MHi9cF+rZ/aHO7mFrACmPfq4LNcf9ysxHDzlG8A==
X-Received: by 2002:a63:ec0a:: with SMTP id j10mr58926813pgh.178.1577515904757; 
 Fri, 27 Dec 2019 22:51:44 -0800 (PST)
Received: from trapnas.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id x65sm44566125pfb.171.2019.12.27.22.51.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Dec 2019 22:51:43 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Dec 2019 22:51:42 -0800
Message-Id: <20191228065142.15666-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_225146_321879_79327941 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] nettle: Disable ARMEB assembly
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

It's broken for ARMv5, which is the only armeb target in OpenWrt.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/nettle/Makefile | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/package/libs/nettle/Makefile b/package/libs/nettle/Makefile
index 62c39702ed..b9324e4793 100644
--- a/package/libs/nettle/Makefile
+++ b/package/libs/nettle/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=nettle
 PKG_VERSION:=3.5.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_USE_MIPS16:=0
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
@@ -55,6 +55,11 @@ CONFIGURE_ARGS += \
 	--enable-arm-neon
 endif
 
+ifeq ($(ARCH),armeb)
+CONFIGURE_ARGS += \
+	--disable-assembler
+endif
+
 define Build/Compile
 	$(call Build/Compile/Default, \
 		DESTDIR="$(PKG_INSTALL_DIR)" \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
