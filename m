Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817B6E0C0A
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 20:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mWuhJOKGbUI/6JorvQscMJajnFxONmTC7bJw053KZEc=; b=De0Qf3rWwtlzoM
	VJ322WR7PjI1dDHP8K1IXZnaKNulaWfsVP7Qa0gXRDr0CvrSNBe/dNRgXHuiY9JsnzQbuHdeQkSwG
	vTxM7GY4MWWjdkV+CP7Uf7EcGNKefSnOr1+h9nn5YrE0Vag7seskliEu5wwnr0MlZf3NySJ5LT6no
	u7/wGGlsTIxFYXNQv+JgbItqFJBbOboX2kSU4W/f3EvaKLHX/oAyzEEM2/ULOQPBzZuuHZVhtnHRj
	65fPJp9A1l3AExrfm2CAoPAPyY8mV14mFysMiZaXdC/EsS0y6XFkDEuwuq5baN1LT2fwCa+rmsEcm
	epQ5yE8u1V0b2Q1N6/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMzK5-0006LQ-Hw; Tue, 22 Oct 2019 18:56:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMzJy-0006Kr-9t
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 18:55:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id q12so11193547pff.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 11:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=yIlKRZSGnFUDd95uCFl5ZsB19wL1UM7Zw+IYbd3AXeQ=;
 b=WPFAKg7sUTE9bTnIBsFQgDyHWM1JG2LffKEsuL7335Nyk1t5smV/XXcumgSFgSEVHt
 P8l8ZmA1QN62x22K7Abv43xpBYLyIXOxb5EGuA6vtUsROa6PrRlm/NPtlhacbChNovMv
 3wSqHgIlrngK+nwddiwfBLxHDFT4igVPw5RZQ2I/rY+Wy6fz0nF6SdrzD7hyyYzSHvW3
 1ccT5/k8q4KPJyN4WuWjXOJ6yO0CJCokSHLRRc4wxW+lpWYNN9Ft1QFeygz+ESIH9/TC
 pKwMzMuso7tq4l/m89WclDrkDwe4z3ScV8WCVZH4HwpUa1NYtGyccrDyC3Z+363pBpgk
 7Y2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=yIlKRZSGnFUDd95uCFl5ZsB19wL1UM7Zw+IYbd3AXeQ=;
 b=NfI1Z6T0aRa+5Q9x0RqKL2KVMuLM+2KpqfKwQqMzvoh2cBxyoGNaASU5fdRzH7DOgc
 x13dyt9RqJEfh54SaNnINNwySaELaHusTTQwdXz9if/4+v15TnOVmDMTgkQvke70+VBM
 vdIS4mk2yB0I851xg2uXMrRirRa213Y6p4MEWHjcLTixybEoso713o5aTn/sZPJMVohA
 RR63zenzFeNUtuADeoaJtG2uGiWfj8P0jbz0k2+31eqoA7dDaDJ76vzBsPgVgPHd/5xg
 ML5NhelY2P6yR99uREXWN056N9PXxaXMh3LXIzB8soblmxFxnx4aqkYEJdSUWDgEA20n
 GsEA==
X-Gm-Message-State: APjAAAV+KshjeIGsKABFNbS9UssNT/BoNX5jDTtBvlHkQEqNdnZap0WY
 vxm4OFn3T+Wta9xmy1a0gKssXvLP1aE=
X-Google-Smtp-Source: APXvYqz8UWGU+WdNA8Fsc5tJ/OrfOuhkywbHz7R9MSRpVyVh3PpqgdthZopgHCzgE2W7AFbuOMPT+g==
X-Received: by 2002:a17:90a:730a:: with SMTP id
 m10mr6581318pjk.78.1571770552363; 
 Tue, 22 Oct 2019 11:55:52 -0700 (PDT)
Received: from DESKTOP-VIRSTQA.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id k23sm19549671pgi.49.2019.10.22.11.55.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 11:55:51 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 11:55:48 -0700
Message-Id: <20191022185548.13576-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_115554_369912_F1785B88 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] util-linux: Disable utils requiring libpam
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

When the build system finds libpam, it enables building of these tools,
causing linker failures. Explicitly disable them as they are unused.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/util-linux/Makefile | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/package/utils/util-linux/Makefile b/package/utils/util-linux/Makefile
index e61e501762..29ad135033 100644
--- a/package/utils/util-linux/Makefile
+++ b/package/utils/util-linux/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=util-linux
 PKG_VERSION:=2.34
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/linux/utils/$(PKG_NAME)/v2.34
@@ -513,8 +513,14 @@ CONFIGURE_ARGS += \
 	--disable-use-tty-group		\
 	--disable-rpath			\
 	--disable-tls			\
+	--disable-su			\
 	--disable-sulogin		\
 	--disable-makeinstall-chown	\
+	--disable-login 		\
+	--disable-nologin		\
+	--disable-lslogins		\
+	--disable-runuser		\
+	--disable-chfn-chsh		\
 	--without-python		\
 	--without-udev			\
 	--without-readline		\
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
