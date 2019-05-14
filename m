Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F79E1C989
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 15:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PNlnUjrfqdasfKbn90puQunrn3NwSr1X9USttfd/oNY=; b=Wyjw3WAYnppFP8
	r5ex5T8O16fwVxvaFDHnGGqMvw5YFKtRil8dlC7VQ0kMXbR90YnA3Xjl8/oJMS8dOZGMn/W+uh3rT
	s0cPiVDNRCg/jodQOM0iMB11loFAFvlEA4tlfmgvOnb8LkyVm3eNTbiM0DiC1cuvtnNqH0CX3cWJn
	L1Y0COTHUegkD9pdwqNAq+uS7wogMs3WWo5ySeQS5tnSUQv13NWLdHeHvO0++VHkgjaKcmC8Nnnn+
	//q01On2ClmTOtMOxE7IIyr/WoLEroyjFWv/WQGkfCWkcZdp1G/8xzh8yQrjPIJkd0FJhDtgATvAG
	JbBmJL4b67wZLniRQJbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXhs-0003aN-CV; Tue, 14 May 2019 13:43:00 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXhZ-0003PG-Sm
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 13:42:44 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so11927217lfy.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 06:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eIjLw7rwFB3w6F5kXyVWna5HK+LPT+hsV8NMbj7+DXs=;
 b=fbaRcFD79I7mI6ep7vSJQHnPJY0bn8zzA0O+KYw+T6ZkZvfYOLPTosJmFvOh4VGCIM
 keDniAfCEiYrTAlcOyHg7DzrZc14kJYJxb5gdTHTKGMpYP21yiz9Bql2fvEu9kMJI92d
 pXL043tLwBkwSOBpt/NBs629WylsKmFytTFEc7vpDlMRobXwsFsswxm9RASAJdlivVwn
 l3jEFAhJBIJvKFS4HeLarEaeziNesHBOeg1CXyjphKCyzfiRGPVry4bHdODPZL/OSILs
 2JA7uzYCUeq6dBOqBZj3vDe44bnLAvQtY1i8rrCdYfPQZQt+YrW5YXSTtwoori+A7Tti
 06+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eIjLw7rwFB3w6F5kXyVWna5HK+LPT+hsV8NMbj7+DXs=;
 b=mWLBQQCsPQH7yYM4bq1gAIqHVyVv5k3qWwSlX0apw9bp/dzcqXRlT/HNZC7TiEEMMe
 c8WHdSbWVF3MmteaVyvR6iL9T+4wD5xQhvlbMrhyQYp4vWKwr4h6v2Tbzw/382JdL6jI
 bxgFy+Zy2usLZHRL9XESVz+e4MLYaaNX422Wz7BNPun7DpZNEtHFrer5pv/uotM0qLq3
 m0ACJntIiQSezW+PLKyAs/BRMT2msXxYyP6rZ3T3okca00t1NYoIOZbJli1pgxNmDZBt
 6R3qHAuLhDZt6qfiyQMNtkHUfvQBBrjtVoge8oGV9/3Et45ydibwWsvf3pjUVcdwphNj
 RK3A==
X-Gm-Message-State: APjAAAUtCLfWZMKUstxgqQqfpn4XZgi1bsrufmhL1d7HwymFuJ7bPb1J
 Mb7NaxJLmEddjJHfbhCajeCTsORib+Q=
X-Google-Smtp-Source: APXvYqzaKUrWctiGptVRbnD/anNhdXEm7yEtQAXe0FCcTll4zeIjXU7dHxcuO+E8pHp555tkUp1CMw==
X-Received: by 2002:a19:4bd1:: with SMTP id y200mr17891879lfa.25.1557841358609; 
 Tue, 14 May 2019 06:42:38 -0700 (PDT)
Received: from be1.dissentfirstbyte.example.com ([2a04:5200:fff5::d0])
 by smtp.gmail.com with ESMTPSA id u7sm1703920ljj.51.2019.05.14.06.42.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 06:42:37 -0700 (PDT)
