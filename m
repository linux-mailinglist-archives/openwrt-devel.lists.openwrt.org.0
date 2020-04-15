Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9D21AAE6E
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 18:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YhjV89S1C0tu1NwD0t0bUJYBCIdZ24Ids8I2hTlEFU4=; b=qutywdkM/0tFPl
	6aNrOOqPrzqlNAuCeRmGFQiy/dXYlMJ5YezWVzgoV2vBnglDpe1Fh3cDbuZr4OCbulNb8/Gs/2caK
	qSMV1m0OItalv42fiut5RxbDCxOMSqhBP93U/bL1kPTNkLLnIjeksOXAjaWUKfiYvv1jqeiL598GI
	6tNqcZygRasztfGETKZ6vhW03PsrhHQSyEsvWfk4haDzS5OeRWvWFgs+c6CNWwnDFif9kd+zUaG45
	+L3JgrBX94guQq2KPqYKe3EzvyvFhBYanSMuLQhdkPL3W+aYAgWjy3r5elJM+T4w1yghksMYzrm//
	eCw7bIW8e8NRKvoOJDJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlCm-0004Ei-4L; Wed, 15 Apr 2020 16:48:04 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jOlCU-00040L-At
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 16:47:48 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F076000FCE978B80865F4DD.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:6000:fce9:78b8:865:f4dd])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id B7AFB22E5C
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 18:47:37 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Apr 2020 18:47:18 +0200
Message-Id: <20200415164719.134391-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_094746_720371_AFCF38A0 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: add QCA9550 reset sequence
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

The QCA9550 family of SoCs have a slightly different reset
sequence compared to older chips.

Normally the bootloader performs this sequence, however
some bootloader implementation expect the operating system
to clear the reset. Also get the PCIe resets from OF to
support the second RC of the QCA9558.

This is required for the AVM FRITZ!WLAN Repeater 1750E to work,
as EVA leaves the PCIe bus in reset.

Tested: AVM FRITZ!WLAN Repeater 1750E - OCEDO Koala

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/dts/ar724x.dtsi            |   3 +
 target/linux/ath79/dts/ar9344.dtsi            |   3 +
 target/linux/ath79/dts/qca953x.dtsi           |   3 +
 target/linux/ath79/dts/qca9557.dtsi           |  10 +-
 target/linux/ath79/dts/qca956x.dtsi           |   3 +
 ...ci-ar724x-add-QCA9550-reset-sequence.patch | 130 ++++++++++++++++++
 ...ci-ar724x-add-QCA9550-reset-sequence.patch | 130 ++++++++++++++++++
 7 files changed, 280 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/ath79/patches-4.19/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch
 create mode 100644 target/linux/ath79/patches-5.4/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch

diff --git a/target/linux/ath79/dts/ar724x.dtsi b/target/linux/ath79/dts/ar724x.dtsi
index 95832d998a..2d7383c36d 100644
--- a/target/linux/ath79/dts/ar724x.dtsi
+++ b/target/linux/ath79/dts/ar724x.dtsi
@@ -130,6 +130,9 @@
 				interrupt-parent = <&cpuintc>;
 				interrupts = <2>;
 
+				resets = <&rst 6>, <&rst 7>;
+				reset-names = "hc", "phy";
+
 				interrupt-controller;
 				#interrupt-cells = <1>;
 
diff --git a/target/linux/ath79/dts/ar9344.dtsi b/target/linux/ath79/dts/ar9344.dtsi
index de118e9a3b..e99d962933 100644
--- a/target/linux/ath79/dts/ar9344.dtsi
+++ b/target/linux/ath79/dts/ar9344.dtsi
@@ -46,6 +46,9 @@
 		interrupt-parent = <&intc2>;
 		interrupts = <1>;
 
+		resets = <&rst 6>, <&rst 7>;
+		reset-names = "hc", "phy";
+
 		interrupt-controller;
 		#interrupt-cells = <1>;
 
