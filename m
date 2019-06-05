Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D755E360F8
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 18:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvDXbumBWKWUyVTQbXwNPaZ+039RXo2xmr3LGcs3wcg=; b=TURHuuKglMWCsa
	ufUjpko5nP9EyFId8YMHfRjFbugcM7utg6scvvDqdR/dZ5omH7s+Y5uQPxjIWVgRefNsufJfwWEo0
	Lkih5/NUNq0srZBv20MHrXiiZ3bChvnMu8jdAnU6sPsLd9sL8g760X/xUcmuRzBXMmNjTRTFq9x2V
	UKDHdJT5KyZilWWNadSmKyXkOBXA/hQBFsvHYAI42lQOX1AODltj5jQ5rPrubruEHEJjw33JjPlY3
	45vGsYH+0juLcmjzO1L4FVon9m590mA1sYuCFGqGkvTfIFNDwxycZEmSX8ueSK+nn3LHGqtqG3Mp+
	8ZYEZNxgVs9ni+6ir4fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYZy-0004at-SF; Wed, 05 Jun 2019 16:15:58 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYZg-0004Ob-Hp
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 16:15:52 +0000
Received: from p5dcfbfee.dip0.t-ipconnect.de ([93.207.191.238] helo=bertha.lan)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYYZc-0002L1-Km; Wed, 05 Jun 2019 18:15:37 +0200
From: John Crispin <john@phrozen.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Wed,  5 Jun 2019 18:15:22 +0200
Message-Id: <20190605161522.24420-2-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605161522.24420-1-john@phrozen.org>
References: <20190605161522.24420-1-john@phrozen.org>
MIME-Version: 1.0
X-Spam-Note: CRM114 run bypassed due to message size (105239 bytes)
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] [DONT MERGE] toolchain: provide and
 example for building a custom toolchain
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch should not be merged and is just an example of how the previous
custom toolchain patch can be used.

Signed-off-by: John Crispin <john@phrozen.org>
---
 toolchain_custom/Config.in                    |  16 ++
 toolchain_custom/binutils/Makefile.var        |  10 +
 .../patches/300-001_ld_makefile_patch.patch   |  22 ++
 .../300-012_check_ldrunpath_length.patch      |  20 ++
 .../400-mips_no_dynamic_linking_sym.patch     |  18 ++
 ...e-default-emulation-for-mips64-linux.patch |  37 +++
 toolchain_custom/gcc/Makefile.var             |   7 +
 .../gcc/patches/002-case_insensitive.patch    |  14 ++
 .../gcc/patches/010-documentation.patch       |  23 ++
 .../gcc/patches/020-no-plt-backport.patch     |  28 +++
 .../gcc/patches/100-uclibc-conf.patch         |  13 +
 .../gcc/patches/200-musl_config.patch         | 199 ++++++++++++++++
 .../gcc/patches/201-musl_arm.patch            |  56 +++++
 .../gcc/patches/202-musl_mips.patch           |  34 +++
 .../gcc/patches/203-musl_powerpc.patch        | 100 ++++++++
 .../gcc/patches/204-musl_sh.patch             |  17 ++
 .../gcc/patches/205-musl_x86.patch            |  72 ++++++
 .../gcc/patches/206-musl_aarch64.patch        |  29 +++
 .../gcc/patches/207-musl_fixincludes.patch    |  12 +
 .../gcc/patches/208-musl_gomp.patch           |  11 +
 .../gcc/patches/209-musl_libstdc++.patch      |  26 ++
 .../gcc/patches/230-musl_libssp.patch         |  26 ++
 .../patches/800-arm_v5te_no_ldrd_strd.patch   |  11 +
 .../patches/810-arm-softfloat-libgcc.patch    |  25 ++
 .../gcc/patches/820-libgcc_pic.patch          |  36 +++
 .../gcc/patches/830-arm_unbreak_armv4t.patch  |  13 +
 .../840-armv4_pass_fix-v4bx_to_ld.patch       |  19 ++
 .../gcc/patches/850-use_shared_libgcc.patch   |  47 ++++
 .../gcc/patches/851-libgcc_no_compat.patch    |  12 +
 .../gcc/patches/860-use_eh_frame.patch        |  43 ++++
 .../gcc/patches/870-ppc_no_crtsavres.patch    |  11 +
 .../gcc/patches/880-no_java_section.patch     |  11 +
 .../gcc/patches/900-bad-mips16-crt.patch      |   9 +
 .../gcc/patches/910-mbsd_multi.patch          | 222 ++++++++++++++++++
 .../patches/920-specs_nonfatal_getenv.patch   |  15 ++
 .../patches/930-fix-mips-noexecstack.patch    | 111 +++++++++
 .../patches/940-no-clobber-stamp-bits.patch   |  11 +
 .../patches/941-have_usable_vsnprintf.patch   |  11 +
 .../gcc/patches/950-gperf-compile.patch       | 144 ++++++++++++
 .../951-cpp_file_path_translation.patch       | 182 ++++++++++++++
 .../gcc/patches/951-template.patch            |  93 ++++++++
 toolchain_custom/gdb/Makefile.build           |  13 +
 toolchain_custom/gdb/Makefile.var             |   9 +
 .../gdb/patches/100-ppc_compile_fix.patch     |  11 +
 .../gdb/patches/110-no_extern_inline.patch    |  32 +++
 .../600-fix-compile-flag-mismatch.patch       |  32 +++
 toolchain_custom/musl/Makefile.var            |  11 +
 ...ribute-to-some-function-declarations.patch | 197 ++++++++++++++++
 .../musl/patches/100-add_glob_onlydir.patch   |  11 +
 .../patches/110-read_timezone_from_fs.patch   |  28 +++
 .../patches/200-add_libssp_nonshared.patch    |  50 ++++
 .../musl/patches/300-relative.patch           |  11 +
 .../musl/patches/900-iconv_size_hack.patch    |  68 ++++++
 .../musl/patches/901-crypt_size_hack.patch    |  60 +++++
 .../902-add-support-for-unbuffered-putc.patch |  25 ++
 55 files changed, 2374 insertions(+)
 create mode 100644 toolchain_custom/Config.in
 create mode 100644 toolchain_custom/binutils/Makefile.var
 create mode 100644 toolchain_custom/binutils/patches/300-001_ld_makefile_patch.patch
 create mode 100644 toolchain_custom/binutils/patches/300-012_check_ldrunpath_length.patch
 create mode 100644 toolchain_custom/binutils/patches/400-mips_no_dynamic_linking_sym.patch
 create mode 100644 toolchain_custom/binutils/patches/500-Change-default-emulation-for-mips64-linux.patch
 create mode 100644 toolchain_custom/gcc/Makefile.var
 create mode 100644 toolchain_custom/gcc/patches/002-case_insensitive.patch
 create mode 100644 toolchain_custom/gcc/patches/010-documentation.patch
 create mode 100644 toolchain_custom/gcc/patches/020-no-plt-backport.patch
 create mode 100644 toolchain_custom/gcc/patches/100-uclibc-conf.patch
 create mode 100644 toolchain_custom/gcc/patches/200-musl_config.patch
 create mode 100644 toolchain_custom/gcc/patches/201-musl_arm.patch
 create mode 100644 toolchain_custom/gcc/patches/202-musl_mips.patch
 create mode 100644 toolchain_custom/gcc/patches/203-musl_powerpc.patch
 create mode 100644 toolchain_custom/gcc/patches/204-musl_sh.patch
 create mode 100644 toolchain_custom/gcc/patches/205-musl_x86.patch
 create mode 100644 toolchain_custom/gcc/patches/206-musl_aarch64.patch
 create mode 100644 toolchain_custom/gcc/patches/207-musl_fixincludes.patch
 create mode 100644 toolchain_custom/gcc/patches/208-musl_gomp.patch
 create mode 100644 toolchain_custom/gcc/patches/209-musl_libstdc++.patch
 create mode 100644 toolchain_custom/gcc/patches/230-musl_libssp.patch
 create mode 100644 toolchain_custom/gcc/patches/800-arm_v5te_no_ldrd_strd.patch
 create mode 100644 toolchain_custom/gcc/patches/810-arm-softfloat-libgcc.patch
 create mode 100644 toolchain_custom/gcc/patches/820-libgcc_pic.patch
 create mode 100644 toolchain_custom/gcc/patches/830-arm_unbreak_armv4t.patch
 create mode 100644 toolchain_custom/gcc/patches/840-armv4_pass_fix-v4bx_to_ld.patch
 create mode 100644 toolchain_custom/gcc/patches/850-use_shared_libgcc.patch
 create mode 100644 toolchain_custom/gcc/patches/851-libgcc_no_compat.patch
 create mode 100644 toolchain_custom/gcc/patches/860-use_eh_frame.patch
 create mode 100644 toolchain_custom/gcc/patches/870-ppc_no_crtsavres.patch
 create mode 100644 toolchain_custom/gcc/patches/880-no_java_section.patch
 create mode 100644 toolchain_custom/gcc/patches/900-bad-mips16-crt.patch
 create mode 100644 toolchain_custom/gcc/patches/910-mbsd_multi.patch
 create mode 100644 toolchain_custom/gcc/patches/920-specs_nonfatal_getenv.patch
 create mode 100644 toolchain_custom/gcc/patches/930-fix-mips-noexecstack.patch
 create mode 100644 toolchain_custom/gcc/patches/940-no-clobber-stamp-bits.patch
 create mode 100644 toolchain_custom/gcc/patches/941-have_usable_vsnprintf.patch
 create mode 100644 toolchain_custom/gcc/patches/950-gperf-compile.patch
 create mode 100644 toolchain_custom/gcc/patches/951-cpp_file_path_translation.patch
 create mode 100644 toolchain_custom/gcc/patches/951-template.patch
 create mode 100644 toolchain_custom/gdb/Makefile.build
 create mode 100644 toolchain_custom/gdb/Makefile.var
 create mode 100644 toolchain_custom/gdb/patches/100-ppc_compile_fix.patch
 create mode 100644 toolchain_custom/gdb/patches/110-no_extern_inline.patch
 create mode 100644 toolchain_custom/gdb/patches/600-fix-compile-flag-mismatch.patch
 create mode 100644 toolchain_custom/musl/Makefile.var
 create mode 100644 toolchain_custom/musl/patches/040-Add-format-attribute-to-some-function-declarations.patch
 create mode 100644 toolchain_custom/musl/patches/100-add_glob_onlydir.patch
 create mode 100644 toolchain_custom/musl/patches/110-read_timezone_from_fs.patch
 create mode 100644 toolchain_custom/musl/patches/200-add_libssp_nonshared.patch
 create mode 100644 toolchain_custom/musl/patches/300-relative.patch
 create mode 100644 toolchain_custom/musl/patches/900-iconv_size_hack.patch
 create mode 100644 toolchain_custom/musl/patches/901-crypt_size_hack.patch
 create mode 100644 toolchain_custom/musl/patches/902-add-support-for-unbuffered-putc.patch

