Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7831A6B11
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 19:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aV2jWQKSC7aAk9yqMsf2vL3szb4nEkN5we0zdydcT7w=; b=QetVmE64/PRKorSZIDYxfGOEzU
	F51Nc2htNB46MH/SbWtWv/UKsVxnx46OZlSvc7cbiDFKxQHbOZzVwz72+tz3KWnaHb80aJDmcyM1a
	UsA4oSHfQAQpENx22lI/ug4LNIpXTofjOEWi0eQt1nthqBi5uKcf3jsgSMccmp2uOPysrHV6/JMzg
	wvrEoCp46Auv6Up8p5jKNM8GgwDHX+sqO1LftbJ6t94kozYD90Kbegom+lsUGdVvXmeXeWAySXw1b
	R6798/yMlitzQHrb0+7hfKZXnNFSBxNtyz60zQtSsCkteGlfCc+lyhV3GsB/d7+yduAa14pRUjZH1
	cX1jsMMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2eG-0007Qf-Ua; Mon, 13 Apr 2020 17:13:29 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2dL-0006Cd-I5
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 17:12:35 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MyvFC-1j2VdQ2V9u-00w12j for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 19:12:26 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 19:11:20 +0200
Message-Id: <20200413171123.48647-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
References: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3wIJ7hmZ+6yv2hMG/KYOr3jIiX6d/GCKoD6YbpKYSvPnZR9gY9X
 DnsIvVY/4GHEN/ZULS7xbs9BVoYBxOoxnHoseN1Qhb9tEPVLavz91gh1yY93GV4RGL6E+D+
 YSgMtaC+sl4P9iR1O1m0NED6GCneqfo3ehvOY/FqIOkJkV36W93QEmYITHU95dBfgD3ofQ/
 4OB3FGgj+mHNrQErr/SFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qEQ+OqbPSZY=:qLsN8OXBn5J3VAowIRZbyq
 VkXVaGIM1yIm73VPcPTIdak9bzVbYHzEzVlRYpmUENH73yHj39zItTtlwSkyzP+1NVMcBuXsV
 4Z6JZjAw7xlKCQY8ouHOLFDZkDKqdaLW9WYZGPAVZKWZJUHsMCktsZuTZa7bnA+WTssiLVDWc
 8iksZiZlNJbff4nFgtEV0Z1QRcZ7RUvHbLGz5HkH72CeDub8WyZqFIF6vYUjLAv2v0lv98TVd
 HvvYbc1cEvnbGsEyScwUjD0r2V2qKtpJiI4XvDovST5epb+/wgg8+VGluweVnEcx9naj51uGJ
 6TUy5wOFplfLEt+l6tpZBsKh9TpmoR7fmF9tLU6z2xObBDvarSFViVj/kTTQBABFCv133+SWG
 f8xnr/Uj1c5HF+OuLH77F2RRiUbDaMDmhXK4d6AA+02BbewsRHxxo+33zByqxqxzFGDL3IIcA
 dcZurBj8HgY8FYKhJ8vU9sFc5UN8z8HLTrxI723B4BcqT2+NujYEXTxD4QyyPAxJ9NjS+tU9G
 0wU+eMaRhV8mQygGJqZl4ZhEgggz145dz86spIBN5SRRWjkfKY1K0tm0FxbHGHDdL3eWvGmwu
 9oSHUxOvJx0c0GeVd1R6RVqT9L4MWBWkvlIZ3Yn8hNt+400c142w4HxloPEU8qLDrVOQJBApD
 V0tvLGpzFPnxZ6UEZGJR/07uair9Ra0DPi2WWPjbC0vy//GPuFAY8mypNIS6/Dm5Wcy5p8QaG
 wL8qKeQ0cm+9MRDBRyVLPvOIiZY6LoK3u31LqymVCoRGZbIavG9hOF2lw2XFaG8UC+Ey99LlB
 S5LwxYo3BVbF03tACRx08zZwdcXcRbE7eTYBihmz1aDcX7jTUN7S6tWQ5sgYH9XBWv+72G4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101231_890937_3E72CEFF 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFT PATCH 3/6] ath25: refresh patches for kernel
 5.4
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

