Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2051A6B0F
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 19:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VQYQwBbmP3UhbDrH1tCssn2gkF5j4ea6yL+BTArj4cA=; b=WaKhzmm8sxX6bjFJDy8BKIvVc2
	ciWYDODIiJ3/Y1siXK9OEbECK16S1JZ1iHTBIRYbgmRToPqdL89TInB2rewNBV8t8fIfGd39YdqqW
	q7yBMyHMZlYpKxYA+GMgzy/6WM1u2f4mdeKy/M2K8OfcJfa7Cly94/+MdvpwAgYHajsuy+l0epXZv
	7TTkzbwQwTcKGvQJvBypcmvzx3u40KwIYlbMk5IVfZLJk4InCBVsNeqQdbZ/+p+ZOxC8e7QTj51Tk
	u90tVmhiLqwPJXt6V8Gj0KJGXM4pgwqjCvVdKiqjVuWl5qWLYX9KrWpjSnMKX9D+LxkNnKiDE/S2W
	imysW8vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2du-0006vE-Gj; Mon, 13 Apr 2020 17:13:06 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2dL-0006Cg-K2
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 17:12:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MA4ja-1jZcPI3Xqc-00BYGL for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 19:12:26 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 19:11:22 +0200
Message-Id: <20200413171123.48647-6-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
References: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Fyae2lbSBPyBhjR/L0PY6yiy36CrSvOg61LQMHILQSN3lnM1fCf
 kdTXO3ftZsBDkQQDI13r3m0thfYTGTpSQkEl4BbeieJ3QhzmmJCQluqImiknDs75N6a6Bi4
 2wU8bECLO2nCh0Nb7Zr3P86Uilo8xtoB4sAc00jFmYUtjuHZ2aNdN9i1xxEuPp6uPDX9sru
 FTQHZNN8SqUBonQkhwdgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aSQbV1blAYo=:qFSho08S3okbSBmS7zE/Df
 WK1Bs7FxZdNHRhquUDR4XdfVNJX9B3vxZZO3XevGO4o+jEfLdDPgebhjoeMIRDfEbIjaFL4KN
 4TRA7p91QuIvjeHQFFo+ld+GimDVr2lCt8bf4aFnlR2FWcCxkykNKLdl3DowKwaoCOW6NF62U
 YqG5oq8DFuEoGcFXMmBzYzSISLfzEJePW98uLZ2YMFm9nRHgqwFqCIn4k9NcwbkJv4k/uxHU0
 UUI6RPGzVQP0WxaMf4U9jEVHT+ASJ3h0mvtPYN8bQNUh/SlugJT5cw7OcBIgOA8p3oqIEjggo
 3DOvBk/tCOS6nJ6Gufad67DXC3zNFT5PlsVlmV2RrMftBVY084+WTfySFoCYh95tC77etWjeS
 XsX0bsmPsvI0jjpJgK5F9QdRKZX3ErhdDyPx7P6FQnDIG7TrBPbmGtP0kGgXWYWifca0hNdVI
 C807Of8QyQw2R4zKJisrcETgS1bpcx/j/rYLqm0o5TO0ZQHWCJ8w+QI7NEJ3I2CvulvZZi/xt
 zNZcHlrJJ8yJ3sXMgBG1UL0wdJ8Qpq9zXepCgphEGDQRdgdXylwg/9Q69KJsu6lu1NW8VN0QP
 QazC78cifbicnSCbELbanDLtNxOYCiEV6tWXz5yH+jPjoYjnRXfsfAyjDKDn2gR6c7gINUvCe
 zOrGaH7cWR6rXsZrUoLCu87i3n/t9u78Qmz28Bi5Ue91CBfOjTStd+gJF/DW5K+jmgMjZoMXc
 cPBvKrkYWbrUUpsMzYD9ZtHEIVVlGe553jRKsPNhhf8GJewhvfyzsg8AllvEb0wCLjBAGOGRb
 O8ADNYGjxq1oA11I+O4Xu+zeWGRBggrr3+qpKSVS1gsUu1h47npfB85yZpcX7tukJnEagwe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101231_954658_761D09B3 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [RFT PATCH 5/6] ath25: fix compilation with kernel
 5.4
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

1. Kernel commit e7bfb3fdbde3 ("mtd: Stop updating erase_info->state
   and calling mtd_erase_callback()") removed erase_info->state
   updates and calls of mtd_erase_callback(). Do the same for our
   local MTD driver

2. Use phy_set_max_speed() to limit advertised speed. This is needed
   to suppress compilation errors:

   drivers/net/ethernet/atheros/ar231x/ar231x.c:1153:20: ...
     error: assignment to expression with array type
     phydev->supported &= (SUPPORTED_10baseT_Half
                       ^~

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath25/patches-5.4/110-ar2313_ethernet.patch    | 14 ++------------
 target/linux/ath25/patches-5.4/120-spiflash.patch  |  5 +----
 2 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch b/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
index 916e57cb36..130569ea0e 100644
--- a/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
+++ b/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
@@ -33,7 +33,7 @@
 +obj-$(CONFIG_NET_AR231X) += ar231x.o
 --- /dev/null
 +++ b/drivers/net/ethernet/atheros/ar231x/ar231x.c
-@@ -0,0 +1,1119 @@
+@@ -0,0 +1,1109 @@
 +/*
 + * ar231x.c: Linux driver for the Atheros AR231x Ethernet device.
 + *
@@ -1133,17 +1133,7 @@
 +		return PTR_ERR(phydev);
 +	}
 +
-+	/* mask with MAC supported features */
-+	phydev->supported &= (SUPPORTED_10baseT_Half
-+		| SUPPORTED_10baseT_Full
-+		| SUPPORTED_100baseT_Half
-+		| SUPPORTED_100baseT_Full
-+		| SUPPORTED_Autoneg
-+		/* | SUPPORTED_Pause | SUPPORTED_Asym_Pause */
-+		| SUPPORTED_MII
-+		| SUPPORTED_TP);
-+
-+	phydev->advertising = phydev->supported;
++	phy_set_max_speed(phydev, SPEED_100);
 +
 +	sp->phy_dev = phydev;
 +
diff --git a/target/linux/ath25/patches-5.4/120-spiflash.patch b/target/linux/ath25/patches-5.4/120-spiflash.patch
index d49669b976..52460f89dd 100644
--- a/target/linux/ath25/patches-5.4/120-spiflash.patch
+++ b/target/linux/ath25/patches-5.4/120-spiflash.patch
@@ -23,7 +23,7 @@
  obj-$(CONFIG_MTD_POWERNV_FLASH)	+= powernv_flash.o
 --- /dev/null
 +++ b/drivers/mtd/devices/ar2315.c
-@@ -0,0 +1,459 @@
+@@ -0,0 +1,456 @@
 +
 +/*
 + * MTD driver for the SPI Flash Memory support on Atheros AR2315
@@ -284,9 +284,6 @@
 +
 +	mutex_unlock(&priv->lock);
 +
-+	instr->state = MTD_ERASE_DONE;
-+	mtd_erase_callback(instr);
-+
 +	return 0;
 +}
 +
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
