Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E901E0FF9
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 15:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yRTeGR5hJhZbHpS5pO7I3wFhdhL2cKQmO7fjHFeFvK4=; b=iaFxdada8Q6LUDCUU4d+qD0rl
	t3/4dYgVUkKvPadiARmwivREzhrlHyfZ3eimtqAv9oz/hU52kFdNZfMMdPJt+TQfsViJMFC2Pig9o
	4nbxyaNG8rUQvHYFFxwd8VdnNIBZVONLXkfjC1owI7n9qkENU1JfBhAXN234wUL8b7z07ZpoAMG2U
	qlZP6dJ/rAhmRwRZ7vg8el2ZmANrk/oxRPmXUcJPyqjqjvfbPgQvBbeByO99KQE8n6jBhJICsaf2P
	3b5Y6/7cKq1NVlmFFQQm62Y0Yr6wg9jUosQpCtllTKtHlhD5wAMpzs1xD5QKa1R18nVHHnNdhXH19
	+UdIQsK/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdDbA-000879-Lt; Mon, 25 May 2020 13:57:00 +0000
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdDb3-00086T-KW
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 13:56:56 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 49VzCt65M1zQlGD;
 Mon, 25 May 2020 15:56:42 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id nl_-e1XZQeKJ; Mon, 25 May 2020 15:56:38 +0200 (CEST)
To: Evgeniy Didin <evgeniy.didin@synopsys.com>,
 Alexey Brodkin <alexey.brodkin@synopsys.com>
References: <20200413103352.7429-1-freifunk@adrianschmutzler.de>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <e7390ef9-58a6-cd9d-88ba-066a37eb85b1@hauke-m.de>
Date: Mon, 25 May 2020 15:56:26 +0200
MIME-Version: 1.0
In-Reply-To: <20200413103352.7429-1-freifunk@adrianschmutzler.de>
X-Rspamd-Queue-Id: 457C71782
X-Rspamd-Score: -7.90 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_065653_977563_A83DCA86 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: Re: [OpenWrt-Devel] [RFT PATCH] arc770: bump kernel to 5.4
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============1463103968300184839=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1463103968300184839==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="0IrYlYnew6t209KZLX0poo3eqQC0SfgPZ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--0IrYlYnew6t209KZLX0poo3eqQC0SfgPZ
Content-Type: multipart/mixed; boundary="fzDbtn5dApGv2SyTldN1tbEa1fxqH5Rb6"

--fzDbtn5dApGv2SyTldN1tbEa1fxqH5Rb6
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 4/13/20 12:33 PM, Adrian Schmutzler wrote:
> Update config with make kernel_oldconfig and copy patch.
>=20
> Directly switch to kernel 5.4.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>=20
> ---
>=20
> I just stupidly copied/refreshed the patch and the config.
>=20
> Build-tested, run-test required as I have no hardware.

Hi Evgeniy and Alexey,

Could you please test, if this patch works?

We would like to get all targets to kernel 5.4 for the next release and
this is one of the targets still at an older kernel. Adrian and I do not
have any hardware to test this.

You can find this patch also on patchwork:
https://patchwork.ozlabs.org/project/openwrt/patch/20200413103352.7429-1-=
freifunk@adrianschmutzler.de/

Hauke

>=20
> ---
>  target/linux/arc770/Makefile                  |   2 +-
>  target/linux/arc770/config-5.4                | 198 ++++++++++++++++++=

