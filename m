Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A701870E6
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 18:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ez7LFMzKv/Qp+rfAxttpPLKO+8XOylpk6rhkziwTWUQ=; b=TpmU3v8E4Z/okn
	Mv49cn5L29U8U4mvXc7R/mU+DF8AYEyAuPPuucSHI7P3JRG773Biu1i3WcBRNOPlThvni+wo3vhmD
	oVsDGzcJTvcpbPxCtBfAOM12Dilvxt/gR9YZmSHh9RN+XgftT9m9NrHNSsCWXCIo6XhIVsbj5wh/Y
	YTkWN81HR5OdwCxvGqPoYz/WtX31ulXJAQT5A6xLyYFxvwvLV9JCRlINYdkyNffQIdx5l1uq1UdtS
	2ksHJZWRF5KXkljnWqD9WYQIwLqj05XAxyJY7lIjg0Q+lo7n0ZTXMPr1CECTNfAoAJLVP3hyT0fiU
	VLb6FmMUz8egyexufCDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtDz-0006lX-Jt; Mon, 16 Mar 2020 17:08:23 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtDo-0006f3-QE
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 17:08:15 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 48h2mz5kzrzKmf6;
 Mon, 16 Mar 2020 18:08:03 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id icN0txYR_1aI; Mon, 16 Mar 2020 18:08:00 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 18:07:44 +0100
Message-Id: <20200316170744.29638-2-hauke@hauke-m.de>
In-Reply-To: <20200316170744.29638-1-hauke@hauke-m.de>
References: <20200316170744.29638-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_100813_159125_927267A2 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] toolchain: Update GCC 9 to version 9.3.0
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

