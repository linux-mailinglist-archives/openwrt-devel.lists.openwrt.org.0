Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AACE9FD2
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 16:56:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bqe1MZpVx+sYKakOQgGBScgHLnoScljw8LFqlECpLQI=; b=l02lNTdNkojrhJY8txZzkYGZL
	hcio84YJ9zJb2GeZljidVmUx57mqMVptOYZ1oVPqYogkteJ2qbIVymUjo9gpdRP3q8x5xTkoet3Hv
	Q77l0Nw0FehU+WncQKtsbgxupnXtVMXByfkMi3C3+HyAMPreN8089Dd6dkEBcVyzqJNmd5LnDXocj
	gOwiq8kgNNv6oBkdB/tDPn2AtHNjecSUt+5JY22pOeEjt6VAP7ulsoLqxmb0DAwSd+uKWFLDnBCHt
	+Hv73fiedTQf8bFxTkBULsMrW7X1wn/kGflcCV5CYYo+t1txtuUgwOsvlLSgWE63QhFrppD7TbPmn
	ZJ0HkAsXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqL2-0005r6-V9; Wed, 30 Oct 2019 15:56:48 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqKq-0005pw-8o
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 15:56:38 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 473CWX6rTjzKn7n;
 Wed, 30 Oct 2019 16:47:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id E1_2kdiQz3ay; Wed, 30 Oct 2019 16:47:16 +0100 (CET)
To: daxiong <lxliu@ikuai8.com>, openwrt-devel@lists.openwrt.org
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>
Date: Wed, 30 Oct 2019 16:47:01 +0100
MIME-Version: 1.0
In-Reply-To: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_085636_624288_A917E78E 
X-CRM114-Status: GOOD (  27.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
Subject: Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
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
Content-Type: multipart/mixed; boundary="===============5964028715276634524=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5964028715276634524==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="b4NytTlEuW7JayvkNpiOvsGOj6DShpAGz"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--b4NytTlEuW7JayvkNpiOvsGOj6DShpAGz
Content-Type: multipart/mixed; boundary="9a6cEuwL1YWq03rHAKRvzJDbdP7q3eWiv";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: daxiong <lxliu@ikuai8.com>, openwrt-devel@lists.openwrt.org
Message-ID: <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>
In-Reply-To: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>

--9a6cEuwL1YWq03rHAKRvzJDbdP7q3eWiv
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/30/19 11:14 AM, daxiong wrote:
> Current modpost cannot reduce the module size.
>=20
> Use $(STRIP) command to replace the modpost patch,
> I think to be compatibility will be better.
>=20
> Signed-off-by: daxiong <lxliu@ikuai8.com>

Please base this against master, then we can backport it to 19.07.

Could you please elaborate a little bit more how module-strip provides
better results than the previous patch? It would be nice if you could
also provide some numbers to compare the previous size and the current si=
ze.

Would it make sense to do both together, what was done in this patch
before and after your change?

Hauke

> ---
>  .../linux/generic/hack-4.14/204-module_strip.patch | 216 +++----------=
--------
>  1 file changed, 24 insertions(+), 192 deletions(-)
>=20
> diff --git a/target/linux/generic/hack-4.14/204-module_strip.patch b/ta=
rget/linux/generic/hack-4.14/204-module_strip.patch
> index d847adf..c22a507 100644
> --- a/target/linux/generic/hack-4.14/204-module_strip.patch
> +++ b/target/linux/generic/hack-4.14/204-module_strip.patch
> @@ -1,104 +1,8 @@
> -From a779a482fb9b9f8fcdf8b2519c789b4b9bb5dd05 Mon Sep 17 00:00:00 2001=

> -From: Felix Fietkau <nbd@nbd.name>
> -Date: Fri, 7 Jul 2017 16:56:48 +0200
> -Subject: build: add a hack for removing non-essential module info
> -
> -Signed-off-by: Felix Fietkau <nbd@nbd.name>
> ----
> - include/linux/module.h      | 13 ++++++++-----
> - include/linux/moduleparam.h | 15 ++++++++++++---
> - init/Kconfig                |  7 +++++++
> - kernel/module.c             |  5 ++++-
> - scripts/mod/modpost.c       | 12 ++++++++++++
> - 5 files changed, 43 insertions(+), 9 deletions(-)
> -
> ---- a/include/linux/module.h
> -+++ b/include/linux/module.h
> -@@ -158,6 +158,7 @@ extern void cleanup_module(void);
> -=20
> - /* Generic info of form tag =3D "info" */
> - #define MODULE_INFO(tag, info) __MODULE_INFO(tag, tag, info)
> -+#define MODULE_INFO_STRIP(tag, info) __MODULE_INFO_STRIP(tag, tag, in=
fo)
> -=20
> - /* For userspace: you can also call me... */
> - #define MODULE_ALIAS(_alias) MODULE_INFO(alias, _alias)
> -@@ -201,12 +202,12 @@ extern void cleanup_module(void);
> -  * Author(s), use "Name <email>" or just "Name", for multiple
> -  * authors use multiple MODULE_AUTHOR() statements/lines.
> -  */
> --#define MODULE_AUTHOR(_author) MODULE_INFO(author, _author)
> -+#define MODULE_AUTHOR(_author) MODULE_INFO_STRIP(author, _author)
> -=20
> - /* What your module does. */
> --#define MODULE_DESCRIPTION(_description) MODULE_INFO(description, _de=
scription)
> -+#define MODULE_DESCRIPTION(_description) MODULE_INFO_STRIP(descriptio=
n, _description)
> -=20
> --#ifdef MODULE
> -+#if defined(MODULE) && !defined(CONFIG_MODULE_STRIPPED)
> - /* Creates an alias so file2alias.c can find device table. */
> - #define MODULE_DEVICE_TABLE(type, name)					\
> - extern typeof(name) __mod_##type##__##name##_device_table		\
> -@@ -233,7 +234,9 @@ extern typeof(name) __mod_##type##__##na
> -  */
> -=20
> - #if defined(MODULE) || !defined(CONFIG_SYSFS)
> --#define MODULE_VERSION(_version) MODULE_INFO(version, _version)
> -+#define MODULE_VERSION(_version) MODULE_INFO_STRIP(version, _version)=

