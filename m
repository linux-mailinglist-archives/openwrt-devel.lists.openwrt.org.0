Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051F91E20DD
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 13:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ste4+4l+rUWeTujMQoZ8dCwxH6LK4N8q2n2lq8YUn6E=; b=bpr/+4eqwJOLqH
	WLRUZox5m51jOXTcNBmYrJCbi8eif2o2A2pIM91s8uoS+myV0+mC1iQzJsD/C6LYa31yfNPTaQDyd
	/VB9qRYaBTi3m6+JKeh8bkih6BIoFRcor14BEO7R+8xXlJkamT6JoeskHrhPkwRq3iU3oCsnlkkQ6
	8YYfm109uoMuaP7N3hH9dsgkIf3+NEU4hxYhLeX+saewQDl+rXdxA2U7XCblekO+A1lanO0zCpNuk
	mPu2+P+rl9EzCzGKe7p9yA5atEV08BfKPF8dJ8wGrRhCv52n/W4I12wPf9LPtGmsROWy7e/dw3ukS
	yovBwVdYRdGoZEXh6aZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXld-0004o8-6u; Tue, 26 May 2020 11:29:09 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXlX-0004mo-8A
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 11:29:04 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id E6C43FCD1B; Tue, 26 May 2020 13:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590492503;
 bh=+Hzt9BW13M+QqhhMtbOQBACfrr0eCIY4ube+/8NQGYc=;
 h=From:To:Subject:Date:From;
 b=KfaP1QjlVs1rF8R6lfIjPKmqmAPG4CuaQfBxWegQiRF78a+LoPo+PQgwQnIYphFCE
 +kfsCOepUD+ctW+a5BKkL8K4QVQ/VflBviUKWlZ0ViT6bDOoHSy1hb7x1+qiKZ1kV2
 XRcuut7xLTFv21ZWUr1CUIAdRPdH4zJfUfdxLQ/0=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id E46C5FCD19
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 May 2020 13:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590492503;
 bh=+Hzt9BW13M+QqhhMtbOQBACfrr0eCIY4ube+/8NQGYc=;
 h=From:To:Subject:Date:From;
 b=KfaP1QjlVs1rF8R6lfIjPKmqmAPG4CuaQfBxWegQiRF78a+LoPo+PQgwQnIYphFCE
 +kfsCOepUD+ctW+a5BKkL8K4QVQ/VflBviUKWlZ0ViT6bDOoHSy1hb7x1+qiKZ1kV2
 XRcuut7xLTFv21ZWUr1CUIAdRPdH4zJfUfdxLQ/0=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 26 May 2020 13:28:18 +0200
Message-Id: <20200526112818.4060-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_042903_433919_74BA0F5C 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH] uboot-envtools: ath79: add Netgear
 WNDR4300SW
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add Netgear WNDR4300SW to the list of supported boards.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 package/boot/uboot-envtools/files/ath79 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index aebfeca85d..928a46ca8e 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -56,7 +56,8 @@ netgear,wndr3700-v2)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x10000"
 	;;
 netgear,wndr3700-v4|\
-netgear,wndr4300)
+netgear,wndr4300|\
+netgear,wndr4300sw)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
 	;;
 qihoo,c301)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
