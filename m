Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B6B15BBAA
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 10:27:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJhhyzlhFIe6KF99r9qIXhOYfwASYlibGusIjdWLfls=; b=gzsxCwcslZ9jTK
	Em1m6HoOk/8EhKWqsv3XrzpJzKd2Q+ns4XUm3jMiMWL+dfczyE7apTn7A6zrvGpojeIOSMwBiQ1EM
	Z11E0C1037uPF8EIyPV/hX8e4S8rmbUhDn3zPsSPJk30cbDvH0jz24gF+VZz253MqWeAYhvHPXnrr
	4WPzLirAn92lOVwoS6pFdwROAWN+9hhOod7SD6waCedF9xoi/OhPCqobL/jIi3gtu7ttLyUv26T2P
	dv/IXwtLUgwIH3vCxgythchCw+HZuMTpu9z0WORYLJuzesJQCOPYNTFY0niZlmvNTOulPg2CEnMhK
	eRAPU4sBAWqj25UNSFzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Ami-0000v2-B8; Thu, 13 Feb 2020 09:27:48 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AmX-0000tf-Sy
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 09:27:39 +0000
Received: by mail-ot1-x343.google.com with SMTP id 59so4896683otp.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Feb 2020 01:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=21LsYpF4RTe3tgqC1PNVqi3eZp9B8NFXQR8SONm5nRE=;
 b=H7mBmIXGnM/dsgFUCMb1H6hZIeCdl3TlZbEbKjVGhPWC1xV3uzZ9UmFzGS2YYUz9qs
 IV/Aciuie9z6f/aqjJGMge78+LhHeA1wxMOJ6Y6dsPL2sc01i/RWjIql5YegDXM3BUsV
 C+DD+nT+jTCdnsDQ6Vuqhv+NM8FgGYDgpA24pEVMlBBnHFiDe2L09QbK93SX8rSYksDG
 V5npQQYi5RzQhgVgWJt1/KRVkoWSlRk/FSq/RowEZB3IX24YwIvq8zFGM68m2DHXV3Ob
 Xy5HRkM6R3O2gzZmErtCnquPztOgu9fr4j4RGLPeRjrHGH0+EB1AadPSWDv+Yd3kBrpt
 tjtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=21LsYpF4RTe3tgqC1PNVqi3eZp9B8NFXQR8SONm5nRE=;
 b=od0Ue6yzvAPOQDRp4R5GbeH0QKVgvCdbP7MRygFzs8/Q7+WfJDuUnrydy4DQ2ZPWu0
 b/fGzi/eTJxjsXyhneqQgwNxB/zl9dtL6IjthNXP560N1jt6ClWOs4ovD4kayzKuObQG
 AmchDMkE1gzZESxJcijsrg6+0zDuuGTkJn2jyfPmeJ/So/RGvqDPCQfuFvgqcaxKVG0I
 YxY51dkIYCKN+arosShHdoGxw07+gveLfgoh1GtkfTEchnQoJx45ZnIs19S/tEc8TNx2
 k5Ta3sREQPxpPp0lyqIKibahiM7H2I2f6R94HKUivWCgVXfTflxgZdt7wTwvPCg2i77R
 FMlw==
X-Gm-Message-State: APjAAAWWa5ZxvtDTaMFDpUPYnhpG6zj/fI7tO2ICBfYp19lTZl9xWmjJ
 Fho9Dt0o/MYzYV5JJ631VYw8quvzjaupZyDsc9g=
X-Google-Smtp-Source: APXvYqzfsRcxbWlqpmV35Kr6/seBJDXHpVFZccOHL9HIqufyF2qkeP3S+0pqYFEJoPCR1aJ7/RtS/wYK7Vfw/Ao+3Oc=
X-Received: by 2002:a9d:5d09:: with SMTP id b9mr6246937oti.207.1581586057285; 
 Thu, 13 Feb 2020 01:27:37 -0800 (PST)
MIME-Version: 1.0
References: <20200212104902.7779-1-hauke.mehrtens@intel.com>
 <20200212104902.7779-3-hauke.mehrtens@intel.com>
In-Reply-To: <20200212104902.7779-3-hauke.mehrtens@intel.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Thu, 13 Feb 2020 11:30:10 +0200
Message-ID: <CA+U=Dsrqfr0E4ZAWS2Y5q2uBvg5AjV93A_h7BdoWnegZbu-0Pg@mail.gmail.com>
To: Hauke Mehrtens <hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_012737_938262_96ED619C 
X-CRM114-Status: GOOD (  17.51  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] build: Add KCOV kernel code
 coverage for fuzzing
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
> The adds an option to activate KCOV (Code coverage for fuzzing).
>

Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>

> Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
> ---
>  config/Config-kernel.in | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>
> diff --git a/config/Config-kernel.in b/config/Config-kernel.in
> index 3059a45f48..8e9e3518bf 100644
> --- a/config/Config-kernel.in
> +++ b/config/Config-kernel.in
> @@ -172,6 +172,39 @@ config KERNEL_KASAN_INLINE
>
>  endchoice
>
> +config KERNEL_KCOV
> +       bool "Compile the kernel with code coverage for fuzzing"
> +       select KERNEL_DEBUG_FS
> +       help
> +         KCOV exposes kernel code coverage information in a form suitable
> +         for coverage-guided fuzzing (randomized testing).
> +
> +         If RANDOMIZE_BASE is enabled, PC values will not be stable across
> +         different machines and across reboots. If you need stable PC values,
> +         disable RANDOMIZE_BASE.
> +
> +         For more details, see Documentation/kcov.txt.
> +
> +config KERNEL_KCOV_ENABLE_COMPARISONS
> +       bool "Enable comparison operands collection by KCOV"
> +       depends on KERNEL_KCOV
> +       help
> +         KCOV also exposes operands of every comparison in the instrumented
> +         code along with operand sizes and PCs of the comparison instructions.
> +         These operands can be used by fuzzing engines to improve the quality
> +         of fuzzing coverage.
> +
> +config KERNEL_KCOV_INSTRUMENT_ALL
> +       bool "Instrument all code by default"
> +       depends on KERNEL_KCOV
> +       default y if KERNEL_KCOV
> +       help
> +         If you are doing generic system call fuzzing (like e.g. syzkaller),
> +         then you will want to instrument the whole kernel and you should
> +         say y here. If you are doing more targeted fuzzing (like e.g.
> +         filesystem fuzzing with AFL) then you will want to enable coverage
> +         for more specific subsets of files, and should say n here.
> +
>  config KERNEL_TASKSTATS
>         bool "Compile the kernel with task resource/io statistics and accounting"
>         default n
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