Refresh patches to make them apply to kernel 5.4.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath25/patches-5.4/107-ar5312_gpio.patch   | 20 +++++++++----------
 .../ath25/patches-5.4/108-ar2315_gpio.patch   | 18 ++++++++---------
 .../patches-5.4/110-ar2313_ethernet.patch     | 12 +++++------
 .../ath25/patches-5.4/120-spiflash.patch      |  4 ++--
 .../ath25/patches-5.4/130-watchdog.patch      |  4 ++--
 .../patches-5.4/140-redboot_boardconfig.patch | 14 ++++++-------
 .../141-redboot_partition_scan.patch          | 14 ++++++-------
 .../142-redboot_various_erase_size_fix.patch  | 16 +++++++--------
 8 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/target/linux/ath25/patches-5.4/107-ar5312_gpio.patch b/target/linux/ath25/patches-5.4/107-ar5312_gpio.patch
index e74e20b05a..1bcc7142a7 100644
--- a/target/linux/ath25/patches-5.4/107-ar5312_gpio.patch
+++ b/target/linux/ath25/patches-5.4/107-ar5312_gpio.patch
@@ -52,7 +52,7 @@
  		if (!ath25_board.radio)
 --- a/drivers/gpio/Kconfig
 +++ b/drivers/gpio/Kconfig
-@@ -105,6 +105,13 @@ config GPIO_AMDPT
+@@ -113,6 +113,13 @@ config GPIO_AMDPT
  	  driver for GPIO functionality on Promontory IOHub
  	  Require ACPI ASL code to enumerate as a platform device.
  
@@ -68,14 +68,14 @@
  	depends on (ARCH_ASPEED || COMPILE_TEST) && OF_GPIO
 --- a/drivers/gpio/Makefile
 +++ b/drivers/gpio/Makefile
-@@ -29,6 +29,7 @@ obj-$(CONFIG_GPIO_ALTERA)  	+= gpio-alte
- obj-$(CONFIG_GPIO_ALTERA_A10SR)	+= gpio-altera-a10sr.o
- obj-$(CONFIG_GPIO_AMD8111)	+= gpio-amd8111.o
- obj-$(CONFIG_GPIO_AMDPT)	+= gpio-amdpt.o
-+obj-$(CONFIG_GPIO_AR5312)	+= gpio-ar5312.o
- obj-$(CONFIG_GPIO_ARIZONA)	+= gpio-arizona.o
- obj-$(CONFIG_GPIO_ATH79)	+= gpio-ath79.o
- obj-$(CONFIG_GPIO_ASPEED)	+= gpio-aspeed.o
+@@ -30,6 +30,7 @@ obj-$(CONFIG_GPIO_ALTERA)  		+= gpio-alt
+ obj-$(CONFIG_GPIO_AMD8111)		+= gpio-amd8111.o
+ obj-$(CONFIG_GPIO_AMD_FCH)		+= gpio-amd-fch.o
+ obj-$(CONFIG_GPIO_AMDPT)		+= gpio-amdpt.o
++obj-$(CONFIG_GPIO_AR5312)		+= gpio-ar5312.o
+ obj-$(CONFIG_GPIO_ARIZONA)		+= gpio-arizona.o
+ obj-$(CONFIG_GPIO_ASPEED)		+= gpio-aspeed.o
+ obj-$(CONFIG_GPIO_ATH79)		+= gpio-ath79.o
 --- /dev/null
 +++ b/drivers/gpio/gpio-ar5312.c
 @@ -0,0 +1,121 @@
@@ -202,7 +202,7 @@
 +subsys_initcall(ar5312_gpio_init);
 --- a/arch/mips/Kconfig
 +++ b/arch/mips/Kconfig
-@@ -175,6 +175,7 @@ config ATH25
+@@ -188,6 +188,7 @@ config ATH25
  	select CEVT_R4K
  	select CSRC_R4K
  	select DMA_NONCOHERENT
diff --git a/target/linux/ath25/patches-5.4/108-ar2315_gpio.patch b/target/linux/ath25/patches-5.4/108-ar2315_gpio.patch
index 749b308b89..e198cecf15 100644
--- a/target/linux/ath25/patches-5.4/108-ar2315_gpio.patch
+++ b/target/linux/ath25/patches-5.4/108-ar2315_gpio.patch
@@ -75,7 +75,7 @@
  	 * workaround. Attempt to jump to the mips reset location -
 --- a/drivers/gpio/Kconfig
 +++ b/drivers/gpio/Kconfig
