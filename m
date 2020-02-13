Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BA815BBA8
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 10:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U05U2L/1WZSMfe+0tesiEsH537yP+PIC12z2QHQD4/4=; b=BG/MaV+eFB0/vT
	RS+ksimCG81nlAcyJ2BbMfavzoJ/exvk1Za7y5fp52fVql2kbrCrJ4mNte5RnpS0ueJhTv70Qr1de
	mtn4mJwtKom47UEy7vcz7+T1vA21jxXZ2YnURwF6IGzhJtoRfTAI0ouTJ8kUqkl707GN1JY46x7cM
	idqStD6I4HT/JiPB3Ey/YIM+1c5ZyhG2v7Gq079lb4ANaGsIvHjJL/f+M2YbDUVstBF0OJ70qx+Xr
	HWNGouLdBCec2hTddkCGoeJJ/0gCBgJjH0hDubwlJRAWaEy5SD9gCob4LeEwVPJQYBgvw5nUXeMOD
	YkH2ZdBNP6KqOykJQpLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2AmQ-0000ev-LG; Thu, 13 Feb 2020 09:27:30 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AmH-0000dN-Bg
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 09:27:22 +0000
Received: by mail-ot1-x343.google.com with SMTP id r27so4910445otc.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Feb 2020 01:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xhr8dRtDp1pQZvh7fP2ButE9wC6qrVE/F3Jh4iWs7aQ=;
 b=EJMWvHuo/tZDxEPl0TSIPUYU+kt91VzZ3AQpLQOwJJoiaW9D+0HpyBzaBbblGanph9
 lBYjVPzTrbChwOTbPgS2sv0dfVYN0qD6MBCil+HZfIgOTUfoB3K4rQxB1BZRl0HFqSEu
 nSXX+l4jUvNe0n5Qr7FklcQRKp/P9UXa0RUB7eHgifPNdDl4dm1zILGRgQnsuA9lPPq0
 wqd0I3ZfMgo7wMbVGUb8ucxeZqB7tAvWU+8UcoxeKzEatk5sWwhcjrDDFCeQJjSxng97
 0kVqN/5Mg/T0U/0CiRjl6MuGFA/ufTKjlo70UhksOe2aulSk/UIJWdXjiVGBlvQ1IMaA
 RQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xhr8dRtDp1pQZvh7fP2ButE9wC6qrVE/F3Jh4iWs7aQ=;
 b=SaSEscXYAKjl7I7+Vmt2PnfHSz45sQSrGPaeO/v2tziZxN+NCiKCeelIx3N32LNGHW
 oFq+tF10HEGhxYFzOW8hjSD2CqXGr5ax3uO7x7m9/xzWuDTBzZBZ5mkCiYNJl2DmQ5dp
 zsz7isQXBVIjFQbnzknlIBCQzultcjhA3t7L08ju/MStVwhA6QMRMghN2uMaQxuCEPRR
 2tzvJPY1ovRSNcpurKwBgfJfFg4godDNcaBzKXnA1lRN5jsjHIHDPWWu3lTGDStHHLI3
 G5q5ySrN1kpcrw7XXqFLcHMsixdqLTuj0K9zUCb5uQDXrkVPICv3jmmxwaJzF06v0lDx
 NGFw==
X-Gm-Message-State: APjAAAUc+yRZ1Qy25P/gKrx/vLNDXeAccho+PtuzcxU3AsN3PuBQ/av7
 l6rCeV3W4T7tPcua/izxovHXLQ+iYlMULTRaK4A=
X-Google-Smtp-Source: APXvYqxgjXqylcsfi6V/T+rptcmi0tK5yVVOSXb9ahkJlNdaCddwnjp6UDz2YeaZsQ69zFKwF9MwJGrz+zIJUKXCnzY=
X-Received: by 2002:a05:6830:22cd:: with SMTP id
 q13mr12839245otc.224.1581586040034; 
 Thu, 13 Feb 2020 01:27:20 -0800 (PST)
MIME-Version: 1.0
References: <20200212104902.7779-1-hauke.mehrtens@intel.com>
 <20200212104902.7779-2-hauke.mehrtens@intel.com>
In-Reply-To: <20200212104902.7779-2-hauke.mehrtens@intel.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Thu, 13 Feb 2020 11:29:52 +0200
Message-ID: <CA+U=Dso_H37H=sNrCOxfuV9obVu4Q_BUOURPhCQ9vLcgcs8i6Q@mail.gmail.com>
To: Hauke Mehrtens <hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_012721_403689_A7A4E009 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] build: Add option KERNEL_KASAN
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

