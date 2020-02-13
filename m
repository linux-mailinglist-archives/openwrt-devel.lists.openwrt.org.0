Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4807215BBA7
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 10:27:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEnLCSlj6cftb15FW9+X8/rlMAmWdO6PQFq7UbYcGcA=; b=tLyRqGt72LNd3J
	aZY5nNEeeEL6sv6DqbUwWyyGIbSLEhkh+d2KUI22+OhpSGe+caruCFxfvEtKaahz0skKdW3Kl15sn
	3ChTCXkeXPGPqH6AAzsef6FlYyvg+wpXqWIvntZ2SDGB+TP/IYla1ra4BfGj/QBRYcz5KvyENI3FH
	H1bNYW/0tNykketaZFMi6mi8Z771ZbNzyEy2np6stj6PYMHTFWT50TVBYVqIZ7xsxxvlXXFlsayd2
	wBMwckxClhZ07v+aBB4Q8pQw3tBtBgNEfUeex37iYsoxnD1YOWtFEKlb2QeCHvald4437QaGYG7sf
	0lPLgqNJFc52dYlDxIig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Am9-0000RI-Tv; Thu, 13 Feb 2020 09:27:13 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Am2-0000Qt-9B
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 09:27:07 +0000
Received: by mail-oi1-x244.google.com with SMTP id z2so5104910oih.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Feb 2020 01:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=51KaQvDtwT+PiPbY1Yk4HD2TtnE+elv2XtK/H3ikAEU=;
 b=Ebc5W5luKL7IT7u1lEhr1rnp6Of3jVq9cpTaweW3XbDbcXHI1bqitqeNuRiJK4/NnK
 o08mBOoD0tbfUz3pUBlKaB5tCFRh+b+dzMtK36ElxUvERpnpwt5xre7x0tKqUQyyVcbp
 n2fi1zH0E5yyyGTZLIOfdvrQNJdvBa+PyYLQs30eh9ezFxfReYtpk73S9W+lD8Q82UTS
 stVEfu/sX/C5knTyVzbPEkCWZ//ehPxpLnLCaM3v+ioke+qGX56LVz5wGXKHUqb8mrNT
 rLHee0ctlTB+K1CSnJYUymg+q1Jh2eNOQOye1XAnv3zG9IHriA1OhydAvtBi831EnkuE
 GxMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=51KaQvDtwT+PiPbY1Yk4HD2TtnE+elv2XtK/H3ikAEU=;
 b=VpTQpYvs0Ux5Gevfvgr3ugh47uZXvujeY3a17g8XzMo+6qTS/Pmr31aj42JT5BAqQu
 TqEQquCypu/iY+vkIMF3b738xBtmojY1PRGvDRmtJ0gSCUxaYDSglrOljG/qJ47kzR/q
 m/rWXy2DwMv1CkYO2OUn1vVNPnFFAmnzMoy4VMAqnIcE56onTnxkwOzS4ittAzXDM9S2
 5qVSY7uV8JgOahrLPDFPi6xtKHBRz1DJJN7Kz+8oFwLNjqzX5Yj2KoaenLOM2Feuhnpv
 iGO1OxpnmtqE8U+PcWeD0DRJ120iOUgP4CCCAuKcOmJ6+c/hbOt+pBQZTxmIe2nF9k5x
 /05w==
X-Gm-Message-State: APjAAAWVF/AnHa4goTgS9xwpZz+feivHIANXYWGtMxY0emnz++r4XcbC
 R98WHGSJmFoVjckX41xQdWHEG+JPji0oJ2zqPA0=
X-Google-Smtp-Source: APXvYqx74OWaiDkZ/x/hS8bJE3HD7BAjkwbpTMzQNtJRpcoSyK3RMzy+2J0donM+mOgwyw25K1bsjspRbs4FVKf9Y5s=
X-Received: by 2002:a05:6808:319:: with SMTP id
 i25mr2289642oie.128.1581586024570; 
 Thu, 13 Feb 2020 01:27:04 -0800 (PST)
MIME-Version: 1.0
References: <20200212104902.7779-1-hauke.mehrtens@intel.com>
In-Reply-To: <20200212104902.7779-1-hauke.mehrtens@intel.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Thu, 13 Feb 2020 11:29:37 +0200
Message-ID: <CA+U=Dsrnj6OcLMavcSLpYrTyLo4UPC0bwyq3VbD7WsFUUcWHLg@mail.gmail.com>
To: Hauke Mehrtens <hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_012706_353255_4CF6A59F 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ardeleanalex[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] build: Add option KERNEL_UBSAN
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
Cc: "openwrt-devel@lists.openwrt.org jogo@openwrt.org" <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Feb 12, 2020 at 12:49 PM Hauke Mehrtens
<hauke.mehrtens@intel.com> wrote:
>
> The kernel Undefined Behavior Sanitizer is able to detect some memory
> bugs in the kernel like out of range array accesses.
>

