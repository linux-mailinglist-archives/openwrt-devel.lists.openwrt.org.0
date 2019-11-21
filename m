Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7531105705
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwcU4Zl3UisIJGI13RMCoG7tIOXV0JnTC+T/gPMdXZA=; b=fCv2i+ZHKU9lC3
	BkCemDPZFjaN2/zjBg2cYlWpFHqKSvL6qE914FgHyiZ+3ESljijihxI6WB5il3kQSzI/cqpx3DShT
	AldR5oN9Tyt2qJdFdz1IYfxplucOoHo1guyLOX+pp7UUKq8zrdeAPuaKSRbt9pGiWewiwl9obUMlz
	eMeWpU7KysuDhEsIt/LVSLgKhTEa6vS1IPDttbLvqAlYNOaWd/F9er2T9pB7Exq4NpzyYFfL6/ADH
	gF5xHh5D9o0p1j825CryzmEjzKSAK/uIiBD/Z54d9kmk+P29UrlhanioFDXE6FCgRJKkJPK0IXDDU
	GGII4CIkadsBy9TZaG7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpH4-0006Bc-Fj; Thu, 21 Nov 2019 16:25:42 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF6-0002pd-I6
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:43 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id CC1764000A;
 Thu, 21 Nov 2019 16:23:31 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:21 +0100
Message-Id: <20191121162322.671035-12-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082340_760133_64DC7C56 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 11/12] target/linux/mvebu: enable UBI
 factory image on Armada XP GP
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

The Armada XP GP has a NAND storage device, so it makes sense to
generate the UBI-based factory image for this platform.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 target/linux/mvebu/image/cortex-a9.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index c2ada75c2d..cf70031b99 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -148,6 +148,7 @@ define Device/marvell_axp-gp
   DEVICE_MODEL := Armada Armada XP GP (DB-MV784MP-GP)
   DEVICE_DTS := armada-xp-gp
   SUPPORTED_DEVICES += armada-xp-gp
+  IMAGES += factory.img
 endef
 TARGET_DEVICES += marvell_axp-gp
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
