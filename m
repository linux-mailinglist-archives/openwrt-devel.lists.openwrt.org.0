Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B0015CC7B
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 21:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Btb7HUz5RNuLCb/1sWdabPxNMWKahd7bOq4icEgfYE=; b=DwUY77Id/UWvTa
	8OUlQidpFw6aR9TvFsUGCLLYkxJRXuz5mWsg3zGwiUO8gkuaXBL4UzWRdNh15CX5Kv0RVcEVin79w
	9KHmMddA4KoYrWl6yDAHG4Ouxi+TPJkTzsFvWPEXNQNyVTCPG5oK682gmyoPKQCCOV+9dtZWMtXXe
	LeWXiN/B4OB+Hvw7eI6BZYYifb7LaO6zpUEePTX35NHhDE7l28YCWLnGLB73u6fQMOB53B950zPu7
	rAi95ij3O0ioxrscKSMTC33/WvRwC5yFMGBwmlqOSuJ4HlgnBw4mrqtVTZA2kL6s3xErp+efS7Idz
	bciH34Vb1XMLHi7FLe8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LJT-0004Ul-54; Thu, 13 Feb 2020 20:42:19 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LJL-0004U8-TS
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 20:42:13 +0000
Received: by mail-qt1-x843.google.com with SMTP id r5so5432431qtt.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Feb 2020 12:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iQIBjCyBdQYWqKVnBhOaUIkH2fR3htbi3jXO0GcYFgI=;
 b=RYVCh4KpmBW+21ye1UkuTX0Vi+Rc6b25HWxBTtEG6pdC98QLVxOdC1oG8YoTDaIOeT
 s+Y9yVRFWfX38cUuw2GliuQ6Rc4XhodjVJIdvA0asoJDlSP3jG6b62BBEDUbB8YBs3Dx
 5suUKxOmdCyc2UtWeDVEWhEAAfmEfmw+0OA9Sd86s206hcsAPjQScJXFScObr5Sjdwh5
 haO3huFC2pkZIZh3qqPZpieCt/XzQBNkM0RxeNEqzklukRKchT0JJQ7iOjAisb/qg28I
 lVxCfcSGlPcgDPFDwb4+2L4bFbLmb8tBroGlF2+XcTs1vGKdJUIPpktNspMID/j77tM+
 QSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iQIBjCyBdQYWqKVnBhOaUIkH2fR3htbi3jXO0GcYFgI=;
 b=DApPs8L3cVGIhzz8fOVGPKgiO66HF5Y21INyV1Aw+R+vZSNmQgHLhKVT1vnuF9JsbL
 cRCVfHaur8llhQvcYhsGb+R2ARxybloYsolT0z9pE9+0wRiFk06g+ldOlpnFhzqgga5N
 cb2gTT4AtwibWn3gIejeWUjPNu+kvu2iMjKDaYME1cGE6RZqTMYGQPcKT+uSZJCUQ/30
 UYMpa3GuxAHiIUpUsM+sijSkIX/ptGvUWolUKegDoa2LHz6oXOxp24mUO7523z+Vj7Sa
 0K2Nxiwnjv88iVKiO2rM+lBiIoiYcknm3I5GYhUhV3O0283IddaMK2k/RpKUJhaayIo5
 Dg5g==
X-Gm-Message-State: APjAAAVUoM8hREccgrHl0zk3+q5hmWSLGPFWMhVn8ZUkXUzlco3JXPTs
 GSuUZ/gPCA0q4O5/LKXaYghj93cYFXBv9bG8tQk23g==
X-Google-Smtp-Source: APXvYqxk+7IPjuw1ifWo3C/Sr1WF/N+PWJIkQwmayNaAYsKv2TFhOQR4XJu2mqXoZd/gce1feAVPvRhWwH1bcFrmBLA=
X-Received: by 2002:aed:2584:: with SMTP id x4mr13693199qtc.343.1581626527581; 
 Thu, 13 Feb 2020 12:42:07 -0800 (PST)
