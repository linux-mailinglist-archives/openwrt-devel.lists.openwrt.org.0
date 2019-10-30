Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A2DE9ACA
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 12:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZ3+CUxeVcqgAjE//tYgBF0UEu8eomjjam4OQr5w6TU=; b=SuLGF3BBTo2YrA
	YKqkkQDQNDNLbtskARr61nyd3eYcst8J8g5tYCd7bDIZN2x4LIibCq/+NS2YMSC/Db6gLOfJQixFA
	d2QrppGMO1mUzYnrhb8D1pmZDHXYmSNHu55RJMvS5beNbGQ/QvMkjAlKNFljmxP4lHX+Qj2SXE7T4
	3AeYHtzDSlYVKnZpJ6Fg0kGCT6UstY96iPsfmvNtuiijZ5kw8iIvUQIzhMCQhjHBSaqR7diqSsnOr
	kZOzpXAEU+zl5jnbMhhZ/m/FGQMvhEEVTgH78lwzzpTF19753TdQVG3wwXEghXthpOA046mzPgA1T
	FSY3upjk8aKn0KHfcs4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPm9v-0001Nm-2K; Wed, 30 Oct 2019 11:29:03 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPm9C-0000qG-3L
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 11:28:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From;
 bh=xexJWYtyN4IVb8ZJIOhF+C3gWopUku/B3neng8xTIlg=; 
 b=f7223K2B/qI38PwnqzLJenOMygdTWOdLp3vbbglkj60G1DqVpRuUdLim7T5ET1tocALoXE4cEMywzaT4sbJKAmlbfafh8XsFvuRSBR68UmKWr8lLlHAwfw5HJy7+YevWQBPcGijDLIxFmAToIQfm1vNm7ITG3sp5ZUAPZUUmLSA=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 30 Oct 2019 12:27:26 +0100
Message-Id: <20191030112726.13106-4-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030112726.13106-1-daniel@dd-wrt.com>
References: <20191030112726.13106-1-daniel@dd-wrt.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a05:a1c7:1:b101:819:5a9a:5145:d03a
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS,
 UPPERCASE_25_50 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iPm8D-000189-Uw
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a05:a1c7:1:b101:819:5a9a:5145:d03a]
 (helo=lappi.newmedia-net.de)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1iPm8D-000189-Uw; Wed, 30 Oct 2019 12:27:37 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_042819_312886_BB95DC79 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/3] ipq40xx: ipq4019: Add new device Compex
 WPJ419
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

This device contains 2 flash devices. One NOR (32M) and one NAND (128M).
U-boot and caldata are on the NOR, the firmware on the NAND.

    SoC:    IPQ4019
    CPU:    4x 710MHz ARMv7
    RAM:    256MB
    FLASH:  NOR:32MB NAND:128MB
    ETH:    2x GMAC Gigabit
    POE:    802.3 af/at POE, IEEE802.3af/IEEE802.3at(48-56V)
    WIFI:   1x 2.4Ghz Atheros qca4019 2x2 MU-MIMO
            1x 5.0Ghz Atheros qca4019 2x2 MU-MIMO
    USB:    1x 3.0
    PCI:    1x Mini PCIe
    SIM:    1x Slot
    SD:     1x MicroSD slot
    BTN:    Reset
    LED:    - Power
            - Ethernet
    UART:  1x Serial Port 4 Pin Connector (UART)
           1x Serial Port 6 Pin Connector (High Speed UART)
    POWER: 12V 2A

Installation
------------
Initial flashing can only be done via u-boot using the following commands:

tftpboot openwrt-ipq40xx-generic-compex_wpj419-nand-squashfs-nand-factory.ubi
nand erase.chip; nand write ${fileaddr} 0x0 ${filesize}
set fsbootargs ubi.mtd=rootfs root=/dev/ubiblock0_1 rootfstype=squashfs
saveenv
res

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 .../ipq40xx/base-files/etc/board.d/02_network |    1 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |    2 +
 target/linux/ipq40xx/config-4.19              |    3 +
 .../arch/arm/boot/dts/qcom-ipq4019-bus.dtsi   | 1142 +++++++++++++++++
 .../arch/arm/boot/dts/qcom-ipq4019-wpj419.dts |  371 ++++++
 .../include/dt-bindings/msm/msm-bus-ids.h     |  869 +++++++++++++
 target/linux/ipq40xx/image/Makefile           |   14 +
 .../901-arm-boot-add-dts-files.patch          |    3 +-
 8 files changed, 2404 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-bus.dtsi
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
 create mode 100644 target/linux/ipq40xx/files-4.19/include/dt-bindings/msm/msm-bus-ids.h

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index 25402b7eb4..dafd83234e 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -48,6 +48,7 @@ ipq40xx_setup_interfaces()
 		ucidef_set_interface_lan "eth0"
 		;;
 	avm,fritzrepeater-3000|\
+	compex,wpj419|\
 	compex,wpj428)
 		ucidef_set_interface_lan "eth0 eth1"
 		;;
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 2336ef3c7b..b18d17e422 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -71,6 +71,7 @@ case "$FIRMWARE" in
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
 	compex,wpj428 |\
+	compex,wpj419 |\
 	engenius,eap1300 |\
 	openmesh,a42 |\
 	openmesh,a62 |\
@@ -134,6 +135,7 @@ case "$FIRMWARE" in
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
 	compex,wpj428 |\
+	compex,wpj419 |\
 	engenius,eap1300 |\
 	openmesh,a42 |\
 	openmesh,a62 |\
diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/config-4.19
index 8948b73ff7..3ee921abed 100644
--- a/target/linux/ipq40xx/config-4.19
+++ b/target/linux/ipq40xx/config-4.19
@@ -303,6 +303,9 @@ CONFIG_MTD_NAND_ECC=y
 CONFIG_MTD_NAND_QCOM=y
 CONFIG_MTD_SPI_NAND=y
 CONFIG_MTD_SPI_NOR=y
