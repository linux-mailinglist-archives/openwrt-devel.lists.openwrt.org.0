Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB5F149116
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Jan 2020 23:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBJxRR5mu0Kr3clxHSYSIPVBThSi1RT5Csp2lbjT2H4=; b=EgHSD4isAMkTIs
	anCdPNXVWu1SVX4ROBCna5nYkoUqDGgJecn6cl1Ko94dmbdgReiP5RRxZNwIVh+WRHhoEwIr2YFxe
	EVslBTpXecda1Ue+tgv1R5vuica+xnOwPV+Qo037UKp1VxuKz2/qRxRFU4rS4UkE5CQomuaVqRXxQ
	IZaWJZIteI5v0USjjW7XpEae5DzdQ3zER+xod6Sf/1woh4yDAXgUbkiJPe0j6rANBT0idpYWAXLnR
	6WF+5J4C/NGBMCACpmjaCwDKyswiExxabBwTgR2ccrbyMsP0xS8oJpYn1Vr5x/Gb+gxnk2SoCbRIm
	D6d/Uee6BO3Fn02DD+OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7dm-0008PQ-AK; Fri, 24 Jan 2020 22:41:26 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7dd-0008P2-GG
 for openwrt-devel@lists.openwrt.org; Fri, 24 Jan 2020 22:41:19 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N8onW-1ji5XS3YIg-015uE4 for <openwrt-devel@lists.openwrt.org>; Fri, 24
 Jan 2020 23:41:12 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 24 Jan 2020 23:40:22 +0100
Message-Id: <20200124224022.30086-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:nyae/z0FwuCkfbBk5pKsJfErvQkPMQYS3Mqs2XO5ITekuEyh70j
 0rZdYDWBIYY5uwsA1RnmAFFY1cH2ptWF6S91grQMchCkNN6VcwLXOFAbec0Wrw4/79mlJC6
 QtiEpoFPiiTQOAr1n3iq2ygd6luinWcrPjI33GQrR3v7BOh8unS6oy8XEa8fidhsR5cI6bm
 qjm0kERTackFRaD4UlR9w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TiERQTYQuCc=:0T2lG2QH2Qy7J0JJB6WWPE
 d3Rl6caoX8WlpwrdJOkR4uuyGE76JRkQP4DwQtD7LFsA0z0hoTcG5oVAyrb5dAV7fhHSuzFZM
 PXYZm80Pmp/ap6nYiFsO6QcNZCW9XK5C7WNniZN4Ji5eMmEDrD1TjuNUe4gSal3JvdFhYpzY8
 E3CzqbxWwG9SV5LtCxLXJM/41esfQIxS9heQeVvJoom106XxKCcwu6zNOV8uCyqY5fHeSIDfz
 r6ptvTiq+7lVGyE5yqCKSfEEWFWl0v3QTbzAO7amCvumue8ArfNWTkDSg4wxEzhk+axMJ+gTr
 tSq9g63jatm7OjIFsl91yF8+BtcggVk2WWonXa1jw0ioEFtdPZQCklmy3H0wEZePEcfgaDDu/
 +Z7baqkx9pFQ94SRPffnyCNpELhAZsjSAan8pCFOiKhpdZld/tRi0W+2EteyxUJDEAQka2Y0U
 wbN3Q9aaLKooe0g/L/weh5HRVCyv3/IyhW8zT6MigilFqsllhdaWb0wvet1z62zZOMjeQ6m7f
 nQtAMPogMUtvPvQ/xNGIF0qWzCJMJCKoCxKYk7E3AuzPYzW0ibmMCYpdLLdhYsIfga9c25V46
 zm1jvwlTHaSw8z6GhAcGV66YBrfyhCDV7NLLBNGRkIeOaMc7mB6gySGY39l1dknN76GUTFuXN
 GgnMxF3tlGkegnxjxDe8U9tb9pFXVl8NxvVKjlIvm2NpPtMsKhs1Rr9FcYuXIQfEW/LkFRB9p
 PSeO0toZAmzekCRaLZpaVD6VpuLwpssdR1CL6twiyg913+8WcxtgPPDuDnM9U7GIypQZPkfwv
 6NW+9YrWE3vXnSJAeM+TiJATQ1hKQYnDuYvpyptwLh4gCK2NY6RZXh+XP5qu8fYOG6gTLG9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_144117_834434_13D51CA0 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel: use older kernel for explicitly
 setting dependencies
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

