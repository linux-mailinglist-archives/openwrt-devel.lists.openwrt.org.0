Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829426CEEE
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 15:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-Id:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4krVL5Bh/Gv5B8A7mROFabj1wnP+coznz8gzZMkWCwQ=; b=aqu
	Bz8OyJzzQXpAb4pvaQCAlV1VpZ/VUAm0e9I2esOKI1zrBVBUh2lTzYvYfbS+DpNTRnW9s1y+XSlU1
	aEaQyw/duwBAA6YI+5XYc6h9J+Kwy/NrBhHEfjV0nMAzoUeToYMQsSABz+H7IONJ4w0PKN1L2D+MD
	Z2fnPJTF+Pqp3whbs9G5C2EU4s2wFIy/+pnSuq07REsw/c9k2c1/yST3H/p3TqQiE6+K5vunZk0nY
	8OEPfprepvvv4j/XGGmAizQ59wMFNFj2ZdEl3rhMpR6pnASS+Jb5K3mOp67PYpzwWUVlbQzMJOY9o
	nrj2gtVVEME7Bm07QpEFAooxAhCi8fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6Xo-0006fW-EQ; Thu, 18 Jul 2019 13:34:00 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Wf-00065f-3r
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 13:32:53 +0000
Received: (wp-smtpd smtp.tlen.pl 34353 invoked from network);
 18 Jul 2019 15:32:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1563456764; bh=+JBpA/exnueca0ceqtJIXUpwiUmrp6vbpeBSHRsSLbM=;
 h=From:To:Subject;
 b=XhuuWSGcD9aXeDxuDgRST3qaTleIWL2qrkUZENjHVJ3bnX0kAW4/qLeFD2hM3Y6Tb
 S2Yl5T0HPRCgbany6pwtXT0XClRT3Wm0ax+MPbb6v1qXrST9SvnsLcd00xo56ZvkW7
 Y4UxKOZzDXfjXadbtBtU3+ui5ermSfcT4tXDWIMk=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Jul 2019 15:32:44 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 15:32:39 +0200
Message-Id: <20190718133239.6705-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-WP-MailID: 29b953d1a1a968b9906aa575fd59de52
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [cVEV]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063249_430150_E5180CCE 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] grub2: bump to 2.04
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
Content-Type: multipart/mixed; boundary="===============0883044412823738820=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0883044412823738820==
Content-Type: text/plain; charset=true
Content-Transfer-Encoding: 8bit

* GCC 8 and 9 support.
* Gnulib integration overhaul.
* RISC-V support.
* Xen PVH support.
* Native UEFI secure boot support.
* UEFI TPM driver.
* New IEEE 1275 obdisk driver.
* Btrfs RAID 5 and RIAD 6 support.
* bootin from F2FS support.
* PARTUUID support.
* VLAN support.
* Native DHCP support.
* Many ARM and ARM64 fixes.
* Many SPARC fixes.
* Many IEEE 1275 fixes.
* ...and tons of other fixes and cleanups...

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/grub2/Makefile                   |  7 +-
 ...ix-packed-not-aligned-error-on-GCC-8.patch | 71 ------------------
 .../grub2/patches/100-grub_setup_root.patch   | 12 +--
 ...-disable-gettext-check-macro-version.patch | 13 ----
 .../grub2/patches/200-fix-gets-removal.patch  | 16 ----
 .../grub2/patches/300-CVE-2015-8370.patch     |  4 +-
 .../grub2/patches/400-R_X86_64_PLT32.patch    | 75 -------------------
 7 files changed, 11 insertions(+), 187 deletions(-)
 delete mode 100644 package/boot/grub2/patches/0008-Fix-packed-not-aligned-error-on-GCC-8.patch
 delete mode 100644 package/boot/grub2/patches/101-disable-gettext-check-macro-version.patch
 delete mode 100644 package/boot/grub2/patches/200-fix-gets-removal.patch
 delete mode 100644 package/boot/grub2/patches/400-R_X86_64_PLT32.patch

diff --git a/package/boot/grub2/Makefile b/package/boot/grub2/Makefile
index d6af65128e..1f92ba9250 100644
--- a/package/boot/grub2/Makefile
+++ b/package/boot/grub2/Makefile
@@ -10,14 +10,13 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=grub
 PKG_CPE_ID:=cpe:/a:gnu:grub2
-PKG_VERSION:=2.02
-PKG_RELEASE:=3
+PKG_VERSION:=2.04
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@GNU/grub
-PKG_HASH:=810b3798d316394f94096ec2797909dbf23c858e48f7b3830826b8daa06b7b0f
+PKG_HASH:=e5292496995ad42dabe843a0192cf2a2c502e7ffcc7479398232b10a472df77d
 
