Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B015B46AD
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 07:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NU1TKnOO7zQTZf5JzgnY5U+0LLHBCVX1BpYRZNN4+3g=; b=qMK27nEgK6wC1i
	vmpv7+aNDNOJ8zVS1f9K8J5LKDfccu0QPtOrkV39sLSQbFEmy2ye2qYGoPMf6y7bP+NIFIg4dPBXj
	Gjgz5/MNFQ0xuQj8/0f1gdICMXNGJBMcaAmrZMkURuVNkr0rStRNqeQ5qBIzwT/gVDs0KJ2GPkEsi
	2+Kl1hUi7kE8Jqr17FeUrqcMABFax6VHGLI9ZEanUuECIxf1sXpTMS8E1KyDsL4VhsZO6rFofSrr9
	wavwqFd9bzaDra57DGn1VQv4Xq+DZO0eADxn3FaRLPVz0XnGobnsvzEiV1HsP9uT8v4jfkjdRWxiB
	NciZ7L4KbWow3TmNaGqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA5ag-0005sx-Dr; Tue, 17 Sep 2019 04:59:50 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA5aP-0005sc-1L
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 04:59:34 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 0521CA61156; Mon, 16 Sep 2019 21:59:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 63D5AA6114C;
 Mon, 16 Sep 2019 21:59:28 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Sep 2019 21:59:28 -0700
Message-ID: <87imprcybz.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_215933_117423_D0E7CDF5 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] apm821xx: for Meraki MR24 modify BLOCKSIZE
 to reduce LEB over-allocation
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


On Meraki MR24, the BLOCKSIZE variable is used to allocate space for the
kernel blob. The LEB size on MR24 is 15.5k (15872 bytes). In the
particular instance observed, it was found that reducing blocksize to
512 bytes resulted in 3 fewer LEBs being allocated to the kernel ubi
volume, with no ill effects.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 target/linux/apm821xx/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index 8203de39c5..1aa4e0dad3 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -127,7 +127,7 @@ define Device/meraki_mr24
   DEVICE_PACKAGES := kmod-spi-gpio -swconfig
   BOARD_NAME := mr24
   DEVICE_DTS := meraki-mr24
-  BLOCKSIZE := 63k
+  BLOCKSIZE := 512
   IMAGES := sysupgrade.bin
   DTB_SIZE := 64512
   IMAGE_SIZE := 8191k
-- 
2.23.0


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