Did some basic testing for the series to see that the symbol gets
enabled in the final .config of the kernel.
Both 4.14 & 4.19 on x86_64

Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>

> Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
> ---
>  config/Config-kernel.in          | 35 ++++++++++++++++++++++++++++++++
>  target/linux/generic/config-4.14 |  4 ++++
>  target/linux/generic/config-4.19 |  3 +++
>  3 files changed, 42 insertions(+)
>
> diff --git a/config/Config-kernel.in b/config/Config-kernel.in
> index 20930326ca..bf1c1055f1 100644
> --- a/config/Config-kernel.in
> +++ b/config/Config-kernel.in
> @@ -85,6 +85,41 @@ config KERNEL_PROFILING
>           Enable the extended profiling support mechanisms used by profilers such
>           as OProfile.
>
> +config KERNEL_UBSAN
> +       bool "Compile the kernel with undefined behaviour sanity checker"
> +       help
> +         This option enables undefined behaviour sanity checker
> +         Compile-time instrumentation is used to detect various undefined
> +         behaviours in runtime. Various types of checks may be enabled
> +         via boot parameter ubsan_handle
> +         (see: Documentation/dev-tools/ubsan.rst).
> +
> +config KERNEL_UBSAN_SANITIZE_ALL
> +       bool "Enable instrumentation for the entire kernel"
> +       depends on KERNEL_UBSAN
> +       default y
> +       help
> +         This option activates instrumentation for the entire kernel.
> +         If you don't enable this option, you have to explicitly specify
> +         UBSAN_SANITIZE := y for the files/directories you want to check for UB.
> +         Enabling this option will get kernel image size increased
> +         significantly.
> +
> +config KERNEL_UBSAN_ALIGNMENT
> +       bool "Enable checking of pointers alignment"
> +       depends on KERNEL_UBSAN
> +       help
> +         This option enables detection of unaligned memory accesses.
> +         Enabling this option on architectures that support unaligned
> +         accesses may produce a lot of false positives.
> +
> +config KERNEL_UBSAN_NULL
> +       bool "Enable checking of null pointers"
> +       depends on KERNEL_UBSAN
> +       help
> +         This option enables detection of memory accesses via a
> +         null pointer.
> +
>  config KERNEL_TASKSTATS
>         bool "Compile the kernel with task resource/io statistics and accounting"
>         default n
> diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
> index 9681d9c278..73b0d77155 100644
> --- a/target/linux/generic/config-4.14
> +++ b/target/linux/generic/config-4.14
> @@ -1516,6 +1516,10 @@ CONFIG_GACT_PROB=y
>  # CONFIG_GAMEPORT is not set
>  # CONFIG_GATEWORKS_GW16083 is not set
>  # CONFIG_GCC_PLUGINS is not set
> +# CONFIG_GCC_PLUGIN_CYC_COMPLEXITY is not set
> +# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
> +# CONFIG_GCC_PLUGIN_RANDSTRUCT is not set
> +# CONFIG_GCC_PLUGIN_STRUCTLEAK is not set
>  # CONFIG_GCOV is not set
>  # CONFIG_GCOV_KERNEL is not set
>  # CONFIG_GDB_SCRIPTS is not set
> diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
> index d8ea243fc7..aba7bccaf6 100644
> --- a/target/linux/generic/config-4.19
> +++ b/target/linux/generic/config-4.19
> @@ -1605,6 +1605,8 @@ CONFIG_GACT_PROB=y
>  # CONFIG_GAMEPORT is not set
>  # CONFIG_GATEWORKS_GW16083 is not set
>  # CONFIG_GCC_PLUGINS is not set
> +# CONFIG_GCC_PLUGIN_CYC_COMPLEXITY is not set
> +# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
>  # CONFIG_GCOV is not set
>  # CONFIG_GCOV_KERNEL is not set
>  # CONFIG_GDB_SCRIPTS is not set
> @@ -5197,6 +5199,7 @@ CONFIG_TCP_CONG_CUBIC=y
>  # CONFIG_TEST_STATIC_KEYS is not set
>  # CONFIG_TEST_STRING_HELPERS is not set
>  # CONFIG_TEST_SYSCTL is not set
> +# CONFIG_TEST_UBSAN is not set
>  # CONFIG_TEST_UDELAY is not set
>  # CONFIG_TEST_USER_COPY is not set
>  # CONFIG_TEST_UUID is not set
> --
> 2.17.1
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
