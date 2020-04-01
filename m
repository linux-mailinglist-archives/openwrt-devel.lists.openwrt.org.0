Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E23019B898
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 00:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JqpLn5AOpo6K6IuOobJ/2/0V0U6SPAMEog1ql4Qvgm4=; b=UBAvvpMKnMmlg2
	v41nGerq6DHgqePGh15mfteSgQ4YR+fs5gUquSBWDRbD8qQoThgnaPcWcQF8k5eKgVZgQpOry/NPA
	FPB9/uZYS9EOAJhqC/YFG4q9aEDfPgis5nNJn8q6S9eKwlgUv3LVJi4OjyiMjeLXD6uhr/31AVa+2
	EkDAm8lR6zZSWc/Gpw2rFFgPMkHKidnom1oGUmTZC9zu+PjPRzuc+9eT+1R16JmKDEq/X3A9PTDvb
	rZGRUR7cvdhW9AeiSBH8UTzHXCDkekSNNTe1PYmbZ2ODgs5TPFrxFOz1foWV3dfcvCapVFCD34Pcs
	Nku8umoWMvp0gox7lWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJm47-0005Zl-EK; Wed, 01 Apr 2020 22:42:31 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJm3x-0005Yg-T2
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 22:42:25 +0000
Received: from buildfff.adridolf.com ([188.192.133.231]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MqJZl-1iyCy233eF-00nTmb for <openwrt-devel@lists.openwrt.org>; Thu, 02
 Apr 2020 00:42:17 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 00:41:21 +0200
Message-Id: <20200401224124.2669-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:XNB22Tjj8poZOFhQdq/NdpP6EQ7xaHixJ4B3XVW3CvOAWK/sOcG
 +EaMpAvvhOBVo6h/qThwHuc+fwUeoJNslKoNN+u36EjCKbsp9jiO+j7Fbc3Gvzp7kWeZD/v
 VF6zA+2oReEIaRdQ9ttn52SnACAt4WCH3YtxhET60tvaEILGCSdsG65ue4zXTSQrww4b7rJ
 LdHW0xfjnbzRv8HMkaf+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ufpylVNXleQ=:gvtZtGXLyKCXrdGpNZByNp
 1P1BxyPlwdaZ9Qb61EQt26/uQylXRqhkscwJW5gCoTJajuu0MUn1cFjgitrg74QgnwlV4+QIw
 JUaLIt1UT6H+ayH5phmsMco13e6cbbjhdlmJUGDPj9h1/5CjRDQIA/zT20mx0EpAN61hcdENi
 BBWRjLmk2dtTv0n7dyTnbTcoBZTzK8pgZCi+CTqjPw8s6kRdZnWnFntdW977MXXJWrYCDanXR
 7f+yFWwodKRzYHT8K6A1qdXfpGxiuZwE8gcrbtnwV5C2RqIjVrqsh7baajseeHYZ8JWho61y6
 eiMmz3FhLzSmmJiHFaTZg3vnNivStBgyfHQ9B/uE/MvJR14VdxD3g/KdooV6XXXYBIgRQTjNx
 7afHUsDfN7jQjNSdQwOQXYfujF7CL2Q9O7xc9I6/0Xv7Vh6tRucZ4LA4OxPTMP5Ez4qlUtRQz
 QbC2t5Trb/+ml0mQBUOyLBqpQ7MVA1Nb2uQEtB1o8vWvm65yO98vPT8mneP7DTa/LDHImm3BN
 RAnrdxNSS9CRcFm9BNaRSqvR8/YVuEi/vCeR/DyrqKDGOz1Zz9LEm7cHcXMVEpcJBeq4xChPt
 jhJ2OUuZbyZBmk2zGDNXf9Ev8SCjXLycIisQzVHY2LlwpDDKhV71yF8QZlvIBJBbnoCSIRT80
 rbAB9gJYNgprlh9sIc67q567jPlARIdhcqKVd7/11SPPcFYpJAFLrOHay77jhvoMC9stsyqdz
 GcyNlfeJ540Fpbgwn5jUbGLObJUgLCBIKAkRXdtHwTU2kukH9Ueb9SbX6c1UjnGTbS3AmL6FY
 UE2Iw0mdISgvGqbqD++P6WJUlRxmZOAZioWL94KL/AVsthSWUFs20j70f6ZQIcu0TXja8Sn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_154222_397759_D7EBFEFF 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/3] drop 4.14 support on some targets
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

This drops support for kernel 4.14 on some additional targets
where we have had two other versions for some time or where
4.19 support is quite old:
- ipq806x
- mediatek
- cns3xxx

