Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA56E9619E
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 15:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SV86kxDja6R+nurfSQBofwBhYorZZph0DoaJSZMIsKk=; b=cyvReTYHVKA1MU
	FT6T/+AEydpudJjCrPrRZ99PJWCoNyGBeEBSqQMLsAX0jBvCPp345S1dufQnutcFA5Q2q16zd35oL
	9P04WC4oBWsT5YEjtF0oZa8+OQly3bWyrYIKRYXjJ1wJc7v2JSkQhZCWOFimI88D7a05UvVZQ+iVR
	XHJeaFc6utt6Ns5/AILOpmknChpDA46aT24pKQE9NcNKwvsBBEWgmbJ9foIOZzL8CrmqUzKc32/85
	nFZzH+oLjiPau93iWolH4vSjhlb8khxONufuqsZbA8rcBJ9QZQD01ofPSsZiESemwJNJXu7cEXrfj
	neXTLB7G4ES1TVT1gPBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04Yi-0000iL-H5; Tue, 20 Aug 2019 13:52:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04YY-0000i4-GY
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 13:52:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id e11so3298709pga.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 06:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PeiOHCnK/Q5YHxVN9eBfcmLPEG2prZu0tSPd4YPruQw=;
 b=PSi6iZ9fEzNi2N/QarwdWqXH0FljIv4/XmXKNkOnxn72Ven7n0FwNA20esmmkZelFj
 FzpxVUbOEAAY0Mtg8S215eEJNIOf/3tbH1wYJELE6yjhveb+pJl6NJh18kKIl8988sND
 esW4Jtc8CEUZjX5u5Kf4EohmcnrqGFWhGbcEj4kMEfgjhtEs9KaydOonJqKPpN3UK3V2
 YgiuMGinJT9liRSntNh4/1nd1D4cUMfk4O75ojmxS9VSNXN3SuYs2AaeKkjLfiqSgakp
 zY7dAiQDfkIrtUgtcyAakQw7MeE9Q3KFdoeE9HHrVqmtb46SgG2fejRGy2AKyhUuymcd
 6cfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PeiOHCnK/Q5YHxVN9eBfcmLPEG2prZu0tSPd4YPruQw=;
 b=dJVSl/Dh3+HHx3l6LfGcBICkaNanlJsJCs7GZBuXSzGQJy9qjPojs6AMD4qKZnz+NE
 Kw4KUyfhFEhrnCqQZw7b93qS0VwR5L8VZS231OuDzcFc1gt0nhohCg+hCrt78FEhLb6e
 tqjRjmGL/6E7RXzDfqUb70PbnLbBwmfSNdxKGZargj2G9NTRm80EDTgcPgCPleukuX/r
 6x//3QXG38sfUJcEot8arCQ7qlKIBXURBLMSv2YdxQ09JXXXCrQ0xQgkAqMpIfkhKN9P
 9HnYFJuFhOHpYxk4XC80b6iNfsgMfdWbCjaLSi6tYuW9hZ6r3jxeeKOBhohPqdL/TZo1
 3ZhQ==
X-Gm-Message-State: APjAAAXzqrjfuP+3J7M/SCkcUlJYmMJDdfR3HL7N6AFbxWtmfsU6qmcu
 iy4gBpuotxnz2WbuFpztwY5Je/4n
X-Google-Smtp-Source: APXvYqzAtP9XaskJWVOyv9B/iqsD3s6XRTFjuT672zb2yIvXHy8Pc+87jrY/8YUsbKkPcwgp9giN1g==
X-Received: by 2002:a63:6d8d:: with SMTP id
 i135mr24592918pgc.303.1566309133383; 
 Tue, 20 Aug 2019 06:52:13 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id l31sm20862016pgm.63.2019.08.20.06.52.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 06:52:12 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: john@phrozen.org
Date: Tue, 20 Aug 2019 13:51:59 +0000
Message-Id: <20190820135159.15632-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_065214_576273_644449F6 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound Networks
 Zodiac GX
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org,
 paul@northboundnetworks.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hardware spec

 - MT7621A dual-core 880MHz
 - 16MB Flash
 - 256MB RAM
 - 5 GbE ports

Vendor device page: https://northboundnetworks.com/products/zodiac-gx

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 .../ramips/base-files/etc/board.d/02_network  |  1 +
 .../dts/mt7621_northbound_zodiac-gx.dts       | 97 +++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  9 ++
 3 files changed, 107 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index c0de9d4e50..2e3e5fbba7 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -392,6 +392,7 @@ ramips_setup_interfaces()
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
 		;;
 	linksys,re6500)
+	northbound,zodiac-gx)
 		ucidef_add_switch "switch0" \
 			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "6@eth0"
 		;;
diff --git a/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
new file mode 100644
index 0000000000..51f2298d06
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_northbound_zodiac-gx.dts
@@ -0,0 +1,97 @@
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "northbound,zodiac-gx", "mediatek,mt7621-soc";
+	model = "Zodiac GX";
+
+	aliases {
+		led-boot = &led_status;
+		led-failsafe = &led_status;
+		led-running = &led_status;
+		led-upgrade = &led_status;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_status: status {
+			label = "zodiac:green:status";
+			gpios = <&gpio0 15 1>;
+		};
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 18 1>;
+			linux,code = <KEY_RESTART>;
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
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0xfb0000>;
+			};
+		};
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0xe000>;
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "wdt", "rgmii2", "jtag", "mdio";
+			ralink,function = "gpio";
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index d32feb7eab..e52b1eba19 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -464,6 +464,15 @@ define Device/netis_wf-2881
 endef
 TARGET_DEVICES += netis_wf-2881
 
+define Device/northbound_zodiac-gx
+  MTK_SOC := mt7621
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := Northbound Networks
+  DEVICE_MODEL := Zodiac GX
+  SUPPORTED_DEVICES += zodiac-gx
+endef
+TARGET_DEVICES += northbound_zodiac-gx
+
 define Device/phicomm_k2p
   MTK_SOC := mt7621
   IMAGE_SIZE := 15744k

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