The removed patch is included in GCC 9.3.0.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 toolchain/gcc/Config.version                  |  2 +-
 toolchain/gcc/common.mk                       |  4 +-
 ...uninitialised_use_in_mips_split_move.patch | 55 -------------------
 .../002-case_insensitive.patch                |  0
 .../{9.2.0 => 9.3.0}/010-documentation.patch  |  2 +-
 .../110-Fix-MIPS-PR-84790.patch               |  0
 .../{9.2.0 => 9.3.0}/230-musl_libssp.patch    |  0
 .../300-mips_Os_cpu_rtx_cost_model.patch      |  0
 .../810-arm-softfloat-libgcc.patch            |  0
 .../{9.2.0 => 9.3.0}/820-libgcc_pic.patch     |  0
 .../840-armv4_pass_fix-v4bx_to_ld.patch       |  0
 .../850-use_shared_libgcc.patch               |  0
 .../851-libgcc_no_compat.patch                |  0
 .../870-ppc_no_crtsavres.patch                |  2 +-
 .../{9.2.0 => 9.3.0}/881-no_tm_section.patch  |  0
 .../{9.2.0 => 9.3.0}/900-bad-mips16-crt.patch |  0
 .../{9.2.0 => 9.3.0}/910-mbsd_multi.patch     |  2 +-
 .../920-specs_nonfatal_getenv.patch           |  0
 .../930-fix-mips-noexecstack.patch            |  0
 ...ibffi-fix-MIPS-softfloat-build-issue.patch |  0
 ...mpilation-when-making-cross-compiler.patch |  0
 21 files changed, 6 insertions(+), 61 deletions(-)
 delete mode 100644 toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/002-case_insensitive.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/010-documentation.patch (94%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/110-Fix-MIPS-PR-84790.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/230-musl_libssp.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/300-mips_Os_cpu_rtx_cost_model.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/810-arm-softfloat-libgcc.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/820-libgcc_pic.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/840-armv4_pass_fix-v4bx_to_ld.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/850-use_shared_libgcc.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/851-libgcc_no_compat.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/870-ppc_no_crtsavres.patch (84%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/881-no_tm_section.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/900-bad-mips16-crt.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/910-mbsd_multi.patch (98%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/920-specs_nonfatal_getenv.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/930-fix-mips-noexecstack.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/931-libffi-fix-MIPS-softfloat-build-issue.patch (100%)
 rename toolchain/gcc/patches/{9.2.0 => 9.3.0}/960-gotools-fix-compilation-when-making-cross-compiler.patch (100%)

diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index a6306990d9f8..6fbc6d980468 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -14,7 +14,7 @@ config GCC_VERSION
 	string
 	default "5.5.0"		if GCC_VERSION_5
 	default "7.5.0"		if GCC_VERSION_7
-	default "9.2.0"		if GCC_VERSION_9
+	default "9.3.0"		if GCC_VERSION_9
 	default "8.4.0"
 
 config GCC_USE_IREMAP
diff --git a/toolchain/gcc/common.mk b/toolchain/gcc/common.mk
index 0105ec8720b0..5f237e4520fb 100644
--- a/toolchain/gcc/common.mk
+++ b/toolchain/gcc/common.mk
@@ -40,8 +40,8 @@ ifeq ($(PKG_VERSION),8.4.0)
   PKG_HASH:=e30a6e52d10e1f27ed55104ad233c30bd1e99cfb5ff98ab022dc941edd1b2dd4
 endif
 
-ifeq ($(PKG_VERSION),9.2.0)
-  PKG_HASH:=ea6ef08f121239da5695f76c9b33637a118dcf63e24164422231917fa61fb206
+ifeq ($(PKG_VERSION),9.3.0)
+  PKG_HASH:=71e197867611f6054aa1119b13a0c0abac12834765fe2d81f35ac57f84f742d1
 endif
 
 PATCH_DIR=../patches/$(GCC_VERSION)
diff --git a/toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch b/toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch
deleted file mode 100644
index 3529a19d8c51..000000000000
--- a/toolchain/gcc/patches/9.2.0/100-Fix_uninitialised_use_in_mips_split_move.patch
+++ /dev/null
@@ -1,55 +0,0 @@
-From d57faea9337ad595d005687247c3322252f70ba1 Mon Sep 17 00:00:00 2001
-From: rsandifo <rsandifo@138bc75d-0d04-0410-961f-82ee72b054a4>
-Date: Sun, 7 Jul 2019 09:49:14 +0000
-Subject: [PATCH] Fix uninitialised use in mips_split_move
-
-While testing the fix for PR91068, I hit an rtl checking failure
-while building newlib.  mips_split_move was decomposing an address that
-happened to be symbolic and then tried to access the REGNO of the base
-register field, which wasn't initialised but which by chance pointed to
-valid memory.
-
-2019-07-07  Richard Sandiford  <richard.sandiford@arm.com>
-
-gcc/
-	* config/mips/mips.c (mips_split_move): Zero-initialize addr
-	and check whether addr.reg is nonnull before using it.
-
-
-git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/trunk@273174 138bc75d-0d04-0410-961f-82ee72b054a4
----
- gcc/ChangeLog          | 5 +++++
- gcc/config/mips/mips.c | 4 ++--
- 2 files changed, 7 insertions(+), 2 deletions(-)
-
---- a/gcc/ChangeLog
-+++ b/gcc/ChangeLog
-@@ -1,3 +1,8 @@
-+2019-07-07  Richard Sandiford  <richard.sandiford@arm.com>
-+
-+	* config/mips/mips.c (mips_split_move): Zero-initialize addr
-+	and check whether addr.reg is nonnull before using it.
-+
- 2019-08-12  Release Manager
- 
- 	* GCC 9.2.0 released.
---- a/gcc/config/mips/mips.c
-+++ b/gcc/config/mips/mips.c
-@@ -4849,7 +4849,7 @@ mips_split_move (rtx dest, rtx src, enum
-      can forward SRC for DEST.  This is most useful if the next insn is a
-      simple store.   */
-   rtx_insn *insn = (rtx_insn *)insn_;
--  struct mips_address_info addr;
-+  struct mips_address_info addr = {};
-   if (insn)
-     {
-       rtx_insn *next = next_nonnote_nondebug_insn_bb (insn);
-@@ -4862,7 +4862,7 @@ mips_split_move (rtx dest, rtx src, enum
- 		{
- 		  rtx tmp = XEXP (src, 0);
- 		  mips_classify_address (&addr, tmp, GET_MODE (tmp), true);
--		  if (REGNO (addr.reg) != REGNO (dest))
-+		  if (addr.reg && REGNO (addr.reg) != REGNO (dest))
- 		    validate_change (next, &SET_SRC (set), src, false);
- 		}
- 	      else
diff --git a/toolchain/gcc/patches/9.2.0/002-case_insensitive.patch b/toolchain/gcc/patches/9.3.0/002-case_insensitive.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/002-case_insensitive.patch
rename to toolchain/gcc/patches/9.3.0/002-case_insensitive.patch
diff --git a/toolchain/gcc/patches/9.2.0/010-documentation.patch b/toolchain/gcc/patches/9.3.0/010-documentation.patch
similarity index 94%
rename from toolchain/gcc/patches/9.2.0/010-documentation.patch
rename to toolchain/gcc/patches/9.3.0/010-documentation.patch
index 2ceb9979600e..c3a6a15901d1 100644
--- a/toolchain/gcc/patches/9.2.0/010-documentation.patch
+++ b/toolchain/gcc/patches/9.3.0/010-documentation.patch
@@ -12,7 +12,7 @@ Date:   Tue Feb 26 16:16:33 2013 +0000
 
 --- a/gcc/Makefile.in
 +++ b/gcc/Makefile.in
-@@ -3202,18 +3202,10 @@ doc/gcc.info: $(TEXI_GCC_FILES)
+@@ -3203,18 +3203,10 @@ doc/gcc.info: $(TEXI_GCC_FILES)
  doc/gccint.info: $(TEXI_GCCINT_FILES)
  doc/cppinternals.info: $(TEXI_CPPINT_FILES)
  
diff --git a/toolchain/gcc/patches/9.2.0/110-Fix-MIPS-PR-84790.patch b/toolchain/gcc/patches/9.3.0/110-Fix-MIPS-PR-84790.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/110-Fix-MIPS-PR-84790.patch
rename to toolchain/gcc/patches/9.3.0/110-Fix-MIPS-PR-84790.patch
diff --git a/toolchain/gcc/patches/9.2.0/230-musl_libssp.patch b/toolchain/gcc/patches/9.3.0/230-musl_libssp.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/230-musl_libssp.patch
rename to toolchain/gcc/patches/9.3.0/230-musl_libssp.patch
diff --git a/toolchain/gcc/patches/9.2.0/300-mips_Os_cpu_rtx_cost_model.patch b/toolchain/gcc/patches/9.3.0/300-mips_Os_cpu_rtx_cost_model.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/300-mips_Os_cpu_rtx_cost_model.patch
rename to toolchain/gcc/patches/9.3.0/300-mips_Os_cpu_rtx_cost_model.patch
diff --git a/toolchain/gcc/patches/9.2.0/810-arm-softfloat-libgcc.patch b/toolchain/gcc/patches/9.3.0/810-arm-softfloat-libgcc.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/810-arm-softfloat-libgcc.patch
rename to toolchain/gcc/patches/9.3.0/810-arm-softfloat-libgcc.patch
diff --git a/toolchain/gcc/patches/9.2.0/820-libgcc_pic.patch b/toolchain/gcc/patches/9.3.0/820-libgcc_pic.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/820-libgcc_pic.patch
rename to toolchain/gcc/patches/9.3.0/820-libgcc_pic.patch
diff --git a/toolchain/gcc/patches/9.2.0/840-armv4_pass_fix-v4bx_to_ld.patch b/toolchain/gcc/patches/9.3.0/840-armv4_pass_fix-v4bx_to_ld.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/840-armv4_pass_fix-v4bx_to_ld.patch
rename to toolchain/gcc/patches/9.3.0/840-armv4_pass_fix-v4bx_to_ld.patch
diff --git a/toolchain/gcc/patches/9.2.0/850-use_shared_libgcc.patch b/toolchain/gcc/patches/9.3.0/850-use_shared_libgcc.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/850-use_shared_libgcc.patch
rename to toolchain/gcc/patches/9.3.0/850-use_shared_libgcc.patch
diff --git a/toolchain/gcc/patches/9.2.0/851-libgcc_no_compat.patch b/toolchain/gcc/patches/9.3.0/851-libgcc_no_compat.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/851-libgcc_no_compat.patch
rename to toolchain/gcc/patches/9.3.0/851-libgcc_no_compat.patch
diff --git a/toolchain/gcc/patches/9.2.0/870-ppc_no_crtsavres.patch b/toolchain/gcc/patches/9.3.0/870-ppc_no_crtsavres.patch
similarity index 84%
rename from toolchain/gcc/patches/9.2.0/870-ppc_no_crtsavres.patch
rename to toolchain/gcc/patches/9.3.0/870-ppc_no_crtsavres.patch
index 06bb0efda273..6ec22dd20182 100644
--- a/toolchain/gcc/patches/9.2.0/870-ppc_no_crtsavres.patch
+++ b/toolchain/gcc/patches/9.3.0/870-ppc_no_crtsavres.patch
@@ -1,6 +1,6 @@
 --- a/gcc/config/rs6000/rs6000.c
 +++ b/gcc/config/rs6000/rs6000.c
-@@ -24365,7 +24365,7 @@ rs6000_savres_strategy (rs6000_stack_t *
+@@ -24474,7 +24474,7 @@ rs6000_savres_strategy (rs6000_stack_t *
    /* Define cutoff for using out-of-line functions to save registers.  */
    if (DEFAULT_ABI == ABI_V4 || TARGET_ELF)
      {
diff --git a/toolchain/gcc/patches/9.2.0/881-no_tm_section.patch b/toolchain/gcc/patches/9.3.0/881-no_tm_section.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/881-no_tm_section.patch
rename to toolchain/gcc/patches/9.3.0/881-no_tm_section.patch
diff --git a/toolchain/gcc/patches/9.2.0/900-bad-mips16-crt.patch b/toolchain/gcc/patches/9.3.0/900-bad-mips16-crt.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/900-bad-mips16-crt.patch
rename to toolchain/gcc/patches/9.3.0/900-bad-mips16-crt.patch
diff --git a/toolchain/gcc/patches/9.2.0/910-mbsd_multi.patch b/toolchain/gcc/patches/9.3.0/910-mbsd_multi.patch
similarity index 98%
rename from toolchain/gcc/patches/9.2.0/910-mbsd_multi.patch
rename to toolchain/gcc/patches/9.3.0/910-mbsd_multi.patch
index 3d47bf16ad9d..8908e7bfcf78 100644
--- a/toolchain/gcc/patches/9.2.0/910-mbsd_multi.patch
+++ b/toolchain/gcc/patches/9.3.0/910-mbsd_multi.patch
@@ -114,7 +114,7 @@ Date:   Tue Jul 31 00:52:27 2007 +0000
  ; On SVR4 targets, it also controls whether or not to emit a
 --- a/gcc/doc/invoke.texi
 +++ b/gcc/doc/invoke.texi
-@@ -7657,6 +7657,17 @@ This option is only supported for C and
+@@ -7666,6 +7666,17 @@ This option is only supported for C and
  @option{-Wall} and by @option{-Wpedantic}, which can be disabled with
  @option{-Wno-pointer-sign}.
  
diff --git a/toolchain/gcc/patches/9.2.0/920-specs_nonfatal_getenv.patch b/toolchain/gcc/patches/9.3.0/920-specs_nonfatal_getenv.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/920-specs_nonfatal_getenv.patch
rename to toolchain/gcc/patches/9.3.0/920-specs_nonfatal_getenv.patch
diff --git a/toolchain/gcc/patches/9.2.0/930-fix-mips-noexecstack.patch b/toolchain/gcc/patches/9.3.0/930-fix-mips-noexecstack.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/930-fix-mips-noexecstack.patch
rename to toolchain/gcc/patches/9.3.0/930-fix-mips-noexecstack.patch
diff --git a/toolchain/gcc/patches/9.2.0/931-libffi-fix-MIPS-softfloat-build-issue.patch b/toolchain/gcc/patches/9.3.0/931-libffi-fix-MIPS-softfloat-build-issue.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/931-libffi-fix-MIPS-softfloat-build-issue.patch
rename to toolchain/gcc/patches/9.3.0/931-libffi-fix-MIPS-softfloat-build-issue.patch
diff --git a/toolchain/gcc/patches/9.2.0/960-gotools-fix-compilation-when-making-cross-compiler.patch b/toolchain/gcc/patches/9.3.0/960-gotools-fix-compilation-when-making-cross-compiler.patch
similarity index 100%
rename from toolchain/gcc/patches/9.2.0/960-gotools-fix-compilation-when-making-cross-compiler.patch
rename to toolchain/gcc/patches/9.3.0/960-gotools-fix-compilation-when-making-cross-compiler.patch
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