It is generally more desirable to use older kernel versions for
dependencies, as this will require less changes when newer kernels
are added (they will by default select the newer packages).

Since we currently only have two kernels (4.14 and 4.19) in master,
this patch applies this logic by converting all LINUX_4_19 symbols
to their inverted LINUX_4_14 equivalents.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/kernel/i2c-gpio-custom/Makefile    | 2 +-
 package/kernel/linux/modules/iio.mk        | 2 +-
 package/kernel/linux/modules/netdevices.mk | 2 +-
 package/kernel/linux/modules/netfilter.mk  | 2 +-
 package/kernel/linux/modules/netsupport.mk | 2 +-
 package/kernel/linux/modules/other.mk      | 8 ++++----
 package/kernel/linux/modules/usb.mk        | 2 +-
 package/kernel/linux/modules/video.mk      | 2 +-
 package/kernel/spi-gpio-custom/Makefile    | 2 +-
 package/kernel/w1-gpio-custom/Makefile     | 2 +-
 10 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/package/kernel/i2c-gpio-custom/Makefile b/package/kernel/i2c-gpio-custom/Makefile
index 4891423d5c..11095abbb8 100644
--- a/package/kernel/i2c-gpio-custom/Makefile
+++ b/package/kernel/i2c-gpio-custom/Makefile
@@ -16,7 +16,7 @@ include $(INCLUDE_DIR)/package.mk
 define KernelPackage/i2c-gpio-custom
   SUBMENU:=I2C support
   TITLE:=Custom GPIO-based I2C device
-  DEPENDS:=@GPIO_SUPPORT +kmod-i2c-core +kmod-i2c-gpio @!LINUX_4_19
+  DEPENDS:=@GPIO_SUPPORT +kmod-i2c-core +kmod-i2c-gpio @LINUX_4_14
   FILES:=$(PKG_BUILD_DIR)/i2c-gpio-custom.ko
   KCONFIG:=
 endef
diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index ce6705a59a..cd46697168 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -131,7 +131,7 @@ $(eval $(call KernelPackage,iio-dht11))
 define KernelPackage/iio-bme680
   SUBMENU:=$(IIO_MENU)
   TITLE:=BME680 gas/humidity/pressure/temperature sensor
-  DEPENDS:=@LINUX_4_19 +kmod-iio-core +kmod-regmap-core
+  DEPENDS:=@!LINUX_4_14 +kmod-iio-core +kmod-regmap-core
   KCONFIG:=CONFIG_BME680
   FILES:=$(LINUX_DIR)/drivers/iio/chemical/bme680_core.ko
 endef
diff --git a/package/kernel/linux/modules/netdevices.mk b/package/kernel/linux/modules/netdevices.mk
index 5bfd1617a3..2854ce31fa 100644
--- a/package/kernel/linux/modules/netdevices.mk
+++ b/package/kernel/linux/modules/netdevices.mk
@@ -541,7 +541,7 @@ $(eval $(call KernelPackage,8139cp))
 define KernelPackage/r8169
   SUBMENU:=$(NETWORK_DEVICES_MENU)
   TITLE:=RealTek RTL-8169 PCI Gigabit Ethernet Adapter kernel support
-  DEPENDS:=@PCI_SUPPORT +kmod-mii +r8169-firmware +LINUX_4_19:kmod-phy-realtek
+  DEPENDS:=@PCI_SUPPORT +kmod-mii +r8169-firmware +!LINUX_4_14:kmod-phy-realtek
   KCONFIG:=CONFIG_R8169 \
     CONFIG_R8169_NAPI=y \
     CONFIG_R8169_VLAN=n
