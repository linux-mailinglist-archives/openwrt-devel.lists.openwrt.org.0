Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D300B15A365
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 09:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64ZBkKXsNogUpoXuo9AcRbzoFpMuG3UiCuLuLr/Qsc4=; b=E/6g9FvuSv9YlJ
	BHPfh+gKqXvSEJ8ZXaSi0PjSwlqrTp9LiyjtTgaK9NqQbSr9l4OWqk00TIaBD22MhAgV+J7jdk7Ug
	qrBTT1A8Zk4P3V/+Lr0Mq8PgKrDCWqvlN/MR1uN6aKfTRqQBUqdeb5ShVy++PhhRbnDuGZZwk5jl2
	jMQ4wEgYn8+MGaIkmJtMMhGLMJyB9pq7PvuGXa+4wcDsIScwUo1M+P48IilOAhqPIhjhA0XQLkMqh
	earL0sWWaq6cS3Wjwtypo+jNM+k3sZ3gNMBvu3OHBH0Ge5AF86Ut3JJZNby1BV4zKtzCDgxRYlfP8
	EERV5qkYcvWZhIyJRM9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nVL-0004yy-PU; Wed, 12 Feb 2020 08:36:19 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nVD-0004yf-BC
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 08:36:12 +0000
Received: by mail-oi1-x234.google.com with SMTP id l136so1285891oig.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 00:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=va+SIUfEAAZ9/CmkyCbzGauc3KQMVxQh40NVzwvTSFU=;
 b=dHRKmgdtKM8KhM3SOeR9ttiYif7NJI9aTBdFaxLtmNFrp7l0Qq/FYHON9kpPCUD36i
 QuPqML/fjFrdOA9wy+7ube0rhNfNyh7gToj7nQ5VxNE71YRQAS80Zql1ULmiXTavQcZo
 QqAKvf3Ew5BbqeMK4MoSEWTs67Fgo0rz6t4OtKBod2mQF6FVASQRVD0cVe9BF0bppbRN
 rDpesNZif1mPd4xWFbFymVUdcs6jbP/TOyretdmfj5HjxTZfStR2fDGU7VKRRJ5yvFxN
 8hgYZXHtjVk2SVWWP6qtg+YMFOiW3og4OJQgsk+3sBD3iTr83eyKNQrpWbO69SKcIVCf
 srBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=va+SIUfEAAZ9/CmkyCbzGauc3KQMVxQh40NVzwvTSFU=;
 b=U8emMZqndiiozVRK8o2Hyu8C0YS04x5zFQ1laMLWs7dweZqQwZaKnyaErqJ3kg9u9u
 FKIJ+DDaFSVlFDc8tLoiMEcXLqa8WoIqE7R/nB0UpbkUY7bK0gBY3DeNlYgefLq8Hm/s
 b/0EFmLSGQlwNiv7iO+lYlrkb8vIHFb4nHw+oxxTPVax0YCbHDjIdiENRF6ViLIPvXoV
 gU77eBxu/0xufvF34pVcpemrhxRw1T+mTPuVF4jNJOTujaVdAWt3uGvAT42LdLe3hiL6
 6JPhetMfOjDOiMA+5mQ2EVPVHusX8bYo0U4Z3athZf5uS3DlunNFz0YW2NanSn9YtpAH
 msOw==
X-Gm-Message-State: APjAAAV7/db865zl7nS1QaqEq26i0j8DZDQxaB0yDcPXMfGbKGyf9Xst
 jKtdVcp5qTORl1GbKYv+N54bDHqU4I1ol5CUg+A=
X-Google-Smtp-Source: APXvYqwG3fk1xjnJ30kRZmV89VL+pP21L8+Hzj80msuVDWKPmdTWzH3qIeV/Ei84oV5oq6zXewxr7z3FA0vO1fpKtDA=
X-Received: by 2002:aca:4587:: with SMTP id s129mr5376318oia.124.1581496567906; 
 Wed, 12 Feb 2020 00:36:07 -0800 (PST)
MIME-Version: 1.0
References: <20200211180124.17523-1-hauke.mehrtens@intel.com>
In-Reply-To: <20200211180124.17523-1-hauke.mehrtens@intel.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Wed, 12 Feb 2020 10:35:54 +0200
Message-ID: <CA+U=DsowsUo9D8AK1BEYZxd8rx4BRUVoYLV0W7-wgGhxerPuUA@mail.gmail.com>
To: Hauke Mehrtens <hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_003611_410184_35F0C057 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ardeleanalex[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] x86: Add missing kernel option
 CONFIG_X86_DECODER_SELFTEST
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

On Tue, Feb 11, 2020 at 8:20 PM Hauke Mehrtens <hauke.mehrtens@intel.com> wrote:
>
> This option has now a different dependency and can be activated, set a
> default value.
>
> Fixes: 20b5a4ca01ca ("kernel: bump 4.19 to 4.19.101")

Tested-by: Alexandru Ardelean <ardeleanalex@gmail.com>
[ both x86 4.14 & 4.19 ]

> Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
> ---
>  target/linux/x86/config-4.14 | 1 +
>  target/linux/x86/config-4.19 | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/target/linux/x86/config-4.14 b/target/linux/x86/config-4.14
> index 18b7de832f..8d358aacac 100644
> --- a/target/linux/x86/config-4.14
> +++ b/target/linux/x86/config-4.14
> @@ -469,6 +469,7 @@ CONFIG_X86_CMPXCHG64=y
>  # CONFIG_X86_CPUFREQ_NFORCE2 is not set
>  # CONFIG_X86_CPUID is not set
>  # CONFIG_X86_DEBUG_FPU is not set
> +# CONFIG_X86_DECODER_SELFTEST is not set
>  # CONFIG_X86_EXTENDED_PLATFORM is not set
>  CONFIG_X86_F00F_BUG=y
>  CONFIG_X86_FAST_FEATURE_TESTS=y
> diff --git a/target/linux/x86/config-4.19 b/target/linux/x86/config-4.19
> index ecfaf45d90..afc8d6af57 100644
> --- a/target/linux/x86/config-4.19
> +++ b/target/linux/x86/config-4.19
> @@ -453,6 +453,7 @@ CONFIG_X86_CMPXCHG64=y
>  # CONFIG_X86_CPUFREQ_NFORCE2 is not set
>  # CONFIG_X86_CPUID is not set
>  # CONFIG_X86_DEBUG_FPU is not set
> +# CONFIG_X86_DECODER_SELFTEST is not set
>  # CONFIG_X86_EXTENDED_PLATFORM is not set
>  CONFIG_X86_F00F_BUG=y
>  CONFIG_X86_FEATURE_NAMES=y
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