-@@ -105,6 +105,13 @@ config GPIO_AMDPT
+@@ -113,6 +113,13 @@ config GPIO_AMDPT
  	  driver for GPIO functionality on Promontory IOHub
  	  Require ACPI ASL code to enumerate as a platform device.
  
@@ -91,14 +91,14 @@
  	default y if SOC_AR5312
 --- a/drivers/gpio/Makefile
 +++ b/drivers/gpio/Makefile
-@@ -29,6 +29,7 @@ obj-$(CONFIG_GPIO_ALTERA)  	+= gpio-alte
- obj-$(CONFIG_GPIO_ALTERA_A10SR)	+= gpio-altera-a10sr.o
- obj-$(CONFIG_GPIO_AMD8111)	+= gpio-amd8111.o
- obj-$(CONFIG_GPIO_AMDPT)	+= gpio-amdpt.o
-+obj-$(CONFIG_GPIO_AR2315)	+= gpio-ar2315.o
- obj-$(CONFIG_GPIO_AR5312)	+= gpio-ar5312.o
- obj-$(CONFIG_GPIO_ARIZONA)	+= gpio-arizona.o
- obj-$(CONFIG_GPIO_ATH79)	+= gpio-ath79.o
+@@ -30,6 +30,7 @@ obj-$(CONFIG_GPIO_ALTERA)  		+= gpio-alt
+ obj-$(CONFIG_GPIO_AMD8111)		+= gpio-amd8111.o
+ obj-$(CONFIG_GPIO_AMD_FCH)		+= gpio-amd-fch.o
+ obj-$(CONFIG_GPIO_AMDPT)		+= gpio-amdpt.o
++obj-$(CONFIG_GPIO_AR2315)		+= gpio-ar2315.o
+ obj-$(CONFIG_GPIO_AR5312)		+= gpio-ar5312.o
+ obj-$(CONFIG_GPIO_ARIZONA)		+= gpio-arizona.o
+ obj-$(CONFIG_GPIO_ASPEED)		+= gpio-aspeed.o
 --- /dev/null
 +++ b/drivers/gpio/gpio-ar2315.c
 @@ -0,0 +1,233 @@
diff --git a/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch b/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
index a2b1492250..916e57cb36 100644
--- a/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
+++ b/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
@@ -1,22 +1,22 @@
 --- a/drivers/net/ethernet/atheros/Makefile
 +++ b/drivers/net/ethernet/atheros/Makefile
-@@ -8,3 +8,4 @@ obj-$(CONFIG_ATL2) += atlx/
+@@ -9,3 +9,4 @@ obj-$(CONFIG_ATL2) += atlx/
  obj-$(CONFIG_ATL1E) += atl1e/
  obj-$(CONFIG_ATL1C) += atl1c/
  obj-$(CONFIG_ALX) += alx/
 +obj-$(CONFIG_NET_AR231X) += ar231x/
 --- a/drivers/net/ethernet/atheros/Kconfig
 +++ b/drivers/net/ethernet/atheros/Kconfig
-@@ -5,7 +5,7 @@
+@@ -6,7 +6,7 @@
  config NET_VENDOR_ATHEROS
  	bool "Atheros devices"
  	default y
--	depends on PCI
-+	depends on (PCI || ATH25)
+-	depends on (PCI || ATH79)
++	depends on (PCI || ATH25 || ATH79)
  	---help---
  	  If you have a network (Ethernet) card belonging to this class, say Y.
  
-@@ -78,4 +78,10 @@ config ALX
+@@ -87,4 +87,10 @@ config ALX
  	  To compile this driver as a module, choose M here.  The module
  	  will be called alx.
  
