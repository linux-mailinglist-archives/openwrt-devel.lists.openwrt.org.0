Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9A812D12
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 14:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2Y58wR5LtcjmpS5M0UjXZLoiUrkFdSoeN8qoWCSwBmc=; b=hqKU4M9YxNxYE0ner9Yb+FQj4I
	ruCPlfDgc2D9QCy412TMXKuJm0BM0aylKvLD9ZuANsk2MjrQEQpoSUvNtH7korLO/yueQy2Dyv48f
	uztzGaWckJcHCNXo/0dMFZcJdQtPJwVzQ5mBhVmwS4uI04nrmwUURKn5bMiXVWoSzK6lzdHjLsNTn
	ZiFDBi4zghqv1HWekQ2Rzq+qYgM/xY5FtHqcE4PzjrpHZsQJLQ11WG0nm5/HCw5kWIsbBTL00aojn
	Hc8ds/CpGNWVSO6ZV1AZQdYhjEsvP/AVRCI6HfF+rdEDfSZtumNRrb+bL/J2M9VfUvt5qgA004JXu
	x8fojMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWrv-0000zi-IR; Fri, 03 May 2019 12:00:47 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWrp-0000z9-OR
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 12:00:42 +0000
Received: from mail.allycomm.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPS id 7E670396EE
 for <openwrt-devel@lists.openwrt.org>; Fri,  3 May 2019 05:00:10 -0700 (PDT)
Received: by mail.allycomm.com (Postfix, from userid 58)
 id A58D7D003; Fri,  3 May 2019 05:00:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.allycomm.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
 SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0000]
X-Original-To: openwrt-devel@lists.openwrt.org
Received: from deb-devel.wired (deb-devel.bevandjeff.com [192.168.6.49])
 by mail.allycomm.com (Postfix) with ESMTP id 18149CFEF;
 Fri,  3 May 2019 05:00:08 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 04:59:59 -0700
Message-Id: <20190503115959.11835-2-lede@allycomm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190503115959.11835-1-lede@allycomm.com>
References: <20190503115959.11835-1-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_050041_799519_594F5070 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ath79: glinet_gl-ar750s: Use QCA9887
 firmware
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

The GL.iNet AR750S is based around the QCA9563
and requires the QCA9887 firmware for operation.

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/image/generic.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 8588e7cdf6..8e162e1d0e 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -363,7 +363,7 @@ TARGET_DEVICES += glinet_gl-ar300m-nor
 define Device/glinet_gl-ar750s
   ATH_SOC := qca9563
   DEVICE_TITLE := GL.iNet GL-AR750S
-  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
   IMAGE_SIZE := 16000k
   SUPPORTED_DEVICES += gl-ar750s
 endef
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
