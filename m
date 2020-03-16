Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3526D1870E9
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 18:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CYvwIGLeUPRjj4u+VMTuWq5Ye3kSGGgs4uju2SZM65U=; b=RELc2Bpe/2b/sN
	zjZ4iEuczw0vwJ5u3nOZCYwAME7XYaB+tzCNOFxl94DAfgURnp0koZaqooT9MbuXxsUHw3uTysucf
	i1enwRJhaxzZ539gH+zOKbLD7Pr768XD8+8oyteZC40Sk10rd9ebVLGgvlPYMjuSZrEYFNMyKD51/
	76XEcv4qYhI9MpXSADZT2BsJlwY82pjPmhRhL8NAC+gVMgZVYw+C2JsljjVR6hyOtM553kXHY6S2/
	0OtNmd9fdWvqb7KnlD6gATzTO26lFdK08KpopnohsF+wHHipk2zEGnX3TXzOLMqjje4f+4QJlB/mM
	OIZugofjCvZI3l+/6ZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtEE-0006vp-Ha; Mon, 16 Mar 2020 17:08:38 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtDq-0006ij-3K
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 17:08:16 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 48h2my6fRqzKmhN;
 Mon, 16 Mar 2020 18:08:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id WpEe87lyCsRb; Mon, 16 Mar 2020 18:08:00 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 18:07:43 +0100
