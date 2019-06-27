Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E115845B
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Jun 2019 16:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SVBD/Nq6+5Z+q73l39SUYLJQf8ZQeHVe6NF9Jfdo3kk=; b=oSSURk3z4TmW8a
	2JGPWdNRuPB/k2TvjCAeU2My4J4oPtIO0V2O9Olf1XZkkl0x4qAGYawH7WCdX8NRV6jfKaRsS4ems
	baP5ZRk0AhY4h3MahNMtcWmd6svGBXfigFprD4BAfdW4sNPZ9z8A3M9a/bhSji3TdrC+1WCqVG9Dt
	NoTXVffce74mdh8g2XS+kec9+4D37qnpn9cA/NZ/h9mCHTTm5io+RjqE0v5aWq7Namlb4q+0aQjz7
	SY8dhkHzw9g3G/eIKojQujMW3rm1eWXBhXn6+JxpE/m1kPlpegrsheXvadL5S1wfryTaY1VkeX/Yt
	5d0HDh0WRCBXipk9CO1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVFC-0006lQ-Np; Thu, 27 Jun 2019 14:19:22 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVEz-0006k8-Az
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 14:19:10 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MCKJw-1hptAr3Jas-009O8g for <openwrt-devel@lists.openwrt.org>; Thu, 27
 Jun 2019 16:19:03 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 27 Jun 2019 16:18:55 +0200
Message-Id: <20190627141855.1887-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:shGx+Dg+2NE84iHRaLHfzItmGaDLwIHN0yRsfk4jIWLmGtZMNHY
 ZEzyCyHYgWfHhirsMEgNlF0SPIBWYVeLGrihb0irssQm1a5lQNvBbOZuxA1zTG+fSzTP1Mq
 C/OlXFMYfqlpC2mWgc5e5LEef/dAo4w8+l+96LPgdO3yV9pLol7LGRCrLM8L9T0OISNXjY2
 k0W+hUon+u+JvgVN6/c6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pSSrpQzMPWg=:/YlB/AzLQ68nCZtalLpACB
 oepAZ1hoI27kQRaJbHlnD/3Qo5DsvDbNcSx+CXOJ/HxvYCR8WuN8FFt+X529p9J2cGWTWeeNV
 yqrSeGwBaMY+Vv/k/ASYiMjSmMGwKSCmM1EmUumP7683P6KbngZq55kJmcvmRtvJJ8jabhtRW
 3fVsc6BvAny2A86/m/1RxHkg3RQ+U1WU1Y7GH434TZwJXfvs/4DJnhiv/9fEsEm/8e6f40UY2
 T6DzMmOd1Kk2J49wOiQuZIvjlyvRT9vFjKUwkEgw+modvq8Yh7+s34DC2187oRAbNornrVq9c
 INosRq4CUrzowgmLi8KP2BLcBSzgQCVMXfduve0cyfXHGuA4G1KHwLQfaKoXKGzVuckk/7xiy
 lvEc1rsYkdJ82Q1Q0l+MufIr6qQV7RQby66q9Adv+SDuMsKvaVL1ss7MI8dEsjTnz/1b2nBsm
 DdU3VVcVSnTwhlWQhnN1GGy1rTt/6He5zPn723sEpY+iIz5Xtah+sD/5z3liyq1Gh2PD2BxLn
 /tWHw1PkBXfiQVEW7NxqmWiMnRh/FCx4ka5s8Oy0fqzchzxi/qG6I/8o+/hypweW2Juc8ofoo
 pTHZjsQv7iWsysLAkJCFfdy2lf2LME+yxANkryDPefOf9La2g+WB8mTFgvNOPvT/VPFgxNM3b
 2+6qXrmjTvYrF2PqeVOUJ8zIq5WvcnmDH9fuJy0FNJh8lAUhVd0MpaVz0AcMvzZ1lgF0dxUNW
 RB8fh9YOnTveWDGA1bEbQg4IJ7y5odLkq288gSVxj7ULga+RiuLLsjhRaow=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_071909_674556_101E1EE2 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: Fix compatible for YUKAI
 Engineering BOCCO
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

Looks like an undetected copy/paste error.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/BOCCO.dts   | 2 +-
 target/linux/ramips/image/mt7620.mk | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/dts/BOCCO.dts b/target/linux/ramips/dts/BOCCO.dts
index 6b6ac754ea..cc9c6688dc 100644
--- a/target/linux/ramips/dts/BOCCO.dts
+++ b/target/linux/ramips/dts/BOCCO.dts
@@ -6,7 +6,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	compatible = "planex,cs-qr10", "ralink,mt7620a-soc";
+	compatible = "yukai,bocco", "ralink,mt7620a-soc";
 	model = "YUKAI Engineering BOCCO";
 
 	keys {
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index 077834edc8..183fe2592a 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -131,6 +131,7 @@ define Device/bocco
   DTS := BOCCO
   DEVICE_TITLE := YUKAI Engineering BOCCO
   DEVICE_PACKAGES := kmod-sound-core kmod-sound-mt7620 kmod-i2c-ralink
+  SUPPORTED_DEVICES += planex,cs-qr10
 endef
 TARGET_DEVICES += bocco
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
