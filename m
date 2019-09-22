Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A5FBA354
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 19:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wvUXHxdS72WlyWopikoOu9yEghK2+1su6QFHFVbPN9k=; b=Uf5gp/pNg/sVgg
	plCSesZTbKmr9xEigGcuwia5QRKlR0LQKHaibrYi0dFf0ooHXIGOpA9reh/E8nPlncJxegh0d88/8
	L637OMJhuAgW+S21gJq1dZR2PFdOKeNiiqSyMVgo+ZFhiOCkAuMpA5gGpYqq05/Wqd1sEtVT2MSGf
	bqfHgJkclq/THgmhUHr7BAZVzaO71eAVZicH74hTi74C3NDBY1TPwqLKRfxGocZ6iJYI7wGfKkQjl
	Op3qbbWzU8QQTaCw3yq6Fwu4HTzBKQLYa3T9FgtonHJ7TpDM+qnYdyurN1LJcGMOL6bpHGgyHcAMf
	VPmzdRY2cPIfmlpnPCEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC5Tb-00059D-JD; Sun, 22 Sep 2019 17:16:47 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC5T4-0004x7-N4
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 17:16:18 +0000
Received: from dbauer-t470.ffka.space (unknown
 [IPv6:2001:678:6e3:1040:656d:a7c:21a7:4b25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id E3E681E08C
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Sep 2019 19:16:05 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 19:15:56 +0200
Message-Id: <20190922171556.402415-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_101615_042228_886F6DB1 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: abort ar40xx probe on missing PHYs
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

The ar40xx driver currently panics in case no QCA807x PHY has been
successfully probed. This happens when the external PHY is still
in reset when probing the ar40xx switch driver.

Note that this patch does not fix the root cause, ar40xx_probe now
simply fails instead of causing a kernel panic due to a nullpointer
dereference.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 ...706-ar40xx-abort-probe-on-missig-phy.patch | 23 +++++++++++++++++++
 ...706-ar40xx-abort-probe-on-missig-phy.patch | 23 +++++++++++++++++++
 2 files changed, 46 insertions(+)
 create mode 100644 target/linux/ipq40xx/patches-4.14/706-ar40xx-abort-probe-on-missig-phy.patch
 create mode 100644 target/linux/ipq40xx/patches-4.19/706-ar40xx-abort-probe-on-missig-phy.patch

diff --git a/target/linux/ipq40xx/patches-4.14/706-ar40xx-abort-probe-on-missig-phy.patch b/target/linux/ipq40xx/patches-4.14/706-ar40xx-abort-probe-on-missig-phy.patch
new file mode 100644
index 0000000000..19474bff0d
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.14/706-ar40xx-abort-probe-on-missig-phy.patch
@@ -0,0 +1,23 @@
+--- a/drivers/net/phy/ar40xx.c
++++ b/drivers/net/phy/ar40xx.c
+@@ -2021,6 +2021,12 @@ static int ar40xx_probe(struct platform_
+ 	/* register switch */
+ 	swdev = &priv->dev;
+ 
++	if (priv->mii_bus == NULL) {
++		dev_err(&pdev->dev, "Probe failed - Missing PHYs!\n");
++		ret = -ENODEV;
++		goto err_missing_phy;
++	}
++
+ 	swdev->alias = dev_name(&priv->mii_bus->dev);
+ 
+ 	swdev->cpu_port = AR40XX_PORT_CPU;
+@@ -2052,6 +2058,7 @@ err_unregister_switch:
+ 	unregister_switch(&priv->dev);
+ err_unregister_phy:
+ 	phy_driver_unregister(&ar40xx_phy_driver);
++err_missing_phy:
+ 	platform_set_drvdata(pdev, NULL);
+ 	return ret;
+ }
diff --git a/target/linux/ipq40xx/patches-4.19/706-ar40xx-abort-probe-on-missig-phy.patch b/target/linux/ipq40xx/patches-4.19/706-ar40xx-abort-probe-on-missig-phy.patch
new file mode 100644
index 0000000000..19474bff0d
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.19/706-ar40xx-abort-probe-on-missig-phy.patch
@@ -0,0 +1,23 @@
+--- a/drivers/net/phy/ar40xx.c
++++ b/drivers/net/phy/ar40xx.c
+@@ -2021,6 +2021,12 @@ static int ar40xx_probe(struct platform_
+ 	/* register switch */
+ 	swdev = &priv->dev;
+ 
++	if (priv->mii_bus == NULL) {
++		dev_err(&pdev->dev, "Probe failed - Missing PHYs!\n");
++		ret = -ENODEV;
++		goto err_missing_phy;
++	}
++
+ 	swdev->alias = dev_name(&priv->mii_bus->dev);
+ 
+ 	swdev->cpu_port = AR40XX_PORT_CPU;
+@@ -2052,6 +2058,7 @@ err_unregister_switch:
+ 	unregister_switch(&priv->dev);
+ err_unregister_phy:
+ 	phy_driver_unregister(&ar40xx_phy_driver);
++err_missing_phy:
+ 	platform_set_drvdata(pdev, NULL);
+ 	return ret;
+ }
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
