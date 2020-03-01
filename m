Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3516174D1E
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xOBu0esnT9OJhY2FekDO+AGIvSBWBISZr26t7iQ7QyY=; b=rE3C/9qrvcepfK
	c6+UILV+QKnugl8HOnFrMdlF+Uu+CAvXWsHjHFnK+SJtfCcnZxE9WISuhnPrzQZKyEmRij8i3BCO6
	Ja7/GkZeQQknYPJT3BlUSTDyIde1gMhH6Q21POho+hSjex6Sr8Q48KLPDMZkTR7bopMs8zLHncBHS
	K9Pf+EzNzO3VU+fzgpXhGAtWQW0oNt3WSHbAGuZvAzmqPk9Pu/PeLGpmffxljEKaVdemehecfGU/L
	TDoqRF2ulQUtkUXzHZ5iLG65upeg8bxv7ZdD7j5e9siif2taHUEEfBxmvupmg0eu99Hilz2BvKQEH
	wGnN99K1Td76i54+LVPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NSZ-0006KT-CN; Sun, 01 Mar 2020 12:12:39 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NSO-0006JM-E7
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:12:32 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 48Vhwm2nxhzQl9x;
 Sun,  1 Mar 2020 13:12:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id G1HwlXHnZ7GF; Sun,  1 Mar 2020 13:12:20 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Mar 2020 13:11:45 +0100
Message-Id: <20200301121157.5339-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_041228_944628_E5D66970 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 00/12] targets: Remove kernel 4.14 support
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This removed the kernel 4.14 support for multiple targets which were 
early switched to kernel 4.19. This should reduce the maintenance 
efforts especially after or when we add kernel 5.4 support for these 
targets. Some of these targets do not even compile against 4.14 any 
more.

