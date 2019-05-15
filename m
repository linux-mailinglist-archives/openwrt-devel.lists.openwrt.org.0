Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2B21FB93
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 22:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZ8zGxJmQlrHdYLPMoaNMAcIfpMhfw/yoTyrLXa1bgI=; b=bTpsI9E24mxxIN
	Rlf1AAxnE125gDf38WatEk0YFtvayarfVkWobJalmL6UYvy2qHfK+/AYQGvdtPczcUcbgkMd6qLbf
	jtf4XpyFwDgilC4dgXaRRSOjzo3rfkO8o93VxeZgQrHkNcy8ef0/25a1R6c4/18wGg91XfJyZ40qD
	rbG9U+AlPUsdUZLfJu06RXAhDb/Jt7glaGJw33TKo6bgn66KQiFgvmA9x+HziHFlR3J7D3cFURigK
	bxKXba+0NDJ9qVlDYb1riEG9Llov8rQoIfVtP7ZPO2O06Qmmzvegb8Wnq27HtccGVjfv/NnPXzly3
	vqHbKDoipnl4/ABZwCkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR0fV-0002Vy-Rq; Wed, 15 May 2019 20:38:29 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR0fG-0002LT-NZ
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 20:38:17 +0000
Received: by mail-lj1-x244.google.com with SMTP id h21so976819ljk.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 13:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jIAjxKOvDG6mik7NopoMbrRPrKEs1vpIiv9ljAeoI8c=;
 b=NaI/bJihqiKr4k3pO8XSZrLDxB9lX3MBtP/zNhItak93iB/YfRy8Ppjzff4YylpsPQ
 Hvf1JDOc/+mBxqJ91d3Zd2EhniTUEE7SFQyvOGUkSXsCySU+iIvtzAKfZyLRnNI6Ltdi
 TuhWlQ9aiD6cxd3Em5tH5fk4DMzlaFAzbpWbikgjEhXv1B7rBVo1nb2Oy3mt1C7JeHde
 mG6tdNFQseDWs8qnVXhC/Zz96tFyWcprnPiRleyxHEVj5LVQ8CC0tzA0dQkDAlfQH3W4
 zd7EC9dRE/RK8RzLnRpCezOMZK2xroTa3ZGwJCzc20ms6G/OfQlg6wSm+RXjUXaNJsqp
 mfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jIAjxKOvDG6mik7NopoMbrRPrKEs1vpIiv9ljAeoI8c=;
 b=Ne7gBWAIQuiKv3o2nP8Mj4DTYo1fwx5Op1UrWntHm4UOJkOK6VI3G6TEPGetyzUjG9
 Y8xz6BjnMXX6TPaKRkOavTq0q6QNw6B88Mkgqwbc+EHDRXq0rwEEMn0JU7CD++BaRcRY
 10kCD1tr9cf2Zb129Hd+D8SjDjQLa41ocEas6IAp89l5ndbLMD0ODXirV7zB3DVFBTbJ
 FXZlmNmcXXK3xmIgu6o+d9nZWfqzXw6Gs23Vt8p+znrAKKul8J8qEDgEqth4wketSsGw
 5Giq7Ks3VGse0d6JzQhV+mmJMAWrfH2W6AgHnojxC5ZQGdb6VcAy3S8UePPJmj22WPvC
 xj0w==
X-Gm-Message-State: APjAAAWUba7Ot2pGij9/MzZV7ppVqrkfMa0LRNneAlSHPB1xiDNDPZ4u
 aCYZcXbcPUbv7SB6B5NTeuEx3Q==
X-Google-Smtp-Source: APXvYqyo5PmgzcFvtpHSJxbFuG+IDWKJb0bQ+ZLD0rmW+ZgOhM+bLR2QrYv1wx1Y7wA1BIAxxx3H7g==
X-Received: by 2002:a2e:90d1:: with SMTP id o17mr8249596ljg.187.1557952692942; 
 Wed, 15 May 2019 13:38:12 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id o70sm564344lff.53.2019.05.15.13.38.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 13:38:11 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 15 May 2019 22:37:26 +0200
Message-Id: <20190515203726.25739-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515203726.25739-1-linus.walleij@linaro.org>
References: <20190515203726.25739-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_133814_890134_22F13E22 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] gemini: Fix up firmware checksum on
 DIR-685
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Petr Stetiar <ynezz@true.cz>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Using the same method as the D-Link DAP-2695 A1 we use
the "mtd" tool to augment the firmware checkum in flash
on first boot of a new firmware on the D-Link DIR-685.
We need to augment the Makefile for "mtd" to build in
the special WRGG fixup support for Gemini as well.

This works around the problem of the machine not booting
after factory install unless the sysupgrade is applied
immediately.

Based on commit e3875350f3e4185020b64e0588bba521cd1d6e64
"ar71xx: add support for D-Link DAP-2695 rev. A1"

Cc: Stijn Tintel <stijn@linux-ipv6.be>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 package/system/mtd/src/Makefile               |  1 +
 .../etc/uci-defaults/09_fix-checksum          | 20 +++++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum

diff --git a/package/system/mtd/src/Makefile b/package/system/mtd/src/Makefile
index 08a9fb295dac..e3265fe9f1b9 100644
--- a/package/system/mtd/src/Makefile
+++ b/package/system/mtd/src/Makefile
@@ -8,6 +8,7 @@ obj.wrg = wrg.o md5.o
 obj.wrgg = wrgg.o md5.o
 obj.tpl = tpl_ramips_recoveryflag.o
 obj.ar71xx = trx.o $(obj.seama) $(obj.wrgg)
+obj.gemini = $(obj.wrgg)
 obj.brcm = trx.o
 obj.brcm47xx = $(obj.brcm)
 obj.bcm53xx = $(obj.brcm) $(obj.seama)
diff --git a/target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum b/target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum
new file mode 100644
index 000000000000..5f79d1a65caa
--- /dev/null
+++ b/target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum
@@ -0,0 +1,20 @@
+#!/bin/sh
+#
+# Copyright (C) 2019 OpenWrt.org
+#
+
+. /lib/functions.sh
+
+board=$(board_name)
+
+fixwrgg() {
+	local kernel_size=$(sed -n 's/mtd[0-9]*: \([0-9a-f]*\).*"kernel".*/\1/p' /proc/mtd)
+
+	[ "$kernel_size" ] && mtd -c 0x$kernel_size fixwrgg firmware
+}
+
+case "$board" in
+dlink,dir-685)
+	fixwrgg
+	;;
+esac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