From: Pavel Kubelun <be.dissent@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 16:42:17 +0300
Message-Id: <20190514134220.3626-1-be.dissent@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_064241_962902_64BD00E5 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/4] ipq40xx: directly define voltage per opp
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: chunkeey@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This should align opp table with what it was before converting to OPP v2.

Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
---
 ...019-add-cpu-operating-points-for-cpufreq-su.patch |  8 ++++++--
 ...qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch |  2 +-
 .../077-qcom-ipq4019-add-USB-devicetree-nodes.patch  |  2 +-
 ...-ARM-dts-ipq4019-Add-a-few-peripheral-nodes.patch | 20 ++++++++++----------
 .../079-ARM-dts-ipq4019-fix-PCI-range.patch          |  2 +-
 ...inctrl-msm-fix-gpio-hog-related-boot-issues.patch |  2 +-
 ...4-ARM-dts-ipq4019-Add-a-default-chosen-node.patch |  2 +-
 ...ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch |  2 +-
 .../087-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch  |  2 +-
 .../patches-4.14/701-dts-ipq4019-add-mdio-node.patch |  2 +-
 .../702-dts-ipq4019-add-PHY-switch-nodes.patch       |  2 +-
 .../711-dts-ipq4019-add-ethernet-essedma-node.patch  |  2 +-
 ...com-ipq4019-add-cpu-operating-points-for-cp.patch | 10 +++++++---
 ...qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch |  2 +-
 .../077-qcom-ipq4019-add-USB-devicetree-nodes.patch  |  2 +-
 ...79-v4.20-ARM-dts-qcom-ipq4019-fix-PCI-range.patch |  2 +-
 .../080-ARM-dts-qcom-add-gpio-ranges-property.patch  |  2 +-
 ...ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch |  2 +-
 .../084-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch  |  2 +-
 .../patches-4.19/701-dts-ipq4019-add-mdio-node.patch |  2 +-
 .../702-dts-ipq4019-add-PHY-switch-nodes.patch       |  2 +-
 .../711-dts-ipq4019-add-ethernet-essedma-node.patch  |  2 +-
 22 files changed, 42 insertions(+), 34 deletions(-)

diff --git a/target/linux/ipq40xx/patches-4.14/072-qcom-ipq4019-add-cpu-operating-points-for-cpufreq-su.patch b/target/linux/ipq40xx/patches-4.14/072-qcom-ipq4019-add-cpu-operating-points-for-cpufreq-su.patch
index 156ffa1b6d..06749ea733 100644
--- a/target/linux/ipq40xx/patches-4.14/072-qcom-ipq4019-add-cpu-operating-points-for-cpufreq-su.patch
+++ b/target/linux/ipq40xx/patches-4.14/072-qcom-ipq4019-add-cpu-operating-points-for-cpufreq-su.patch
@@ -10,7 +10,7 @@ Signed-off-by: Matthew McClintock <mmcclint@codeaurora.org>
 Signed-off-by: John Crispin <john@phrozen.org>
 ---
  arch/arm/boot/dts/qcom-ipq4019.dtsi | 34 ++++++++++++++++++++++++++--------
- 1 file changed, 26 insertions(+), 8 deletions(-)
+ 1 file changed, 30 insertions(+), 8 deletions(-)
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -54,7 +54,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
  		};
  
  		L2: l2-cache {
-@@ -94,6 +90,28 @@
+@@ -94,6 +90,32 @@
  		};
  	};
  
@@ -65,18 +65,22 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +		opp-48000000 {
 +			opp-hz = /bits/ 64 <48000000>;
 +			clock-latency-ns = <256000>;
++			opp-microvolt = <1100000>;
 +		};
 +		opp-200000000 {
 +			opp-hz = /bits/ 64 <200000000>;
 +			clock-latency-ns = <256000>;
++			opp-microvolt = <1100000>;
 +		};
 +		opp-500000000 {
 +			opp-hz = /bits/ 64 <500000000>;
 +			clock-latency-ns = <256000>;
++			opp-microvolt = <1100000>;
 +		};
 +		opp-716000000 {
 +			opp-hz = /bits/ 64 <716000000>;
 +			clock-latency-ns = <256000>;
++			opp-microvolt = <1100000>;
 +		};
 +	};
 +