On Wed, Feb 12, 2020 at 12:50 PM Hauke Mehrtens
<hauke.mehrtens@intel.com> wrote:
>
> The kernel kernel address sanitizer is able to detect some memory
> bugs in the kernel like out of range array accesses.
>

Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>

> Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
> ---
>  config/Config-kernel.in          | 52 ++++++++++++++++++++++++++++++++
>  target/linux/generic/config-4.14 |  1 +
>  target/linux/generic/config-4.19 |  1 +
>  3 files changed, 54 insertions(+)
>
> diff --git a/config/Config-kernel.in b/config/Config-kernel.in
> index bf1c1055f1..3059a45f48 100644
> --- a/config/Config-kernel.in
> +++ b/config/Config-kernel.in
> @@ -120,6 +120,58 @@ config KERNEL_UBSAN_NULL
>           This option enables detection of memory accesses via a
>           null pointer.
>
> +config KERNEL_KASAN
> +       bool "Compile the kernel with KASan: runtime memory debugger"
> +       select KERNEL_SLUB_DEBUG
> +       depends on (x86_64 || aarch64)
> +       help
> +         Enables kernel address sanitizer - runtime memory debugger,
> +         designed to find out-of-bounds accesses and use-after-free bugs.
> +         This is strictly a debugging feature and it requires a gcc version
> +         of 4.9.2 or later. Detection of out of bounds accesses to stack or
> +         global variables requires gcc 5.0 or later.
> +         This feature consumes about 1/8 of available memory and brings about
> +         ~x3 performance slowdown.
> +         For better error detection enable CONFIG_STACKTRACE.
> +         Currently CONFIG_KASAN doesn't work with CONFIG_DEBUG_SLAB
> +         (the resulting kernel does not boot).
> +
> +config KERNEL_KASAN_EXTRA
> +       bool "KAsan: extra checks"
> +       depends on KERNEL_KASAN && KERNEL_DEBUG_KERNEL
> +       help
> +         This enables further checks in the kernel address sanitizer, for now
> +         it only includes the address-use-after-scope check that can lead
> +         to excessive kernel stack usage, frame size warnings and longer
> +         compile time.
> +         https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715 has more
> +
> +
> +choice
> +       prompt "Instrumentation type"
> +       depends on KERNEL_KASAN
> +       default KERNEL_KASAN_OUTLINE
> +
> +config KERNEL_KASAN_OUTLINE
> +       bool "Outline instrumentation"
> +       help
> +         Before every memory access compiler insert function call
> +         __asan_load*/__asan_store*. These functions performs check
> +         of shadow memory. This is slower than inline instrumentation,
> +         however it doesn't bloat size of kernel's .text section so
> +         much as inline does.
> +
> +config KERNEL_KASAN_INLINE
> +       bool "Inline instrumentation"
> +       help
> +         Compiler directly inserts code checking shadow memory before
> +         memory accesses. This is faster than outline (in some workloads
> +         it gives about x2 boost over outline instrumentation), but
> +         make kernel's .text size much bigger.
> +         This requires a gcc version of 5.0 or later.
> +
> +endchoice
> +
>  config KERNEL_TASKSTATS
>         bool "Compile the kernel with task resource/io statistics and accounting"
>         default n
> diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
> index 73b0d77155..5a9b82db80 100644
> --- a/target/linux/generic/config-4.14
> +++ b/target/linux/generic/config-4.14
> @@ -4927,6 +4927,7 @@ CONFIG_TCP_CONG_CUBIC=y
>  # CONFIG_TEST_FIRMWARE is not set
>  # CONFIG_TEST_HASH is not set
>  # CONFIG_TEST_HEXDUMP is not set
> +# CONFIG_TEST_KASAN is not set
>  # CONFIG_TEST_KMOD is not set
>  # CONFIG_TEST_KSTRTOX is not set
>  # CONFIG_TEST_LIST_SORT is not set
> diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
> index aba7bccaf6..372cad70a6 100644
> --- a/target/linux/generic/config-4.19
> +++ b/target/linux/generic/config-4.19
> @@ -5187,6 +5187,7 @@ CONFIG_TCP_CONG_CUBIC=y
>  # CONFIG_TEST_HASH is not set
>  # CONFIG_TEST_HEXDUMP is not set
>  # CONFIG_TEST_IDA is not set
> +# CONFIG_TEST_KASAN is not set
>  # CONFIG_TEST_KMOD is not set
>  # CONFIG_TEST_KSTRTOX is not set
>  # CONFIG_TEST_LIST_SORT is not set
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
