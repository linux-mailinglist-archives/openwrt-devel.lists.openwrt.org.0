Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9AB8304D
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 13:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YYKz7HwrasHm/Jm0B1cELcZjh4tzzu/uAIc86NQDAkY=; b=jHFAIUmpY479+lG32/6Y/pcx3A
	0PjlqdH8NBa6iozYjPXDvQBO5o3foi/UmKhvZiR21w0FU1rjKbc3R4kO42C8AYokt/MzH6EhjTIsh
	uJszOPojyhmMgG5l8X+3hdm97wJ4jP+L4UFgvdkho1U5B1yj0khrkOSFGhYqr+xIUfLaKLZSvwtwk
	mA5+ZwdkfCrCOSiVRJNqowUHiU3yHAZ76iBxWHuO9PKCyD0/jN5bMpvac4XATlOenIyBf+7xCK+ZY
	FcOr9DXAXphV06Q3Nwx6Dut0n0schuASMjxRsJKeWVavFco/Ma9ctuCuXE7Mq8LYKDQSYTHNFROGo
	BM/6GQ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxNT-00061T-F8; Tue, 06 Aug 2019 11:11:39 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxN9-0005zU-Vp
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 11:11:21 +0000
Received: (wp-smtpd smtp.wp.pl 32027 invoked from network);
 6 Aug 2019 13:11:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565089874; bh=FDUbme/j1pUwteODZ1eL5ScI5wAq5BruuqqokIAOVDI=;
 h=From:To:Subject;
 b=Gnly7M2zdTTmUfAk4oYQ801FJWctqHGfA7UfqvKa+/mRmiJbFB0IArTiiGb6ohym+
 IW6bJu8LW2clVYfytuYnb1wv97geXOFxAC4SU9P1SBLGrw17Hjg5mQey6M2t0bo5Sc
 XLmsYCeocyBn6clTE7CMlmdqS/finRDo5hyQe2sg=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 13:11:14 +0200
Date: Tue, 6 Aug 2019 12:53:23 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190806125323.32f4293c@kosmio.komorska>
In-Reply-To: <20190806125153.07c9b005@kosmio.komorska>
References: <20190806125153.07c9b005@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: e40c0b779eae8faf83bf326ae6d7a13a
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [caO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_041120_558715_12EC7E26 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/7] ath79: add LAN LEDs control bits for
 AR724x GPIO function pinmux
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

Currently AR724x pinmux for register 0x18040028 controls only JTAG disable bit.
This patch adds new DTS settings to control LAN LEDs and CLKs that allow
full software control over these diodes - exactly the same is done by ar71xx
target in device setup phase for many routers (WNR2000v3 for example).

'switch_led_disable_pins' clears AR724X_GPIO_FUNC_ETH_SWITCH_LED[0-4]_EN bits.
'clks_disable_pins' clears AR724X_GPIO_FUNC_CLK_OBS[1-5]_EN and
AR724X_GPIO_FUNC_GE0_MII_CLK_EN bits. These all should be used together, along
with 'jtag_disable_pins', to allow OS to control all GPIO-connected LEDs and
buttons on device.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/dts/ar724x.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/dts/ar724x.dtsi b/target/linux/ath79/dts/ar724x.dtsi
index b2844bf179..95832d998a 100644
--- a/target/linux/ath79/dts/ar724x.dtsi
+++ b/target/linux/ath79/dts/ar724x.dtsi
@@ -75,7 +75,15 @@
 				#pinctrl-cells = <2>;
 
 				jtag_disable_pins: pinmux_jtag_disable_pins {
-				pinctrl-single,bits = <0x0 0x1 0x1>;
+					pinctrl-single,bits = <0x0 0x1 0x1>;
+				};
+
+				switch_led_disable_pins: pinmux_switch_led_disable_pins {
+					pinctrl-single,bits = <0x0 0x0 0xf8>;
+				};
+
+				clks_disable_pins: pinmux_clks_disable_pins {
+					pinctrl-single,bits = <0x0 0x0 0x81f00>;
 				};
 			};
 
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