-PKG_FIXUP:=autoreconf
 HOST_BUILD_PARALLEL:=1
 PKG_BUILD_DEPENDS:=grub2/host
 
diff --git a/package/boot/grub2/patches/0008-Fix-packed-not-aligned-error-on-GCC-8.patch b/package/boot/grub2/patches/0008-Fix-packed-not-aligned-error-on-GCC-8.patch
deleted file mode 100644
index c9a9884b19..0000000000
--- a/package/boot/grub2/patches/0008-Fix-packed-not-aligned-error-on-GCC-8.patch
+++ /dev/null
@@ -1,71 +0,0 @@
-From 563b1da6e6ae7af46cc8354cadb5dab416989f0a Mon Sep 17 00:00:00 2001
-From: Michael Chang <mchang@suse.com>
-Date: Mon, 26 Mar 2018 16:52:34 +0800
-Subject: Fix packed-not-aligned error on GCC 8
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-When building with GCC 8, there are several errors regarding packed-not-aligned.
-
-./include/grub/gpt_partition.h:79:1: error: alignment 1 of ‘struct grub_gpt_partentry’ is less than 8 [-Werror=packed-not-aligned]
-
-This patch fixes the build error by cleaning up the ambiguity of placing
-aligned structure in a packed one. In "struct grub_btrfs_time" and "struct
-grub_gpt_part_type", the aligned attribute seems to be superfluous, and also
-has to be packed, to ensure the structure is bit-to-bit mapped to the format
-laid on disk. I think we could blame to copy and paste error here for the
-mistake. In "struct efi_variable", we have to use grub_efi_packed_guid_t, as
-the name suggests. :)
-
-Signed-off-by: Michael Chang <mchang@suse.com>
-Tested-by: Michael Chang <mchang@suse.com>
-Tested-by: Paul Menzel <paulepanter@users.sourceforge.net>
-Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
----
- grub-core/fs/btrfs.c          | 2 +-
- include/grub/efiemu/runtime.h | 2 +-
- include/grub/gpt_partition.h  | 2 +-
- 3 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/grub-core/fs/btrfs.c b/grub-core/fs/btrfs.c
-index 4849c1ceb..be195448d 100644
---- a/grub-core/fs/btrfs.c
-+++ b/grub-core/fs/btrfs.c
-@@ -175,7 +175,7 @@ struct grub_btrfs_time
- {
-   grub_int64_t sec;
-   grub_uint32_t nanosec;
--} __attribute__ ((aligned (4)));
-+} GRUB_PACKED;
- 
- struct grub_btrfs_inode
- {
-diff --git a/include/grub/efiemu/runtime.h b/include/grub/efiemu/runtime.h
-index 9b6b729f4..36d2dedf4 100644
---- a/include/grub/efiemu/runtime.h
-+++ b/include/grub/efiemu/runtime.h
-@@ -29,7 +29,7 @@ struct grub_efiemu_ptv_rel
- 
- struct efi_variable
- {
--  grub_efi_guid_t guid;
-+  grub_efi_packed_guid_t guid;
-   grub_uint32_t namelen;
-   grub_uint32_t size;
-   grub_efi_uint32_t attributes;
-diff --git a/include/grub/gpt_partition.h b/include/grub/gpt_partition.h
-index 1b32f6725..9668a68c3 100644
---- a/include/grub/gpt_partition.h
-+++ b/include/grub/gpt_partition.h
-@@ -28,7 +28,7 @@ struct grub_gpt_part_type
-   grub_uint16_t data2;
-   grub_uint16_t data3;
-   grub_uint8_t data4[8];
--} __attribute__ ((aligned(8)));
-+} GRUB_PACKED;
- typedef struct grub_gpt_part_type grub_gpt_part_type_t;
- 
- #define GRUB_GPT_PARTITION_TYPE_EMPTY \
--- 
-cgit v1.1-33-g03f6
diff --git a/package/boot/grub2/patches/100-grub_setup_root.patch b/package/boot/grub2/patches/100-grub_setup_root.patch
index f053ba95e2..df671bc9d2 100644
--- a/package/boot/grub2/patches/100-grub_setup_root.patch
+++ b/package/boot/grub2/patches/100-grub_setup_root.patch
@@ -17,7 +17,7 @@
    int  force;
    int  fs_probe;
    int allow_floppy;
