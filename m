Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A7CFBA74
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 22:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wf+RmaJBhFQodL+N1Kbl7S+kgTSjpgQaKuisi6zO/oA=; b=q6uOV00QmVWCW4
	b/IGIMCWU9a38gmxFxE1UE+EoutgPpBReCMqiaZ7fDDKPS/fTorbzMYEg/pJNxZt14s5DyOzG7fYY
	5GXn5KNiqpBm07UDmp7KJfvrvmvMt5vSQSD2wKo8VZKlll3oi2ugOhgDeshu5nUEBNdVBdA+SiUWh
	f3Pn4RW9sfPfo7me1L++CgDpjzRc7rfA7ncCDKfcaTB4S+yZlSR6zkyy3GRYslvbpuYu2us/umSU2
	nQoIJEy/7jNc7D23qRTdpduqPzIWi+5IMBO4MyC+0oV8dDQ1hV6KLTf4+/AFDQZpJjcCJFcZ4cSfX
	Hdkko87R5CWzZI7o9N0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzuS-0004Xf-AS; Wed, 13 Nov 2019 21:10:40 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzuH-0004Wk-Vk
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 21:10:31 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 6475B49DEC;
 Wed, 13 Nov 2019 13:09:59 -0800 (PST)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 13:09:49 -0800
Message-Id: <20191113210949.2490-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113210949.2490-1-lede@allycomm.com>
References: <20191113210949.2490-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_131030_021073_DF76CC59 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: GL-AR750S (NOR/NAND): limit
 factory.img kernel size to 2 MB
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
Cc: Chuanhong Guo <gch981213@gmail.com>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

The present U-Boot for GL-AR750S has a limit of 2 MB for kernel size.
While sysupgrade can manage kernels up to the present limit of 4 MB,
directly flashing a factory.img with a kernel size greater than 2 MB
through U-Boot will result in an unbootable device.

This commit uses the newly-introduced check-kernel-size build
operation to prevent the output of factory.img when the kernel
exceeds 2 MB in size, yet permits output of sysupgrade.img
as long as the kernel is within KERNEL_SIZE := 4096k

Cc: Chuanhong Guo <gch981213@gmail.com>

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/image/nand.mk | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index 7940167e1a..75c1af89bb 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -89,12 +89,15 @@ define Device/glinet_gl-ar750s-common
   VID_HDR_OFFSET := 2048
 endef
 
+# NB: The kernel size is intentionally restricted at this time; see commit message
 define Device/glinet_gl-ar750s-nor-nand
   $(Device/glinet_gl-ar750s-common)
   DEVICE_VARIANT := NOR/NAND
   BLOCKSIZE := 128k
+  GL_UBOOT_UBI_OFFSET := 2048k
   IMAGES += factory.img
-  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
+  IMAGE/factory.img := append-kernel | pad-to $$$$(GL_UBOOT_UBI_OFFSET) | \
+			append-ubi | check-kernel-size $$$$(GL_UBOOT_UBI_OFFSET)
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
   SUPPORTED_DEVICES += glinet,gl-ar750s-nor
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
