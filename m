Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD37174983
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 22:20:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+12gToqD9VIUkdeLZV1of7IaNtZ0UoZF7ztPNBeB3s=; b=j8uzHDX00pTmhC
	GoyQUxLS90946ppgLn135EShIdI0NSOR8q3eqhmWXbgjwRnDs+K5cbBILf6U25s7t5n6KEKW6KXZv
	GTxuHktR6eXPrUt60mLCjMbrtIhKPvgvBgZ6T1YHGXLu3xhfLO4i13NVQm6djLyQPki6/xC53hviF
	M/QjaYp10/ds9EvXBmXNxp8X+rqDYXDW1Sxo43jHHQnmIP63OO94PmjzhVFbtzWFWCV1vq6epa97h
	o1QvrX7DFpMokFLmg1AEO3/Dy3mCmPUjcQHbgmHVkqobvse86RcY2oZ+xvaMm0wcX8q5sx7az93BW
	1Bgr7+01Amu4U0jHsMag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j89X7-00054N-6D; Sat, 29 Feb 2020 21:20:25 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j89X0-00053z-M5
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 21:20:20 +0000
Received: by mail-il1-x141.google.com with SMTP id e8so1308309ilc.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 29 Feb 2020 13:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f4hPU1iF0TPTd3j7sqvNlPRYa+yFe9hxmdgbZXvS0S8=;
 b=ZpyyPcBTQD5sibnUkBvC5vbhLrEPhKkkideKddCJcvUCeFpbN3gggArX1rGdOgmArD
 dPTjAiug/f1NL7vd/0yzpEsfbNxr2fsZdcJhccnwQHMKCmGw08Q44O003pWeDVTFsyPE
 Ae0CuNz75FvPz0jri1QuXwiwpAc/0NCe5Ozg57uXrTxlbVaNUPmMbtHdOZhuCn6KSHdT
 sF+tWgMzUXQSsnZ4J2QrXOIgjnQDD0MCTPcJSzQUwx3HrKSnfeqyXeTDHUnZU/1iL6aR
 yKV0cl5Je8grmbjpD3Es88O7fa2dO7GufbgDdFPl3cjaLle9Jv+iAfXnpwhop1Iywflg
 nuzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f4hPU1iF0TPTd3j7sqvNlPRYa+yFe9hxmdgbZXvS0S8=;
 b=uEERwOP+WhonGHtbaC+PtncVF7kPorE3k24LEe9D9OPlAAQjffNdXeiCR+J4iXeRde
 e2hzt7B66waj/pjFvTl6tOLiek4qAy0Vx86G9IZp7QFdJziQs4zQm9fIWbJGWKVE4yr/
 8iM72GHu0qzYXP5RJhj/bMvO8RShoOQsSuL1+QvcVWFJaF5XJaHm8Q1Vl1qmQAvwhHTr
 hRfoewpIDZzpiONItYeWqhTNeXfe742kVYzn3kLmebv/Y1rofoGlu9s9oeAWqUfDj605
 HWn2Vkh0HVKR51oLPU/1muFo9Vy9vzcWt8wEt5/FRnwl+rUA2bSa5lSvLSMNR6NPomaS
 b9bQ==
X-Gm-Message-State: APjAAAUQQmQRythUnbTi1OggYUIwSKLjlTxxIrhEm79heVfzCnvmAU5x
 CyoDc/mtFOj1VeBeLqSjj2CwbWus3HjReSXRtdE=
X-Google-Smtp-Source: APXvYqzB3CPYSWYRRnGk3aotAUXWDPb2Ss8Sa6AN+bwYCuzRXGGYHdHN+sKY56E7Vrtv5gi90F+UB6iYvX+hUPK1wN0=
X-Received: by 2002:a05:6e02:df2:: with SMTP id
 m18mr9845095ilj.56.1583011216673; 
 Sat, 29 Feb 2020 13:20:16 -0800 (PST)
MIME-Version: 1.0
References: <c7d334c5-9153-96f2-1e66-dc8878df9ed5@iki.fi>
In-Reply-To: <c7d334c5-9153-96f2-1e66-dc8878df9ed5@iki.fi>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Sat, 29 Feb 2020 22:20:05 +0100
Message-ID: <CA+_ehUxnoncgsczKnQv=JzJv-dsr8+rtgE04Zzdh5=N0_NQdJg@mail.gmail.com>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_132018_747874_F1C11725 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Kernel 5.4 testing: module regressions (exfat,
 IPv6 NAT)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> I tested the kernel 5.4 support with ipq806x/R7800 and noticed that at least
> two kernel packages get broken with 5.4:
>
> * exfat-nofuse:  exFAT is included in Linux 5.4 as a driver in the staging
> section. The header definitions in exfat-nofuse conflict with the ones
> already in Linux 5.4 be default. The new kernel module should probably be
> packaged in OpenWrt with a depndency to 5.4  (and exfat-nofuse disabled in
> 5.4+ as they define the same kmod-fs-exfat)
>
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/staging/exfat?h=linux-5.4.y
>
>
> * IPv6 NAT breaks compilation:  fails if ip6tables-mod-nat and kmod-ipt-nat6
> are included in the build. Likely netfilter requires some modifications.
>
> Collected errors:
>   * check_data_file_clashes: Package kmod-ipt-nat6 wants to install file
> /Openwrt/r7800/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/root-ipq806x/lib/modules/5.4.22/xt_MASQUERADE.ko
>          But that file is already provided by package  * kmod-ipt-nat
>   * opkg_install_cmd: Cannot install package kmod-ipt-nat6.
>   * check_data_file_clashes: Package kmod-ipt-nat6 wants to install file
> /Openwrt/r7800/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/root-ipq806x/lib/modules/5.4.22/xt_MASQUERADE.ko
>          But that file is already provided by package  * kmod-ipt-nat
>   * opkg_install_cmd: Cannot install package ip6tables-mod-nat.
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
Also from long ago I have this error that has never been fixed
config:4110:warning: symbol value 'm' invalid for NF_NAT_REDIRECT

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