>  ...c-Disable-frame-filtering-completely.patch |  31 +++
>  3 files changed, 230 insertions(+), 1 deletion(-)
>  create mode 100644 target/linux/arc770/config-5.4
>  create mode 100644 target/linux/arc770/patches-5.4/700-stmmac-Disable-=
frame-filtering-completely.patch
>=20
> diff --git a/target/linux/arc770/Makefile b/target/linux/arc770/Makefil=
e
> index 8150f147c5..a182ef16a5 100644
> --- a/target/linux/arc770/Makefile
> +++ b/target/linux/arc770/Makefile
> @@ -11,7 +11,7 @@ BOARD:=3Darc770
>  BOARDNAME:=3DSynopsys DesignWare ARC 770D
>  SUBTARGETS:=3Dgeneric
> =20
> -KERNEL_PATCHVER:=3D4.14
> +KERNEL_PATCHVER:=3D5.4
> =20
>  DEVICE_TYPE:=3Ddeveloperboard
> =20
> diff --git a/target/linux/arc770/config-5.4 b/target/linux/arc770/confi=
g-5.4
> new file mode 100644
> index 0000000000..ce712b4c34
> --- /dev/null
> +++ b/target/linux/arc770/config-5.4
> @@ -0,0 +1,198 @@
> +# CONFIG_16KSTACKS is not set
> +CONFIG_ARC=3Dy
> +CONFIG_ARCH_32BIT_OFF_T=3Dy
> +CONFIG_ARCH_HAS_CACHE_LINE_SIZE=3Dy
> +CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN=3Dy
> +CONFIG_ARCH_HAS_DMA_PREP_COHERENT=3Dy
> +CONFIG_ARCH_HAS_PTE_SPECIAL=3Dy
> +CONFIG_ARCH_HAS_SETUP_DMA_OPS=3Dy
> +CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=3Dy
> +CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=3Dy
> +CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=3Dy
> +CONFIG_ARC_BUILTIN_DTB_NAME=3D""
> +CONFIG_ARC_CACHE=3Dy
> +CONFIG_ARC_CACHE_LINE_SHIFT=3D5
> +CONFIG_ARC_CACHE_PAGES=3Dy
> +# CONFIG_ARC_CACHE_VIPT_ALIASING is not set
> +# CONFIG_ARC_COMPACT_IRQ_LEVELS is not set
> +# CONFIG_ARC_CPU_750D is not set
> +CONFIG_ARC_CPU_770=3Dy
> +CONFIG_ARC_CURR_IN_REG=3Dy
> +CONFIG_ARC_DBG=3Dy
> +# CONFIG_ARC_DBG_TLB_PARANOIA is not set
> +CONFIG_ARC_DW2_UNWIND=3Dy
> +CONFIG_ARC_EMUL_UNALIGNED=3Dy
> +# CONFIG_ARC_FPU_SAVE_RESTORE is not set
> +CONFIG_ARC_HAS_DCACHE=3Dy
> +# CONFIG_ARC_HAS_DCCM is not set
> +CONFIG_ARC_HAS_ICACHE=3Dy
> +# CONFIG_ARC_HAS_ICCM is not set
> +CONFIG_ARC_HAS_LLSC=3Dy
> +CONFIG_ARC_HAS_SWAPE=3Dy
> +CONFIG_ARC_KVADDR_SIZE=3D256
> +# CONFIG_ARC_METAWARE_HLINK is not set
> +# CONFIG_ARC_MMU_V1 is not set
> +# CONFIG_ARC_MMU_V2 is not set
> +CONFIG_ARC_MMU_V3=3Dy
> +# CONFIG_ARC_PAGE_SIZE_16K is not set
> +# CONFIG_ARC_PAGE_SIZE_4K is not set
> +CONFIG_ARC_PAGE_SIZE_8K=3Dy
> +CONFIG_ARC_PLAT_AXS10X=3Dy
> +# CONFIG_ARC_PLAT_EZNPS is not set
> +# CONFIG_ARC_PLAT_TB10X is not set
> +CONFIG_ARC_TIMERS=3Dy
> +CONFIG_AXS101=3Dy
> +CONFIG_CC_HAS_KASAN_GENERIC=3Dy
> +# CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3 is not set
> +CONFIG_CLKDEV_LOOKUP=3Dy
> +CONFIG_CLONE_BACKWARDS=3Dy
> +CONFIG_COMMON_CLK=3Dy
> +CONFIG_COMPAT_32BIT_TIME=3Dy
> +CONFIG_CPU_NO_EFFICIENT_FFS=3Dy
> +CONFIG_CRC16=3Dy
> +CONFIG_CRYPTO_CRC32C=3Dy
> +CONFIG_CRYPTO_HASH=3Dy
> +CONFIG_CRYPTO_HASH2=3Dy
> +CONFIG_CRYPTO_RNG2=3Dy
> +CONFIG_DMA_DIRECT_REMAP=3Dy
> +CONFIG_DMA_REMAP=3Dy
> +CONFIG_DTC=3Dy
> +CONFIG_DWMAC_ANARION=3Dy
> +CONFIG_DWMAC_GENERIC=3Dy
> +CONFIG_DW_APB_ICTL=3Dy
> +CONFIG_EXT4_FS=3Dy
> +# CONFIG_EZNPS_GIC is not set
> +CONFIG_FIXED_PHY=3Dy
> +CONFIG_FS_IOMAP=3Dy
> +CONFIG_FS_MBCACHE=3Dy
> +CONFIG_FW_LOADER_PAGED_BUF=3Dy
> +CONFIG_GENERIC_ALLOCATOR=3Dy
> +CONFIG_GENERIC_ATOMIC64=3Dy
> +CONFIG_GENERIC_CLOCKEVENTS=3Dy
> +CONFIG_GENERIC_CSUM=3Dy
> +CONFIG_GENERIC_FIND_FIRST_BIT=3Dy
> +CONFIG_GENERIC_IRQ_CHIP=3Dy
> +CONFIG_GENERIC_IRQ_SHOW=3Dy
> +CONFIG_GENERIC_PCI_IOMAP=3Dy
> +CONFIG_GENERIC_SCHED_CLOCK=3Dy
> +CONFIG_GENERIC_SMP_IDLE_THREAD=3Dy
> +CONFIG_GPIOLIB=3Dy
> +CONFIG_GPIO_DWAPB=3Dy
> +CONFIG_GPIO_GENERIC=3Dy
> +# CONFIG_GPIO_SNPS_CREG is not set
> +CONFIG_HANDLE_DOMAIN_IRQ=3Dy
> +CONFIG_HAS_DMA=3Dy
> +CONFIG_HAS_IOMEM=3Dy
> +CONFIG_HAVE_ARCH_KGDB=3Dy
> +CONFIG_HAVE_ARCH_TRACEHOOK=3Dy
> +CONFIG_HAVE_CLK=3Dy
> +CONFIG_HAVE_CLK_PREPARE=3Dy
> +CONFIG_HAVE_DEBUG_STACKOVERFLOW=3Dy
> +CONFIG_HAVE_FUTEX_CMPXCHG=3Dy
> +CONFIG_HAVE_IOREMAP_PROT=3Dy
> +CONFIG_HAVE_MOD_ARCH_SPECIFIC=3Dy
> +CONFIG_HAVE_NET_DSA=3Dy
> +CONFIG_HAVE_OPROFILE=3Dy
> +CONFIG_HAVE_PCI=3Dy
> +CONFIG_HAVE_PERF_EVENTS=3Dy
> +CONFIG_HZ=3D100
> +CONFIG_HZ_PERIODIC=3Dy
> +CONFIG_INITRAMFS_SOURCE=3D""
> +CONFIG_IRQCHIP=3Dy
> +CONFIG_IRQ_DOMAIN=3Dy
> +CONFIG_IRQ_WORK=3Dy
> +CONFIG_ISA_ARCOMPACT=3Dy
> +# CONFIG_ISA_ARCV2 is not set
> +CONFIG_JBD2=3Dy
> +CONFIG_KALLSYMS=3Dy
> +CONFIG_KERNEL_GZIP=3Dy
> +CONFIG_LIBFDT=3Dy
> +CONFIG_LINUX_LINK_BASE=3D0x80000000
> +CONFIG_LINUX_RAM_BASE=3D0x80000000
> +CONFIG_LOCK_DEBUGGING_SUPPORT=3Dy
> +CONFIG_MDIO_BUS=3Dy
> +CONFIG_MDIO_DEVICE=3Dy
> +CONFIG_MEMFD_CREATE=3Dy
> +CONFIG_MFD_SYSCON=3Dy
> +CONFIG_MIGRATION=3Dy
> +CONFIG_MMC=3Dy
> +CONFIG_MMC_BLOCK=3Dy
> +CONFIG_MMC_DW=3Dy
> +# CONFIG_MMC_DW_BLUEFIELD is not set
> +# CONFIG_MMC_DW_EXYNOS is not set
> +# CONFIG_MMC_DW_HI3798CV200 is not set
> +# CONFIG_MMC_DW_K3 is not set
> +CONFIG_MMC_DW_PLTFM=3Dy
> +CONFIG_MMC_SDHCI=3Dy
> +CONFIG_MMC_SDHCI_PLTFM=3Dy
> +CONFIG_MODULES_USE_ELF_RELA=3Dy
> +CONFIG_NATIONAL_PHY=3Dy
> +CONFIG_NEED_DMA_MAP_STATE=3Dy
> +CONFIG_NEED_PER_CPU_KM=3Dy
> +CONFIG_NET_PTP_CLASSIFY=3Dy
> +# CONFIG_NET_VENDOR_ARC is not set
> +# CONFIG_NET_VENDOR_BROADCOM is not set
> +# CONFIG_NET_VENDOR_INTEL is not set
> +# CONFIG_NET_VENDOR_MARVELL is not set
> +# CONFIG_NET_VENDOR_MICREL is not set
> +# CONFIG_NET_VENDOR_NATSEMI is not set
> +# CONFIG_NET_VENDOR_QUALCOMM is not set
> +# CONFIG_NET_VENDOR_ROCKER is not set
> +# CONFIG_NET_VENDOR_SAMSUNG is not set
> +# CONFIG_NET_VENDOR_SEEQ is not set
> +# CONFIG_NET_VENDOR_VIA is not set
> +# CONFIG_NET_VENDOR_WIZNET is not set
> +CONFIG_NO_IOPORT_MAP=3Dy
> +CONFIG_OF=3Dy
> +CONFIG_OF_ADDRESS=3Dy
> +CONFIG_OF_EARLY_FLATTREE=3Dy
> +CONFIG_OF_FLATTREE=3Dy
> +CONFIG_OF_GPIO=3Dy
> +CONFIG_OF_IRQ=3Dy
> +CONFIG_OF_KOBJ=3Dy
> +CONFIG_OF_MDIO=3Dy
> +CONFIG_OF_NET=3Dy
> +CONFIG_PAGE_POOL=3Dy
> +CONFIG_PGTABLE_LEVELS=3D2
> +CONFIG_PHYLIB=3Dy
> +CONFIG_PHYLINK=3Dy
> +CONFIG_PPS=3Dy
> +CONFIG_PREEMPT=3Dy
> +CONFIG_PREEMPTION=3Dy
> +CONFIG_PREEMPT_COUNT=3Dy
> +# CONFIG_PREEMPT_NONE is not set
> +CONFIG_PREEMPT_RCU=3Dy
> +CONFIG_PTP_1588_CLOCK=3Dy
> +CONFIG_RATIONAL=3Dy
> +CONFIG_RCU_NEED_SEGCBLIST=3Dy
> +CONFIG_RCU_STALL_COMMON=3Dy
> +CONFIG_REGMAP=3Dy
> +CONFIG_REGMAP_MMIO=3Dy
> +CONFIG_RESET_AXS10X=3Dy
> +CONFIG_RESET_CONTROLLER=3Dy
> +CONFIG_RESET_SIMPLE=3Dy
> +CONFIG_SERIAL_8250_DEPRECATED_OPTIONS=3Dy
> +CONFIG_SERIAL_8250_DW=3Dy
> +CONFIG_SERIAL_8250_DWLIB=3Dy
> +CONFIG_SERIAL_8250_NR_UARTS=3D4
> +CONFIG_SERIAL_8250_RUNTIME_UARTS=3D4
> +CONFIG_SERIAL_ARC=3Dy
> +CONFIG_SERIAL_ARC_CONSOLE=3Dy
> +CONFIG_SERIAL_ARC_NR_PORTS=3D1
> +CONFIG_SERIAL_MCTRL_GPIO=3Dy
> +CONFIG_SERIAL_OF_PLATFORM=3Dy
> +CONFIG_SRCU=3Dy
> +CONFIG_STACKTRACE=3Dy
> +CONFIG_STMMAC_ETH=3Dy
> +CONFIG_STMMAC_PLATFORM=3Dy
> +# CONFIG_STMMAC_SELFTESTS is not set
> +CONFIG_SWPHY=3Dy
> +CONFIG_SYSCTL_ARCH_UNALIGN_ALLOW=3Dy
> +CONFIG_SYSCTL_ARCH_UNALIGN_NO_WARN=3Dy
> +CONFIG_TASKS_RCU=3Dy
> +CONFIG_TICK_CPU_ACCOUNTING=3Dy
> +CONFIG_TIMER_OF=3Dy
> +CONFIG_TIMER_PROBE=3Dy
> +CONFIG_TREE_SRCU=3Dy
> +CONFIG_UNINLINE_SPIN_UNLOCK=3Dy
> +CONFIG_USB_SUPPORT=3Dy
> diff --git a/target/linux/arc770/patches-5.4/700-stmmac-Disable-frame-f=
iltering-completely.patch b/target/linux/arc770/patches-5.4/700-stmmac-Di=
sable-frame-filtering-completely.patch
> new file mode 100644
> index 0000000000..9adfcb1be2
> --- /dev/null
> +++ b/target/linux/arc770/patches-5.4/700-stmmac-Disable-frame-filterin=
g-completely.patch
> @@ -0,0 +1,31 @@
> +From 0031b9011cb2b2b1de4dbb4f9620303aec760db4 Mon Sep 17 00:00:00 2001=