diff --git a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch b/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
index d72e3d3c36..ac128ab9e1 100644
--- a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
+++ b/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
@@ -22,7 +22,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -262,7 +262,7 @@
+@@ -266,7 +266,7 @@
  
                  saw0: regulator@b089000 {
                          compatible = "qcom,saw2";
diff --git a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
index 44c07f8f45..be413188a7 100644
--- a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
@@ -41,7 +41,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
  };
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -410,5 +410,79 @@
+@@ -414,5 +414,79 @@
  					  "legacy";
  			status = "disabled";
  		};
diff --git a/target/linux/ipq40xx/patches-4.14/078-ARM-dts-ipq4019-Add-a-few-peripheral-nodes.patch b/target/linux/ipq40xx/patches-4.14/078-ARM-dts-ipq4019-Add-a-few-peripheral-nodes.patch
index b761073c12..b1e0e352ad 100644
--- a/target/linux/ipq40xx/patches-4.14/078-ARM-dts-ipq4019-Add-a-few-peripheral-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.14/078-ARM-dts-ipq4019-Add-a-few-peripheral-nodes.patch
@@ -41,7 +41,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  	};
  
  	cpus {
-@@ -132,6 +134,12 @@
+@@ -136,6 +138,12 @@
  		};
  	};
  
@@ -54,7 +54,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  	timer {
  		compatible = "arm,armv7-timer";
  		interrupts = <1 2 0xf08>,
-@@ -177,13 +185,13 @@
+@@ -181,13 +189,13 @@
  			#gpio-cells = <2>;
  			interrupt-controller;
  			#interrupt-cells = <2>;
@@ -70,7 +70,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			clocks = <&gcc GCC_BLSP1_AHB_CLK>;
  			clock-names = "bam_clk";
  			#dma-cells = <1>;
-@@ -191,7 +199,7 @@
+@@ -195,7 +203,7 @@
  			status = "disabled";
  		};
  
@@ -79,7 +79,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			compatible = "qcom,spi-qup-v2.2.1";
  			reg = <0x78b5000 0x600>;
  			interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
-@@ -200,10 +208,26 @@
+@@ -204,10 +212,26 @@
  			clock-names = "core", "iface";
  			#address-cells = <1>;
  			#size-cells = <0>;
@@ -107,7 +107,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			compatible = "qcom,i2c-qup-v2.2.1";
  			reg = <0x78b7000 0x600>;
  			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
-@@ -212,14 +236,29 @@
+@@ -216,14 +240,29 @@
  			clock-names = "iface", "core";
  			#address-cells = <1>;
  			#size-cells = <0>;
@@ -138,7 +138,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			clocks = <&gcc GCC_CRYPTO_AHB_CLK>;
  			clock-names = "bam_clk";
  			#dma-cells = <1>;
