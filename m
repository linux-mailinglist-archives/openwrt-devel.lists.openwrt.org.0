Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDD31A998
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 23:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cM/lUqwcPcgZrxn8e8rL5hH4LBqUBdbhuHE4dq5X3BQ=; b=HyRzw1OwCF8+qB
	0+f9N1nOy/QapxcpO4PbUhDwpqKLV7tpthLiqqZOGMZhbIKoje6Q8VhK+S4qhsMPRY/ZHPhIMY7Tk
	ayjsnxfjeA1fBGFoN+ASJWorSaSXJ0QOfSlybqbMreUfwYqxregyLBZsAyjCYXsGaAPERDBStbcIV
	DIQgGV6k4b6P1ciZDRIbDe3ENEAhCTjPskj+Viv2k0nEey08wtAdKW6OgTQfOzNcot8pyNgwP+H/H
	U736SebLC6kboU9OoQ8hR8UTQuXWOUjCn2QC2SM4YpOiO/Bnz3Sz2Wn46XWeTnfTrb/B0WA8XT2WG
	81klER85/N2Gtxh71zEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPZQw-0008KU-5h; Sat, 11 May 2019 21:21:30 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPZQm-0008K7-FN
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 21:21:23 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id D61B24DF73;
 Sat, 11 May 2019 23:21:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id 1aji6sFq45SP; Sat, 11 May 2019 23:21:10 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 23:20:50 +0200
Message-Id: <20190511212050.21019-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_142120_824509_486593E3 
X-CRM114-Status: GOOD (  27.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] tools/mkimage: update U-Boot to version
 2019.04
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates the U-Boot which provides the host tools like mkimage to
version 2019.04.
The patches were cleaned up and it was checked if this still compiles
on Linux and FreeBSD.

CONFIG_FIT_SIGNATURE_MAX_SIZE is set to the default value.

The patch for libressl was merged upstream.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

Could some please build test this change on MacOSX.

 tools/mkimage/Makefile                        |   5 +-
 .../patches/010-freebsd-ulong-fix.patch       |  13 --
 .../patches/020-include_compile_fix.patch     |  10 -
 .../030-allow-to-use-different-magic.patch    |  18 +-
 .../patches/050-image_h_portability.patch     | 182 +++++++++++++++++-
 .../patches/060-remove_kernel_includes.patch  |  38 ++--
 .../patches/080-remove_compiler_check.patch   |  16 --
 .../mkimage/patches/100-freebsd-compat.patch  |  14 --
 ...00-rsa-sign-add-support-for-libressl.patch |  68 -------
 .../patches/210-link-libcrypto-static.patch   |   2 +-
 10 files changed, 209 insertions(+), 157 deletions(-)
 delete mode 100644 tools/mkimage/patches/010-freebsd-ulong-fix.patch
 delete mode 100644 tools/mkimage/patches/020-include_compile_fix.patch
 delete mode 100644 tools/mkimage/patches/080-remove_compiler_check.patch
 delete mode 100644 tools/mkimage/patches/100-freebsd-compat.patch
 delete mode 100644 tools/mkimage/patches/200-rsa-sign-add-support-for-libressl.patch

diff --git a/tools/mkimage/Makefile b/tools/mkimage/Makefile
index fbcf87cfc6..67a153b572 100644
--- a/tools/mkimage/Makefile
+++ b/tools/mkimage/Makefile
@@ -7,11 +7,11 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=mkimage
-PKG_VERSION:=2018.03
+PKG_VERSION:=2019.04
 
 PKG_SOURCE:=u-boot-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=http://ftp.denx.de/pub/u-boot
-PKG_HASH:=7e7477534409d5368eb1371ffde6820f0f79780a1a1f676161c48442cb303dfd
+PKG_HASH:=76b7772d156b3ddd7644c8a1736081e55b78828537ff714065d21dbade229bef
 
 HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/u-boot-$(PKG_VERSION)
 
