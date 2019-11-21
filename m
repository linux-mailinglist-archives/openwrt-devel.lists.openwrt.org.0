Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EBA1056ED
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZueatpDwhTN8BKiPWfS7MytH+B6bdVijMBOIJRg3DwQ=; b=A+VHzB4s1VxAfI
	ydWjgdH+Mk9XjbQlenqDkea3LnbSr70r2VR7GAuvEHyMyT9pGpPxOt0ns2sC/eApscyvbjhWRshde
	XlnBRAwBf+2BKyVswbiqy4S4SHpV+0b8FOVrDzs3sSBhVcvub/2NbgD96v4X5BOxhEwW+Ph8NQOzI
	cPPRJDkckQN/D3PL+R/S+Ni0K/5sXjAC99HfsRoT1HOFPQvnnpu0Qcpw54lLSoPsZE6wqZhI3wwI9
	o6WZcUegSB5mztqAV0G8NWSjmSa0WwYNpA0t6AyD5hiOgnqIAIYelLRkiGQlRO87v52J/xeb6Tl8/
	tdIboxbnv460MeQgUDpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpFG-0002oL-KM; Thu, 21 Nov 2019 16:23:50 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF0-0002mo-6F
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:36 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id C0D8A1C0011;
 Thu, 21 Nov 2019 16:23:29 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:17 +0100
Message-Id: <20191121162322.671035-8-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082334_366712_BC274263 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 07/12] config/Config-kernel.in: add
 options to enable dm-verity related kernel features
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The dm-verity support requires a number of kernel options to be
enabled. This commit adds the corresponding options to
config/Config-kernel.in, so that they can be selected by other OpenWrt
options when needed.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
Note: I sometimes encounter an issue at build time where the kernel
configuration system would prompt me for the values of the new options
made visible as a result of enabling those MD, BLK_DEV_DM, DM_VERITY
and DM_INIT options. Interestingly, I don't seem to encounter this at
every build. I'm not sure why OpenWrt doesn't simply run a "make
olddefconfig" to automatically accept the default values for
unspecified options. What is the appropriate course of action to solve
this problem ?
---
 config/Config-kernel.in | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index bdb6b91cbb..eae413eb29 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -860,3 +860,18 @@ config KERNEL_CC_OPTIMIZE_FOR_SIZE
 	  your compiler resulting in a smaller kernel.
 
 endchoice
+
+config KERNEL_MD
+	bool "Multiple devices driver support (RAID and LVM)"
+
+config KERNEL_BLK_DEV_DM
+	bool "Device mapper support"
+	depends on KERNEL_MD
+
+config KERNEL_DM_VERITY
+	bool "Verity target support"
+	depends on KERNEL_BLK_DEV_DM
+
+config KERNEL_DM_INIT
+	bool "DM \"dm-mod.create=\" parameter support"
+	depends on KERNEL_BLK_DEV_DM
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
