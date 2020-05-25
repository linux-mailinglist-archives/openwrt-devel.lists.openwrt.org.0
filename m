Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2A41E185D
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 01:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ejwJwkHHzTzUUS1K1pK0x//yWpAzak12OzU5FesFiiM=; b=sPNvL4D8/8FCtH
	ngSsF/8YiobT8jnxk5cicKxqGNI64Mu9BOsPjkvLxGpP5Oqiyt8nWfRjSCixjiAtKMMDsy0mVqwq9
	eiDSie5lvLqur8qe04GO6kauzjIHxASl1qh0tPGdQBPyUcElEFCGBuL0n0ew/UfUUow8Pv/qehno4
	RMOZRe9HX6OjhUj160UXwOVp8Tl3wcWuF+vOwyzCfTTIwsZobWfl5INj1dE93WlbF5z7w2aTxrrMD
	1ORpGeeC97hCGJ2WnDaq2TMSAIMV8BnoEBpCWil3s5B9Dn/DAvl5RAL4cFy/hBvtUb2vuyoBc0FGj
	PfPx54Ii6pacNWA44iVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdMyx-0003gy-QC; Mon, 25 May 2020 23:58:11 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdMyp-0003gC-JN
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 23:58:06 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net) by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1jdMyk-000829-Qb
 for openwrt-devel@openwrt.org; Mon, 25 May 2020 19:57:59 -0400
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1590451063;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=2iYVooICnDD4dE0IpgJUWFrOxj4=;
 b=0A+tPANx/CZohHlaGZQj2k44HnpSLvoEIAfC0gfVjFnNraelrMlKhrYft9hUinYG
 KSCzjUK0Z8Zqk4mEauvtavVmM7g+3fFO7kr3mjowOhzsNINzwxsC9uz6p8CZ91fj
 +/uQ/KUAfmwRFDVXLzK8JtngQld2dj7C6FexZF4VlnnTUmUS5FgGdvvj8MIs0UfN
 etybz7lI+w/BADQBFKfve+fq+hYRUENHU812sOggSH/owowtBON7KgpwVztz689M
 pqmlzDXQ1Pvwsh0BHebEmhFHY3RofoB1Jw32tv5e1xP9RZrB1gAjQ8c8yiquTRGJ
 fR9ebrZ/K7NI1Draf+PZUw==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=fuqim2wf c=1 sm=1 tr=0
 a=OSsl9/196MxzRSbOzWpbVA==:117 a=OSsl9/196MxzRSbOzWpbVA==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=sTwFKg_x9MkA:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=I_5RNyk1AAAA:8 a=fvmupL9xMZt8qUZ81PAA:9 a=QEXdDO2ut3YA:10
 a=Eh9yxdLE6B1twWrs3SXz:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp01.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.3.225] ([71.32.3.225:44033] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-GCM-SHA384) 
 id 65/C7-30875-67B5CCE5; Mon, 25 May 2020 19:57:43 -0400
Date: Mon, 25 May 2020 16:57:36 -0700
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200525235736.GA35779@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: * MediaTek MT7620A (580 Mhz) * 8 MB of FLASH * 64 MB of RAM
 * 2.4Ghz and 5.0Ghz radios both now functional * 5x 10/100 Mbps Ethernet
 (1 WAN and 4 LAN) * UART header on PCB (57600 8n1) * Green/Orange P [...] 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mt7620.mk]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [206.152.134.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_165803_784571_E2FA81F8 
X-CRM114-Status: UNSURE (   4.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v5] ramips: add support for Trendnet
 TEW-810DR
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


* MediaTek MT7620A (580 Mhz)
* 8 MB of FLASH
* 64 MB of RAM
* 2.4Ghz and 5.0Ghz radios both now functional
* 5x 10/100 Mbps Ethernet (1 WAN and 4 LAN)
* UART header on PCB (57600 8n1)
* Green/Orange Power LEDs illuminating a Power-Button Lens
   Green/Orange Internet LEDs GPIO controlled illuminating a Globe/Internet Lens
* 3x button - wps, power and reset
* U-boot bootloader

Installation:

The sysupgrade.bin image is reported to be OEM web flashed with an ncc_att_hwid
appended.  ncc_att_hwid is a 32bit binary in the GPL Source download for either
the TEW-810DR or DIR-810L and is located at
source/user/wolf/cameo/ncc/hostTools.
The invocation is: ncc_att_hwid
-f tew-810dr-squashfs-factory.bin -a -m "TEW-810DR" -H "1.0R" -r "WW" -c "1.0"
This may need to be altered if your hardware version is "1.1R".
The image can also be directly flashed via serial tftp.
1.  Load *.sysupgrade.bin to your tftp server directory and rename for
convenience.
2.  Set a static ip 192.168.10.100.
3.  NIC cable to a lan port.
4.  Serial connection parameters 57600,8N1
5.  Power on the TEW-810 and press 4 for a u-boot command line prompt.
6.  Verify IP's with U-Boot command "printenv".
7.  Adjust tftp settings if needed per the tftp documentation
8.  Boot the tftp image to test the build.
9.  If the image loads, reset your server ip to 192.168.1.10 and restart network.
10. Log in to Luci, 192.168.1.1, and flash the *sysupgrade.bin image.

Signed-off-by: J. Scott Heppler <shep971@centurylink.net>

Summary v4 -> v5
1.  Enumerated installation steps and corrected grammar.
2.  Added SPDX License Identifier to *.dts.
3.  gpio-keys-polled -> gpio-keys in *.dts.
4.  gpio2 0 is actually behind a Globe/Internet lens - changed to wan.
5.  Increased spi-max-frequency 10000000 -> 50000000
6.  jffs2 partition 0xe0000 -> 0xf0000.
7.  &state_default groups; dropped mdio, rgmii1, wled.
8.  MAC assignments mirror DIR-810L code and verify in Luci.  Unchanged
02_network and *.dts.
9.  01_leds changed consistent with #4.
10. Removed SUPPORTED_DEVICES from image/mt7620.mk.  Note: the D-Link
DIR-810L has the same SUPPORTED_DEVICES entry in image/mt7620.mk.
11. Builds/Runs on my test Device.
---
  .../ramips/dts/mt7620a_trendnet_tew-810dr.dts | 166 ++++++++++++++++++
  target/linux/ramips/image/mt7620.mk           |   9 +
  .../mt7620/base-files/etc/board.d/01_leds     |   3 +
  .../mt7620/base-files/etc/board.d/02_network  |   8 +-
  4 files changed, 183 insertions(+), 3 deletions(-)
  create mode 100644 target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts

diff --git a/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
new file mode 100644
index 0000000000..5012d39b51
--- /dev/null
+++ b/target/linux/ramips/dts/mt7620a_trendnet_tew-810dr.dts
@@ -0,0 +1,166 @@
+//SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7620a.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "trendnet,tew-810dr", "ralink,mt7620a-soc";
+	model = "TRENDnet TEW-810DR";
+
+	aliases {
+		led-boot = &led_power_green;
+		led-failsafe = &led_power_green;
+		led-running = &led_power_green;
+		led-upgrade = &led_power_green;
+		label-mac-device = &ethernet;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WPS_BUTTON>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power_green: power_green {
+			label = "tew-810dr:green:power";
+			gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan_orange: wan_orange {
+			label = "tew-810dr:orange:wan";
+			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan_green: wan_green {
+			label = "tew-810dr:green:wan";
+			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
+		};
+
+		led_power_orange {
+			label = "tew-810dr:orange:power";
+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&spi0 {
+	status = "okay";
+



-- 
J. Scott Heppler

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
