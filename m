Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AF41003AF
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 12:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7Ik1PZIMp5D9FpoIwuUbUZDNETuQPg9krTJnUI28C0=; b=qoNGZhFd2l9MBk
	igHB0Dx7arKzfI7Nik0UhzSnE9zbYOidhvGEBcfuRjTS6g/lAD6G/1UuILVNvGeE4p0cBOhLmHuT5
	pl4ntYuaJqaPRulGXxOJviS+otLsajT3gvyk3hRyFMZe+6vXxyfkBYkPPP743UFFhmrTpqs4DbuQk
	4zkrsR/sikeO1uXSGvuOHiSINfI6Fdo6wFVtU47DCmSqOTGXJW1Go1emUNfBfQV8tIyZWMA8LXmgK
	MxBF2R7zI7EGPUtk52n8YUzZ1qbP8m8y2Q7kjoEqaeoZZbC/QfVS1+d6r3tGzq6o4BWKV8nDGmqci
	4G1CovS0WX1Qbm8GjUpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWf4q-0007Kz-08; Mon, 18 Nov 2019 11:20:16 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf4W-0007KK-Qy
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 11:19:58 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id EB1EDA611FD; Mon, 18 Nov 2019 03:19:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 6D047A611F6;
 Mon, 18 Nov 2019 03:19:53 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 18 Nov 2019 03:19:53 -0800
Message-ID: <87pnhp77om.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_031956_914417_32DC9B62 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mediatek: remove extraneous "+" typo in
 mt7629 kernel config
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


As noted by Hauke in IRC.
Introduced in commit 50735df7b238ce886c6f718b3e9437a09c8efb28

Cc: John Crispin <john@phrozen.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 target/linux/mediatek/mt7629/config-4.19 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mediatek/mt7629/config-4.19 b/target/linux/mediatek/mt7629/config-4.19
index f32d9d1919..2dab4e393d 100644
--- a/target/linux/mediatek/mt7629/config-4.19
+++ b/target/linux/mediatek/mt7629/config-4.19
@@ -235,7 +235,7 @@ CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_CORE=y
 CONFIG_MTD_NAND_ECC=y
 CONFIG_MTD_NAND_MTK=y
-+CONFIG_MTD_SPI_NAND=y
+CONFIG_MTD_SPI_NAND=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPLIT_FIRMWARE=y
 CONFIG_MTD_SPLIT_FIT_FW=y
-- 
2.24.0


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
