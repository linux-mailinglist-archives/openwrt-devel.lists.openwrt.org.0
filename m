Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B03A28A2
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 23:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AyydPrqxCyqYu5NcsS2EuaagTPSMmITw/YvRxg4AGLg=; b=hNnXIilVIN5Aar
	X8Rj1c0emK8oDBHM2JBrRunDOpPO0y0vS4Qh76iPW2l887NB5wmhyBYI4NtmTQaTXvoIMm6Ex43OR
	5Vzh70hlq1Ti7m4FEPXgs9NMlr83fiQeBf8Mc+h/VYPD64g97/r6IXqPpOv/IgDlX3GMEnTHz8wS0
	wi1il8DvAShyPU6rnhwcM6AUogNmVKmN4B2JxwJ6FH4c5OA3u/ruhVB0ngoBfNsREOCpFIQGSEIki
	MhcQgG6rdT5KOidSNOPPTrZe1SiOFwTKDuqiVSKyTxrUe9FxFND0y4AdVmK+mqFHImivRSqpE8C6W
	jxASchCZgqy1ZavWhoIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Rf3-0003yu-TA; Thu, 29 Aug 2019 21:08:54 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Rev-0003yY-SB
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 21:08:47 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F158400CB70285F6C67B4FA.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f15:8400:cb70:285f:6c67:b4fa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id D3C8E1FAF8;
 Thu, 29 Aug 2019 23:08:43 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 29 Aug 2019 23:08:38 +0200
Message-Id: <20190829210838.26077-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_140846_069077_EE043AA2 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: disable badblock shifting for
 MT7621 NAND
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
Cc: jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The MediaTek MT7621 NAND driver currently intransparently shifts NAND
pages when a block is marked as bad. Because of this, offsets for e.g.
caldata and MAC-addresses seem to be off.

This is, howeer, not a task for the mtd NAND driver, as the flash
translation layer is tasked with this.

This patch disables this badblock shifting. This fix was originally
proposed by Jo-Philipp Wich at
https://bugs.openwrt.org/index.php?do=details&task_id=1926

Fixes FS#1926 ("MTD partition offset not correctly mapped when bad
eraseblocks present")
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
index d50e689110..03b2b36db9 100644
--- a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
+++ b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
@@ -3578,7 +3578,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +	if (!err) {
 +		MSG(INIT, "[mtk_nand] probe successfully!\n");
 +		nand_disable_clock();
-+		shift_on_bbt = 1;
++		shift_on_bbt = 0;
 +		if (load_fact_bbt(mtd) == 0) {
 +			int i;
 +			for (i = 0; i < 0x100; i++)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