diff --git a/package/kernel/linux/modules/netfilter.mk b/package/kernel/linux/modules/netfilter.mk
index 3ecbf868c2..7eda8e6270 100644
--- a/package/kernel/linux/modules/netfilter.mk
+++ b/package/kernel/linux/modules/netfilter.mk
@@ -540,7 +540,7 @@ define KernelPackage/nf-nathelper-extra
   KCONFIG:=$(KCONFIG_NF_NATHELPER_EXTRA)
   FILES:=$(foreach mod,$(NF_NATHELPER_EXTRA-m),$(LINUX_DIR)/net/$(mod).ko)
   AUTOLOAD:=$(call AutoProbe,$(notdir $(NF_NATHELPER_EXTRA-m)))
-  DEPENDS:=+kmod-nf-nat +kmod-lib-textsearch +kmod-ipt-raw +LINUX_4_19:kmod-asn1-decoder
+  DEPENDS:=+kmod-nf-nat +kmod-lib-textsearch +kmod-ipt-raw +!LINUX_4_14:kmod-asn1-decoder
 endef
 
 define KernelPackage/nf-nathelper-extra/description
diff --git a/package/kernel/linux/modules/netsupport.mk b/package/kernel/linux/modules/netsupport.mk
index 3656441650..ada35acddc 100644
--- a/package/kernel/linux/modules/netsupport.mk
+++ b/package/kernel/linux/modules/netsupport.mk
@@ -1143,7 +1143,7 @@ $(eval $(call KernelPackage,rxrpc))
 define KernelPackage/mpls
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
   TITLE:=MPLS support
-  DEPENDS:=+LINUX_4_19:kmod-iptunnel
+  DEPENDS:=+!LINUX_4_14:kmod-iptunnel
   KCONFIG:= \
 	CONFIG_MPLS=y \
 	CONFIG_LWTUNNEL=y \
diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index b65d0155db..d3e062743d 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -169,7 +169,7 @@ define KernelPackage/eeprom-at24
   SUBMENU:=$(OTHER_MENU)
   TITLE:=EEPROM AT24 support
   KCONFIG:=CONFIG_EEPROM_AT24
-  DEPENDS:=+kmod-i2c-core +kmod-nvmem +LINUX_4_19:kmod-regmap-i2c
+  DEPENDS:=+kmod-i2c-core +kmod-nvmem +!LINUX_4_14:kmod-regmap-i2c
   FILES:=$(LINUX_DIR)/drivers/misc/eeprom/at24.ko
   AUTOLOAD:=$(call AutoProbe,at24)
 endef
@@ -938,7 +938,7 @@ $(eval $(call KernelPackage,ptp))
 define KernelPackage/ptp-gianfar
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Freescale Gianfar PTP support
-  DEPENDS:=@TARGET_mpc85xx +kmod-ptp @!LINUX_4_19
+  DEPENDS:=@TARGET_mpc85xx +kmod-ptp @LINUX_4_14
   KCONFIG:=CONFIG_PTP_1588_CLOCK_GIANFAR
   FILES:=$(LINUX_DIR)/drivers/net/ethernet/freescale/gianfar_ptp.ko
   AUTOLOAD:=$(call AutoProbe,gianfar_ptp)
@@ -954,7 +954,7 @@ $(eval $(call KernelPackage,ptp-gianfar))
 define KernelPackage/ptp-qoriq
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Freescale QorIQ PTP support
-  DEPENDS:=@TARGET_mpc85xx +kmod-ptp @LINUX_4_19
+  DEPENDS:=@TARGET_mpc85xx +kmod-ptp @!LINUX_4_14
   KCONFIG:=CONFIG_PTP_1588_CLOCK_QORIQ
   FILES:=$(LINUX_DIR)/drivers/ptp/ptp_qoriq.o
   AUTOLOAD:=$(call AutoProbe,ptp_qoriq)
@@ -987,7 +987,7 @@ define KernelPackage/random-tpm
   TITLE:=Hardware Random Number Generator TPM support
   KCONFIG:=CONFIG_HW_RANDOM_TPM
   FILES:=$(LINUX_DIR)/drivers/char/hw_random/tpm-rng.ko