> -+#elif defined(CONFIG_MODULE_STRIPPED)
> -+#define MODULE_VERSION(_version) __MODULE_INFO_DISABLED(version)
> - #else
> - #define MODULE_VERSION(_version)					\
> - 	static struct module_version_attribute ___modver_attr =3D {	\
> -@@ -255,7 +258,7 @@ extern typeof(name) __mod_##type##__##na
> - /* Optional firmware file (or files) needed by the module
> -  * format is simply firmware file name.  Multiple firmware
> -  * files require multiple MODULE_FIRMWARE() specifiers */
> --#define MODULE_FIRMWARE(_firmware) MODULE_INFO(firmware, _firmware)
> -+#define MODULE_FIRMWARE(_firmware) MODULE_INFO_STRIP(firmware, _firmw=
are)
> -=20
> - struct notifier_block;
> -=20
> ---- a/include/linux/moduleparam.h
> -+++ b/include/linux/moduleparam.h
> -@@ -17,6 +17,16 @@
> - /* Chosen so that structs with an unsigned long line up. */
> - #define MAX_PARAM_PREFIX_LEN (64 - sizeof(unsigned long))
> -=20
> -+/* This struct is here for syntactic coherency, it is not used */
> -+#define __MODULE_INFO_DISABLED(name)					  \
> -+  struct __UNIQUE_ID(name) {}
> -+
> -+#ifdef CONFIG_MODULE_STRIPPED
> -+#define __MODULE_INFO_STRIP(tag, name, info) __MODULE_INFO_DISABLED(n=
ame)
> -+#else
> -+#define __MODULE_INFO_STRIP(tag, name, info) __MODULE_INFO(tag, name,=
 info)
