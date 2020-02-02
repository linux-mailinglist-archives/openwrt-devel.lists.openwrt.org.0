Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D97E14FE5A
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 17:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+BEiKmTV2+6k0a9rPxVvHGmdTtFZyU4a0H+KOMzltrA=; b=sXOLeXeYXtAmjc
	9X+8NpBFVcERYqn3i4ZRGR7Zhld4tD50aIICL0/NuHxTkpqLCSNRFvM2l3LhT9eQwXEcpoH7MPKiv
	ED4H8ztzN6aiGpQHU5QP0YPiKti3O4BgvmzziwAfUgYJN2aW/ysAWMNVP6pPM3R7VQBnEM2losHzW
	ODs243RPMv0dF9IxmuejMpFd93M9IiKv+B/IN6kcajxHyEJmDEMnSTrMpb0z5GGSFqh3Y9azayJ4L
	wI9Ryg9JakRo8hmhXTC0GOPo477xfl3m4k2451L6bUgw4xpxKH0m+mscatA8gj9CNWWQFqqPoHfbA
	X6G6k030Z6UosRGXfjKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyIJT-00023P-Tg; Sun, 02 Feb 2020 16:41:35 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyIJJ-00022c-KJ
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 16:41:26 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iyIJH-0003P7-Ps; Sun, 02 Feb 2020 17:41:24 +0100
Date: Sun, 2 Feb 2020 18:41:12 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200202163554.GA9877@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_084125_665871_64604881 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH/RFC/BROKEN 2/3] ath79: add support for
 Atheros AR934x HS UART
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
Cc: Gerhard Bertelsmann <info@gerhard-bertelsmann.de>,
 Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

AR934x chips also got the 'old' qca,ar9330-uart in addition to the
'new' ns16550a compatible one.
Add device-tree bindings in ar934x.dtsi to make use of it.

Reported-by: Piotr Dymacz <pepe2k@gmail.com>
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
Unfortunately this doesn't work yet, I suspect a clock output doesn't
get enabled. Symptoms are that the uart probes and the first
echo Hallo World > /dev/ttyATH1
returns (but the characters are not actually outputted), doing that
again will not return but wait forever.

Any hints would be more than welcome :)

 target/linux/ath79/dts/ar934x.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/target/linux/ath79/dts/ar934x.dtsi b/target/linux/ath79/dts/ar934x.dtsi
index 8cd0b4e086..1467043209 100644
--- a/target/linux/ath79/dts/ar934x.dtsi
+++ b/target/linux/ath79/dts/ar934x.dtsi
@@ -133,6 +133,21 @@
 
 				#reset-cells = <1>;
 			};
+
+			hs_uart: uart@18500000 {
+				compatible = "qca,ar9330-uart";
+				reg = <0x18500000 0x14>;
+
+				interrupts = <6>;
+
+				clocks = <&pll ATH79_CLK_REF>;
+				clock-names = "uart";
+
+				resets = <&rst 17>;
+				reset-names = "uart1";
+
+				status = "disabled";
+			};
 		};
 
 		nand: nand@1b000200 {
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