-@@ -293,7 +332,7 @@
+@@ -297,7 +336,7 @@
  		serial@78af000 {
  			compatible = "qcom,msm-uartdm-v1.4", "qcom,msm-uartdm";
  			reg = <0x78af000 0x200>;
@@ -147,7 +147,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			status = "disabled";
  			clocks = <&gcc GCC_BLSP1_UART1_APPS_CLK>,
  				<&gcc GCC_BLSP1_AHB_CLK>;
-@@ -305,7 +344,7 @@
+@@ -309,7 +348,7 @@
  		serial@78b0000 {
  			compatible = "qcom,msm-uartdm-v1.4", "qcom,msm-uartdm";
  			reg = <0x78b0000 0x200>;
@@ -156,7 +156,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			status = "disabled";
  			clocks = <&gcc GCC_BLSP1_UART2_APPS_CLK>,
  				<&gcc GCC_BLSP1_AHB_CLK>;
-@@ -327,6 +366,101 @@
+@@ -331,6 +370,101 @@
  			reg = <0x4ab000 0x4>;
  		};
  
@@ -258,7 +258,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  		wifi0: wifi@a000000 {
  			compatible = "qcom,ipq4019-wifi";
  			reg = <0xa000000 0x200000>;
-@@ -360,7 +494,7 @@
+@@ -364,7 +498,7 @@
  				     <GIC_SPI 45 IRQ_TYPE_EDGE_RISING>,
  				     <GIC_SPI 46 IRQ_TYPE_EDGE_RISING>,
  				     <GIC_SPI 47 IRQ_TYPE_EDGE_RISING>,
@@ -267,7 +267,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			interrupt-names =  "msi0",  "msi1",  "msi2",  "msi3",
  					   "msi4",  "msi5",  "msi6",  "msi7",
  					   "msi8",  "msi9", "msi10", "msi11",
-@@ -402,7 +536,7 @@
+@@ -406,7 +540,7 @@
  				     <GIC_SPI 61 IRQ_TYPE_EDGE_RISING>,
  				     <GIC_SPI 62 IRQ_TYPE_EDGE_RISING>,
  				     <GIC_SPI 63 IRQ_TYPE_EDGE_RISING>,
diff --git a/target/linux/ipq40xx/patches-4.14/079-ARM-dts-ipq4019-fix-PCI-range.patch b/target/linux/ipq40xx/patches-4.14/079-ARM-dts-ipq4019-fix-PCI-range.patch
index 253e91480f..42ce65034b 100644
--- a/target/linux/ipq40xx/patches-4.14/079-ARM-dts-ipq4019-fix-PCI-range.patch
+++ b/target/linux/ipq40xx/patches-4.14/079-ARM-dts-ipq4019-fix-PCI-range.patch
@@ -12,7 +12,7 @@ Signed-off-by: Mathias Kresin <dev@kresin.me>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -381,7 +381,7 @@
+@@ -385,7 +385,7 @@
  			#size-cells = <2>;
  
  			ranges = <0x81000000 0 0x40200000 0x40200000 0 0x00100000
diff --git a/target/linux/ipq40xx/patches-4.14/080-pinctrl-msm-fix-gpio-hog-related-boot-issues.patch b/target/linux/ipq40xx/patches-4.14/080-pinctrl-msm-fix-gpio-hog-related-boot-issues.patch
index 81b13e6b2c..0efb38b244 100644
--- a/target/linux/ipq40xx/patches-4.14/080-pinctrl-msm-fix-gpio-hog-related-boot-issues.patch
+++ b/target/linux/ipq40xx/patches-4.14/080-pinctrl-msm-fix-gpio-hog-related-boot-issues.patch
@@ -61,7 +61,7 @@ Origin: other, https://patchwork.kernel.org/patch/10339127/
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -182,6 +182,7 @@
+@@ -186,6 +186,7 @@
  			compatible = "qcom,ipq4019-pinctrl";
  			reg = <0x01000000 0x300000>;
  			gpio-controller;
diff --git a/target/linux/ipq40xx/patches-4.14/084-ARM-dts-ipq4019-Add-a-default-chosen-node.patch b/target/linux/ipq40xx/patches-4.14/084-ARM-dts-ipq4019-Add-a-default-chosen-node.patch
index 513e623ded..5d9023e60c 100644
--- a/target/linux/ipq40xx/patches-4.14/084-ARM-dts-ipq4019-Add-a-default-chosen-node.patch
+++ b/target/linux/ipq40xx/patches-4.14/084-ARM-dts-ipq4019-Add-a-default-chosen-node.patch
@@ -34,7 +34,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  			status = "ok";
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -346,7 +346,7 @@
+@@ -350,7 +350,7 @@
  			regulator;
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.14/086-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch b/target/linux/ipq40xx/patches-4.14/086-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch
index eb1e912f5d..acea3fb90c 100644
--- a/target/linux/ipq40xx/patches-4.14/086-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch
+++ b/target/linux/ipq40xx/patches-4.14/086-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch
@@ -29,7 +29,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -397,8 +397,8 @@
+@@ -401,8 +401,8 @@
  			#address-cells = <3>;
  			#size-cells = <2>;
  
diff --git a/target/linux/ipq40xx/patches-4.14/087-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch b/target/linux/ipq40xx/patches-4.14/087-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch
index 44cc725052..7864ef7fdf 100644
--- a/target/linux/ipq40xx/patches-4.14/087-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch
+++ b/target/linux/ipq40xx/patches-4.14/087-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch
@@ -21,7 +21,7 @@ Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -400,7 +400,7 @@
+@@ -404,7 +404,7 @@
  			ranges = <0x81000000 0 0x40200000 0x40200000 0 0x00100000>,
  				 <0x82000000 0 0x40300000 0x40300000 0 0x00d00000>;
  
diff --git a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
index 5c2e19941b..0e1bb87368 100644
--- a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
+++ b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
@@ -15,7 +15,7 @@ so the info might change.
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -562,6 +562,34 @@
+@@ -566,6 +566,34 @@
  			status = "disabled";
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
index 2b7921a616..03da6c863a 100644
--- a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
@@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -590,6 +590,29 @@
+@@ -594,6 +594,29 @@
  			};
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
index db545e6906..7302d237bc 100644
--- a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
+++ b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
@@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
  	};
  
  	cpus {
-@@ -613,6 +615,64 @@
+@@ -617,6 +619,64 @@
  			status = "disabled";
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.19/072-v4.20-ARM-dts-qcom-ipq4019-add-cpu-operating-points-for-cp.patch b/target/linux/ipq40xx/patches-4.19/072-v4.20-ARM-dts-qcom-ipq4019-add-cpu-operating-points-for-cp.patch
index 303546105e..991b366eda 100644
--- a/target/linux/ipq40xx/patches-4.19/072-v4.20-ARM-dts-qcom-ipq4019-add-cpu-operating-points-for-cp.patch
+++ b/target/linux/ipq40xx/patches-4.19/072-v4.20-ARM-dts-qcom-ipq4019-add-cpu-operating-points-for-cp.patch
@@ -10,8 +10,8 @@ Signed-off-by: Matthew McClintock <mmcclint@codeaurora.org>
 Signed-off-by: John Crispin <john@phrozen.org>
 Signed-off-by: Andy Gross <andy.gross@linaro.org>
 ---
- arch/arm/boot/dts/qcom-ipq4019.dtsi | 54 ++++++++++++++---------------
- 1 file changed, 26 insertions(+), 28 deletions(-)
+ arch/arm/boot/dts/qcom-ipq4019.dtsi | 58 ++++++++++++++---------------
+ 1 file changed, 30 insertions(+), 28 deletions(-)
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -79,7 +79,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
  		};
  
  		L2: l2-cache {
-@@ -136,6 +112,28 @@
+@@ -136,6 +112,32 @@
  		};
  	};
  