-@@ -178,6 +181,13 @@ argp_parser (int key, char *arg, struct argp_state *state)
+@@ -178,6 +181,13 @@ argp_parser (int key, char *arg, struct
          arguments->dev_map = xstrdup (arg);
          break;
  
@@ -42,7 +42,7 @@
  
 --- a/util/setup.c
 +++ b/util/setup.c
-@@ -247,13 +247,12 @@ identify_partmap (grub_disk_t disk __attribute__ ((unused)),
+@@ -252,13 +252,12 @@ identify_partmap (grub_disk_t disk __att
  void
  SETUP (const char *dir,
         const char *boot_file, const char *core_file,
@@ -55,8 +55,8 @@
    char *boot_img, *core_img, *boot_path;
 -  char *root = 0;
    size_t boot_size, core_size;
- #ifdef GRUB_SETUP_BIOS
    grub_uint16_t core_sectors;
+   grub_device_t root_dev = 0, dest_dev, core_dev;
 @@ -307,7 +306,10 @@ SETUP (const char *dir,
  
    core_dev = dest_dev;
@@ -80,7 +80,7 @@
  	  continue;
 --- a/include/grub/util/install.h
 +++ b/include/grub/util/install.h
-@@ -184,13 +184,13 @@ grub_install_get_image_target (const char *arg);
+@@ -191,13 +191,13 @@ grub_install_get_image_target (const cha
  void
  grub_util_bios_setup (const char *dir,
  		      const char *boot_file, const char *core_file,
@@ -98,7 +98,7 @@
  
 --- a/util/grub-install.c
 +++ b/util/grub-install.c
-@@ -1673,7 +1673,7 @@ main (int argc, char *argv[])
+@@ -1712,7 +1712,7 @@ main (int argc, char *argv[])
  	/*  Now perform the installation.  */
  	if (install_bootsector)
  	  grub_util_bios_setup (platdir, "boot.img", "core.img",
@@ -107,7 +107,7 @@
  				fs_probe, allow_floppy, add_rs_codes);
  	break;
        }
-@@ -1699,7 +1699,7 @@ main (int argc, char *argv[])
+@@ -1738,7 +1738,7 @@ main (int argc, char *argv[])
  	/*  Now perform the installation.  */
  	if (install_bootsector)
  	  grub_util_sparc_setup (platdir, "boot.img", "core.img",
diff --git a/package/boot/grub2/patches/101-disable-gettext-check-macro-version.patch b/package/boot/grub2/patches/101-disable-gettext-check-macro-version.patch
deleted file mode 100644
index 4b850ed2a1..0000000000
--- a/package/boot/grub2/patches/101-disable-gettext-check-macro-version.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-diff --git a/po/Makefile.in.in b/po/Makefile.in.in
-index 3619458..060e0db 100644
---- a/po/Makefile.in.in
-+++ b/po/Makefile.in.in
-@@ -97,7 +97,7 @@ CATALOGS = @CATALOGS@
- 	mv t-$@ $@
- 
- 
--all: check-macro-version all-@USE_NLS@
-+all: all-@USE_NLS@
- 
- all-yes: stamp-po
- all-no:
diff --git a/package/boot/grub2/patches/200-fix-gets-removal.patch b/package/boot/grub2/patches/200-fix-gets-removal.patch
deleted file mode 100644
index 737fb975bf..0000000000
--- a/package/boot/grub2/patches/200-fix-gets-removal.patch
+++ /dev/null
@@ -1,16 +0,0 @@
---- a/grub-core/gnulib/stdio.in.h
-+++ b/grub-core/gnulib/stdio.in.h
-@@ -695,13 +695,6 @@ _GL_WARN_ON_USE (getline, "getline is un
- # endif
- #endif
- 
--/* It is very rare that the developer ever has full control of stdin,
--   so any use of gets warrants an unconditional warning; besides, C11
--   removed it.  */
--#undef gets
--#if HAVE_RAW_DECL_GETS
--#endif
--
- 
- #if @GNULIB_OBSTACK_PRINTF@ || @GNULIB_OBSTACK_PRINTF_POSIX@
- struct obstack;
diff --git a/package/boot/grub2/patches/300-CVE-2015-8370.patch b/package/boot/grub2/patches/300-CVE-2015-8370.patch
index eb7919639a..22f6c90928 100644
--- a/package/boot/grub2/patches/300-CVE-2015-8370.patch
+++ b/package/boot/grub2/patches/300-CVE-2015-8370.patch
@@ -33,8 +33,8 @@ Signed-off-by: Ismael Ripoll-Ripoll <iripoll@disca.upv.es>
  	  break;
  	}
  
--      if (key == '\b')
-+      if (key == '\b' && cur_len)
+-      if (key == GRUB_TERM_BACKSPACE)
++      if (key == GRUB_TERM_BACKSPACE && cur_len)
  	{
  	  if (cur_len)
  	    {
diff --git a/package/boot/grub2/patches/400-R_X86_64_PLT32.patch b/package/boot/grub2/patches/400-R_X86_64_PLT32.patch
deleted file mode 100644
index 2c65cb78a5..0000000000
--- a/package/boot/grub2/patches/400-R_X86_64_PLT32.patch
+++ /dev/null
@@ -1,75 +0,0 @@
-From 02702bdfe14d8a04643a45b03715f734ae34dbac Mon Sep 17 00:00:00 2001
-From: "H.J. Lu" <hjl.tools@gmail.com>
-Date: Sat, 17 Feb 2018 06:47:28 -0800
-Subject: x86-64: Treat R_X86_64_PLT32 as R_X86_64_PC32
-
-Starting from binutils commit bd7ab16b4537788ad53521c45469a1bdae84ad4a:
-
-https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=bd7ab16b4537788ad53521c45469a1bdae84ad4a
-
-x86-64 assembler generates R_X86_64_PLT32, instead of R_X86_64_PC32, for
-32-bit PC-relative branches.  Grub2 should treat R_X86_64_PLT32 as
-R_X86_64_PC32.
-
-Signed-off-by: H.J. Lu <hjl.tools@gmail.com>
-Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
-
-Origin: upstream, https://git.savannah.gnu.org/cgit/grub.git/commit/?id=842c390469e2c2e10b5aa36700324cd3bde25875
-Last-Update: 2018-07-30
-
-Patch-Name: R_X86_64_PLT32.patch
----
- grub-core/efiemu/i386/loadcore64.c | 1 +
- grub-core/kern/x86_64/dl.c         | 1 +
- util/grub-mkimagexx.c              | 1 +
- util/grub-module-verifier.c        | 1 +
- 4 files changed, 4 insertions(+)
-
-diff --git a/grub-core/efiemu/i386/loadcore64.c b/grub-core/efiemu/i386/loadcore64.c
-index e49d0b6ff..18facf47f 100644
---- a/grub-core/efiemu/i386/loadcore64.c
-+++ b/grub-core/efiemu/i386/loadcore64.c
-@@ -98,6 +98,7 @@ grub_arch_efiemu_relocate_symbols64 (grub_efiemu_segment_t segs,
- 		    break;
- 
- 		  case R_X86_64_PC32:
-+		  case R_X86_64_PLT32:
- 		    err = grub_efiemu_write_value (addr,
- 						   *addr32 + rel->r_addend
- 						   + sym.off
-diff --git a/grub-core/kern/x86_64/dl.c b/grub-core/kern/x86_64/dl.c
-index 440690673..3a73e6e6c 100644
---- a/grub-core/kern/x86_64/dl.c
-+++ b/grub-core/kern/x86_64/dl.c
-@@ -70,6 +70,7 @@ grub_arch_dl_relocate_symbols (grub_dl_t mod, void *ehdr,
- 	  break;
- 
- 	case R_X86_64_PC32:
-+	case R_X86_64_PLT32:
- 	  {
- 	    grub_int64_t value;
- 	    value = ((grub_int32_t) *addr32) + rel->r_addend + sym->st_value -
-diff --git a/util/grub-mkimagexx.c b/util/grub-mkimagexx.c
-index e63f148e4..f20255a28 100644
---- a/util/grub-mkimagexx.c
-+++ b/util/grub-mkimagexx.c
-@@ -832,6 +832,7 @@ SUFFIX (relocate_addresses) (Elf_Ehdr *e, Elf_Shdr *sections,
- 		  break;
- 
- 		case R_X86_64_PC32:
-+		case R_X86_64_PLT32:
- 		  {
- 		    grub_uint32_t *t32 = (grub_uint32_t *) target;
- 		    *t32 = grub_host_to_target64 (grub_target_to_host32 (*t32)
-diff --git a/util/grub-module-verifier.c b/util/grub-module-verifier.c
-index 9179285a5..a79271f66 100644
---- a/util/grub-module-verifier.c
-+++ b/util/grub-module-verifier.c
-@@ -19,6 +19,7 @@ struct grub_module_verifier_arch archs[] = {
-       -1
-     }, (int[]){
-       R_X86_64_PC32,
-+      R_X86_64_PLT32,
-       -1
-     }
-   },
-- 
2.22.0



--===============0883044412823738820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0883044412823738820==--