@@ -1713,7 +1713,7 @@
 +
  void __init ath25_serial_setup(u32 mapbase, int irq, unsigned int uartclk)
  {
- 	struct uart_port s;
+ #ifdef CONFIG_SERIAL_8250_CONSOLE
 --- a/arch/mips/include/asm/mach-ath25/ath25_platform.h
 +++ b/arch/mips/include/asm/mach-ath25/ath25_platform.h
 @@ -71,4 +71,15 @@ struct ar231x_board_config {
diff --git a/target/linux/ath25/patches-5.4/120-spiflash.patch b/target/linux/ath25/patches-5.4/120-spiflash.patch
index 0a2161fb7e..d49669b976 100644
--- a/target/linux/ath25/patches-5.4/120-spiflash.patch
+++ b/target/linux/ath25/patches-5.4/120-spiflash.patch
@@ -1,6 +1,6 @@
 --- a/drivers/mtd/devices/Kconfig
 +++ b/drivers/mtd/devices/Kconfig
-@@ -130,6 +130,10 @@ config MTD_BCM47XXSFLASH
+@@ -114,6 +114,10 @@ config MTD_BCM47XXSFLASH
  	  registered by bcma as platform devices. This enables driver for
  	  serial flash memories.
  
@@ -13,7 +13,7 @@
  	help
 --- a/drivers/mtd/devices/Makefile
 +++ b/drivers/mtd/devices/Makefile
-@@ -16,6 +16,7 @@ obj-$(CONFIG_MTD_M25P80)	+= m25p80.o
+@@ -15,6 +15,7 @@ obj-$(CONFIG_MTD_DATAFLASH)	+= mtd_dataf
  obj-$(CONFIG_MTD_MCHP23K256)	+= mchp23k256.o
  obj-$(CONFIG_MTD_SPEAR_SMI)	+= spear_smi.o
  obj-$(CONFIG_MTD_SST25L)	+= sst25l.o
diff --git a/target/linux/ath25/patches-5.4/130-watchdog.patch b/target/linux/ath25/patches-5.4/130-watchdog.patch
index 01904d69a5..8a5bd83418 100644
--- a/target/linux/ath25/patches-5.4/130-watchdog.patch
+++ b/target/linux/ath25/patches-5.4/130-watchdog.patch
@@ -212,7 +212,7 @@
 +MODULE_ALIAS("platform:" DRIVER_NAME);
 --- a/drivers/watchdog/Kconfig
 +++ b/drivers/watchdog/Kconfig
-@@ -1647,6 +1647,13 @@ config PIC32_DMT
+@@ -1830,6 +1830,13 @@ config PIC32_DMT
  	  To compile this driver as a loadable module, choose M here.
  	  The module will be called pic32-dmt.
  
@@ -228,7 +228,7 @@
  # POWERPC Architecture
 --- a/drivers/watchdog/Makefile
 +++ b/drivers/watchdog/Makefile
-@@ -166,6 +166,7 @@ obj-$(CONFIG_WDT_MTX1) += mtx-1_wdt.o
+@@ -161,6 +161,7 @@ obj-$(CONFIG_WDT_MTX1) += mtx-1_wdt.o
  obj-$(CONFIG_PNX833X_WDT) += pnx833x_wdt.o
  obj-$(CONFIG_SIBYTE_WDOG) += sb_wdog.o
  obj-$(CONFIG_AR7_WDT) += ar7_wdt.o
diff --git a/target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch b/target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch
index 6aad761cb1..0ffa12eec0 100644
--- a/target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch
+++ b/target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch
@@ -1,6 +1,6 @@
---- a/drivers/mtd/redboot.c
-+++ b/drivers/mtd/redboot.c
-@@ -30,6 +30,8 @@
+--- a/drivers/mtd/parsers/redboot.c
++++ b/drivers/mtd/parsers/redboot.c
+@@ -16,6 +16,8 @@
  #include <linux/mtd/partitions.h>
  #include <linux/module.h>
  
@@ -9,7 +9,7 @@
  struct fis_image_desc {
      unsigned char name[16];      // Null terminated name
      uint32_t	  flash_base;    // Address within FLASH of image
-@@ -60,6 +62,7 @@ static int parse_redboot_partitions(stru
+@@ -67,6 +69,7 @@ static int parse_redboot_partitions(stru
  				    const struct mtd_partition **pparts,
  				    struct mtd_part_parser_data *data)
  {
@@ -17,7 +17,7 @@
  	int nrparts = 0;
  	struct fis_image_desc *buf;
  	struct mtd_partition *parts;
-@@ -225,14 +228,15 @@ static int parse_redboot_partitions(stru
+@@ -234,14 +237,15 @@ static int parse_redboot_partitions(stru
  		}
  	}
  #endif
@@ -35,7 +35,7 @@
  #ifdef CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED
  	if (nulllen > 0) {
  		strcpy(nullname, nullstring);
-@@ -251,6 +255,8 @@ static int parse_redboot_partitions(stru
+@@ -260,6 +264,8 @@ static int parse_redboot_partitions(stru
  	}
  #endif
  	for ( ; i<nrparts; i++) {
@@ -44,7 +44,7 @@
  		parts[i].size = fl->img->size;
  		parts[i].offset = fl->img->flash_base;
  		parts[i].name = names;
-@@ -284,6 +290,13 @@ static int parse_redboot_partitions(stru
+@@ -293,6 +299,13 @@ static int parse_redboot_partitions(stru
  		fl = fl->next;
  		kfree(tmp_fl);
  	}
diff --git a/target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch b/target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch
index d1d281eaf4..3302d6d247 100644
--- a/target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch
+++ b/target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch
@@ -1,8 +1,8 @@
---- a/drivers/mtd/redboot.c
-+++ b/drivers/mtd/redboot.c
-@@ -79,12 +79,18 @@ static int parse_redboot_partitions(stru
- 	static char nullstring[] = "unallocated";
- #endif
+--- a/drivers/mtd/parsers/redboot.c
++++ b/drivers/mtd/parsers/redboot.c
+@@ -88,12 +88,18 @@ static int parse_redboot_partitions(stru
+ 
+ 	parse_redboot_of(master);
  
 +	buf = vmalloc(master->erasesize);
 +	if (!buf)
@@ -19,7 +19,7 @@
  				return -EIO;
  			}
  			offset -= master->erasesize;
-@@ -97,10 +103,6 @@ static int parse_redboot_partitions(stru
+@@ -106,10 +112,6 @@ static int parse_redboot_partitions(stru
  				goto nogood;
  		}
  	}
@@ -30,7 +30,7 @@
  
  	printk(KERN_NOTICE "Searching for RedBoot partition table in %s at offset 0x%lx\n",
  	       master->name, offset);
-@@ -173,6 +175,11 @@ static int parse_redboot_partitions(stru
+@@ -182,6 +184,11 @@ static int parse_redboot_partitions(stru
  	}
  	if (i == numslots) {
  		/* Didn't find it */
diff --git a/target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch b/target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch
index ce039df9f1..2ac0eb92bf 100644
--- a/target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch
+++ b/target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch
@@ -1,7 +1,7 @@
---- a/drivers/mtd/redboot.c
-+++ b/drivers/mtd/redboot.c
-@@ -58,6 +58,22 @@ static inline int redboot_checksum(struc
- 	return 1;
+--- a/drivers/mtd/parsers/redboot.c
++++ b/drivers/mtd/parsers/redboot.c
+@@ -65,6 +65,22 @@ static void parse_redboot_of(struct mtd_
+ 	directory = dirblock;
  }
  
 +static uint32_t mtd_get_offset_erasesize(struct mtd_info *mtd, uint64_t offset)
@@ -23,7 +23,7 @@
  static int parse_redboot_partitions(struct mtd_info *master,
  				    const struct mtd_partition **pparts,
  				    struct mtd_part_parser_data *data)
-@@ -74,6 +90,7 @@ static int parse_redboot_partitions(stru
+@@ -81,6 +97,7 @@ static int parse_redboot_partitions(stru
  	int namelen = 0;
  	int nulllen = 0;
  	int numslots;
@@ -31,7 +31,7 @@
  	unsigned long offset;
  #ifdef CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED
  	static char nullstring[] = "unallocated";
-@@ -186,7 +203,10 @@ static int parse_redboot_partitions(stru
+@@ -195,7 +212,10 @@ static int parse_redboot_partitions(stru
  		goto out;
  	}
  
@@ -43,7 +43,7 @@
  		struct fis_list *new_fl, **prev;
  
  		if (buf[i].name[0] == 0xff) {
-@@ -262,12 +282,13 @@ static int parse_redboot_partitions(stru
+@@ -271,12 +291,13 @@ static int parse_redboot_partitions(stru
  	}
  #endif
  	for ( ; i<nrparts; i++) {
@@ -59,7 +59,7 @@
  		strcpy(names, fl->img->name);
  #ifdef CONFIG_MTD_REDBOOT_PARTS_READONLY
  		if (!memcmp(names, "RedBoot", 8) ||
-@@ -297,7 +318,9 @@ static int parse_redboot_partitions(stru
+@@ -306,7 +327,9 @@ static int parse_redboot_partitions(stru
  		fl = fl->next;
  		kfree(tmp_fl);
  	}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
