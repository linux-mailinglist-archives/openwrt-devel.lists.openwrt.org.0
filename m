Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957FD64BA3
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 19:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jk6bHwJLU4niYpwkNlhy2M3wYXvO/U2Hs6euq6xyT8I=; b=cn/uSgUQcclLBb
	fsT7lbwsrKMBfq96G8F4c+vTphLCPrzkYwQl7y4fzC5JPZvSrKsZaPPlDkBEM/nELxZ51Fv81Adh7
	RY9gvWnpZ8990fD4wWMDsACxnzHdtUDk3KmVvOUyKSizeoyQyzgl8EwZ9ds7no0FYWZoiG+eOZM+K
	vNw5TPDtJtddqd8FRyEdEeGZQ6PY22yBSRcoObMOYwdPWiaGGZmr5x25H6g2ff/ucycMJKDcgFupa
	HhTJMnATXUFnlXSA3wS7d0z+nEZugrrmz9VdnL7sridXNtWhHT1bF6nns8cSnIhpL2HTEQ+GwLbN5
	O91kMihsq2X8NLoE9uFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlGg9-00051x-Eu; Wed, 10 Jul 2019 17:46:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlGfy-00051R-9A
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jul 2019 17:46:43 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so2962202ljj.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jul 2019 10:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DWN+I8WLAuIpdcpFAYjuYtmJrJQa/NeTq0ezt8YEnUA=;
 b=TbhBHYjfj368EbzWSEiM0o3dUxJyGczugGkl0rOOW77P16sYPzIP2apDBaRBVrnyuH
 7uaQeOmA8u1k9g6WVWX+OIYjhBTxRp3/WfEDsPNKRFXGWSFWOS+Myo0HTfxdSibk3Lyl
 4XfmU3h+0HBpiUphPPhyoNilS5/jcGH2HtUEp5eVuMMo/ET1i8Tep3IGFqf38Utqd/WF
 HXrnAhGITYlHn/bdAMaZOP6LXb8yWZ0JW2nuAx5G7xj1o9hSmCvFpTAy/yadMUwuJeVm
 PAXdiZvwUGqn0cVuqhj6/VklMPQPK6vS3uUIBkMaAweBXZaRLnwn7PMEnw+EMdgjKOtL
 DS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DWN+I8WLAuIpdcpFAYjuYtmJrJQa/NeTq0ezt8YEnUA=;
 b=bbAyObPeHEFnF9mfPlenDGls3zbPITWRbFdqNSd70F58STBW8Wn+Jqa8CT5YewLWL1
 qapiyvSo9FpJww01FjG1SUlkVbP+XvrBrvA/EmDRGW1mlwwJYbgdaFY3ZTz1iFNiuMRG
 6qs/b1qDsB0zta8JB8ZJAUjwV5+JNyUVfh/u3McnlxibjqUHu9hR6vjSXpuzhUinJnRq
 uTuzST/ygY64t+tu/obsViSPKqg/sCfmbtG4a7REwxsoPGT8tJlCwZwhqZ/F3YLuf4/g
 ZT+y8xsKI6qxkS4Eb8hpPt5ZvfmntSeY499hq5QXTYPT3p2eOmJmCOXYIKSVJMHSFUPA
 9RcQ==
X-Gm-Message-State: APjAAAUgO7j26lUcsDDR6NimXz8sH5fhPz1yfexW+ubEaIR+9Ghglzv3
 1wvybKAfpHUfoz3MOtBwcgTsQw==
X-Google-Smtp-Source: APXvYqxE3tyl72ccAglkI1Kw/AcFhJaijgedFp0eUkKtAvGwWZUXO6rrGscLttE2W/EIbYG1MciD7w==
X-Received: by 2002:a2e:9ac6:: with SMTP id p6mr18579189ljj.100.1562780799890; 
 Wed, 10 Jul 2019 10:46:39 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id l11sm448732lfk.1.2019.07.10.10.46.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 10:46:38 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 10 Jul 2019 19:46:12 +0200
Message-Id: <20190710174612.31568-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_104642_319070_A30EEB69 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] gemini: Stop enforcing command line
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

The command line enforced by the kernel is harmful, we want to
use the command line passed from the device tree. This is
especially important for the SQ201, Teltonika RUT and WBD111
which has a console set to 115200n8 and not 19200n8 like all
the others, so their consoles will be confusingly changing
baudrate between boot loader and kernel. The setting in the
device tree corresponds to what the boot loader is using.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/config-4.14 | 2 --
 target/linux/gemini/config-4.19 | 2 --
 2 files changed, 4 deletions(-)

diff --git a/target/linux/gemini/config-4.14 b/target/linux/gemini/config-4.14
index 3d11de6a40c9..fb96aa78c73a 100644
--- a/target/linux/gemini/config-4.14
+++ b/target/linux/gemini/config-4.14
@@ -55,8 +55,6 @@ CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLKSRC_MMIO=y
 CONFIG_CLONE_BACKWARDS=y
-CONFIG_CMDLINE="console=ttyS0,19200n8"
-CONFIG_CMDLINE_FROM_BOOTLOADER=y
 CONFIG_COMMON_CLK=y
 CONFIG_COMMON_CLK_GEMINI=y
 CONFIG_CONSOLE_TRANSLATIONS=y
diff --git a/target/linux/gemini/config-4.19 b/target/linux/gemini/config-4.19
index 288c8e0a3ae0..a817303ec8a0 100644
--- a/target/linux/gemini/config-4.19
+++ b/target/linux/gemini/config-4.19
@@ -62,8 +62,6 @@ CONFIG_CMA_SIZE_MBYTES=16
 CONFIG_CMA_SIZE_SEL_MBYTES=y
 # CONFIG_CMA_SIZE_SEL_MIN is not set
 # CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
-CONFIG_CMDLINE="console=ttyS0,19200n8"
-CONFIG_CMDLINE_FROM_BOOTLOADER=y
 CONFIG_COMMON_CLK=y
 CONFIG_COMMON_CLK_GEMINI=y
 CONFIG_CONSOLE_TRANSLATIONS=y
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
