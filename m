Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E71BCE87
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 23:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x/as48g+2aJM1d3T3UqrOr1tw6c5uulo6R2auNGV2xM=; b=KGndGE5EuaJ/mixriehxzqDgW+
	whs72N+fW6fQqe+rtI8Jc4ueCs08XLqp25Jqir9iLjF0Gdi6aCT02LqmKA1D/ZY7kg0kN3nFiWrMy
	6ssrX8lxb6YNmfPp0xd6106MSMT5dBZiB72QTuBzCm+nH5iYrNU4XJ4MgXsC4qU7P1plIXMlRrdQ5
	/1oN0/CC2FFklcF15wHCFDdhHD5SkJTe3WFC0xSIyjWn2nQnWnN6CNRhC2mDHJPZoEk9LeI3l/6p1
	ZNjpzmBxpnTygZM0XP6JPiQnEhFvCXcFAly5yHYOeRpnVC5ax7xMcyjdLCWy//VNvhl5WSOn562HI
	o7CHDp0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXfD-0004Ab-MO; Tue, 28 Apr 2020 21:21:11 +0000
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Apr 2020 23:20:13 +0200
MIME-Version: 1.0
Message-ID: <mailman.7776.1588108867.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Johann Neuhauser via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Johann Neuhauser <johann@it-neuhauser.de>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Johann Neuhauser <johann@it-neuhauser.de>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] ath79: phy-ar7200-usb: do not print error
 on defered init
Content-Type: multipart/mixed; boundary="===============6404662924815602092=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6404662924815602092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6404662924815602092==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from challenger4.mydhp.de ([185.84.81.4])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXf6-0004A1-Fg
	for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 21:21:06 +0000
From: Johann Neuhauser <johann@it-neuhauser.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=it-neuhauser.de;
	s=atlas188; t=1588108842;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HsYccrqsn1H+CmluRZoY15DV0j3lMxS6gcazbyBVqOQ=;
	b=JJ3vjTJXL0QAVQ2ernoEQNvBt+WLw2p0Dn4HU0uydh5fKzIwErgfm5IfBMkQzHPMgSGA1v
	qB8BZ8lMmq6hXFUDSzekVJdQjPPCvnI5UrYev+G4gX3uru383kMR/G/vxOF4RJTOvNzef3
	JoxFV0JDcETarPtiHrE1yCcFTsw70LY=
To: openwrt-devel@lists.openwrt.org
Cc: Johann Neuhauser <johann@it-neuhauser.de>,
	Lech Perczak <lech.perczak@gmail.com>
Subject: [PATCH] ath79: phy-ar7200-usb: do not print error on defered init
Date: Tue, 28 Apr 2020 23:20:13 +0200
Message-Id: <20200428212013.18011-1-johann@it-neuhauser.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_142104_702495_2268F535 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

This is only a cosmetic correction, as the driver works as expected.
However, the error message confuses users about a missing reset definition.

On a defered init we don't see the following error message now:
[    0.078292] ar7200-usb-phy usb-phy: phy reset is missing

Tested-by: Lech Perczak <lech.perczak@gmail.com>
Signed-off-by: Johann Neuhauser <johann@it-neuhauser.de>
---
 .../ath79/patches-4.19/0004-phy-add-ath79-usb-phys.patch     | 5 +++--
 .../ath79/patches-5.4/0004-phy-add-ath79-usb-phys.patch      | 5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/patches-4.19/0004-phy-add-ath79-usb-phys.patch b/target/linux/ath79/patches-4.19/0004-phy-add-ath79-usb-phys.patch
index fa3487d392..3629e6e875 100644
--- a/target/linux/ath79/patches-4.19/0004-phy-add-ath79-usb-phys.patch
+++ b/target/linux/ath79/patches-4.19/0004-phy-add-ath79-usb-phys.patch
@@ -194,7 +194,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +MODULE_LICENSE("GPL");
 --- /dev/null
 +++ b/drivers/phy/phy-ar7200-usb.c
-@@ -0,0 +1,135 @@
+@@ -0,0 +1,136 @@
 +/*
 + * Copyright (C) 2015 Alban Bedel <albeu@free.fr>
 + *
@@ -265,7 +265,8 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +
 +	priv->rst_phy = devm_reset_control_get(&pdev->dev, "usb-phy");
 +	if (IS_ERR(priv->rst_phy)) {
-+		dev_err(&pdev->dev, "phy reset is missing\n");
++		if (PTR_ERR(priv->rst_phy) != -EPROBE_DEFER)
++			dev_err(&pdev->dev, "phy reset is missing\n");
 +		return PTR_ERR(priv->rst_phy);
 +	}
 +
diff --git a/target/linux/ath79/patches-5.4/0004-phy-add-ath79-usb-phys.patch b/target/linux/ath79/patches-5.4/0004-phy-add-ath79-usb-phys.patch
index 7956edb937..e319f738a5 100644
--- a/target/linux/ath79/patches-5.4/0004-phy-add-ath79-usb-phys.patch
+++ b/target/linux/ath79/patches-5.4/0004-phy-add-ath79-usb-phys.patch
@@ -194,7 +194,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +MODULE_LICENSE("GPL");
 --- /dev/null
 +++ b/drivers/phy/phy-ar7200-usb.c
-@@ -0,0 +1,135 @@
+@@ -0,0 +1,136 @@
 +/*
 + * Copyright (C) 2015 Alban Bedel <albeu@free.fr>
 + *
@@ -265,7 +265,8 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +
 +	priv->rst_phy = devm_reset_control_get(&pdev->dev, "usb-phy");
 +	if (IS_ERR(priv->rst_phy)) {
-+		dev_err(&pdev->dev, "phy reset is missing\n");
++		if (PTR_ERR(priv->rst_phy) != -EPROBE_DEFER)
++			dev_err(&pdev->dev, "phy reset is missing\n");
 +		return PTR_ERR(priv->rst_phy);
 +	}
 +
-- 
2.20.1



--===============6404662924815602092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6404662924815602092==--