@@ -89,18 +89,22 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
 +
 +		opp-48000000 {
 +			opp-hz = /bits/ 64 <48000000>;
++			opp-microvolt = <1100000>;
 +			clock-latency-ns = <256000>;
 +		};
 +		opp-200000000 {
 +			opp-hz = /bits/ 64 <200000000>;
++			opp-microvolt = <1100000>;
 +			clock-latency-ns = <256000>;
 +		};
 +		opp-500000000 {
 +			opp-hz = /bits/ 64 <500000000>;
++			opp-microvolt = <1100000>;
 +			clock-latency-ns = <256000>;
 +		};
 +		opp-716000000 {
 +			opp-hz = /bits/ 64 <716000000>;
++			opp-microvolt = <1100000>;
 +			clock-latency-ns = <256000>;
 + 		};
 +	};
diff --git a/target/linux/ipq40xx/patches-4.19/073-v4.20-ARM-dts-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch b/target/linux/ipq40xx/patches-4.19/073-v4.20-ARM-dts-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
index 7573e4897f..cd1370ea5e 100644
--- a/target/linux/ipq40xx/patches-4.19/073-v4.20-ARM-dts-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
+++ b/target/linux/ipq40xx/patches-4.19/073-v4.20-ARM-dts-qcom-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch
@@ -23,7 +23,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -321,7 +321,7 @@
+@@ -325,7 +325,7 @@
  
                  saw0: regulator@b089000 {
                          compatible = "qcom,saw2";
diff --git a/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch b/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
index ff6fb4b576..e02fdf59c2 100644
--- a/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
@@ -41,7 +41,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
  };
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -564,5 +564,79 @@
+@@ -568,5 +568,79 @@
  					  "legacy";
  			status = "disabled";
  		};
