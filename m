Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D314FE59
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 17:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ru8itVLARmDlBn4syzKSMcRmzpOp7+xAMwCwJMzZfBs=; b=noz3ESkCS9uwX6
	vGkdoG3RxDQVyp8JlOpFv9j1+vY44nMwzt66QlQv5qNYnMbz6BLqhdt6baKbElW6cR4OEvc0RLAZV
	8cOa9UW06P2OZu67VagF0VUSFQURKyoCLqZIk2tMrmOAptTEX0VCk+ojUEiRfCSZm10TypPCfNB44
	312rP7NyE/ddXh0S2OTgi3CaVDt7DnVkvs4TbqekOM/8gTMQgjxVb9JCk+ar03Eqt1OWDEzVXDZL6
	My+XCLJI3UoWab72x8XeX5+jfCT9qkDPEHgRJD4P4U3nFA2tR/CvFKwoJeWJqtBL2egDiCmaKGy5Y
	Ipu3PNUzUnmIvQMW2V8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyIIp-0001ka-Sb; Sun, 02 Feb 2020 16:40:55 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyIIk-0001jJ-2r
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 16:40:51 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iyIIg-0003Od-9t
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 17:40:46 +0100
Date: Sun, 2 Feb 2020 18:40:33 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200202163128.GA9861@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_084050_119989_26528E0B 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/3] ath79: enable i2c-gpio and spi-gpio in
 generic subtarget
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

For devices having LEDs or buttons connected via I2C or SPI connected
GPIO chips it is desireable to access these busses early during boot
in order to signal progress and failsafe-mode. Hence have support for
i2c-gpio and spi-gpio built-into the kernel on generic (ie. non-tiny)
systems.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 target/linux/ath79/generic/config-default | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/target/linux/ath79/generic/config-default b/target/linux/ath79/generic/config-default
index 2d8f7f20c2..8c3ed13fb5 100644
--- a/target/linux/ath79/generic/config-default
+++ b/target/linux/ath79/generic/config-default
@@ -1,6 +1,8 @@
 CONFIG_AT803X_PHY=y
 CONFIG_GPIO_WATCHDOG=y
 CONFIG_GPIO_WATCHDOG_ARCH_INITCALL=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
 CONFIG_INTEL_XWAY_PHY=y
 CONFIG_IP17XX_PHY=y
 CONFIG_LEDS_RESET=y
@@ -18,5 +20,6 @@ CONFIG_RTL8366RB_PHY=y
 CONFIG_RTL8366S_PHY=y
 CONFIG_RTL8366_SMI=y
 CONFIG_RTL8367_PHY=y
+CONFIG_SPI_GPIO=y
 CONFIG_VITESSE_PHY=y
 CONFIG_WATCHDOG_CORE=y
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
