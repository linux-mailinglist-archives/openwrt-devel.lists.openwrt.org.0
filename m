Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43AFE99D4
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 11:16:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ublRSrl3x1ZbpAmfZW60gpGPr5GY4s9L+b3a1tJ2KZw=; b=DtN9s6eb/+WWMs
	IQrU9BNRspiQf/kZAlFaXYXKAKWGhYymtyVl1BWkzpEdNLUXCwfzFnnc2+D9Kequ/DEC4TzlscIUz
	waWTDTLEmKjzAViL8UpfaPlE/XmSzA6BwyOCU2soVhPRY51R5QlxFqoDFwpnhcHOLLUmYd71PU8a7
	j3sjHWARkbigmo6KizkIDEwuZa7ZMEK0FlVQdMQ2n/sDb78gy6KuaGMow7nn8HvxXQUYwM62dJrNU
	GrYOMOnc6L7tMaTtZzV8nIqiU1Ibj2y9Yt3sunSzqpU2MfodXCn5EwMDzy2zCq2+b/9aOpyAM36PD
	sqmzGck1Qmg90B3tJMUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPl1q-0003Xk-HZ; Wed, 30 Oct 2019 10:16:38 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPl1k-0003XS-UT
 for openwrt-devel@bombadil.infradead.org; Wed, 30 Oct 2019 10:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jjQCFG/XnD601wJK13kEUvTSAYD8wMEQviaXdb7hdRA=; b=N5fLskIoNcFzhJByHQSPEpcdqE
 p3Z2xi72ge7HgB4Ii4OzkaJ8hYtK0rC8E8UOrtkc//W15R5Zxr9mEs37h1DKJHaYcWpjTLtgqGayg
 Kb7zY2n20XoY22CLKZBnD7cY5vz34GTC5wHXWl37ktegvEdHAh7+OXoeyEM/vTFeoysmiLzGVZ2C9
 bt/VcVMGWCdlHiLjcvnUyc46zxhwgxijTI35Vai3/U9uBn0kclTNGL9HjE5KmwDeBKS27uJOQm2pX
 RRM28tyy+PyLwQEVAw3cBbrXuT1aWOPo5+xc65RuQG8ivqqnKAelT9TnavABOc5iVzjUPVRgVEa49
 TS4BDApw==;
Received: from smtpbgsg3.qq.com ([54.179.177.220])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPl1h-0007YI-Sg
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 10:16:31 +0000
X-QQ-mid: bizesmtp23t1572430482t4cj9080
Received: from localhost.localdomain (unknown [114.241.221.120])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 18:14:41 +0800 (CST)
X-QQ-SSF: 01400000002000S0II40000A0000000
X-QQ-FEAT: OeAA/fa3FjUgx39r6AgIw0pFwjhiHaxsKkR2EAiNeJ6UyZpyFOg5p73J1BULh
 X4ZqLkVdbxcau1TVQUtB814NutVwidIOLg2DWdcUA8WwMY52lK9ormBsH4jiXNFNDI/cPEC
 yNtG2dyca3GuwccZyG81S7ZiNmFYp5f2jBYNxRht4ggxsdREEDmRd/5HQy1OiOCPJCyODiO
 e7ZUR6mjoaXUDKVmVtP8dPoCvbe9PnAph6jix9W1l59VsdwbwwwamN6OL7EVVMz7dLMPW4d
 UIUyfTh/yLVOWmgSqBM3nvMYjHHd6b/7dY/dEpZaLcV9vALNGs59vtPFdsvb/AKqs3SHtaw
 6+L3bswDsWI46joRO0=
X-QQ-GoodBg: 2
From: daxiong <lxliu@ikuai8.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 30 Oct 2019 18:14:39 +0800
Message-Id: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>
X-Mailer: git-send-email 1.9.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.179.177.220 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.179.177.220 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Current modpost cannot reduce the module size.