Message-Id: <20200316170744.29638-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_100814_442219_4F1E4142 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.152 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] toolchain: Update GCC 8 to version 8.4.0
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The removed patch is included in GCC 8.4.0.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 toolchain/gcc/Config.version                  |  2 +-
 toolchain/gcc/common.mk                       |  4 +--
 .../patches/8.3.0/090-rs6000-PR-89587.patch   | 30 -------------------
 .../002-case_insensitive.patch                |  0
 .../{8.3.0 => 8.4.0}/010-documentation.patch  |  2 +-
 .../110-Fix-MIPS-PR-84790.patch               |  0
 .../{8.3.0 => 8.4.0}/230-musl_libssp.patch    |  0
 .../300-mips_Os_cpu_rtx_cost_model.patch      |  2 +-
 .../800-arm_v5te_no_ldrd_strd.patch           |  0
 .../810-arm-softfloat-libgcc.patch            |  0
 .../{8.3.0 => 8.4.0}/820-libgcc_pic.patch     |  0
 .../840-armv4_pass_fix-v4bx_to_ld.patch       |  0
 .../850-use_shared_libgcc.patch               |  0
 .../851-libgcc_no_compat.patch                |  0
 .../870-ppc_no_crtsavres.patch                |  2 +-
 .../{8.3.0 => 8.4.0}/881-no_tm_section.patch  |  0
 .../{8.3.0 => 8.4.0}/900-bad-mips16-crt.patch |  0
 .../{8.3.0 => 8.4.0}/910-mbsd_multi.patch     |  4 +--
 .../920-specs_nonfatal_getenv.patch           |  0
 .../930-fix-mips-noexecstack.patch            |  2 +-
 ...ibffi-fix-MIPS-softfloat-build-issue.patch |  0
 ...mpilation-when-making-cross-compiler.patch |  0
 22 files changed, 9 insertions(+), 39 deletions(-)
 delete mode 100644 toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/002-case_insensitive.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/010-documentation.patch (94%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/110-Fix-MIPS-PR-84790.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/230-musl_libssp.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/300-mips_Os_cpu_rtx_cost_model.patch (91%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/800-arm_v5te_no_ldrd_strd.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/810-arm-softfloat-libgcc.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/820-libgcc_pic.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/840-armv4_pass_fix-v4bx_to_ld.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/850-use_shared_libgcc.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/851-libgcc_no_compat.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/870-ppc_no_crtsavres.patch (84%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/881-no_tm_section.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/900-bad-mips16-crt.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/910-mbsd_multi.patch (97%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/920-specs_nonfatal_getenv.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/930-fix-mips-noexecstack.patch (98%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/931-libffi-fix-MIPS-softfloat-build-issue.patch (100%)
 rename toolchain/gcc/patches/{8.3.0 => 8.4.0}/960-gotools-fix-compilation-when-making-cross-compiler.patch (100%)

diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index 7819e9d03974..a6306990d9f8 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -15,7 +15,7 @@ config GCC_VERSION
 	default "5.5.0"		if GCC_VERSION_5
 	default "7.5.0"		if GCC_VERSION_7
 	default "9.2.0"		if GCC_VERSION_9
-	default "8.3.0"
+	default "8.4.0"
 
 config GCC_USE_IREMAP
 	bool
diff --git a/toolchain/gcc/common.mk b/toolchain/gcc/common.mk
index 24c923abef51..0105ec8720b0 100644
--- a/toolchain/gcc/common.mk
+++ b/toolchain/gcc/common.mk
@@ -36,8 +36,8 @@ ifeq ($(PKG_VERSION),7.5.0)
   PKG_HASH:=b81946e7f01f90528a1f7352ab08cc602b9ccc05d4e44da4bd501c5a189ee661
 endif
 
-ifeq ($(PKG_VERSION),8.3.0)
-  PKG_HASH:=64baadfe6cc0f4947a84cb12d7f0dfaf45bb58b7e92461639596c21e02d97d2c
+ifeq ($(PKG_VERSION),8.4.0)
+  PKG_HASH:=e30a6e52d10e1f27ed55104ad233c30bd1e99cfb5ff98ab022dc941edd1b2dd4
 endif
 
 ifeq ($(PKG_VERSION),9.2.0)
diff --git a/toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch b/toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch
deleted file mode 100644
index 83bfbbe712ef..000000000000
--- a/toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 045e60da05ec1d4997864883143a951f152cfc9f Mon Sep 17 00:00:00 2001
-From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
-Date: Tue, 30 Apr 2019 20:37:12 +0000
-Subject: [PATCH] 	Backported from mainline 	2019-03-05  Jakub
- Jelinek  <jakub@redhat.com>
-
-	PR target/89587
-	* config/rs6000/t-linux (MULTIARCH_DIRNAME): Set to non-empty only
-	if_multiarch.
-
-
-git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/branches/gcc-8-branch@270720 138bc75d-0d04-0410-961f-82ee72b054a4
----
- gcc/ChangeLog             | 4 ++++
- gcc/config/rs6000/t-linux | 2 +-
- 2 files changed, 5 insertions(+), 1 deletion(-)
-
-diff --git a/gcc/config/rs6000/t-linux b/gcc/config/rs6000/t-linux
-index acfde1f48aec..aeb7440c4920 100644
---- a/gcc/config/rs6000/t-linux
-+++ b/gcc/config/rs6000/t-linux
-@@ -4,7 +4,7 @@ ifeq (,$(filter $(with_cpu),$(SOFT_FLOAT_CPUS))$(findstring soft,$(with_float)))
- ifneq (,$(findstring powerpc64,$(target)))
- MULTILIB_OSDIRNAMES := .=../lib64$(call if_multiarch,:powerpc64-linux-gnu)
- else
--MULTIARCH_DIRNAME := powerpc-linux-gnu
-+MULTIARCH_DIRNAME := $(call if_multiarch,powerpc-linux-gnu)
- endif
- ifneq (,$(findstring powerpcle,$(target)))
- MULTIARCH_DIRNAME := $(subst -linux,le-linux,$(MULTIARCH_DIRNAME))
diff --git a/toolchain/gcc/patches/8.3.0/002-case_insensitive.patch b/toolchain/gcc/patches/8.4.0/002-case_insensitive.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/002-case_insensitive.patch
rename to toolchain/gcc/patches/8.4.0/002-case_insensitive.patch
diff --git a/toolchain/gcc/patches/8.3.0/010-documentation.patch b/toolchain/gcc/patches/8.4.0/010-documentation.patch
similarity index 94%
rename from toolchain/gcc/patches/8.3.0/010-documentation.patch
rename to toolchain/gcc/patches/8.4.0/010-documentation.patch
index c3a6a15901d1..c7e3d4ad555a 100644
--- a/toolchain/gcc/patches/8.3.0/010-documentation.patch
+++ b/toolchain/gcc/patches/8.4.0/010-documentation.patch
@@ -12,7 +12,7 @@ Date:   Tue Feb 26 16:16:33 2013 +0000
 
 --- a/gcc/Makefile.in
 +++ b/gcc/Makefile.in
-@@ -3203,18 +3203,10 @@ doc/gcc.info: $(TEXI_GCC_FILES)
+@@ -3204,18 +3204,10 @@ doc/gcc.info: $(TEXI_GCC_FILES)
  doc/gccint.info: $(TEXI_GCCINT_FILES)
  doc/cppinternals.info: $(TEXI_CPPINT_FILES)
  
diff --git a/toolchain/gcc/patches/8.3.0/110-Fix-MIPS-PR-84790.patch b/toolchain/gcc/patches/8.4.0/110-Fix-MIPS-PR-84790.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/110-Fix-MIPS-PR-84790.patch
rename to toolchain/gcc/patches/8.4.0/110-Fix-MIPS-PR-84790.patch
diff --git a/toolchain/gcc/patches/8.3.0/230-musl_libssp.patch b/toolchain/gcc/patches/8.4.0/230-musl_libssp.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/230-musl_libssp.patch
rename to toolchain/gcc/patches/8.4.0/230-musl_libssp.patch
diff --git a/toolchain/gcc/patches/8.3.0/300-mips_Os_cpu_rtx_cost_model.patch b/toolchain/gcc/patches/8.4.0/300-mips_Os_cpu_rtx_cost_model.patch
similarity index 91%
rename from toolchain/gcc/patches/8.3.0/300-mips_Os_cpu_rtx_cost_model.patch
rename to toolchain/gcc/patches/8.4.0/300-mips_Os_cpu_rtx_cost_model.patch
index 6f97356ac609..2e2c609e4859 100644
--- a/toolchain/gcc/patches/8.3.0/300-mips_Os_cpu_rtx_cost_model.patch
+++ b/toolchain/gcc/patches/8.4.0/300-mips_Os_cpu_rtx_cost_model.patch
@@ -10,7 +10,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
 
 --- a/gcc/config/mips/mips.c
 +++ b/gcc/config/mips/mips.c
-@@ -19834,7 +19834,7 @@ mips_option_override (void)
+@@ -19847,7 +19847,7 @@ mips_option_override (void)
      flag_pcc_struct_return = 0;
  
    /* Decide which rtx_costs structure to use.  */
diff --git a/toolchain/gcc/patches/8.3.0/800-arm_v5te_no_ldrd_strd.patch b/toolchain/gcc/patches/8.4.0/800-arm_v5te_no_ldrd_strd.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/800-arm_v5te_no_ldrd_strd.patch
rename to toolchain/gcc/patches/8.4.0/800-arm_v5te_no_ldrd_strd.patch
diff --git a/toolchain/gcc/patches/8.3.0/810-arm-softfloat-libgcc.patch b/toolchain/gcc/patches/8.4.0/810-arm-softfloat-libgcc.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/810-arm-softfloat-libgcc.patch
rename to toolchain/gcc/patches/8.4.0/810-arm-softfloat-libgcc.patch
diff --git a/toolchain/gcc/patches/8.3.0/820-libgcc_pic.patch b/toolchain/gcc/patches/8.4.0/820-libgcc_pic.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/820-libgcc_pic.patch
rename to toolchain/gcc/patches/8.4.0/820-libgcc_pic.patch
diff --git a/toolchain/gcc/patches/8.3.0/840-armv4_pass_fix-v4bx_to_ld.patch b/toolchain/gcc/patches/8.4.0/840-armv4_pass_fix-v4bx_to_ld.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/840-armv4_pass_fix-v4bx_to_ld.patch
rename to toolchain/gcc/patches/8.4.0/840-armv4_pass_fix-v4bx_to_ld.patch
diff --git a/toolchain/gcc/patches/8.3.0/850-use_shared_libgcc.patch b/toolchain/gcc/patches/8.4.0/850-use_shared_libgcc.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/850-use_shared_libgcc.patch
rename to toolchain/gcc/patches/8.4.0/850-use_shared_libgcc.patch
diff --git a/toolchain/gcc/patches/8.3.0/851-libgcc_no_compat.patch b/toolchain/gcc/patches/8.4.0/851-libgcc_no_compat.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/851-libgcc_no_compat.patch
rename to toolchain/gcc/patches/8.4.0/851-libgcc_no_compat.patch
diff --git a/toolchain/gcc/patches/8.3.0/870-ppc_no_crtsavres.patch b/toolchain/gcc/patches/8.4.0/870-ppc_no_crtsavres.patch
similarity index 84%
rename from toolchain/gcc/patches/8.3.0/870-ppc_no_crtsavres.patch
rename to toolchain/gcc/patches/8.4.0/870-ppc_no_crtsavres.patch
index 2aa4b8e3739e..51d11c3d85bc 100644
--- a/toolchain/gcc/patches/8.3.0/870-ppc_no_crtsavres.patch
+++ b/toolchain/gcc/patches/8.4.0/870-ppc_no_crtsavres.patch
@@ -1,6 +1,6 @@
 --- a/gcc/config/rs6000/rs6000.c
 +++ b/gcc/config/rs6000/rs6000.c
-@@ -24632,7 +24632,7 @@ rs6000_savres_strategy (rs6000_stack_t *
+@@ -24780,7 +24780,7 @@ rs6000_savres_strategy (rs6000_stack_t *
    /* Define cutoff for using out-of-line functions to save registers.  */
    if (DEFAULT_ABI == ABI_V4 || TARGET_ELF)
      {
diff --git a/toolchain/gcc/patches/8.3.0/881-no_tm_section.patch b/toolchain/gcc/patches/8.4.0/881-no_tm_section.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/881-no_tm_section.patch
rename to toolchain/gcc/patches/8.4.0/881-no_tm_section.patch
diff --git a/toolchain/gcc/patches/8.3.0/900-bad-mips16-crt.patch b/toolchain/gcc/patches/8.4.0/900-bad-mips16-crt.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/900-bad-mips16-crt.patch
rename to toolchain/gcc/patches/8.4.0/900-bad-mips16-crt.patch
diff --git a/toolchain/gcc/patches/8.3.0/910-mbsd_multi.patch b/toolchain/gcc/patches/8.4.0/910-mbsd_multi.patch
similarity index 97%
rename from toolchain/gcc/patches/8.3.0/910-mbsd_multi.patch
rename to toolchain/gcc/patches/8.4.0/910-mbsd_multi.patch
index fb8e25cb186c..c566ea35e560 100644
--- a/toolchain/gcc/patches/8.3.0/910-mbsd_multi.patch
+++ b/toolchain/gcc/patches/8.4.0/910-mbsd_multi.patch
@@ -114,7 +114,7 @@ Date:   Tue Jul 31 00:52:27 2007 +0000
  ; On SVR4 targets, it also controls whether or not to emit a
 --- a/gcc/opts.c
 +++ b/gcc/opts.c
-@@ -2065,6 +2065,9 @@ common_handle_option (struct gcc_options
+@@ -2073,6 +2073,9 @@ common_handle_option (struct gcc_options
  			       opts, opts_set, loc, dc);
        break;
  
@@ -126,7 +126,7 @@ Date:   Tue Jul 31 00:52:27 2007 +0000
        opts->x_warn_larger_than = value != -1;
 --- a/gcc/doc/invoke.texi
 +++ b/gcc/doc/invoke.texi
-@@ -7014,6 +7014,17 @@ This option is only supported for C and
+@@ -7013,6 +7013,17 @@ This option is only supported for C and
  @option{-Wall} and by @option{-Wpedantic}, which can be disabled with
  @option{-Wno-pointer-sign}.
  
diff --git a/toolchain/gcc/patches/8.3.0/920-specs_nonfatal_getenv.patch b/toolchain/gcc/patches/8.4.0/920-specs_nonfatal_getenv.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/920-specs_nonfatal_getenv.patch
rename to toolchain/gcc/patches/8.4.0/920-specs_nonfatal_getenv.patch
diff --git a/toolchain/gcc/patches/8.3.0/930-fix-mips-noexecstack.patch b/toolchain/gcc/patches/8.4.0/930-fix-mips-noexecstack.patch
similarity index 98%
rename from toolchain/gcc/patches/8.3.0/930-fix-mips-noexecstack.patch
rename to toolchain/gcc/patches/8.4.0/930-fix-mips-noexecstack.patch
index 706d67f7c90d..ed8ada22a114 100644
--- a/toolchain/gcc/patches/8.3.0/930-fix-mips-noexecstack.patch
+++ b/toolchain/gcc/patches/8.4.0/930-fix-mips-noexecstack.patch
@@ -48,7 +48,7 @@ sellcey@mips.com
 
 --- a/gcc/config/mips/mips.c
 +++ b/gcc/config/mips/mips.c
-@@ -22627,6 +22627,9 @@ mips_starting_frame_offset (void)
+@@ -22640,6 +22640,9 @@ mips_starting_frame_offset (void)
  #undef TARGET_STARTING_FRAME_OFFSET
  #define TARGET_STARTING_FRAME_OFFSET mips_starting_frame_offset
  
diff --git a/toolchain/gcc/patches/8.3.0/931-libffi-fix-MIPS-softfloat-build-issue.patch b/toolchain/gcc/patches/8.4.0/931-libffi-fix-MIPS-softfloat-build-issue.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/931-libffi-fix-MIPS-softfloat-build-issue.patch
rename to toolchain/gcc/patches/8.4.0/931-libffi-fix-MIPS-softfloat-build-issue.patch
diff --git a/toolchain/gcc/patches/8.3.0/960-gotools-fix-compilation-when-making-cross-compiler.patch b/toolchain/gcc/patches/8.4.0/960-gotools-fix-compilation-when-making-cross-compiler.patch
similarity index 100%
rename from toolchain/gcc/patches/8.3.0/960-gotools-fix-compilation-when-making-cross-compiler.patch
rename to toolchain/gcc/patches/8.4.0/960-gotools-fix-compilation-when-making-cross-compiler.patch
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
