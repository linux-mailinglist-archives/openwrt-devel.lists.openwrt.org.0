Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE0A12DF07
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 14:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VAu1HU+lgr3Q+zSAfzBsOfffkKoNqgmhh5/JEZHaDjM=; b=FQs+insg3mLd4T
	XUKaA91wrbjmXEL/vZvXt+4qopOINKju2HP8TA2MfyyraXxk265dq/inya95b4n2qU1N6LRJdkJpF
	a7km8idxjnZpOHp2sGsSEhIA0w9eJmDIAhkD6BeQxoclJXI1OScz/tE6u5VeeM7bEzxqWInIymXq8
	0ZWvg94y/YkvmNBpDw/VOR57eSUh6AV4iAgMT27cDVR6kA46TVg78WxH+Wk+CPgp515fYqtzw9NJy
	l2EkezbSq22tlmsvgNj0bi6nyIie3q60aii9/8YqDIIuvDBQb3eFuVpzVL9uSNoHKLC+h2VKUIPuk
	h71y4QLJ6MIlIddlSEIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ime8n-0003lb-C2; Wed, 01 Jan 2020 13:34:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ime8e-0003lI-OP
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 13:34:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so28364580lfl.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 05:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECkOzi5o/s6wmKtTpRhd8gxNR9twI2RnzuwUl4li6bc=;
 b=U3pPJE2Oz6mYuqmnBsm6/4gsDw8gyF3s11ks7MCF0cMcimafeXPRy0wCpxUqpsO4+h
 sckG0dEFsrbFQhMH9o/dTViYHpT7j7IGiM1IIOwFx/65uTEaZuOgDVAeKDhfkTisdXea
 zCmetQgRm8KONiYLm8qtoeHXgUUtJJ+AYOQdS3y7QIFeCnbku6iRvaAk4nPdvGbGm6bQ
 cSepvw48GhDJJfgtSTDf3MXthgab+9i1TijVmLxr9OCB8annDYDlB4CA8dnxQbTA/DSB
 0HUuJxg0fROmNxnJJ1NlMIyOkaVMd3aqgTbtbEjS1tvS6M7YDB1mCfKDs73zN/45K+yT
 fELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECkOzi5o/s6wmKtTpRhd8gxNR9twI2RnzuwUl4li6bc=;
 b=YaKU+vqMNqsTQlPdVCcbXY8nYJyAq9nsKUV1XkfzH6XNWUGwKuu45xAFcWPTThwMay
 +4JLr0U0mIT0Nn9q8GTh3SDe6MKOGDVh2msq7HAE5zS+RddIR0/8yv0ZregFBP+5rSLU
 xcDJ+RilMXzyDgNEHdOA4zChuxPt5qjE5lElJEB6qydCOFow7RwHHUqAvcUbj8EbuKBE
 4zRY9cBqXulqZmaD7pnr1TAhbbjcumbuDzgpDKrSdCrX7qWJnPmflb9+XJRUu2qgclMG
 pc8Pln0SZs9kpBUYsHbY1dYVsl7WPquxc16oFk7s3mmQXGOdcFIpyhbg1noj+An+5s7N
 FXGQ==
X-Gm-Message-State: APjAAAXzPST0wIF+JvnFqV+qTV7W5hRhmezq+0HJJtXkt36cbZBm1XcG
 Z/2ag7umf/TJa1c/B0mXKRU1OjQ4tVIYwA==
X-Google-Smtp-Source: APXvYqxHVvQqcIbSFEc68Jm0t7fPlwSGVmnMqMgSPEW/2FFp5DzvORnrq/Lxon6fy98H12+W3tJ39g==
X-Received: by 2002:ac2:50da:: with SMTP id h26mr21653469lfm.80.1577885653948; 
 Wed, 01 Jan 2020 05:34:13 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id m15sm21290962ljg.4.2020.01.01.05.34.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 05:34:12 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 14:34:11 +0100
Message-Id: <20200101133411.10451-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_053417_000572_97C7D563 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] busybox: Include hdparm by default on nas
 type device
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

NAS devices certainly need to have hdparm to configure
things like spin-down time or their disks will be
constantly spinning. Just catenate CONFIG_HDPARM=y
on these configs.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 package/utils/busybox/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/package/utils/busybox/Makefile b/package/utils/busybox/Makefile
index c0f3007e5d85..b9684d2da66e 100644
--- a/package/utils/busybox/Makefile
+++ b/package/utils/busybox/Makefile
@@ -93,6 +93,9 @@ endif
 
 define Build/Configure
 	grep 'CONFIG_BUSYBOX_$(BUSYBOX_SYM)' $(TOPDIR)/.config | sed -e "s,\\(# \)\\?CONFIG_BUSYBOX_$(BUSYBOX_SYM)_\\(.*\\),\\1CONFIG_\\2,g" > $(PKG_BUILD_DIR)/.config
+ifeq ($(DEVICE_TYPE),nas)
+	echo "CONFIG_HDPARM=y" >> $(PKG_BUILD_DIR)/.config
+endif
 	yes 'n' | $(MAKE) -C $(PKG_BUILD_DIR) $(MAKE_FLAGS) oldconfig
 endef
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