Use $(STRIP) command to replace the modpost patch,
I think to be compatibility will be better.

Signed-off-by: daxiong <lxliu@ikuai8.com>
---
 .../linux/generic/hack-4.14/204-module_strip.patch | 216 +++------------------
 1 file changed, 24 insertions(+), 192 deletions(-)

diff --git a/target/linux/generic/hack-4.14/204-module_strip.patch b/target/linux/generic/hack-4.14/204-module_strip.patch
index d847adf..c22a507 100644
--- a/target/linux/generic/hack-4.14/204-module_strip.patch
+++ b/target/linux/generic/hack-4.14/204-module_strip.patch
@@ -1,104 +1,8 @@
-From a779a482fb9b9f8fcdf8b2519c789b4b9bb5dd05 Mon Sep 17 00:00:00 2001
-From: Felix Fietkau <nbd@nbd.name>
-Date: Fri, 7 Jul 2017 16:56:48 +0200
-Subject: build: add a hack for removing non-essential module info
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
----
- include/linux/module.h      | 13 ++++++++-----
- include/linux/moduleparam.h | 15 ++++++++++++---
- init/Kconfig                |  7 +++++++
- kernel/module.c             |  5 ++++-
- scripts/mod/modpost.c       | 12 ++++++++++++
- 5 files changed, 43 insertions(+), 9 deletions(-)
-
---- a/include/linux/module.h
-+++ b/include/linux/module.h
-@@ -158,6 +158,7 @@ extern void cleanup_module(void);
- 
- /* Generic info of form tag = "info" */
- #define MODULE_INFO(tag, info) __MODULE_INFO(tag, tag, info)
-+#define MODULE_INFO_STRIP(tag, info) __MODULE_INFO_STRIP(tag, tag, info)
- 
- /* For userspace: you can also call me... */
- #define MODULE_ALIAS(_alias) MODULE_INFO(alias, _alias)
-@@ -201,12 +202,12 @@ extern void cleanup_module(void);
-  * Author(s), use "Name <email>" or just "Name", for multiple
-  * authors use multiple MODULE_AUTHOR() statements/lines.
-  */
--#define MODULE_AUTHOR(_author) MODULE_INFO(author, _author)
-+#define MODULE_AUTHOR(_author) MODULE_INFO_STRIP(author, _author)
- 
- /* What your module does. */
--#define MODULE_DESCRIPTION(_description) MODULE_INFO(description, _description)
-+#define MODULE_DESCRIPTION(_description) MODULE_INFO_STRIP(description, _description)
- 
--#ifdef MODULE
-+#if defined(MODULE) && !defined(CONFIG_MODULE_STRIPPED)
- /* Creates an alias so file2alias.c can find device table. */
- #define MODULE_DEVICE_TABLE(type, name)					\
- extern typeof(name) __mod_##type##__##name##_device_table		\
-@@ -233,7 +234,9 @@ extern typeof(name) __mod_##type##__##na
-  */
- 
- #if defined(MODULE) || !defined(CONFIG_SYSFS)
--#define MODULE_VERSION(_version) MODULE_INFO(version, _version)
-+#define MODULE_VERSION(_version) MODULE_INFO_STRIP(version, _version)
-+#elif defined(CONFIG_MODULE_STRIPPED)
-+#define MODULE_VERSION(_version) __MODULE_INFO_DISABLED(version)
- #else
- #define MODULE_VERSION(_version)					\
- 	static struct module_version_attribute ___modver_attr = {	\
-@@ -255,7 +258,7 @@ extern typeof(name) __mod_##type##__##na
- /* Optional firmware file (or files) needed by the module
-  * format is simply firmware file name.  Multiple firmware
-  * files require multiple MODULE_FIRMWARE() specifiers */
--#define MODULE_FIRMWARE(_firmware) MODULE_INFO(firmware, _firmware)
-+#define MODULE_FIRMWARE(_firmware) MODULE_INFO_STRIP(firmware, _firmware)
- 
- struct notifier_block;
- 
---- a/include/linux/moduleparam.h
-+++ b/include/linux/moduleparam.h
-@@ -17,6 +17,16 @@
- /* Chosen so that structs with an unsigned long line up. */
- #define MAX_PARAM_PREFIX_LEN (64 - sizeof(unsigned long))
- 
-+/* This struct is here for syntactic coherency, it is not used */
-+#define __MODULE_INFO_DISABLED(name)					  \
-+  struct __UNIQUE_ID(name) {}
-+
-+#ifdef CONFIG_MODULE_STRIPPED
-+#define __MODULE_INFO_STRIP(tag, name, info) __MODULE_INFO_DISABLED(name)
-+#else
-+#define __MODULE_INFO_STRIP(tag, name, info) __MODULE_INFO(tag, name, info)
-+#endif
-+
- #ifdef MODULE
- #define __MODULE_INFO(tag, name, info)					  \
- static const char __UNIQUE_ID(name)[]					  \
-@@ -24,8 +34,7 @@ static const char __UNIQUE_ID(name)[]
-   = __stringify(tag) "=" info
- #else  /* !MODULE */
- /* This struct is here for syntactic coherency, it is not used */
--#define __MODULE_INFO(tag, name, info)					  \
--  struct __UNIQUE_ID(name) {}
-+#define __MODULE_INFO(tag, name, info) __MODULE_INFO_DISABLED(name)
- #endif
- #define __MODULE_PARM_TYPE(name, _type)					  \
-   __MODULE_INFO(parmtype, name##type, #name ":" _type)
-@@ -33,7 +42,7 @@ static const char __UNIQUE_ID(name)[]
- /* One for each parameter, describing how to use it.  Some files do
-    multiple of these per line, so can't just use MODULE_INFO. */
- #define MODULE_PARM_DESC(_parm, desc) \
--	__MODULE_INFO(parm, _parm, #_parm ":" desc)
-+	__MODULE_INFO_STRIP(parm, _parm, #_parm ":" desc)
- 
- struct kernel_param;
- 
+diff --git a/init/Kconfig b/init/Kconfig
+index 4607532..cba0f81 100644
 --- a/init/Kconfig
 +++ b/init/Kconfig
-@@ -1903,6 +1903,13 @@ config TRIM_UNUSED_KSYMS
+@@ -1883,6 +1883,13 @@ config TRIM_UNUSED_KSYMS
  
  	  If unsure, or if you need to build out-of-tree modules, say N.
  
@@ -112,97 +16,25 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  endif # MODULES
  
  config MODULES_TREE_LOOKUP
---- a/kernel/module.c
-+++ b/kernel/module.c
-@@ -3020,9 +3020,11 @@ static struct module *setup_load_info(st
- 
- static int check_modinfo(struct module *mod, struct load_info *info, int flags)
- {
--	const char *modmagic = get_modinfo(info, "vermagic");
- 	int err;
- 
-+#ifndef CONFIG_MODULE_STRIPPED
-+	const char *modmagic = get_modinfo(info, "vermagic");
+diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
+index a33fa1a..34b34e0 100644
+--- a/scripts/Kbuild.include
++++ b/scripts/Kbuild.include
+@@ -260,11 +260,16 @@ make-cmd = $(call escsq,$(subst $(pound),$$(pound),$(subst $$,$$$$,$(cmd_$(1))))
+ # PHONY targets skipped in both cases.
+ any-prereq = $(filter-out $(PHONY),$?) $(filter-out $(PHONY) $(wildcard $^),$^)
+ 
++ifeq ($(CONFIG_MODULE_STRIPPED),y)
++	module-strip = s=$@; if [ "$${s//*.}" = "ko" ];then $(STRIP) -g -S -d --strip-unneeded $@ ;fi
++endif
 +
- 	if (flags & MODULE_INIT_IGNORE_VERMAGIC)
- 		modmagic = NULL;
- 
-@@ -3043,6 +3045,7 @@ static int check_modinfo(struct module *
- 				mod->name);
- 		add_taint_module(mod, TAINT_OOT_MODULE, LOCKDEP_STILL_OK);
- 	}
-+#endif
- 
- 	check_modinfo_retpoline(mod, info);
- 
---- a/scripts/mod/modpost.c
-+++ b/scripts/mod/modpost.c
-@@ -1984,7 +1984,9 @@ static void read_symbols(char *modname)
- 		symname = remove_dot(info.strtab + sym->st_name);
- 
- 		handle_modversions(mod, &info, sym, symname);
-+#ifndef CONFIG_MODULE_STRIPPED
- 		handle_moddevtable(mod, &info, sym, symname);
-+#endif
- 	}
- 	if (!is_vmlinux(modname) ||
- 	     (is_vmlinux(modname) && vmlinux_section_warnings))
-@@ -2145,8 +2147,10 @@ static void add_header(struct buffer *b,
- 	buf_printf(b, "#include <linux/vermagic.h>\n");
- 	buf_printf(b, "#include <linux/compiler.h>\n");
- 	buf_printf(b, "\n");
-+#ifndef CONFIG_MODULE_STRIPPED
- 	buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
- 	buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
-+#endif
- 	buf_printf(b, "\n");
- 	buf_printf(b, "__visible struct module __this_module\n");
- 	buf_printf(b, "__attribute__((section(\".gnu.linkonce.this_module\"))) = {\n");
-@@ -2163,8 +2167,10 @@ static void add_header(struct buffer *b,
- 
- static void add_intree_flag(struct buffer *b, int is_intree)
- {
-+#ifndef CONFIG_MODULE_STRIPPED
- 	if (is_intree)
- 		buf_printf(b, "\nMODULE_INFO(intree, \"Y\");\n");
-+#endif
- }
- 
- /* Cannot check for assembler */
-@@ -2177,10 +2183,12 @@ static void add_retpoline(struct buffer
- 
- static void add_staging_flag(struct buffer *b, const char *name)
- {
-+#ifndef CONFIG_MODULE_STRIPPED
- 	static const char *staging_dir = "drivers/staging";
- 
- 	if (strncmp(staging_dir, name, strlen(staging_dir)) == 0)
- 		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
-+#endif
- }
- 
- /**
-@@ -2279,11 +2287,13 @@ static void add_depends(struct buffer *b
- 
- static void add_srcversion(struct buffer *b, struct module *mod)
- {
-+#ifndef CONFIG_MODULE_STRIPPED
- 	if (mod->srcversion[0]) {
- 		buf_printf(b, "\n");
- 		buf_printf(b, "MODULE_INFO(srcversion, \"%s\");\n",
- 			   mod->srcversion);
- 	}
-+#endif
- }
- 
- static void write_if_changed(struct buffer *b, const char *fname)
-@@ -2520,7 +2530,9 @@ int main(int argc, char **argv)
- 		add_staging_flag(&buf, mod->name);
- 		err |= add_versions(&buf, mod);
- 		add_depends(&buf, mod, modules);
-+#ifndef CONFIG_MODULE_STRIPPED
- 		add_moddevtable(&buf, mod);
-+#endif
- 		add_srcversion(&buf, mod);
- 
- 		sprintf(fname, "%s.mod.c", mod->name);
+ # Execute command if command has changed or prerequisite(s) are updated.
+ if_changed = $(if $(strip $(any-prereq) $(arg-check)),                       \
+ 	@set -e;                                                             \
+ 	$(echo-cmd) $(cmd_$(1));                                             \
+-	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:)
++	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:);      \
++	$(module-strip)
+ 
+ # Execute the command and also postprocess generated .d dependencies file.
+ if_changed_dep = $(if $(strip $(any-prereq) $(arg-check) ),                  \
-- 
1.9.1





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