MIME-Version: 1.0
References: <20200212122301.15712-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20200212122301.15712-1-dengqf6@mail2.sysu.edu.cn>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 13 Feb 2020 21:41:55 +0100
Message-ID: <CAJLcKsH2Q6CSRHHOYPQRH=3y534Yx=VXTa47i6ztbjLbmebaHQ@mail.gmail.com>
To: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_124211_953500_277A4F54 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] iproute2: update to 5.5.0, enable LTO
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Feb 12, 2020 at 1:24 PM DENG Qingfang <dengqf6@mail2.sysu.edu.cn> wrote:
>
> Update iproute2 to 5.5.0
> Enable LTO to save several KB of size
>
> Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
Patch applied; thx

Hans
> ---
>  package/network/utils/iproute2/Makefile                |  8 ++++----
>  .../network/utils/iproute2/patches/100-configure.patch |  2 +-
>  .../iproute2/patches/115-add-config-xtlibdir.patch     |  2 +-
>  .../iproute2/patches/140-keep_libmnl_optional.patch    |  2 +-
>  .../iproute2/patches/145-keep_libelf_optional.patch    |  2 +-
>  .../iproute2/patches/150-keep_libcap_optional.patch    |  2 +-
>  .../iproute2/patches/175-reduce-dynamic-syms.patch     | 10 +++++-----
>  .../iproute2/patches/180-drop_FAILED_POLICY.patch      |  2 +-
>  .../iproute2/patches/200-drop_libbsd_dependency.patch  |  2 +-
>  9 files changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
> index d11a13facc..34b768a906 100644
> --- a/package/network/utils/iproute2/Makefile
> +++ b/package/network/utils/iproute2/Makefile
> @@ -8,12 +8,12 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=iproute2
> -PKG_VERSION:=5.4.0
> -PKG_RELEASE:=2
> +PKG_VERSION:=5.5.0
> +PKG_RELEASE:=1
>
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
>  PKG_SOURCE_URL:=@KERNEL/linux/utils/net/iproute2
> -PKG_HASH:=fe97aa60a0d4c5ac830be18937e18dc3400ca713a33a89ad896ff1e3d46086ae
> +PKG_HASH:=bac543435cac208a11db44c9cc8e35aa902befef8750594654ee71941c388f7b
>  PKG_BUILD_PARALLEL:=1
>  PKG_BUILD_DEPENDS:=iptables
>  PKG_LICENSE:=GPL-2.0
> @@ -121,7 +121,7 @@ define Build/Configure
>                 > $(PKG_BUILD_DIR)/include/SNAPSHOT.h
>  endef
>
> -TARGET_CFLAGS += -ffunction-sections -fdata-sections
> +TARGET_CFLAGS += -ffunction-sections -fdata-sections -flto
>  TARGET_LDFLAGS += -Wl,--gc-sections
>  TARGET_CPPFLAGS += -I$(STAGING_DIR)/usr/include/libnl-tiny
>
> diff --git a/package/network/utils/iproute2/patches/100-configure.patch b/package/network/utils/iproute2/patches/100-configure.patch
> index 248b1c0e01..0c19b2086a 100644
> --- a/package/network/utils/iproute2/patches/100-configure.patch
> +++ b/package/network/utils/iproute2/patches/100-configure.patch
> @@ -1,6 +1,6 @@
>  --- a/configure
>  +++ b/configure
> -@@ -32,7 +32,8 @@ int main(int argc, char **argv) {
> +@@ -34,7 +34,8 @@ int main(int argc, char **argv) {
>   }
>   EOF
>
> diff --git a/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch b/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch
> index 720a7ac1e9..fa5ab8b9af 100644
> --- a/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch
> +++ b/package/network/utils/iproute2/patches/115-add-config-xtlibdir.patch
> @@ -8,5 +8,5 @@
>  +      CFLAGS += -DXT_LIB_DIR=\"$(XT_LIB_DIR)\"
>  +endif
>
> - YACC := bison
>   LEX := flex
> + CFLAGS += -DYY_NO_INPUT
> diff --git a/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch b/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch
> index d255ae7b0e..20cd0766a1 100644
> --- a/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch
> +++ b/package/network/utils/iproute2/patches/140-keep_libmnl_optional.patch
> @@ -1,6 +1,6 @@
>  --- a/configure
>  +++ b/configure
> -@@ -255,7 +255,7 @@ check_selinux()
> +@@ -257,7 +257,7 @@ check_selinux()
>
>   check_mnl()
>   {
> diff --git a/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch b/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch
> index 2e3ad18809..d25c719f8e 100644
> --- a/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch
> +++ b/package/network/utils/iproute2/patches/145-keep_libelf_optional.patch
> @@ -1,6 +1,6 @@
>  --- a/configure
>  +++ b/configure
> -@@ -228,7 +228,7 @@ EOF
> +@@ -230,7 +230,7 @@ EOF
>
>   check_elf()
>   {
> diff --git a/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch b/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
> index 05336a737c..d15549e3d2 100644
> --- a/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
> +++ b/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
> @@ -1,6 +1,6 @@
>  --- a/configure
>  +++ b/configure
> -@@ -313,7 +313,7 @@ EOF
> +@@ -315,7 +315,7 @@ EOF
>
>   check_cap()
>   {
> diff --git a/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch b/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch
> index 0385bd737b..545b3c2c06 100644
> --- a/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch
> +++ b/package/network/utils/iproute2/patches/175-reduce-dynamic-syms.patch
> @@ -9,7 +9,7 @@
>   endif
>
>   TCLIB := tc_core.o
> -@@ -141,7 +141,7 @@ MODDESTDIR := $(DESTDIR)$(LIBDIR)/tc
> +@@ -140,7 +140,7 @@ MODDESTDIR := $(DESTDIR)$(LIBDIR)/tc
>   all: tc $(TCSO)
>
>   tc: $(TCOBJ) $(LIBNETLINK) libtc.a
> @@ -18,15 +18,15 @@
>
>   libtc.a: $(TCLIB)
>         $(QUIET_AR)$(AR) rcs $@ $^
> -@@ -163,6 +163,7 @@ install: all
> +@@ -162,6 +162,7 @@ install: all
>   clean:
> -       rm -f $(TCOBJ) $(TCLIB) libtc.a tc *.so emp_ematch.yacc.h; \
> -       rm -f emp_ematch.yacc.*
> +       rm -f $(TCOBJ) $(TCLIB) libtc.a tc *.so emp_ematch.tab.h; \
> +       rm -f emp_ematch.tab.*
>  +      rm -f dynsyms.list
>
>   q_atm.so: q_atm.c
>         $(QUIET_CC)$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -shared -fpic -o q_atm.so q_atm.c -latm
> -@@ -202,4 +203,15 @@ static-syms.h: $(wildcard *.c)
> +@@ -201,4 +202,15 @@ static-syms.h: $(wildcard *.c)
>                 sed -n '/'$$s'[^ ]* =/{s:.* \([^ ]*'$$s'[^ ]*\) .*:extern char \1[] __attribute__((weak)); if (!strcmp(sym, "\1")) return \1;:;p}' $$files ; \
>         done > $@
>
> diff --git a/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch b/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch
> index 449d4512fe..10c6b50b5d 100644
> --- a/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch
> +++ b/package/network/utils/iproute2/patches/180-drop_FAILED_POLICY.patch
> @@ -31,7 +31,7 @@ Subject: [PATCH] add support for dropping with FAILED_POLICY
>                 if (!end || end == arg || *end || res > 255)
>  --- a/include/uapi/linux/rtnetlink.h
>  +++ b/include/uapi/linux/rtnetlink.h
> -@@ -235,6 +235,7 @@ enum {
> +@@ -242,6 +242,7 @@ enum {
>         RTN_THROW,              /* Not in this table            */
>         RTN_NAT,                /* Translate this address       */
>         RTN_XRESOLVE,           /* Use external resolver        */
> diff --git a/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch b/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch
> index f6ec945297..0d3cbe8dfb 100644
> --- a/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch
> +++ b/package/network/utils/iproute2/patches/200-drop_libbsd_dependency.patch
> @@ -1,6 +1,6 @@
>  --- a/configure
>  +++ b/configure
> -@@ -299,14 +299,8 @@ EOF
> +@@ -301,14 +301,8 @@ EOF
>       if $CC -I$INCLUDE -o $TMPDIR/strtest $TMPDIR/strtest.c >/dev/null 2>&1; then
>         echo "no"
>       else
> --
> 2.25.0
>
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