diff --git a/target/linux/ath79/dts/qca953x.dtsi b/target/linux/ath79/dts/qca953x.dtsi
index e359badd2b..f7e0703e4e 100644
--- a/target/linux/ath79/dts/qca953x.dtsi
+++ b/target/linux/ath79/dts/qca953x.dtsi
@@ -164,6 +164,9 @@
 			interrupt-parent = <&intc2>;
 			interrupts = <1>;
 
+			resets = <&rst 6>, <&rst 7>;
+			reset-names = "hc", "phy";
+
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
diff --git a/target/linux/ath79/dts/qca9557.dtsi b/target/linux/ath79/dts/qca9557.dtsi
index 69ea639804..ede658af6d 100644
--- a/target/linux/ath79/dts/qca9557.dtsi
+++ b/target/linux/ath79/dts/qca9557.dtsi
@@ -202,7 +202,7 @@
 		};
 
 		pcie0: pcie-controller@180c0000 {
-			compatible = "qcom,ar7240-pci";
+			compatible = "qcom,qca9550-pci", "qcom,ar7240-pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			bus-range = <0x0 0x0>;
@@ -215,6 +215,9 @@
 			interrupt-parent = <&intc2>;
 			interrupts = <1>;
 
+			resets = <&rst 6>, <&rst 7>;
+			reset-names = "hc", "phy";
+
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
@@ -234,7 +237,7 @@
 		};
 
 		pcie1: pcie-controller@18250000 {
-			compatible = "qcom,ar7240-pci";
+			compatible = "qcom,qca9550-pci", "qcom,ar7240-pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			bus-range = <0x0 0x0>;
@@ -247,6 +250,9 @@
 			interrupt-parent = <&intc3>;
 			interrupts = <0>;
 
+			resets = <&rst2 6>, <&rst2 7>;
+			reset-names = "hc", "phy";
+
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
diff --git a/target/linux/ath79/dts/qca956x.dtsi b/target/linux/ath79/dts/qca956x.dtsi
index d0ce952ef4..333428443f 100644
--- a/target/linux/ath79/dts/qca956x.dtsi
+++ b/target/linux/ath79/dts/qca956x.dtsi
@@ -168,6 +168,9 @@
 			interrupt-parent = <&intc3>;
 			interrupts = <0>;
 
+			resets = <&rst 6>, <&rst 7>;
+			reset-names = "hc", "phy";
+
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
diff --git a/target/linux/ath79/patches-4.19/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch b/target/linux/ath79/patches-4.19/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch
new file mode 100644
index 0000000000..2c9120f771
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch
@@ -0,0 +1,130 @@
+From: David Bauer <mail@david-bauer.net>
+Date: Sat, 11 Apr 2020 14:03:12 +0200
+Subject: MIPS: pci-ar724x: add QCA9550 reset sequence
+
+The QCA9550 family of SoCs have a slightly different reset
+sequence compared to older chips.
+
+Normally the bootloader performs this sequence, however
+some bootloader implementation expect the operating system
+to clear the reset.
+
+Also get the resets from OF to support handling of the second
+PCIe root-complex on the QCA9558.
+
+Signed-off-by: David Bauer <mail@david-bauer.net>
+
+--- a/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
++++ b/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
+@@ -394,6 +394,7 @@
+ #define QCA955X_PLL_CPU_CONFIG_REG		0x00
+ #define QCA955X_PLL_DDR_CONFIG_REG		0x04
+ #define QCA955X_PLL_CLK_CTRL_REG		0x08
++#define QCA955X_PLL_PCIE_CONFIG_REG		0x0c
+ #define QCA955X_PLL_ETH_XMII_CONTROL_REG	0x28
+ #define QCA955X_PLL_ETH_SGMII_CONTROL_REG	0x48
+ #define QCA955X_PLL_ETH_SGMII_SERDES_REG	0x4c
+@@ -479,6 +480,9 @@
+ #define QCA956X_PLL_CLK_CTRL_CPU_DDRCLK_FROM_CPUPLL	BIT(21)
+ #define QCA956X_PLL_CLK_CTRL_AHBCLK_FROM_DDRPLL		BIT(24)
+ 
++#define QCA955X_PLL_PCIE_CONFIG_PLL_PWD			BIT(30)
++#define QCA955X_PLL_PCIE_CONFIG_PLL_BYPASS		BIT(16)
++
+ #define QCA956X_PLL_SWITCH_CLOCK_SPARE_I2C_CLK_SELB		BIT(5)
+ #define QCA956X_PLL_SWITCH_CLOCK_SPARE_MDIO_CLK_SEL0_1		BIT(6)
+ #define QCA956X_PLL_SWITCH_CLOCK_SPARE_UART1_CLK_SEL		BIT(7)
+--- a/arch/mips/pci/pci-ar724x.c
++++ b/arch/mips/pci/pci-ar724x.c
+@@ -11,6 +11,7 @@
+ 
+ #include <linux/irq.h>
+ #include <linux/pci.h>
++#include <linux/reset.h>
+ #include <linux/init.h>
+ #include <linux/delay.h>
+ #include <linux/platform_device.h>
+@@ -58,6 +59,9 @@ struct ar724x_pci_controller {
+ 	struct irq_domain *domain;
+ 	struct resource io_res;
+ 	struct resource mem_res;
++
++	struct reset_control *hc_reset;
++	struct reset_control *phy_reset;
+ };
+ 
+ static struct irq_chip ar724x_pci_irq_chip;
+@@ -343,18 +347,30 @@ static void ar724x_pci_hw_init(struct ar
+ 	int wait = 0;
+ 
+ 	/* deassert PCIe host controller and PCIe PHY reset */
+-	ath79_device_reset_clear(AR724X_RESET_PCIE);
+-	ath79_device_reset_clear(AR724X_RESET_PCIE_PHY);
++	reset_control_deassert(apc->hc_reset);
++	reset_control_deassert(apc->phy_reset);
+ 
+-	/* remove the reset of the PCIE PLL */
+-	ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
+-	ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET;
+-	ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
+-
+-	/* deassert bypass for the PCIE PLL */
+-	ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
+-	ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS;
+-	ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
++	if (of_device_is_compatible(apc->np, "qcom,qca9550-pci")) {
++		/* remove the reset of the PCIE PLL */
++		ppl = ath79_pll_rr(QCA955X_PLL_PCIE_CONFIG_REG);
++		ppl &= ~QCA955X_PLL_PCIE_CONFIG_PLL_PWD;
++		ath79_pll_wr(QCA955X_PLL_PCIE_CONFIG_REG, ppl);
++
++		/* deassert bypass for the PCIE PLL */
++		ppl = ath79_pll_rr(QCA955X_PLL_PCIE_CONFIG_REG);
++		ppl &= ~QCA955X_PLL_PCIE_CONFIG_PLL_BYPASS;
++		ath79_pll_wr(QCA955X_PLL_PCIE_CONFIG_REG, ppl);
++	} else {
++		/* remove the reset of the PCIE PLL */
++		ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
++		ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET;
++		ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
++
++		/* deassert bypass for the PCIE PLL */
++		ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
++		ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS;
++		ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
++	}
+ 
+ 	/* set PCIE Application Control to ready */
+ 	app = __raw_readl(apc->ctrl_base + AR724X_PCI_REG_APP);
+@@ -402,6 +418,14 @@ static int ar724x_pci_probe(struct platf
+ 	if (apc->irq < 0)
+ 		return -EINVAL;
+ 
++	apc->hc_reset = devm_reset_control_get_exclusive(&pdev->dev, "hc");
++	if (IS_ERR(apc->hc_reset))
++		return PTR_ERR(apc->hc_reset);
++
++	apc->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, "phy");
++	if (IS_ERR(apc->phy_reset))
++		return PTR_ERR(apc->phy_reset);
++
+ 	apc->np = pdev->dev.of_node;
+ 	apc->pci_controller.pci_ops = &ar724x_pci_ops;
+ 	apc->pci_controller.io_resource = &apc->io_res;
+@@ -412,7 +436,7 @@ static int ar724x_pci_probe(struct platf
+ 	 * Do the full PCIE Root Complex Initialization Sequence if the PCIe
+ 	 * host controller is in reset.
+ 	 */
+-	if (ath79_reset_rr(AR724X_RESET_REG_RESET_MODULE) & AR724X_RESET_PCIE)
++	if (reset_control_status(apc->hc_reset))
+ 		ar724x_pci_hw_init(apc);
+ 
+ 	apc->link_up = ar724x_pci_check_link(apc);
+@@ -430,6 +454,7 @@ static int ar724x_pci_probe(struct platf
+ 
+ static const struct of_device_id ar724x_pci_ids[] = {
+ 	{ .compatible = "qcom,ar7240-pci" },
++	{ .compatible = "qcom,qca9550-pci" },
+ 	{},
+ };
+ 
diff --git a/target/linux/ath79/patches-5.4/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch b/target/linux/ath79/patches-5.4/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch
new file mode 100644
index 0000000000..13955c62a2
--- /dev/null
+++ b/target/linux/ath79/patches-5.4/0062-MIPS-pci-ar724x-add-QCA9550-reset-sequence.patch
@@ -0,0 +1,130 @@
+From: David Bauer <mail@david-bauer.net>
+Date: Sat, 11 Apr 2020 14:03:12 +0200
+Subject: MIPS: pci-ar724x: add QCA9550 reset sequence
+
+The QCA9550 family of SoCs have a slightly different reset
+sequence compared to older chips.
+
+Normally the bootloader performs this sequence, however
+some bootloader implementation expect the operating system
+to clear the reset.
+
+Also get the resets from OF to support handling of the second
+PCIe root-complex on the QCA9558.
+
+Signed-off-by: David Bauer <mail@david-bauer.net>
+
+--- a/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
++++ b/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
+@@ -391,6 +391,7 @@
+ #define QCA955X_PLL_CPU_CONFIG_REG		0x00
+ #define QCA955X_PLL_DDR_CONFIG_REG		0x04
+ #define QCA955X_PLL_CLK_CTRL_REG		0x08
++#define QCA955X_PLL_PCIE_CONFIG_REG		0x0c
+ #define QCA955X_PLL_ETH_XMII_CONTROL_REG	0x28
+ #define QCA955X_PLL_ETH_SGMII_CONTROL_REG	0x48
+ #define QCA955X_PLL_ETH_SGMII_SERDES_REG	0x4c
+@@ -476,6 +477,9 @@
+ #define QCA956X_PLL_CLK_CTRL_CPU_DDRCLK_FROM_CPUPLL	BIT(21)
+ #define QCA956X_PLL_CLK_CTRL_AHBCLK_FROM_DDRPLL		BIT(24)
+ 
++#define QCA955X_PLL_PCIE_CONFIG_PLL_PWD			BIT(30)
++#define QCA955X_PLL_PCIE_CONFIG_PLL_BYPASS		BIT(16)
++
+ #define QCA956X_PLL_SWITCH_CLOCK_SPARE_I2C_CLK_SELB		BIT(5)
+ #define QCA956X_PLL_SWITCH_CLOCK_SPARE_MDIO_CLK_SEL0_1		BIT(6)
+ #define QCA956X_PLL_SWITCH_CLOCK_SPARE_UART1_CLK_SEL		BIT(7)
+--- a/arch/mips/pci/pci-ar724x.c
++++ b/arch/mips/pci/pci-ar724x.c
+@@ -8,6 +8,7 @@
+ 
+ #include <linux/irq.h>
+ #include <linux/pci.h>
++#include <linux/reset.h>
+ #include <linux/init.h>
+ #include <linux/delay.h>
+ #include <linux/platform_device.h>
+@@ -55,6 +56,9 @@ struct ar724x_pci_controller {
+ 	struct irq_domain *domain;
+ 	struct resource io_res;
+ 	struct resource mem_res;
++
++	struct reset_control *hc_reset;
++	struct reset_control *phy_reset;
+ };
+ 
+ static struct irq_chip ar724x_pci_irq_chip;
+@@ -340,18 +344,30 @@ static void ar724x_pci_hw_init(struct ar
+ 	int wait = 0;
+ 
+ 	/* deassert PCIe host controller and PCIe PHY reset */
+-	ath79_device_reset_clear(AR724X_RESET_PCIE);
+-	ath79_device_reset_clear(AR724X_RESET_PCIE_PHY);
++	reset_control_deassert(apc->hc_reset);
++	reset_control_deassert(apc->phy_reset);
+ 
+-	/* remove the reset of the PCIE PLL */
+-	ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
+-	ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET;
+-	ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
+-
+-	/* deassert bypass for the PCIE PLL */
+-	ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
+-	ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS;
+-	ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
++	if (of_device_is_compatible(apc->np, "qcom,qca9550-pci")) {
++		/* remove the reset of the PCIE PLL */
++		ppl = ath79_pll_rr(QCA955X_PLL_PCIE_CONFIG_REG);
++		ppl &= ~QCA955X_PLL_PCIE_CONFIG_PLL_PWD;
++		ath79_pll_wr(QCA955X_PLL_PCIE_CONFIG_REG, ppl);
++
++		/* deassert bypass for the PCIE PLL */
++		ppl = ath79_pll_rr(QCA955X_PLL_PCIE_CONFIG_REG);
++		ppl &= ~QCA955X_PLL_PCIE_CONFIG_PLL_BYPASS;
++		ath79_pll_wr(QCA955X_PLL_PCIE_CONFIG_REG, ppl);
++	} else {
++		/* remove the reset of the PCIE PLL */
++		ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
++		ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET;
++		ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
++
++		/* deassert bypass for the PCIE PLL */
++		ppl = ath79_pll_rr(AR724X_PLL_REG_PCIE_CONFIG);
++		ppl &= ~AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS;
++		ath79_pll_wr(AR724X_PLL_REG_PCIE_CONFIG, ppl);
++	}
+ 
+ 	/* set PCIE Application Control to ready */
+ 	app = __raw_readl(apc->ctrl_base + AR724X_PCI_REG_APP);
+@@ -399,6 +415,14 @@ static int ar724x_pci_probe(struct platf
+ 	if (apc->irq < 0)
+ 		return -EINVAL;
+ 
++	apc->hc_reset = devm_reset_control_get_exclusive(&pdev->dev, "hc");
++	if (IS_ERR(apc->hc_reset))
++		return PTR_ERR(apc->hc_reset);
++
++	apc->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, "phy");
++	if (IS_ERR(apc->phy_reset))
++		return PTR_ERR(apc->phy_reset);
++
+ 	apc->np = pdev->dev.of_node;
+ 	apc->pci_controller.pci_ops = &ar724x_pci_ops;
+ 	apc->pci_controller.io_resource = &apc->io_res;
+@@ -409,7 +433,7 @@ static int ar724x_pci_probe(struct platf
+ 	 * Do the full PCIE Root Complex Initialization Sequence if the PCIe
+ 	 * host controller is in reset.
+ 	 */
+-	if (ath79_reset_rr(AR724X_RESET_REG_RESET_MODULE) & AR724X_RESET_PCIE)
++	if (reset_control_status(apc->hc_reset))
+ 		ar724x_pci_hw_init(apc);
+ 
+ 	apc->link_up = ar724x_pci_check_link(apc);
+@@ -427,6 +451,7 @@ static int ar724x_pci_probe(struct platf
+ 
+ static const struct of_device_id ar724x_pci_ids[] = {
+ 	{ .compatible = "qcom,ar7240-pci" },
++	{ .compatible = "qcom,qca9550-pci" },
+ 	{},
+ };
+ 
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
