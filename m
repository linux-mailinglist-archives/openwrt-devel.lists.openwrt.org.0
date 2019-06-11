Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D654D416E8
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GMXnHKLzkWYmrLeaaaujInoXR+n+eQe9HnxszTu1CXg=; b=o4Xs+Piav9y35k
	jXj1Lv8e83fND9lebksGMZ1VRlJiFdofcyvK4095VDVE3PwkRjXoI8NZiG9jLic7g2rpki/mOI0MD
	ouV3TAyXEhaZe+0OZSpjKpxVZPM9/CNmDLKrqQRVp8W0GrPPRVY0CSnkNvGZccyphGw8D8DbSNIjb
	0ShN8P9k3bLs6mHQVrsnjsRgfjbNVHoirdhykdObd4BtvWB5vuyz5BVQ/wd6aPpWGf6tyl3bZBn+v
	NgXD8oMjglVRl+UP5qj/k33GfslAVSiwLNK0Jtx2SuOkJCjwQS4mYKBsH0Hl0WdBQ/SqiKykzI9iX
	ZKk2eXznXKQy0VJgStuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoKE-0006jf-61; Tue, 11 Jun 2019 21:29:02 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoK5-0006jE-Kr
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:28:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id k18so13108234ljc.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 14:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cw6yAU9XBkBssbhdHnHeQ3VtFu/z5gGrkwczWHyMf54=;
 b=Nazw9sgpBH8GXzmOVEbZWexsZLt2FQICmP9pX5DPr46aEG42iqmZQafyX5XoloMmnV
 z+cua0ZPl6VPkvnznWmEQcZO0DlITKmA+8pLjLQi7n/3wZOF1emoJdu6sZZFvD2LBX8q
 xQr+nIeRAMGiNCRczPhOzXPd2Kp+hpcJvYQ5Qs9FMYQm7PjcrVfOlY/qg/nCZ8oVflCz
 4mL2NGkuZfvYw9OxmcHrLgX2oNY8mGL5zXKrqlRxTHfuoMb49bkKVUiNS3+I8uLjxo2E
 GYThVg6evKXRDAd+Bck2K8GPnqcgFIbZqEaWsVIH/y/srzE+onJqLKwwSlSJxOEIWd89
 FrmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cw6yAU9XBkBssbhdHnHeQ3VtFu/z5gGrkwczWHyMf54=;
 b=lXoMmlgJv6q070DUZs6l44O0mSEoLXPksP2MK6+0yAzABdwbGgPuRf8PzF6l7XriQO
 OYOwq8FNE0ePwAsxUit6vYnWL71NOZ9/6t8r7gkcJ2Mn8Ud2BAb9A9O93PNt4Ph0uiu6
 fH3sx6up8m0IIzhU0qw5GzmnJnyUGAkx5/GmsHr0+6rrv7x42jvlK4K0nFx+fGIFHKgj
 bqSN+dliC28AgaA6H+nTJg0lY05Mv928mnI+4mbn1CdPxEu6zHKE2z7Ezh7zzUgRF6Ud
 CvzAiqcp7Kqb487D4crPHthKIN5xvomQDnwu7gTz09T9GWHmzSgZYxZjXLRKgXQSJFzp
 xwnQ==
X-Gm-Message-State: APjAAAX61fF/PK5pN00AYvdmxhTebcD1sEtxQD7fEM4NPEwLEfKmL4s5
 0mCT4PUJSagIUBCAkeC5wKPOow==
X-Google-Smtp-Source: APXvYqwAPPXV+tEB/WoSsx++5i5CPbpcY4MIW+CffWHe8qXTnrmml3L9ry61ZSqRv8LDFNlopa6NNQ==
X-Received: by 2002:a2e:9e8e:: with SMTP id f14mr17340283ljk.120.1560288532182; 
 Tue, 11 Jun 2019 14:28:52 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id k15sm2629437lji.89.2019.06.11.14.28.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:28:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Tue, 11 Jun 2019 23:28:11 +0200
Message-Id: <20190611212811.32150-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_142853_707921_74D7A57A 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] gemini: Fix up patch format
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

One of the patches were not properly refreshed. Fix it up.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../0008-ARM-dts-Enable-Gemini-flash-access.patch          | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch b/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch
index 26198ece78f9..4a33c43f08c9 100644
--- a/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch
+++ b/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch
@@ -20,8 +20,6 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
  arch/arm/boot/dts/gemini-sq201.dts         | 31 +++++++++++---------
  2 files changed, 40 insertions(+), 24 deletions(-)
 
-diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
-index 502a361d1fe9..c77fb83986ca 100644
 --- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
 +++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
 @@ -64,7 +64,6 @@
@@ -86,8 +84,6 @@ index 502a361d1fe9..c77fb83986ca 100644
  				pinctrl-gmii {
  					mux {
  						function = "gmii";
-diff --git a/arch/arm/boot/dts/gemini-sq201.dts b/arch/arm/boot/dts/gemini-sq201.dts
-index 66e2845a3edb..79df6ce5bc6a 100644
 --- a/arch/arm/boot/dts/gemini-sq201.dts
 +++ b/arch/arm/boot/dts/gemini-sq201.dts
 @@ -41,14 +41,12 @@
@@ -155,6 +151,3 @@ index 66e2845a3edb..79df6ce5bc6a 100644
  				pinctrl-gmii {
  					mux {
  						function = "gmii";
--- 
-2.20.1
-
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