> -+#endif
> -+
> - #ifdef MODULE
> - #define __MODULE_INFO(tag, name, info)					  \
> - static const char __UNIQUE_ID(name)[]					  \
> -@@ -24,8 +34,7 @@ static const char __UNIQUE_ID(name)[]
> -   =3D __stringify(tag) "=3D" info
> - #else  /* !MODULE */
> - /* This struct is here for syntactic coherency, it is not used */
> --#define __MODULE_INFO(tag, name, info)					  \
> --  struct __UNIQUE_ID(name) {}
> -+#define __MODULE_INFO(tag, name, info) __MODULE_INFO_DISABLED(name)
> - #endif
> - #define __MODULE_PARM_TYPE(name, _type)					  \
> -   __MODULE_INFO(parmtype, name##type, #name ":" _type)
> -@@ -33,7 +42,7 @@ static const char __UNIQUE_ID(name)[]
> - /* One for each parameter, describing how to use it.  Some files do
> -    multiple of these per line, so can't just use MODULE_INFO. */
> - #define MODULE_PARM_DESC(_parm, desc) \
> --	__MODULE_INFO(parm, _parm, #_parm ":" desc)
> -+	__MODULE_INFO_STRIP(parm, _parm, #_parm ":" desc)
> -=20
> - struct kernel_param;
> -=20
> +diff --git a/init/Kconfig b/init/Kconfig
> +index 4607532..cba0f81 100644
>  --- a/init/Kconfig
>  +++ b/init/Kconfig
> -@@ -1903,6 +1903,13 @@ config TRIM_UNUSED_KSYMS
> +@@ -1883,6 +1883,13 @@ config TRIM_UNUSED_KSYMS
>  =20
>   	  If unsure, or if you need to build out-of-tree modules, say N.
>  =20
> @@ -112,97 +16,25 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
>   endif # MODULES
>  =20
>   config MODULES_TREE_LOOKUP
> ---- a/kernel/module.c
> -+++ b/kernel/module.c
> -@@ -3020,9 +3020,11 @@ static struct module *setup_load_info(st
> -=20
> - static int check_modinfo(struct module *mod, struct load_info *info, =
int flags)
> - {
> --	const char *modmagic =3D get_modinfo(info, "vermagic");
> - 	int err;
> -=20
> -+#ifndef CONFIG_MODULE_STRIPPED
> -+	const char *modmagic =3D get_modinfo(info, "vermagic");
> +diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> +index a33fa1a..34b34e0 100644
> +--- a/scripts/Kbuild.include
> ++++ b/scripts/Kbuild.include
> +@@ -260,11 +260,16 @@ make-cmd =3D $(call escsq,$(subst $(pound),$$(po=
und),$(subst $$,$$$$,$(cmd_$(1))))
> + # PHONY targets skipped in both cases.
> + any-prereq =3D $(filter-out $(PHONY),$?) $(filter-out $(PHONY) $(wild=
card $^),$^)
> +=20
> ++ifeq ($(CONFIG_MODULE_STRIPPED),y)
> ++	module-strip =3D s=3D$@; if [ "$${s//*.}" =3D "ko" ];then $(STRIP) -=
g -S -d --strip-unneeded $@ ;fi
> ++endif
>  +
> - 	if (flags & MODULE_INIT_IGNORE_VERMAGIC)
> - 		modmagic =3D NULL;
> -=20
> -@@ -3043,6 +3045,7 @@ static int check_modinfo(struct module *
> - 				mod->name);
> - 		add_taint_module(mod, TAINT_OOT_MODULE, LOCKDEP_STILL_OK);
> - 	}
> -+#endif
> -=20
> - 	check_modinfo_retpoline(mod, info);
> -=20
> ---- a/scripts/mod/modpost.c
> -+++ b/scripts/mod/modpost.c
> -@@ -1984,7 +1984,9 @@ static void read_symbols(char *modname)
> - 		symname =3D remove_dot(info.strtab + sym->st_name);
> -=20
> - 		handle_modversions(mod, &info, sym, symname);
> -+#ifndef CONFIG_MODULE_STRIPPED
> - 		handle_moddevtable(mod, &info, sym, symname);
> -+#endif
> - 	}
> - 	if (!is_vmlinux(modname) ||
> - 	     (is_vmlinux(modname) && vmlinux_section_warnings))
> -@@ -2145,8 +2147,10 @@ static void add_header(struct buffer *b,
> - 	buf_printf(b, "#include <linux/vermagic.h>\n");
> - 	buf_printf(b, "#include <linux/compiler.h>\n");
> - 	buf_printf(b, "\n");
> -+#ifndef CONFIG_MODULE_STRIPPED
> - 	buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
> - 	buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
> -+#endif
> - 	buf_printf(b, "\n");
> - 	buf_printf(b, "__visible struct module __this_module\n");
> - 	buf_printf(b, "__attribute__((section(\".gnu.linkonce.this_module\")=
)) =3D {\n");
> -@@ -2163,8 +2167,10 @@ static void add_header(struct buffer *b,
> -=20
> - static void add_intree_flag(struct buffer *b, int is_intree)
> - {
> -+#ifndef CONFIG_MODULE_STRIPPED
> - 	if (is_intree)
> - 		buf_printf(b, "\nMODULE_INFO(intree, \"Y\");\n");
> -+#endif
> - }
> -=20
> - /* Cannot check for assembler */
> -@@ -2177,10 +2183,12 @@ static void add_retpoline(struct buffer
> -=20
> - static void add_staging_flag(struct buffer *b, const char *name)
> - {
> -+#ifndef CONFIG_MODULE_STRIPPED
> - 	static const char *staging_dir =3D "drivers/staging";
> -=20
> - 	if (strncmp(staging_dir, name, strlen(staging_dir)) =3D=3D 0)
> - 		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
> -+#endif
> - }
> -=20
> - /**
> -@@ -2279,11 +2287,13 @@ static void add_depends(struct buffer *b
> -=20
> - static void add_srcversion(struct buffer *b, struct module *mod)
> - {
> -+#ifndef CONFIG_MODULE_STRIPPED
> - 	if (mod->srcversion[0]) {
> - 		buf_printf(b, "\n");
> - 		buf_printf(b, "MODULE_INFO(srcversion, \"%s\");\n",
> - 			   mod->srcversion);
> - 	}
> -+#endif
> - }
> -=20
> - static void write_if_changed(struct buffer *b, const char *fname)
> -@@ -2520,7 +2530,9 @@ int main(int argc, char **argv)
> - 		add_staging_flag(&buf, mod->name);
> - 		err |=3D add_versions(&buf, mod);
> - 		add_depends(&buf, mod, modules);
> -+#ifndef CONFIG_MODULE_STRIPPED
> - 		add_moddevtable(&buf, mod);
> -+#endif
> - 		add_srcversion(&buf, mod);
> -=20
> - 		sprintf(fname, "%s.mod.c", mod->name);
> + # Execute command if command has changed or prerequisite(s) are updat=
ed.
> + if_changed =3D $(if $(strip $(any-prereq) $(arg-check)),             =
          \
> + 	@set -e;                                                            =
 \
> + 	$(echo-cmd) $(cmd_$(1));                                            =
 \
> +-	printf '%s\n' 'cmd_$@ :=3D $(make-cmd)' > $(dot-target).cmd, @:)
> ++	printf '%s\n' 'cmd_$@ :=3D $(make-cmd)' > $(dot-target).cmd, @:);   =
   \
> ++	$(module-strip)
> +=20
> + # Execute the command and also postprocess generated .d dependencies =
file.
> + if_changed_dep =3D $(if $(strip $(any-prereq) $(arg-check) ),        =
          \
>=20



--9a6cEuwL1YWq03rHAKRvzJDbdP7q3eWiv--

--b4NytTlEuW7JayvkNpiOvsGOj6DShpAGz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl25sHUACgkQ8bdnhZyy
68c/lAgAvMQoyW/RlvSWB7UWh/TeK+BjFxKdL80GeSI8Cnmxqse8p87BFPd6GiDZ
ZahDbVQnbsFWeOmmZCcB5rMJiyx3XvVC98OXsGNOCddRpakwC38oJMfiR6hZf/4P
PKkVY03qi/wY8G5trJk+gJXxfoNFPsHuzEarnpSccFqZkrXej4NjOSk7x+3ibYUu
V5IqyOY2tpgVQUNRJGn4bDtAkIIYzshlmf9zBOcIaZO0ESVGCAMNF6nU9AAG93ER
AvACtnpYbkEmGQfUWH/7aVYlDFMe7tD46ggXBkonY0X/azkfF7MT6jgQsItwOjt1
98XjO0K1xa2LYmCsSg8i1J3y6WTLBA==
=8JzY
-----END PGP SIGNATURE-----

--b4NytTlEuW7JayvkNpiOvsGOj6DShpAGz--


--===============5964028715276634524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5964028715276634524==--

