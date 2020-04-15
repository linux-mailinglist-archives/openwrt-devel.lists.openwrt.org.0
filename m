Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370A21A920E
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 06:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZR+ZIfAUrup+dZSWmq0WOr7cYtH7izjD3pxzjHDoAyQ=; b=L5cLmFqU85YqK4
	zaOIKK3Y5Ugk5AyclZh/XAAKDwY8gy2BTRZmD4uBdMB/6gALq5Clc4i7ZRv+Hutkz+ndqvwbo0U2C
	VgWwR3fykd6IH4Z7Lo2dfLtApReD4AJ4um9JUr1VWxjJnXyqA0UnLiL68lZQ3uCdtmOZBPNirpr5R
	oGqOAFIUr3clz7FVNOff0ANE1MKigRdJzANxGnGvNhzG/ZRP5KUgy2Rli1v+BeCVVORqQ47rG5fjS
	OSjCYTwJdwJIuYCWa5FKd+zuVTf1DXSaTrZcK1jtajhrQMrqAgAgr1ZelggyJcwpueKwfTcSYf1dD
	uAR++dLoJ5aThExMNlXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOa0P-0006ds-HX; Wed, 15 Apr 2020 04:50:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOa0K-0006dO-5N
 for openwrt-devel@bombadil.infradead.org; Wed, 15 Apr 2020 04:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=2RuTLnwdoFy1ogUmiaKzIqbbUto8j6783bWSEZIHB68=; b=AGYOGUSnY5iVEWrTSI/EZfBCVT
 tY52TDHxssu1M0iuAphl/kfhZO6Fa7uTkOEum31WDL3kZIXKhycMel8jdE5l+Lj+95yAvGkCsVxxR
 BaazSAhmnrqTaUc2kmePUmDaOgRS5jML0I8UmU3YEwVat4hzx/WTexDO7fx6CXGOYoGu5VsnPAqSS
 lCreiErdc8mk0PXgKF7sGxQjZPQConGaaPgtcCKcLGnp6MWj+MWIOAZ1HD4xqA/tYcuigCb9zY3vT
 vfcjOItR6kBfHvudTqJS4q41q2gRtLrNKuygAXb6g8OaexAwdUCcoGRPG3KM+mnE6XOjIiHbFWX+W
 3lahAWRQ==;
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOa0E-0006du-KH
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 04:50:26 +0000
X-QQ-mid: bizesmtp23t1586926194tgcydimk
Received: from i9.localdomain (unknown [120.236.174.147])
 by esmtp10.qq.com (ESMTP) with 
 id ; Wed, 15 Apr 2020 12:49:54 +0800 (CST)
X-QQ-SSF: 0140000000200070H5F0B00A0000000
X-QQ-FEAT: 51hlrlXGHbggaGtuGn1Sxl19FICb9MV3QiSvqIUGrr994pSKnekpRxPavkgQE
 /SLuw2cCtWAfrdhe1NU/CzxHHWoRHArV5g9h0lhOHh1Sxs8T9lx0Q6qsVeSaLxws7mjS4Oq
 H/3nHaSMDU7poo/yT8K8WOHg6qHfibUb26MnXkeJvBJS0W8KA56YGXa0yRHrrpIfSfvj3Af
 6iXw0RhFcUZbnvH/WQbTq04R1a/QZkD/yHkq02PkpHjLVA7NhWMHmxrO7lVFiqWFiqplr/2
 fdiF/HKSHKV7AarrMWBx0tQRO2ZTTSxxwUQPF1vN/iwEwIJtxp41n/Rj6cZ/E3LD0pmYAtJ
 LoRoJWJZT0aX0PhrD3s1XyWB3xNww==
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Apr 2020 12:49:54 +0800
Message-Id: <20200415044954.25879-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.16.6
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] bcm53xx: 5.4: enable NAND
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
Cc: John Crispin <john@phrozen.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

NAND driver was dropped in the 5.4 bump, so enable it back

Fixes: 50c6938b95a0 ("bcm53xx: add v5.4 support")
Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
v1->v2
- Remove duplicate symbol

 target/linux/bcm53xx/config-5.4 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/target/linux/bcm53xx/config-5.4 b/target/linux/bcm53xx/config-5.4
index 676015f200..ae9c727818 100644
--- a/target/linux/bcm53xx/config-5.4
+++ b/target/linux/bcm53xx/config-5.4
@@ -307,8 +307,11 @@ CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MTD_BCM47XXSFLASH=y
 CONFIG_MTD_BCM47XX_PARTS=y
 # CONFIG_MTD_HYPERBUS is not set
+CONFIG_MTD_NAND_BRCMNAND=y
+CONFIG_MTD_NAND_CORE=y
+CONFIG_MTD_NAND_ECC_SW_HAMMING=y
 CONFIG_MTD_PARSER_TRX=y
-# CONFIG_MTD_RAW_NAND is not set
+CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPLIT_SEAMA_FW=y
 CONFIG_MTD_UBI=y
-- 
2.16.6




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