+CONFIG_MTD_SPINAND_MT29F=y
+CONFIG_MTD_SPINAND_GIGADEVICE=y
+CONFIG_MTD_SPINAND_ONDIEECC=y
 CONFIG_MTD_SPLIT_FIRMWARE=y
 CONFIG_MTD_SPLIT_FIT_FW=y
 CONFIG_MTD_UBI=y
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-bus.dtsi b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-bus.dtsi
new file mode 100644
index 0000000000..169505973f
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-bus.dtsi
@@ -0,0 +1,1142 @@
+/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
+ *
+ * Permission to use, copy, modify, and/or distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
+ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
+ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
+ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ */
+
+#include <dt-bindings/msm/msm-bus-ids.h>
+
+/ {
+
+soc {
+	ad_hoc_bus: ad-hoc-bus {
+		compatible = "qcom,msm-bus-device";
+		reg = <0x580000 0x14000>,
+			<0x500000 0x11000>;
+		reg-names = "snoc-base", "pcnoc-base";
+
+		/*Buses*/
+
+		fab_pcnoc: fab-pcnoc {
+			cell-id = <MSM_BUS_FAB_PERIPH_NOC>;
+			label = "fab-pcnoc";
+			qcom,fab-dev;
+			qcom,base-name = "pcnoc-base";
+			qcom,bypass-qos-prg;
+			qcom,bus-type = <1>;
+			qcom,qos-off = <0x1000>;
+			qcom,base-offset = <0x0>;
+			clocks = <>;
+		};
+
+		fab_snoc: fab-snoc {
+			cell-id = <MSM_BUS_FAB_SYS_NOC>;
+			label = "fab-snoc";
+			qcom,fab-dev;
+			qcom,base-name = "snoc-base";
+			qcom,bypass-qos-prg;
+			qcom,bus-type = <1>;
+			qcom,qos-off = <0x80>;
+			qcom,base-offset = <0x0>;
+			clocks = <>;
+		};
+
+		/*Masters*/
+
+		mas_blsp_bam: mas-blsp-bam {
+			cell-id = <MSM_BUS_MASTER_BLSP_BAM>;
+			label = "mas-blsp-bam";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_m_0>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_BLSP_BAM>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_usb2_bam: mas-usb2-bam {
+			cell-id = <MSM_BUS_MASTER_USB2_BAM>;
+			label = "mas-usb2-bam";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,qport = <15>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&slv_pcnoc_snoc>;
+			qcom,prio1 = <1>;
+			qcom,prio0 = <1>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_USB2_BAM>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_adss_dma0: mas-adss-dma0 {
+			cell-id = <MSM_BUS_MASTER_ADDS_DMA0>;
+			label = "mas-adss-dma0";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_m_1>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_ADSS_DMA0>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_adss_dma1: mas-adss-dma1 {
+			cell-id = <MSM_BUS_MASTER_ADDS_DMA1>;
+			label = "mas-adss-dma1";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_m_1>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_ADSS_DMA1>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_adss_dma2: mas-adss-dma2 {
+			cell-id = <MSM_BUS_MASTER_ADDS_DMA2>;
+			label = "mas-adss-dma2";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_m_1>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_ADSS_DMA2>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_adss_dma3: mas-adss-dma3 {
+			cell-id = <MSM_BUS_MASTER_ADDS_DMA3>;
+			label = "mas-adss-dma3";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_m_1>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_ADSS_DMA3>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_qpic_bam: mas-qpic-bam {
+			cell-id = <MSM_BUS_MASTER_QPIC_BAM>;
+			label = "mas-qpic-bam";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_m_0>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_QPIC_BAM>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_spdm: mas-spdm {
+			cell-id = <MSM_BUS_MASTER_SPDM>;
+			label = "mas-spdm";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_m_0>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_SPDM>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_pcnoc_cfg: mas-pcnoc-cfg {
+			cell-id = <MSM_BUS_MASTER_PNOC_CFG>;
+			label = "mas-pcnoc-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&slv_srvc_pcnoc>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_CFG>;
+		};
+
+		mas_tic: mas-tic {
+			cell-id = <MSM_BUS_MASTER_TIC>;
+			label = "mas-tic";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_int_0 &slv_pcnoc_snoc>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_TIC>;
+		};
+
+		mas_sdcc_bam: mas-sdcc-bam {
+			cell-id = <MSM_BUS_MASTER_SDCC_BAM>;
+			label = "mas-sdcc-bam";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,qport = <14>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&slv_pcnoc_snoc>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_SDCC_BAM>;
+			qcom,blacklist = <&slv_tcsr &slv_mdio &slv_adss_cfg
+				 &slv_fephy_cfg &slv_wss1_apu_cfg &slv_ddrc_mpu1_cfg
+				 &slv_ddrc_mpu0_cfg &slv_qpic_cfg &slv_ddrc_cfg
+				 &slv_pcnoc_cfg &slv_ess_apu_cfg &slv_imem_cfg
+				 &slv_srif &slv_prng &slv_qdss_cfg
+				 &slv_wss0_apu_cfg &slv_ddrc_apu_cfg &slv_gcnt
+				 &slv_tlmm &slv_wss0_vmidmt_cfg &slv_prng_apu_cfg
+				 &slv_boot_rom &slv_security &slv_spdm
+				 &slv_pcnoc_mpu_cfg &slv_ddrc_mpu2_cfg &slv_ess_vmidmt_cfg
+				 &slv_qhss_apu_cfg &slv_adss_vmidmt_cfg &slv_clk_ctl
+				 &slv_adss_apu &slv_blsp_cfg &slv_usb2_cfg
+				 &slv_srvc_pcnoc &slv_snoc_mpu_cfg &slv_wss1_vmidmt_cfg
+				 &slv_sdcc_cfg &slv_snoc_cfg>;
+		};
+
+		mas_snoc_pcnoc: mas-snoc-pcnoc {
+			cell-id = <MSM_BUS_SNOC_PNOC_MAS>;
+			label = "mas-snoc-pcnoc";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,qport = <16>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&pcnoc_int_0>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_SNOC_PCNOC>;
+		};
+
+		mas_qdss_dap: mas-qdss-dap {
+			cell-id = <MSM_BUS_MASTER_QDSS_DAP>;
+			label = "mas-qdss-dap";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&pcnoc_int_0 &slv_pcnoc_snoc>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_QDSS_DAP>;
+		};
+
+		mas_ddrc_snoc: mas-ddrc-snoc {
+			cell-id = <MSM_BUS_MASTER_DDRC_SNOC>;
+			label = "mas-ddrc-snoc";
+			qcom,buswidth = <16>;
+			qcom,ap-owned;
+			qcom,connections = <&snoc_int_0 &snoc_int_1
+				 &slv_pcie>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_DDRC_SNOC>;
+			qcom,blacklist = <&slv_snoc_ddrc_m1 &slv_srvc_snoc>;
+		};
+
+		mas_wss_0: mas-wss-0 {
+			cell-id = <MSM_BUS_MASTER_WSS_0>;
+			label = "mas-wss-0";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,qport = <26>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&snoc_int_0 &slv_snoc_ddrc_m1>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_WSS_0>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_pcie
+				 &slv_wss1_cfg &slv_wss0_cfg &slv_crypto_cfg
+				 &slv_srvc_snoc>;
+		};
+
+		mas_wss_1: mas-wss-1 {
+			cell-id = <MSM_BUS_MASTER_WSS_1>;
+			label = "mas-wss-1";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,qport = <27>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&snoc_int_0 &slv_snoc_ddrc_m1>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_WSS_1>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_pcie
+				 &slv_wss1_cfg &slv_wss0_cfg &slv_crypto_cfg
+				 &slv_srvc_snoc>;
+		};
+
+		mas_crypto: mas-crypto {
+			cell-id = <MSM_BUS_MASTER_CRYPTO>;
+			label = "mas-crypto";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,qport = <5>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&snoc_int_0 &snoc_int_1
+				 &slv_snoc_ddrc_m1>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_CRYPTO>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_a7ss
+				 &slv_pcie &slv_qdss_stm &slv_crypto_cfg
+				 &slv_srvc_snoc>;
+		};
+
+		mas_ess: mas-ess {
+			cell-id = <MSM_BUS_MASTER_ESS>;
+			label = "mas-ess";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,qport = <44>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&snoc_int_0 &slv_snoc_ddrc_m1>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_ESS>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_a7ss
+				 &slv_pcie &slv_qdss_stm &slv_wss1_cfg
+				 &slv_wss0_cfg &slv_crypto_cfg &slv_srvc_snoc>;
+		};
+
+		mas_pcie: mas-pcie {
+			cell-id = <MSM_BUS_MASTER_PCIE>;
+			label = "mas-pcie";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,qport = <6>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&snoc_int_0 &slv_snoc_ddrc_m1>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCIE>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_pcie
+				 &slv_qdss_stm &slv_wss1_cfg &slv_wss0_cfg
+				 &slv_crypto_cfg &slv_srvc_snoc>;
+		};
+
+		mas_usb3: mas-usb3 {
+			cell-id = <MSM_BUS_MASTER_USB3>;
+			label = "mas-usb3";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,qport = <7>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&snoc_int_0 &slv_snoc_ddrc_m1>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_USB3>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_a7ss
+				 &slv_pcie &slv_qdss_stm &slv_wss1_cfg
+				 &slv_wss0_cfg &slv_crypto_cfg &slv_srvc_snoc>;
+		};
+
+		mas_qdss_etr: mas-qdss-etr {
+			cell-id = <MSM_BUS_MASTER_QDSS_ETR>;
+			label = "mas-qdss-etr";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,qport = <544>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&qdss_int>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_QDSS_ETR>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_a7ss
+				 &slv_pcie &slv_qdss_stm &slv_wss1_cfg
+				 &slv_wss0_cfg &slv_crypto_cfg &slv_srvc_snoc>;
+		};
+
+		mas_qdss_bamndp: mas-qdss-bamndp {
+			cell-id = <MSM_BUS_MASTER_QDSS_BAMNDP>;
+			label = "mas-qdss-bamndp";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,qport = <576>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&qdss_int>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_QDSS_BAMNDP>;
+			qcom,blacklist = <&slv_usb3_cfg &slv_ess_cfg &slv_a7ss
+				 &slv_pcie &slv_qdss_stm &slv_wss1_cfg
+				 &slv_wss0_cfg &slv_crypto_cfg &slv_srvc_snoc>;
+		};
+
+		mas_pcnoc_snoc: mas-pcnoc-snoc {
+			cell-id = <MSM_BUS_PNOC_SNOC_MAS>;
+			label = "mas-pcnoc-snoc";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,qport = <384>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&snoc_int_0 &snoc_int_1
+				 &slv_snoc_ddrc_m1>;
+			qcom,prio1 = <0>;
+			qcom,prio0 = <0>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PNOC_SNOC>;
+			qcom,blacklist = <&slv_srvc_snoc>;
+		};
+
+		mas_snoc_cfg: mas-snoc-cfg {
+			cell-id = <MSM_BUS_MASTER_QDSS_SNOC_CFG>;
+			label = "mas-snoc-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&slv_srvc_snoc>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_QDSS_SNOC_CFG>;
+		};
+
+		/*Internal nodes*/
+
+
+		pcnoc_m_0: pcnoc-m-0 {
+			cell-id = <MSM_BUS_PNOC_M_0>;
+			label = "pcnoc-m-0";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,qport = <12>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&slv_pcnoc_snoc>;
+			qcom,prio1 = <1>;
+			qcom,prio0 = <1>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_M_0>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_M_0>;
+		};
+
+		pcnoc_m_1: pcnoc-m-1 {
+			cell-id = <MSM_BUS_PNOC_M_1>;
+			label = "pcnoc-m-1";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,qport = <13>;
+			qcom,qos-mode = "fixed";
+			qcom,connections = <&slv_pcnoc_snoc>;
+			qcom,prio1 = <1>;
+			qcom,prio0 = <1>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_M_1>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_M_1>;
+		};
+
+		pcnoc_int_0: pcnoc-int-0 {
+			cell-id = <MSM_BUS_PNOC_INT_0>;
+			label = "pcnoc-int-0";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,connections = < &pcnoc_s_1 &pcnoc_s_2 &pcnoc_s_0
+				 &pcnoc_s_4 &pcnoc_s_5
+				 &pcnoc_s_6 &pcnoc_s_7
+				 &pcnoc_s_8 &pcnoc_s_9
+				 &pcnoc_s_3>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_INT_0>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_INT_0>;
+		};
+
+		pcnoc_s_0: pcnoc-s-0 {
+			cell-id = <MSM_BUS_PNOC_SLV_0>;
+			label = "pcnoc-s-0";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&slv_clk_ctl &slv_tcsr &slv_security
+				 &slv_tlmm>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_0>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_0>;
+		};
+
+		pcnoc_s_1: pcnoc-s-1 {
+			cell-id = <MSM_BUS_PNOC_SLV_1>;
+			label = "pcnoc-s-1";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_prng_apu_cfg &slv_prng&slv_imem_cfg>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_1>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_1>;
+		};
+
+		pcnoc_s_2: pcnoc-s-2 {
+			cell-id = <MSM_BUS_PNOC_SLV_2>;
+			label = "pcnoc-s-2";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_spdm &slv_pcnoc_mpu_cfg &slv_pcnoc_cfg
+				&slv_boot_rom>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_2>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_2>;
+		};
+
+		pcnoc_s_3: pcnoc-s-3 {
+			cell-id = <MSM_BUS_PNOC_SLV_3>;
+			label = "pcnoc-s-3";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_qdss_cfg&slv_gcnt &slv_snoc_cfg
+				 &slv_snoc_mpu_cfg>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_3>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_3>;
+		};
+
+		pcnoc_s_4: pcnoc-s-4 {
+			cell-id = <MSM_BUS_PNOC_SLV_4>;
+			label = "pcnoc-s-4";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&slv_adss_cfg &slv_adss_vmidmt_cfg &slv_adss_apu>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_4>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_4>;
+		};
+
+		pcnoc_s_5: pcnoc-s-5 {
+			cell-id = <MSM_BUS_PNOC_SLV_5>;
+			label = "pcnoc-s-5";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = <&slv_qhss_apu_cfg &slv_fephy_cfg &slv_mdio
+				 &slv_srif>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_5>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_5>;
+		};
+
+		pcnoc_s_6: pcnoc-s-6 {
+			cell-id = <MSM_BUS_PNOC_SLV_6>;
+			label = "pcnoc-s-6";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_ddrc_mpu0_cfg &slv_ddrc_apu_cfg &slv_ddrc_mpu2_cfg
+				&slv_ddrc_cfg &slv_ddrc_mpu1_cfg>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_6>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_6>;
+		};
+
+		pcnoc_s_7: pcnoc-s-7 {
+			cell-id = <MSM_BUS_PNOC_SLV_7>;
+			label = "pcnoc-s-7";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_ess_apu_cfg &slv_usb2_cfg&slv_ess_vmidmt_cfg>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_7>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_7>;
+		};
+
+		pcnoc_s_8: pcnoc-s-8 {
+			cell-id = <MSM_BUS_PNOC_SLV_8>;
+			label = "pcnoc-s-8";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_sdcc_cfg &slv_qpic_cfg&slv_blsp_cfg>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_8>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_8>;
+		};
+
+		pcnoc_s_9: pcnoc-s-9 {
+			cell-id = <MSM_BUS_PNOC_SLV_9>;
+			label = "pcnoc-s-9";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_wss1_apu_cfg &slv_wss1_vmidmt_cfg&slv_wss0_vmidmt_cfg
+				 &slv_wss0_apu_cfg>;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_PCNOC_S_9>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_S_9>;
+		};
+
+		snoc_int_0: snoc-int-0 {
+			cell-id = <MSM_BUS_SNOC_INT_0>;
+			label = "snoc-int-0";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_ocimem&slv_qdss_stm>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_SNOC_INT_0>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SNOC_INT_0>;
+		};
+
+		snoc_int_1: snoc-int-1 {
+			cell-id = <MSM_BUS_SNOC_INT_1>;
+			label = "snoc-int-1";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,connections = < &slv_crypto_cfg &slv_a7ss &slv_ess_cfg
+				 &slv_usb3_cfg &slv_wss1_cfg
+				&slv_wss0_cfg>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_SNOC_INT_1>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SNOC_INT_1>;
+		};
+
+		qdss_int: qdss-int {
+			cell-id = <MSM_BUS_SNOC_QDSS_INT>;
+			label = "qdss-int";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,connections = <&snoc_int_0 &slv_snoc_ddrc_m1>;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,mas-rpm-id = <ICBID_MASTER_QDSS_INT>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_QDSS_INT>;
+		};
+		/*Slaves*/
+
+		slv_clk_ctl:slv-clk-ctl {
+			cell-id = <MSM_BUS_SLAVE_CLK_CTL>;
+			label = "slv-clk-ctl";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_CLK_CTL>;
+		};
+
+		slv_security:slv-security {
+			cell-id = <MSM_BUS_SLAVE_SECURITY>;
+			label = "slv-security";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SECURITY>;
+		};
+
+		slv_tcsr:slv-tcsr {
+			cell-id = <MSM_BUS_SLAVE_TCSR>;
+			label = "slv-tcsr";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_TCSR>;
+		};
+
+		slv_tlmm:slv-tlmm {
+			cell-id = <MSM_BUS_SLAVE_TLMM>;
+			label = "slv-tlmm";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_TLMM>;
+		};
+
+		slv_imem_cfg:slv-imem-cfg {
+			cell-id = <MSM_BUS_SLAVE_IMEM_CFG>;
+			label = "slv-imem-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_IMEM_CFG>;
+		};
+
+		slv_prng:slv-prng {
+			cell-id = <MSM_BUS_SLAVE_PRNG>;
+			label = "slv-prng";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PRNG>;
+		};
+
+		slv_prng_apu_cfg:slv-prng-apu-cfg {
+			cell-id = <MSM_BUS_SLAVE_PRNG_APU_CFG>;
+			label = "slv-prng-apu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PRNG_APU_CFG>;
+		};
+
+		slv_boot_rom:slv-boot-rom {
+			cell-id = <MSM_BUS_SLAVE_BOOT_ROM>;
+			label = "slv-boot-rom";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_BOOT_ROM>;
+		};
+
+		slv_spdm:slv-spdm {
+			cell-id = <MSM_BUS_SLAVE_SPDM_WRAPPER>;
+			label = "slv-spdm";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SPDM_WRAPPER>;
+		};
+
+		slv_pcnoc_cfg:slv-pcnoc-cfg {
+			cell-id = <MSM_BUS_SLAVE_PNOC_CFG>;
+			label = "slv-pcnoc-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PNOC_CFG>;
+		};
+
+		slv_pcnoc_mpu_cfg:slv-pcnoc-mpu-cfg {
+			cell-id = <MSM_BUS_SLAVE_PERIPH_MPU_CFG>;
+			label = "slv-pcnoc-mpu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PERIPH_MPU_CFG>;
+		};
+
+		slv_gcnt:slv-gcnt {
+			cell-id = <MSM_BUS_SLAVE_GCNT>;
+			label = "slv-gcnt";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_GCNT>;
+		};
+
+		slv_qdss_cfg:slv-qdss-cfg {
+			cell-id = <MSM_BUS_SLAVE_QDSS_CFG>;
+			label = "slv-qdss-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_QDSS_CFG>;
+		};
+
+		slv_snoc_cfg:slv-snoc-cfg {
+			cell-id = <MSM_BUS_SLAVE_SNOC_CFG>;
+			label = "slv-snoc-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SNOC_CFG>;
+		};
+
+		slv_snoc_mpu_cfg:slv-snoc-mpu-cfg {
+			cell-id = <MSM_BUS_SLAVE_SNOC_MPU_CFG>;
+			label = "slv-snoc-mpu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SNOC_MPU_CFG>;
+		};
+
+		slv_adss_cfg:slv-adss-cfg {
+			cell-id = <MSM_BUS_SLAVE_ADSS_CFG>;
+			label = "slv-adss-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_ADSS_CFG>;
+		};
+
+		slv_adss_apu:slv-adss-apu {
+			cell-id = <MSM_BUS_SLAVE_ADSS_VMIDMT_CFG>;
+			label = "slv-adss-apu";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_ADSS_APU>;
+		};
+
+		slv_adss_vmidmt_cfg:slv-adss-vmidmt-cfg {
+			cell-id = <MSM_BUS_SLAVE_ADSS_VMIDMT_CFG>;
+			label = "slv-adss-vmidmt-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_ADSS_VMIDMT_CFG>;
+		};
+
+		slv_qhss_apu_cfg:slv-qhss-apu-cfg {
+			cell-id = <MSM_BUS_SLAVE_QHSS_APU_CFG>;
+			label = "slv-qhss-apu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_QHSS_APU_CFG>;
+		};
+
+		slv_mdio:slv-mdio {
+			cell-id = <MSM_BUS_SLAVE_MDIO>;
+			label = "slv-mdio";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_MDIO>;
+		};
+
+		slv_fephy_cfg:slv-fephy-cfg {
+			cell-id = <MSM_BUS_SLAVE_FEPHY_CFG>;
+			label = "slv-fephy-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_FEPHY_CFG>;
+		};
+
+		slv_srif:slv-srif {
+			cell-id = <MSM_BUS_SLAVE_SRIF>;
+			label = "slv-srif";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SRIF>;
+		};
+
+		slv_ddrc_cfg:slv-ddrc-cfg {
+			cell-id = <MSM_BUS_SLAVE_DDRC_CFG>;
+			label = "slv-ddrc-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_DDRC_CFG>;
+		};
+
+		slv_ddrc_apu_cfg:slv-ddrc-apu-cfg {
+			cell-id = <MSM_BUS_SLAVE_DDRC_APU_CFG>;
+			label = "slv-ddrc-apu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_DDRC_APU_CFG>;
+		};
+
+		slv_ddrc_mpu0_cfg:slv-ddrc-mpu0-cfg {
+			cell-id = <MSM_BUS_SLAVE_MPU0_CFG>;
+			label = "slv-ddrc-mpu0-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_DDRC_MPU0_CFG>;
+		};
+
+		slv_ddrc_mpu1_cfg:slv-ddrc-mpu1-cfg {
+			cell-id = <MSM_BUS_SLAVE_MPU1_CFG>;
+			label = "slv-ddrc-mpu1-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_DDRC_MPU1_CFG>;
+		};
+
+		slv_ddrc_mpu2_cfg:slv-ddrc-mpu2-cfg {
+			cell-id = <MSM_BUS_SLAVE_MPU2_CFG>;
+			label = "slv-ddrc-mpu2-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_DDRC_MPU2_CFG>;
+		};
+
+		slv_ess_vmidmt_cfg:slv-ess-vmidmt-cfg {
+			cell-id = <MSM_BUS_SLAVE_ESS_VMIDMT_CFG>;
+			label = "slv-ess-vmidmt-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_ESS_VMIDMT_CFG>;
+		};
+
+		slv_ess_apu_cfg:slv-ess-apu-cfg {
+			cell-id = <MSM_BUS_SLAVE_ESS_APU_CFG>;
+			label = "slv-ess-apu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_ESS_APU_CFG>;
+		};
+
+		slv_usb2_cfg:slv-usb2-cfg {
+			cell-id = <MSM_BUS_SLAVE_USB2_CFG>;
+			label = "slv-usb2-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_USB2_CFG>;
+		};
+
+		slv_blsp_cfg:slv-blsp-cfg {
+			cell-id = <MSM_BUS_SLAVE_BLSP_CFG>;
+			label = "slv-blsp-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_BLSP_CFG>;
+		};
+
+		slv_qpic_cfg:slv-qpic-cfg {
+			cell-id = <MSM_BUS_SLAVE_QPIC_CFG>;
+			label = "slv-qpic-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_QPIC_CFG>;
+		};
+
+		slv_sdcc_cfg:slv-sdcc-cfg {
+			cell-id = <MSM_BUS_SLAVE_SDCC_CFG>;
+			label = "slv-sdcc-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SDCC_CFG>;
+		};
+
+		slv_wss0_vmidmt_cfg:slv-wss0-vmidmt-cfg {
+			cell-id = <MSM_BUS_SLAVE_WSS0_VMIDMT_CFG>;
+			label = "slv-wss0-vmidmt-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_WSS0_VMIDMT_CFG>;
+		};
+
+		slv_wss0_apu_cfg:slv-wss0-apu-cfg {
+			cell-id = <MSM_BUS_SLAVE_WSS0_APU_CFG>;
+			label = "slv-wss0-apu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_WSS0_APU_CFG>;
+		};
+
+		slv_wss1_vmidmt_cfg:slv-wss1-vmidmt-cfg {
+			cell-id = <MSM_BUS_SLAVE_WSS1_VMIDMT_CFG>;
+			label = "slv-wss1-vmidmt-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_WSS1_VMIDMT_CFG>;
+		};
+
+		slv_wss1_apu_cfg:slv-wss1-apu-cfg {
+			cell-id = <MSM_BUS_SLAVE_WSS1_APU_CFG>;
+			label = "slv-wss1-apu-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_WSS1_APU_CFG>;
+		};
+
+		slv_pcnoc_snoc:slv-pcnoc-snoc {
+			cell-id = <MSM_BUS_PNOC_SNOC_SLV>;
+			label = "slv-pcnoc-snoc";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCNOC_SNOC>;
+		};
+
+		slv_srvc_pcnoc:slv-srvc-pcnoc {
+			cell-id = <MSM_BUS_SLAVE_SRVC_PCNOC>;
+			label = "slv-srvc-pcnoc";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_pcnoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SRVC_PCNOC>;
+		};
+
+		slv_snoc_ddrc_m1:slv-snoc-ddrc-m1 {
+			cell-id = <MSM_BUS_SLAVE_SNOC_DDRC>;
+			label = "slv-snoc-ddrc-m1";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SNOC_DDRC>;
+		};
+
+		slv_a7ss:slv-a7ss {
+			cell-id = <MSM_BUS_SLAVE_A7SS>;
+			label = "slv-a7ss";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_A7SS>;
+		};
+
+		slv_ocimem:slv-ocimem {
+			cell-id = <MSM_BUS_SLAVE_OCIMEM>;
+			label = "slv-ocimem";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_OCIMEM>;
+		};
+
+		slv_wss0_cfg:slv-wss0-cfg {
+			cell-id = <MSM_BUS_SLAVE_WSS0_CFG>;
+			label = "slv-wss0-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_WSS0_CFG>;
+		};
+
+		slv_wss1_cfg:slv-wss1-cfg {
+			cell-id = <MSM_BUS_SLAVE_WSS1_CFG>;
+			label = "slv-wss1-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_WSS1_CFG>;
+		};
+
+		slv_pcie:slv-pcie {
+			cell-id = <MSM_BUS_SLAVE_PCIE>;
+			label = "slv-pcie";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_PCIE>;
+		};
+
+		slv_usb3_cfg:slv-usb3-cfg {
+			cell-id = <MSM_BUS_SLAVE_USB3_CFG>;
+			label = "slv-usb3-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_USB3_CFG>;
+		};
+
+		slv_crypto_cfg:slv-crypto-cfg {
+			cell-id = <MSM_BUS_SLAVE_CRYPTO_CFG>;
+			label = "slv-crypto-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_CRYPTO_CFG>;
+		};
+
+		slv_ess_cfg:slv-ess-cfg {
+			cell-id = <MSM_BUS_SLAVE_ESS_CFG>;
+			label = "slv-ess-cfg";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_ESS_CFG>;
+		};
+
+		slv_qdss_stm:slv-qdss-stm {
+			cell-id = <MSM_BUS_SLAVE_QDSS_STM>;
+			label = "slv-qdss-stm";
+			qcom,buswidth = <4>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_QDSS_STM>;
+		};
+
+		slv_srvc_snoc:slv-srvc-snoc {
+			cell-id = <MSM_BUS_SLAVE_SRVC_SNOC>;
+			label = "slv-srvc-snoc";
+			qcom,buswidth = <8>;
+			qcom,ap-owned;
+			qcom,bus-dev = <&fab_snoc>;
+			qcom,slv-rpm-id = <ICBID_SLAVE_SRVC_SNOC>;
+		};
+	};
+};
+
+};
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
new file mode 100644
index 0000000000..5553bbd166
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
@@ -0,0 +1,371 @@
+/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2019, Nguyen Dinh Phi <phi_nguyen@compex.com.sg>
+ *
+ * Permission to use, copy, modify, and/or distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
+ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
+ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
+ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ */
+
+#include "qcom-ipq4019.dtsi"
+#include "qcom-ipq4019-bus.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/qcom,tcsr.h>
+
+/ {
+	model = "Compex WPJ419";
+	compatible = "compex,wpj419", "qcom,ipq4019";
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+
+	reserved-memory {
+		ranges;
+		rsvd1@87000000 {
+			/* Reserved for other subsystem */
+			reg = <0x87000000 0x500000>;
+			no-map;
+		};
+		wifi_dump@87500000 {
+			reg = <0x87500000 0x600000>;
+			no-map;
+		};
+
+		rsvd2@87B00000 {
+			/* Reserved for other subsystem */
+			reg = <0x87B00000 0x500000>;
+			no-map;
+		};
+	};
+
+	chosen {
+		bootargs-append = " clk_ignore_unused";
+	};
+
+	soc {
+		pinctrl@1000000 {
+			mdio_pins: mdio_pinmux {
+				mux_1 {
+					pins = "gpio6";
+					function = "mdio";
+					bias-pull-up;
+				};
+
+				mux_2 {
+					pins = "gpio7";
+					function = "mdc";
+					bias-pull-up;
+				};
+			};
+
+			serial_0_pins: serial_pinmux {
+				mux {
+					pins = "gpio16", "gpio17";
+					function = "blsp_uart0";
+					bias-disable;
+				};
+			};
+
+			serial_1_pins: serial1_pinmux {
+				mux {
+					pins = "gpio8", "gpio9", "gpio10", "gpio11";
+					function = "blsp_uart1";
+					bias-disable;
+				};
+			};
+
+			spi_0_pins: spi_0_pinmux {
+				pinmux {
+					function = "blsp_spi0";
+					pins = "gpio13", "gpio14", "gpio15";
+					bias-disable;
+				};
+
+				pinmux_cs {
+					function = "gpio";
+					pins = "gpio12";
+					bias-disable;
+					output-high;
+				};
+			};
+
+			i2c_0_pins: i2c_0_pinmux {
+				mux {
+					pins = "gpio20", "gpio21";
+					function = "blsp_i2c0";
+					bias-disable;
+				};
+			};
+
+			nand_pins: nand_pins {
+				pullups {
+					pins = "gpio52", "gpio53", "gpio58", "gpio59";
+					function = "qpic";
+					bias-pull-up;
+				};
+
+				pulldowns {
+					pins = "gpio54", "gpio55", "gpio56",
+					"gpio57", "gpio60", "gpio61",
+					"gpio62", "gpio63", "gpio64",
+					"gpio65", "gpio66", "gpio67",
+					"gpio68", "gpio69";
+					function = "qpic";
+					bias-pull-down;
+				};
+			};
+
+			led_0_pins: led0_pinmux {
+				mux_1 {
+					pins = "gpio36";
+					function = "led0";
+					bias-pull-down;
+				};
+				mux_2 {
+					pins = "gpio40";
+					function = "led4";
+					bias-pull-down;
+				};
+			};
+		};
+
+		blsp_dma: dma@7884000 {
+			status = "okay";
+		};
+
+		spi_0: spi@78b5000 {
+			pinctrl-0 = <&spi_0_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+			cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>, <&tlmm 41 GPIO_ACTIVE_HIGH>;
+			num-cs = <2>;
+
+			m25p80@0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <0>;
+				linux,modalias = "m25p80", "n25q128a11";
+				compatible = "jedec,spi-nor", "n25q128a11";
+				spi-max-frequency = <24000000>;
+
+				partitions {
+					compatible = "fixed-partitions";
+
+					partition@0 {
+						label = "0:SBL1";
+						reg = <0x000000 0x040000>;
+						read-only;
+					};
+
+					partition@40000 {
+						label = "0:MIBIB";
+						reg = <0x040000 0x020000>;
+						read-only;
+					};
+
+					partition@60000 {
+						label = "0:QSEE";
+						reg = <0x060000 0x060000>;
+						read-only;
+					};
+
+					partition@c0000 {
+						label = "0:CDT";
+						reg = <0x0c0000 0x010000>;
+						read-only;
+					};
+
+					partition@d0000 {
+						label = "0:DDRPARAMS";
+						reg = <0x0d0000 0x010000>;
+						read-only;
+					};
+
+					partition@e0000 {
+						label = "u-boot-env";
+						reg = <0x0e0000 0x010000>;
+						read-only;
+					};
+
+					partition@f0000 {
+						label = "u-boot";
+						reg = <0x0f0000 0x080000>;
+						read-only;
+					};
+
+					partition@170000 {
+						label = "art";
+						reg = <0x170000 0x010000>;
+						read-only;
+					};
+				};
+			};
+
+			mt29f@1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <1>;
+				status = "okay";
+				compatible = "spinand,mt29f";
+				spi-max-frequency = <24000000>;
+
+				partitions {
+					compatible = "fixed-partitions";
+
+					partition@0 {
+						label = "ubi";
+						reg = <0x0000000 0x8000000>;
+					};
+				};
+			};
+		};
+
+		mdio@90000 {
+			status = "okay";
+			phy-reset-gpio = <&tlmm 47 0>;
+			pinctrl-0 = <&mdio_pins>;
+			pinctrl-names = "default";
+		};
+
+		ess-psgmii@98000 {
+			status = "okay";
+		};
+
+		tcsr@194b000 {
+			/* select hostmode */
+			compatible = "qcom,tcsr";
+			reg = <0x194b000 0x100>;
+			qcom,usb-hsphy-mode-select = <TCSR_USB_HSPHY_HOST_MODE>;
+			status = "okay";
+		};
+
+		tcsr@1949000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1949000 0x100>;
+			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
+		};
+
+		ess_tcsr@1953000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1953000 0x1000>;
+			qcom,ess-interface-select = <TCSR_ESS_PSGMII>;
+		};
+
+		tcsr@1957000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1957000 0x100>;
+			qcom,wifi_noc_memtype_m0_m2 = <TCSR_WIFI_NOC_MEMTYPE_M0_M2>;
+		};
+
+		i2c_0: i2c@78b7000 {
+			pinctrl-0 = <&i2c_0_pins>;
+			pinctrl-names = "default";
+			status = "ok";
+		};
+
+		serial@78af000 {
+			pinctrl-0 = <&serial_0_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+		};
+
+		serial@78b0000 {
+			pinctrl-0 = <&serial_1_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+		};
+
+		usb3_ss_phy: ssphy@9a000 {
+			status = "okay";
+		};
+
+		usb3_hs_phy: hsphy@a6000 {
+			status = "okay";
+		};
+
+		usb3: usb3@8af8800 {
+			status = "okay";
+		};
+
+		usb2_hs_phy: hsphy@a8000 {
+			status = "okay";
+		};
+
+		usb2: usb2@60f8800 {
+			status = "okay";
+		};
+
+		cryptobam: dma@8e04000 {
+			status = "okay";
+		};
+
+		crypto@8e3a000 {
+			status = "okay";
+		};
+
+		watchdog@b017000 {
+			status = "okay";
+		};
+
+		ess-switch@c000000 {
+			switch_lan_bmp = <0x1e>;
+			switch_wan_bmp = <0x20>;
+			status = "okay";
+		};
+
+		edma@c080000 {
+			status = "okay";
+		};
+
+		qpic_bam: dma@7984000 {
+			status = "okay";
+		};
+
+		pcie0: pci@40000000 {
+			status = "okay";
+			perst-gpio = <&tlmm 38 GPIO_ACTIVE_LOW>;
+			wake-gpio = <&tlmm 50 GPIO_ACTIVE_LOW>;
+		};
+
+		nand: qpic-nand@79b0000 {
+			pinctrl-0 = <&nand_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+		};
+	};
+};
+
+&gmac0 {
+qcom,phy_mdio_addr = <4>;
+qcom,poll_required = <1>;
+qcom,forced_speed = <1000>;
+qcom,forced_duplex = <1>;
+vlan_tag = <2 0x20>;
+};
+
+&gmac1 {
+qcom,phy_mdio_addr = <3>;
+qcom,poll_required = <1>;
+qcom,forced_speed = <1000>;
+qcom,forced_duplex = <1>;
+vlan_tag = <1 0x10>;
+};
+
+&wifi0 {
+status = "okay";
+};
+
+&wifi1 {
+status = "okay";
+};
diff --git a/target/linux/ipq40xx/files-4.19/include/dt-bindings/msm/msm-bus-ids.h b/target/linux/ipq40xx/files-4.19/include/dt-bindings/msm/msm-bus-ids.h
new file mode 100644
index 0000000000..da0b83e831
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/include/dt-bindings/msm/msm-bus-ids.h
@@ -0,0 +1,869 @@
+/* Copyright (c) 2014, The Linux Foundation. All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 and
+ * only version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MSM_BUS_IDS_H
+#define __MSM_BUS_IDS_H
+
+/* Topology related enums */
+#define	MSM_BUS_FAB_DEFAULT 0
+#define	MSM_BUS_FAB_APPSS 0
+#define	MSM_BUS_FAB_SYSTEM 1024
+#define	MSM_BUS_FAB_MMSS 2048
+#define	MSM_BUS_FAB_SYSTEM_FPB 3072
+#define	MSM_BUS_FAB_CPSS_FPB 4096
+
+#define	MSM_BUS_FAB_BIMC 0
+#define	MSM_BUS_FAB_SYS_NOC 1024
+#define	MSM_BUS_FAB_MMSS_NOC 2048
+#define	MSM_BUS_FAB_OCMEM_NOC 3072
+#define	MSM_BUS_FAB_PERIPH_NOC 4096
+#define	MSM_BUS_FAB_CONFIG_NOC 5120
+#define	MSM_BUS_FAB_OCMEM_VNOC 6144
+#define	MSM_BUS_FAB_MMSS_AHB 2049
+#define	MSM_BUS_FAB_A0_NOC 6145
+#define	MSM_BUS_FAB_A1_NOC 6146
+#define	MSM_BUS_FAB_A2_NOC 6147
+
+#define	MSM_BUS_MASTER_FIRST 1
+#define	MSM_BUS_MASTER_AMPSS_M0 1
+#define	MSM_BUS_MASTER_AMPSS_M1 2
+#define	MSM_BUS_APPSS_MASTER_FAB_MMSS 3
+#define	MSM_BUS_APPSS_MASTER_FAB_SYSTEM 4
+#define	MSM_BUS_SYSTEM_MASTER_FAB_APPSS 5
+#define	MSM_BUS_MASTER_SPS 6
+#define	MSM_BUS_MASTER_ADM_PORT0 7
+#define	MSM_BUS_MASTER_ADM_PORT1 8
+#define	MSM_BUS_SYSTEM_MASTER_ADM1_PORT0 9
+#define	MSM_BUS_MASTER_ADM1_PORT1 10
+#define	MSM_BUS_MASTER_LPASS_PROC 11
+#define	MSM_BUS_MASTER_MSS_PROCI 12
+#define	MSM_BUS_MASTER_MSS_PROCD 13
+#define	MSM_BUS_MASTER_MSS_MDM_PORT0 14
+#define	MSM_BUS_MASTER_LPASS 15
+#define	MSM_BUS_SYSTEM_MASTER_CPSS_FPB 16
+#define	MSM_BUS_SYSTEM_MASTER_SYSTEM_FPB 17
+#define	MSM_BUS_SYSTEM_MASTER_MMSS_FPB 18
+#define	MSM_BUS_MASTER_ADM1_CI 19
+#define	MSM_BUS_MASTER_ADM0_CI 20
+#define	MSM_BUS_MASTER_MSS_MDM_PORT1 21
+#define	MSM_BUS_MASTER_MDP_PORT0 22
+#define	MSM_BUS_MASTER_MDP_PORT1 23
+#define	MSM_BUS_MMSS_MASTER_ADM1_PORT0 24
+#define	MSM_BUS_MASTER_ROTATOR 25
+#define	MSM_BUS_MASTER_GRAPHICS_3D 26
+#define	MSM_BUS_MASTER_JPEG_DEC 27
+#define	MSM_BUS_MASTER_GRAPHICS_2D_CORE0 28
+#define	MSM_BUS_MASTER_VFE 29
+#define	MSM_BUS_MASTER_VPE 30
+#define	MSM_BUS_MASTER_JPEG_ENC 31
+#define	MSM_BUS_MASTER_GRAPHICS_2D_CORE1 32
+#define	MSM_BUS_MMSS_MASTER_APPS_FAB 33
+#define	MSM_BUS_MASTER_HD_CODEC_PORT0 34
+#define	MSM_BUS_MASTER_HD_CODEC_PORT1 35
+#define	MSM_BUS_MASTER_SPDM 36
+#define	MSM_BUS_MASTER_RPM 37
+#define	MSM_BUS_MASTER_MSS 38
+#define	MSM_BUS_MASTER_RIVA 39
+#define	MSM_BUS_MASTER_SNOC_VMEM 40
+#define	MSM_BUS_MASTER_MSS_SW_PROC 41
+#define	MSM_BUS_MASTER_MSS_FW_PROC 42
+#define	MSM_BUS_MASTER_HMSS 43
+#define	MSM_BUS_MASTER_GSS_NAV 44
+#define	MSM_BUS_MASTER_PCIE 45
+#define	MSM_BUS_MASTER_SATA 46
+#define	MSM_BUS_MASTER_CRYPTO 47
+#define	MSM_BUS_MASTER_VIDEO_CAP 48
+#define	MSM_BUS_MASTER_GRAPHICS_3D_PORT1 49
+#define	MSM_BUS_MASTER_VIDEO_ENC 50
+#define	MSM_BUS_MASTER_VIDEO_DEC 51
+#define	MSM_BUS_MASTER_LPASS_AHB 52
+#define	MSM_BUS_MASTER_QDSS_BAM 53
+#define	MSM_BUS_MASTER_SNOC_CFG 54
+#define	MSM_BUS_MASTER_CRYPTO_CORE0 55
+#define	MSM_BUS_MASTER_CRYPTO_CORE1 56
+#define	MSM_BUS_MASTER_MSS_NAV 57
+#define	MSM_BUS_MASTER_OCMEM_DMA 58
+#define	MSM_BUS_MASTER_WCSS 59
+#define	MSM_BUS_MASTER_QDSS_ETR 60
+#define	MSM_BUS_MASTER_USB3 61
+#define	MSM_BUS_MASTER_JPEG 62
+#define	MSM_BUS_MASTER_VIDEO_P0 63
+#define	MSM_BUS_MASTER_VIDEO_P1 64
+#define	MSM_BUS_MASTER_MSS_PROC 65
+#define	MSM_BUS_MASTER_JPEG_OCMEM 66
+#define	MSM_BUS_MASTER_MDP_OCMEM 67
+#define	MSM_BUS_MASTER_VIDEO_P0_OCMEM 68
+#define	MSM_BUS_MASTER_VIDEO_P1_OCMEM 69
+#define	MSM_BUS_MASTER_VFE_OCMEM 70
+#define	MSM_BUS_MASTER_CNOC_ONOC_CFG 71
+#define	MSM_BUS_MASTER_RPM_INST 72
+#define	MSM_BUS_MASTER_RPM_DATA 73
+#define	MSM_BUS_MASTER_RPM_SYS 74
+#define	MSM_BUS_MASTER_DEHR 75
+#define	MSM_BUS_MASTER_QDSS_DAP 76
+#define	MSM_BUS_MASTER_TIC 77
+#define	MSM_BUS_MASTER_SDCC_1 78
+#define	MSM_BUS_MASTER_SDCC_3 79
+#define	MSM_BUS_MASTER_SDCC_4 80
+#define	MSM_BUS_MASTER_SDCC_2 81
+#define	MSM_BUS_MASTER_TSIF 82
+#define	MSM_BUS_MASTER_BAM_DMA 83
+#define	MSM_BUS_MASTER_BLSP_2 84
+#define	MSM_BUS_MASTER_USB_HSIC 85
+#define	MSM_BUS_MASTER_BLSP_1 86
+#define	MSM_BUS_MASTER_USB_HS 87
+#define	MSM_BUS_MASTER_PNOC_CFG 88
+#define	MSM_BUS_MASTER_V_OCMEM_GFX3D 89
+#define	MSM_BUS_MASTER_IPA 90
+#define	MSM_BUS_MASTER_QPIC 91
+#define	MSM_BUS_MASTER_MDPE 92
+#define	MSM_BUS_MASTER_USB_HS2 93
+#define	MSM_BUS_MASTER_VPU 94
+#define	MSM_BUS_MASTER_UFS 95
+#define	MSM_BUS_MASTER_BCAST 96
+#define	MSM_BUS_MASTER_CRYPTO_CORE2 97
+#define	MSM_BUS_MASTER_EMAC 98
+#define	MSM_BUS_MASTER_VPU_1 99
+#define	MSM_BUS_MASTER_PCIE_1 100
+#define	MSM_BUS_MASTER_USB3_1 101
+#define	MSM_BUS_MASTER_CNOC_MNOC_MMSS_CFG 102
+#define	MSM_BUS_MASTER_CNOC_MNOC_CFG 103
+#define	MSM_BUS_MASTER_TCU_0 104
+#define	MSM_BUS_MASTER_TCU_1 105
+#define	MSM_BUS_MASTER_CPP 106
+#define	MSM_BUS_MASTER_AUDIO 107
+#define	MSM_BUS_MASTER_PCIE_2 108
+#define	MSM_BUS_MASTER_BLSP_BAM 109
+#define	MSM_BUS_MASTER_USB2_BAM 110
+#define	MSM_BUS_MASTER_ADDS_DMA0 111
+#define	MSM_BUS_MASTER_ADDS_DMA1 112
+#define	MSM_BUS_MASTER_ADDS_DMA2 113
+#define	MSM_BUS_MASTER_ADDS_DMA3 114
+#define	MSM_BUS_MASTER_QPIC_BAM 115
+#define	MSM_BUS_MASTER_SDCC_BAM 116
+#define	MSM_BUS_MASTER_DDRC_SNOC 117
+#define	MSM_BUS_MASTER_WSS_0  118
+#define	MSM_BUS_MASTER_WSS_1  119
+#define	MSM_BUS_MASTER_ESS 120
+#define	MSM_BUS_MASTER_QDSS_BAMNDP 121
+#define	MSM_BUS_MASTER_QDSS_SNOC_CFG 122
+#define	MSM_BUS_MASTER_LAST 130
+
+#define	MSM_BUS_SYSTEM_FPB_MASTER_SYSTEM MSM_BUS_SYSTEM_MASTER_SYSTEM_FPB
+#define	MSM_BUS_CPSS_FPB_MASTER_SYSTEM MSM_BUS_SYSTEM_MASTER_CPSS_FPB
+
+#define	MSM_BUS_SNOC_MM_INT_0 10000
+#define	MSM_BUS_SNOC_MM_INT_1 10001
+#define	MSM_BUS_SNOC_MM_INT_2 10002
+#define	MSM_BUS_SNOC_MM_INT_BIMC 10003
+#define	MSM_BUS_SNOC_INT_0 10004
+#define	MSM_BUS_SNOC_INT_1 10005
+#define	MSM_BUS_SNOC_INT_BIMC 10006
+#define	MSM_BUS_SNOC_BIMC_0_MAS 10007
+#define	MSM_BUS_SNOC_BIMC_1_MAS 10008
+#define	MSM_BUS_SNOC_QDSS_INT 10009
+#define	MSM_BUS_PNOC_SNOC_MAS 10010
+#define	MSM_BUS_PNOC_SNOC_SLV 10011
+#define	MSM_BUS_PNOC_INT_0 10012
+#define	MSM_BUS_PNOC_INT_1 10013
+#define	MSM_BUS_PNOC_M_0 10014
+#define	MSM_BUS_PNOC_M_1 10015
+#define	MSM_BUS_BIMC_SNOC_MAS 10016
+#define	MSM_BUS_BIMC_SNOC_SLV 10017
+#define	MSM_BUS_PNOC_SLV_0 10018
+#define	MSM_BUS_PNOC_SLV_1 10019
+#define	MSM_BUS_PNOC_SLV_2 10020
+#define	MSM_BUS_PNOC_SLV_3 10021
+#define	MSM_BUS_PNOC_SLV_4 10022
+#define	MSM_BUS_PNOC_SLV_8 10023
+#define	MSM_BUS_PNOC_SLV_9 10024
+#define	MSM_BUS_SNOC_BIMC_0_SLV 10025
+#define	MSM_BUS_SNOC_BIMC_1_SLV 10026
+#define	MSM_BUS_MNOC_BIMC_MAS 10027
+#define	MSM_BUS_MNOC_BIMC_SLV 10028
+#define	MSM_BUS_BIMC_MNOC_MAS 10029
+#define	MSM_BUS_BIMC_MNOC_SLV 10030
+#define	MSM_BUS_SNOC_BIMC_MAS 10031
+#define	MSM_BUS_SNOC_BIMC_SLV 10032
+#define	MSM_BUS_CNOC_SNOC_MAS 10033
+#define	MSM_BUS_CNOC_SNOC_SLV 10034
+#define	MSM_BUS_SNOC_CNOC_MAS 10035
+#define	MSM_BUS_SNOC_CNOC_SLV 10036
+#define	MSM_BUS_OVNOC_SNOC_MAS 10037
+#define	MSM_BUS_OVNOC_SNOC_SLV 10038
+#define	MSM_BUS_SNOC_OVNOC_MAS 10039
+#define	MSM_BUS_SNOC_OVNOC_SLV 10040
+#define	MSM_BUS_SNOC_PNOC_MAS 10041
+#define	MSM_BUS_SNOC_PNOC_SLV 10042
+#define	MSM_BUS_BIMC_INT_APPS_EBI 10043
+#define	MSM_BUS_BIMC_INT_APPS_SNOC 10044
+#define	MSM_BUS_SNOC_BIMC_2_MAS 10045
+#define	MSM_BUS_SNOC_BIMC_2_SLV 10046
+#define	MSM_BUS_PNOC_SLV_5 10047
+#define	MSM_BUS_PNOC_SLV_6 10048
+#define	MSM_BUS_PNOC_INT_2 10049
+#define	MSM_BUS_PNOC_INT_3 10050
+#define	MSM_BUS_PNOC_INT_4 10051
+#define	MSM_BUS_PNOC_INT_5 10052
+#define	MSM_BUS_PNOC_INT_6 10053
+#define	MSM_BUS_PNOC_INT_7 10054
+#define	MSM_BUS_BIMC_SNOC_1_MAS 10055
+#define	MSM_BUS_BIMC_SNOC_1_SLV 10056
+#define	MSM_BUS_PNOC_A1NOC_MAS 10057
+#define	MSM_BUS_PNOC_A1NOC_SLV 10058
+#define	MSM_BUS_CNOC_A1NOC_MAS 10059
+#define	MSM_BUS_A0NOC_SNOC_MAS 10060
+#define	MSM_BUS_A0NOC_SNOC_SLV 10061
+#define	MSM_BUS_A1NOC_SNOC_SLV 10062
+#define	MSM_BUS_A1NOC_SNOC_MAS 10063
+#define	MSM_BUS_A2NOC_SNOC_MAS 10064
+#define	MSM_BUS_A2NOC_SNOC_SLV 10065
+#define	MSM_BUS_PNOC_SLV_7 10066
+#define	MSM_BUS_INT_LAST 10067
+
+#define	MSM_BUS_SLAVE_FIRST 512
+#define	MSM_BUS_SLAVE_EBI_CH0 512
+#define	MSM_BUS_SLAVE_EBI_CH1 513
+#define	MSM_BUS_SLAVE_AMPSS_L2 514
+#define	MSM_BUS_APPSS_SLAVE_FAB_MMSS 515
+#define	MSM_BUS_APPSS_SLAVE_FAB_SYSTEM 516
+#define	MSM_BUS_SYSTEM_SLAVE_FAB_APPS 517
+#define	MSM_BUS_SLAVE_SPS 518
+#define	MSM_BUS_SLAVE_SYSTEM_IMEM 519
+#define	MSM_BUS_SLAVE_AMPSS 520
+#define	MSM_BUS_SLAVE_MSS 521
+#define	MSM_BUS_SLAVE_LPASS 522
+#define	MSM_BUS_SYSTEM_SLAVE_CPSS_FPB 523
+#define	MSM_BUS_SYSTEM_SLAVE_SYSTEM_FPB 524
+#define	MSM_BUS_SYSTEM_SLAVE_MMSS_FPB 525
+#define	MSM_BUS_SLAVE_CORESIGHT 526
+#define	MSM_BUS_SLAVE_RIVA 527
+#define	MSM_BUS_SLAVE_SMI 528
+#define	MSM_BUS_MMSS_SLAVE_FAB_APPS 529
+#define	MSM_BUS_MMSS_SLAVE_FAB_APPS_1 530
+#define	MSM_BUS_SLAVE_MM_IMEM 531
+#define	MSM_BUS_SLAVE_CRYPTO 532
+#define	MSM_BUS_SLAVE_SPDM 533
+#define	MSM_BUS_SLAVE_RPM 534
+#define	MSM_BUS_SLAVE_RPM_MSG_RAM 535
+#define	MSM_BUS_SLAVE_MPM 536
+#define	MSM_BUS_SLAVE_PMIC1_SSBI1_A 537
+#define	MSM_BUS_SLAVE_PMIC1_SSBI1_B 538
+#define	MSM_BUS_SLAVE_PMIC1_SSBI1_C 539
+#define	MSM_BUS_SLAVE_PMIC2_SSBI2_A 540
+#define	MSM_BUS_SLAVE_PMIC2_SSBI2_B 541
+#define	MSM_BUS_SLAVE_GSBI1_UART 542
+#define	MSM_BUS_SLAVE_GSBI2_UART 543
+#define	MSM_BUS_SLAVE_GSBI3_UART 544
+#define	MSM_BUS_SLAVE_GSBI4_UART 545
+#define	MSM_BUS_SLAVE_GSBI5_UART 546
+#define	MSM_BUS_SLAVE_GSBI6_UART 547
+#define	MSM_BUS_SLAVE_GSBI7_UART 548
+#define	MSM_BUS_SLAVE_GSBI8_UART 549
+#define	MSM_BUS_SLAVE_GSBI9_UART 550
+#define	MSM_BUS_SLAVE_GSBI10_UART 551
+#define	MSM_BUS_SLAVE_GSBI11_UART 552
+#define	MSM_BUS_SLAVE_GSBI12_UART 553
+#define	MSM_BUS_SLAVE_GSBI1_QUP 554
+#define	MSM_BUS_SLAVE_GSBI2_QUP 555
+#define	MSM_BUS_SLAVE_GSBI3_QUP 556
+#define	MSM_BUS_SLAVE_GSBI4_QUP 557
+#define	MSM_BUS_SLAVE_GSBI5_QUP 558
+#define	MSM_BUS_SLAVE_GSBI6_QUP 559
+#define	MSM_BUS_SLAVE_GSBI7_QUP 560
+#define	MSM_BUS_SLAVE_GSBI8_QUP 561
+#define	MSM_BUS_SLAVE_GSBI9_QUP 562
+#define	MSM_BUS_SLAVE_GSBI10_QUP 563
+#define	MSM_BUS_SLAVE_GSBI11_QUP 564
+#define	MSM_BUS_SLAVE_GSBI12_QUP 565
+#define	MSM_BUS_SLAVE_EBI2_NAND 566
+#define	MSM_BUS_SLAVE_EBI2_CS0 567
+#define	MSM_BUS_SLAVE_EBI2_CS1 568
+#define	MSM_BUS_SLAVE_EBI2_CS2 569
+#define	MSM_BUS_SLAVE_EBI2_CS3 570
+#define	MSM_BUS_SLAVE_EBI2_CS4 571
+#define	MSM_BUS_SLAVE_EBI2_CS5 572
+#define	MSM_BUS_SLAVE_USB_FS1 573
+#define	MSM_BUS_SLAVE_USB_FS2 574
+#define	MSM_BUS_SLAVE_TSIF 575
+#define	MSM_BUS_SLAVE_MSM_TSSC 576
+#define	MSM_BUS_SLAVE_MSM_PDM 577
+#define	MSM_BUS_SLAVE_MSM_DIMEM 578
+#define	MSM_BUS_SLAVE_MSM_TCSR 579
+#define	MSM_BUS_SLAVE_MSM_PRNG 580
+#define	MSM_BUS_SLAVE_GSS 581
+#define	MSM_BUS_SLAVE_SATA 582
+#define	MSM_BUS_SLAVE_USB3 583
+#define	MSM_BUS_SLAVE_WCSS 584
+#define	MSM_BUS_SLAVE_OCIMEM 585
+#define	MSM_BUS_SLAVE_SNOC_OCMEM 586
+#define	MSM_BUS_SLAVE_SERVICE_SNOC 587
+#define	MSM_BUS_SLAVE_QDSS_STM 588
+#define	MSM_BUS_SLAVE_CAMERA_CFG 589
+#define	MSM_BUS_SLAVE_DISPLAY_CFG 590
+#define	MSM_BUS_SLAVE_OCMEM_CFG 591
+#define	MSM_BUS_SLAVE_CPR_CFG 592
+#define	MSM_BUS_SLAVE_CPR_XPU_CFG 593
+#define	MSM_BUS_SLAVE_MISC_CFG 594
+#define	MSM_BUS_SLAVE_MISC_XPU_CFG 595
+#define	MSM_BUS_SLAVE_VENUS_CFG 596
+#define	MSM_BUS_SLAVE_MISC_VENUS_CFG 597
+#define	MSM_BUS_SLAVE_GRAPHICS_3D_CFG 598
+#define	MSM_BUS_SLAVE_MMSS_CLK_CFG 599
+#define	MSM_BUS_SLAVE_MMSS_CLK_XPU_CFG 600
+#define	MSM_BUS_SLAVE_MNOC_MPU_CFG 601
+#define	MSM_BUS_SLAVE_ONOC_MPU_CFG 602
+#define	MSM_BUS_SLAVE_SERVICE_MNOC 603
+#define	MSM_BUS_SLAVE_OCMEM 604
+#define	MSM_BUS_SLAVE_SERVICE_ONOC 605
+#define	MSM_BUS_SLAVE_SDCC_1 606
+#define	MSM_BUS_SLAVE_SDCC_3 607
+#define	MSM_BUS_SLAVE_SDCC_2 608
+#define	MSM_BUS_SLAVE_SDCC_4 609
+#define	MSM_BUS_SLAVE_BAM_DMA 610
+#define	MSM_BUS_SLAVE_BLSP_2 611
+#define	MSM_BUS_SLAVE_USB_HSIC 612
+#define	MSM_BUS_SLAVE_BLSP_1 613
+#define	MSM_BUS_SLAVE_USB_HS 614
+#define	MSM_BUS_SLAVE_PDM 615
+#define	MSM_BUS_SLAVE_PERIPH_APU_CFG 616
+#define	MSM_BUS_SLAVE_PNOC_MPU_CFG 617
+#define	MSM_BUS_SLAVE_PRNG 618
+#define	MSM_BUS_SLAVE_SERVICE_PNOC 619
+#define	MSM_BUS_SLAVE_CLK_CTL 620
+#define	MSM_BUS_SLAVE_CNOC_MSS 621
+#define	MSM_BUS_SLAVE_SECURITY 622
+#define	MSM_BUS_SLAVE_TCSR 623
+#define	MSM_BUS_SLAVE_TLMM 624
+#define	MSM_BUS_SLAVE_CRYPTO_0_CFG 625
+#define	MSM_BUS_SLAVE_CRYPTO_1_CFG 626
+#define	MSM_BUS_SLAVE_IMEM_CFG 627
+#define	MSM_BUS_SLAVE_MESSAGE_RAM 628
+#define	MSM_BUS_SLAVE_BIMC_CFG 629
+#define	MSM_BUS_SLAVE_BOOT_ROM 630
+#define	MSM_BUS_SLAVE_CNOC_MNOC_MMSS_CFG 631
+#define	MSM_BUS_SLAVE_PMIC_ARB 632
+#define	MSM_BUS_SLAVE_SPDM_WRAPPER 633
+#define	MSM_BUS_SLAVE_DEHR_CFG 634
+#define	MSM_BUS_SLAVE_QDSS_CFG 635
+#define	MSM_BUS_SLAVE_RBCPR_CFG 636
+#define	MSM_BUS_SLAVE_RBCPR_QDSS_APU_CFG 637
+#define	MSM_BUS_SLAVE_SNOC_MPU_CFG 638
+#define	MSM_BUS_SLAVE_CNOC_ONOC_CFG 639
+#define	MSM_BUS_SLAVE_CNOC_MNOC_CFG 640
+#define	MSM_BUS_SLAVE_PNOC_CFG 641
+#define	MSM_BUS_SLAVE_SNOC_CFG 642
+#define	MSM_BUS_SLAVE_EBI1_DLL_CFG 643
+#define	MSM_BUS_SLAVE_PHY_APU_CFG 644
+#define	MSM_BUS_SLAVE_EBI1_PHY_CFG 645
+#define	MSM_BUS_SLAVE_SERVICE_CNOC 646
+#define	MSM_BUS_SLAVE_IPS_CFG 647
+#define	MSM_BUS_SLAVE_QPIC 648
+#define	MSM_BUS_SLAVE_DSI_CFG 649
+#define	MSM_BUS_SLAVE_UFS_CFG 650
+#define	MSM_BUS_SLAVE_RBCPR_CX_CFG 651
+#define	MSM_BUS_SLAVE_RBCPR_MX_CFG 652
+#define	MSM_BUS_SLAVE_PCIE_CFG 653
+#define	MSM_BUS_SLAVE_USB_PHYS_CFG 654
+#define	MSM_BUS_SLAVE_VIDEO_CAP_CFG 655
+#define	MSM_BUS_SLAVE_AVSYNC_CFG 656
+#define	MSM_BUS_SLAVE_CRYPTO_2_CFG 657
+#define	MSM_BUS_SLAVE_VPU_CFG 658
+#define	MSM_BUS_SLAVE_BCAST_CFG 659
+#define	MSM_BUS_SLAVE_KLM_CFG 660
+#define	MSM_BUS_SLAVE_GENI_IR_CFG 661
+#define	MSM_BUS_SLAVE_OCMEM_GFX 662
+#define	MSM_BUS_SLAVE_CATS_128 663
+#define	MSM_BUS_SLAVE_OCMEM_64 664
+#define MSM_BUS_SLAVE_PCIE_0 665
+#define MSM_BUS_SLAVE_PCIE_1 666
+#define	MSM_BUS_SLAVE_PCIE_0_CFG 667
+#define	MSM_BUS_SLAVE_PCIE_1_CFG 668
+#define	MSM_BUS_SLAVE_SRVC_MNOC 669
+#define	MSM_BUS_SLAVE_USB_HS2 670
+#define	MSM_BUS_SLAVE_AUDIO	671
+#define	MSM_BUS_SLAVE_TCU	672
+#define	MSM_BUS_SLAVE_APPSS	673
+#define	MSM_BUS_SLAVE_PCIE_PARF	674
+#define	MSM_BUS_SLAVE_USB3_PHY_CFG	675
+#define	MSM_BUS_SLAVE_IPA_CFG	676
+#define	MSM_BUS_SLAVE_A0NOC_SNOC 677
+#define	MSM_BUS_SLAVE_A1NOC_SNOC 678
+#define	MSM_BUS_SLAVE_A2NOC_SNOC 679
+#define	MSM_BUS_SLAVE_HMSS_L3 680
+#define	MSM_BUS_SLAVE_PIMEM_CFG 681
+#define	MSM_BUS_SLAVE_DCC_CFG 682
+#define	MSM_BUS_SLAVE_QDSS_RBCPR_APU_CFG 683
+#define	MSM_BUS_SLAVE_PCIE_2_CFG 684
+#define	MSM_BUS_SLAVE_PCIE20_AHB2PHY 685
+#define	MSM_BUS_SLAVE_A0NOC_CFG 686
+#define	MSM_BUS_SLAVE_A1NOC_CFG 687
+#define	MSM_BUS_SLAVE_A2NOC_CFG 688
+#define	MSM_BUS_SLAVE_A1NOC_MPU_CFG 689
+#define	MSM_BUS_SLAVE_A2NOC_MPU_CFG 690
+#define	MSM_BUS_SLAVE_A0NOC_SMMU_CFG 691
+#define	MSM_BUS_SLAVE_A1NOC_SMMU_CFG 692
+#define	MSM_BUS_SLAVE_A2NOC_SMMU_CFG 693
+#define	MSM_BUS_SLAVE_LPASS_SMMU_CFG 694
+#define	MSM_BUS_SLAVE_MMAGIC_CFG 695
+#define	MSM_BUS_SLAVE_VENUS_THROTTLE_CFG 696
+#define	MSM_BUS_SLAVE_SSC_CFG 697
+#define	MSM_BUS_SLAVE_DSA_CFG 698
+#define	MSM_BUS_SLAVE_DSA_MPU_CFG 699
+#define	MSM_BUS_SLAVE_DISPLAY_THROTTLE_CFG 700
+#define	MSM_BUS_SLAVE_SMMU_CPP_CFG 701
+#define	MSM_BUS_SLAVE_SMMU_JPEG_CFG 702
+#define	MSM_BUS_SLAVE_SMMU_MDP_CFG 703
+#define	MSM_BUS_SLAVE_SMMU_ROTATOR_CFG 704
+#define	MSM_BUS_SLAVE_SMMU_VENUS_CFG 705
+#define	MSM_BUS_SLAVE_SMMU_VFE_CFG 706
+#define	MSM_BUS_SLAVE_A0NOC_MPU_CFG 707
+#define	MSM_BUS_SLAVE_VMEM_CFG 708
+#define	MSM_BUS_SLAVE_CAMERA_THROTTLE_CFG 700
+#define	MSM_BUS_SLAVE_VMEM 709
+#define	MSM_BUS_SLAVE_AHB2PHY 710
+#define	MSM_BUS_SLAVE_PIMEM 711
+#define	MSM_BUS_SLAVE_SNOC_VMEM 712
+#define	MSM_BUS_SLAVE_PCIE_2 713
+#define	MSM_BUS_SLAVE_RBCPR_MX 714
+#define	MSM_BUS_SLAVE_RBCPR_CX 715
+#define	MSM_BUS_SLAVE_PRNG_APU_CFG 716
+#define	MSM_BUS_SLAVE_PERIPH_MPU_CFG 717
+#define	MSM_BUS_SLAVE_GCNT 718
+#define	MSM_BUS_SLAVE_ADSS_CFG 719
+#define	MSM_BUS_SLAVE_ADSS_VMIDMT_CFG 720
+#define	MSM_BUS_SLAVE_QHSS_APU_CFG 721
+#define	MSM_BUS_SLAVE_MDIO 722
+#define	MSM_BUS_SLAVE_FEPHY_CFG 723
+#define	MSM_BUS_SLAVE_SRIF 724
+#define	MSM_BUS_SLAVE_LAST 730
+#define	MSM_BUS_SLAVE_DDRC_CFG 731
+#define	MSM_BUS_SLAVE_DDRC_APU_CFG 732
+#define	MSM_BUS_SLAVE_MPU0_CFG 733
+#define	MSM_BUS_SLAVE_MPU1_CFG 734
+#define	MSM_BUS_SLAVE_MPU2_CFG 734
+#define	MSM_BUS_SLAVE_ESS_VMIDMT_CFG 735
+#define	MSM_BUS_SLAVE_ESS_APU_CFG 736
+#define	MSM_BUS_SLAVE_USB2_CFG 737
+#define	MSM_BUS_SLAVE_BLSP_CFG 738
+#define	MSM_BUS_SLAVE_QPIC_CFG 739
+#define	MSM_BUS_SLAVE_SDCC_CFG 740
+#define	MSM_BUS_SLAVE_WSS0_VMIDMT_CFG 741
+#define	MSM_BUS_SLAVE_WSS0_APU_CFG 742
+#define	MSM_BUS_SLAVE_WSS1_VMIDMT_CFG 743
+#define	MSM_BUS_SLAVE_WSS1_APU_CFG 744
+#define	MSM_BUS_SLAVE_SRVC_PCNOC 745
+#define	MSM_BUS_SLAVE_SNOC_DDRC 746
+#define	MSM_BUS_SLAVE_A7SS 747
+#define	MSM_BUS_SLAVE_WSS0_CFG 748
+#define	MSM_BUS_SLAVE_WSS1_CFG 749
+#define	MSM_BUS_SLAVE_PCIE 750
+#define	MSM_BUS_SLAVE_USB3_CFG 751
+#define	MSM_BUS_SLAVE_CRYPTO_CFG 752
+#define	MSM_BUS_SLAVE_ESS_CFG 753
+#define	MSM_BUS_SLAVE_SRVC_SNOC 754
+
+#define	MSM_BUS_SYSTEM_FPB_SLAVE_SYSTEM  MSM_BUS_SYSTEM_SLAVE_SYSTEM_FPB
+#define MSM_BUS_CPSS_FPB_SLAVE_SYSTEM MSM_BUS_SYSTEM_SLAVE_CPSS_FPB
+
+/*
+ * ID's used in RPM messages
+ */
+#define ICBID_MASTER_APPSS_PROC 0
+#define ICBID_MASTER_MSS_PROC 1
+#define ICBID_MASTER_MNOC_BIMC 2
+#define ICBID_MASTER_SNOC_BIMC 3
+#define ICBID_MASTER_SNOC_BIMC_0 ICBID_MASTER_SNOC_BIMC
+#define ICBID_MASTER_CNOC_MNOC_MMSS_CFG 4
+#define ICBID_MASTER_CNOC_MNOC_CFG 5
+#define ICBID_MASTER_GFX3D 6
+#define ICBID_MASTER_JPEG 7
+#define ICBID_MASTER_MDP 8
+#define ICBID_MASTER_MDP0 ICBID_MASTER_MDP
+#define ICBID_MASTER_MDPS ICBID_MASTER_MDP
+#define ICBID_MASTER_VIDEO 9
+#define ICBID_MASTER_VIDEO_P0 ICBID_MASTER_VIDEO
+#define ICBID_MASTER_VIDEO_P1 10
+#define ICBID_MASTER_VFE 11
+#define ICBID_MASTER_CNOC_ONOC_CFG 12
+#define ICBID_MASTER_JPEG_OCMEM 13
+#define ICBID_MASTER_MDP_OCMEM 14
+#define ICBID_MASTER_VIDEO_P0_OCMEM 15
+#define ICBID_MASTER_VIDEO_P1_OCMEM 16
+#define ICBID_MASTER_VFE_OCMEM 17
+#define ICBID_MASTER_LPASS_AHB 18
+#define ICBID_MASTER_QDSS_BAM 19
+#define ICBID_MASTER_SNOC_CFG 20
+#define ICBID_MASTER_BIMC_SNOC 21
+#define ICBID_MASTER_CNOC_SNOC 22
+#define ICBID_MASTER_CRYPTO 23
+#define ICBID_MASTER_CRYPTO_CORE0 ICBID_MASTER_CRYPTO
+#define ICBID_MASTER_CRYPTO_CORE1 24
+#define ICBID_MASTER_LPASS_PROC 25
+#define ICBID_MASTER_MSS 26
+#define ICBID_MASTER_MSS_NAV 27
+#define ICBID_MASTER_OCMEM_DMA 28
+#define ICBID_MASTER_PNOC_SNOC 29
+#define ICBID_MASTER_WCSS 30
+#define ICBID_MASTER_QDSS_ETR 31
+#define ICBID_MASTER_USB3 32
+#define ICBID_MASTER_USB3_0 ICBID_MASTER_USB3
+#define ICBID_MASTER_SDCC_1 33
+#define ICBID_MASTER_SDCC_3 34
+#define ICBID_MASTER_SDCC_2 35
+#define ICBID_MASTER_SDCC_4 36
+#define ICBID_MASTER_TSIF 37
+#define ICBID_MASTER_BAM_DMA 38
+#define ICBID_MASTER_BLSP_2 39
+#define ICBID_MASTER_USB_HSIC 40
+#define ICBID_MASTER_BLSP_1 41
+#define ICBID_MASTER_USB_HS 42
+#define ICBID_MASTER_USB_HS1 ICBID_MASTER_USB_HS
+#define ICBID_MASTER_PNOC_CFG 43
+#define ICBID_MASTER_SNOC_PNOC 44
+#define ICBID_MASTER_RPM_INST 45
+#define ICBID_MASTER_RPM_DATA 46
+#define ICBID_MASTER_RPM_SYS 47
+#define ICBID_MASTER_DEHR 48
+#define ICBID_MASTER_QDSS_DAP 49
+#define ICBID_MASTER_SPDM 50
+#define ICBID_MASTER_TIC 51
+#define ICBID_MASTER_SNOC_CNOC 52
+#define ICBID_MASTER_GFX3D_OCMEM 53
+#define ICBID_MASTER_GFX3D_GMEM ICBID_MASTER_GFX3D_OCMEM
+#define ICBID_MASTER_OVIRT_SNOC 54
+#define ICBID_MASTER_SNOC_OVIRT 55
+#define ICBID_MASTER_SNOC_GVIRT ICBID_MASTER_SNOC_OVIRT
+#define ICBID_MASTER_ONOC_OVIRT 56
+#define ICBID_MASTER_USB_HS2 57
+#define ICBID_MASTER_QPIC 58
+#define ICBID_MASTER_IPA 59
+#define ICBID_MASTER_DSI 60
+#define ICBID_MASTER_MDP1 61
+#define ICBID_MASTER_MDPE ICBID_MASTER_MDP1
+#define ICBID_MASTER_VPU_PROC 62
+#define ICBID_MASTER_VPU 63
+#define ICBID_MASTER_VPU0 ICBID_MASTER_VPU
+#define ICBID_MASTER_CRYPTO_CORE2 64
+#define ICBID_MASTER_PCIE_0 65
+#define ICBID_MASTER_PCIE_1 66
+#define ICBID_MASTER_SATA 67
+#define ICBID_MASTER_UFS 68
+#define ICBID_MASTER_USB3_1 69
+#define ICBID_MASTER_VIDEO_OCMEM 70
+#define ICBID_MASTER_VPU1 71
+#define ICBID_MASTER_VCAP 72
+#define ICBID_MASTER_EMAC 73
+#define ICBID_MASTER_BCAST 74
+#define ICBID_MASTER_MMSS_PROC 75
+#define ICBID_MASTER_SNOC_BIMC_1 76
+#define ICBID_MASTER_SNOC_PCNOC 77
+#define ICBID_MASTER_AUDIO 78
+#define ICBID_MASTER_MM_INT_0 79
+#define ICBID_MASTER_MM_INT_1 80
+#define ICBID_MASTER_MM_INT_2 81
+#define ICBID_MASTER_MM_INT_BIMC 82
+#define ICBID_MASTER_MSS_INT 83
+#define ICBID_MASTER_PCNOC_CFG 84
+#define ICBID_MASTER_PCNOC_INT_0 85
+#define ICBID_MASTER_PCNOC_INT_1 86
+#define ICBID_MASTER_PCNOC_M_0 87
+#define ICBID_MASTER_PCNOC_M_1 88
+#define ICBID_MASTER_PCNOC_S_0 89
+#define ICBID_MASTER_PCNOC_S_1 90
+#define ICBID_MASTER_PCNOC_S_2 91
+#define ICBID_MASTER_PCNOC_S_3 92
+#define ICBID_MASTER_PCNOC_S_4 93
+#define ICBID_MASTER_PCNOC_S_6 94
+#define ICBID_MASTER_PCNOC_S_7 95
+#define ICBID_MASTER_PCNOC_S_8 96
+#define ICBID_MASTER_PCNOC_S_9 97
+#define ICBID_MASTER_QDSS_INT 98
+#define ICBID_MASTER_SNOC_INT_0 99
+#define ICBID_MASTER_SNOC_INT_1 100
+#define ICBID_MASTER_SNOC_INT_BIMC 101
+#define ICBID_MASTER_TCU_0 102
+#define ICBID_MASTER_TCU_1 103
+#define ICBID_MASTER_BIMC_INT_0 104
+#define ICBID_MASTER_BIMC_INT_1 105
+#define ICBID_MASTER_CAMERA 106
+#define ICBID_MASTER_RICA 107
+#define ICBID_MASTER_PCNOC_S_5	129
+#define ICBID_MASTER_PCNOC_INT_2	124
+#define ICBID_MASTER_PCNOC_INT_3	125
+#define ICBID_MASTER_PCNOC_INT_4	126
+#define ICBID_MASTER_PCNOC_INT_5	127
+#define ICBID_MASTER_PCNOC_INT_6	128
+#define ICBID_MASTER_PCIE_2 119
+#define ICBID_MASTER_MASTER_CNOC_A1NOC 116
+#define ICBID_MASTER_A0NOC_SNOC 110
+#define ICBID_MASTER_A1NOC_SNOC 111
+#define ICBID_MASTER_A2NOC_SNOC 112
+#define ICBID_MASTER_PNOC_A1NOC 117
+#define ICBID_MASTER_ROTATOR 120
+#define ICBID_MASTER_SNOC_VMEM 114
+#define ICBID_MASTER_VENUS_VMEM 121
+#define ICBID_MASTER_HMSS 118
+#define ICBID_MASTER_BIMC_SNOC_1 109
+#define ICBID_MASTER_CNOC_A1NOC 116
+#define ICBID_MASTER_CPP 115
+#define ICBID_MASTER_BLSP_BAM 130
+#define ICBID_MASTER_USB2_BAM 131
+#define ICBID_MASTER_ADSS_DMA0 132
+#define ICBID_MASTER_ADSS_DMA1 133
+#define ICBID_MASTER_ADSS_DMA2 134
+#define ICBID_MASTER_ADSS_DMA3 135
+#define ICBID_MASTER_QPIC_BAM 136
+#define ICBID_MASTER_SDCC_BAM 137
+#define ICBID_MASTER_DDRC_SNOC 138
+#define ICBID_MASTER_WSS_0 139
+#define ICBID_MASTER_WSS_1 140
+#define ICBID_MASTER_ESS 141
+#define ICBID_MASTER_PCIE 142
+#define ICBID_MASTER_QDSS_BAMNDP 143
+#define ICBID_MASTER_QDSS_SNOC_CFG 144
+
+#define ICBID_SLAVE_EBI1 0
+#define ICBID_SLAVE_APPSS_L2 1
+#define ICBID_SLAVE_BIMC_SNOC 2
+#define ICBID_SLAVE_CAMERA_CFG 3
+#define ICBID_SLAVE_DISPLAY_CFG 4
+#define ICBID_SLAVE_OCMEM_CFG 5
+#define ICBID_SLAVE_CPR_CFG 6
+#define ICBID_SLAVE_CPR_XPU_CFG 7
+#define ICBID_SLAVE_MISC_CFG 8
+#define ICBID_SLAVE_MISC_XPU_CFG 9
+#define ICBID_SLAVE_VENUS_CFG 10
+#define ICBID_SLAVE_GFX3D_CFG 11
+#define ICBID_SLAVE_MMSS_CLK_CFG 12
+#define ICBID_SLAVE_MMSS_CLK_XPU_CFG 13
+#define ICBID_SLAVE_MNOC_MPU_CFG 14
+#define ICBID_SLAVE_ONOC_MPU_CFG 15
+#define ICBID_SLAVE_MNOC_BIMC 16
+#define ICBID_SLAVE_SERVICE_MNOC 17
+#define ICBID_SLAVE_OCMEM 18
+#define ICBID_SLAVE_GMEM ICBID_SLAVE_OCMEM
+#define ICBID_SLAVE_SERVICE_ONOC 19
+#define ICBID_SLAVE_APPSS 20
+#define ICBID_SLAVE_LPASS 21
+#define ICBID_SLAVE_USB3 22
+#define ICBID_SLAVE_USB3_0 ICBID_SLAVE_USB3
+#define ICBID_SLAVE_WCSS 23
+#define ICBID_SLAVE_SNOC_BIMC 24
+#define ICBID_SLAVE_SNOC_BIMC_0 ICBID_SLAVE_SNOC_BIMC
+#define ICBID_SLAVE_SNOC_CNOC 25
+#define ICBID_SLAVE_IMEM 26
+#define ICBID_SLAVE_OCIMEM ICBID_SLAVE_IMEM
+#define ICBID_SLAVE_SNOC_OVIRT 27
+#define ICBID_SLAVE_SNOC_GVIRT ICBID_SLAVE_SNOC_OVIRT
+#define ICBID_SLAVE_SNOC_PNOC 28
+#define ICBID_SLAVE_SNOC_PCNOC ICBID_SLAVE_SNOC_PNOC
+#define ICBID_SLAVE_SERVICE_SNOC 29
+#define ICBID_SLAVE_QDSS_STM 30
+#define ICBID_SLAVE_SDCC_1 31
+#define ICBID_SLAVE_SDCC_3 32
+#define ICBID_SLAVE_SDCC_2 33
+#define ICBID_SLAVE_SDCC_4 34
+#define ICBID_SLAVE_TSIF 35
+#define ICBID_SLAVE_BAM_DMA 36
+#define ICBID_SLAVE_BLSP_2 37
+#define ICBID_SLAVE_USB_HSIC 38
+#define ICBID_SLAVE_BLSP_1 39
+#define ICBID_SLAVE_USB_HS 40
+#define ICBID_SLAVE_USB_HS1 ICBID_SLAVE_USB_HS
+#define ICBID_SLAVE_PDM 41
+#define ICBID_SLAVE_PERIPH_APU_CFG 42
+#define ICBID_SLAVE_PNOC_MPU_CFG 43
+#define ICBID_SLAVE_PRNG 44
+#define ICBID_SLAVE_PNOC_SNOC 45
+#define ICBID_SLAVE_PCNOC_SNOC ICBID_SLAVE_PNOC_SNOC
+#define ICBID_SLAVE_SERVICE_PNOC 46
+#define ICBID_SLAVE_CLK_CTL 47
+#define ICBID_SLAVE_CNOC_MSS 48
+#define ICBID_SLAVE_PCNOC_MSS ICBID_SLAVE_CNOC_MSS
+#define ICBID_SLAVE_SECURITY 49
+#define ICBID_SLAVE_TCSR 50
+#define ICBID_SLAVE_TLMM 51
+#define ICBID_SLAVE_CRYPTO_0_CFG 52
+#define ICBID_SLAVE_CRYPTO_1_CFG 53
+#define ICBID_SLAVE_IMEM_CFG 54
+#define ICBID_SLAVE_MESSAGE_RAM 55
+#define ICBID_SLAVE_BIMC_CFG 56
+#define ICBID_SLAVE_BOOT_ROM 57
+#define ICBID_SLAVE_CNOC_MNOC_MMSS_CFG 58
+#define ICBID_SLAVE_PMIC_ARB 59
+#define ICBID_SLAVE_SPDM_WRAPPER 60
+#define ICBID_SLAVE_DEHR_CFG 61
+#define ICBID_SLAVE_MPM 62
+#define ICBID_SLAVE_QDSS_CFG 63
+#define ICBID_SLAVE_RBCPR_CFG 64
+#define ICBID_SLAVE_RBCPR_CX_CFG ICBID_SLAVE_RBCPR_CFG
+#define ICBID_SLAVE_RBCPR_QDSS_APU_CFG 65
+#define ICBID_SLAVE_CNOC_MNOC_CFG 66
+#define ICBID_SLAVE_SNOC_MPU_CFG 67
+#define ICBID_SLAVE_CNOC_ONOC_CFG 68
+#define ICBID_SLAVE_PNOC_CFG 69
+#define ICBID_SLAVE_SNOC_CFG 70
+#define ICBID_SLAVE_EBI1_DLL_CFG 71
+#define ICBID_SLAVE_PHY_APU_CFG 72
+#define ICBID_SLAVE_EBI1_PHY_CFG 73
+#define ICBID_SLAVE_RPM 74
+#define ICBID_SLAVE_CNOC_SNOC 75
+#define ICBID_SLAVE_SERVICE_CNOC 76
+#define ICBID_SLAVE_OVIRT_SNOC 77
+#define ICBID_SLAVE_OVIRT_OCMEM 78
+#define ICBID_SLAVE_USB_HS2 79
+#define ICBID_SLAVE_QPIC 80
+#define ICBID_SLAVE_IPS_CFG 81
+#define ICBID_SLAVE_DSI_CFG 82
+#define ICBID_SLAVE_USB3_1 83
+#define ICBID_SLAVE_PCIE_0 84
+#define ICBID_SLAVE_PCIE_1 85
+#define ICBID_SLAVE_PSS_SMMU_CFG 86
+#define ICBID_SLAVE_CRYPTO_2_CFG 87
+#define ICBID_SLAVE_PCIE_0_CFG 88
+#define ICBID_SLAVE_PCIE_1_CFG 89
+#define ICBID_SLAVE_SATA_CFG 90
+#define ICBID_SLAVE_SPSS_GENI_IR 91
+#define ICBID_SLAVE_UFS_CFG 92
+#define ICBID_SLAVE_AVSYNC_CFG 93
+#define ICBID_SLAVE_VPU_CFG 94
+#define ICBID_SLAVE_USB_PHY_CFG 95
+#define ICBID_SLAVE_RBCPR_MX_CFG 96
+#define ICBID_SLAVE_PCIE_PARF 97
+#define ICBID_SLAVE_VCAP_CFG 98
+#define ICBID_SLAVE_EMAC_CFG 99
+#define ICBID_SLAVE_BCAST_CFG 100
+#define ICBID_SLAVE_KLM_CFG 101
+#define ICBID_SLAVE_DISPLAY_PWM 102
+#define ICBID_SLAVE_GENI 103
+#define ICBID_SLAVE_SNOC_BIMC_1 104
+#define ICBID_SLAVE_AUDIO 105
+#define ICBID_SLAVE_CATS_0 106
+#define ICBID_SLAVE_CATS_1 107
+#define ICBID_SLAVE_MM_INT_0 108
+#define ICBID_SLAVE_MM_INT_1 109
+#define ICBID_SLAVE_MM_INT_2 110
+#define ICBID_SLAVE_MM_INT_BIMC 111
+#define ICBID_SLAVE_MMU_MODEM_XPU_CFG 112
+#define ICBID_SLAVE_MSS_INT 113
+#define ICBID_SLAVE_PCNOC_INT_0 114
+#define ICBID_SLAVE_PCNOC_INT_1 115
+#define ICBID_SLAVE_PCNOC_M_0 116
+#define ICBID_SLAVE_PCNOC_M_1 117
+#define ICBID_SLAVE_PCNOC_S_0 118
+#define ICBID_SLAVE_PCNOC_S_1 119
+#define ICBID_SLAVE_PCNOC_S_2 120
+#define ICBID_SLAVE_PCNOC_S_3 121
+#define ICBID_SLAVE_PCNOC_S_4 122
+#define ICBID_SLAVE_PCNOC_S_6 123
+#define ICBID_SLAVE_PCNOC_S_7 124
+#define ICBID_SLAVE_PCNOC_S_8 125
+#define ICBID_SLAVE_PCNOC_S_9 126
+#define ICBID_SLAVE_PRNG_XPU_CFG 127
+#define ICBID_SLAVE_QDSS_INT 128
+#define ICBID_SLAVE_RPM_XPU_CFG 129
+#define ICBID_SLAVE_SNOC_INT_0 130
+#define ICBID_SLAVE_SNOC_INT_1 131
+#define ICBID_SLAVE_SNOC_INT_BIMC 132
+#define ICBID_SLAVE_TCU 133
+#define ICBID_SLAVE_BIMC_INT_0 134
+#define ICBID_SLAVE_BIMC_INT_1 135
+#define ICBID_SLAVE_RICA_CFG 136
+#define ICBID_SLAVE_PCNOC_S_5	189
+#define ICBID_SLAVE_PCNOC_S_7 124
+#define ICBID_SLAVE_PCNOC_INT_2 184
+#define ICBID_SLAVE_PCNOC_INT_3 185
+#define ICBID_SLAVE_PCNOC_INT_4 186
+#define ICBID_SLAVE_PCNOC_INT_5 187
+#define ICBID_SLAVE_PCNOC_INT_6 188
+#define ICBID_SLAVE_USB3_PHY_CFG 182
+#define ICBID_SLAVE_IPA_CFG 183
+
+#define ICBID_SLAVE_A0NOC_SNOC 141
+#define ICBID_SLAVE_A1NOC_SNOC 142
+#define ICBID_SLAVE_A2NOC_SNOC 143
+#define ICBID_SLAVE_BIMC_SNOC_1 138
+#define ICBID_SLAVE_PIMEM 167
+#define ICBID_SLAVE_PIMEM_CFG 168
+#define ICBID_SLAVE_DCC_CFG 155
+#define ICBID_SLAVE_QDSS_RBCPR_APU_CFG 168
+#define ICBID_SLAVE_A0NOC_CFG 144
+#define ICBID_SLAVE_PCIE_2_CFG 165
+#define ICBID_SLAVE_PCIE20_AHB2PHY 163
+#define ICBID_SLAVE_PCIE_2 164
+#define ICBID_SLAVE_A1NOC_CFG 147
+#define ICBID_SLAVE_A1NOC_MPU_CFG 148
+#define ICBID_SLAVE_A1NOC_SMMU_CFG 149
+#define ICBID_SLAVE_A2NOC_CFG 150
+#define ICBID_SLAVE_A2NOC_MPU_CFG 151
+#define ICBID_SLAVE_A2NOC_SMMU_CFG 152
+#define ICBID_SLAVE_AHB2PHY 153
+#define ICBID_SLAVE_HMSS_L3 161
+#define ICBID_SLAVE_LPASS_SMMU_CFG 161
+#define ICBID_SLAVE_MMAGIC_CFG 162
+#define ICBID_SLAVE_SSC_CFG 177
+#define ICBID_SLAVE_VENUS_THROTTLE_CFG 178
+#define ICBID_SLAVE_DISPLAY_THROTTLE_CFG 156
+#define ICBID_SLAVE_CAMERA_THROTTLE_CFG 154
+#define ICBID_SLAVE_DSA_CFG 157
+#define ICBID_SLAVE_DSA_MPU_CFG 158
+#define ICBID_SLAVE_SMMU_CPP_CFG 171
+#define ICBID_SLAVE_SMMU_JPEG_CFG 172
+#define ICBID_SLAVE_SMMU_MDP_CFG 173
+#define ICBID_SLAVE_SMMU_ROTATOR_CFG 174
+#define ICBID_SLAVE_SMMU_VENUS_CFG 175
+#define ICBID_SLAVE_SMMU_VFE_CFG 176
+#define ICBID_SLAVE_A0NOC_MPU_CFG 145
+#define ICBID_SLAVE_A0NOC_SMMU_CFG 146
+#define ICBID_SLAVE_VMEM_CFG 180
+#define ICBID_SLAVE_VMEM 179
+#define ICBID_SLAVE_PNOC_A1NOC 139
+#define ICBID_SLAVE_SNOC_VMEM 140
+#define ICBID_SLAVE_RBCPR_MX 170
+#define ICBID_SLAVE_RBCPR_CX 169
+#define ICBID_SLAVE_PRNG_APU_CFG 190
+#define ICBID_SLAVE_PERIPH_MPU_CFG 191
+#define ICBID_SLAVE_GCNT 192
+#define ICBID_SLAVE_ADSS_CFG 193
+#define ICBID_SLAVE_ADSS_APU 194
+#define ICBID_SLAVE_ADSS_VMIDMT_CFG 195
+#define ICBID_SLAVE_QHSS_APU_CFG 196
+#define ICBID_SLAVE_MDIO 197
+#define ICBID_SLAVE_FEPHY_CFG 198
+#define ICBID_SLAVE_SRIF 199
+#define ICBID_SLAVE_DDRC_CFG 200
+#define ICBID_SLAVE_DDRC_APU_CFG 201
+#define ICBID_SLAVE_DDRC_MPU0_CFG 202
+#define ICBID_SLAVE_DDRC_MPU1_CFG 203
+#define ICBID_SLAVE_DDRC_MPU2_CFG 210
+#define ICBID_SLAVE_ESS_VMIDMT_CFG 211
+#define ICBID_SLAVE_ESS_APU_CFG 212
+#define ICBID_SLAVE_USB2_CFG 213
+#define ICBID_SLAVE_BLSP_CFG 214
+#define ICBID_SLAVE_QPIC_CFG 215
+#define ICBID_SLAVE_SDCC_CFG 216
+#define ICBID_SLAVE_WSS0_VMIDMT_CFG 217
+#define ICBID_SLAVE_WSS0_APU_CFG 218
+#define ICBID_SLAVE_WSS1_VMIDMT_CFG 219
+#define ICBID_SLAVE_WSS1_APU_CFG 220
+#define ICBID_SLAVE_SRVC_PCNOC 221
+#define ICBID_SLAVE_SNOC_DDRC 222
+#define ICBID_SLAVE_A7SS 223
+#define ICBID_SLAVE_WSS0_CFG 224
+#define ICBID_SLAVE_WSS1_CFG 225
+#define ICBID_SLAVE_PCIE 226
+#define ICBID_SLAVE_USB3_CFG 227
+#define ICBID_SLAVE_CRYPTO_CFG 228
+#define ICBID_SLAVE_ESS_CFG 229
+#define ICBID_SLAVE_SRVC_SNOC 230
+#endif
diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index ed46bca649..a13a17b3cf 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -179,6 +179,20 @@ define Device/compex_wpj428
 endef
 TARGET_DEVICES += compex_wpj428
 
+define Device/compex_wpj419
+	$(call Device/FitImage)
+	$(call Device/UbiFit)
+	DEVICE_VENDOR := Compex
+	DEVICE_MODEL := WPJ419
+	DEVICE_DTS := qcom-ipq4019-wpj419
+	DEVICE_DTS_CONFIG := config@12
+	KERNEL_INSTALL := 1
+	BLOCKSIZE := 128k
+	PAGESIZE := 2048
+	FILESYSTEMS := squashfs
+endef
+TARGET_DEVICES += compex_wpj419
+
 define Device/engenius_eap1300
 	$(call Device/FitImage)
 	DEVICE_VENDOR := EnGenius
diff --git a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
index 28ab181e77..711b662690 100644
--- a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
@@ -12,7 +12,7 @@ diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
 index b5bd3de87..5a52a0b19 100644
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -785,11 +785,35 @@ dtb-$(CONFIG_ARCH_QCOM) += \
+@@ -785,11 +785,36 @@ dtb-$(CONFIG_ARCH_QCOM) += \
  	qcom-apq8074-dragonboard.dtb \
  	qcom-apq8084-ifc6540.dtb \
  	qcom-apq8084-mtp.dtb \
@@ -42,6 +42,7 @@ index b5bd3de87..5a52a0b19 100644
 +	qcom-ipq4019-qxwlan-e2600ac-c1.dtb \
 +	qcom-ipq4019-qxwlan-e2600ac-c2.dtb \
 +	qcom-ipq4019-unielec-u4019-32m.dtb \
++	qcom-ipq4019-wpj419.dtb \
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