diff --git a/target/linux/ipq40xx/patches-4.19/079-v4.20-ARM-dts-qcom-ipq4019-fix-PCI-range.patch b/target/linux/ipq40xx/patches-4.19/079-v4.20-ARM-dts-qcom-ipq4019-fix-PCI-range.patch
index 6bfea2a5c2..ecf2a4aefb 100644
--- a/target/linux/ipq40xx/patches-4.19/079-v4.20-ARM-dts-qcom-ipq4019-fix-PCI-range.patch
+++ b/target/linux/ipq40xx/patches-4.19/079-v4.20-ARM-dts-qcom-ipq4019-fix-PCI-range.patch
@@ -14,7 +14,7 @@ Signed-off-by: Andy Gross <andy.gross@linaro.org>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -401,7 +401,7 @@
+@@ -405,7 +405,7 @@
  			#size-cells = <2>;
  
  			ranges = <0x81000000 0 0x40200000 0x40200000 0 0x00100000
diff --git a/target/linux/ipq40xx/patches-4.19/080-ARM-dts-qcom-add-gpio-ranges-property.patch b/target/linux/ipq40xx/patches-4.19/080-ARM-dts-qcom-add-gpio-ranges-property.patch
index 67522f5cf2..3a18ffc08f 100644
--- a/target/linux/ipq40xx/patches-4.19/080-ARM-dts-qcom-add-gpio-ranges-property.patch
+++ b/target/linux/ipq40xx/patches-4.19/080-ARM-dts-qcom-add-gpio-ranges-property.patch
@@ -60,7 +60,7 @@ will be executed twice with the same parameters for the same pinctrl.
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -202,6 +202,7 @@
+@@ -206,6 +206,7 @@
  			compatible = "qcom,ipq4019-pinctrl";
  			reg = <0x01000000 0x300000>;
  			gpio-controller;
diff --git a/target/linux/ipq40xx/patches-4.19/083-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch b/target/linux/ipq40xx/patches-4.19/083-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch
index acea3fb90c..1283f93708 100644
--- a/target/linux/ipq40xx/patches-4.19/083-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch
+++ b/target/linux/ipq40xx/patches-4.19/083-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch
@@ -29,7 +29,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -401,8 +401,8 @@
+@@ -405,8 +405,8 @@
  			#address-cells = <3>;
  			#size-cells = <2>;
  
diff --git a/target/linux/ipq40xx/patches-4.19/084-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch b/target/linux/ipq40xx/patches-4.19/084-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch
index 7864ef7fdf..b5492c9f98 100644
--- a/target/linux/ipq40xx/patches-4.19/084-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch
+++ b/target/linux/ipq40xx/patches-4.19/084-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch
@@ -21,7 +21,7 @@ Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -404,7 +404,7 @@
+@@ -408,7 +408,7 @@
  			ranges = <0x81000000 0 0x40200000 0x40200000 0 0x00100000>,
  				 <0x82000000 0 0x40300000 0x40300000 0 0x00d00000>;
  
diff --git a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
index 0e1bb87368..e5936a0c93 100644
--- a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
+++ b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
@@ -15,7 +15,7 @@ so the info might change.
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -566,6 +566,34 @@
+@@ -570,6 +570,34 @@
  			status = "disabled";
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
index 03da6c863a..7c5d1ec2bb 100644
--- a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.patch
@@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
 
 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
-@@ -594,6 +594,29 @@
+@@ -598,6 +598,29 @@
  			};
  		};
  
diff --git a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
index 7302d237bc..51cf411143 100644
--- a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
+++ b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-node.patch
@@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
  	};
  
  	cpus {
-@@ -617,6 +619,64 @@
+@@ -621,6 +623,64 @@
  			status = "disabled";
  		};
  
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
