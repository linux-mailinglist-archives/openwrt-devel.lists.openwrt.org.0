Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D9119B8A9
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 00:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uhMOhe/AbURoGtitRqZZyorF8itkRM/B7yPZgQyhQ2A=; b=Lm8VkcUO7D2SG4
	czXF+YlTGmT2Nq28Zo720cdTvNHKCUmt7yN+6WeeZVghpSQY0S4NAKCzLMA/4+0yt/cWZRQG9yKvi
	4em+Y9EoryWIJ2wqFR/f9UucSphRH5dUPNm2mOKRWt1NpBt8oghM0DXkhQgpiomHWvGVpUkqe/bRS
	mhzHyThNLsncqPKc5t7lwI8jkENWMiXeb0Cjlc9kE6rDRGgOG5WYwMOpF1Es+OXYlJ8ZVNi7tAMLD
	9gu79EV7NunvVha0qM/79k3WMi/knE2lQ6bOE9WGxnWF/3qwT55+JKfz9o4ljJmErmhFDporo3/OP
	Jxis+7jQ43WcwbCKUp6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJmBV-0001bO-Ms; Wed, 01 Apr 2020 22:50:10 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJmBF-0001aK-VH
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 22:49:56 +0000
Received: from buildfff.adridolf.com ([188.192.133.231]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MLhwM-1jbRaZ3YaO-00HgHk for <openwrt-devel@lists.openwrt.org>; Thu, 02
 Apr 2020 00:49:51 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 00:49:06 +0200
Message-Id: <20200401224907.2858-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Gtg8R/s4/lPC23f6/mJVAuWRYJ1qJPZlIEfoi2/xwQZg9i8Zzfd
 x1Hc2L+2ZCAkQwpZ4HDRVIQgq67g4F60tXvWlha0frSxS8DTun3V7XR7jOL0t6Mo7iUt6eV
 pMGnzKuwy9SBMu1Gf3mkKa33Og1RV8qc5aOCxedU/7Thnw6eGT7kwo8Y36LDdDfcr+1wxwe
 c32w+34WrQN+Bx6uJhp6w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LkTnLyCpMPw=:LrfNo7KiWQlyDHKNOXnTuh
 dBed8Qzgk/1TnXlgXeBS2mZ6nAw4EMGlC1PQP7QkhaT62/eURg8KfOmAdBFHSN/SFxu4QZZiP
 estRlc307FxkZo09VVWhAxZtIXeNk3HdX7hsiQNlJS17R0t5YVmDIjj6tpHCOC1cmnQhkEfRR
 17lq8DzL25gaIhrd3E0O3/ONPEDNtTO1SheADdHrAYDJpLNz8L0O9MWc/MWEIHXRc0mVhDGgO
 iOdE3sz+gqaMoHCGdtSBUK904ypaN22MLFogK2QddwZBG2HrFDhJBl/NLDLaQcBc4ip7+ak36
 uQNp7mm4RTcSv7AxMhjFSX63xR5TXiqStYJwWxvy+e2zSE9ljhC5AfVqTVwnuskBWGvj9mA92
 r5gShz701WbSWZcSF0jzfcQRAFbme6r5ZK7fZIHRAR1SxWGsJzyj5jOAQ6ANDfNigH9epKWKy
 iGUPobS8FjDt+mIZoilakigLEt6QOlqVXKyWpbKIhcVGyCmYWFQ53T5ij+vMCymFKlm6hBPz1
 GMsWnKCJJ2G0F82OqrTpkq5rv03xPixPBIvbmIWDS0WnAhQDiEOYpYG7FXpTWBWcLsyXcJruv
 cH/U+hJdr71zJRclwY47TNasWzZZESIbsAZlpZZJvimQOwctGircHK3Eg5JZXLJ0IYChCRWKA
 kTTCdvZWIQn8feoAVzHFH0edeqaS1Nh0R1ynB6OyPiWdwv4GurIRgCm0IcXKw1/iw8AYfrNm6
 8/nO24fSxTd2Jchzbal1OZ1l2tU3VWSPaQ09Bwmt5EAF71jdcPMik0PwzDXBRHSAMgihEj3I/
 y3afUKatumGtLfT3QMw09aZB+dcQmQbRV9+9Cm59CZCI2UuRV4OqI1akK1HThzpAr/mxy9h
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_154954_296776_CCEF0631 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/3] ipq806x: remove support for kernel 4.14
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

This target has been on kernel 4.19 for several months [1] and
already uses kernel 5.4 as testing kernel. Therefore, it should
not be necessary to keep support for kernel 4.14 as well.

[1] 2a82e0e1ca0f ("ipq806x: switch to 4.19 kernel version")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
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
 70 files changed, 26575 deletions(-)
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

---

CUT HERE SINCE IT'S TOO BIG FOR THE MAILING LIST


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
