Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC6F16F503
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 02:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6huZWsHhK0Wjweht/A8kcC6Psvw/yOWw2Harh9OcGR8=; b=lalbWQzHLdMO4h
	VJDIghBhPiEolBocc07IAO9U10ctqtgW0/P1GwARFaLdqHCWQ5lJg+tYCi9XqL8NgNOWmwpj/bFkL
	FxjjxKyAZcfReAF91iN8/WlSuNJBoLE/0PsVHuFddof5L+Rh88tZKucUTOwvthuBKKa1thb1zGgla
	NPuUGtJdOaYCX4gmgigwuN05X/OzqnGwf5zTUfrsI8w9wk5WXuwvjIxCFl4H19/lombxbbD5D9NAO
	LrMiaZK09U0jbllU2ak7A/3KmesgvbyyTXblwf6RljCua8IzIwTpsuRR5kz3VyMYqYhzzwjvuFANr
	ZKzwObyCmSvrhkrp4SFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lWr-0005T2-6s; Wed, 26 Feb 2020 01:30:25 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lWi-0005SS-Ra
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 01:30:18 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1j6lWe-0002PF-9i
 for openwrt-devel@openwrt.org; Tue, 25 Feb 2020 20:30:13 -0500
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1582679389;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=kZ+HKKkSmmC1okiaZB3/ctZupf4=;
 b=DVT/BRsQbfb7PC7tOi9DaZttTXYmFaHpeLUaCYSzJcKX3a8h4VusqgTUGsYK2OcB
 sxZG+fe8RA2mgpaHoFXR80Kd3YJeQniOFbIp/3uEIv3rl9YYUmGnlCQyasBlmpdt
 v+NWDu8npaNGDgvRrSRL3cVn2JpwUkUBQ4uU0y0Dnxfh2LkLpsbciGgPg7neRy3W
 SQ+WmFYVi9lzxYEIYAUzbnj2NC6pDX4tbq034RBR+6aAHENras3QlgzkE/BZxHX3
 /zoyCKQN80fM4GduvZLeiZoRubJbqvdNL4LcwFo51ggvqyxZFh1QirofH4U/RacI
 UseJDKRJMuW8AgS+kXwLqw==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=D8Y51cZj c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=l697ptgUJYAA:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=I_5RNyk1AAAA:8 a=CBtTpcMYwg7jRY5o8rYA:9
 a=Bj_jo53NIrXPy3-f:21 a=xybXwoh5rXKtIezz:21 a=QEXdDO2ut3YA:10
 a=Eh9yxdLE6B1twWrs3SXz:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp03.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:46704] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id 46/4C-29377-C55C55E5; Tue, 25 Feb 2020 20:09:49 -0500