@@ -30,6 +30,7 @@ define Host/Compile
 		no-dot-config-targets=tools-only \
 		CONFIG_MKIMAGE_DTC_PATH=dtc \
 		CONFIG_FIT_SIGNATURE=y \
+		CONFIG_FIT_SIGNATURE_MAX_SIZE=0x10000000 \
 		tools-only
 endef
 
diff --git a/tools/mkimage/patches/010-freebsd-ulong-fix.patch b/tools/mkimage/patches/010-freebsd-ulong-fix.patch
deleted file mode 100644
index 7d891657f8..0000000000
--- a/tools/mkimage/patches/010-freebsd-ulong-fix.patch
+++ /dev/null
@@ -1,13 +0,0 @@
---- a/include/image.h
-+++ b/include/image.h
-@@ -51,6 +51,10 @@ struct lmb;
- 
- #endif /* USE_HOSTCC */
- 
-+#ifndef ulong
-+#define ulong unsigned long
-+#endif
-+
- #if IMAGE_ENABLE_FIT
- #include <hash.h>
- #include <linux/libfdt.h>
diff --git a/tools/mkimage/patches/020-include_compile_fix.patch b/tools/mkimage/patches/020-include_compile_fix.patch
deleted file mode 100644
index 276cae0cb1..0000000000
--- a/tools/mkimage/patches/020-include_compile_fix.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- a/include/u-boot/rsa-checksum.h
-+++ b/include/u-boot/rsa-checksum.h
-@@ -7,7 +7,6 @@
- #ifndef _RSA_CHECKSUM_H
- #define _RSA_CHECKSUM_H
- 
--#include <errno.h>
- #include <image.h>
- #include <u-boot/sha1.h>
- #include <u-boot/sha256.h>
diff --git a/tools/mkimage/patches/030-allow-to-use-different-magic.patch b/tools/mkimage/patches/030-allow-to-use-different-magic.patch
index c6de9a0aaf..425e2fccbf 100644
--- a/tools/mkimage/patches/030-allow-to-use-different-magic.patch
+++ b/tools/mkimage/patches/030-allow-to-use-different-magic.patch
@@ -1,6 +1,8 @@
+This patch make sit possible to set a custom image magic.
+
 --- a/tools/mkimage.c
 +++ b/tools/mkimage.c
-@@ -21,6 +21,7 @@ static struct image_tool_params params =
+@@ -20,6 +20,7 @@ static struct image_tool_params params =
  	.arch = IH_ARCH_PPC,
  	.type = IH_TYPE_KERNEL,
  	.comp = IH_COMP_GZIP,
@@ -8,7 +10,7 @@
  	.dtc = MKIMAGE_DEFAULT_DTC_OPTIONS,
  	.imagename = "",
  	.imagename2 = "",
