Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302505B04E
	for <lists+openwrt-devel@lfdr.de>; Sun, 30 Jun 2019 17:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WEM+nqJ+93mn4/Bxra6aObK7WuTrclXK/clfWBRzXRk=; b=JLbVnm+VatacUv
	MB0tbbR3hN0dc/RMeH+oTfOlhPz0bC+iIrfvEnAyHXMxY8zwRinO1mw0DJdFXsz7Y898TVPWcc8eT
	C8lJ1q1XoRtahpji/d+CI++qCTWuAR/UoyHkIV8YJiOBYQ5m1B2J9JoUdgos5MgqNTR4XIKbYbIWs
	l6kaIS91VDI8Ht/hCKVLkAOlGJmCCCfL6FNATr/KR6h7vmyG7io1LQVTjAqO3S9ftjOBpA9l4hf/S
	nHOcxNFtlHxb0icgLUm8i2Md8TzBxaarx1Aj1GLRaEw3yK27BEEbYBiHkio9gbdJdipo8cfRimPWy
	3PgIazoOpYgi4kVDV28Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhbOe-0007Io-2y; Sun, 30 Jun 2019 15:05:40 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhbOP-0007ID-Jf
 for openwrt-devel@lists.openwrt.org; Sun, 30 Jun 2019 15:05:27 +0000
Received: by mail-lf1-x143.google.com with SMTP id d11so7044717lfb.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 30 Jun 2019 08:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zlgT1bLVnTxzd5HfgY8xItFlNMbMtZJ1ZUygJPzgdoA=;
 b=y18VldMb1CGxTL/zX47NlzmR8/u7PMGhfTqVkHQBSIp9BhWTwn52+3zkOrnhzLARdS
 FDJ0P4LMJ/PH2FZshb05QBTCsmCFqO3w1hMDURB26719itar8+Tl8SI9fkaEj+t7pP6w
 kDO1x0t4II47JjOjrkwjA6lg/39mvIEOsQgpVMqgOMKAg3UWMzhQGwHT/dUwDyhpkAVh
 aPWtsNOrtT8WyVE3sDdeefMPPZwhpNXE8gJ5Wfnwrf9efK4vMTkepLRugwN7V1/TgQle
 Wbv+2TeBrCdJPggNKoxGCEj8EhJl/PdK5koFxa/N4ZsTlRRtwxrBXLPtGIEmuY06uap6
 ZsPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zlgT1bLVnTxzd5HfgY8xItFlNMbMtZJ1ZUygJPzgdoA=;
 b=ihKidMWh9NE2/a2+wsPm/qle0ystdB2O23lXThiG0IwvyKFR7OTSheBBSwhFikvxkG
 HByksk9EJZpqnLwdBWa4QtO6m6QflwKZJGBGL/qNr6/pKBP+SmbznAMkhCRLWLLbRkVU
 qxcw7QbBSVHuZ7eGBhoe/7ueF4usigtGy7a6ApRP8Cbb4F+2hFV+VT7ZmefqWWa/CGUn
 YNglYvKKCJs7byFckFdCM1FzKuFznBeeBIk3+C3g7uJ14hE2Zt1BRcdz9wZaVV6kt5nF
 +zQaqoxQzBA9/qdVQ5/LIJVKlvoc8AmpJyd5+CWyaSgnbmQBgDno5ubduPHj8YPyo1kV
 rUlw==
X-Gm-Message-State: APjAAAUhkOERBw9WZ6Dmjpgsk+b3+DdpyYCOQ64TjRnrlFUiq2AtbKQS
 ehLYyvqjkPfO5o84RDQiWj1HEw==
X-Google-Smtp-Source: APXvYqzcWj/ic2Ea/PET+avvEs0jAk7td1uFFunkAAdoiCDYm0cMFa0oKcH6s5qVCCERt1BXRuKixA==
X-Received: by 2002:ac2:5310:: with SMTP id c16mr3369327lfh.119.1561907122684; 
 Sun, 30 Jun 2019 08:05:22 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id a17sm2120970lfg.73.2019.06.30.08.05.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 08:05:21 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sun, 30 Jun 2019 17:05:13 +0200
Message-Id: <20190630150513.12055-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_080525_653483_814E110D 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] gemini: Drop switch kmod and swconfig
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

The DIR-685 needs this module compiled in for safety
(it is facing the LAN ports) and it is now (as of
kernel v4.19) using the DSA switch architecture so
swconfig is not needed.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/image/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index ddc2fb9a138c..5901bbf0c9b2 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -142,7 +142,6 @@ define Device/dlink_dir-685
 	DEVICE_TITLE := D-Link DIR-685 Xtreme N Storage Router
 	DEVICE_DTS := gemini-dlink-dir-685
 	DEVICE_PACKAGES := $(GEMINI_NAS_PACKAGES) \
-			kmod-switch-rtl8366rb swconfig \
 			kmod-rt2800-pci
 	IMAGES := factory.bin sysupgrade.bin
 	# Pad to 128k erase blocks with 160 bytes WRGG header
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