-  DEPENDS:= +kmod-random-core +kmod-tpm @!LINUX_4_19
+  DEPENDS:= +kmod-random-core +kmod-tpm @LINUX_4_14
   AUTOLOAD:=$(call AutoProbe,tpm-rng)
 endef
 
diff --git a/package/kernel/linux/modules/usb.mk b/package/kernel/linux/modules/usb.mk
index 30be6221b7..6ea112634c 100644
--- a/package/kernel/linux/modules/usb.mk
+++ b/package/kernel/linux/modules/usb.mk
@@ -496,7 +496,7 @@ $(eval $(call KernelPackage,usb-dwc3-of-simple))
 
 define KernelPackage/usb-dwc3-qcom
   TITLE:=DWC3 Qualcomm USB driver
-  DEPENDS:=@LINUX_4_19 @(TARGET_ipq40xx||TARGET_ipq806x) +kmod-usb-dwc3
+  DEPENDS:=@!LINUX_4_14 @(TARGET_ipq40xx||TARGET_ipq806x) +kmod-usb-dwc3
   KCONFIG:= CONFIG_USB_DWC3_QCOM
   FILES:= $(LINUX_DIR)/drivers/usb/dwc3/dwc3-qcom.ko
   AUTOLOAD:=$(call AutoLoad,53,dwc3-qcom,1)
diff --git a/package/kernel/linux/modules/video.mk b/package/kernel/linux/modules/video.mk
index f726d0ef03..d385a427c6 100644
--- a/package/kernel/linux/modules/video.mk
+++ b/package/kernel/linux/modules/video.mk
@@ -511,7 +511,7 @@ $(eval $(call KernelPackage,video-uvc))
 define KernelPackage/video-gspca-core
   MENU:=1
   TITLE:=GSPCA webcam core support framework
-  DEPENDS:=@USB_SUPPORT +kmod-usb-core +kmod-input-core +LINUX_4_19:kmod-video-videobuf2
+  DEPENDS:=@USB_SUPPORT +kmod-usb-core +kmod-input-core +!LINUX_4_14:kmod-video-videobuf2
   KCONFIG:=CONFIG_USB_GSPCA
   FILES:=$(LINUX_DIR)/drivers/media/$(V4L2_USB_DIR)/gspca/gspca_main.ko
   AUTOLOAD:=$(call AutoProbe,gspca_main)
diff --git a/package/kernel/spi-gpio-custom/Makefile b/package/kernel/spi-gpio-custom/Makefile
index b0da3db188..34a478fb5d 100644
--- a/package/kernel/spi-gpio-custom/Makefile
+++ b/package/kernel/spi-gpio-custom/Makefile
@@ -16,7 +16,7 @@ include $(INCLUDE_DIR)/package.mk
 define KernelPackage/spi-gpio-custom
   SUBMENU:=SPI Support
   TITLE:=Custom GPIO-based SPI device
-  DEPENDS:=@GPIO_SUPPORT +kmod-spi-bitbang +kmod-spi-gpio +kmod-spi-dev @!LINUX_4_19
+  DEPENDS:=@GPIO_SUPPORT +kmod-spi-bitbang +kmod-spi-gpio +kmod-spi-dev @LINUX_4_14
   FILES:=$(PKG_BUILD_DIR)/spi-gpio-custom.ko
   KCONFIG:=
 endef
diff --git a/package/kernel/w1-gpio-custom/Makefile b/package/kernel/w1-gpio-custom/Makefile
index 021791ff94..5445097a81 100644
--- a/package/kernel/w1-gpio-custom/Makefile
+++ b/package/kernel/w1-gpio-custom/Makefile
@@ -16,7 +16,7 @@ include $(INCLUDE_DIR)/package.mk
 define KernelPackage/w1-gpio-custom
   SUBMENU:=W1 support
   TITLE:=Custom GPIO-based 1-wire device
-  DEPENDS:=kmod-w1 +kmod-w1-master-gpio @!LINUX_4_19
+  DEPENDS:=kmod-w1 +kmod-w1-master-gpio @LINUX_4_14
   FILES:=$(PKG_BUILD_DIR)/w1-gpio-custom.ko
   KCONFIG:=
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