> +From: Alexey Brodkin <abrodkin@synopsys.com>
> +Date: Wed, 27 Jul 2016 11:33:14 +0300
> +Subject: [PATCH] stmmac: Disable frame filtering completely
> +
> +For some [still unknown] reason in ARC SDP boards
> +DW GMAC doesn't enter promiscuous mode if eth0 gets
> +added to the br-lan interface before Ethernet PHY finishes
> +autonegotiation (PHY gets reset on DW GMAC start).
> +
> +As a work-around we completely disable frame filtering
> +in GMAC hardware which gives us working bridge that consists
> +of eth0 and wlan0 (USB Wi-Fi dongle). I.e. we finally have
> +working "Dumb AP" setup made of ARC AXS10x boards.
> +
> +Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
> +---
> + drivers/net/ethernet/stmicro/stmmac/common.h | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +--- a/drivers/net/ethernet/stmicro/stmmac/common.h
> ++++ b/drivers/net/ethernet/stmicro/stmmac/common.h
> +@@ -42,7 +42,7 @@
> + #define STMMAC_GET_ENTRY(x, size)	((x + 1) & (size - 1))
> +=20
> + #undef FRAME_FILTER_DEBUG
> +-/* #define FRAME_FILTER_DEBUG */
> ++#define FRAME_FILTER_DEBUG
> +=20
> + /* Extra statistic and debug information exposed by ethtool */
> + struct stmmac_extra_stats {
>=20



--fzDbtn5dApGv2SyTldN1tbEa1fxqH5Rb6--

--0IrYlYnew6t209KZLX0poo3eqQC0SfgPZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl7LzooACgkQ8bdnhZyy
68czwgf/XotxmNes//1oLiUYV5dDh8Nwkz06UO8DNoSxIcOidGyk0X5zZh0MtLKn
1L7NfX8lOQyiN1FssgVbgbifqa2NuxPEk7shyDt6clBYk8kbC4qFgsjxr3Ur4B8b
g7wkc1dzSLBz1tfIh5Wbx+82xgQ2i72giVi2NX8PmQiJusw4f9A+XHHMgz/HoSuI
NzI6rUeHoJ36liU8YNSESYwQgoSgp9wYBloiAS6CWtJzB5v9EvbA3qGPogTJZ3U9
5SbjmAa9y6c8Ev5Q59xocj++cU2KK1lHxd4Lpw8WVekodpFsxH493oF0hjMRHBVL
BHSj3rNNoW7oopg8Q71172u5XO4puQ==
=TWs4
-----END PGP SIGNATURE-----

--0IrYlYnew6t209KZLX0poo3eqQC0SfgPZ--


--===============1463103968300184839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1463103968300184839==--

