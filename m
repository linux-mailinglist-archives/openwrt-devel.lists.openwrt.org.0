Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7028A1A91FF
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 06:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6bRQKvqWXK+qnIifXWd0+reEk7EA5bUgxkJxwa/ZyWo=; b=cTeazdSvwWuR+v
	typCNLrkfFrXlEsDQsjyDLRcAFGK8s46VPiskfbgx9Y+CoUhGDfHW4FkATm0K2mFCKVP1CmttvhO+
	CMPy/AaBW8hAWXwYb1tXVVDSjC6qEOBWP7/6Dbjs1A8xLaUyvUDvt++2J8sTZFUoQRq/l/ZxSVFH7
	CbXh2D9I7xr7e9tjKkthewo5fmpd8J48PbpjLu7tlLntoS/pCfY96AgD3nwCmIltcCQY5H0nbLaJz
	ZNf4cKyvVwK/8zxkNfMzi95Hy6vmCGgsvym1anP908eTmBIT66Z7jKPyT5ZJacGfLSDLYKRFJ7qOH
	6O8wKYFpJzAek5dYSpkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOZrw-0007ZY-Or; Wed, 15 Apr 2020 04:41:48 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOZrp-0007XI-1D
 for openwrt-devel@bombadil.infradead.org; Wed, 15 Apr 2020 04:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=miSvHFBQXLSeFbeXeSxRvMIbUxSmId+IQBRHyHG0a08=; b=t6zh5dIsHIhMEx9esb+HHpKEeg
 pTF+4kKpqoP1fEDK/p6muNweIgxw9hZAp19hiv2sPGiHRW3GEMx7R7xTcsGy8RAtKA75lYyZ91LRW
 /V6h0QChdX64m5mMBKDWNCyvwUDcrbvbNXsKCCFrs4wFSfWPbdFMFc30K8oGx8BXTHKkdBHiDZysU
 JDtLurVheF4f562VzHfBWEpoXbdr67D4bZ3pBFV9bsJFlB9QXkrzeGMHgWUEp6vpD0p2gXCLQh9cI
 3KvBHHEJJsccz60vPwPazSix1lCStBvZebkhu9gbXQ7YYKIVJy0BxfNc5hkH6AuvWal8z8JCRrW/3
 ikVVlz7w==;
Received: from smtpbgeu2.qq.com ([18.194.254.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOZrV-0006Rk-M1
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 04:41:29 +0000
X-QQ-mid: bizesmtp19t1586925649t0nh2umy
Received: from i9.localdomain (unknown [120.236.174.147])
 by esmtp10.qq.com (ESMTP) with 
 id ; Wed, 15 Apr 2020 12:40:49 +0800 (CST)
X-QQ-SSF: 0140000000200070H4F0B00A0000000
X-QQ-FEAT: qFJEOMXIysdp0rp+yUrz6f6eK9RgnxoHBM/IDOFvf5JUK0hsXAJYlJF5BNU4N
 /L3o9OI7LslpIoO4KjERjOAQaBsjvqSymnD52r1Xxn/OdjKslX+BOAGghAwFAmR949//Q4u
 qerWjJrJScKzsS35J9QyJLOICyODeY7JQsjly/BA7ZMSExYI5qvnVHhikok4Vwf5Du57Xvz
 KYQv7FbTdnHAo1VrjpVhqHBjrKRvNFw875994rPEnzcl8S+P5w5dEv9Uia4EeURvXDRqpak
 BiK/a/ZsSvdz/IB0engTKAqf/ZC7E0rWGPrTzmRL9YjuPbQXfBH185v2bseMCra9EJWd1tc
 oEntFWL
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Apr 2020 12:40:49 +0800
Message-Id: <20200415044049.25441-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.16.6
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [18.194.254.142 listed in list.dnswl.org]
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: 5.4: enable NAND
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
 target/linux/bcm53xx/config-5.4 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/target/linux/bcm53xx/config-5.4 b/target/linux/bcm53xx/config-5.4
index 676015f200..4c2ee07a0f 100644
--- a/target/linux/bcm53xx/config-5.4
+++ b/target/linux/bcm53xx/config-5.4
@@ -307,7 +307,11 @@ CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MTD_BCM47XXSFLASH=y
 CONFIG_MTD_BCM47XX_PARTS=y
 # CONFIG_MTD_HYPERBUS is not set
+CONFIG_MTD_NAND_BRCMNAND=y
+CONFIG_MTD_NAND_CORE=y
+CONFIG_MTD_NAND_ECC_SW_HAMMING=y
 CONFIG_MTD_PARSER_TRX=y
+CONFIG_MTD_RAW_NAND=y
 # CONFIG_MTD_RAW_NAND is not set
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPLIT_SEAMA_FW=y
-- 
2.16.6




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