Date: Tue, 25 Feb 2020 17:09:42 -0800
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200226010942.GA21404@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: Signed-off-by: J. Scott Heppler ramips: add support for
 TRENDnet
 TEW-810DR Exact hardware clone for the D-Link DIR-810L. 
 Content analysis details:   (-1.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mt7620.mk]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
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
X-CRM114-CacheID: sfid-20200225_173017_283368_E95F184E 
X-CRM114-Status: UNSURE (   4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: add TRENDnet TEW-810DR support
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

Signed-off-by: J. Scott Heppler <shep971@centurylink.net>

ramips: add support for TRENDnet TEW-810DR

Exact hardware clone for the D-Link DIR-810L.

Specification:

  * MediaTek MT7620N (580 Mhz)
  * 8 MB of FLASH
  * 64 MB of RAM
  * 5x 10/100 Mbps Ethernet (1 WAN and 4 LAN)
  * UART header on PCB (57600 8n1)
  * 2x BiColor LED (GPIO-controlled)
  * 2x button - power and reset
  * U-boot bootloader

Installation:

The sysupgrade.bin image needs to have a cameo hardware ID appended
with ncc_att_hwid.  ncc_att_hwid is available in the GPL Source
download in either the TEW-810DR or DIR-810L and is located at
source/user/wolf/cameo/ncc/hostTools
The appended image can then be flash via the Web rescue interface
192.168.10.1 or TFTP's to the same IP address.  Subsequent upgrades
can be done using the Luci web interface or the ssh command line per the
OpenWRT documentation.

---
 .../ramips/base-files/etc/board.d/02_network  |   1 +
 target/linux/ramips/base-files/lib/ramips.sh  |   3 +
 target/linux/ramips/dts/TEW-810DR.dts         | 159 ++++++++++++++++++
 target/linux/ramips/image/mt7620.mk           |   8 +
 4 files changed, 171 insertions(+)
 create mode 100644 target/linux/ramips/dts/TEW-810DR.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index f743ce851a..a692ef6ea4 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -116,6 +116,7 @@ ramips_setup_interfaces()
 	sap-g3200u3|\
 	sk-wb8|\
 	telco-electronics,x1|\
+	tew-810dr|\
 	totolink,lr1200|\
 	unielec,u7621-06-256m-16m|\
 	unielec,u7621-06-512m-64m|\
diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
index 093303892c..3ce42421ee 100755
--- a/target/linux/ramips/base-files/lib/ramips.sh
+++ b/target/linux/ramips/base-files/lib/ramips.sh
@@ -478,6 +478,9 @@ ramips_board_detect() {
 	*"TEW-714TRU")
 		name="tew-714tru"
 		;;
+	*"TEW-810DR")
+                name="tew-810dr"
+                ;;
 	*"Timecloud")
 		name="timecloud"
 		;;
diff --git a/target/linux/ramips/dts/TEW-810DR.dts b/target/linux/ramips/dts/TEW-810DR.dts
new file mode 100644
index 0000000000..6be20c1dda
--- /dev/null
+++ b/target/linux/ramips/dts/TEW-810DR.dts
@@ -0,0 +1,159 @@
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
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power_green: power {
+			label = "tew-810dr:green:power";
+			gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan {
+			label = "tew-810dr:orange:wan";
+			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
+		};
+
+		power2 {
+			label = "tew-810dr:orange:power";
+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&spi0 {
+	status = "okay";
+
+	m25p80@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x30000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "u-boot-env";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			factory5g: partition@50000 {
+				label = "factory5g";
+				reg = <0x50000 0x10000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "Wolf_Config";
+				reg = <0x60000 0x10000>;
+				read-only;
+			};
+
+			partition@70000 {
+				label = "MyDlink";
+				reg = <0x70000 0x80000>;
+				read-only;
+			};
+
+			partition@e0000 {
+				label = "Jffs2";
+				reg = <0xe0000 0x80000>;
+				read-only;
+			};
+
+			partition@170000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x170000 0x690000>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "mdio", "rgmii1", "i2c", "wled", "uartf";
+			ralink,function = "gpio";
+		};
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x28>;
+	mediatek,portmap = "llllw";
+};
+
+&gsw {
+	mediatek,port4 = "ephy";
+	pinctrl-names = "default";
+	pinctrl-0 = <&ephy_pins>;
+};
+
+&pcie {
+	status = "okay";
+};
+
+&wmac {
+	ralink,mtd-eeprom = <&factory 0x0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pa_pins>;
+	mtd-mac-address = <&factory 0x28>;
+};
+
+&pcie0 {
+	wifi@0,0 {
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+		mtd-mac-address = <&factory 0x28>;
+		mtd-mac-address-increment = <2>;
+	};
+};
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index fff10425a7..0bc6111946 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -651,6 +651,14 @@ define Device/tplink_c20-v1
 endef
 TARGET_DEVICES += tplink_c20-v1
 
+define Device/tew-810dr
+  DTS := TEW-810DR
+  DEVICE_PACKAGES := kmod-mt76x0e
+  DEVICE_TITLE := TRENDnet TEW-810DR
+  IMAGE_SIZE := 6720k
+endef
+TARGET_DEVICES += tew-810dr
+
 define Device/vonets_var11n-300
   DTS := VAR11N-300
   IMAGE_SIZE := $(ralink_default_fw_size_4M)
-- 
2.20.1


-- 
J. Scott Heppler

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
