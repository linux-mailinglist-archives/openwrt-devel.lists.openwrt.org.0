Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA9029C58
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 18:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zS8NNP9f5hjc1PLfTLlb6pSL8a0RcLcQhT3FFhdQcDY=; b=kdwzshe2Q54k1y
	3bT+UcvtxhmC6EYOPLuKycNTMeP7l//uU3sDqDcpwIcPUbZbrv4CmJLtfnxA+rzGd1zcKzEYFTaqw
	R066N3LS81lqpn3Yv9l8ZfUJTK2iNMPzxkwjJdIV13jkdr56YfRoiTris05EPojqNIPUlc0p6MA+/
	pKzc6TbVNyyeAX0Q5MdH5yv2Xu42S6iwuaRqCw05+L5WHGyye5VIXtwsgoBAbn96LHnreDXWxR80H
	+tkOIeEA+FcCHABOGl50nw1BAnPQqzmkHQ+lIjtt5Y0TW6GzzrjifAGHyZuSL4zjOYTkvt/NxTlBZ
	8d4JFPbo7L+Gqc3oVnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD6z-0004Zk-Rg; Fri, 24 May 2019 16:32:05 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD6s-0004Yp-5D
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 16:31:59 +0000
Received: by mail-lf1-x143.google.com with SMTP id y13so7582517lfh.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 May 2019 09:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fOblKXvlzXFBv5yW9iudLfo9mRU0+YT8jWBQUniq5wU=;
 b=M97UyWox2CIsPMeSWBeyciSfviT2fMCz6ja+zq7khU+uBw/dHb12nI/xzdLYz9sau0
 JusSmTRQpjhkLfzKY12nxhcIS+BeY7qX3Fr8GlbF7uAqXE3bJjM91As44hu4/rExeDmt
 VlTWVlo/Lj6zerxwKwDhDzg5PczEV9jWkOykzsbcURzfXBdMWmaVJKcQxLxgU/RrGsPR
 /M5Ff04V8WJRPTp+JgdD4eiHeU9eu1q2QuGLwmqPb3z37BwQt+2+2dJj9KUHLw+QJsej
 C34I+QtDGeDLPy52Ivu7mKwzAOK398phaaF38dDxC33DUsdlobLciUS4dZBIN/jAC1Fr
 m98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fOblKXvlzXFBv5yW9iudLfo9mRU0+YT8jWBQUniq5wU=;
 b=JL4R8hORxPoyQgK1fJDps65hD805R+AnbdKKV7XKfpf+x0eUt0WeV5m/pRnMbNt+2p
 uJNxUUfMxiKnAtxhS2lpuU6vNPbOrz9Kgj1R1usGOV34iyawO7gA4Dl+MDP+zEY8dNAX
 P4ScWC7b88sU7eEDUQe+BFE8Bu0QeVDe9h/SjB/my5q0W1VmnPE3+EglpEHXEdWuT8Y+
 4M7MYvtrAH6sxFbWmQo4wKLQmDLoRSN1kiN9c0OgLXMn89ejXQCVMwuOaK2BhvFA/0rQ
 nsBeBe06zcB4z5mEg0+y5cxqDLu6wUdBTplMgGF40yT69LB4jdHyZUXGLBIFfm6hQDT+
 Ijwg==
X-Gm-Message-State: APjAAAWVdm8ga7HKiZ/8ywZS/krxIJAQonbtEp7rt+i959yehbfyAEvn
 SnPP+A8QmFn+S6xm8xWGmD6rtQ==
X-Google-Smtp-Source: APXvYqwJblP1f29u4+95vVQ2x785qAhHf0RNQCvpTIOxaet34hZqbvnp0yKMGTVJXm8tlaxMuS9zNg==
X-Received: by 2002:a19:9e46:: with SMTP id h67mr1423335lfe.120.1558715515463; 
 Fri, 24 May 2019 09:31:55 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id 11sm704308lfr.5.2019.05.24.09.31.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 09:31:54 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Fri, 24 May 2019 18:31:50 +0200
Message-Id: <20190524163150.9982-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_093158_213989_40F68772 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] gemini: Make root filesystem writeable
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

The squashfs+jffs2 root filesystem only came up as read-only
and the config would not take:

[   25.600237] mount_root: Could not open mtd device: /dev/mtd4
[   25.634674] mount_root: reading rootfs_data failed
[   25.665346] mount_root: Could not open mtd device: /dev/mtd3
[   25.699802] mount_root: reading rootfs failed
[   25.726426] mount_root: mounting /dev/root

Well that is not very strange since the whole firmware partition
is made read-only in the device tree. Let's fix that by augmenting
the OpenWrt patch.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 ...-DIR-685-partition-table-for-OpenWrt.patch | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch b/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
index bb4076558df4..4be6545186c0 100644
--- a/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
+++ b/target/linux/gemini/patches-4.19/0020-ARM-dts-Augment-DIR-685-partition-table-for-OpenWrt.patch
@@ -1,7 +1,7 @@
-From 854934b0ce8e758ce581f5ddbc30e618ab46fbdb Mon Sep 17 00:00:00 2001
+From ea99e7570882df53478f9b5fa5886a6e92fc2c7f Mon Sep 17 00:00:00 2001
 From: Linus Walleij <linus.walleij@linaro.org>
 Date: Mon, 11 Mar 2019 15:44:29 +0100
-Subject: [PATCH 2/2] ARM: dts: Augment DIR-685 partition table for OpenWrt
+Subject: [PATCH] ARM: dts: Augment DIR-685 partition table for OpenWrt
 
 Rename the firmware partition so that the firmware MTD
 splitter will do its job, drop the rootfs arguments as
@@ -9,9 +9,11 @@ the MTD splitter will set this up automatically.
 
 Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
 ---
- arch/arm/boot/dts/gemini-dlink-dir-685.dts | 5 +++--
- 1 file changed, 3 insertions(+), 2 deletions(-)
+ arch/arm/boot/dts/gemini-dlink-dir-685.dts | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
 
+diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+index 50ff65d95f26..4ae0bb95be20 100644
 --- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
 +++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
 @@ -20,7 +20,7 @@
@@ -23,7 +25,7 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
  		stdout-path = "uart0:19200n8";
  	};
  
-@@ -286,7 +286,8 @@
+@@ -286,9 +286,9 @@
  				 * this is called "upgrade" on the vendor system.
  				 */
  				partition@40000 {
@@ -31,5 +33,10 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
 +					compatible = "wrg";
 +					label = "firmware";
  					reg = <0x00040000 0x01f40000>;
- 					read-only;
+-					read-only;
  				};
+ 				/* RGDB, Residental Gateway Database? */
+ 				partition@1f80000 {
+-- 
+2.20.1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