Adrian Schmutzler (3):
  ipq806x: remove support for kernel 4.14
  mediatek: remove support for kernel 4.14
  cns3xx: remove support for kernel 4.14

 target/linux/cns3xxx/config-4.14              |   380 -
 .../000-cns3xxx_arch_include.patch            |     9 -
 .../001-arm_openwrt_machtypes.patch           |    10 -
 ...-arm_introduce-dma-fiq-irq-broadcast.patch |    80 -
 .../patches-4.14/020-watchdog_support.patch   |   184 -
 .../patches-4.14/025-smp_support.patch        |    30 -
 .../cns3xxx/patches-4.14/030-pcie_clock.patch |    11 -
 .../patches-4.14/040-fiq_support.patch        |    40 -
 .../cns3xxx/patches-4.14/045-twd_base.patch   |    43 -
 .../cns3xxx/patches-4.14/055-pcie_io.patch    |    19 -
 .../cns3xxx/patches-4.14/060-pcie_abort.patch |   109 -
 .../patches-4.14/065-pcie_skip_inactive.patch |    11 -
 .../patches-4.14/070-i2c_support.patch        |    31 -
 .../patches-4.14/075-spi_support.patch        |    51 -
 .../patches-4.14/080-sata_support.patch       |    26 -
 .../cns3xxx/patches-4.14/090-timers.patch     |   105 -
 .../093-add-virt-pci-io-mapping.patch         |    41 -
 .../patches-4.14/095-gpio_support.patch       |    67 -
 .../097-l2x0_cmdline_disable.patch            |    69 -
 .../patches-4.14/100-laguna_support.patch     |    46 -
 .../101-laguna_sdhci_card_detect.patch        |    14 -
 .../110-pci_isolated_interrupts.patch         |    95 -
 ...-set-MRSS-128-to-fix-CNS3xxx-BM-DMA..patch |    23 -
 .../200-broadcom_phy_reinit.patch             |    15 -
 .../patches-4.14/210-dwc2_defaults.patch      |    63 -
 target/linux/ipq806x/config-4.14              |   489 -
 .../arch/arm/boot/dts/qcom-ipq8064-ap148.dts  |   248 -
 .../arch/arm/boot/dts/qcom-ipq8064-ap161.dts  |   277 -
 .../arch/arm/boot/dts/qcom-ipq8064-c2600.dts  |   494 -
 .../arch/arm/boot/dts/qcom-ipq8064-d7800.dts  |   408 -
 .../arch/arm/boot/dts/qcom-ipq8064-db149.dts  |   232 -
 .../arch/arm/boot/dts/qcom-ipq8064-ea8500.dts |   400 -
 .../arch/arm/boot/dts/qcom-ipq8064-r7500.dts  |   382 -
 .../arm/boot/dts/qcom-ipq8064-r7500v2.dts     |   407 -
 .../arch/arm/boot/dts/qcom-ipq8064-v2.0.dtsi  |    30 -
 .../arm/boot/dts/qcom-ipq8064-vr2600v.dts     |   417 -
 .../arm/boot/dts/qcom-ipq8064-wg2600hp.dts    |   442 -
 .../arch/arm/boot/dts/qcom-ipq8064-wpq864.dts |   568 -
 .../arm/boot/dts/qcom-ipq8064-wxr-2533dhp.dts |   535 -
 .../arch/arm/boot/dts/qcom-ipq8064.dtsi       |  1410 --
 .../arm/boot/dts/qcom-ipq8065-nbg6817.dts     |   386 -
 .../arch/arm/boot/dts/qcom-ipq8065-r7800.dts  |   513 -
 .../arch/arm/boot/dts/qcom-ipq8065.dtsi       |    78 -
 ...ings-qcom_adm-Fix-channel-specifiers.patch |    71 -
 .../0002-dmaengine-Add-ADM-driver.patch       |   966 --
 ...0030-clk-Disable-i2c-device-on-gsbi4.patch |    40 -
 ...d-add-SMEM-parser-for-QCOM-platforms.patch |   282 -
 .../0032-phy-add-qcom-dwc3-phy.patch          |   616 -
 ...ically-select-PCI_DOMAINS-if-PCI-is-.patch |    29 -
 ...Krait-L2-register-accessor-functions.patch |   147 -
 ...lit-out-register-accessors-for-reuse.patch |   195 -
 ...pport-for-High-Frequency-PLLs-HFPLLs.patch |   352 -
 .../0039-clk-qcom-Add-HFPLL-driver.patch      |   206 -
 .../0040-clk-qcom-Add-IPQ806X-s-HFPLLs.patch  |   129 -
 ...lk-qcom-Add-support-for-Krait-clocks.patch |   241 -
 ...042-clk-qcom-Add-KPSS-ACC-GCC-driver.patch |   209 -
 ...om-Add-Krait-clock-controller-driver.patch |   436 -
 .../0044-clk-Add-safe-switch-hook.patch       |   160 -
 ...le-to-register-cpufreq-on-Krait-CPUs.patch |   307 -
 ...cpufreq-qcom-independent-core-clocks.patch |    66 -
 ...a-BBT-flag-to-access-bad-block-marke.patch |    72 -
 ...ow-to-set-regulator-without-opp_list.patch |    26 -
 ...rt-adjusting-OPP-voltages-at-runtime.patch |   147 -
 ...per-to-get-an-opp-regulator-for-devi.patch |    52 -
 ...e-voltage-tolerance-when-adjusting-t.patch |    38 -
 .../0053-regulator-add-smb208-support.patch   |    55 -
 ...-dt-Handle-OPP-voltage-adjust-events.patch |   128 -
 ...-dt-Add-L2-frequency-scaling-support.patch |    90 -
 ...056-cpufreq-dt-Add-missing-rcu-locks.patch |    23 -
 ...le-Add-cpuidle-support-for-QCOM-cpus.patch |    29 -
 ...arch-arm-force-ZRELADDR-on-arch-qcom.patch |    62 -
 ...conflicts-with-OpenWrt-auto-mounting.patch |    23 -
 ...ed-the-enable-regs-and-mask-for-PRNG.patch |    25 -
 .../0063-1-ipq806x-tsens-driver.patch         |   627 -
 ...sens-support-configurable-interrupts.patch |   453 -
 .../patches-4.14/0064-clk-clk-rpm-fixes.patch |    93 -
 .../0065-arm-override-compiler-flags.patch    |    21 -
 ...Mangle-bootloader-s-kernel-arguments.patch |   189 -
 .../0069-arm-boot-add-dts-files.patch         |    31 -
 .../0070-qcom-spm-fix-probe-order.patch       |    16 -
 ...I-qcom-Fixed-IPQ806x-specific-clocks.patch |    95 -
 ...com-Fixed-IPQ806x-PCIE-reset-changes.patch |    85 -
 ...qcom-Fixed-IPQ806x-PCIE-init-changes.patch |   126 -
 ...rogramming-the-PCIE-iATU-for-IPQ806x.patch |   114 -
 .../0071-6-PCI-qcom-Force-GEN1-support.patch  |    61 -
 ...7-pcie-Set-PCIE-MRRS-and-MPS-to-256B.patch |    69 -
 ...qcom-Fixed-pcie_phy_clk-branch-issue.patch |    91 -
 ...nge-duplicate-pci-reset-to-phy-reset.patch |    25 -
 .../0072-add-ipq806x-with-no-clocks.patch     |    12 -
 ...e-scm_call-to-route-GPIO-irq-to-Apps.patch |   183 -
 ...ipq806x-usb-Control-USB-master-reset.patch |    71 -
 ...Fixed-missing-RGMII-pincontrol-defin.patch |    50 -
 .../105-mtd-nor-add-mx25l25635f.patch         |    22 -
 .../310-msm-adhoc-bus-support.patch           | 11026 ----------------
 .../850-soc-add-qualcomm-syscon.patch         |   177 -
 .../dts/mediatek/mt7622-bananapi-bpi-r64.dts  |   574 -
 .../boot/dts/mediatek/mt7622-lynx-rfb1.dts    |   549 -
 target/linux/mediatek/mt7622/config-4.14      |   446 -
 target/linux/mediatek/mt7623/config-4.14      |   502 -
 ...6-reset-mediatek-mt2701-reset-driver.patch |    27 -
 .../0012-clk-dont-disable-unused-clocks.patch |    21 -
 ...27-net-next-mediatek-fix-DQL-support.patch |    92 -
 ...-add-support-for-GMAC2-wired-to-ext-.patch |    26 -
 .../patches-4.14/0033-dsa-multi-cpu.patch     |   268 -
 ...-mediatek-disable-RX-VLan-offloading.patch |    47 -
 ...k-honour-special-tag-bit-inside-RX-D.patch |    50 -
 ...k-enable-special-tag-indication-for-.patch |    41 -
 ...iatek-tell-GDMA-when-we-are-turning-.patch |    43 -
 ...a-mediatek-turn-into-platform-driver.patch |    79 -
 .../0046-net-mediatek-add-irq-delay.patch     |    21 -
 ...051-net-mediatek-increase-tx_timeout.patch |    21 -
 .../patches-4.14/0052-net-phy-add-FC.patch    |    21 -
 .../patches-4.14/0062-mdio-atomic.patch       |    14 -
 .../patches-4.14/0063-atomic-sleep.patch      |    46 -
 .../mediatek/patches-4.14/0064-dts.patch      |   127 -
 ...dd-reset-controller-dt-bindings-requ.patch |   114 -
 ...rap-fixup-warnings-from-coding-style.patch |    71 -
 ...support-option-to-disable-usb3-ports.patch |   108 -
 ...-remove-dummy-wakeup-debounce-clocks.patch |   119 -
 ...-add-optional-mcu-and-dma-bus-clocks.patch |   227 -
 ...-usb-mtu3-support-36-bit-DMA-address.patch |   362 -
 ...CE-RG_IDDIG-to-implement-manual-DRD-.patch |   274 -
 ...9-usb-mtu3-add-support-for-usb3.1-IP.patch |   152 -
 ...get-optional-vbus-for-host-only-mode.patch |    40 -
 ...et-invalid-dr_mode-as-dual-role-mode.patch |    29 -
 ..._sel-for-u2port-only-if-works-as-dua.patch |    44 -
 ...mtu3-add-a-optional-property-to-disa.patch |    25 -
 ...mtu3-remove-dummy-clocks-and-add-opt.patch |    41 -
 ...gs-usb-mtu3-remove-optional-pinctrls.patch |    30 -
 ...mediatek-add-MT7622-string-to-the-PM.patch |    38 -
 ...ap-add-pwrap_read32-for-reading-in-3.patch |   134 -
 ...ap-add-pwrap_write32-for-writing-in-.patch |   132 -
 ...ap-refactor-pwrap_init-for-the-vario.patch |   227 -
 ...ap-add-MediaTek-MT6380-as-one-slave-.patch |    98 -
 ...ap-add-common-way-for-setup-CS-timin.patch |   121 -
 ...tek-pwrap-add-support-for-MT7622-SoC.patch |   237 -
 ...ce-Kconfig-for-all-SoC-drivers-under.patch |    57 -
 ...leanup-message-for-platform-selectio.patch |    34 -
 ...y-phy-mtk-tphy-add-set_mode-callback.patch |    86 -
 ...-dma_set_mask_and_coherent-in-probe-.patch |    35 -
 ...-ports-count-from-xhci-in-xhci_mtk_s.patch |    53 -
 ...-mtk-check-clock-stability-of-U3_MAC.patch |    36 -
 ...support-option-to-disable-usb3-ports.patch |    85 -
 ...-remove-dummy-wakeup-debounce-clocks.patch |    86 -
 ...-add-optional-mcu-and-dma-bus-clocks.patch |   139 -
 ...dify-description-for-MTK-xHCI-config.patch |    32 -
 ...mtk-xhci-add-a-optional-property-to-.patch |    25 -
 ...mtk-xhci-remove-dummy-clocks-and-add.patch |    58 -
 ...add-new-compatible-strings-and-impro.patch |    42 -
 ...d-mtk-nor-add-suspend-resume-support.patch |   128 -
 ...mediatek-add-bindings-for-MediaTek-S.patch |    41 -
 ...tek-add-driver-for-RTC-on-MT7622-SoC.patch |   471 -
 ...ance-the-description-for-MediaTek-PM.patch |    39 -
 ...nge-the-compile-sequence-of-mtk_nand.patch |    31 -
 ...Add-reg-source_cg-latch-ck-for-Media.patch |    60 -
 ...ediatek-add-support-of-mt2701-mt2712.patch |   187 -
 ...Mediatek-Document-bindings-for-MT271.patch |   196 -
 ...ek-Add-dt-bindings-for-MT2712-clocks.patch |   446 -
 ...lk-mediatek-Add-MT2712-clock-support.patch |  2296 ----
 ...k-mediatek-document-clk-bindings-for.patch |   190 -
 ...-clocks-dt-bindings-required-header-.patch |   310 -
 ...tek-add-clock-support-for-MT7622-SoC.patch |  1388 --
 ...-remove-mediatek-mt8135-mmc-from-mmc.patch |    61 -
 ...e-hs400_tune_response-only-for-mt817.patch |    70 -
 ...3-mmc-mediatek-add-pad_tune0-support.patch |   256 -
 ...add-async-fifo-and-data-tune-support.patch |   170 -
 ...-mmc-mediatek-add-busy_check-support.patch |    67 -
 ...-stop_clk-fix-and-enhance_rx-support.patch |   168 -
 ...iatek-add-support-of-source_cg-clock.patch |    85 -
 ...58-mmc-mediatek-add-latch-ck-support.patch |    45 -
 ...rove-eMMC-hs400-mode-read-performanc.patch |    68 -
 ...fer-to-use-rise-edge-latching-for-cm.patch |    28 -
 ...m-mediatek-Add-MT2712-MT7622-support.patch |   145 -
 ...-nand_reset-to-reset-NAND-devices-in.patch |    41 -
 ...atek-add-mt2712-into-compatible-list.patch |    24 -
 ...0165-mtd-nand-mtk-update-DT-bindings.patch |    41 -
 ...port-different-MTK-NAND-flash-contro.patch |   380 -
 ...Support-MT7622-NAND-flash-controller.patch |   109 -
 ...ndings-add-mmc-support-to-MT7623-SoC.patch |    26 -
 ...trl-add-bindings-for-MediaTek-MT7622.patch |   371 -
 ...-cleanup-for-placing-all-drivers-und.patch |    32 -
 ...ek-add-pinctrl-driver-for-MT7622-SoC.patch |  1675 ---
 ...-group-drivers-under-indpendent-menu.patch |   223 -
 ...up-test-building-of-MediaTek-clock-d.patch |    27 -
 ...mediatek-add-condition-to-property-m.patch |    27 -
 ...ove-superfluous-pin-setup-for-MT7622.patch |   102 -
 ...-all-warnings-for-missing-struct-clk.patch |    68 -
 ...-make-shared-banks-optional-for-V1-T.patch |    30 -
 ...tk-tphy-use-of_device_get_match_data.patch |    51 -
 ...x-error-handling-in-mt2701_afe_pcm_d.patch |    81 -
 ...ek-rework-clock-functions-for-MT2701.patch |   919 --
 ...atek-cleanup-audio-driver-for-MT2701.patch |   428 -
 ...date-clock-related-properties-of-MT2.patch |   258 -
 ...-add-some-core-clocks-for-MT2701-AFE.patch |    93 -
 ...dify-MT2701-AFE-driver-to-adapt-mfd-.patch |   128 -
 ...date-MT2701-AFE-documentation-to-ada.patch |   214 -
 ...error-code-for-getting-extcon-device.patch |    26 -
 ...s-remote-wakeup-for-mt2712-with-two-.patch |   233 -
 ...sb-mtu3-update-USB-wakeup-properties.patch |    47 -
 ...ports-remote-wakeup-for-mt2712-with-.patch |   265 -
 ...low-imod-interval-to-be-configurable.patch |   138 -
 ...mtk-xhci-update-USB-wakeup-propertie.patch |    49 -
 ...ust-dependency-of-reset.c-to-avoid-u.patch |    71 -
 ...-mt7622-fix-potential-uninitialized-.patch |    49 -
 ...-mt7622-align-error-handling-of-mtk_.patch |    50 -
 ...modify-functions-name-more-generally.patch |   554 -
 ...g-mediatek-Setup-default-RNG-quality.patch |    25 -
 ...s-thermal-add-binding-for-MT7622-SoC.patch |    26 -
 ...9-thermal-mtk-Cleanup-unused-defines.patch |    51 -
 ...-mediatek-add-support-for-MT7622-SoC.patch |    81 -
 ...k-mediatek-add-missing-required-rese.patch |    64 -
 ...-bindings-add-support-for-MT7622-SoC.patch |    22 -
 ...-mediatek-add-support-for-MT7622-SoC.patch |    42 -
 ...ngine-Add-MediaTek-High-Speed-DMA-co.patch |    51 -
 ...ek-Add-MediaTek-High-Speed-DMA-contr.patch |  1128 --
 ...k-mediatek-update-audsys-documentati.patch |    45 -
 ...k-mediatek-add-audsys-support-for-MT.patch |    23 -
 ...ate-missing-clock-data-for-MT7622-au.patch |    38 -
 ...-devm_of_platform_populate-for-MT762.patch |    42 -
 ...22-add-clock-controller-device-nodes.patch |   130 -
 ...-add-power-domain-controller-device-.patch |    45 -
 ...622-add-pinctrl-related-device-nodes.patch |   252 -
 ...mt7622-add-PMIC-MT6380-related-nodes.patch |   155 -
 ...622-add-cpufreq-related-device-nodes.patch |   112 -
 ...mt7622-turn-uart0-clock-to-real-ones.patch |    45 -
 ...-add-SoC-and-peripheral-related-devi.patch |   420 -
 ...t7622-add-flash-related-device-nodes.patch |    96 -
 ...dts-mt7622-add-ethernet-device-nodes.patch |    84 -
 ...m64-dts-mt7622-add-PCIe-device-nodes.patch |   116 -
 ...m64-dts-mt7622-add-SATA-device-nodes.patch |    87 -
 ...rm64-dts-mt7622-add-usb-device-nodes.patch |   119 -
 ...7622-add-High-Speed-DMA-device-nodes.patch |    31 -
 ...-mt7622-add-mmc-related-device-nodes.patch |   200 -
 ...config-for-testing-these-new-drivers.patch |   288 -
 ...rm-dts-Add-missing-mt7623-pcie-nodes.patch |   123 -
 ...-phy-phy-mtk-tphy-Add-hifsys-support.patch |    66 -
 .../0227-arm-dts-Add-Unielec-U7623-DTS.patch  |   413 -
 237 files changed, 52749 deletions(-)
 delete mode 100644 target/linux/cns3xxx/config-4.14
 delete mode 100644 target/linux/cns3xxx/patches-4.14/000-cns3xxx_arch_include.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/001-arm_openwrt_machtypes.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/010-arm_introduce-dma-fiq-irq-broadcast.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/020-watchdog_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/025-smp_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/030-pcie_clock.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/040-fiq_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/045-twd_base.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/055-pcie_io.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/060-pcie_abort.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/065-pcie_skip_inactive.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/070-i2c_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/075-spi_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/080-sata_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/090-timers.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/093-add-virt-pci-io-mapping.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/095-gpio_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/097-l2x0_cmdline_disable.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/100-laguna_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/101-laguna_sdhci_card_detect.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/110-pci_isolated_interrupts.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/130-Extend-PCIE_BUS_PEER2PEER-to-set-MRSS-128-to-fix-CNS3xxx-BM-DMA..patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/200-broadcom_phy_reinit.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/210-dwc2_defaults.patch
 delete mode 100644 target/linux/ipq806x/config-4.14
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-ap148.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-ap161.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-c2600.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-d7800.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-db149.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-ea8500.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-r7500.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-r7500v2.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-v2.0.dtsi
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-vr2600v.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-wg2600hp.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-wpq864.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064-wxr-2533dhp.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8064.dtsi
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8065-nbg6817.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8065-r7800.dts
 delete mode 100644 target/linux/ipq806x/files-4.14/arch/arm/boot/dts/qcom-ipq8065.dtsi
 delete mode 100644 target/linux/ipq806x/patches-4.14/0001-dtbindings-qcom_adm-Fix-channel-specifiers.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0002-dmaengine-Add-ADM-driver.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0030-clk-Disable-i2c-device-on-gsbi4.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0031-mtd-add-SMEM-parser-for-QCOM-platforms.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0032-phy-add-qcom-dwc3-phy.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0033-ARM-qcom-automatically-select-PCI_DOMAINS-if-PCI-is-.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0034-ARM-Add-Krait-L2-register-accessor-functions.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0035-clk-mux-Split-out-register-accessors-for-reuse.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0038-clk-qcom-Add-support-for-High-Frequency-PLLs-HFPLLs.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0039-clk-qcom-Add-HFPLL-driver.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0040-clk-qcom-Add-IPQ806X-s-HFPLLs.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0041-clk-qcom-Add-support-for-Krait-clocks.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0042-clk-qcom-Add-KPSS-ACC-GCC-driver.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0043-clk-qcom-Add-Krait-clock-controller-driver.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0044-clk-Add-safe-switch-hook.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0045-cpufreq-Add-module-to-register-cpufreq-on-Krait-CPUs.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0046-cpufreq-qcom-independent-core-clocks.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0047-mtd-nand-Create-a-BBT-flag-to-access-bad-block-marke.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0048-PM-OPP-HACK-Allow-to-set-regulator-without-opp_list.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0049-PM-OPP-Support-adjusting-OPP-voltages-at-runtime.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0051-PM-OPP-Add-a-helper-to-get-an-opp-regulator-for-devi.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0052-PM-OPP-Update-the-voltage-tolerance-when-adjusting-t.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0053-regulator-add-smb208-support.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0054-cpufreq-dt-Handle-OPP-voltage-adjust-events.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0055-cpufreq-dt-Add-L2-frequency-scaling-support.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0056-cpufreq-dt-Add-missing-rcu-locks.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0059-ARM-cpuidle-Add-cpuidle-support-for-QCOM-cpus.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0060-HACK-arch-arm-force-ZRELADDR-on-arch-qcom.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0061-mtd-rootfs-conflicts-with-OpenWrt-auto-mounting.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0062-ipq806x-gcc-Added-the-enable-regs-and-mask-for-PRNG.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0063-1-ipq806x-tsens-driver.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0063-2-tsens-support-configurable-interrupts.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0064-clk-clk-rpm-fixes.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0065-arm-override-compiler-flags.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0067-generic-Mangle-bootloader-s-kernel-arguments.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0069-arm-boot-add-dts-files.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0070-qcom-spm-fix-probe-order.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-1-PCI-qcom-Fixed-IPQ806x-specific-clocks.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-2-PCI-qcom-Fixed-IPQ806x-PCIE-reset-changes.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-3-PCI-qcom-Fixed-IPQ806x-PCIE-init-changes.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-5-PCI-qcom-Programming-the-PCIE-iATU-for-IPQ806x.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-6-PCI-qcom-Force-GEN1-support.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-7-pcie-Set-PCIE-MRRS-and-MPS-to-256B.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-8-pcie-qcom-Fixed-pcie_phy_clk-branch-issue.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0071-9-pcie-qcom-change-duplicate-pci-reset-to-phy-reset.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0072-add-ipq806x-with-no-clocks.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0073-pinctrl-qom-use-scm_call-to-route-GPIO-irq-to-Apps.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0074-ipq806x-usb-Control-USB-master-reset.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/0075-ipq8064-pinctrl-Fixed-missing-RGMII-pincontrol-defin.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/105-mtd-nor-add-mx25l25635f.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/310-msm-adhoc-bus-support.patch
 delete mode 100644 target/linux/ipq806x/patches-4.14/850-soc-add-qualcomm-syscon.patch
 delete mode 100644 target/linux/mediatek/files-4.14/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
 delete mode 100644 target/linux/mediatek/files-4.14/arch/arm64/boot/dts/mediatek/mt7622-lynx-rfb1.dts
 delete mode 100644 target/linux/mediatek/mt7622/config-4.14
 delete mode 100644 target/linux/mediatek/mt7623/config-4.14
 delete mode 100644 target/linux/mediatek/patches-4.14/0006-reset-mediatek-mt2701-reset-driver.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0012-clk-dont-disable-unused-clocks.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0027-net-next-mediatek-fix-DQL-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0032-net-dsa-mediatek-add-support-for-GMAC2-wired-to-ext-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0033-dsa-multi-cpu.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0035-net-mediatek-disable-RX-VLan-offloading.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0042-net-next-mediatek-honour-special-tag-bit-inside-RX-D.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0043-net-next-mediatek-enable-special-tag-indication-for-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0044-net-next-dsa-mediatek-tell-GDMA-when-we-are-turning-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0045-net-dsa-mediatek-turn-into-platform-driver.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0046-net-mediatek-add-irq-delay.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0051-net-mediatek-increase-tx_timeout.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0052-net-phy-add-FC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0062-mdio-atomic.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0063-atomic-sleep.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0064-dts.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0101-reset-mediatek-add-reset-controller-dt-bindings-requ.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0102-soc-mediatek-pwrap-fixup-warnings-from-coding-style.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0104-usb-mtu3-support-option-to-disable-usb3-ports.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0105-usb-mtu3-remove-dummy-wakeup-debounce-clocks.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0106-usb-mtu3-add-optional-mcu-and-dma-bus-clocks.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0107-usb-mtu3-support-36-bit-DMA-address.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0108-usb-mtu3-use-FORCE-RG_IDDIG-to-implement-manual-DRD-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0109-usb-mtu3-add-support-for-usb3.1-IP.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0110-usb-mtu3-get-optional-vbus-for-host-only-mode.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0111-usb-mtu3-set-invalid-dr_mode-as-dual-role-mode.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0112-usb-mtu3-set-otg_sel-for-u2port-only-if-works-as-dua.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0113-dt-bindings-usb-mtu3-add-a-optional-property-to-disa.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0114-dt-bindings-usb-mtu3-remove-dummy-clocks-and-add-opt.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0115-dt-bindings-usb-mtu3-remove-optional-pinctrls.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0116-dt-bindings-arm-mediatek-add-MT7622-string-to-the-PM.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0117-soc-mediatek-pwrap-add-pwrap_read32-for-reading-in-3.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0118-soc-mediatek-pwrap-add-pwrap_write32-for-writing-in-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0119-soc-mediatek-pwrap-refactor-pwrap_init-for-the-vario.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0120-soc-mediatek-pwrap-add-MediaTek-MT6380-as-one-slave-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0121-soc-mediatek-pwrap-add-common-way-for-setup-CS-timin.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0122-soc-mediatek-pwrap-add-support-for-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0123-soc-mediatek-place-Kconfig-for-all-SoC-drivers-under.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0124-arm64-mediatek-cleanup-message-for-platform-selectio.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0125-phy-phy-mtk-tphy-add-set_mode-callback.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0126-usb-xhci-mtk-use-dma_set_mask_and_coherent-in-probe-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0127-usb-xhci-mtk-use-ports-count-from-xhci-in-xhci_mtk_s.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0128-usb-xhci-mtk-check-clock-stability-of-U3_MAC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0129-usb-xhci-mtk-support-option-to-disable-usb3-ports.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0130-usb-xhci-mtk-remove-dummy-wakeup-debounce-clocks.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0131-usb-xhci-mtk-add-optional-mcu-and-dma-bus-clocks.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0132-usb-host-modify-description-for-MTK-xHCI-config.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0133-dt-bindings-usb-mtk-xhci-add-a-optional-property-to-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0134-dt-bindings-usb-mtk-xhci-remove-dummy-clocks-and-add.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0135-dt-bindings-mtd-add-new-compatible-strings-and-impro.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0136-mtd-mtk-nor-add-suspend-resume-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0137-dt-bindings-rtc-mediatek-add-bindings-for-MediaTek-S.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0138-rtc-mediatek-add-driver-for-RTC-on-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0139-rtc-mediatek-enhance-the-description-for-MediaTek-PM.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0140-mtd-nand-mtk-change-the-compile-sequence-of-mtk_nand.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0142-mmc-dt-bindings-Add-reg-source_cg-latch-ck-for-Media.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0143-mmc-mediatek-add-support-of-mt2701-mt2712.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0144-dt-bindings-ARM-Mediatek-Document-bindings-for-MT271.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0145-clk-mediatek-Add-dt-bindings-for-MT2712-clocks.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0146-clk-mediatek-Add-MT2712-clock-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0147-dt-bindings-clock-mediatek-document-clk-bindings-for.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0149-clk-mediatek-add-clocks-dt-bindings-required-header-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0150-clk-mediatek-add-clock-support-for-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0151-arm64-dts-mt8173-remove-mediatek-mt8135-mmc-from-mmc.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0152-mmc-mediatek-make-hs400_tune_response-only-for-mt817.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0153-mmc-mediatek-add-pad_tune0-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0154-mmc-mediatek-add-async-fifo-and-data-tune-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0155-mmc-mediatek-add-busy_check-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0156-mmc-mediatek-add-stop_clk-fix-and-enhance_rx-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0157-mmc-mediatek-add-support-of-source_cg-clock.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0158-mmc-mediatek-add-latch-ck-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0159-mmc-mediatek-improve-eMMC-hs400-mode-read-performanc.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0160-mmc-mediatek-perfer-to-use-rise-edge-latching-for-cm.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0161-pwm-mediatek-Add-MT2712-MT7622-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0162-mtd-nand-mtk-use-nand_reset-to-reset-NAND-devices-in.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0164-cpufreq-mediatek-add-mt2712-into-compatible-list.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0165-mtd-nand-mtk-update-DT-bindings.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0166-mtd-nand-mtk-Support-different-MTK-NAND-flash-contro.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0167-mtd-nand-mtk-Support-MT7622-NAND-flash-controller.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0168-mmc-dt-bindings-add-mmc-support-to-MT7623-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0169-dt-bindings-pinctrl-add-bindings-for-MediaTek-MT7622.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0170-pinctrl-mediatek-cleanup-for-placing-all-drivers-und.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0171-pinctrl-mediatek-add-pinctrl-driver-for-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0172-clk-mediatek-group-drivers-under-indpendent-menu.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0173-clk-mediatek-fixup-test-building-of-MediaTek-clock-d.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0174-dt-bindings-net-mediatek-add-condition-to-property-m.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0175-net-mediatek-remove-superfluous-pin-setup-for-MT7622.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0176-clk-mediatek-Fix-all-warnings-for-missing-struct-clk.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0178-phy-phy-mtk-tphy-make-shared-banks-optional-for-V1-T.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0179-phy-phy-mtk-tphy-use-of_device_get_match_data.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0180-ASoC-mediatek-fix-error-handling-in-mt2701_afe_pcm_d.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0181-ASoC-mediatek-rework-clock-functions-for-MT2701.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0182-ASoC-mediatek-cleanup-audio-driver-for-MT2701.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0183-ASoC-mediatek-update-clock-related-properties-of-MT2.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0184-ASoC-mediatek-add-some-core-clocks-for-MT2701-AFE.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0185-ASoC-mediatek-modify-MT2701-AFE-driver-to-adapt-mfd-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0186-ASoC-mediatek-update-MT2701-AFE-documentation-to-ada.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0187-usb-mtu3-fix-error-code-for-getting-extcon-device.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0188-usb-mtu3-supports-remote-wakeup-for-mt2712-with-two-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0189-dt-bindings-usb-mtu3-update-USB-wakeup-properties.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0190-usb-xhci-mtk-supports-remote-wakeup-for-mt2712-with-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0191-usb-xhci-allow-imod-interval-to-be-configurable.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0192-dt-bindings-usb-mtk-xhci-update-USB-wakeup-propertie.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0193-clk-mediatek-adjust-dependency-of-reset.c-to-avoid-u.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0194-pinctrl-mediatek-mt7622-fix-potential-uninitialized-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0195-pinctrl-mediatek-mt7622-align-error-handling-of-mtk_.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0196-mtd-mtk-nor-modify-functions-name-more-generally.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0197-hwrng-mediatek-Setup-default-RNG-quality.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0198-dt-bindings-thermal-add-binding-for-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0199-thermal-mtk-Cleanup-unused-defines.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0200-thermal-mediatek-add-support-for-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0201-dt-bindings-clock-mediatek-add-missing-required-rese.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0202-mmc-dt-bindings-add-support-for-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0203-mmc-mediatek-add-support-for-MT7622-SoC.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0204-dt-bindings-dmaengine-Add-MediaTek-High-Speed-DMA-co.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0205-dmaengine-mediatek-Add-MediaTek-High-Speed-DMA-contr.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0206-dt-bindings-clock-mediatek-update-audsys-documentati.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0207-dt-bindings-clock-mediatek-add-audsys-support-for-MT.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0208-clk-mediatek-update-missing-clock-data-for-MT7622-au.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0209-clk-mediatek-add-devm_of_platform_populate-for-MT762.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0210-arm64-dts-mt7622-add-clock-controller-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0211-arm64-dts-mt7622-add-power-domain-controller-device-.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0212-arm64-dts-mt7622-add-pinctrl-related-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0213-arm64-dts-mt7622-add-PMIC-MT6380-related-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0214-arm64-dts-mt7622-add-cpufreq-related-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0215-arm64-dts-mt7622-turn-uart0-clock-to-real-ones.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0216-arm64-dts-mt7622-add-SoC-and-peripheral-related-devi.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0217-arm64-dts-mt7622-add-flash-related-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0218-arm64-dts-mt7622-add-ethernet-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0219-arm64-dts-mt7622-add-PCIe-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0220-arm64-dts-mt7622-add-SATA-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0221-arm64-dts-mt7622-add-usb-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0222-arm64-dts-mt7622-add-High-Speed-DMA-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0223-arm64-dts-mt7622-add-mmc-related-device-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0224-add-mt7622-defconfig-for-testing-these-new-drivers.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0225-arm-dts-Add-missing-mt7623-pcie-nodes.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0226-phy-phy-mtk-tphy-Add-hifsys-support.patch
 delete mode 100644 target/linux/mediatek/patches-4.14/0227-arm-dts-Add-Unielec-U7623-DTS.patch

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
