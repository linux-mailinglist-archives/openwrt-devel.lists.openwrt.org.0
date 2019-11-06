Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01813F16A5
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 14:07:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jnfCGw6//dCYiy1hJ1aAu6WXLdA9uEuvx2kUANhTKz8=; b=OwKL9sdzUM0/EW
	UebdB7iCKkvOr0ntWORI3DoGnlewwdIIng1Qra6jVi9lzzjdmcV5Kh5zVx1ksbKxYVTvY1mifu5z4
	rPpRberO97LlHd7NoLCHrTnTaHyvJWnMmEFD1cdxALlVQcd+v0x8VynkDkR5YP8N9BtlS5TEx6Vq8
	kV0ZzLdsAgoHtNgNOTA1hF8cseF/FGKNzEe2uolFeFHABjqJ6c/W44cVUFi5FG4Q2uljo+X9p0ctF
	DKdOcvFS9BB5y/hHcmrUEGATfUogU2GrAPhxAAHv/mDqgZxi7XyuyHW/NgBMvLhuWxRjivcx9XheG
	/gJ23/68h37NM9fxCfZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSL1a-0004OV-DA; Wed, 06 Nov 2019 13:07:02 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSL1S-0004Nr-0n
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 13:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=6b//ds4Pgq1acbW9mOEeF0Espb/8STN3QDbBXcHj7VU=; 
 b=C7AonYbd7GW0jT+VET5F6OZ1cfjVO/42/adH1gypVjLOlhM1lRCsBkM6MqGJOXO2xlypMNo4VwyrMC+76BB3Gv2AcvNEbJ64NwqShjB/I6pAEOv1E/PBmyoTrkzuUBANwXlNfB3Mbs2XxQrQAB/5GLm+PbJdT/QkT88ZWgnl9MA=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 14:06:39 +0100
Message-Id: <20191106130639.16436-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a05:a1c7:1:b101:384f:d3b9:51ad:308a
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iSL0b-0005ve-0a
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a05:a1c7:1:b101:384f:d3b9:51ad:308a]
 (helo=lappi.newmedia-net.de)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1iSL0b-0005ve-0a; Wed, 06 Nov 2019 14:06:01 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_050654_489896_48732D7B 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: wpj419: use reset-gpios property
 for phy reset
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The old GPIO based phy reset (phy-reset-gpio) will be removed form
the ipq40xx mdio driver in the future.

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 .../files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts       | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
index b6eb99278b..e75d07606a 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
@@ -236,9 +236,10 @@
 
 		mdio@90000 {
 			status = "okay";
-			phy-reset-gpio = <&tlmm 47 0>;
 			pinctrl-0 = <&mdio_pins>;
 			pinctrl-names = "default";
+			reset-gpios = <&tlmm 47 GPIO_ACTIVE_LOW>;
+			reset-delay-us = <5000>;
 		};
 
 		ess-psgmii@98000 {
-- 
2.24.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
