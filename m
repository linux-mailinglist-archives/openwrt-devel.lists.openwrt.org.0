Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DBF98331
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 20:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=psdlkInMGUZ3bW8cDWcCpphbjYCOXLbSRf4KUSaMtm4=; b=lBNIeVio/1OXH16qYSwDLjA3A
	T9eXgzh2ZpLhd1FP7rkVMv9GNmQdSYtVsEUga7dQATqB3ropLsFVj9DrzMHQtfJi4jIyBjo3kcj7s
	uBRV3S3LkMXbOvxW7nRwk+UEASC+sPsGm4LL4ltzikiRprn1wUBeVWKafPb8kBPijETeyrKeJ5ooN
	9ojlpXiCbQLCvmqFYiO+KUuQ7L5eRlHS0BSgK2DCfesq27pwAYkeF5ngjQAzM/Q2Tpu0G5PLpdwK6
	Tx4FuDFA1w+rOEocP7InbaPRCpJoLaCvGB2GReGN6tLt3XZ5bA7MYJYttC3mdNyuSbwg8p66/ELuD
	RKqKaJU6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VVC-0003Qn-C3; Wed, 21 Aug 2019 18:38:34 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VTF-0001WE-C3
 for openwrt-devel@lists.openwrt.org; Wed, 21 Aug 2019 18:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1566412591;
 s=strato-dkim-0002; d=heimpold.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=xbJGFJv1/ODwLoUex71m1vWbz1pGj32/9umMKcSXqts=;
 b=LC2QEoMDYkq8F6cNk8dX00ndg7oq20/fQVMUIB2toEIiGriKsNIqapNG4Iwn4PVmWc
 82vFnhO9F4k/ck3cTQByldFp1xCdRdspLp59oyZrInNhbLv2ymSuGYoLNQ4w1lSgyOUJ
 AdOi3jjJBVSS7U77askK349gKM9RovzcA0/3dWgP8qnaXCRfDbqlwn3eZCu9M5j5RNAR
 q6P8BNkj3aLafrCnL9J33Qx9ChkB9NVtyDpB0Nx3x8N7lobCR3eeSTSNG0whKYi6Z5Tg
 KdhdUPRF7gLuZV7IzUKYFpx4XxAFmg3gvvNuPjaCfVxGVnPWDEMTAK443S7NDNxAthkE
 i0Rw==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGQORRBv+ASfYPl1MuQZoWvPexcoOK3Ze1NbkiB3TZH9n6HqHKCdg=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr by smtp.strato.de (RZmta 44.26.1 AUTH)
 with ESMTPSA id g06df7v7LIaVzmm
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 21 Aug 2019 20:36:31 +0200 (CEST)
Received: from kerker.localnet (kerker.mhei.heimpold.itr [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 027F31537AE;
 Wed, 21 Aug 2019 20:36:30 +0200 (CEST)
From: Michael Heimpold <mhei@heimpold.de>
To: wigyori@uid0.hu
Date: Wed, 21 Aug 2019 20:36:30 +0200
Message-ID: <2599933.7etakSJPWu@kerker>
In-Reply-To: <20190731214500.11740-1-mhei@heimpold.de>
References: <20190731214500.11740-1-mhei@heimpold.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113633_645166_87A7612E 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:11 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: Re: [OpenWrt-Devel] [PATCH] mxs: add support and switch to kernel
 4.19
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============2092570883673978124=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2092570883673978124==
Content-Type: multipart/signed; boundary="nextPart1860025.DtUUqFbeYR"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart1860025.DtUUqFbeYR
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi wigyori,

Am Mittwoch, 31. Juli 2019, 23:45:00 CEST schrieb Michael Heimpold:
> Also remove kernel 4.14 support and the meanwhile obsolete patch.
> 
> This was run-tested on I2SE Duckbill device and
> Olimex OLinuXino Maxi board.

here too, any objections?

Best regards,
mhei

> 
> Signed-off-by: Michael Heimpold <mhei@heimpold.de>
> ---
>  target/linux/mxs/Makefile                     |  2 +-
>  target/linux/mxs/{config-4.14 => config-4.19} | 42 +++++++--------
>  ...0-crypto-mxsdcp-provide-importexport.patch | 51 -------------------
>  3 files changed, 19 insertions(+), 76 deletions(-)
>  rename target/linux/mxs/{config-4.14 => config-4.19} (89%)
>  delete mode 100644
> target/linux/mxs/patches-4.14/110-crypto-mxsdcp-provide-importexport.patch
> 
> diff --git a/target/linux/mxs/Makefile b/target/linux/mxs/Makefile
> index 39064ae1ae..96aba031d7 100644
> --- a/target/linux/mxs/Makefile
> +++ b/target/linux/mxs/Makefile
> @@ -13,7 +13,7 @@ FEATURES:=ext4 rtc usb gpio
>  CPU_TYPE:=arm926ej-s
> 
>  MAINTAINER:=Zoltan HERPAI <wigyori@uid0.hu>
> -KERNEL_PATCHVER:=4.14
> +KERNEL_PATCHVER:=4.19
>  KERNELNAME:=zImage dtbs
> 
>  define Target/Description
> diff --git a/target/linux/mxs/config-4.14 b/target/linux/mxs/config-4.19
> similarity index 89%
> rename from target/linux/mxs/config-4.14
> rename to target/linux/mxs/config-4.19
> index abad1807cd..4daf49f809 100644
> --- a/target/linux/mxs/config-4.14
> +++ b/target/linux/mxs/config-4.19
> @@ -2,7 +2,11 @@ CONFIG_ALIGNMENT_TRAP=y
>  CONFIG_ARCH_CLOCKSOURCE_DATA=y
>  CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
>  CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
> +CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
>  CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
> +CONFIG_ARCH_HAS_KCOV=y
> +CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
> +CONFIG_ARCH_HAS_PHYS_TO_DMA=y
>  CONFIG_ARCH_HAS_SET_MEMORY=y
>  CONFIG_ARCH_HAS_SG_CHAIN=y
>  CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
> @@ -19,9 +23,6 @@ CONFIG_ARCH_MULTI_V5=y
>  CONFIG_ARCH_MXS=y
>  CONFIG_ARCH_NR_GPIO=0
>  CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
> -# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
> -# CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
> -# CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
>  CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
>  CONFIG_ARCH_SUPPORTS_UPROBES=y
>  CONFIG_ARCH_SUSPEND_POSSIBLE=y
> @@ -43,7 +44,7 @@ CONFIG_ARM_PATCH_PHYS_VIRT=y
>  CONFIG_ARM_THUMB=y
>  CONFIG_ATAGS=y
>  CONFIG_AUTO_ZRELADDR=y
> -# CONFIG_CACHE_L2X0 is not set
> +CONFIG_CC_HAS_ASM_GOTO=y
>  CONFIG_CLKDEV_LOOKUP=y
>  CONFIG_CLKSRC_MMIO=y
>  CONFIG_CLONE_BACKWARDS=y
> @@ -84,7 +85,6 @@ CONFIG_CRYPTO_RNG2=y
>  CONFIG_CRYPTO_WORKQUEUE=y
>  CONFIG_DEBUG_ALIGN_RODATA=y
>  CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
> -# CONFIG_DEBUG_UART_8250 is not set
>  # CONFIG_DEBUG_USER is not set
>  CONFIG_DMADEVICES=y
>  CONFIG_DMA_ENGINE=y
> @@ -98,7 +98,9 @@ CONFIG_FEC=y
>  CONFIG_FIXED_PHY=y
>  CONFIG_FIX_EARLYCON_MEM=y
>  CONFIG_FRAME_POINTER=y
> +CONFIG_FS_IOMAP=y
>  CONFIG_FS_MBCACHE=y
> +CONFIG_GCC_VERSION=80300
>  CONFIG_GENERIC_ALLOCATOR=y
>  CONFIG_GENERIC_ATOMIC64=y
>  CONFIG_GENERIC_BUG=y
> @@ -106,8 +108,8 @@ CONFIG_GENERIC_CLOCKEVENTS=y
>  CONFIG_GENERIC_CPU_AUTOPROBE=y
>  CONFIG_GENERIC_EARLY_IOREMAP=y
>  CONFIG_GENERIC_IDLE_POLL_SETUP=y
> -CONFIG_GENERIC_IO=y
>  CONFIG_GENERIC_IRQ_CHIP=y
> +CONFIG_GENERIC_IRQ_MULTI_HANDLER=y
>  CONFIG_GENERIC_IRQ_SHOW=y
>  CONFIG_GENERIC_IRQ_SHOW_LEVEL=y
>  CONFIG_GENERIC_PCI_IOMAP=y
> @@ -122,28 +124,23 @@ CONFIG_GPIO_GENERIC=y
>  CONFIG_GPIO_GENERIC_PLATFORM=y
>  CONFIG_GPIO_MXS=y
>  CONFIG_GPIO_SYSFS=y
> -# CONFIG_GRO_CELLS is not set
>  CONFIG_HANDLE_DOMAIN_IRQ=y
>  CONFIG_HARDIRQS_SW_RESEND=y
>  CONFIG_HAS_DMA=y
>  CONFIG_HAS_IOMEM=y
>  CONFIG_HAS_IOPORT_MAP=y
> -# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
>  CONFIG_HAVE_ARCH_AUDITSYSCALL=y
> -# CONFIG_HAVE_ARCH_BITREVERSE is not set
>  CONFIG_HAVE_ARCH_JUMP_LABEL=y
>  CONFIG_HAVE_ARCH_KGDB=y
>  CONFIG_HAVE_ARCH_PFN_VALID=y
>  CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
> +CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
>  CONFIG_HAVE_ARCH_TRACEHOOK=y
> -# CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
> -CONFIG_HAVE_CC_STACKPROTECTOR=y
>  CONFIG_HAVE_CLK=y
>  CONFIG_HAVE_CLK_PREPARE=y
>  CONFIG_HAVE_CONTEXT_TRACKING=y
>  CONFIG_HAVE_C_RECORDMCOUNT=y
>  CONFIG_HAVE_DEBUG_KMEMLEAK=y
> -CONFIG_HAVE_DMA_API_DEBUG=y
>  CONFIG_HAVE_DMA_CONTIGUOUS=y
>  CONFIG_HAVE_DYNAMIC_FTRACE=y
>  CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
> @@ -153,6 +150,7 @@ CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
>  CONFIG_HAVE_FUNCTION_TRACER=y
>  CONFIG_HAVE_GENERIC_DMA_COHERENT=y
>  CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
> +CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
>  CONFIG_HAVE_MEMBLOCK=y
>  CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
>  CONFIG_HAVE_NET_DSA=y
> @@ -163,6 +161,7 @@ CONFIG_HAVE_PERF_REGS=y
>  CONFIG_HAVE_PERF_USER_STACK_DUMP=y
>  CONFIG_HAVE_PROC_CPU=y
>  CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
> +CONFIG_HAVE_RSEQ=y
>  CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
>  CONFIG_HAVE_UID16=y
>  CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
> @@ -185,7 +184,6 @@ CONFIG_IIO_SYSFS_TRIGGER=y
>  CONFIG_IIO_TRIGGER=y
>  CONFIG_INITRAMFS_SOURCE=""
>  CONFIG_INPUT=y
> -CONFIG_IOMMU_HELPER=y
>  CONFIG_IRQCHIP=y
>  CONFIG_IRQ_DOMAIN=y
>  CONFIG_IRQ_FORCED_THREADING=y
> @@ -194,18 +192,21 @@ CONFIG_IRQ_WORK=y
>  # CONFIG_ISDN is not set
>  CONFIG_JBD2=y
>  CONFIG_LIBFDT=y
> +CONFIG_LOCK_DEBUGGING_SUPPORT=y
>  CONFIG_MDIO_BUS=y
>  CONFIG_MDIO_DEVICE=y
> +CONFIG_MEMFD_CREATE=y
>  CONFIG_MFD_CORE=y
>  CONFIG_MFD_MXS_LRADC=y
>  CONFIG_MIGHT_HAVE_PCI=y
> +CONFIG_MIGRATION=y
>  CONFIG_MMC=y
>  CONFIG_MMC_BLOCK=y
>  CONFIG_MMC_MXS=y
>  CONFIG_MODULES_USE_ELF_REL=y
>  # CONFIG_MTD_PHYSMAP_OF is not set
> -CONFIG_MULTI_IRQ_HANDLER=y
>  CONFIG_MXS_DMA=y
> +# CONFIG_MXS_LRADC_ADC is not set
>  CONFIG_MXS_TIMER=y
>  CONFIG_NEED_DMA_MAP_STATE=y
>  CONFIG_NEED_KUSER_HELPERS=y
> @@ -221,14 +222,13 @@ CONFIG_OF_EARLY_FLATTREE=y
>  CONFIG_OF_FLATTREE=y
>  CONFIG_OF_GPIO=y
>  CONFIG_OF_IRQ=y
> +CONFIG_OF_KOBJ=y
>  CONFIG_OF_MDIO=y
>  CONFIG_OF_NET=y
>  CONFIG_OF_RESERVED_MEM=y
>  CONFIG_OLD_SIGACTION=y
>  CONFIG_OLD_SIGSUSPEND3=y
>  CONFIG_PAGE_OFFSET=0xC0000000
> -# CONFIG_PCI_DOMAINS_GENERIC is not set
> -# CONFIG_PCI_SYSCALL is not set
>  CONFIG_PERF_USE_VMALLOC=y
>  CONFIG_PGTABLE_LEVELS=2
>  CONFIG_PHYLIB=y
> @@ -242,14 +242,11 @@ CONFIG_PM_CLK=y
>  # CONFIG_PM_DEBUG is not set
>  CONFIG_POWER_SUPPLY=y
>  CONFIG_PPS=y
> -CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
>  CONFIG_PTP_1588_CLOCK=y
>  CONFIG_RATIONAL=y
> -# CONFIG_RCU_NEED_SEGCBLIST is not set
> -# CONFIG_RCU_STALL_COMMON is not set
> +CONFIG_REFCOUNT_FULL=y
>  CONFIG_REGMAP=y
>  CONFIG_REGMAP_I2C=y
> -CONFIG_REGMAP_MMIO=y
>  CONFIG_REGMAP_SPI=y
>  CONFIG_REGULATOR=y
>  CONFIG_REGULATOR_FIXED_VOLTAGE=y
> @@ -260,8 +257,6 @@ CONFIG_RTC_DRV_STMP=y
>  CONFIG_RTC_I2C_AND_SPI=y
>  CONFIG_RTC_MC146818_LIB=y
>  CONFIG_RWSEM_XCHGADD_ALGORITHM=y
> -# CONFIG_SCHED_INFO is not set
> -# CONFIG_SCSI_DMA is not set
>  # CONFIG_SERIAL_8250 is not set
>  CONFIG_SERIAL_AMBA_PL011=y
>  CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
> @@ -280,7 +275,6 @@ CONFIG_SPLIT_PTLOCK_CPUS=999999
>  CONFIG_SRCU=y
>  CONFIG_STMP3XXX_RTC_WATCHDOG=y
>  CONFIG_STMP_DEVICE=y
> -CONFIG_SWIOTLB=y
>  CONFIG_SWPHY=y
>  CONFIG_SYS_SUPPORTS_APM_EMULATION=y
>  CONFIG_TICK_CPU_ACCOUNTING=y
> @@ -301,8 +295,8 @@ CONFIG_USB_MXS_PHY=y
>  CONFIG_USB_OTG=y
>  CONFIG_USB_PHY=y
>  CONFIG_USB_SUPPORT=y
> +CONFIG_USB_ULPI_BUS=y
>  CONFIG_USE_OF=y
> -CONFIG_VECTORS_BASE=0xffff0000
>  # CONFIG_VFP is not set
>  CONFIG_WATCHDOG_CORE=y
>  CONFIG_XZ_DEC_ARM=y
> diff --git
> a/target/linux/mxs/patches-4.14/110-crypto-mxsdcp-provide-importexport.patc
> h
> b/target/linux/mxs/patches-4.14/110-crypto-mxsdcp-provide-importexport.patc
> h deleted file mode 100644
> index 3be3e1a111..0000000000
> ---
> a/target/linux/mxs/patches-4.14/110-crypto-mxsdcp-provide-importexport.patc
> h +++ /dev/null
> @@ -1,51 +0,0 @@
> ---- a/drivers/crypto/mxs-dcp.c
> -+++ b/drivers/crypto/mxs-dcp.c
> -@@ -777,6 +777,24 @@ static void dcp_sha_cra_exit(struct cryp
> - {
> - }
> -
> -+static int dcp_sha_export(struct ahash_request *req, void *out)
> -+{
> -+	struct dcp_sha_req_ctx *rctx = ahash_request_ctx(req);
> -+
> -+	memcpy(out, rctx, sizeof(struct dcp_sha_req_ctx));
> -+
> -+	return 0;
> -+}
> -+
> -+static int dcp_sha_import(struct ahash_request *req, const void *in)
> -+{
> -+	struct dcp_sha_req_ctx *rctx = ahash_request_ctx(req);
> -+
> -+	memcpy(rctx, in, sizeof(struct dcp_sha_req_ctx));
> -+
> -+	return 0;
> -+}
> -+
> - /* AES 128 ECB and AES 128 CBC */
> - static struct crypto_alg dcp_aes_algs[] = {
> - 	{
> -@@ -836,8 +854,11 @@ static struct ahash_alg dcp_sha1_alg = {
> - 	.final	= dcp_sha_final,
> - 	.finup	= dcp_sha_finup,
> - 	.digest	= dcp_sha_digest,
> -+	.import = dcp_sha_import,
> -+	.export = dcp_sha_export,
> - 	.halg	= {
> - 		.digestsize	= SHA1_DIGEST_SIZE,
> -+		.statesize	= sizeof(struct dcp_sha_req_ctx),
> - 		.base		= {
> - 			.cra_name		= "sha1",
> - 			.cra_driver_name	= "sha1-dcp",
> -@@ -860,8 +881,11 @@ static struct ahash_alg dcp_sha256_alg =
> - 	.final	= dcp_sha_final,
> - 	.finup	= dcp_sha_finup,
> - 	.digest	= dcp_sha_digest,
> -+	.import = dcp_sha_import,
> -+	.export = dcp_sha_export,
> - 	.halg	= {
> - 		.digestsize	= SHA256_DIGEST_SIZE,
> -+		.statesize	= sizeof(struct dcp_sha_req_ctx),
> - 		.base		= {
> - 			.cra_name		= "sha256",
> - 			.cra_driver_name	= "sha256-dcp",


--nextPart1860025.DtUUqFbeYR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEuqZVIsj+7B0PnIAhlIIjA3pZHn8FAl1djy4ACgkQlIIjA3pZ
Hn+IGA/+P2j/LIZoaZeP7Yh65O1It8kFbMRAzljn4LkIYZXKMITeSV6kKN6Kk6Z9
nSOmmiosh7F2A4Q5zz4h5vC6nzzz3CA5GHntJ8UvSTKVOhRMd797ur9a92U3fH23
5Bosd8mPiQNpiDWieE5o7klHdWf3L2urm3LT/m0xMMWhRMPSDN4GJYr7DnnZdAPN
N+bFhwSrHc9H29dTvsmAHJai/yRF8rgezx0HQHHFCjahB45wPmLiJ+1mQ9Uh7TdA
g06uy32jbUWU+n11x2yXfwHFqK56ZJQlEMULgIc/FemjdaJxyxqyKjHNS41wS0MY
ge7OV3ZL4iaw6pWctVx9IvK9YQrLiRtvu3JAPZ4oVatdWhedyn6dW6/7C2zvkqZK
eKpLV9lshZ1hFK35es+4ZVAOaL/TSDUoK0JNn3AMHIuyLJ3Z3pfGPPZHS+qIi2rW
0blvarhQCTFwmRv+/lTcjD+rvM8csTi2pO2HeMI3+6DImudlGFwaEHTrsbD9CtWA
rs/Z6xekzSFJnGuEqco0NUzPrd9ZpdEhoZXJCYuZTlUYVErVQKJ/l3W7WbB475iO
VKVhLJ8+7hPA7qME5UslP5lX9zlnKXeZhFidgjgaPjOMcV1nlHktJh/QkX5OrAFT
m4wgVJegpPrXqf9T7ZzJutjxSHW4Cq8GlTblue7xp7GsNJZo3sI=
=ewsl
-----END PGP SIGNATURE-----

--nextPart1860025.DtUUqFbeYR--





--===============2092570883673978124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2092570883673978124==--