-@@ -77,11 +78,12 @@ static void usage(const char *msg)
+@@ -76,11 +77,12 @@ static void usage(const char *msg)
  			 "          -l ==> list image header information\n",
  		params.cmdname);
  	fprintf(stderr,
@@ -22,7 +24,7 @@
  		"          -a ==> set load address to 'addr' (hex)\n"
  		"          -e ==> set entry point to 'ep' (hex)\n"
  		"          -n ==> set image name to 'name'\n"
-@@ -144,7 +146,7 @@ static void process_args(int argc, char
+@@ -143,7 +145,7 @@ static void process_args(int argc, char
  	int opt;
  
  	while ((opt = getopt(argc, argv,
@@ -31,7 +33,7 @@
  		switch (opt) {
  		case 'a':
  			params.addr = strtoull(optarg, &ptr, 16);
-@@ -222,6 +224,14 @@ static void process_args(int argc, char
+@@ -221,6 +223,14 @@ static void process_args(int argc, char
  		case 'l':
  			params.lflag = 1;
  			break;
@@ -48,18 +50,18 @@
  			break;
 --- a/tools/default_image.c
 +++ b/tools/default_image.c
-@@ -106,7 +106,7 @@ static void image_set_header(void *ptr,
- 		imagesize = sbuf->st_size - sizeof(image_header_t);
+@@ -116,7 +116,7 @@ static void image_set_header(void *ptr,
+ 	}
  
  	/* Build new header */
 -	image_set_magic(hdr, IH_MAGIC);
 +	image_set_magic(hdr, params->magic);
  	image_set_time(hdr, time);
  	image_set_size(hdr, imagesize);
- 	image_set_load(hdr, params->addr);
+ 	image_set_load(hdr, addr);
 --- a/tools/imagetool.h
 +++ b/tools/imagetool.h
-@@ -54,6 +54,7 @@ struct image_tool_params {
+@@ -53,6 +53,7 @@ struct image_tool_params {
  	int arch;
  	int type;
  	int comp;
diff --git a/tools/mkimage/patches/050-image_h_portability.patch b/tools/mkimage/patches/050-image_h_portability.patch
index dabab39908..e2cfaa98af 100644
--- a/tools/mkimage/patches/050-image_h_portability.patch
+++ b/tools/mkimage/patches/050-image_h_portability.patch
@@ -1,14 +1,24 @@
+Some of the Linux header files are not available on non Linux host
+systems line FreeBSD or MacOSX.
+
+The __le32 and __be32 types are only defined in Linux in
+asm/byteorder.h, but not on all other BSD systems.
+Use uint32_t instead of __le32 and __be32.
+
+__swab32 is also a Linux only function, it looks like be32_to_cpu()
+would be better here anyway.
+
 --- a/include/image.h
 +++ b/include/image.h
-@@ -17,7 +17,6 @@
+@@ -16,7 +16,6 @@
  #define __IMAGE_H__
  
  #include "compiler.h"
 -#include <asm/byteorder.h>
+ #include <stdbool.h>
  
  /* Define this to avoid #ifdefs later on */
- struct lmb;
-@@ -308,13 +307,13 @@ enum {
+@@ -317,13 +316,13 @@ enum {
   * all data in network byte order (aka natural aka bigendian).
   */
  typedef struct image_header {
@@ -29,3 +39,169 @@
  	uint8_t		ih_os;		/* Operating System		*/
  	uint8_t		ih_arch;	/* CPU architecture		*/
  	uint8_t		ih_type;	/* Image Type			*/
+--- a/tools/mtk_image.h
++++ b/tools/mtk_image.h
+@@ -15,8 +15,8 @@
+ union gen_boot_header {
+ 	struct {
+ 		char name[12];
+-		__le32 version;
+-		__le32 size;
++		uint32_t version;
++		uint32_t size;
+ 	};
+ 
+ 	uint8_t pad[0x200];
+@@ -32,14 +32,14 @@ union nand_boot_header {
+ 		char name[12];
+ 		char version[4];
+ 		char id[8];
+-		__le16 ioif;
+-		__le16 pagesize;
+-		__le16 addrcycles;
+-		__le16 oobsize;
+-		__le16 pages_of_block;
+-		__le16 numblocks;
+-		__le16 writesize_shift;
+-		__le16 erasesize_shift;
++		uint16_t ioif;
++		uint16_t pagesize;
++		uint16_t addrcycles;
++		uint16_t oobsize;
++		uint16_t pages_of_block;
++		uint16_t numblocks;
++		uint16_t writesize_shift;
++		uint16_t erasesize_shift;
+ 		uint8_t dummy[60];
+ 		uint8_t ecc_parity[28];
+ 	};
+@@ -54,14 +54,14 @@ union nand_boot_header {
+ /* BootROM layout header */
+ struct brom_layout_header {
+ 	char name[8];
+-	__le32 version;
+-	__le32 header_size;
+-	__le32 total_size;
+-	__le32 magic;
+-	__le32 type;
+-	__le32 header_size_2;
+-	__le32 total_size_2;
+-	__le32 unused;
++	uint32_t version;
++	uint32_t header_size;
++	uint32_t total_size;
++	uint32_t magic;
++	uint32_t type;
++	uint32_t header_size_2;
++	uint32_t total_size_2;
++	uint32_t unused;
+ };
+ 
+ #define BRLYT_NAME		"BRLYT"
+@@ -90,8 +90,8 @@ struct gen_device_header {
+ struct gfh_common_header {
+ 	uint8_t magic[3];
+ 	uint8_t version;
+-	__le16 size;
+-	__le16 type;
++	uint16_t size;
++	uint16_t type;
+ };
+ 
+ #define GFH_HEADER_MAGIC	"MMM"
+@@ -106,17 +106,17 @@ struct gfh_common_header {
+ struct gfh_file_info {
+ 	struct gfh_common_header gfh;
+ 	char name[12];
+-	__le32 unused;
+-	__le16 file_type;
++	uint32_t unused;
++	uint16_t file_type;
+ 	uint8_t flash_type;
+ 	uint8_t sig_type;
+-	__le32 load_addr;
+-	__le32 total_size;
+-	__le32 max_size;
+-	__le32 hdr_size;
+-	__le32 sig_size;
+-	__le32 jump_offset;
+-	__le32 processed;
++	uint32_t load_addr;
++	uint32_t total_size;
++	uint32_t max_size;
++	uint32_t hdr_size;
++	uint32_t sig_size;
++	uint32_t jump_offset;
++	uint32_t processed;
+ };
+ 
+ #define GFH_FILE_INFO_NAME	"FILE_INFO"
+@@ -129,16 +129,16 @@ struct gfh_file_info {
+ 
+ struct gfh_bl_info {
+ 	struct gfh_common_header gfh;
+-	__le32 attr;
++	uint32_t attr;
+ };
+ 
+ struct gfh_brom_cfg {
+ 	struct gfh_common_header gfh;
+-	__le32 cfg_bits;
+-	__le32 usbdl_by_auto_detect_timeout_ms;
++	uint32_t cfg_bits;
++	uint32_t usbdl_by_auto_detect_timeout_ms;
+ 	uint8_t unused[0x48];
+-	__le32 usbdl_by_kcol0_timeout_ms;
+-	__le32 usbdl_by_flag_timeout_ms;
++	uint32_t usbdl_by_kcol0_timeout_ms;
++	uint32_t usbdl_by_flag_timeout_ms;
+ 	uint32_t pad;
+ };
+ 
+@@ -157,15 +157,15 @@ struct gfh_anti_clone {
+ 	uint8_t ac_b2k;
+ 	uint8_t ac_b2c;
+ 	uint16_t pad;
+-	__le32 ac_offset;
+-	__le32 ac_len;
++	uint32_t ac_offset;
++	uint32_t ac_len;
+ };
+ 
+ struct gfh_brom_sec_cfg {
+ 	struct gfh_common_header gfh;
+-	__le32 cfg_bits;
++	uint32_t cfg_bits;
+ 	char customer_name[0x20];
+-	__le32 pad;
++	uint32_t pad;
+ };
+ 
+ #define BROM_SEC_CFG_JTAG_EN	1
+@@ -184,11 +184,11 @@ struct gfh_header {
+ 
+ union lk_hdr {
+ 	struct {
+-		__le32 magic;
+-		__le32 size;
++		uint32_t magic;
++		uint32_t size;
+ 		char name[32];
+-		__le32 loadaddr;
+-		__le32 mode;
++		uint32_t loadaddr;
++		uint32_t mode;
+ 	};
+ 
+ 	uint8_t data[512];
+--- a/tools/zynqmpbif.c
++++ b/tools/zynqmpbif.c
+@@ -517,7 +517,7 @@ static int bif_add_bit(struct bif_entry
+ 	debug("Bitstream Length: 0x%x\n", bitlen);
+ 	for (i = 0; i < bitlen; i += sizeof(uint32_t)) {
+ 		uint32_t *bitbin32 = (uint32_t *)&bitbin[i];
+-		*bitbin32 = __swab32(*bitbin32);
++		*bitbin32 = be32_to_cpu(*bitbin32);
+ 	}
+ 
+ 	if (!bf->dest_dev)
diff --git a/tools/mkimage/patches/060-remove_kernel_includes.patch b/tools/mkimage/patches/060-remove_kernel_includes.patch
index e61d8cc496..8917ec0863 100644
--- a/tools/mkimage/patches/060-remove_kernel_includes.patch
+++ b/tools/mkimage/patches/060-remove_kernel_includes.patch
@@ -1,17 +1,6 @@
---- a/include/compiler.h
-+++ b/include/compiler.h
-@@ -66,6 +66,11 @@ typedef uint8_t __u8;
- typedef uint16_t __u16;
- typedef uint32_t __u32;
- typedef unsigned int uint;
-+typedef uint64_t __u64;
-+#ifndef linux
-+typedef int __kernel_daddr_t;
-+typedef unsigned int __kernel_ino_t;
-+#endif
- 
- #define uswap_16(x) \
- 	((((x) & 0xff00) >> 8) | \
+The Kernel includes are only available on Linux hosts, remove then on
+non Linux hosts. 
+
 --- a/include/linux/posix_types.h
 +++ b/include/linux/posix_types.h
 @@ -43,6 +43,8 @@ typedef void (*__kernel_sighandler_t)(in
@@ -23,13 +12,18 @@
 +#endif
  
  #endif /* _LINUX_POSIX_TYPES_H */
---- a/include/linux/types.h
-+++ b/include/linux/types.h
-@@ -2,7 +2,6 @@
- #define _LINUX_TYPES_H
+--- a/include/imx8image.h
++++ b/include/imx8image.h
+@@ -11,7 +11,12 @@
+ #include <image.h>
+ #include <inttypes.h>
+ #include "imagetool.h"
++#ifdef linux
+ #include "linux/kernel.h"
++#else
++#define ALIGN(x,a)		__ALIGN_MASK((x),(typeof(x))(a)-1)
++#define __ALIGN_MASK(x,mask)	(((x)+(mask))&~(mask))
++#endif
  
- #include <linux/posix_types.h>
--#include <asm/types.h>
- #include <stdbool.h>
+ #define __packed   __attribute__((packed))
  
- #ifndef __KERNEL_STRICT_NAMES
diff --git a/tools/mkimage/patches/080-remove_compiler_check.patch b/tools/mkimage/patches/080-remove_compiler_check.patch
deleted file mode 100644
index 5e0792f25f..0000000000
--- a/tools/mkimage/patches/080-remove_compiler_check.patch
+++ /dev/null
@@ -1,16 +0,0 @@
---- a/include/linux/compiler-gcc.h
-+++ b/include/linux/compiler-gcc.h
-@@ -146,13 +146,6 @@
- 
- #if GCC_VERSION >= 40000
- 
--/* GCC 4.1.[01] miscompiles __weak */
--#ifdef __KERNEL__
--# if GCC_VERSION >= 40100 &&  GCC_VERSION <= 40101
--#  error Your version of gcc miscompiles the __weak directive
--# endif
--#endif
--
- #define __used			__attribute__((__used__))
- #define __compiler_offsetof(a, b)					\
- 	__builtin_offsetof(a, b)
diff --git a/tools/mkimage/patches/100-freebsd-compat.patch b/tools/mkimage/patches/100-freebsd-compat.patch
deleted file mode 100644
index 1567285714..0000000000
--- a/tools/mkimage/patches/100-freebsd-compat.patch
+++ /dev/null
@@ -1,14 +0,0 @@
---- a/Makefile
-+++ b/Makefile
-@@ -634,7 +634,10 @@ UBOOTINCLUDE    := \
- 		-I$(srctree)/arch/$(ARCH)/include \
- 		-include $(srctree)/include/linux/kconfig.h
- 
--NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
-+ifneq ($(shell uname),FreeBSD)
-+  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
-+endif
-+
- CHECKFLAGS     += $(NOSTDINC_FLAGS)
- 
- # FIX ME
diff --git a/tools/mkimage/patches/200-rsa-sign-add-support-for-libressl.patch b/tools/mkimage/patches/200-rsa-sign-add-support-for-libressl.patch
deleted file mode 100644
index 29058e22b7..0000000000
--- a/tools/mkimage/patches/200-rsa-sign-add-support-for-libressl.patch
+++ /dev/null
@@ -1,68 +0,0 @@
-From 69176c8602e29f4bd30457240374800d88dc39ed Mon Sep 17 00:00:00 2001
-From: Hauke Mehrtens <hauke@hauke-m.de>
-Date: Sat, 14 Apr 2018 22:39:34 +0200
-Subject: [PATCH] rsa-sign: add support for libressl
-
----
- lib/rsa/rsa-sign.c | 15 +++++++++------
- 1 file changed, 9 insertions(+), 6 deletions(-)
-
---- a/lib/rsa/rsa-sign.c
-+++ b/lib/rsa/rsa-sign.c
-@@ -21,7 +21,8 @@
- #define HAVE_ERR_REMOVE_THREAD_STATE
- #endif
- 
--#if OPENSSL_VERSION_NUMBER < 0x10100000L
-+#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
-+    (defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x2070000fL)
- static void RSA_get0_key(const RSA *r,
-                  const BIGNUM **n, const BIGNUM **e, const BIGNUM **d)
- {
-@@ -300,7 +301,8 @@ static int rsa_init(void)
- {
- 	int ret;
- 
--#if OPENSSL_VERSION_NUMBER < 0x10100000L
-+#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
-+    (defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x2070000fL)
- 	ret = SSL_library_init();
- #else
- 	ret = OPENSSL_init_ssl(0, NULL);
-@@ -309,7 +311,7 @@ static int rsa_init(void)
- 		fprintf(stderr, "Failure to init SSL library\n");
- 		return -1;
- 	}
--#if OPENSSL_VERSION_NUMBER < 0x10100000L
-+#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
- 	SSL_load_error_strings();
- 
- 	OpenSSL_add_all_algorithms();
-@@ -355,7 +357,7 @@ err_set_rsa:
- err_engine_init:
- 	ENGINE_free(e);
- err_engine_by_id:
--#if OPENSSL_VERSION_NUMBER < 0x10100000L
-+#if OPENSSL_VERSION_NUMBER < 0x10100000L ||  defined(LIBRESSL_VERSION_NUMBER)
- 	ENGINE_cleanup();
- #endif
- 	return ret;
-@@ -363,7 +365,7 @@ err_engine_by_id:
- 
- static void rsa_remove(void)
- {
--#if OPENSSL_VERSION_NUMBER < 0x10100000L
-+#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
- 	CRYPTO_cleanup_all_ex_data();
- 	ERR_free_strings();
- #ifdef HAVE_ERR_REMOVE_THREAD_STATE
-@@ -433,7 +435,8 @@ static int rsa_sign_with_key(RSA *rsa, s
- 		ret = rsa_err("Could not obtain signature");
- 		goto err_sign;
- 	}
--	#if OPENSSL_VERSION_NUMBER < 0x10100000L
-+	#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
-+	    defined(LIBRESSL_VERSION_NUMBER)
- 		EVP_MD_CTX_cleanup(context);
- 	#else
- 		EVP_MD_CTX_reset(context);
diff --git a/tools/mkimage/patches/210-link-libcrypto-static.patch b/tools/mkimage/patches/210-link-libcrypto-static.patch
index 66412ce43b..7e2b423510 100644
--- a/tools/mkimage/patches/210-link-libcrypto-static.patch
+++ b/tools/mkimage/patches/210-link-libcrypto-static.patch
@@ -3,7 +3,7 @@ needed dependencies are added too.
 
 --- a/tools/Makefile
 +++ b/tools/Makefile
-@@ -145,7 +145,7 @@ endif
+@@ -151,7 +151,7 @@ endif
  # MXSImage needs LibSSL
  ifneq ($(CONFIG_MX23)$(CONFIG_MX28)$(CONFIG_ARMADA_38X)$(CONFIG_ARMADA_39X)$(CONFIG_FIT_SIGNATURE),)
  HOSTLOADLIBES_mkimage += \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
