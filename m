Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1440A83399
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 16:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYKz7HwrasHm/Jm0B1cELcZjh4tzzu/uAIc86NQDAkY=; b=CW3N4Kqn2VnZF0
	4bCIuJMDas7Ays+X0nwhiXOfayR6zsH08ThyLUq88AD5r6X42kBIjWMkty72UX9MPvkU0Fn9r51cc
	0lPiPWvfIO+5cmAyYPecy7V6NQZDs9pcEzkM6mDbpJqxPsjYAjG6j+fK/M1IChZE3FvojaMvRQ/HW
	AN1a4yWmjWmVHY+b1+S0KRAI0gU/Sr65dHYUp+2FGDKdZ4LvThXyjboc224qODpiI58ukGrpvrlGE
	Ta5IOqG4JWjfuhqaqkKf0rjLRYaFPNQdkNjzWSqhd+/ldxCsXqPvTRNRhnI01qFt2itYM6v0WVzDq
	HNyLaTbh9I47TgGZSK3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv09E-0002wG-LS; Tue, 06 Aug 2019 14:09:08 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv095-0002vZ-KQ
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 14:09:01 +0000
Received: (wp-smtpd smtp.wp.pl 7964 invoked from network);
 6 Aug 2019 16:08:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565100535; bh=FDUbme/j1pUwteODZ1eL5ScI5wAq5BruuqqokIAOVDI=;
 h=From:To:Cc:Subject;
 b=Cpdpxhi/AAaWlAq48OsaWnqMIMmn5Lh/1X5eep9xdEEDNYX8GpUhh+dFYWkgUrEuU
 Lc4SlrCPMo8f9DgCPqEIt8El/7/aA4rxiNDtVz1leWPGeHk2DliJKYJaJVCr8kYVid
 oRHa8S+2CvbaZ3H3X8+325dpEHh1o2QjR7Ut3bGs=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 16:08:55 +0200
Date: Tue, 6 Aug 2019 15:57:52 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190806155752.0f0189b5@kosmio.komorska>
In-Reply-To: <20190806155540.4e27407b@kosmio.komorska>
References: <20190806155540.4e27407b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: bd2023405f172838966aabb9d08b68b8
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [MTNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_070900_208056_EF810B35 
X-CRM114-Status: UNSURE (   8.11  )
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
Subject: [OpenWrt-Devel] [PATCH v2 1/5] ath79: add LAN LEDs control bits for
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
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