Hauke Mehrtens (12):
  armvirt: Remove kernel 4.14 support
  ath79: Remove kernel 4.14 support
  gemini: Remove kernel 4.14 support
  imx6: Remove kernel 4.14 support
  ipq40xx: Remove kernel 4.14 support
  malta: Remove kernel 4.14 support
  mpc85xx: Remove kernel 4.14 support
  mvebu: Remove kernel 4.14 support
  octeon: Remove kernel 4.14 support
  sunxi: Remove kernel 4.14 support
  tegra: Remove kernel 4.14 support
  x86: Remove kernel 4.14 support

 target/linux/armvirt/32/config-4.14           |  121 -
 target/linux/armvirt/64/config-4.14           |  179 -
 target/linux/armvirt/config-4.14              |  181 -
 target/linux/ath79/config-4.14                |  242 -
 ...-serial-drop-QCA-pecific-SoC-symbols.patch |   21 -
 ...2-watchdog-ath79-fix-maximum-timeout.patch |   32 -
 ...ds-add-reset-controller-based-driver.patch |  186 -
 .../0004-phy-add-ath79-usb-phys.patch         |  320 --
 ...005-usb-add-more-OF-quirk-properties.patch |   24 -
 .../0006-usb-drop-deprecated-symbols.patch    |   51 -
 ...9-intc-add-irq-cascade-driver-for-QC.patch |  168 -
 ...ip-irq-ath79-cpu-drop-OF-init-helper.patch |   23 -
 ...-ath79-add-lots-of-missing-registers.patch |  980 ----
 ...d-support-for-QCA953x-QCA956x-TP9343.patch |  400 --
 ...S-ath79-select-the-PINCTRL-subsystem.patch |   24 -
 ...14-MIPS-ath79-finetune-cpu-overrides.patch |   42 -
 ...ath79-enable-uart-during-early_prink.patch |   75 -
 ...h79-get-PCIe-controller-out-of-reset.patch |  101 -
 ...ngs-PCI-qcom-ar7100-adds-binding-doc.patch |   57 -
 .../0018-MIPS-pci-ar71xx-convert-to-OF.patch  |  202 -
 ...ngs-PCI-qcom-ar7240-adds-binding-doc.patch |   61 -
 .../0020-MIPS-pci-ar724x-convert-to-OF.patch  |  205 -
 ...elpers-for-setting-clocks-and-expose.patch |  243 -
 ...legacy-wdt-and-uart-clock-aliases-ou.patch |  114 -
 ...ass-PLL-base-to-clock-init-functions.patch |  242 -
 ...specifying-the-reference-clock-in-DT.patch |  229 -
 ...rt-setting-up-clock-via-DT-on-all-So.patch |   77 -
 ...9-export-switch-MDIO-reference-clock.patch |   59 -
 ...0027-MIPS-ath79-drop-legacy-IRQ-code.patch |  233 -
 .../0028-MIPS-ath79-drop-machfiles.patch      | 1042 ----
 ...0029-MIPS-ath79-drop-legacy-pci-code.patch |  379 --
 ...op-platform-device-registration-code.patch |  933 ----
 .../0031-MIPS-ath79-drop-OF-clock-code.patch  |   95 -
 .../0032-MIPS-ath79-sanitize-symbols.patch    |   93 -
 .../0033-spi-ath79-drop-pdata-support.patch   |   73 -
 .../0034-MIPS-ath79-ath9k-exports.patch       |   27 -
 .../0036-GPIO-add-named-gpio-exports.patch    |  165 -
 ...-MIPS-ath79-remove-irq-code-from-pci.patch |  139 -
 .../patches-4.14/0037-missing-registers.patch |   21 -
 ...9-add-missing-QCA955x-GMAC-registers.patch |   90 -
 .../0038-at803x-disable-delays.patch          |   27 -
 .../004-register_gpio_driver_earlier.patch    |   18 -
 .../404-mtd-cybertan-trx-parser.patch         |   19 -
 .../405-mtd-tp-link-partition-parser.patch    |   25 -
 .../408-mtd-redboot_partition_scan.patch      |   44 -
 .../420-net-ar71xx_mac_driver.patch           |   28 -
 ...425-at803x-allow-sgmii-aneg-override.patch |   16 -
 .../430-drivers-link-spi-before-mtd.patch     |   12 -
 .../461-spi-ath79-add-fast-flash-read.patch   |   60 -
 ...ath79-swizzle-pci-address-for-ar71xx.patch |   98 -
 .../900-mdio_bitbang_ignore_ta_value.patch    |   32 -
 ...-prevent-rescheduling-during-command.patch |   61 -
 .../910-unaligned_access_hacks.patch          |  900 ----
 target/linux/gemini/config-4.14               |  435 --
 .../0001-cache-patch-from-OpenWRT.patch       |   50 -
 ...pinctrl-gemini-Add-missing-functions.patch |   33 -
 ...ts-Add-TVE200-to-the-Gemini-SoC-DTSI.patch |   51 -
 ...d-skew-delay-pin-config-and-bindings.patch |   73 -
 ...pinctrl-gemini-Use-generic-DT-parser.patch |  112 -
 ...ni-Implement-clock-skew-delay-config.patch |  280 -
 .../0007-pinctrl-gemini-Fix-GMAC-groups.patch |  186 -
 ...-gemini-Fix-missing-pad-descriptions.patch |   27 -
 ...l-gemini-Add-two-missing-GPIO-groups.patch |   25 -
 ...ctrl-gemini-Fix-usage-of-3512-groups.patch |   25 -
 ...emini-Support-drive-strength-setting.patch |  198 -
 ...ernet-PHYs-to-the-a-bunch-of-Geminis.patch |   90 -
 ...-basic-devicetree-for-D-Link-DNS-313.patch |  272 -
 ...s-Flags-D-Link-DIR-685-I2C-bus-gpios.patch |   27 -
 ...ARM-dts-Add-PCI-to-WBD111-and-WBD222.patch |   74 -
 ...TVE-TVC-and-ILI9322-panel-to-DIR-685.patch |  113 -
 ...g-gemini-ftwdt010-rename-DT-bindings.patch |   88 -
 ...i-ftwdt010-rename-driver-and-symbols.patch |  527 --
 ...dog-ftwdt010-Make-interrupt-optional.patch |   93 -
 .../0020-soc-Add-SoC-driver-for-Gemini.patch  |  113 -
 ...-DT-bindings-for-the-Gemini-ethernet.patch |  119 -
 ...-a-driver-for-Gemini-gigabit-etherne.patch | 3661 -------------
 ...M-dts-Add-ethernet-to-the-Gemini-SoC.patch |   74 -
 .../0024-net-gemini-Depend-on-HAS_IOMEM.patch |   30 -
 ...Set-D-Link-DNS-313-SATA-to-muxmode-0.patch |   36 -
 ...ini-poweroff-Avoid-spurious-poweroff.patch |   80 -
 ...st-add-DT-bindings-for-faraday-fotg2.patch |   65 -
 ...b-host-fotg2-add-device-tree-probing.patch |   61 -
 ...ost-fotg2-add-silicon-clock-handling.patch |   99 -
 ...t-fotg2-add-Gemini-specific-handling.patch |  131 -
 ...s-Add-the-FOTG210-USB-host-to-Gemini.patch |  149 -
 ...x-bootargs-for-Gemini-D-Link-devices.patch |   38 -
 ...Add-ethernet-to-a-bunch-of-platforms.patch |  116 -
 ...-add-openwrt-partitions-for-nas4220b.patch |   17 -
 ...dts-gemini-fix-ethernet-for-nas4220b.patch |   69 -
 ...s-gemini-add-second-ata-for-nas4220b.patch |   13 -
 ...emini-disable-usb-port-1-until-fixed.patch |   11 -
 ...ix-uninitialized-struct-member-usage.patch |   23 -
 ...s-gemini-dlink-dir-685-add-rtl8366rb.patch |   82 -
 target/linux/imx6/config-4.14                 |  525 --
 .../imx6/patches-4.14/100-bootargs.patch      |   11 -
 .../imx6/patches-4.14/200-disable-msi.patch   |   18 -
 .../301-apalis-ixora-dts-leds.patch           |   86 -
 .../302-apalis-ixora-dts-reset-button.patch   |   76 -
 target/linux/ipq40xx/config-4.14              |  485 --
 .../arch/arm/boot/dts/qcom-ipq4018-a42.dts    |  215 -
 .../arm/boot/dts/qcom-ipq4018-ap120c-ac.dts   |  344 --
 .../arm/boot/dts/qcom-ipq4018-ea6350v3.dts    |  273 -
 .../arm/boot/dts/qcom-ipq4018-eap1300.dts     |  231 -
 .../arm/boot/dts/qcom-ipq4018-ens620ext.dts   |  261 -
 .../arm/boot/dts/qcom-ipq4018-ex6100v2.dts    |   33 -
 .../arm/boot/dts/qcom-ipq4018-ex6150v2.dts    |   33 -
 .../arm/boot/dts/qcom-ipq4018-ex61x0v2.dtsi   |  307 --
 .../boot/dts/qcom-ipq4018-fritzbox-4040.dts   |  289 --
 .../arm/boot/dts/qcom-ipq4018-jalapeno.dts    |  266 -
 .../arm/boot/dts/qcom-ipq4018-nbg6617.dts     |  335 --
 .../arm/boot/dts/qcom-ipq4018-rt-ac58u.dts    |  304 --
 .../arm/boot/dts/qcom-ipq4018-wre6606.dts     |  261 -
 .../arch/arm/boot/dts/qcom-ipq4019-a62.dts    |  239 -
 .../boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts    |   21 -
 .../arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi  |  177 -
 .../arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts  |   80 -
 .../arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts  |  115 -
 .../arm/boot/dts/qcom-ipq4019-e2600ac.dtsi    |  262 -
 .../arch/arm/boot/dts/qcom-ipq4019-ea8300.dts |  399 --
 .../boot/dts/qcom-ipq4019-fritzbox-7530.dts   |  299 --
 .../dts/qcom-ipq4019-fritzrepeater-1200.dts   |  262 -
 .../dts/qcom-ipq4019-fritzrepeater-3000.dts   |  260 -
 .../arm/boot/dts/qcom-ipq4019-map-ac2200.dts  |  306 --
 .../arch/arm/boot/dts/qcom-ipq4028-wpj428.dts |  268 -
 .../arm/boot/dts/qcom-ipq4029-gl-b1300.dts    |  278 -
 .../arch/arm/boot/dts/qcom-ipq4029-mr33.dts   |  394 --
 ...ndard-large-page-OOB-layout-when-usi.patch |   47 -
 ...ual-return-values-for-the-erase-hook.patch |   48 -
 ...am-Process-multiple-pending-descript.patch |  409 --
 ...d-command-elements-in-BAM-transactio.patch |   89 -
 ...pport-for-command-descriptor-formati.patch |  201 -
 ...-several-helpers-to-do-common-NAND-o.patch | 1586 ------
 ...rivers-to-explicitly-send-READ-PROG-.patch |   94 -
 .../070-qcom-spm-fix-probe-order.patch        |   26 -
 ...use-v2-of-the-kpss-bringup-mechanism.patch |  109 -
 ...-cpu-operating-points-for-cpufreq-su.patch |   89 -
 ...074-ARM-qcom-Add-IPQ4019-SoC-support.patch |   36 -
 ...qcom-ipq4019-usb-add-binding-documen.patch |   38 -
 ...4019-usb-add-driver-for-QCOM-IPQ4019.patch |  233 -
 ...com-ipq4019-add-USB-devicetree-nodes.patch |  123 -
 ...s-ipq4019-Add-a-few-peripheral-nodes.patch |  278 -
 .../079-ARM-dts-ipq4019-fix-PCI-range.patch   |   23 -
 ...msm-fix-gpio-hog-related-boot-issues.patch |   71 -
 .../081-clk-fix-apss-cpu-overclocking.patch   |  115 -
 ...019-Add-TZ-and-SMEM-reserved-regions.patch |   88 -
 ...nd-add-Winbond-manufacturer-and-chip.patch |   38 -
 ...ts-ipq4019-Add-a-default-chosen-node.patch |   45 -
 ...5-mtd-nand-add-macronix-mx35lf1ge4ab.patch |   13 -
 ...-qcom-ipq4019-enlarge-PCIe-BAR-range.patch |   42 -
 ...RM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch |   32 -
 ...rights-and-update-to-SPDX-identifier.patch |   36 -
 ...inor-code-reorganization-for-use_dma.patch |   76 -
 ...redundant-variables-for-BAM-SG-count.patch |  174 -
 ...-EOT-and-FLUSH-tags-at-the-end-of-tr.patch |  126 -
 ...transfer-length-for-BAM-RX-EOT-FLUSH.patch |   33 -
 ...rror-handling-for-i2c-error-in-BAM-m.patch |   90 -
 ...complete-transfer-length-to-choose-D.patch |   54 -
 ...ompletion-timeout-according-to-trans.patch |   61 -
 ...er-overflow-for-multiple-msg-of-maxi.patch |  311 --
 ...end-NACK-for-last-read-sub-transfers.patch |   43 -
 ...zation-of-driver-code-to-remove-poll.patch |  579 ---
 ...zation-of-driver-code-to-remove-poll.patch | 1154 -----
 ...90-ipq40xx-fix-high-resolution-timer.patch |   29 -
 ...add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch |   31 -
 ...or-enable-4B-opcodes-for-mx25l25635f.patch |   62 -
 .../700-net-add-qualcomm-mdio-and-phy.patch   | 2685 ----------
 .../701-dts-ipq4019-add-mdio-node.patch       |   52 -
 ...702-dts-ipq4019-add-PHY-switch-nodes.patch |   46 -
 ...4019-needs-rfs-vlan_tag-callbacks-in.patch |   53 -
 ...706-ar40xx-abort-probe-on-missig-phy.patch |   23 -
 ...add-qualcomm-essedma-ethernet-driver.patch | 4578 -----------------
 ...ts-ipq4019-add-ethernet-essedma-node.patch |   92 -
 .../patches-4.14/712-mr33-essedma.patch       |  340 --
 .../713-essedma-alloc-skb-ip-align.patch      |   21 -
 ...ssedma-add-fix-for-memory-allocation.patch |  197 -
 .../850-soc-add-qualcomm-syscon.patch         |  177 -
 .../900-dts-ipq4019-ap-dk01.1.patch           |  157 -
 .../901-arm-boot-add-dts-files.patch          |   44 -
 .../997-device_tree_cmdline.patch             |   12 -
 target/linux/malta/config-4.14                |  326 --
 target/linux/mpc85xx/config-4.14              |  365 --
 ...85xx-add-gpio-keys-to-of-match-table.patch |   10 -
 ...0-powerpc-85xx-tl-wdr4900-v1-support.patch |   82 -
 .../101-powerpc-85xx-hiveap-330-support.patch |   30 -
 .../102-powerpc-add-cmdline-override.patch    |   37 -
 .../103-powerpc-fix-build-cross32ar.patch     |   10 -
 ...change-P2020RDB-dts-file-for-OpenWRT.patch |  170 -
 .../105-powerpc-85xx-red-15w-rev1.patch       |   29 -
 .../106-powerpc-85xx-panda-support.patch      |   30 -
 target/linux/mvebu/config-4.14                |  498 --
 target/linux/mvebu/cortexa53/config-4.14      |  113 -
 target/linux/mvebu/cortexa72/config-4.14      |  121 -
 .../arm/boot/dts/armada-385-linksys-venom.dts |  207 -
 .../marvell/armada-3720-espressobin-emmc.dts  |   28 -
 .../armada-3720-espressobin-v7-emmc.dts       |   43 -
 .../marvell/armada-3720-espressobin-v7.dts    |   31 -
 .../patches-4.14/002-add_powertables.patch    |  770 ---
 .../patches-4.14/003-add_switch_nodes.patch   |   40 -
 .../004-add_sata_disk_activity_trigger.patch  |   39 -
 ...5-linksys_hardcode_nand_ecc_settings.patch |   17 -
 ...Mangle-bootloader-s-kernel-arguments.patch |  201 -
 .../patches-4.14/100-find_active_root.patch   |   60 -
 .../patches-4.14/102-revert_i2c_delay.patch   |   15 -
 .../103-remove-nand-driver-bug.patch          |   13 -
 ...04-linksys_mamba_disable_keep_config.patch |   10 -
 .../110-pxa3xxx_revert_irq_thread.patch       |   69 -
 .../205-armada-385-rd-mtd-partitions.patch    |   19 -
 .../206-ARM-mvebu-385-ap-Add-partitions.patch |   35 -
 .../210-clearfog_switch_node.patch            |   21 -
 .../220-disable-untested-dsa-boards.patch     |   30 -
 ...-armada-xp-linksys-mamba-broken-idle.patch |   10 -
 .../300-mvneta-tx-queue-workaround.patch      |   35 -
 ...dicate-failure-to-enter-deeper-sleep.patch |   40 -
 ...-pci-mvebu-time-out-reset-on-link-up.patch |   60 -
 ...2-sfp-display-SFP-module-information.patch |  290 --
 .../403-net-mvneta-convert-to-phylink.patch   |  979 ----
 ...04-net-mvneta-hack-fix-phy_interface.patch |   28 -
 ...le-MVNETA_CAUSE_PSC_SYNC_CHANGE-inte.patch |   56 -
 ...ta-add-module-EEPROM-reading-support.patch |   44 -
 ...ed-phy-remove-fixed_phy_update_state.patch |   80 -
 ...eeprom-ethtool-access-into-netdev-co.patch |  181 -
 ...fp-use-netdev-sfp_bus-for-start-stop.patch |   34 -
 ...w-marvell-10G-phy-support-to-use-SFP.patch |  132 -
 .../411-sfp-add-sfp-compatible.patch          |   24 -
 ...da388-clearfog-emmc-on-clearfog-base.patch |   87 -
 ...8-clearfog-increase-speed-of-i2c0-to.patch |   42 -
 ...a388-clearfog-add-SFP-module-support.patch |   81 -
 ...rmada388-clearfog-document-MPP-usage.patch |  124 -
 ...38x-add-support-for-trimming-the-RTC.patch |  143 -
 ...armada38x-reset-after-rtc-power-loss.patch |   73 -
 ...ada-385-linksys-Disable-internal-RTC.patch |   28 -
 .../patches-4.14/450-reprobe_sfp_phy.patch    |   94 -
 ...-SPI-mode-before-asserting-chip-sele.patch |   70 -
 ...s-marvell-armada-37xx-add-UART-clock.patch |   27 -
 ...-armada-37xx-periph-cosmetic-changes.patch |   78 -
 ...-37xx-periph-prepare-cpu-clk-to-be-u.patch |  178 -
 ...-37xx-periph-add-DVFS-support-for-cp.patch |  315 --
 ...req-Add-DVFS-support-for-Armada-37xx.patch |  297 --
 ...l-armada-37xx-add-nodes-allowing-cpu.patch |   48 -
 ...a-3720-espressobin-wire-up-spi-flash.patch |   56 -
 ...9-cpufreq-armada-37xx-Fix-clock-leak.patch |   35 -
 ...-37xx-periph-Fix-switching-CPU-rate-.patch |   92 -
 ...-37xx-periph-Fix-wrong-return-value-.patch |   33 -
 ...-37xx-periph-Remove-unused-var-num_p.patch |   33 -
 ...l-armada37xx-Add-emmc-sdio-pinctrl-d.patch |   40 -
 ...l-armada-37xx-Enable-emmc-on-espress.patch |   49 -
 ...ts-marvell-armada37xx-Add-eth0-alias.patch |   20 -
 ...da-3720-espressobin-correct-spi-node.patch |   58 -
 ...l-armada-3720-espressobin-add-ports-.patch |   26 -
 ...-device-to-the-same-MAX-payload-size.patch |  138 -
 ...ardvark-disable-LOS-state-by-default.patch |   55 -
 ...ark-allow-to-specify-link-capability.patch |   43 -
 ...-3720-espressobin-set-max-link-to-ge.patch |   73 -
 target/linux/octeon/config-4.14               |  304 --
 .../100-ubnt_edgerouter2_support.patch        |   31 -
 .../110-er200-ethernet_probe_order.patch      |   34 -
 .../patches-4.14/160-cmdline-hack.patch       |   47 -
 .../octeon/patches-4.14/170-cisco-hack.patch  |   31 -
 target/linux/sunxi/config-4.14                |  601 ---
 target/linux/sunxi/cortexa53/config-4.14      |  102 -
 target/linux/sunxi/cortexa7/config-4.14       |   10 -
 target/linux/sunxi/cortexa8/config-4.14       |   21 -
 ...dwmac-mdio-MDIOs-are-automatically-r.patch |   33 -
 ...-sun8i-Handle-integrated-external-MD.patch |  506 --
 ...stmmac-sun8i-Restore-the-compatibles.patch |   35 -
 ...-sun8i-fix-allwinner-leds-active-low.patch |   29 -
 ...ts-sunxi-Restore-EMAC-changes-boards.patch |  292 --
 ...dts-sunxi-h3-h5-Restore-EMAC-changes.patch |   54 -
 ...-h5-represent-the-mdio-switch-used-b.patch |   59 -
 ...s-allwinner-A64-Restore-EMAC-changes.patch |  184 -
 ...ner-add-snps-dwmac-mdio-compatible-t.patch |   28 -
 ...ts-allwinner-H5-Restore-EMAC-changes.patch |  120 -
 ...a64-add-Ethernet-PHY-regulator-for-s.patch |   51 -
 ...arch_counter_get_cntpct-to-read-the-.patch |  118 -
 ...arm64-dts-allwinner-a64-Add-watchdog.patch |   47 -
 ...s-sun8i-add-support-for-Orange-Pi-R1.patch |  105 -
 ...i-support-for-nanopi-neo-plus2-board.patch |  242 -
 ...80-arm64-allwinner-a64-add-SPI-nodes.patch |   78 -
 ...ner-sun50i-a64-Add-spi-flash-node-fo.patch |   36 -
 ...ers-arch_timer-Workaround-for-Allwin.patch |  244 -
 ...nner-a64-Enable-A64-timer-workaround.patch |   26 -
 ...n8i-fix-USB-Ethernet-of-Orange-Pi-R1.patch |   48 -
 ...s-sun8i-activate-SPI-on-Orange-Pi-R1.patch |   29 -
 .../220-ARM-dts-orange-pi-zero-plus.patch     |  185 -
 ...angepi_pc2_usb_otg_to_host_key_power.patch |   20 -
 ...un7i-Add-BCM53125-switch-nodes-to-th.patch |   88 -
 ...a64-sopine-Add-Sopine-flash-partitio.patch |   46 -
 target/linux/tegra/config-4.14                |  558 --
 ...interrupts-due-to-tegra2-silicon-bug.patch |   77 -
 ...enable-front-panel-leds-in-TrimSlice.patch |   46 -
 target/linux/x86/64/config-4.14               |  487 --
 target/linux/x86/config-4.14                  |  528 --
 target/linux/x86/generic/config-4.14          |  429 --
 target/linux/x86/geode/config-4.14            |  145 -
 target/linux/x86/legacy/config-4.14           |  215 -
 .../patches-4.14/011-tune_lzma_options.patch  |   22 -
 .../100-fix_cs5535_clockevt.patch             |   12 -
 .../200-pcengines-apu2-reboot.patch           |   19 -
 ...0-hwmon-w83627ehf-dont-claim-nct677x.patch |   30 -
 299 files changed, 54327 deletions(-)
 delete mode 100644 target/linux/armvirt/32/config-4.14
 delete mode 100644 target/linux/armvirt/64/config-4.14
 delete mode 100644 target/linux/armvirt/config-4.14
 delete mode 100644 target/linux/ath79/config-4.14
 delete mode 100644 target/linux/ath79/patches-4.14/0001-tty-serial-drop-QCA-pecific-SoC-symbols.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0002-watchdog-ath79-fix-maximum-timeout.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0003-leds-add-reset-controller-based-driver.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0004-phy-add-ath79-usb-phys.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0005-usb-add-more-OF-quirk-properties.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0006-usb-drop-deprecated-symbols.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0007-irqchip-irq-ath79-intc-add-irq-cascade-driver-for-QC.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0008-irqchip-irq-ath79-cpu-drop-OF-init-helper.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0009-MIPS-ath79-add-lots-of-missing-registers.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0010-MIPS-ath79-add-support-for-QCA953x-QCA956x-TP9343.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0011-MIPS-ath79-select-the-PINCTRL-subsystem.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0014-MIPS-ath79-finetune-cpu-overrides.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0015-MIPS-ath79-enable-uart-during-early_prink.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0016-MIPS-ath79-get-PCIe-controller-out-of-reset.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0017-dt-bindings-PCI-qcom-ar7100-adds-binding-doc.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0018-MIPS-pci-ar71xx-convert-to-OF.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0019-dt-bindings-PCI-qcom-ar7240-adds-binding-doc.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0020-MIPS-pci-ar724x-convert-to-OF.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0021-MIPS-ath79-add-helpers-for-setting-clocks-and-expose.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0022-MIPS-ath79-move-legacy-wdt-and-uart-clock-aliases-ou.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0023-MIPS-ath79-pass-PLL-base-to-clock-init-functions.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0024-MIPS-ath79-make-specifying-the-reference-clock-in-DT.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0025-MIPS-ath79-support-setting-up-clock-via-DT-on-all-So.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0026-MIPS-ath79-export-switch-MDIO-reference-clock.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0027-MIPS-ath79-drop-legacy-IRQ-code.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0028-MIPS-ath79-drop-machfiles.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0029-MIPS-ath79-drop-legacy-pci-code.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0030-MIPS-ath79-drop-platform-device-registration-code.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0031-MIPS-ath79-drop-OF-clock-code.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0032-MIPS-ath79-sanitize-symbols.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0033-spi-ath79-drop-pdata-support.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0034-MIPS-ath79-ath9k-exports.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0036-GPIO-add-named-gpio-exports.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0036-MIPS-ath79-remove-irq-code-from-pci.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0037-missing-registers.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch
 delete mode 100644 target/linux/ath79/patches-4.14/0038-at803x-disable-delays.patch
 delete mode 100644 target/linux/ath79/patches-4.14/004-register_gpio_driver_earlier.patch
 delete mode 100644 target/linux/ath79/patches-4.14/404-mtd-cybertan-trx-parser.patch
 delete mode 100644 target/linux/ath79/patches-4.14/405-mtd-tp-link-partition-parser.patch
 delete mode 100644 target/linux/ath79/patches-4.14/408-mtd-redboot_partition_scan.patch
 delete mode 100644 target/linux/ath79/patches-4.14/420-net-ar71xx_mac_driver.patch
 delete mode 100644 target/linux/ath79/patches-4.14/425-at803x-allow-sgmii-aneg-override.patch
 delete mode 100644 target/linux/ath79/patches-4.14/430-drivers-link-spi-before-mtd.patch
 delete mode 100644 target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch
 delete mode 100644 target/linux/ath79/patches-4.14/470-MIPS-ath79-swizzle-pci-address-for-ar71xx.patch
 delete mode 100644 target/linux/ath79/patches-4.14/900-mdio_bitbang_ignore_ta_value.patch
 delete mode 100644 target/linux/ath79/patches-4.14/901-phy-mdio-bitbang-prevent-rescheduling-during-command.patch
 delete mode 100644 target/linux/ath79/patches-4.14/910-unaligned_access_hacks.patch
 delete mode 100644 target/linux/gemini/config-4.14
 delete mode 100644 target/linux/gemini/patches-4.14/0001-cache-patch-from-OpenWRT.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0002-pinctrl-gemini-Add-missing-functions.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0003-ARM-dts-Add-TVE200-to-the-Gemini-SoC-DTSI.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0004-pinctrl-Add-skew-delay-pin-config-and-bindings.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0005-pinctrl-gemini-Use-generic-DT-parser.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0006-pinctrl-gemini-Implement-clock-skew-delay-config.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0007-pinctrl-gemini-Fix-GMAC-groups.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0008-pinctrl-gemini-Fix-missing-pad-descriptions.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0009-pinctrl-gemini-Add-two-missing-GPIO-groups.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0010-pinctrl-gemini-Fix-usage-of-3512-groups.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0011-pinctrl-gemini-Support-drive-strength-setting.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0012-ARM-dts-Add-ethernet-PHYs-to-the-a-bunch-of-Geminis.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0013-ARM-dts-Add-basic-devicetree-for-D-Link-DNS-313.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0014-ARM-dts-Flags-D-Link-DIR-685-I2C-bus-gpios.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0015-ARM-dts-Add-PCI-to-WBD111-and-WBD222.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0016-ARM-dts-Add-TVE-TVC-and-ILI9322-panel-to-DIR-685.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0017-watchdog-gemini-ftwdt010-rename-DT-bindings.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0018-watchdog-gemini-ftwdt010-rename-driver-and-symbols.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0019-watchdog-ftwdt010-Make-interrupt-optional.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0020-soc-Add-SoC-driver-for-Gemini.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0021-net-ethernet-Add-DT-bindings-for-the-Gemini-ethernet.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0022-net-ethernet-Add-a-driver-for-Gemini-gigabit-etherne.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0023-ARM-dts-Add-ethernet-to-the-Gemini-SoC.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0024-net-gemini-Depend-on-HAS_IOMEM.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0025-ARM-dts-Set-D-Link-DNS-313-SATA-to-muxmode-0.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0026-power-gemini-poweroff-Avoid-spurious-poweroff.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0027-usb-host-add-DT-bindings-for-faraday-fotg2.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0028-usb-host-fotg2-add-device-tree-probing.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0029-usb-host-fotg2-add-silicon-clock-handling.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0030-usb-host-fotg2-add-Gemini-specific-handling.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0031-ARM-dts-Add-the-FOTG210-USB-host-to-Gemini.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0033-ARM-dts-Fix-bootargs-for-Gemini-D-Link-devices.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0034-ARM-dts-Add-ethernet-to-a-bunch-of-platforms.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0900-arm-dts-gemini-add-openwrt-partitions-for-nas4220b.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0901-arm-dts-gemini-fix-ethernet-for-nas4220b.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0902-arm-dts-gemini-add-second-ata-for-nas4220b.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0903-arm-dts-gemini-disable-usb-port-1-until-fixed.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0904-net-cortina-fix-uninitialized-struct-member-usage.patch
 delete mode 100644 target/linux/gemini/patches-4.14/0905-arm-dts-gemini-dlink-dir-685-add-rtl8366rb.patch
 delete mode 100644 target/linux/imx6/config-4.14
 delete mode 100644 target/linux/imx6/patches-4.14/100-bootargs.patch
 delete mode 100644 target/linux/imx6/patches-4.14/200-disable-msi.patch
 delete mode 100644 target/linux/imx6/patches-4.14/301-apalis-ixora-dts-leds.patch
 delete mode 100644 target/linux/imx6/patches-4.14/302-apalis-ixora-dts-reset-button.patch
 delete mode 100644 target/linux/ipq40xx/config-4.14
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-a42.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-ea6350v3.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-eap1300.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-ens620ext.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-ex6100v2.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-ex6150v2.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-ex61x0v2.dtsi
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-fritzbox-4040.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-jalapeno.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-nbg6617.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-rt-ac58u.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4018-wre6606.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-a62.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1-c1.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c1.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac-c2.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-e2600ac.dtsi
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-ea8300.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-fritzbox-7530.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-fritzrepeater-1200.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-fritzrepeater-3000.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4019-map-ac2200.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4028-wpj428.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4029-gl-b1300.dts
 delete mode 100644 target/linux/ipq40xx/files-4.14/arch/arm/boot/dts/qcom-ipq4029-mr33.dts
 delete mode 100644 target/linux/ipq40xx/patches-4.14/030-mtd-nand-Use-standard-large-page-OOB-layout-when-usi.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/031-mtd-nand-use-usual-return-values-for-the-erase-hook.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/040-dmaengine-qcom-bam-Process-multiple-pending-descript.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/050-0002-mtd-nand-qcom-add-command-elements-in-BAM-transactio.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/050-0003-mtd-nand-qcom-support-for-command-descriptor-formati.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/050-0004-mtd-nand-provide-several-helpers-to-do-common-NAND-o.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/050-0005-mtd-nand-force-drivers-to-explicitly-send-READ-PROG-.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/070-qcom-spm-fix-probe-order.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/071-qcom-ipq4019-use-v2-of-the-kpss-bringup-mechanism.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/072-qcom-ipq4019-add-cpu-operating-points-for-cpufreq-su.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/074-ARM-qcom-Add-IPQ4019-SoC-support.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/075-dt-bindings-phy-qcom-ipq4019-usb-add-binding-documen.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/076-phy-qcom-ipq4019-usb-add-driver-for-QCOM-IPQ4019.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/078-ARM-dts-ipq4019-Add-a-few-peripheral-nodes.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/079-ARM-dts-ipq4019-fix-PCI-range.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/080-pinctrl-msm-fix-gpio-hog-related-boot-issues.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/081-clk-fix-apss-cpu-overclocking.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/082-ARM-dts-ipq4019-Add-TZ-and-SMEM-reserved-regions.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/083-mtd-nand-add-Winbond-manufacturer-and-chip.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/084-ARM-dts-ipq4019-Add-a-default-chosen-node.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/085-mtd-nand-add-macronix-mx35lf1ge4ab.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/086-ARM-dts-qcom-ipq4019-enlarge-PCIe-BAR-range.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/087-ARM-dts-qcom-ipq4019-Fix-MSI-IRQ-type.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0001-i2c-qup-fix-copyrights-and-update-to-SPDX-identifier.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0003-i2c-qup-minor-code-reorganization-for-use_dma.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0004-i2c-qup-remove-redundant-variables-for-BAM-SG-count.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0005-i2c-qup-schedule-EOT-and-FLUSH-tags-at-the-end-of-tr.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0006-i2c-qup-fix-the-transfer-length-for-BAM-RX-EOT-FLUSH.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0007-i2c-qup-proper-error-handling-for-i2c-error-in-BAM-m.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0008-i2c-qup-use-the-complete-transfer-length-to-choose-D.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0009-i2c-qup-change-completion-timeout-according-to-trans.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0010-i2c-qup-fix-buffer-overflow-for-multiple-msg-of-maxi.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0011-i2c-qup-send-NACK-for-last-read-sub-transfers.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0012-i2c-qup-reorganization-of-driver-code-to-remove-poll.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/088-0013-i2c-qup-reorganization-of-driver-code-to-remove-poll.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/303-spi-nor-enable-4B-opcodes-for-mx25l25635f.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/700-net-add-qualcomm-mdio-and-phy.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/703-net-IPQ4019-needs-rfs-vlan_tag-callbacks-in.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/706-ar40xx-abort-probe-on-missig-phy.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/710-net-add-qualcomm-essedma-ethernet-driver.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-node.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/712-mr33-essedma.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/713-essedma-alloc-skb-ip-align.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/714-essedma-add-fix-for-memory-allocation.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/850-soc-add-qualcomm-syscon.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/900-dts-ipq4019-ap-dk01.1.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/901-arm-boot-add-dts-files.patch
 delete mode 100644 target/linux/ipq40xx/patches-4.14/997-device_tree_cmdline.patch
 delete mode 100644 target/linux/malta/config-4.14
 delete mode 100644 target/linux/mpc85xx/config-4.14
 delete mode 100644 target/linux/mpc85xx/patches-4.14/001-powerpc-85xx-add-gpio-keys-to-of-match-table.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/100-powerpc-85xx-tl-wdr4900-v1-support.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/101-powerpc-85xx-hiveap-330-support.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/102-powerpc-add-cmdline-override.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/103-powerpc-fix-build-cross32ar.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/104-powerpc-mpc85xx-change-P2020RDB-dts-file-for-OpenWRT.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/105-powerpc-85xx-red-15w-rev1.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/106-powerpc-85xx-panda-support.patch
 delete mode 100644 target/linux/mvebu/config-4.14
 delete mode 100644 target/linux/mvebu/cortexa53/config-4.14
 delete mode 100644 target/linux/mvebu/cortexa72/config-4.14
 delete mode 100644 target/linux/mvebu/files-4.14/arch/arm/boot/dts/armada-385-linksys-venom.dts
 delete mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
 delete mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
 delete mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
 delete mode 100644 target/linux/mvebu/patches-4.14/002-add_powertables.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/003-add_switch_nodes.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/004-add_sata_disk_activity_trigger.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/005-linksys_hardcode_nand_ecc_settings.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/006-mvebu-Mangle-bootloader-s-kernel-arguments.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/100-find_active_root.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/102-revert_i2c_delay.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/103-remove-nand-driver-bug.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/104-linksys_mamba_disable_keep_config.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/110-pxa3xxx_revert_irq_thread.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/205-armada-385-rd-mtd-partitions.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/206-ARM-mvebu-385-ap-Add-partitions.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/210-clearfog_switch_node.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/220-disable-untested-dsa-boards.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/230-armada-xp-linksys-mamba-broken-idle.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/300-mvneta-tx-queue-workaround.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/400-cpuidle-mvebu-indicate-failure-to-enter-deeper-sleep.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/401-pci-mvebu-time-out-reset-on-link-up.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/402-sfp-display-SFP-module-information.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/403-net-mvneta-convert-to-phylink.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/404-net-mvneta-hack-fix-phy_interface.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/405-net-mvneta-disable-MVNETA_CAUSE_PSC_SYNC_CHANGE-inte.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/406-net-mvneta-add-module-EEPROM-reading-support.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/407-phy-fixed-phy-remove-fixed_phy_update_state.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/408-sfp-move-module-eeprom-ethtool-access-into-netdev-co.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/409-sfp-use-netdev-sfp_bus-for-start-stop.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/410-sfp-hack-allow-marvell-10G-phy-support-to-use-SFP.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/411-sfp-add-sfp-compatible.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/412-ARM-dts-armada388-clearfog-emmc-on-clearfog-base.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/413-ARM-dts-armada388-clearfog-increase-speed-of-i2c0-to.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/414-ARM-dts-armada388-clearfog-add-SFP-module-support.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/415-ARM-dts-armada388-clearfog-document-MPP-usage.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/420-rtc-armada38x-add-support-for-trimming-the-RTC.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/421-rtc-armada38x-reset-after-rtc-power-loss.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/423-ARM-dts-armada-385-linksys-Disable-internal-RTC.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/450-reprobe_sfp_phy.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/501-spi-a3700-Change-SPI-mode-before-asserting-chip-sele.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/502-arm64-dts-marvell-armada-37xx-add-UART-clock.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/503-clk-mvebu-armada-37xx-periph-cosmetic-changes.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/504-clk-mvebu-armada-37xx-periph-prepare-cpu-clk-to-be-u.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/505-clk-mvebu-armada-37xx-periph-add-DVFS-support-for-cp.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/506-cpufreq-Add-DVFS-support-for-Armada-37xx.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/507-arm64-dts-marvell-armada-37xx-add-nodes-allowing-cpu.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/508-arm64-dts-armada-3720-espressobin-wire-up-spi-flash.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/509-cpufreq-armada-37xx-Fix-clock-leak.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/510-clk-mvebu-armada-37xx-periph-Fix-switching-CPU-rate-.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/511-clk-mvebu-armada-37xx-periph-Fix-wrong-return-value-.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/512-clk-mvebu-armada-37xx-periph-Remove-unused-var-num_p.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/513-arm64-dts-marvell-armada37xx-Add-emmc-sdio-pinctrl-d.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/514-arm64-dts-marvell-armada-37xx-Enable-emmc-on-espress.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/520-arm64-dts-marvell-armada37xx-Add-eth0-alias.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/521-arm64-dts-armada-3720-espressobin-correct-spi-node.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/522-arm64-dts-marvell-armada-3720-espressobin-add-ports-.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/524-PCI-aardvark-set-host-and-device-to-the-same-MAX-payload-size.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/526-PCI-aardvark-disable-LOS-state-by-default.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/527-PCI-aardvark-allow-to-specify-link-capability.patch
 delete mode 100644 target/linux/mvebu/patches-4.14/528-arm64-dts-armada-3720-espressobin-set-max-link-to-ge.patch
 delete mode 100644 target/linux/octeon/config-4.14
 delete mode 100644 target/linux/octeon/patches-4.14/100-ubnt_edgerouter2_support.patch
 delete mode 100644 target/linux/octeon/patches-4.14/110-er200-ethernet_probe_order.patch
 delete mode 100644 target/linux/octeon/patches-4.14/160-cmdline-hack.patch
 delete mode 100644 target/linux/octeon/patches-4.14/170-cisco-hack.patch
 delete mode 100644 target/linux/sunxi/config-4.14
 delete mode 100644 target/linux/sunxi/cortexa53/config-4.14
 delete mode 100644 target/linux/sunxi/cortexa7/config-4.14
 delete mode 100644 target/linux/sunxi/cortexa8/config-4.14
 delete mode 100644 target/linux/sunxi/patches-4.14/001-net-stmmac-snps-dwmac-mdio-MDIOs-are-automatically-r.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/002-net-stmmac-dwmac-sun8i-Handle-integrated-external-MD.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/003-net-stmmac-sun8i-Restore-the-compatibles.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/004-net-stmmac-dwmac-sun8i-fix-allwinner-leds-active-low.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/020-ARM-dts-sunxi-Restore-EMAC-changes-boards.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/021-arm-dts-sunxi-h3-h5-Restore-EMAC-changes.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/022-ARM-dts-sunxi-h3-h5-represent-the-mdio-switch-used-b.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/025-arm64-dts-allwinner-A64-Restore-EMAC-changes.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/026-arm64-dts-allwinner-add-snps-dwmac-mdio-compatible-t.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/027-arm64-dts-allwinner-H5-Restore-EMAC-changes.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/030-arm64-allwinner-a64-add-Ethernet-PHY-regulator-for-s.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/031-arm64-Implement-arch_counter_get_cntpct-to-read-the-.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/040-arm64-dts-allwinner-a64-Add-watchdog.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/060-ARM-dts-sun8i-add-support-for-Orange-Pi-R1.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/061-arm-dts-sun50i-support-for-nanopi-neo-plus2-board.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/080-arm64-allwinner-a64-add-SPI-nodes.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/081-arm64-dts-allwinner-sun50i-a64-Add-spi-flash-node-fo.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/100-clocksource-drivers-arch_timer-Workaround-for-Allwin.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/101-arm64-dts-allwinner-a64-Enable-A64-timer-workaround.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/201-ARM-dts-sun8i-fix-USB-Ethernet-of-Orange-Pi-R1.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/202-ARM-dts-sun8i-activate-SPI-on-Orange-Pi-R1.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/220-ARM-dts-orange-pi-zero-plus.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/301-orangepi_pc2_usb_otg_to_host_key_power.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/310-Revert-ARM-dts-sun7i-Add-BCM53125-switch-nodes-to-th.patch
 delete mode 100644 target/linux/sunxi/patches-4.14/400-arm64-allwinner-a64-sopine-Add-Sopine-flash-partitio.patch
 delete mode 100644 target/linux/tegra/config-4.14
 delete mode 100644 target/linux/tegra/patches-4.14/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch
 delete mode 100644 target/linux/tegra/patches-4.14/101-ARM-dtc-tegra-enable-front-panel-leds-in-TrimSlice.patch
 delete mode 100644 target/linux/x86/64/config-4.14
 delete mode 100644 target/linux/x86/config-4.14
 delete mode 100644 target/linux/x86/generic/config-4.14
 delete mode 100644 target/linux/x86/geode/config-4.14
 delete mode 100644 target/linux/x86/legacy/config-4.14
 delete mode 100644 target/linux/x86/patches-4.14/011-tune_lzma_options.patch
 delete mode 100644 target/linux/x86/patches-4.14/100-fix_cs5535_clockevt.patch
 delete mode 100644 target/linux/x86/patches-4.14/200-pcengines-apu2-reboot.patch
 delete mode 100644 target/linux/x86/patches-4.14/800-hwmon-w83627ehf-dont-claim-nct677x.patch

-- 
2.20.1



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