diff --git a/toolchain_custom/Config.in b/toolchain_custom/Config.in
new file mode 100644
index 0000000000..4d3a72d826
--- /dev/null
+++ b/toolchain_custom/Config.in
@@ -0,0 +1,16 @@
+config CUSTOM_TOOLCHAIN
+        bool "Custom Toolchain"
+        depends on DEVEL
+	default y
+
+config CUSTOM_LIBC
+	string
+        depends on DEVEL
+        depends on CUSTOM_TOOLCHAIN
+	default "musl"
+
+config CUSTOM_GCC_VERSION
+	string
+        depends on DEVEL
+        depends on CUSTOM_TOOLCHAIN
+	default "5.2.0"
diff --git a/toolchain_custom/binutils/Makefile.var b/toolchain_custom/binutils/Makefile.var
new file mode 100644
index 0000000000..110296b8a3
--- /dev/null
+++ b/toolchain_custom/binutils/Makefile.var
@@ -0,0 +1,10 @@
+PKG_NAME:=binutils
+PKG_VERSION:=2.24.0
+BIN_VERSION:=$(PKG_VERSION)
+PKG_SOURCE_URL:=https://releases.linaro.org/14.09/components/toolchain/binutils-linaro/
+PKG_REV:=2.24.0-2014.09
+PKG_SOURCE:=$(PKG_NAME)-linaro-$(PKG_REV).tar.xz
+PKG_MD5SUM:=8f9b2b2e049d59b1b86ce9657802a353
+BINUTILS_DIR:=$(PKG_NAME)-linaro-$(PKG_REV)
+HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(BINUTILS_DIR)
+PATCH_DIR:=$(TOPDIR)/toolchain_custom/binutils/patches/
diff --git a/toolchain_custom/binutils/patches/300-001_ld_makefile_patch.patch b/toolchain_custom/binutils/patches/300-001_ld_makefile_patch.patch
new file mode 100644
index 0000000000..0efcd18383
--- /dev/null
+++ b/toolchain_custom/binutils/patches/300-001_ld_makefile_patch.patch
@@ -0,0 +1,22 @@
+--- a/ld/Makefile.am
++++ b/ld/Makefile.am
+@@ -54,7 +54,7 @@ endif
+ # We put the scripts in the directory $(scriptdir)/ldscripts.
+ # We can't put the scripts in $(datadir) because the SEARCH_DIR
+ # directives need to be different for native and cross linkers.
+-scriptdir = $(tooldir)/lib
++scriptdir = $(libdir)
+ 
+ EMUL = @EMUL@
+ EMULATION_OFILES = @EMULATION_OFILES@
+--- a/ld/Makefile.in
++++ b/ld/Makefile.in
+@@ -386,7 +386,7 @@ AM_CFLAGS = $(WARN_CFLAGS)
+ # We put the scripts in the directory $(scriptdir)/ldscripts.
+ # We can't put the scripts in $(datadir) because the SEARCH_DIR
+ # directives need to be different for native and cross linkers.
+-scriptdir = $(tooldir)/lib
++scriptdir = $(libdir)
+ BASEDIR = $(srcdir)/..
+ BFDDIR = $(BASEDIR)/bfd
+ INCDIR = $(BASEDIR)/include
diff --git a/toolchain_custom/binutils/patches/300-012_check_ldrunpath_length.patch b/toolchain_custom/binutils/patches/300-012_check_ldrunpath_length.patch
new file mode 100644
index 0000000000..37752b75ac
--- /dev/null
+++ b/toolchain_custom/binutils/patches/300-012_check_ldrunpath_length.patch
@@ -0,0 +1,20 @@
+--- a/ld/emultempl/elf32.em
++++ b/ld/emultempl/elf32.em
+@@ -1267,6 +1267,8 @@ fragment <<EOF
+ 	      && command_line.rpath == NULL)
+ 	    {
+ 	      lib_path = (const char *) getenv ("LD_RUN_PATH");
++	      if ((lib_path) && (strlen (lib_path) == 0))
++	      	lib_path = NULL;
+ 	      if (gld${EMULATION_NAME}_search_needed (lib_path, &n,
+ 						      force))
+ 		break;
+@@ -1518,6 +1520,8 @@ gld${EMULATION_NAME}_before_allocation (
+   rpath = command_line.rpath;
+   if (rpath == NULL)
+     rpath = (const char *) getenv ("LD_RUN_PATH");
++  if ((rpath) && (strlen (rpath) == 0))
++  	rpath = NULL;
+ 
+   for (abfd = link_info.input_bfds; abfd; abfd = abfd->link_next)
+     if (bfd_get_flavour (abfd) == bfd_target_elf_flavour)
diff --git a/toolchain_custom/binutils/patches/400-mips_no_dynamic_linking_sym.patch b/toolchain_custom/binutils/patches/400-mips_no_dynamic_linking_sym.patch
new file mode 100644
index 0000000000..251134fb93
--- /dev/null
+++ b/toolchain_custom/binutils/patches/400-mips_no_dynamic_linking_sym.patch
@@ -0,0 +1,18 @@
+--- a/bfd/elfxx-mips.c
++++ b/bfd/elfxx-mips.c
+@@ -7450,6 +7450,7 @@ _bfd_mips_elf_create_dynamic_sections (b
+ 
+       name = SGI_COMPAT (abfd) ? "_DYNAMIC_LINK" : "_DYNAMIC_LINKING";
+       bh = NULL;
++      if (0) {
+       if (!(_bfd_generic_link_add_one_symbol
+ 	    (info, abfd, name, BSF_GLOBAL, bfd_abs_section_ptr, 0,
+ 	     NULL, FALSE, get_elf_backend_data (abfd)->collect, &bh)))
+@@ -7462,6 +7463,7 @@ _bfd_mips_elf_create_dynamic_sections (b
+ 
+       if (! bfd_elf_link_record_dynamic_symbol (info, h))
+ 	return FALSE;
++      }
+ 
+       if (! mips_elf_hash_table (info)->use_rld_obj_head)
+ 	{
diff --git a/toolchain_custom/binutils/patches/500-Change-default-emulation-for-mips64-linux.patch b/toolchain_custom/binutils/patches/500-Change-default-emulation-for-mips64-linux.patch
new file mode 100644
index 0000000000..cd036beca9
--- /dev/null
+++ b/toolchain_custom/binutils/patches/500-Change-default-emulation-for-mips64-linux.patch
@@ -0,0 +1,37 @@
+--- a/bfd/config.bfd
++++ b/bfd/config.bfd
+@@ -1053,12 +1053,12 @@ case "${targ}" in
+     targ_selvecs="bfd_elf32_littlemips_vec bfd_elf64_bigmips_vec bfd_elf64_littlemips_vec ecoff_big_vec ecoff_little_vec"
+     ;;
+   mips64*el-*-linux*)
+-    targ_defvec=bfd_elf32_ntradlittlemips_vec
+-    targ_selvecs="bfd_elf32_ntradbigmips_vec bfd_elf32_tradlittlemips_vec bfd_elf32_tradbigmips_vec bfd_elf64_tradlittlemips_vec bfd_elf64_tradbigmips_vec"
++    targ_defvec=bfd_elf64_tradlittlemips_vec
++    targ_selvecs="bfd_elf32_ntradbigmips_vec bfd_elf32_ntradlittlemips_vec bfd_elf32_tradlittlemips_vec bfd_elf32_tradbigmips_vec bfd_elf64_tradbigmips_vec"
+     ;;
+   mips64*-*-linux*)
+-    targ_defvec=bfd_elf32_ntradbigmips_vec
+-    targ_selvecs="bfd_elf32_ntradlittlemips_vec bfd_elf32_tradbigmips_vec bfd_elf32_tradlittlemips_vec bfd_elf64_tradbigmips_vec bfd_elf64_tradlittlemips_vec"
++    targ_defvec=bfd_elf64_tradbigmips_vec
++    targ_selvecs="bfd_elf32_ntradbigmips_vec bfd_elf32_ntradlittlemips_vec bfd_elf32_tradbigmips_vec bfd_elf32_tradlittlemips_vec  bfd_elf64_tradlittlemips_vec"
+     ;;
+   mips*el-*-linux*)
+     targ_defvec=bfd_elf32_tradlittlemips_vec
+--- a/ld/configure.tgt
++++ b/ld/configure.tgt
+@@ -472,11 +472,11 @@ mips*el-*-vxworks*)	targ_emul=elf32elmip
+ mips*-*-vxworks*)	targ_emul=elf32ebmipvxworks
+ 		        targ_extra_emuls="elf32elmipvxworks" ;;
+ mips*-*-windiss)	targ_emul=elf32mipswindiss ;;
+-mips64*el-*-linux-*)	targ_emul=elf32ltsmipn32
+-			targ_extra_emuls="elf32btsmipn32 elf32ltsmip elf32btsmip elf64ltsmip elf64btsmip"
++mips64*el-*-linux-*)	targ_emul=elf64ltsmip
++			targ_extra_emuls="elf32btsmipn32 elf32ltsmipn32 elf32ltsmip elf32btsmip elf64btsmip"
+ 			targ_extra_libpath=$targ_extra_emuls ;;
+-mips64*-*-linux-*)	targ_emul=elf32btsmipn32
+-			targ_extra_emuls="elf32ltsmipn32 elf32btsmip elf32ltsmip elf64btsmip elf64ltsmip"
++mips64*-*-linux-*)	targ_emul=elf64btsmip
++			targ_extra_emuls="elf32btsmipn32 elf32ltsmipn32 elf32btsmip elf32ltsmip elf64ltsmip"
+ 			targ_extra_libpath=$targ_extra_emuls ;;
+ mips*el-*-linux-*)	targ_emul=elf32ltsmip
+ 			targ_extra_emuls="elf32btsmip elf32ltsmipn32 elf64ltsmip elf32btsmipn32 elf64btsmip"
diff --git a/toolchain_custom/gcc/Makefile.var b/toolchain_custom/gcc/Makefile.var
new file mode 100644
index 0000000000..095e4754bc
--- /dev/null
+++ b/toolchain_custom/gcc/Makefile.var
@@ -0,0 +1,7 @@
+GCC_VERSION:=$(call qstrip,5.2.0)
+PKG_VERSION:=$(firstword $(subst +, ,$(GCC_VERSION)))
+GCC_DIR:=$(PKG_NAME)-$(PKG_VERSION)
+PKG_SOURCE_URL:=@GNU/gcc/gcc-$(PKG_VERSION)
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
+PKG_HASH:=5f835b04b5f7dd4f4d2dc96190ec1621b8d89f2dc6f638f9f8bc1b1014ba8cad
+PATCH_DIR=$(TOPDIR)/toolchain_custom/gcc/patches
diff --git a/toolchain_custom/gcc/patches/002-case_insensitive.patch b/toolchain_custom/gcc/patches/002-case_insensitive.patch
new file mode 100644
index 0000000000..b3d2dbe291
--- /dev/null
+++ b/toolchain_custom/gcc/patches/002-case_insensitive.patch
@@ -0,0 +1,14 @@
+--- a/include/filenames.h
++++ b/include/filenames.h
+@@ -43,11 +43,6 @@ extern "C" {
+ #  define IS_DIR_SEPARATOR(c) IS_DOS_DIR_SEPARATOR (c)
+ #  define IS_ABSOLUTE_PATH(f) IS_DOS_ABSOLUTE_PATH (f)
+ #else /* not DOSish */
+-#  if defined(__APPLE__)
+-#    ifndef HAVE_CASE_INSENSITIVE_FILE_SYSTEM
+-#      define HAVE_CASE_INSENSITIVE_FILE_SYSTEM 1
+-#    endif
+-#  endif /* __APPLE__ */
+ #  define HAS_DRIVE_SPEC(f) (0)
+ #  define IS_DIR_SEPARATOR(c) IS_UNIX_DIR_SEPARATOR (c)
+ #  define IS_ABSOLUTE_PATH(f) IS_UNIX_ABSOLUTE_PATH (f)
diff --git a/toolchain_custom/gcc/patches/010-documentation.patch b/toolchain_custom/gcc/patches/010-documentation.patch
new file mode 100644
index 0000000000..07064a97bc
--- /dev/null
+++ b/toolchain_custom/gcc/patches/010-documentation.patch
@@ -0,0 +1,23 @@
+--- a/gcc/Makefile.in
++++ b/gcc/Makefile.in
+@@ -2941,18 +2941,10 @@ doc/gcc.info: $(TEXI_GCC_FILES)
+ doc/gccint.info: $(TEXI_GCCINT_FILES)
+ doc/cppinternals.info: $(TEXI_CPPINT_FILES)
+ 
+-doc/%.info: %.texi
+-	if [ x$(BUILD_INFO) = xinfo ]; then \
+-		$(MAKEINFO) $(MAKEINFOFLAGS) -I . -I $(gcc_docdir) \
+-			-I $(gcc_docdir)/include -o $@ $<; \
+-	fi
++doc/%.info:
+ 
+ # Duplicate entry to handle renaming of gccinstall.info
+-doc/gccinstall.info: $(TEXI_GCCINSTALL_FILES)
+-	if [ x$(BUILD_INFO) = xinfo ]; then \
+-		$(MAKEINFO) $(MAKEINFOFLAGS) -I $(gcc_docdir) \
+-			-I $(gcc_docdir)/include -o $@ $<; \
+-	fi
++doc/gccinstall.info:
+ 
+ doc/cpp.dvi: $(TEXI_CPP_FILES)
+ doc/gcc.dvi: $(TEXI_GCC_FILES)
diff --git a/toolchain_custom/gcc/patches/020-no-plt-backport.patch b/toolchain_custom/gcc/patches/020-no-plt-backport.patch
new file mode 100644
index 0000000000..b9702c9520
--- /dev/null
+++ b/toolchain_custom/gcc/patches/020-no-plt-backport.patch
@@ -0,0 +1,28 @@
+--- a/gcc/calls.c
++++ b/gcc/calls.c
+@@ -225,6 +225,12 @@ prepare_call_address (tree fndecl_or_typ
+ 	       && targetm.small_register_classes_for_mode_p (FUNCTION_MODE))
+ 	      ? force_not_mem (memory_address (FUNCTION_MODE, funexp))
+ 	      : memory_address (FUNCTION_MODE, funexp));
++  else if (flag_pic && !flag_plt && fndecl_or_type
++	   && TREE_CODE (fndecl_or_type) == FUNCTION_DECL
++	   && !targetm.binds_local_p (fndecl_or_type))
++    {
++      funexp = force_reg (Pmode, funexp);
++    }
+   else if (! sibcallp)
+     {
+ #ifndef NO_FUNCTION_CSE
+--- a/gcc/common.opt
++++ b/gcc/common.opt
+@@ -1779,6 +1779,10 @@ fpie
+ Common Report Var(flag_pie,1) Negative(fPIC)
+ Generate position-independent code for executables if possible (small mode)
+ 
++fplt
++Common Report Var(flag_plt) Init(1)
++Use PLT for PIC calls (-fno-plt: load the address from GOT at call site)
++
+ fplugin=
+ Common Joined RejectNegative Var(common_deferred_options) Defer
+ Specify a plugin to load
diff --git a/toolchain_custom/gcc/patches/100-uclibc-conf.patch b/toolchain_custom/gcc/patches/100-uclibc-conf.patch
new file mode 100644
index 0000000000..0d402ca65b
--- /dev/null
+++ b/toolchain_custom/gcc/patches/100-uclibc-conf.patch
@@ -0,0 +1,13 @@
+--- a/contrib/regression/objs-gcc.sh
++++ b/contrib/regression/objs-gcc.sh
+@@ -106,6 +106,10 @@ if [ $H_REAL_TARGET = $H_REAL_HOST -a $H
+  then
+   make all-gdb all-dejagnu all-ld || exit 1
+   make install-gdb install-dejagnu install-ld || exit 1
++elif [ $H_REAL_TARGET = $H_REAL_HOST -a $H_REAL_TARGET = i686-pc-linux-uclibc ]
++ then
++  make all-gdb all-dejagnu all-ld || exit 1
++  make install-gdb install-dejagnu install-ld || exit 1
+ elif [ $H_REAL_TARGET = $H_REAL_HOST ] ; then
+   make bootstrap || exit 1
+   make install || exit 1
diff --git a/toolchain_custom/gcc/patches/200-musl_config.patch b/toolchain_custom/gcc/patches/200-musl_config.patch
new file mode 100644
index 0000000000..c6887a1bff
--- /dev/null
+++ b/toolchain_custom/gcc/patches/200-musl_config.patch
@@ -0,0 +1,199 @@
+--- a/gcc/config.gcc
++++ b/gcc/config.gcc
+@@ -575,7 +575,7 @@ case ${target} in
+ esac
+ 
+ # Common C libraries.
+-tm_defines="$tm_defines LIBC_GLIBC=1 LIBC_UCLIBC=2 LIBC_BIONIC=3"
++tm_defines="$tm_defines LIBC_GLIBC=1 LIBC_UCLIBC=2 LIBC_BIONIC=3 LIBC_MUSL=4"
+ 
+ # 32-bit x86 processors supported by --with-arch=.  Each processor
+ # MUST be separated by exactly one space.
+@@ -720,6 +720,9 @@ case ${target} in
+     *-*-*uclibc*)
+       tm_defines="$tm_defines DEFAULT_LIBC=LIBC_UCLIBC"
+       ;;
++    *-*-*musl*)
++      tm_defines="$tm_defines DEFAULT_LIBC=LIBC_MUSL"
++      ;;
+     *)
+       tm_defines="$tm_defines DEFAULT_LIBC=LIBC_GLIBC"
+       ;;
+--- a/gcc/config/linux.h
++++ b/gcc/config/linux.h
+@@ -32,10 +32,12 @@ see the files COPYING3 and COPYING.RUNTI
+ #define OPTION_GLIBC  (DEFAULT_LIBC == LIBC_GLIBC)
+ #define OPTION_UCLIBC (DEFAULT_LIBC == LIBC_UCLIBC)
+ #define OPTION_BIONIC (DEFAULT_LIBC == LIBC_BIONIC)
++#define OPTION_MUSL   (DEFAULT_LIBC == LIBC_MUSL)
+ #else
+ #define OPTION_GLIBC  (linux_libc == LIBC_GLIBC)
+ #define OPTION_UCLIBC (linux_libc == LIBC_UCLIBC)
+ #define OPTION_BIONIC (linux_libc == LIBC_BIONIC)
++#define OPTION_MUSL   (linux_libc == LIBC_MUSL)
+ #endif
+ 
+ #define GNU_USER_TARGET_OS_CPP_BUILTINS()			\
+@@ -53,18 +55,21 @@ see the files COPYING3 and COPYING.RUNTI
+    uClibc or Bionic is the default C library and whether
+    -muclibc or -mglibc or -mbionic has been passed to change the default.  */
+ 
+-#define CHOOSE_DYNAMIC_LINKER1(LIBC1, LIBC2, LIBC3, LD1, LD2, LD3)	\
+-  "%{" LIBC2 ":" LD2 ";:%{" LIBC3 ":" LD3 ";:" LD1 "}}"
++#define CHOOSE_DYNAMIC_LINKER1(LIBC1, LIBC2, LIBC3, LIBC4, LD1, LD2, LD3, LD4)	\
++  "%{" LIBC2 ":" LD2 ";:%{" LIBC3 ":" LD3 ";:%{" LIBC4 ":" LD4 ";:" LD1 "}}}"
+ 
+ #if DEFAULT_LIBC == LIBC_GLIBC
+-#define CHOOSE_DYNAMIC_LINKER(G, U, B) \
+-  CHOOSE_DYNAMIC_LINKER1 ("mglibc", "muclibc", "mbionic", G, U, B)
++#define CHOOSE_DYNAMIC_LINKER(G, U, B, M) \
++  CHOOSE_DYNAMIC_LINKER1 ("mglibc", "muclibc", "mbionic", "mmusl", G, U, B, M)
+ #elif DEFAULT_LIBC == LIBC_UCLIBC
+-#define CHOOSE_DYNAMIC_LINKER(G, U, B) \
+-  CHOOSE_DYNAMIC_LINKER1 ("muclibc", "mglibc", "mbionic", U, G, B)
++#define CHOOSE_DYNAMIC_LINKER(G, U, B, M) \
++  CHOOSE_DYNAMIC_LINKER1 ("muclibc", "mglibc", "mbionic", "mmusl", U, G, B, M)
+ #elif DEFAULT_LIBC == LIBC_BIONIC
+-#define CHOOSE_DYNAMIC_LINKER(G, U, B) \
+-  CHOOSE_DYNAMIC_LINKER1 ("mbionic", "mglibc", "muclibc", B, G, U)
++#define CHOOSE_DYNAMIC_LINKER(G, U, B, M) \
++  CHOOSE_DYNAMIC_LINKER1 ("mbionic", "mglibc", "muclibc", "mmusl", B, G, U, M)
++#elif DEFAULT_LIBC == LIBC_MUSL
++#define CHOOSE_DYNAMIC_LINKER(G, U, B, M) \
++  CHOOSE_DYNAMIC_LINKER1 ("mmusl", "mglibc", "muclibc", "mbionic", M, G, U, B)
+ #else
+ #error "Unsupported DEFAULT_LIBC"
+ #endif /* DEFAULT_LIBC */
+@@ -84,21 +89,92 @@ see the files COPYING3 and COPYING.RUNTI
+ 
+ #define GNU_USER_DYNAMIC_LINKER						\
+   CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER, UCLIBC_DYNAMIC_LINKER,	\
+-			 BIONIC_DYNAMIC_LINKER)
++			 BIONIC_DYNAMIC_LINKER, MUSL_DYNAMIC_LINKER)
+ #define GNU_USER_DYNAMIC_LINKER32					\
+   CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER32, UCLIBC_DYNAMIC_LINKER32, \
+-			 BIONIC_DYNAMIC_LINKER32)
++			 BIONIC_DYNAMIC_LINKER32, MUSL_DYNAMIC_LINKER32)
+ #define GNU_USER_DYNAMIC_LINKER64					\
+   CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER64, UCLIBC_DYNAMIC_LINKER64, \
+-			 BIONIC_DYNAMIC_LINKER64)
++			 BIONIC_DYNAMIC_LINKER64, MUSL_DYNAMIC_LINKER64)
+ #define GNU_USER_DYNAMIC_LINKERX32					\
+   CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKERX32, UCLIBC_DYNAMIC_LINKERX32, \
+-			 BIONIC_DYNAMIC_LINKERX32)
++			 BIONIC_DYNAMIC_LINKERX32, MUSL_DYNAMIC_LINKERX32)
+ 
+ /* Whether we have Bionic libc runtime */
+ #undef TARGET_HAS_BIONIC
+ #define TARGET_HAS_BIONIC (OPTION_BIONIC)
+ 
++/* musl avoids problematic includes by rearranging the include directories.
++ * Unfortunately, this is mostly duplicated from cppdefault.c */
++#if DEFAULT_LIBC == LIBC_MUSL
++#define INCLUDE_DEFAULTS_MUSL_GPP			\
++    { GPLUSPLUS_INCLUDE_DIR, "G++", 1, 1,		\
++      GPLUSPLUS_INCLUDE_DIR_ADD_SYSROOT, 0 },		\
++    { GPLUSPLUS_TOOL_INCLUDE_DIR, "G++", 1, 1,		\
++      GPLUSPLUS_INCLUDE_DIR_ADD_SYSROOT, 1 },		\
++    { GPLUSPLUS_BACKWARD_INCLUDE_DIR, "G++", 1, 1,	\
++      GPLUSPLUS_INCLUDE_DIR_ADD_SYSROOT, 0 },
++
++#ifdef LOCAL_INCLUDE_DIR
++#define INCLUDE_DEFAULTS_MUSL_LOCAL			\
++    { LOCAL_INCLUDE_DIR, 0, 0, 1, 1, 2 },		\
++    { LOCAL_INCLUDE_DIR, 0, 0, 1, 1, 0 },
++#else
++#define INCLUDE_DEFAULTS_MUSL_LOCAL
++#endif
++
++#ifdef PREFIX_INCLUDE_DIR
++#define INCLUDE_DEFAULTS_MUSL_PREFIX			\
++    { PREFIX_INCLUDE_DIR, 0, 0, 1, 0, 0},
++#else
++#define INCLUDE_DEFAULTS_MUSL_PREFIX
++#endif
++
++#ifdef CROSS_INCLUDE_DIR
++#define INCLUDE_DEFAULTS_MUSL_CROSS			\
++    { CROSS_INCLUDE_DIR, "GCC", 0, 0, 0, 0},
++#else
++#define INCLUDE_DEFAULTS_MUSL_CROSS
++#endif
++
++#ifdef TOOL_INCLUDE_DIR
++#define INCLUDE_DEFAULTS_MUSL_TOOL			\
++    { TOOL_INCLUDE_DIR, "BINUTILS", 0, 1, 0, 0},
++#else
++#define INCLUDE_DEFAULTS_MUSL_TOOL
++#endif
++
++#ifdef NATIVE_SYSTEM_HEADER_DIR
++#define INCLUDE_DEFAULTS_MUSL_NATIVE			\
++    { NATIVE_SYSTEM_HEADER_DIR, 0, 0, 0, 1, 2 },	\
++    { NATIVE_SYSTEM_HEADER_DIR, 0, 0, 0, 1, 0 },
++#else
++#define INCLUDE_DEFAULTS_MUSL_NATIVE
++#endif
++
++#if defined (CROSS_DIRECTORY_STRUCTURE) && !defined (TARGET_SYSTEM_ROOT)
++# undef INCLUDE_DEFAULTS_MUSL_LOCAL
++# define INCLUDE_DEFAULTS_MUSL_LOCAL
++# undef INCLUDE_DEFAULTS_MUSL_NATIVE
++# define INCLUDE_DEFAULTS_MUSL_NATIVE
++#else
++# undef INCLUDE_DEFAULTS_MUSL_CROSS
++# define INCLUDE_DEFAULTS_MUSL_CROSS
++#endif
++
++#undef INCLUDE_DEFAULTS
++#define INCLUDE_DEFAULTS				\
++  {							\
++    INCLUDE_DEFAULTS_MUSL_GPP				\
++    INCLUDE_DEFAULTS_MUSL_PREFIX			\
++    INCLUDE_DEFAULTS_MUSL_CROSS				\
++    INCLUDE_DEFAULTS_MUSL_TOOL				\
++    INCLUDE_DEFAULTS_MUSL_NATIVE			\
++    { GCC_INCLUDE_DIR, "GCC", 0, 1, 0, 0 },		\
++    { 0, 0, 0, 0, 0, 0 }				\
++  }
++#endif
++
+ #if (DEFAULT_LIBC == LIBC_UCLIBC) && defined (SINGLE_LIBC) /* uClinux */
+ /* This is a *uclinux* target.  We don't define below macros to normal linux
+    versions, because doing so would require *uclinux* targets to include
+--- a/gcc/config/linux.opt
++++ b/gcc/config/linux.opt
+@@ -30,3 +30,7 @@ Use GNU C library
+ muclibc
+ Target Report RejectNegative Var(linux_libc,LIBC_UCLIBC) Negative(mbionic)
+ Use uClibc C library
++
++mmusl
++Target Report RejectNegative Var(linux_libc,LIBC_MUSL) Negative(mglibc)
++Use musl C library
+--- a/gcc/ginclude/stddef.h
++++ b/gcc/ginclude/stddef.h
+@@ -184,6 +184,7 @@ typedef __PTRDIFF_TYPE__ ptrdiff_t;
+ #ifndef _GCC_SIZE_T
+ #ifndef _SIZET_
+ #ifndef __size_t
++#ifndef __DEFINED_size_t /* musl */
+ #define __size_t__	/* BeOS */
+ #define __SIZE_T__	/* Cray Unicos/Mk */
+ #define _SIZE_T
+@@ -200,6 +201,7 @@ typedef __PTRDIFF_TYPE__ ptrdiff_t;
+ #define ___int_size_t_h
+ #define _GCC_SIZE_T
+ #define _SIZET_
++#define __DEFINED_size_t /* musl */
+ #if (defined (__FreeBSD__) && (__FreeBSD__ >= 5)) \
+   || defined(__DragonFly__) \
+   || defined(__FreeBSD_kernel__)
+@@ -218,6 +220,7 @@ typedef __SIZE_TYPE__ size_t;
+ typedef long ssize_t;
+ #endif /* __BEOS__ */
+ #endif /* !(defined (__GNUG__) && defined (size_t)) */
++#endif /* __DEFINED_size_t */
+ #endif /* __size_t */
+ #endif /* _SIZET_ */
+ #endif /* _GCC_SIZE_T */
diff --git a/toolchain_custom/gcc/patches/201-musl_arm.patch b/toolchain_custom/gcc/patches/201-musl_arm.patch
new file mode 100644
index 0000000000..a0f7577bb7
--- /dev/null
+++ b/toolchain_custom/gcc/patches/201-musl_arm.patch
@@ -0,0 +1,56 @@
+From ec39b7c91facdd74fddea95128502c25ec3948a3 Mon Sep 17 00:00:00 2001
+From: ktkachov <ktkachov@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Wed, 27 May 2015 13:17:11 +0000
+Subject: [PATCH 11/12] [PATCH 4/13] arm musl support
+
+On behalf of szabolcs.nagy@arm.com
+
+2015-05-27  Gregor Richards  <gregor.richards@uwaterloo.ca>
+
+	* config/arm/linux-eabi.h (MUSL_DYNAMIC_LINKER): Define.
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/trunk@223749 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+ gcc/config/arm/linux-eabi.h | 17 +++++++++++++++++
+ 1 file changed, 17 insertions(+)
+
+--- a/gcc/config/arm/linux-eabi.h
++++ b/gcc/config/arm/linux-eabi.h
+@@ -77,6 +77,23 @@
+     %{mfloat-abi=soft*:" GLIBC_DYNAMIC_LINKER_SOFT_FLOAT "} \
+     %{!mfloat-abi=*:" GLIBC_DYNAMIC_LINKER_DEFAULT "}"
+ 
++/* For ARM musl currently supports four dynamic linkers:
++   - ld-musl-arm.so.1 - for the EABI-derived soft-float ABI
++   - ld-musl-armhf.so.1 - for the EABI-derived hard-float ABI
++   - ld-musl-armeb.so.1 - for the EABI-derived soft-float ABI, EB
++   - ld-musl-armebhf.so.1 - for the EABI-derived hard-float ABI, EB
++   musl does not support the legacy OABI mode.
++   All the dynamic linkers live in /lib.
++   We default to soft-float, EL. */
++#undef  MUSL_DYNAMIC_LINKER
++#if TARGET_BIG_ENDIAN_DEFAULT
++#define MUSL_DYNAMIC_LINKER_E "%{mlittle-endian:;:eb}"
++#else
++#define MUSL_DYNAMIC_LINKER_E "%{mbig-endian:eb}"
++#endif
++#define MUSL_DYNAMIC_LINKER \
++  "/lib/ld-musl-arm" MUSL_DYNAMIC_LINKER_E "%{mfloat-abi=hard:hf}.so.1"
++
+ /* At this point, bpabi.h will have clobbered LINK_SPEC.  We want to
+    use the GNU/Linux version, not the generic BPABI version.  */
+ #undef  LINK_SPEC
+--- a/libitm/config/arm/hwcap.cc
++++ b/libitm/config/arm/hwcap.cc
+@@ -40,7 +40,11 @@ int GTM_hwcap HIDDEN = 0
+ 
+ #ifdef __linux__
+ #include <unistd.h>
++#ifdef __GLIBC__
+ #include <sys/fcntl.h>
++#else
++#include <fcntl.h>
++#endif
+ #include <elf.h>
+ 
+ static void __attribute__((constructor))
diff --git a/toolchain_custom/gcc/patches/202-musl_mips.patch b/toolchain_custom/gcc/patches/202-musl_mips.patch
new file mode 100644
index 0000000000..07d9c96e1c
--- /dev/null
+++ b/toolchain_custom/gcc/patches/202-musl_mips.patch
@@ -0,0 +1,34 @@
+From 8de85695e46ed2bc57c3482b4f995be3a82c405e Mon Sep 17 00:00:00 2001
+From: ktkachov <ktkachov@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Fri, 8 May 2015 15:16:50 +0000
+Subject: [PATCH 09/12] [PATCH 6/13] mips musl support
+
+2015-05-08  Gregor Richards  <gregor.richards@uwaterloo.ca>
+	    Szabolcs Nagy  <szabolcs.nagy@arm.com>
+
+	* config/mips/linux.h (MUSL_DYNAMIC_LINKER32): Define.
+	(MUSL_DYNAMIC_LINKER64, MUSL_DYNAMIC_LINKERN32): Define.
+	(GNU_USER_DYNAMIC_LINKERN32): Update.
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/trunk@222915 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+ gcc/config/mips/linux.h | 8 +++++++-
+ 1 file changed, 7 insertions(+), 1 deletion(-)
+
+--- a/gcc/config/mips/linux.h
++++ b/gcc/config/mips/linux.h
+@@ -37,7 +37,13 @@ along with GCC; see the file COPYING3.
+ #define UCLIBC_DYNAMIC_LINKERN32 \
+   "%{mnan=2008:/lib32/ld-uClibc-mipsn8.so.0;:/lib32/ld-uClibc.so.0}"
+ 
++#undef MUSL_DYNAMIC_LINKER32
++#define MUSL_DYNAMIC_LINKER32 "/lib/ld-musl-mips%{EL:el}%{msoft-float:-sf}.so.1"
++#undef MUSL_DYNAMIC_LINKER64
++#define MUSL_DYNAMIC_LINKER64 "/lib/ld-musl-mips64%{EL:el}%{msoft-float:-sf}.so.1"
++#define MUSL_DYNAMIC_LINKERN32 "/lib/ld-musl-mipsn32%{EL:el}%{msoft-float:-sf}.so.1"
++
+ #define BIONIC_DYNAMIC_LINKERN32 "/system/bin/linker32"
+ #define GNU_USER_DYNAMIC_LINKERN32 \
+   CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKERN32, UCLIBC_DYNAMIC_LINKERN32, \
+-                         BIONIC_DYNAMIC_LINKERN32)
++                         BIONIC_DYNAMIC_LINKERN32, MUSL_DYNAMIC_LINKERN32)
diff --git a/toolchain_custom/gcc/patches/203-musl_powerpc.patch b/toolchain_custom/gcc/patches/203-musl_powerpc.patch
new file mode 100644
index 0000000000..925acb333a
--- /dev/null
+++ b/toolchain_custom/gcc/patches/203-musl_powerpc.patch
@@ -0,0 +1,100 @@
+--- a/gcc/config.gcc
++++ b/gcc/config.gcc
+@@ -2410,6 +2410,10 @@ powerpc*-*-linux*)
+ 	    powerpc*-*-linux*paired*)
+ 		tm_file="${tm_file} rs6000/750cl.h" ;;
+ 	esac
++        case ${target} in
++            *-linux*-musl*)
++                enable_secureplt=yes ;;
++        esac
+ 	if test x${enable_secureplt} = xyes; then
+ 		tm_file="rs6000/secureplt.h ${tm_file}"
+ 	fi
+--- a/gcc/config/rs6000/linux64.h
++++ b/gcc/config/rs6000/linux64.h
+@@ -365,17 +365,21 @@ extern int dot_symbols;
+ #endif
+ #define UCLIBC_DYNAMIC_LINKER32 "/lib/ld-uClibc.so.0"
+ #define UCLIBC_DYNAMIC_LINKER64 "/lib/ld64-uClibc.so.0"
++#define MUSL_DYNAMIC_LINKER32 "/lib/ld-musl-powerpc%{msoft-float:-sf}.so.1"
++#define MUSL_DYNAMIC_LINKER64 "/lib/ld-musl-powerpc64.so.1"
+ #if DEFAULT_LIBC == LIBC_UCLIBC
+-#define CHOOSE_DYNAMIC_LINKER(G, U) "%{mglibc:" G ";:" U "}"
++#define CHOOSE_DYNAMIC_LINKER(G, U, M) "%{mglibc:" G ";:%{mmusl:" M ";:" U "}}"
+ #elif DEFAULT_LIBC == LIBC_GLIBC
+-#define CHOOSE_DYNAMIC_LINKER(G, U) "%{muclibc:" U ";:" G "}"
++#define CHOOSE_DYNAMIC_LINKER(G, U, M) "%{muclibc:" U ";:%{mmusl:" M ";:" G "}}"
++#elif DEFAULT_LIBC == LIBC_MUSL
++#define CHOOSE_DYNAMIC_LINKER(G, U, M) "%{mglibc:" G ";:%{muclibc:" U ";:" M "}}"
+ #else
+ #error "Unsupported DEFAULT_LIBC"
+ #endif
+ #define GNU_USER_DYNAMIC_LINKER32 \
+-  CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER32, UCLIBC_DYNAMIC_LINKER32)
++  CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER32, UCLIBC_DYNAMIC_LINKER32, MUSL_DYNAMIC_LINKER32)
+ #define GNU_USER_DYNAMIC_LINKER64 \
+-  CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER64, UCLIBC_DYNAMIC_LINKER64)
++  CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER64, UCLIBC_DYNAMIC_LINKER64, MUSL_DYNAMIC_LINKER64)
+ 
+ #undef  DEFAULT_ASM_ENDIAN
+ #if (TARGET_DEFAULT & MASK_LITTLE_ENDIAN)
+--- a/gcc/config/rs6000/secureplt.h
++++ b/gcc/config/rs6000/secureplt.h
+@@ -18,3 +18,4 @@ along with GCC; see the file COPYING3.
+ <http://www.gnu.org/licenses/>.  */
+ 
+ #define CC1_SECURE_PLT_DEFAULT_SPEC "-msecure-plt"
++#define LINK_SECURE_PLT_DEFAULT_SPEC "--secure-plt"
+--- a/gcc/config/rs6000/sysv4.h
++++ b/gcc/config/rs6000/sysv4.h
+@@ -537,6 +537,9 @@ ENDIAN_SELECT(" -mbig", " -mlittle", DEF
+ #ifndef CC1_SECURE_PLT_DEFAULT_SPEC
+ #define CC1_SECURE_PLT_DEFAULT_SPEC ""
+ #endif
++#ifndef LINK_SECURE_PLT_DEFAULT_SPEC
++#define LINK_SECURE_PLT_DEFAULT_SPEC ""
++#endif
+ 
+ /* Pass -G xxx to the compiler.  */
+ #undef CC1_SPEC
+@@ -586,7 +589,8 @@ ENDIAN_SELECT(" -mbig", " -mlittle", DEF
+ 
+ /* Override the default target of the linker.  */
+ #define	LINK_TARGET_SPEC \
+-  ENDIAN_SELECT("", " --oformat elf32-powerpcle", "")
++  ENDIAN_SELECT("", " --oformat elf32-powerpcle", "") \
++  "%{!mbss-plt: %{!msecure-plt: %(link_secure_plt_default)}}"
+ 
+ /* Any specific OS flags.  */
+ #define LINK_OS_SPEC "\
+@@ -764,15 +768,18 @@ ENDIAN_SELECT(" -mbig", " -mlittle", DEF
+ 
+ #define GLIBC_DYNAMIC_LINKER "/lib/ld.so.1"
+ #define UCLIBC_DYNAMIC_LINKER "/lib/ld-uClibc.so.0"
++#define MUSL_DYNAMIC_LINKER "/lib/ld-musl-powerpc%{msoft-float:-sf}.so.1"
+ #if DEFAULT_LIBC == LIBC_UCLIBC
+-#define CHOOSE_DYNAMIC_LINKER(G, U) "%{mglibc:" G ";:" U "}"
++#define CHOOSE_DYNAMIC_LINKER(G, U, M) "%{mglibc:" G ";:%{mmusl:" M ";:" U "}}"
++#elif DEFAULT_LIBC == LIBC_MUSL
++#define CHOOSE_DYNAMIC_LINKER(G, U, M) "%{mglibc:" G ";:%{muclibc:" U ";:" M "}}"
+ #elif !defined (DEFAULT_LIBC) || DEFAULT_LIBC == LIBC_GLIBC
+-#define CHOOSE_DYNAMIC_LINKER(G, U) "%{muclibc:" U ";:" G "}"
++#define CHOOSE_DYNAMIC_LINKER(G, U, M) "%{muclibc:" U ";:%{mmusl:" M ";:" G "}}"
+ #else
+ #error "Unsupported DEFAULT_LIBC"
+ #endif
+ #define GNU_USER_DYNAMIC_LINKER \
+-  CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER, UCLIBC_DYNAMIC_LINKER)
++  CHOOSE_DYNAMIC_LINKER (GLIBC_DYNAMIC_LINKER, UCLIBC_DYNAMIC_LINKER, MUSL_DYNAMIC_LINKER)
+ 
+ #define LINK_OS_LINUX_SPEC "-m elf32ppclinux %{!shared: %{!static: \
+   %{rdynamic:-export-dynamic} \
+@@ -895,6 +902,7 @@ ncrtn.o%s"
+   { "link_os_openbsd",		LINK_OS_OPENBSD_SPEC },			\
+   { "link_os_default",		LINK_OS_DEFAULT_SPEC },			\
+   { "cc1_secure_plt_default",	CC1_SECURE_PLT_DEFAULT_SPEC },		\
++  { "link_secure_plt_default",	LINK_SECURE_PLT_DEFAULT_SPEC },		\
+   { "cpp_os_ads",		CPP_OS_ADS_SPEC },			\
+   { "cpp_os_yellowknife",	CPP_OS_YELLOWKNIFE_SPEC },		\
+   { "cpp_os_mvme",		CPP_OS_MVME_SPEC },			\
diff --git a/toolchain_custom/gcc/patches/204-musl_sh.patch b/toolchain_custom/gcc/patches/204-musl_sh.patch
new file mode 100644
index 0000000000..dfb5b51746
--- /dev/null
+++ b/toolchain_custom/gcc/patches/204-musl_sh.patch
@@ -0,0 +1,17 @@
+--- a/gcc/config/sh/linux.h
++++ b/gcc/config/sh/linux.h
+@@ -43,7 +43,14 @@ along with GCC; see the file COPYING3.
+ 
+ #define TARGET_ASM_FILE_END file_end_indicate_exec_stack
+ 
++#if TARGET_BIG_ENDIAN_DEFAULT /* BE */
++#define MUSL_DYNAMIC_LINKER_E "eb"
++#else
++#define MUSL_DYNAMIC_LINKER_E
++#endif
++
+ #define GLIBC_DYNAMIC_LINKER "/lib/ld-linux.so.2"
++#define MUSL_DYNAMIC_LINKER "/lib/ld-musl-sh" MUSL_DYNAMIC_LINKER_E ".so.1"
+ 
+ #undef SUBTARGET_LINK_EMUL_SUFFIX
+ #define SUBTARGET_LINK_EMUL_SUFFIX "_linux"
diff --git a/toolchain_custom/gcc/patches/205-musl_x86.patch b/toolchain_custom/gcc/patches/205-musl_x86.patch
new file mode 100644
index 0000000000..a18bdccb10
--- /dev/null
+++ b/toolchain_custom/gcc/patches/205-musl_x86.patch
@@ -0,0 +1,72 @@
+From 606b5b76926d42d26c08c7400c38afe07e18e3cd Mon Sep 17 00:00:00 2001
+From: ktkachov <ktkachov@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Fri, 15 May 2015 13:20:01 +0000
+Subject: [PATCH 10/12] [PATCH 9/13] x86 musl support
+
+On behalf of Szabolcs Nagy.
+
+2015-05-15  Gregor Richards  <gregor.richards@uwaterloo.ca>
+
+	* config/i386/linux.h (MUSL_DYNAMIC_LINKER): Define.
+	* config/i386/linux64.h (MUSL_DYNAMIC_LINKER32): Define.
+	(MUSL_DYNAMIC_LINKER64, MUSL_DYNAMIC_LINKERX32): Define.
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/trunk@223218 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+ gcc/config/i386/linux.h   | 3 +++
+ gcc/config/i386/linux64.h | 7 +++++++
+ 2 files changed, 10 insertions(+)
+
+--- a/gcc/config/i386/linux.h
++++ b/gcc/config/i386/linux.h
+@@ -21,3 +21,6 @@ along with GCC; see the file COPYING3.
+ 
+ #define GNU_USER_LINK_EMULATION "elf_i386"
+ #define GLIBC_DYNAMIC_LINKER "/lib/ld-linux.so.2"
++
++#undef MUSL_DYNAMIC_LINKER
++#define MUSL_DYNAMIC_LINKER "/lib/ld-musl-i386.so.1"
+--- a/gcc/config/i386/linux64.h
++++ b/gcc/config/i386/linux64.h
+@@ -30,3 +30,10 @@ see the files COPYING3 and COPYING.RUNTI
+ #define GLIBC_DYNAMIC_LINKER32 "/lib/ld-linux.so.2"
+ #define GLIBC_DYNAMIC_LINKER64 "/lib64/ld-linux-x86-64.so.2"
+ #define GLIBC_DYNAMIC_LINKERX32 "/libx32/ld-linux-x32.so.2"
++
++#undef MUSL_DYNAMIC_LINKER32
++#define MUSL_DYNAMIC_LINKER32 "/lib/ld-musl-i386.so.1"
++#undef MUSL_DYNAMIC_LINKER64
++#define MUSL_DYNAMIC_LINKER64 "/lib/ld-musl-x86_64.so.1"
++#undef MUSL_DYNAMIC_LINKERX32
++#define MUSL_DYNAMIC_LINKERX32 "/lib/ld-musl-x32.so.1"
+--- a/libitm/config/linux/x86/tls.h
++++ b/libitm/config/linux/x86/tls.h
+@@ -25,16 +25,19 @@
+ #ifndef LIBITM_X86_TLS_H
+ #define LIBITM_X86_TLS_H 1
+ 
+-#if defined(__GLIBC_PREREQ) && __GLIBC_PREREQ(2, 10)
++#if defined(__GLIBC_PREREQ)
++#if __GLIBC_PREREQ(2, 10)
+ /* Use slots in the TCB head rather than __thread lookups.
+    GLIBC has reserved words 10 through 13 for TM.  */
+ #define HAVE_ARCH_GTM_THREAD 1
+ #define HAVE_ARCH_GTM_THREAD_DISP 1
+ #endif
++#endif
+ 
+ #include "config/generic/tls.h"
+ 
+-#if defined(__GLIBC_PREREQ) && __GLIBC_PREREQ(2, 10)
++#if defined(__GLIBC_PREREQ)
++#if __GLIBC_PREREQ(2, 10)
+ namespace GTM HIDDEN {
+ 
+ #ifdef __x86_64__
+@@ -101,5 +104,6 @@ static inline void set_abi_disp(struct a
+ 
+ } // namespace GTM
+ #endif /* >= GLIBC 2.10 */
++#endif
+ 
+ #endif // LIBITM_X86_TLS_H
diff --git a/toolchain_custom/gcc/patches/206-musl_aarch64.patch b/toolchain_custom/gcc/patches/206-musl_aarch64.patch
new file mode 100644
index 0000000000..c62ff51f75
--- /dev/null
+++ b/toolchain_custom/gcc/patches/206-musl_aarch64.patch
@@ -0,0 +1,29 @@
+From 3640f7722df1c5e39d1d4980e3dd51fbda45912c Mon Sep 17 00:00:00 2001
+From: jgreenhalgh <jgreenhalgh@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Wed, 27 May 2015 16:46:39 +0000
+Subject: [PATCH 12/12] [PATCH 3/13] aarch64 musl support
+
+gcc/Changelog:
+
+2015-05-27  Gregor Richards  <gregor.richards@uwaterloo.ca>
+	    Szabolcs Nagy  <szabolcs.nagy@arm.com>
+
+	* config/aarch64/aarch64-linux.h (MUSL_DYNAMIC_LINKER): Define.
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/trunk@223766 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+ gcc/config/aarch64/aarch64-linux.h | 3 +++
+ 1 file changed, 3 insertions(+)
+
+--- a/gcc/config/aarch64/aarch64-linux.h
++++ b/gcc/config/aarch64/aarch64-linux.h
+@@ -23,6 +23,9 @@
+ 
+ #define GLIBC_DYNAMIC_LINKER "/lib/ld-linux-aarch64%{mbig-endian:_be}%{mabi=ilp32:_ilp32}.so.1"
+ 
++#undef MUSL_DYNAMIC_LINKER
++#define MUSL_DYNAMIC_LINKER "/lib/ld-musl-aarch64%{mbig-endian:_be}%{mabi=ilp32:_ilp32}.so.1"
++
+ #undef  ASAN_CC1_SPEC
+ #define ASAN_CC1_SPEC "%{%:sanitize(address):-funwind-tables}"
+ 
diff --git a/toolchain_custom/gcc/patches/207-musl_fixincludes.patch b/toolchain_custom/gcc/patches/207-musl_fixincludes.patch
new file mode 100644
index 0000000000..e6fa47f7e6
--- /dev/null
+++ b/toolchain_custom/gcc/patches/207-musl_fixincludes.patch
@@ -0,0 +1,12 @@
+--- a/fixincludes/mkfixinc.sh
++++ b/fixincludes/mkfixinc.sh
+@@ -19,7 +19,8 @@ case $machine in
+     powerpc-*-eabi*    | \
+     powerpc-*-rtems*   | \
+     powerpcle-*-eabisim* | \
+-    powerpcle-*-eabi* )
++    powerpcle-*-eabi* | \
++    *-musl* )
+ 	#  IF there is no include fixing,
+ 	#  THEN create a no-op fixer and exit
+ 	(echo "#! /bin/sh" ; echo "exit 0" ) > ${target}
diff --git a/toolchain_custom/gcc/patches/208-musl_gomp.patch b/toolchain_custom/gcc/patches/208-musl_gomp.patch
new file mode 100644
index 0000000000..b15403b66f
--- /dev/null
+++ b/toolchain_custom/gcc/patches/208-musl_gomp.patch
@@ -0,0 +1,11 @@
+--- a/libgomp/config/posix/time.c
++++ b/libgomp/config/posix/time.c
+@@ -29,6 +29,8 @@
+    The following implementation uses the most simple POSIX routines.
+    If present, POSIX 4 clocks should be used instead.  */
+ 
++#define _POSIX_C_SOURCE 199309L /* for clocks */
++
+ #include "libgomp.h"
+ #include <unistd.h>
+ #if TIME_WITH_SYS_TIME
diff --git a/toolchain_custom/gcc/patches/209-musl_libstdc++.patch b/toolchain_custom/gcc/patches/209-musl_libstdc++.patch
new file mode 100644
index 0000000000..2c8f6365ee
--- /dev/null
+++ b/toolchain_custom/gcc/patches/209-musl_libstdc++.patch
@@ -0,0 +1,26 @@
+--- a/libstdc++-v3/configure.host
++++ b/libstdc++-v3/configure.host
+@@ -274,6 +274,13 @@ case "${host_os}" in
+     os_include_dir="os/bsd/freebsd"
+     ;;
+   gnu* | linux* | kfreebsd*-gnu | knetbsd*-gnu)
++    # check for musl by target
++    case "${host_os}" in
++      *-musl*)
++        os_include_dir="os/generic"
++        ;;
++      *)
++
+     if [ "$uclibc" = "yes" ]; then
+       os_include_dir="os/uclibc"
+     elif [ "$bionic" = "yes" ]; then
+@@ -282,6 +289,9 @@ case "${host_os}" in
+       os_include_dir="os/gnu-linux"
+     fi
+     ;;
++
++    esac
++    ;;
+   hpux*)
+     os_include_dir="os/hpux"
+     ;;
diff --git a/toolchain_custom/gcc/patches/230-musl_libssp.patch b/toolchain_custom/gcc/patches/230-musl_libssp.patch
new file mode 100644
index 0000000000..5e4db3393b
--- /dev/null
+++ b/toolchain_custom/gcc/patches/230-musl_libssp.patch
@@ -0,0 +1,26 @@
+--- a/gcc/gcc.c
++++ b/gcc/gcc.c
+@@ -727,7 +727,9 @@ proper position among the other output f
+ #endif
+ 
+ #ifndef LINK_SSP_SPEC
+-#ifdef TARGET_LIBC_PROVIDES_SSP
++#if DEFAULT_LIBC == LIBC_MUSL
++#define LINK_SSP_SPEC "-lssp_nonshared"
++#elif defined(TARGET_LIBC_PROVIDES_SSP)
+ #define LINK_SSP_SPEC "%{fstack-protector|fstack-protector-all" \
+ 		       "|fstack-protector-strong|fstack-protector-explicit:}"
+ #else
+Index: gcc-5.2.0/libssp/Makefile.in
+===================================================================
+--- gcc-5.2.0.orig/libssp/Makefile.in	2011-02-13 17:15:53.000000000 +0530
++++ gcc-5.2.0/libssp/Makefile.in	2018-07-31 15:20:43.475456077 +0530
+@@ -257,7 +257,7 @@
+ @LIBSSP_USE_SYMVER_FALSE@version_dep = 
+ @LIBSSP_USE_SYMVER_GNU_TRUE@@LIBSSP_USE_SYMVER_TRUE@version_dep = $(srcdir)/ssp.map
+ @LIBSSP_USE_SYMVER_SUN_TRUE@@LIBSSP_USE_SYMVER_TRUE@version_dep = ssp.map-sun
+-AM_CFLAGS = -Wall
++AM_CFLAGS = -Wall -Wl,-z,now -Wl,-z,relro
+ toolexeclib_LTLIBRARIES = libssp.la libssp_nonshared.la
+ libsubincludedir = $(libdir)/gcc/$(target_noncanonical)/$(gcc_version)/include
+ nobase_libsubinclude_HEADERS = ssp/ssp.h ssp/string.h ssp/stdio.h ssp/unistd.h
diff --git a/toolchain_custom/gcc/patches/800-arm_v5te_no_ldrd_strd.patch b/toolchain_custom/gcc/patches/800-arm_v5te_no_ldrd_strd.patch
new file mode 100644
index 0000000000..0edeb13c75
--- /dev/null
+++ b/toolchain_custom/gcc/patches/800-arm_v5te_no_ldrd_strd.patch
@@ -0,0 +1,11 @@
+--- a/gcc/config/arm/arm.h
++++ b/gcc/config/arm/arm.h
+@@ -285,7 +285,7 @@ extern void (*arm_lang_output_object_att
+ /* Thumb-1 only.  */
+ #define TARGET_THUMB1_ONLY		(TARGET_THUMB1 && !arm_arch_notm)
+ 
+-#define TARGET_LDRD			(arm_arch5e && ARM_DOUBLEWORD_ALIGN \
++#define TARGET_LDRD			(arm_arch6 && ARM_DOUBLEWORD_ALIGN \
+                                          && !TARGET_THUMB1)
+ 
+ #define TARGET_CRC32			(arm_arch_crc)
diff --git a/toolchain_custom/gcc/patches/810-arm-softfloat-libgcc.patch b/toolchain_custom/gcc/patches/810-arm-softfloat-libgcc.patch
new file mode 100644
index 0000000000..1d06f5b2ec
--- /dev/null
+++ b/toolchain_custom/gcc/patches/810-arm-softfloat-libgcc.patch
@@ -0,0 +1,25 @@
+--- a/libgcc/config/arm/t-linux
++++ b/libgcc/config/arm/t-linux
+@@ -1,6 +1,10 @@
+ LIB1ASMSRC = arm/lib1funcs.S
+ LIB1ASMFUNCS = _udivsi3 _divsi3 _umodsi3 _modsi3 _dvmd_lnx _clzsi2 _clzdi2 \
+-	_ctzsi2 _arm_addsubdf3 _arm_addsubsf3
++	_ctzsi2 _arm_addsubdf3 _arm_addsubsf3 \
++	_arm_negdf2 _arm_muldivdf3 _arm_cmpdf2 _arm_unorddf2 \
++	_arm_fixdfsi _arm_fixunsdfsi _arm_truncdfsf2 \
++	_arm_negsf2 _arm_muldivsf3 _arm_cmpsf2 _arm_unordsf2 \
++	_arm_fixsfsi _arm_fixunssfsi
+ 
+ # Just for these, we omit the frame pointer since it makes such a big
+ # difference.
+--- a/gcc/config/arm/linux-elf.h
++++ b/gcc/config/arm/linux-elf.h
+@@ -60,8 +60,6 @@
+    %{shared:-lc} \
+    %{!shared:%{profile:-lc_p}%{!profile:-lc}}"
+ 
+-#define LIBGCC_SPEC "%{mfloat-abi=soft*:-lfloat} -lgcc"
+-
+ #define GLIBC_DYNAMIC_LINKER "/lib/ld-linux.so.2"
+ 
+ #define LINUX_TARGET_LINK_SPEC  "%{h*} \
diff --git a/toolchain_custom/gcc/patches/820-libgcc_pic.patch b/toolchain_custom/gcc/patches/820-libgcc_pic.patch
new file mode 100644
index 0000000000..42bf0c8ccc
--- /dev/null
+++ b/toolchain_custom/gcc/patches/820-libgcc_pic.patch
@@ -0,0 +1,36 @@
+--- a/libgcc/Makefile.in
++++ b/libgcc/Makefile.in
+@@ -887,11 +887,12 @@ $(libgcov-driver-objects): %$(objext): $
+ 
+ # Static libraries.
+ libgcc.a: $(libgcc-objects)
++libgcc_pic.a: $(libgcc-s-objects)
+ libgcov.a: $(libgcov-objects)
+ libunwind.a: $(libunwind-objects)
+ libgcc_eh.a: $(libgcc-eh-objects)
+ 
+-libgcc.a libgcov.a libunwind.a libgcc_eh.a:
++libgcc.a libgcov.a libunwind.a libgcc_eh.a libgcc_pic.a:
+ 	-rm -f $@
+ 
+ 	objects="$(objects)";					\
+@@ -913,7 +914,7 @@ libgcc_s$(SHLIB_EXT): libunwind$(SHLIB_E
+ endif
+ 
+ ifeq ($(enable_shared),yes)
+-all: libgcc_eh.a libgcc_s$(SHLIB_EXT)
++all: libgcc_eh.a libgcc_pic.a libgcc_s$(SHLIB_EXT)
+ ifneq ($(LIBUNWIND),)
+ all: libunwind$(SHLIB_EXT)
+ endif
+@@ -1108,6 +1109,10 @@ install-shared:
+ 	chmod 644 $(DESTDIR)$(inst_libdir)/libgcc_eh.a
+ 	$(RANLIB) $(DESTDIR)$(inst_libdir)/libgcc_eh.a
+ 
++	$(INSTALL_DATA) libgcc_pic.a $(mapfile) $(DESTDIR)$(inst_libdir)/
++	chmod 644 $(DESTDIR)$(inst_libdir)/libgcc_pic.a
++	$(RANLIB) $(DESTDIR)$(inst_libdir)/libgcc_pic.a
++
+ 	$(subst @multilib_dir@,$(MULTIDIR),$(subst \
+ 		@shlib_base_name@,libgcc_s,$(subst \
+ 		@shlib_slibdir_qual@,$(MULTIOSSUBDIR),$(SHLIB_INSTALL))))
diff --git a/toolchain_custom/gcc/patches/830-arm_unbreak_armv4t.patch b/toolchain_custom/gcc/patches/830-arm_unbreak_armv4t.patch
new file mode 100644
index 0000000000..37f8f2a54d
--- /dev/null
+++ b/toolchain_custom/gcc/patches/830-arm_unbreak_armv4t.patch
@@ -0,0 +1,13 @@
+http://sourceware.org/ml/crossgcc/2008-05/msg00009.html
+
+--- a/gcc/config/arm/linux-eabi.h
++++ b/gcc/config/arm/linux-eabi.h
+@@ -45,7 +45,7 @@
+    The ARM10TDMI core is the default for armv5t, so set
+    SUBTARGET_CPU_DEFAULT to achieve this.  */
+ #undef  SUBTARGET_CPU_DEFAULT
+-#define SUBTARGET_CPU_DEFAULT TARGET_CPU_arm10tdmi
++#define SUBTARGET_CPU_DEFAULT TARGET_CPU_arm9tdmi
+ 
+ /* TARGET_BIG_ENDIAN_DEFAULT is set in
+    config.gcc for big endian configurations.  */
diff --git a/toolchain_custom/gcc/patches/840-armv4_pass_fix-v4bx_to_ld.patch b/toolchain_custom/gcc/patches/840-armv4_pass_fix-v4bx_to_ld.patch
new file mode 100644
index 0000000000..cb1fb98235
--- /dev/null
+++ b/toolchain_custom/gcc/patches/840-armv4_pass_fix-v4bx_to_ld.patch
@@ -0,0 +1,19 @@
+--- a/gcc/config/arm/linux-eabi.h
++++ b/gcc/config/arm/linux-eabi.h
+@@ -94,10 +94,15 @@
+ #define MUSL_DYNAMIC_LINKER \
+   "/lib/ld-musl-arm" MUSL_DYNAMIC_LINKER_E "%{mfloat-abi=hard:hf}.so.1"
+ 
++/* For armv4 we pass --fix-v4bx to linker to support EABI */
++#undef TARGET_FIX_V4BX_SPEC
++#define TARGET_FIX_V4BX_SPEC " %{mcpu=arm8|mcpu=arm810|mcpu=strongarm*"\
++  "|march=armv4|mcpu=fa526|mcpu=fa626:--fix-v4bx}"
++
+ /* At this point, bpabi.h will have clobbered LINK_SPEC.  We want to
+    use the GNU/Linux version, not the generic BPABI version.  */
+ #undef  LINK_SPEC
+-#define LINK_SPEC EABI_LINK_SPEC					\
++#define LINK_SPEC EABI_LINK_SPEC TARGET_FIX_V4BX_SPEC			\
+   LINUX_OR_ANDROID_LD (LINUX_TARGET_LINK_SPEC,				\
+ 		       LINUX_TARGET_LINK_SPEC " " ANDROID_LINK_SPEC)
+ 
diff --git a/toolchain_custom/gcc/patches/850-use_shared_libgcc.patch b/toolchain_custom/gcc/patches/850-use_shared_libgcc.patch
new file mode 100644
index 0000000000..d7ba9627aa
--- /dev/null
+++ b/toolchain_custom/gcc/patches/850-use_shared_libgcc.patch
@@ -0,0 +1,47 @@
+--- a/gcc/config/arm/linux-eabi.h
++++ b/gcc/config/arm/linux-eabi.h
+@@ -131,10 +131,6 @@
+ #define ENDFILE_SPEC \
+   LINUX_OR_ANDROID_LD (GNU_USER_TARGET_ENDFILE_SPEC, ANDROID_ENDFILE_SPEC)
+ 
+-/* Use the default LIBGCC_SPEC, not the version in linux-elf.h, as we
+-   do not use -lfloat.  */
+-#undef LIBGCC_SPEC
+-
+ /* Clear the instruction cache from `beg' to `end'.  This is
+    implemented in lib1funcs.S, so ensure an error if this definition
+    is used.  */
+--- a/gcc/config/linux.h
++++ b/gcc/config/linux.h
+@@ -51,6 +51,10 @@ see the files COPYING3 and COPYING.RUNTI
+ 	builtin_assert ("system=posix");			\
+     } while (0)
+ 
++#ifndef LIBGCC_SPEC
++#define LIBGCC_SPEC "%{static|static-libgcc:-lgcc}%{!static:%{!static-libgcc:-lgcc_s}}"
++#endif
++
+ /* Determine which dynamic linker to use depending on whether GLIBC or
+    uClibc or Bionic is the default C library and whether
+    -muclibc or -mglibc or -mbionic has been passed to change the default.  */
+--- a/libgcc/mkmap-symver.awk
++++ b/libgcc/mkmap-symver.awk
+@@ -132,5 +132,5 @@ function output(lib) {
+   else if (inherit[lib])
+     printf("} %s;\n", inherit[lib]);
+   else
+-    printf ("\n  local:\n\t*;\n};\n");
++    printf ("\n\t*;\n};\n");
+ }
+--- a/gcc/config/rs6000/linux.h
++++ b/gcc/config/rs6000/linux.h
+@@ -56,6 +56,9 @@
+ #undef	CPP_OS_DEFAULT_SPEC
+ #define CPP_OS_DEFAULT_SPEC "%(cpp_os_linux)"
+ 
++#undef LIBGCC_SPEC
++#define LIBGCC_SPEC "%{!static:%{!static-libgcc:-lgcc_s}} -lgcc"
++
+ #undef  LINK_SHLIB_SPEC
+ #define LINK_SHLIB_SPEC "%{shared:-shared} %{!shared: %{static:-static}}"
+ 
diff --git a/toolchain_custom/gcc/patches/851-libgcc_no_compat.patch b/toolchain_custom/gcc/patches/851-libgcc_no_compat.patch
new file mode 100644
index 0000000000..80c3476841
--- /dev/null
+++ b/toolchain_custom/gcc/patches/851-libgcc_no_compat.patch
@@ -0,0 +1,12 @@
+--- a/libgcc/config/t-libunwind
++++ b/libgcc/config/t-libunwind
+@@ -2,8 +2,7 @@
+ 
+ HOST_LIBGCC2_CFLAGS += -DUSE_GAS_SYMVER
+ 
+-LIB2ADDEH = $(srcdir)/unwind-sjlj.c $(srcdir)/unwind-c.c \
+-  $(srcdir)/unwind-compat.c $(srcdir)/unwind-dw2-fde-compat.c
++LIB2ADDEH = $(srcdir)/unwind-sjlj.c $(srcdir)/unwind-c.c
+ LIB2ADDEHSTATIC = $(srcdir)/unwind-sjlj.c $(srcdir)/unwind-c.c
+ 
+ # Override the default value from t-slibgcc-elf-ver and mention -lunwind
diff --git a/toolchain_custom/gcc/patches/860-use_eh_frame.patch b/toolchain_custom/gcc/patches/860-use_eh_frame.patch
new file mode 100644
index 0000000000..4586349537
--- /dev/null
+++ b/toolchain_custom/gcc/patches/860-use_eh_frame.patch
@@ -0,0 +1,43 @@
+--- a/libgcc/unwind-dw2-fde-dip.c
++++ b/libgcc/unwind-dw2-fde-dip.c
+@@ -46,34 +46,13 @@
+ #include "unwind-compat.h"
+ #include "gthr.h"
+ 
+-#if !defined(inhibit_libc) && defined(HAVE_LD_EH_FRAME_HDR) \
+-    && (__GLIBC__ > 2 || (__GLIBC__ == 2 && __GLIBC_MINOR__ > 2) \
+-	|| (__GLIBC__ == 2 && __GLIBC_MINOR__ == 2 && defined(DT_CONFIG)))
+-# define USE_PT_GNU_EH_FRAME
+-#endif
+-
+-#if !defined(inhibit_libc) && defined(HAVE_LD_EH_FRAME_HDR) \
+-    && defined(__BIONIC__)
+-# define USE_PT_GNU_EH_FRAME
+-#endif
+-
+-#if !defined(inhibit_libc) && defined(HAVE_LD_EH_FRAME_HDR) \
+-    && defined(TARGET_DL_ITERATE_PHDR) \
+-    && (defined(__DragonFly__) || defined(__FreeBSD__))
+-# define ElfW __ElfN
+-# define USE_PT_GNU_EH_FRAME
+-#endif
+-
+-#if !defined(inhibit_libc) && defined(HAVE_LD_EH_FRAME_HDR) \
+-    && defined(__OpenBSD__)
+-# define ElfW(type) Elf_##type
+-# define USE_PT_GNU_EH_FRAME
+-#endif
+-
+-#if !defined(inhibit_libc) && defined(HAVE_LD_EH_FRAME_HDR) \
+-    && defined(TARGET_DL_ITERATE_PHDR) \
+-    && defined(__sun__) && defined(__svr4__)
++#if !defined(inhibit_libc) && defined(HAVE_LD_EH_FRAME_HDR)
+ # define USE_PT_GNU_EH_FRAME
++# ifdef __OpenBSD__
++#  define ElfW(type) Elf_##type
++# elif defined(__FreeBSD__) && __FreeBSD__ >= 7
++#  define ElfW __ElfN
++# endif
+ #endif
+ 
+ #if defined(USE_PT_GNU_EH_FRAME)
diff --git a/toolchain_custom/gcc/patches/870-ppc_no_crtsavres.patch b/toolchain_custom/gcc/patches/870-ppc_no_crtsavres.patch
new file mode 100644
index 0000000000..b38b9d5d9c
--- /dev/null
+++ b/toolchain_custom/gcc/patches/870-ppc_no_crtsavres.patch
@@ -0,0 +1,11 @@
+--- a/gcc/config/rs6000/rs6000.c
++++ b/gcc/config/rs6000/rs6000.c
+@@ -21453,7 +21453,7 @@ rs6000_savres_strategy (rs6000_stack_t *
+   /* Define cutoff for using out-of-line functions to save registers.  */
+   if (DEFAULT_ABI == ABI_V4 || TARGET_ELF)
+     {
+-      if (!optimize_size)
++      if (1)
+ 	{
+ 	  strategy |= SAVE_INLINE_FPRS | REST_INLINE_FPRS;
+ 	  strategy |= SAVE_INLINE_GPRS | REST_INLINE_GPRS;
diff --git a/toolchain_custom/gcc/patches/880-no_java_section.patch b/toolchain_custom/gcc/patches/880-no_java_section.patch
new file mode 100644
index 0000000000..def6c9f4a0
--- /dev/null
+++ b/toolchain_custom/gcc/patches/880-no_java_section.patch
@@ -0,0 +1,11 @@
+--- a/gcc/defaults.h
++++ b/gcc/defaults.h
+@@ -380,7 +380,7 @@ see the files COPYING3 and COPYING.RUNTI
+ /* If we have named section and we support weak symbols, then use the
+    .jcr section for recording java classes which need to be registered
+    at program start-up time.  */
+-#if defined (TARGET_ASM_NAMED_SECTION) && SUPPORTS_WEAK
++#if 0 && defined (TARGET_ASM_NAMED_SECTION) && SUPPORTS_WEAK
+ #ifndef JCR_SECTION_NAME
+ #define JCR_SECTION_NAME ".jcr"
+ #endif
diff --git a/toolchain_custom/gcc/patches/900-bad-mips16-crt.patch b/toolchain_custom/gcc/patches/900-bad-mips16-crt.patch
new file mode 100644
index 0000000000..dd6e9dc889
--- /dev/null
+++ b/toolchain_custom/gcc/patches/900-bad-mips16-crt.patch
@@ -0,0 +1,9 @@
+--- a/libgcc/config/mips/t-mips16
++++ b/libgcc/config/mips/t-mips16
+@@ -43,3 +43,6 @@ SYNC_CFLAGS = -mno-mips16
+ 
+ # Version these symbols if building libgcc.so.
+ SHLIB_MAPFILES += $(srcdir)/config/mips/libgcc-mips16.ver
++
++CRTSTUFF_T_CFLAGS += -mno-mips16
++CRTSTUFF_T_CFLAGS_S += -mno-mips16
diff --git a/toolchain_custom/gcc/patches/910-mbsd_multi.patch b/toolchain_custom/gcc/patches/910-mbsd_multi.patch
new file mode 100644
index 0000000000..68661d2e6b
--- /dev/null
+++ b/toolchain_custom/gcc/patches/910-mbsd_multi.patch
@@ -0,0 +1,222 @@
+
+	This patch brings over a few features from MirBSD:
+	* -fhonour-copts
+	  If this option is not given, it's warned (depending
+	  on environment variables). This is to catch errors
+	  of misbuilt packages which override CFLAGS themselves.
+	* -Werror-maybe-reset
+	  Has the effect of -Wno-error if GCC_NO_WERROR is
+	  set and not '0', a no-operation otherwise. This is
+	  to be able to use -Werror in "make" but prevent
+	  GNU autoconf generated configure scripts from
+	  freaking out.
+
+	This patch was authored by Thorsten Glaser <tg at mirbsd.de>
+	with copyright assignment to the FSF in effect.
+
+--- a/gcc/c-family/c-opts.c
++++ b/gcc/c-family/c-opts.c
+@@ -122,6 +122,9 @@ static int class_dump_flags;
+ /* Whether any standard preincluded header has been preincluded.  */
+ static bool done_preinclude;
+ 
++/* Check if a port honours COPTS.  */
++static int honour_copts = 0;
++
+ static void handle_OPT_d (const char *);
+ static void set_std_cxx98 (int);
+ static void set_std_cxx11 (int);
+@@ -449,6 +452,12 @@ c_common_handle_option (size_t scode, co
+       flag_no_builtin = !value;
+       break;
+ 
++    case OPT_fhonour_copts:
++      if (c_language == clk_c) {
++        honour_copts++;
++      }
++      break;
++
+     case OPT_fconstant_string_class_:
+       constant_string_class_name = arg;
+       break;
+@@ -1034,6 +1043,47 @@ c_common_init (void)
+       return false;
+     }
+ 
++  if (c_language == clk_c) {
++    char *ev = getenv ("GCC_HONOUR_COPTS");
++    int evv;
++    if (ev == NULL)
++      evv = -1;
++    else if ((*ev == '0') || (*ev == '\0'))
++      evv = 0;
++    else if (*ev == '1')
++      evv = 1;
++    else if (*ev == '2')
++      evv = 2;
++    else if (*ev == 's')
++      evv = -1;
++    else {
++      warning (0, "unknown GCC_HONOUR_COPTS value, assuming 1");
++      evv = 1; /* maybe depend this on something like MIRBSD_NATIVE?  */
++    }
++    if (evv == 1) {
++      if (honour_copts == 0) {
++        error ("someone does not honour COPTS at all in lenient mode");
++        return false;
++      } else if (honour_copts != 1) {
++        warning (0, "someone does not honour COPTS correctly, passed %d times",
++         honour_copts);
++      }
++    } else if (evv == 2) {
++      if (honour_copts == 0) {
++        error ("someone does not honour COPTS at all in strict mode");
++        return false;
++      } else if (honour_copts != 1) {
++        error ("someone does not honour COPTS correctly, passed %d times",
++         honour_copts);
++        return false;
++      }
++    } else if (evv == 0) {
++      if (honour_copts != 1)
++        inform (0, "someone does not honour COPTS correctly, passed %d times",
++         honour_copts);
++    }
++  }
++
+   return true;
+ }
+ 
+--- a/gcc/c-family/c.opt
++++ b/gcc/c-family/c.opt
+@@ -431,6 +431,10 @@ Wfloat-conversion
+ C ObjC C++ ObjC++ Var(warn_float_conversion) LangEnabledBy(C ObjC C++ ObjC++,Wconversion)
+ Warn for implicit type conversions that cause loss of floating point precision
+ 
++Werror-maybe-reset
++C ObjC C++ ObjC++
++; Documented in common.opt
++
+ Wfloat-equal
+ C ObjC C++ ObjC++ Var(warn_float_equal) Warning
+ Warn if testing floating point numbers for equality
+@@ -1161,6 +1165,9 @@ C++ ObjC++ Optimization Alias(fexception
+ fhonor-std
+ C++ ObjC++ Ignore Warn(switch %qs is no longer supported)
+ 
++fhonour-copts
++C ObjC C++ ObjC++ RejectNegative
++
+ fhosted
+ C ObjC
+ Assume normal C execution environment
+--- a/gcc/common.opt
++++ b/gcc/common.opt
+@@ -561,6 +561,10 @@ Werror=
+ Common Joined
+ Treat specified warning as error
+ 
++Werror-maybe-reset
++Common
++If environment variable GCC_NO_WERROR is set, act as -Wno-error
++
+ Wextra
+ Common Var(extra_warnings) Warning
+ Print extra (possibly unwanted) warnings
+@@ -1360,6 +1364,9 @@ fguess-branch-probability
+ Common Report Var(flag_guess_branch_prob) Optimization
+ Enable guessing of branch probabilities
+ 
++fhonour-copts
++Common RejectNegative
++
+ ; Nonzero means ignore `#ident' directives.  0 means handle them.
+ ; Generate position-independent code for executables if possible
+ ; On SVR4 targets, it also controls whether or not to emit a
+--- a/gcc/opts.c
++++ b/gcc/opts.c
+@@ -1699,6 +1699,17 @@ common_handle_option (struct gcc_options
+ 			       opts, opts_set, loc, dc);
+       break;
+ 
++    case OPT_Werror_maybe_reset:
++      {
++        char *ev = getenv ("GCC_NO_WERROR");
++        if ((ev != NULL) && (*ev != '0'))
++          warnings_are_errors = 0;
++      }
++      break;
++
++    case OPT_fhonour_copts:
++      break;
++
+     case OPT_Wlarger_than_:
+       opts->x_larger_than_size = value;
+       opts->x_warn_larger_than = value != -1;
+--- a/gcc/doc/cppopts.texi
++++ b/gcc/doc/cppopts.texi
+@@ -163,6 +163,11 @@ in older programs.  This warning is on b
+ Make all warnings into hard errors.  Source code which triggers warnings
+ will be rejected.
+ 
++ at item -Werror-maybe-reset
++ at opindex Werror-maybe-reset
++Act like @samp{-Wno-error} if the @env{GCC_NO_WERROR} environment
++variable is set to anything other than 0 or empty.
++
+ @item -Wsystem-headers
+ @opindex Wsystem-headers
+ Issue warnings for code in system headers.  These are normally unhelpful
+--- a/gcc/doc/invoke.texi
++++ b/gcc/doc/invoke.texi
+@@ -251,7 +251,7 @@ Objective-C and Objective-C++ Dialects}.
+ -Wdisabled-optimization @gol
+ -Wno-discarded-qualifiers -Wno-discarded-array-qualifiers @gol
+ -Wno-div-by-zero -Wdouble-promotion -Wempty-body  -Wenum-compare @gol
+--Wno-endif-labels -Werror  -Werror=* @gol
++-Wno-endif-labels -Werror  -Werror=* -Werror-maybe-reset @gol
+ -Wfatal-errors  -Wfloat-equal  -Wformat  -Wformat=2 @gol
+ -Wno-format-contains-nul -Wno-format-extra-args -Wformat-nonliteral @gol
+ -Wformat-security  -Wformat-signedness  -Wformat-y2k @gol
+@@ -5371,6 +5371,22 @@ This option is only supported for C and
+ @option{-Wall} and by @option{-Wpedantic}, which can be disabled with
+ @option{-Wno-pointer-sign}.
+ 
++ at item -Werror-maybe-reset
++ at opindex Werror-maybe-reset
++Act like @samp{-Wno-error} if the @env{GCC_NO_WERROR} environment
++variable is set to anything other than 0 or empty.
++
++ at item -fhonour-copts
++ at opindex fhonour-copts
++If @env{GCC_HONOUR_COPTS} is set to 1, abort if this option is not
++given at least once, and warn if it is given more than once.
++If @env{GCC_HONOUR_COPTS} is set to 2, abort if this option is not
++given exactly once.
++If @env{GCC_HONOUR_COPTS} is set to 0 or unset, warn if this option
++is not given exactly once.
++The warning is quelled if @env{GCC_HONOUR_COPTS} is set to @samp{s}.
++This flag and environment variable only affect the C language.
++
+ @item -Wstack-protector
+ @opindex Wstack-protector
+ @opindex Wno-stack-protector
+@@ -7844,7 +7860,7 @@ so, the first branch is redirected to ei
+ second branch or a point immediately following it, depending on whether
+ the condition is known to be true or false.
+ 
+-Enabled at levels @option{-O2}, @option{-O3}, @option{-Os}.
++Enabled at levels @option{-O3}.
+ 
+ @item -fsplit-wide-types
+ @opindex fsplit-wide-types
+--- a/gcc/java/jvspec.c
++++ b/gcc/java/jvspec.c
+@@ -629,6 +629,7 @@ lang_specific_pre_link (void)
+      class name.  Append dummy `.c' that can be stripped by set_input so %b
+      is correct.  */ 
+   set_input (concat (main_class_name, "main.c", NULL));
++  putenv ("GCC_HONOUR_COPTS=s"); /* XXX hack!  */
+   err = do_spec (jvgenmain_spec);
+   if (err == 0)
+     {
diff --git a/toolchain_custom/gcc/patches/920-specs_nonfatal_getenv.patch b/toolchain_custom/gcc/patches/920-specs_nonfatal_getenv.patch
new file mode 100644
index 0000000000..3d708f24c3
--- /dev/null
+++ b/toolchain_custom/gcc/patches/920-specs_nonfatal_getenv.patch
@@ -0,0 +1,15 @@
+--- a/gcc/gcc.c
++++ b/gcc/gcc.c
+@@ -8807,8 +8807,10 @@ getenv_spec_function (int argc, const ch
+ 
+   value = getenv (argv[0]);
+   if (!value)
+-    fatal_error (input_location,
+-		 "environment variable %qs not defined", argv[0]);
++    {
++      warning (input_location, "environment variable %qs not defined", argv[0]);
++      value = "";
++    }
+ 
+   /* We have to escape every character of the environment variable so
+      they are not interpreted as active spec characters.  A
diff --git a/toolchain_custom/gcc/patches/930-fix-mips-noexecstack.patch b/toolchain_custom/gcc/patches/930-fix-mips-noexecstack.patch
new file mode 100644
index 0000000000..4bb126eb99
--- /dev/null
+++ b/toolchain_custom/gcc/patches/930-fix-mips-noexecstack.patch
@@ -0,0 +1,111 @@
+From da45b3fde60095756f5f6030f6012c23a3d34429 Mon Sep 17 00:00:00 2001
+From: Andrew McDonnell <bugs@andrewmcdonnell.net>
+Date: Fri, 3 Oct 2014 19:09:00 +0930
+Subject: Add .note.GNU-stack section
+
+See http://lists.busybox.net/pipermail/uclibc/2014-October/048671.html
+Below copied from https://gcc.gnu.org/ml/gcc-patches/2014-09/msg02430.html
+
+Re: [Patch, MIPS] Add .note.GNU-stack section
+
+    From: Steve Ellcey <sellcey at mips dot com>
+
+On Wed, 2014-09-10 at 10:15 -0700, Eric Christopher wrote:
+>
+>
+> On Wed, Sep 10, 2014 at 9:27 AM, <pinskia@gmail.com> wrote:
+
+>         This works except you did not update the assembly files in
+>         libgcc or glibc. We (Cavium) have the same patch in our tree
+>         for a few released versions.
+
+> Mind just checking yours in then Andrew?
+
+> Thanks!
+> -eric
+
+I talked to Andrew about what files he changed in GCC and created and
+tested this new patch.  Andrew also mentioned changing some assembly
+files in glibc but I don't see any use of '.section .note.GNU-stack' in
+any assembly files in glibc (for any platform) so I wasn't planning on
+creating a glibc to add them to mips glibc assembly language files.
+
+OK to check in this patch?
+
+Steve Ellcey
+sellcey@mips.com
+
+
+
+2014-09-26  Steve Ellcey  <sellcey@mips.com>
+---
+ gcc/config/mips/mips.c          | 3 +++
+ libgcc/config/mips/crti.S       | 4 ++++
+ libgcc/config/mips/crtn.S       | 3 +++
+ libgcc/config/mips/mips16.S     | 4 ++++
+ libgcc/config/mips/vr4120-div.S | 4 ++++
+ 5 files changed, 18 insertions(+)
+
+--- a/gcc/config/mips/mips.c
++++ b/gcc/config/mips/mips.c
+@@ -19621,6 +19621,9 @@ mips_lra_p (void)
+ #undef TARGET_LRA_P
+ #define TARGET_LRA_P mips_lra_p
+ 
++#undef TARGET_ASM_FILE_END
++#define TARGET_ASM_FILE_END file_end_indicate_exec_stack
++
+ struct gcc_target targetm = TARGET_INITIALIZER;
+ 
+ #include "gt-mips.h"
+--- a/libgcc/config/mips/crti.S
++++ b/libgcc/config/mips/crti.S
+@@ -21,6 +21,10 @@ a copy of the GCC Runtime Library Except
+ see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
+ <http://www.gnu.org/licenses/>.  */
+ 
++
++/* An executable stack is *not* required for these functions.  */
++	.section .note.GNU-stack,"",%progbits
++
+ /* 4 slots for argument spill area.  1 for cpreturn, 1 for stack.
+    Return spill offset of 40 and 20.  Aligned to 16 bytes for n32.  */
+ 
+--- a/libgcc/config/mips/crtn.S
++++ b/libgcc/config/mips/crtn.S
+@@ -21,6 +21,9 @@ a copy of the GCC Runtime Library Except
+ see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
+ <http://www.gnu.org/licenses/>.  */
+ 
++/* An executable stack is *not* required for these functions.  */
++	.section .note.GNU-stack,"",%progbits
++
+ /* 4 slots for argument spill area.  1 for cpreturn, 1 for stack.
+    Return spill offset of 40 and 20.  Aligned to 16 bytes for n32.  */
+ 
+--- a/libgcc/config/mips/mips16.S
++++ b/libgcc/config/mips/mips16.S
+@@ -48,6 +48,10 @@ see the files COPYING3 and COPYING.RUNTI
+    values using the soft-float calling convention, but do the actual
+    operation using the hard floating point instructions.  */
+ 
++/* An executable stack is *not* required for these functions.  */
++	.section .note.GNU-stack,"",%progbits
++	.previous
++
+ #if defined _MIPS_SIM && (_MIPS_SIM == _ABIO32 || _MIPS_SIM == _ABIO64)
+ 
+ /* This file contains 32-bit assembly code.  */
+--- a/libgcc/config/mips/vr4120-div.S
++++ b/libgcc/config/mips/vr4120-div.S
+@@ -26,6 +26,10 @@ see the files COPYING3 and COPYING.RUNTI
+    -mfix-vr4120.  div and ddiv do not give the correct result when one
+    of the operands is negative.  */
+ 
++/* An executable stack is *not* required for these functions.  */
++	.section .note.GNU-stack,"",%progbits
++	.previous
++
+ 	.set	nomips16
+ 
+ #define DIV								\
diff --git a/toolchain_custom/gcc/patches/940-no-clobber-stamp-bits.patch b/toolchain_custom/gcc/patches/940-no-clobber-stamp-bits.patch
new file mode 100644
index 0000000000..bf2ab07303
--- /dev/null
+++ b/toolchain_custom/gcc/patches/940-no-clobber-stamp-bits.patch
@@ -0,0 +1,11 @@
+--- a/libstdc++-v3/include/Makefile.in
++++ b/libstdc++-v3/include/Makefile.in
+@@ -1382,7 +1382,7 @@ stamp-bits: ${bits_headers}
+ 	@$(STAMP) stamp-bits
+ 
+ stamp-bits-sup: stamp-bits ${bits_sup_headers}
+-	@-cd ${bits_builddir} && $(LN_S) $? . 2>/dev/null
++	@-cd ${bits_builddir} && $(LN_S) $(filter-out stamp-bits,$?) . 2>/dev/null
+ 	@$(STAMP) stamp-bits-sup
+ 
+ stamp-c_base: ${c_base_headers}
diff --git a/toolchain_custom/gcc/patches/941-have_usable_vsnprintf.patch b/toolchain_custom/gcc/patches/941-have_usable_vsnprintf.patch
new file mode 100644
index 0000000000..556f188cbc
--- /dev/null
+++ b/toolchain_custom/gcc/patches/941-have_usable_vsnprintf.patch
@@ -0,0 +1,11 @@
+--- a/libssp/config.h.in
++++ b/libssp/config.h.in
+@@ -67,7 +67,7 @@
+ #undef HAVE_UNISTD_H
+ 
+ /* vsnprintf is present and works */
+-#undef HAVE_USABLE_VSNPRINTF
++#define HAVE_USABLE_VSNPRINTF 1
+ 
+ /* Define to the sub-directory in which libtool stores uninstalled libraries.
+    */
diff --git a/toolchain_custom/gcc/patches/950-gperf-compile.patch b/toolchain_custom/gcc/patches/950-gperf-compile.patch
new file mode 100644
index 0000000000..1bdcfe18f4
--- /dev/null
+++ b/toolchain_custom/gcc/patches/950-gperf-compile.patch
@@ -0,0 +1,144 @@
+From: edlinger <edlinger@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Fri, 19 Feb 2016 22:13:29 +0000 (+0000)
+Subject: 2016-02-19  Jakub Jelinek  <jakub@redhat.com>
+X-Git-Tag: gcc-6_1_0-release~896
+X-Git-Url: https://gcc.gnu.org/git/?p=gcc.git;a=commitdiff_plain;h=ec1cc0263f156f70693a62cf17b254a0029f4852
+
+2016-02-19  Jakub Jelinek  <jakub@redhat.com>
+            Bernd Edlinger  <bernd.edlinger@hotmail.de>
+
+        * Make-lang.in: Invoke gperf with -L C++.
+        * cfns.gperf: Remove prototypes for hash and libc_name_p
+        inlines.
+        * cfns.h: Regenerated.
+        * except.c (nothrow_libfn_p): Adjust.
+
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/trunk@233572 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+
+diff --git a/gcc/cp/Make-lang.in b/gcc/cp/Make-lang.in
+index 671ce12..2286c64 100644
+--- a/gcc/cp/Make-lang.in
++++ b/gcc/cp/Make-lang.in
+@@ -112,7 +112,7 @@ else
+ # deleting the $(srcdir)/cp/cfns.h file.
+ $(srcdir)/cp/cfns.h:
+ endif
+-	gperf -o -C -E -k '1-6,$$' -j1 -D -N 'libc_name_p' -L ANSI-C \
++	gperf -o -C -E -k '1-6,$$' -j1 -D -N 'libc_name_p' -L C++ \
+ 		$(srcdir)/cp/cfns.gperf --output-file $(srcdir)/cp/cfns.h
+ 
+ #
+diff --git a/gcc/cp/cfns.gperf b/gcc/cp/cfns.gperf
+index 2784edc..8d7f015 100644
+--- a/gcc/cp/cfns.gperf
++++ b/gcc/cp/cfns.gperf
+@@ -1,3 +1,5 @@
++%language=C++
++%define class-name libc_name
+ %{
+ /* Copyright (C) 2000-2016 Free Software Foundation, Inc.
+ 
+@@ -16,14 +18,6 @@ for more details.
+ You should have received a copy of the GNU General Public License
+ along with GCC; see the file COPYING3.  If not see
+ <http://www.gnu.org/licenses/>.  */
+-#ifdef __GNUC__
+-__inline
+-#endif
+-static unsigned int hash (const char *, unsigned int);
+-#ifdef __GNUC__
+-__inline
+-#endif
+-const char * libc_name_p (const char *, unsigned int);
+ %}
+ %%
+ # The standard C library functions, for feeding to gperf; the result is used
+diff --git a/gcc/cp/cfns.h b/gcc/cp/cfns.h
+index d8e02c9..9a37249 100644
+--- a/gcc/cp/cfns.h
++++ b/gcc/cp/cfns.h
+@@ -1,5 +1,5 @@
+-/* ANSI-C code produced by gperf version 3.0.3 */
+-/* Command-line: gperf -o -C -E -k '1-6,$' -j1 -D -N libc_name_p -L ANSI-C cfns.gperf  */
++/* C++ code produced by gperf version 3.0.4 */
++/* Command-line: gperf -o -C -E -k '1-6,$' -j1 -D -N libc_name_p -L C++ --output-file cfns.h cfns.gperf  */
+ 
+ #if !((' ' == 32) && ('!' == 33) && ('"' == 34) && ('#' == 35) \
+       && ('%' == 37) && ('&' == 38) && ('\'' == 39) && ('(' == 40) \
+@@ -28,7 +28,7 @@
+ #error "gperf generated tables don't work with this execution character set. Please report a bug to <bug-gnu-gperf@gnu.org>."
+ #endif
+ 
+-#line 1 "cfns.gperf"
++#line 3 "cfns.gperf"
+ 
+ /* Copyright (C) 2000-2016 Free Software Foundation, Inc.
+ 
+@@ -47,25 +47,18 @@ for more details.
+ You should have received a copy of the GNU General Public License
+ along with GCC; see the file COPYING3.  If not see
+ <http://www.gnu.org/licenses/>.  */
+-#ifdef __GNUC__
+-__inline
+-#endif
+-static unsigned int hash (const char *, unsigned int);
+-#ifdef __GNUC__
+-__inline
+-#endif
+-const char * libc_name_p (const char *, unsigned int);
+ /* maximum key range = 391, duplicates = 0 */
+ 
+-#ifdef __GNUC__
+-__inline
+-#else
+-#ifdef __cplusplus
+-inline
+-#endif
+-#endif
+-static unsigned int
+-hash (register const char *str, register unsigned int len)
++class libc_name
++{
++private:
++  static inline unsigned int hash (const char *str, unsigned int len);
++public:
++  static const char *libc_name_p (const char *str, unsigned int len);
++};
++
++inline unsigned int
++libc_name::hash (register const char *str, register unsigned int len)
+ {
+   static const unsigned short asso_values[] =
+     {
+@@ -122,14 +115,8 @@ hash (register const char *str, register unsigned int len)
+   return hval + asso_values[(unsigned char)str[len - 1]];
+ }
+ 
+-#ifdef __GNUC__
+-__inline
+-#ifdef __GNUC_STDC_INLINE__
+-__attribute__ ((__gnu_inline__))
+-#endif
+-#endif
+ const char *
+-libc_name_p (register const char *str, register unsigned int len)
++libc_name::libc_name_p (register const char *str, register unsigned int len)
+ {
+   enum
+     {
+diff --git a/gcc/cp/except.c b/gcc/cp/except.c
+index c73a16b..5336710 100644
+--- a/gcc/cp/except.c
++++ b/gcc/cp/except.c
+@@ -1040,7 +1040,8 @@ nothrow_libfn_p (const_tree fn)
+      unless the system headers are playing rename tricks, and if
+      they are, we don't want to be confused by them.  */
+   id = DECL_NAME (fn);
+-  return !!libc_name_p (IDENTIFIER_POINTER (id), IDENTIFIER_LENGTH (id));
++  return !!libc_name::libc_name_p (IDENTIFIER_POINTER (id),
++				   IDENTIFIER_LENGTH (id));
+ }
+ 
+ /* Returns nonzero if an exception of type FROM will be caught by a
diff --git a/toolchain_custom/gcc/patches/951-cpp_file_path_translation.patch b/toolchain_custom/gcc/patches/951-cpp_file_path_translation.patch
new file mode 100644
index 0000000000..2324d75881
--- /dev/null
+++ b/toolchain_custom/gcc/patches/951-cpp_file_path_translation.patch
@@ -0,0 +1,182 @@
+Forward ported from attachment to https://gcc.gnu.org/bugzilla/show_bug.cgi?id=47047
+
+--- a/gcc/c-family/c-opts.c
++++ b/gcc/c-family/c-opts.c
+@@ -581,6 +581,10 @@ c_common_handle_option (size_t scode, co
+       add_path (xstrdup (arg), SYSTEM, 0, true);
+       break;
+ 
++    case OPT_iremap:
++      add_cpp_remap_path (arg);
++      break;
++
+     case OPT_iwithprefix:
+       add_prefixed_path (arg, SYSTEM);
+       break;
+--- a/gcc/c-family/c.opt
++++ b/gcc/c-family/c.opt
+@@ -1528,6 +1528,10 @@ iquote
+ C ObjC C++ ObjC++ Joined Separate MissingArgError(missing path after %qs)
+ -iquote <dir>	Add <dir> to the end of the quote include path
+ 
++iremap
++C ObjC C++ ObjC++ Joined Separate
++-iremap <src:dst>  Convert <src> to <dst> if it occurs as prefix in __FILE__.
++
+ iwithprefix
+ C ObjC C++ ObjC++ Joined Separate
+ -iwithprefix <dir>	Add <dir> to the end of the system include path
+--- a/gcc/doc/cpp.texi
++++ b/gcc/doc/cpp.texi
+@@ -4441,6 +4441,7 @@ without notice.
+ @c man begin SYNOPSIS
+ cpp [@option{-D}@var{macro}[=@var{defn}]@dots{}] [@option{-U}@var{macro}]
+     [@option{-I}@var{dir}@dots{}] [@option{-iquote}@var{dir}@dots{}]
++    [@option{-iremap}@var{src}:@var{dst}]
+     [@option{-W}@var{warn}@dots{}]
+     [@option{-M}|@option{-MM}] [@option{-MG}] [@option{-MF} @var{filename}]
+     [@option{-MP}] [@option{-MQ} @var{target}@dots{}]
+--- a/gcc/doc/cppopts.texi
++++ b/gcc/doc/cppopts.texi
+@@ -532,6 +532,12 @@ Search @var{dir} only for header files r
+ If @var{dir} begins with @code{=}, then the @code{=} will be replaced
+ by the sysroot prefix; see @option{--sysroot} and @option{-isysroot}.
+ 
++@item -iremap @var{src}:@var{dst}
++@opindex iremap
++Replace the prefix @var{src} in __FILE__ with @var{dst} at expansion time.
++This option can be specified more than once.  Processing stops at the first
++match.
++
+ @item -fdirectives-only
+ @opindex fdirectives-only
+ When preprocessing, handle directives, but do not expand macros.
+--- a/gcc/doc/invoke.texi
++++ b/gcc/doc/invoke.texi
+@@ -494,8 +494,8 @@ Objective-C and Objective-C++ Dialects}.
+ @item Directory Options
+ @xref{Directory Options,,Options for Directory Search}.
+ @gccoptlist{-B@var{prefix} -I@var{dir} -iplugindir=@var{dir} @gol
+--iquote@var{dir} -L@var{dir} -specs=@var{file} -I- @gol
+---sysroot=@var{dir} --no-sysroot-suffix}
++-iquote@var{dir} -iremap@var{src}:@var{dst} -L@var{dir} -specs=@var{file} @gol
++-I- --sysroot=@var{dir} --no-sysroot-suffix}
+ 
+ @item Machine Dependent Options
+ @xref{Submodel Options,,Hardware Models and Configurations}.
+@@ -11463,6 +11463,12 @@ be searched for header files only for th
+ "@var{file}"}; they are not searched for @code{#include <@var{file}>},
+ otherwise just like @option{-I}.
+ 
++@item -iremap @var{src}:@var{dst}
++@opindex iremap
++Replace the prefix @var{src} in __FILE__ with @var{dst} at expansion time.
++This option can be specified more than once.  Processing stops at the first
++match.
++
+ @item -L@var{dir}
+ @opindex L
+ Add directory @var{dir} to the list of directories to be searched
+--- a/libcpp/include/cpplib.h
++++ b/libcpp/include/cpplib.h
+@@ -751,6 +751,9 @@ extern void cpp_set_lang (cpp_reader *,
+ /* Set the include paths.  */
+ extern void cpp_set_include_chains (cpp_reader *, cpp_dir *, cpp_dir *, int);
+ 
++/* Provide src:dst pair for __FILE__ remapping.  */
++extern void add_cpp_remap_path (const char *);
++
+ /* Call these to get pointers to the options, callback, and deps
+    structures for a given reader.  These pointers are good until you
+    call cpp_finish on that reader.  You can either edit the callbacks
+--- a/libcpp/macro.c
++++ b/libcpp/macro.c
+@@ -224,6 +224,64 @@ static const char * const monthnames[] =
+   "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
+ };
+ 
++static size_t remap_pairs;
++static char **remap_src;
++static char **remap_dst;
++
++void
++add_cpp_remap_path (const char *arg)
++{
++  const char *arg_dst;
++  size_t len;
++
++  arg_dst = strchr(arg, ':');
++  if (arg_dst == NULL)
++    {
++      fprintf(stderr, "Invalid argument for -iremap\n");
++      exit(1);
++    }
++
++  len = arg_dst - arg;
++  ++arg_dst;
++
++  remap_src = (char **) xrealloc(remap_src, sizeof(char *) * (remap_pairs + 1));
++  remap_dst = (char **) xrealloc(remap_dst, sizeof(char *) * (remap_pairs + 1));
++
++  remap_src[remap_pairs] = (char *) xmalloc(len + 1);
++  memcpy(remap_src[remap_pairs], arg, len);
++  remap_src[remap_pairs][len] = '\0';
++  remap_dst[remap_pairs] = xstrdup(arg_dst);
++  ++remap_pairs;
++}
++
++static const char *
++cpp_remap_file (const char *arg, char **tmp_name)
++{
++  char *result;
++  size_t i, len;
++
++  for (i = 0; i < remap_pairs; ++i)
++    {
++      len = strlen (remap_src[i]);
++      if (strncmp (remap_src[i], arg, len))
++	continue;
++      if (arg[len] == '\0')
++	return xstrdup (remap_dst[i]);
++      if (arg[len] != '/')
++	continue;
++      arg += len;
++      len = strlen (remap_dst[i]);
++      result = (char *) xmalloc (len + strlen (arg) + 1);
++      memcpy(result, remap_dst[i], len);
++      strcpy(result + len, arg);
++      *tmp_name = result;
++
++      return result;
++    }
++
++   return arg;
++}
++
+ /* Helper function for builtin_macro.  Returns the text generated by
+    a builtin macro. */
+ const uchar *
+@@ -286,6 +344,7 @@ _cpp_builtin_macro_text (cpp_reader *pfi
+       {
+ 	unsigned int len;
+ 	const char *name;
++	char *tmp_name = NULL;
+ 	uchar *buf;
+ 	
+ 	if (node->value.builtin == BT_FILE)
+@@ -297,6 +356,7 @@ _cpp_builtin_macro_text (cpp_reader *pfi
+ 	    if (!name)
+ 	      abort ();
+ 	  }
++	name = cpp_remap_file (name, &tmp_name);
+ 	len = strlen (name);
+ 	buf = _cpp_unaligned_alloc (pfile, len * 2 + 3);
+ 	result = buf;
+@@ -304,6 +364,7 @@ _cpp_builtin_macro_text (cpp_reader *pfi
+ 	buf = cpp_quote_string (buf + 1, (const unsigned char *) name, len);
+ 	*buf++ = '"';
+ 	*buf = '\0';
++	free (tmp_name);
+       }
+       break;
+ 
diff --git a/toolchain_custom/gcc/patches/951-template.patch b/toolchain_custom/gcc/patches/951-template.patch
new file mode 100644
index 0000000000..fb6d061b6d
--- /dev/null
+++ b/toolchain_custom/gcc/patches/951-template.patch
@@ -0,0 +1,93 @@
+From 94801184df727b94bf7b8d64b1f98a22f51325d7 Mon Sep 17 00:00:00 2001
+From: Elliot Saba <staticfloat@gmail.com>
+Date: Mon, 22 Apr 2019 19:58:09 -0400
+Subject: [PATCH] Remove double `tempate <>` declarations in `wide-int.h`
+
+This fixes compilation of GCC 5.2.0 with very recent compilers such as
+GCC 8.3.0, which would otherwise fail with errors such as `error: too
+many template-parameter-lists`
+---
+ gcc/wide-int.h | 10 ----------
+ 1 file changed, 10 deletions(-)
+
+diff --git a/gcc/wide-int.h b/gcc/wide-int.h
+index 46f45453c015..9a71c4fea61b 100644
+--- a/gcc/wide-int.h
++++ b/gcc/wide-int.h
+@@ -365,21 +365,18 @@ namespace wi
+      inputs.  Note that CONST_PRECISION and VAR_PRECISION cannot be
+      mixed, in order to give stronger type checking.  When both inputs
+      are CONST_PRECISION, they must have the same precision.  */
+-  template <>
+   template <typename T1, typename T2>
+   struct binary_traits <T1, T2, FLEXIBLE_PRECISION, FLEXIBLE_PRECISION>
+   {
+     typedef widest_int result_type;
+   };
+ 
+-  template <>
+   template <typename T1, typename T2>
+   struct binary_traits <T1, T2, FLEXIBLE_PRECISION, VAR_PRECISION>
+   {
+     typedef wide_int result_type;
+   };
+ 
+-  template <>
+   template <typename T1, typename T2>
+   struct binary_traits <T1, T2, FLEXIBLE_PRECISION, CONST_PRECISION>
+   {
+@@ -389,14 +386,12 @@ namespace wi
+ 			       <int_traits <T2>::precision> > result_type;
+   };
+ 
+-  template <>
+   template <typename T1, typename T2>
+   struct binary_traits <T1, T2, VAR_PRECISION, FLEXIBLE_PRECISION>
+   {
+     typedef wide_int result_type;
+   };
+ 
+-  template <>
+   template <typename T1, typename T2>
+   struct binary_traits <T1, T2, CONST_PRECISION, FLEXIBLE_PRECISION>
+   {
+@@ -406,7 +401,6 @@ namespace wi
+ 			       <int_traits <T1>::precision> > result_type;
+   };
+ 
+-  template <>
+   template <typename T1, typename T2>
+   struct binary_traits <T1, T2, CONST_PRECISION, CONST_PRECISION>
+   {
+@@ -417,7 +411,6 @@ namespace wi
+ 			       <int_traits <T1>::precision> > result_type;
+   };
+ 
+-  template <>
+   template <typename T1, typename T2>
+   struct binary_traits <T1, T2, VAR_PRECISION, VAR_PRECISION>
+   {
+@@ -881,7 +874,6 @@ generic_wide_int <storage>::dump () const
+ 
+ namespace wi
+ {
+-  template <>
+   template <typename storage>
+   struct int_traits < generic_wide_int <storage> >
+     : public wi::int_traits <storage>
+@@ -960,7 +952,6 @@ inline wide_int_ref_storage <SE>::wide_int_ref_storage (const T &x,
+ 
+ namespace wi
+ {
+-  template <>
+   template <bool SE>
+   struct int_traits <wide_int_ref_storage <SE> >
+   {
+@@ -1147,7 +1138,6 @@ class GTY(()) fixed_wide_int_storage
+ 
+ namespace wi
+ {
+-  template <>
+   template <int N>
+   struct int_traits < fixed_wide_int_storage <N> >
+   {
diff --git a/toolchain_custom/gdb/Makefile.build b/toolchain_custom/gdb/Makefile.build
new file mode 100644
index 0000000000..f9ce1255b2
--- /dev/null
+++ b/toolchain_custom/gdb/Makefile.build
@@ -0,0 +1,13 @@
+HOST_CONFIGURE_VARS += \
+	gdb_cv_func_sigsetjmp=yes
+
+HOST_CONFIGURE_ARGS = \
+	--prefix=$(TOOLCHAIN_DIR) \
+	--build=$(GNU_HOST_NAME) \
+	--host=$(GNU_HOST_NAME) \
+	--target=$(REAL_GNU_TARGET_NAME) \
+	--disable-werror \
+	--without-uiout \
+	--disable-tui --disable-gdbtk --without-x \
+	--without-included-gettext \
+	--enable-threads
diff --git a/toolchain_custom/gdb/Makefile.var b/toolchain_custom/gdb/Makefile.var
new file mode 100644
index 0000000000..70b78a81a4
--- /dev/null
+++ b/toolchain_custom/gdb/Makefile.var
@@ -0,0 +1,9 @@
+PKG_REV:=7.6-2013.05
+PKG_VERSION_MAJOR:=7.6
+PKG_VERSION:=linaro-$(PKG_REV)
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
+PKG_MD5SUM:=816290b91cff03912320089d353e8a12
+PKG_SOURCE_URL:=https://releases.linaro.org/archive/13.05/components/toolchain/gdb-linaro/
+GDB_DIR:=$(PKG_NAME)-$(PKG_VERSION)
+PATCH_DIR:=$(TOPDIR)/toolchain_custom/gdb/patches
+HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(GDB_DIR)
diff --git a/toolchain_custom/gdb/patches/100-ppc_compile_fix.patch b/toolchain_custom/gdb/patches/100-ppc_compile_fix.patch
new file mode 100644
index 0000000000..9ecaaed8e4
--- /dev/null
+++ b/toolchain_custom/gdb/patches/100-ppc_compile_fix.patch
@@ -0,0 +1,11 @@
+--- a/sim/ppc/Makefile.in
++++ b/sim/ppc/Makefile.in
+@@ -550,7 +550,7 @@ PACKAGE_SRC = @sim_pk_src@
+ PACKAGE_OBJ = @sim_pk_obj@
+ 
+ 
+-psim: $(TARGETLIB) main.o $(LIBIBERTY_LIB) $(BFD_LIB) $(LIBS) $(LIBINTL_DEP)
++psim: $(TARGETLIB) main.o $(LIBIBERTY_LIB) $(BFD_LIB) $(LIBINTL_DEP)
+ 	$(CC) $(CFLAGS) $(SIM_CFLAGS) $(LDFLAGS) -o psim$(EXEEXT) main.o $(TARGETLIB) $(BFD_LIB) $(LIBINTL) $(LIBIBERTY_LIB) $(LIBS)
+ 
+ run: psim
diff --git a/toolchain_custom/gdb/patches/110-no_extern_inline.patch b/toolchain_custom/gdb/patches/110-no_extern_inline.patch
new file mode 100644
index 0000000000..bbae1d774d
--- /dev/null
+++ b/toolchain_custom/gdb/patches/110-no_extern_inline.patch
@@ -0,0 +1,32 @@
+--- a/sim/common/sim-arange.c
++++ b/sim/common/sim-arange.c
+@@ -280,11 +280,7 @@ sim_addr_range_delete (ADDR_RANGE *ar, a
+   build_search_tree (ar);
+ }
+ 
+-#endif /* DEFINE_NON_INLINE_P */
+-
+-#if DEFINE_INLINE_P
+-
+-SIM_ARANGE_INLINE int
++int
+ sim_addr_range_hit_p (ADDR_RANGE *ar, address_word addr)
+ {
+   ADDR_RANGE_TREE *t = ar->range_tree;
+@@ -301,4 +297,4 @@ sim_addr_range_hit_p (ADDR_RANGE *ar, ad
+   return 0;
+ }
+ 
+-#endif /* DEFINE_INLINE_P */
++#endif /* DEFINE_NON_INLINE_P */
+--- a/sim/common/sim-arange.h
++++ b/sim/common/sim-arange.h
+@@ -62,7 +62,7 @@ extern void sim_addr_range_delete (ADDR_
+ 
+ /* Return non-zero if ADDR is in range AR, traversing the entire tree.
+    If no range is specified, that is defined to mean "everything".  */
+-extern INLINE int
++extern int
+ sim_addr_range_hit_p (ADDR_RANGE * /*ar*/, address_word /*addr*/);
+ #define ADDR_RANGE_HIT_P(ar, addr) \
+   ((ar)->range_tree == NULL || sim_addr_range_hit_p ((ar), (addr)))
diff --git a/toolchain_custom/gdb/patches/600-fix-compile-flag-mismatch.patch b/toolchain_custom/gdb/patches/600-fix-compile-flag-mismatch.patch
new file mode 100644
index 0000000000..127bee46d8
--- /dev/null
+++ b/toolchain_custom/gdb/patches/600-fix-compile-flag-mismatch.patch
@@ -0,0 +1,32 @@
+--- a/gdb/configure
++++ b/gdb/configure
+@@ -834,8 +834,7 @@ MAKEINFOFLAGS
+ YACC
+ YFLAGS
+ XMKMF'
+-ac_subdirs_all='testsuite
+-gdbtk
++ac_subdirs_all='gdbtk
+ multi-ice
+ gdbserver'
+ 
+@@ -5033,7 +5032,7 @@ $as_echo "$with_auto_load_safe_path" >&6
+ 
+ 
+ 
+-subdirs="$subdirs testsuite"
++subdirs="$subdirs"
+ 
+ 
+ # Check whether to support alternative target configurations
+--- a/gdb/gdbserver/configure
++++ b/gdb/gdbserver/configure
+@@ -2181,7 +2181,7 @@ $as_echo "$as_me: error: \`$ac_var' was
+       ac_cache_corrupted=: ;;
+     ,);;
+     *)
+-      if test "x$ac_old_val" != "x$ac_new_val"; then
++      if test "`echo x$ac_old_val`" != "`echo x$ac_new_val`"; then
+ 	# differences in whitespace do not lead to failure.
+ 	ac_old_val_w=`echo x $ac_old_val`
+ 	ac_new_val_w=`echo x $ac_new_val`
diff --git a/toolchain_custom/musl/Makefile.var b/toolchain_custom/musl/Makefile.var
new file mode 100644
index 0000000000..7c9100c964
--- /dev/null
+++ b/toolchain_custom/musl/Makefile.var
@@ -0,0 +1,11 @@
+PKG_VERSION:=1.1.16
+PKG_MD5SUM:=ac52ccaec6b06ab0f289d37e8436859b
+PKG_SOURCE_PROTO:=
+PKG_SOURCE_URL:=http://www.musl-libc.org/releases
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(PKG_NAME)-$(PKG_VERSION)
+LIBC_SO_VERSION:=$(PKG_VERSION)
+PATCH_DIR:=$(TOPDIR)/toolchain_custom/musl/patches
+BUILD_DIR_HOST:=$(BUILD_DIR_TOOLCHAIN)
+HOST_BUILD_PREFIX:=$(TOOLCHAIN_DIR)
+HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(PKG_NAME)-$(PKG_VERSION)
diff --git a/toolchain_custom/musl/patches/040-Add-format-attribute-to-some-function-declarations.patch b/toolchain_custom/musl/patches/040-Add-format-attribute-to-some-function-declarations.patch
new file mode 100644
index 0000000000..67fedae30a
--- /dev/null
+++ b/toolchain_custom/musl/patches/040-Add-format-attribute-to-some-function-declarations.patch
@@ -0,0 +1,197 @@
+From e6683d001a95d7c3d4d992496f00f77e01fcd268 Mon Sep 17 00:00:00 2001
+From: Hauke Mehrtens <hauke@hauke-m.de>
+Date: Sun, 22 Nov 2015 15:04:23 +0100
+Subject: [PATCH v2] Add format attribute to some function declarations
+
+GCC and Clang are able to check the format arguments given to a
+function and warn the user if there is a error in the format arguments
+or if there is a potential uncontrolled format string security problem
+in the code. GCC does this automatically for some functions like
+printf(), but it is also possible to annotate other functions in a way
+that it will check them too. This feature is used by glibc for many
+functions. This patch adds the attribute to the some functions of musl
+expect for these functions where gcc automatically adds it.
+
+GCC automatically adds checks for these functions: printf, fprintf,
+sprintf, scanf, fscanf, sscanf, strftime, vprintf, vfprintf and
+vsprintf.
+
+The documentation from gcc is here:
+https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html
+
+The documentation from Clang is here:
+http://clang.llvm.org/docs/AttributeReference.html#format-gnu-format
+
+Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
+---
+ include/err.h      | 26 +++++++++++++++++---------
+ include/monetary.h | 12 ++++++++++--
+ include/stdio.h    | 29 ++++++++++++++++++++---------
+ include/syslog.h   | 12 ++++++++++--
+ 4 files changed, 57 insertions(+), 22 deletions(-)
+
+--- a/include/err.h
++++ b/include/err.h
+@@ -8,15 +8,23 @@
+ extern "C" {
+ #endif
+ 
+-void warn(const char *, ...);
+-void vwarn(const char *, va_list);
+-void warnx(const char *, ...);
+-void vwarnx(const char *, va_list);
++#if __GNUC__ >= 3
++#define __fp(x, y) __attribute__ ((__format__ (__printf__, x, y)))
++#else
++#define __fp(x, y)
++#endif
++
++void warn(const char *, ...) __fp(1, 2);
++void vwarn(const char *, va_list) __fp(1, 0);
++void warnx(const char *, ...) __fp(1, 2);
++void vwarnx(const char *, va_list) __fp(1, 0);
++
++_Noreturn void err(int, const char *, ...) __fp(2, 3);
++_Noreturn void verr(int, const char *, va_list) __fp(2, 0);
++_Noreturn void errx(int, const char *, ...) __fp(2, 3);
++_Noreturn void verrx(int, const char *, va_list) __fp(2, 0);
+ 
+-_Noreturn void err(int, const char *, ...);
+-_Noreturn void verr(int, const char *, va_list);
+-_Noreturn void errx(int, const char *, ...);
+-_Noreturn void verrx(int, const char *, va_list);
++#undef __fp
+ 
+ #ifdef __cplusplus
+ }
+--- a/include/monetary.h
++++ b/include/monetary.h
+@@ -13,8 +13,16 @@ extern "C" {
+ 
+ #include <bits/alltypes.h>
+ 
+-ssize_t strfmon(char *__restrict, size_t, const char *__restrict, ...);
+-ssize_t strfmon_l(char *__restrict, size_t, locale_t, const char *__restrict, ...);
++#if __GNUC__ >= 3
++#define __fsfm(x, y) __attribute__ ((__format__ (__strfmon__, x, y)))
++#else
++#define __fsfm(x, y)
++#endif
++
++ssize_t strfmon(char *__restrict, size_t, const char *__restrict, ...) __fsfm(3, 4);
++ssize_t strfmon_l(char *__restrict, size_t, locale_t, const char *__restrict, ...) __fsfm(4, 5);
++
++#undef __fsfm
+ 
+ #ifdef __cplusplus
+ }
+--- a/include/stdio.h
++++ b/include/stdio.h
+@@ -21,6 +21,14 @@ extern "C" {
+ 
+ #include <bits/alltypes.h>
+ 
++#if __GNUC__ >= 3
++#define __fp(x, y) __attribute__ ((__format__ (__printf__, x, y)))
++#define __fs(x, y) __attribute__ ((__format__ (__scanf__, x, y)))
++#else
++#define __fp(x, y)
++#define __fs(x, y)
++#endif
++
+ #ifdef __cplusplus
+ #define NULL 0L
+ #else
+@@ -102,19 +110,19 @@ int puts(const char *);
+ int printf(const char *__restrict, ...);
+ int fprintf(FILE *__restrict, const char *__restrict, ...);
+ int sprintf(char *__restrict, const char *__restrict, ...);
+-int snprintf(char *__restrict, size_t, const char *__restrict, ...);
++int snprintf(char *__restrict, size_t, const char *__restrict, ...) __fp(3, 4);
+ 
+ int vprintf(const char *__restrict, __isoc_va_list);
+ int vfprintf(FILE *__restrict, const char *__restrict, __isoc_va_list);
+ int vsprintf(char *__restrict, const char *__restrict, __isoc_va_list);
+-int vsnprintf(char *__restrict, size_t, const char *__restrict, __isoc_va_list);
++int vsnprintf(char *__restrict, size_t, const char *__restrict, __isoc_va_list) __fp(3, 0);
+ 
+ int scanf(const char *__restrict, ...);
+ int fscanf(FILE *__restrict, const char *__restrict, ...);
+ int sscanf(const char *__restrict, const char *__restrict, ...);
+-int vscanf(const char *__restrict, __isoc_va_list);
+-int vfscanf(FILE *__restrict, const char *__restrict, __isoc_va_list);
+-int vsscanf(const char *__restrict, const char *__restrict, __isoc_va_list);
++int vscanf(const char *__restrict, __isoc_va_list) __fs(1, 0);
++int vfscanf(FILE *__restrict, const char *__restrict, __isoc_va_list) __fs(2, 0);
++int vsscanf(const char *__restrict, const char *__restrict, __isoc_va_list) __fs(2, 0);
+ 
+ void perror(const char *);
+ 
+@@ -135,8 +143,8 @@ int pclose(FILE *);
+ int fileno(FILE *);
+ int fseeko(FILE *, off_t, int);
+ off_t ftello(FILE *);
+-int dprintf(int, const char *__restrict, ...);
+-int vdprintf(int, const char *__restrict, __isoc_va_list);
++int dprintf(int, const char *__restrict, ...) __fp(2, 3);
++int vdprintf(int, const char *__restrict, __isoc_va_list) __fp(2, 0);
+ void flockfile(FILE *);
+ int ftrylockfile(FILE *);
+ void funlockfile(FILE *);
+@@ -175,8 +183,8 @@ int fileno_unlocked(FILE *);
+ int getw(FILE *);
+ int putw(int, FILE *);
+ char *fgetln(FILE *, size_t *);
+-int asprintf(char **, const char *, ...);
+-int vasprintf(char **, const char *, __isoc_va_list);
++int asprintf(char **, const char *, ...) __fp(2, 3);
++int vasprintf(char **, const char *, __isoc_va_list) __fp(2, 0);
+ #endif
+ 
+ #ifdef _GNU_SOURCE
+@@ -184,6 +192,9 @@ char *fgets_unlocked(char *, int, FILE *
+ int fputs_unlocked(const char *, FILE *);
+ #endif
+ 
++#undef __fp
++#undef __fs
++
+ #if defined(_LARGEFILE64_SOURCE) || defined(_GNU_SOURCE)
+ #define tmpfile64 tmpfile
+ #define fopen64 fopen
+--- a/include/syslog.h
++++ b/include/syslog.h
+@@ -56,16 +56,22 @@ extern "C" {
+ #define LOG_NOWAIT 0x10
+ #define LOG_PERROR 0x20
+ 
++#if __GNUC__ >= 3
++#define __fp(x, y) __attribute__ ((__format__ (__printf__, x, y)))
++#else
++#define __fp(x, y)
++#endif
++
+ void closelog (void);
+ void openlog (const char *, int, int);
+ int setlogmask (int);
+-void syslog (int, const char *, ...);
++void syslog (int, const char *, ...) __fp(2, 3);
+ 
+ #if defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
+ #define _PATH_LOG "/dev/log"
+ #define __NEED_va_list
+ #include <bits/alltypes.h>
+-void vsyslog (int, const char *, va_list);
++void vsyslog (int, const char *, va_list) __fp(2, 0);
+ #if defined(SYSLOG_NAMES)
+ #define	INTERNAL_NOPRI 0x10
+ #define	INTERNAL_MARK (LOG_NFACILITIES<<3)
+@@ -93,6 +99,8 @@ typedef struct {
+ #endif
+ #endif
+ 
++#undef __fp
++
+ #ifdef __cplusplus
+ }
+ #endif
diff --git a/toolchain_custom/musl/patches/100-add_glob_onlydir.patch b/toolchain_custom/musl/patches/100-add_glob_onlydir.patch
new file mode 100644
index 0000000000..db0bc22afa
--- /dev/null
+++ b/toolchain_custom/musl/patches/100-add_glob_onlydir.patch
@@ -0,0 +1,11 @@
+--- a/include/glob.h
++++ b/include/glob.h
+@@ -31,6 +31,8 @@ void globfree(glob_t *);
+ #define GLOB_NOESCAPE 0x40
+ #define	GLOB_PERIOD   0x80
+ 
++#define GLOB_ONLYDIR	0x100
++
+ #define GLOB_NOSPACE 1
+ #define GLOB_ABORTED 2
+ #define GLOB_NOMATCH 3
diff --git a/toolchain_custom/musl/patches/110-read_timezone_from_fs.patch b/toolchain_custom/musl/patches/110-read_timezone_from_fs.patch
new file mode 100644
index 0000000000..b4349e7367
--- /dev/null
+++ b/toolchain_custom/musl/patches/110-read_timezone_from_fs.patch
@@ -0,0 +1,28 @@
+--- a/src/time/__tz.c
++++ b/src/time/__tz.c
+@@ -23,6 +23,9 @@ static int r0[5], r1[5];
+ static const unsigned char *zi, *trans, *index, *types, *abbrevs, *abbrevs_end;
+ static size_t map_size;
+ 
++static const char *tzfile;
++static size_t tzfile_size;
++
+ static char old_tz_buf[32];
+ static char *old_tz = old_tz_buf;
+ static size_t old_tz_size = sizeof old_tz_buf;
+@@ -125,6 +128,15 @@ static void do_tzset()
+ 		"/usr/share/zoneinfo/\0/share/zoneinfo/\0/etc/zoneinfo/\0";
+ 
+ 	s = getenv("TZ");
++
++	/* if TZ is empty try to read it from /etc/TZ */
++	if (!s || !*s) {
++		if (tzfile)
++			__munmap((void*)tzfile, tzfile_size);
++
++		s = tzfile = (void *)__map_file("/etc/TZ", &tzfile_size);
++	}
++
+ 	if (!s) s = "/etc/localtime";
+ 	if (!*s) s = __gmt;
+ 
diff --git a/toolchain_custom/musl/patches/200-add_libssp_nonshared.patch b/toolchain_custom/musl/patches/200-add_libssp_nonshared.patch
new file mode 100644
index 0000000000..218ca41402
--- /dev/null
+++ b/toolchain_custom/musl/patches/200-add_libssp_nonshared.patch
@@ -0,0 +1,50 @@
+From 7ec87fbbc3cac99b4173d082dd6195f47c9a32e7 Mon Sep 17 00:00:00 2001
+From: Steven Barth <steven@midlink.org>
+Date: Mon, 22 Jun 2015 11:01:56 +0200
+Subject: [PATCH] Add libssp_nonshared.a so GCC's is not needed
+
+Signed-off-by: Steven Barth <steven@midlink.org>
+---
+ Makefile                                  | 10 ++++++++--
+ libssp_nonshared/__stack_chk_fail_local.c |  2 ++
+ 2 files changed, 10 insertions(+), 2 deletions(-)
+ create mode 100644 libssp_nonshared/__stack_chk_fail_local.c
+
+--- a/Makefile
++++ b/Makefile
+@@ -66,7 +66,7 @@ CRT_LIBS = $(addprefix lib/,$(notdir $(C
+ STATIC_LIBS = lib/libc.a
+ SHARED_LIBS = lib/libc.so
+ TOOL_LIBS = lib/musl-gcc.specs
+-ALL_LIBS = $(CRT_LIBS) $(STATIC_LIBS) $(SHARED_LIBS) $(EMPTY_LIBS) $(TOOL_LIBS)
++ALL_LIBS = $(CRT_LIBS) $(STATIC_LIBS) $(SHARED_LIBS) $(EMPTY_LIBS) $(TOOL_LIBS) lib/libssp_nonshared.a
+ ALL_TOOLS = obj/musl-gcc
+ 
+ WRAPCC_GCC = gcc
+@@ -129,7 +129,8 @@ NOSSP_SRCS = $(wildcard crt/*.c) \
+ 	src/thread/__set_thread_area.c src/thread/$(ARCH)/__set_thread_area.c \
+ 	src/string/memset.c src/string/$(ARCH)/memset.c \
+ 	src/string/memcpy.c src/string/$(ARCH)/memcpy.c \
+-	ldso/dlstart.c ldso/dynlink.c
++	ldso/dlstart.c ldso/dynlink.c \
++	src/libssp_nonshared/__stack_chk_fail_local.c
+ $(NOSSP_SRCS:%.c=obj/%.o) $(NOSSP_SRCS:%.c=obj/%.lo): CFLAGS_ALL += $(CFLAGS_NOSSP)
+ 
+ $(CRT_OBJS): CFLAGS_ALL += -DCRT
+@@ -172,6 +173,11 @@ lib/libc.a: $(AOBJS)
+ 	$(AR) rc $@ $(AOBJS)
+ 	$(RANLIB) $@
+ 
++lib/libssp_nonshared.a: obj/src/libssp_nonshared/__stack_chk_fail_local.o
++	rm -f $@
++	$(AR) rc $@ $<
++	$(RANLIB) $@
++
+ $(EMPTY_LIBS):
+ 	rm -f $@
+ 	$(AR) rc $@
+--- /dev/null
++++ b/src/libssp_nonshared/__stack_chk_fail_local.c
+@@ -0,0 +1,2 @@
++#include "atomic.h"
++void __attribute__((visibility ("hidden"))) __stack_chk_fail_local(void) { a_crash(); }
diff --git a/toolchain_custom/musl/patches/300-relative.patch b/toolchain_custom/musl/patches/300-relative.patch
new file mode 100644
index 0000000000..6e30e0a88f
--- /dev/null
+++ b/toolchain_custom/musl/patches/300-relative.patch
@@ -0,0 +1,11 @@
+--- a/Makefile
++++ b/Makefile
+@@ -221,7 +221,7 @@ $(DESTDIR)$(includedir)/%: $(srcdir)/inc
+ 	$(INSTALL) -D -m 644 $< $@
+ 
+ $(DESTDIR)$(LDSO_PATHNAME): $(DESTDIR)$(libdir)/libc.so
+-	$(INSTALL) -D -l $(libdir)/libc.so $@ || true
++	$(INSTALL) -D -l libc.so $@ || true
+ 
+ install-libs: $(ALL_LIBS:lib/%=$(DESTDIR)$(libdir)/%) $(if $(SHARED_LIBS),$(DESTDIR)$(LDSO_PATHNAME),)
+ 
diff --git a/toolchain_custom/musl/patches/900-iconv_size_hack.patch b/toolchain_custom/musl/patches/900-iconv_size_hack.patch
new file mode 100644
index 0000000000..343915fb06
--- /dev/null
+++ b/toolchain_custom/musl/patches/900-iconv_size_hack.patch
@@ -0,0 +1,68 @@
+--- a/src/locale/iconv.c
++++ b/src/locale/iconv.c
+@@ -39,6 +39,7 @@ static const unsigned char charmaps[] =
+ "ucs4\0ucs4be\0utf32\0utf32be\0\0\300"
+ "ucs4le\0utf32le\0\0\303"
+ "ascii\0usascii\0iso646\0iso646us\0\0\307"
++#ifdef FULL_ICONV
+ "eucjp\0\0\320"
+ "shiftjis\0sjis\0\0\321"
+ "gb18030\0\0\330"
+@@ -46,6 +47,7 @@ static const unsigned char charmaps[] =
+ "gb2312\0\0\332"
+ "big5\0bigfive\0cp950\0big5hkscs\0\0\340"
+ "euckr\0ksc5601\0ksx1001\0cp949\0\0\350"
++#endif
+ #include "codepages.h"
+ ;
+ 
+@@ -53,6 +55,7 @@ static const unsigned short legacy_chars
+ #include "legacychars.h"
+ };
+ 
++#ifdef FULL_ICONV
+ static const unsigned short jis0208[84][94] = {
+ #include "jis0208.h"
+ };
+@@ -72,6 +75,7 @@ static const unsigned short hkscs[] = {
+ static const unsigned short ksc[93][94] = {
+ #include "ksc.h"
+ };
++#endif
+ 
+ static int fuzzycmp(const unsigned char *a, const unsigned char *b)
+ {
+@@ -216,6 +220,7 @@ size_t iconv(iconv_t cd0, char **restric
+ 				c = ((c-0xd7c0)<<10) + (d-0xdc00);
+ 			}
+ 			break;
++#ifdef FULL_ICONV
+ 		case SHIFT_JIS:
+ 			if (c-0xa1 <= 0xdf-0xa1) {
+ 				c += 0xff61-0xa1;
+@@ -362,6 +367,7 @@ size_t iconv(iconv_t cd0, char **restric
+ 			c = ksc[c][d];
+ 			if (!c) goto ilseq;
+ 			break;
++#endif
+ 		default:
+ 			if (c < 128+type) break;
+ 			c -= 128+type;
+--- a/src/locale/codepages.h
++++ b/src/locale/codepages.h
+@@ -118,6 +118,7 @@
+ "\0\0\0\100\15\0\344\0\0\0\0\0\0\0\0\0\0\0\0\0\103\270\1\0\0\0\340\1\200\40"
+ "\230\0\0\0\0\0\44\341\12\0"
+ 
++#ifdef FULL_ICONV
+ "cp1250\0"
+ "windows1250\0"
+ "\0\0"
+@@ -214,6 +215,7 @@
+ "\0\0\0\0\0\0\0\0\0\15\0\0\0\0\0\0\0\0\0\0\266\0\0\0\0\102\0\220\13\0"
+ "\0\234\2\0\0\0\0\0\0\0\0\244\202\13\0\0\0\0\100\15\0\0\0\0\0\0\0\0\0\0"
+ "\267\0\0\0\0\103\0\240\13\0\0\240\2\0\0\0\0\0\0\0\0\250\62\45\0"
++#endif
+ 
+ "koi8r\0"
+ "\0\0"
diff --git a/toolchain_custom/musl/patches/901-crypt_size_hack.patch b/toolchain_custom/musl/patches/901-crypt_size_hack.patch
new file mode 100644
index 0000000000..8cd7b1989c
--- /dev/null
+++ b/toolchain_custom/musl/patches/901-crypt_size_hack.patch
@@ -0,0 +1,60 @@
+--- a/src/crypt/crypt_r.c
++++ b/src/crypt/crypt_r.c
+@@ -19,12 +19,6 @@ char *__crypt_r(const char *key, const c
+ 	if (salt[0] == '$' && salt[1] && salt[2]) {
+ 		if (salt[1] == '1' && salt[2] == '$')
+ 			return __crypt_md5(key, salt, output);
+-		if (salt[1] == '2' && salt[3] == '$')
+-			return __crypt_blowfish(key, salt, output);
+-		if (salt[1] == '5' && salt[2] == '$')
+-			return __crypt_sha256(key, salt, output);
+-		if (salt[1] == '6' && salt[2] == '$')
+-			return __crypt_sha512(key, salt, output);
+ 	}
+ 	return __crypt_des(key, salt, output);
+ }
+--- a/src/crypt/crypt_sha512.c
++++ b/src/crypt/crypt_sha512.c
+@@ -12,6 +12,7 @@
+ #include <stdio.h>
+ #include <string.h>
+ #include <stdint.h>
++#if 0
+ 
+ /* public domain sha512 implementation based on fips180-3 */
+ /* >=2^64 bits messages are not supported (about 2000 peta bytes) */
+@@ -369,3 +370,4 @@ char *__crypt_sha512(const char *key, co
+ 		return "*";
+ 	return p;
+ }
++#endif
+--- a/src/crypt/crypt_blowfish.c
++++ b/src/crypt/crypt_blowfish.c
+@@ -50,6 +50,7 @@
+ #include <string.h>
+ #include <stdint.h>
+ 
++#if 0
+ typedef uint32_t BF_word;
+ typedef int32_t BF_word_signed;
+ 
+@@ -796,3 +797,4 @@ char *__crypt_blowfish(const char *key,
+ 
+ 	return "*";
+ }
++#endif
+--- a/src/crypt/crypt_sha256.c
++++ b/src/crypt/crypt_sha256.c
+@@ -13,6 +13,7 @@
+ #include <string.h>
+ #include <stdint.h>
+ 
++#if 0
+ /* public domain sha256 implementation based on fips180-3 */
+ 
+ struct sha256 {
+@@ -320,3 +321,4 @@ char *__crypt_sha256(const char *key, co
+ 		return "*";
+ 	return p;
+ }
++#endif
diff --git a/toolchain_custom/musl/patches/902-add-support-for-unbuffered-putc.patch b/toolchain_custom/musl/patches/902-add-support-for-unbuffered-putc.patch
new file mode 100644
index 0000000000..4aec879334
--- /dev/null
+++ b/toolchain_custom/musl/patches/902-add-support-for-unbuffered-putc.patch
@@ -0,0 +1,25 @@
+Index: musl-1.1.16/src/stdio/fputc.c
+===================================================================
+--- musl-1.1.16.orig/src/stdio/fputc.c	2017-01-01 08:57:17.000000000 +0530
++++ musl-1.1.16/src/stdio/fputc.c	2017-10-20 12:10:54.073719904 +0530
+@@ -1,5 +1,15 @@
+ #include "stdio_impl.h"
++#define UNBUFFERED_PUTC
+ 
++#ifdef UNBUFFERED_PUTC
++int fputc(int c, FILE *f)
++{
++	FLOCK(f);
++	f->write(f, &c, 1);
++	FUNLOCK(f);
++	return c;
++}
++#else
+ int fputc(int c, FILE *f)
+ {
+ 	if (f->lock < 0 || !__lockfile(f))
+@@ -8,3 +18,4 @@
+ 	__unlockfile(f);
+ 	return c;
+ }
++#endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
