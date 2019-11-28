Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F5210C0F3
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 01:18:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xLiG2D4G6llAXK4BfJwZ1GRE9+XQujer2uCttwjaG18=; b=celYqrSg3HaMgPRtAD+DWYNTbH
	HIV+vtQq1SeveCQDwUywZaH5GKl168KOyXaXg5bPZIyzkuSS2bnlzfiOT5D9u5KRrxjzggDWPdbf+
	cbdVADKxE9okqgfpZVfM50ZuT6YiG3HwhnYs2zx+wJKnDqcna8it3wwsYccYkV1grRpzcTYgB86aW
	CWo8b3e13ADVnrAkvYwr/N27mnQOSRNngN2pC6FCERrlHpeIOGOussYmmIBMId3RiHKwlTcPkHTgn
	iHncG3SSwRVN+x68tUbbI0aymbTnQpFOGfwVVyFGmxjwXyk+2kn2plIoM2jU2Ifs7T/b66QxJLpn7
	yTNlMAVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia7Vv-0007in-VI; Thu, 28 Nov 2019 00:18:31 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia7Vq-0007ho-7a
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 00:18:27 +0000
Received: by mail-ot1-x341.google.com with SMTP id c19so20706491otr.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 16:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=3D+xJcFV/pAAU+Mfa4tEUl22X2tdUo8Itmq4zy3ruIE=;
 b=Q0fnHDuGqv2NBurMvbt/8D9LS0Nul421IaBpIESNtMiH46mkglPkL7AwIVwgg8kKdz
 N08mhkBXjSpGwPUFi63IV2V88YSWXgedl0A+YkxcxqP/CIntvfGv9cDFapNJwixBilzV
 sivJZGg79dOovBt5eadSoGmembiAvgpLTvIsdf7rZlRZtWFGLf0AOwPs3ebSS1Xuv/el
 AbhSByEXAnjG1B7+3EzrUVChApc8cuMwiKZpL68JkyQoUDlpe9ovXmELcnc7PRLO9/NR
 +Q9l5ryYl6Dj6qjsg+MKUw8aqwAvrTKghiVYm2baAKzarEmTKPxVreAKMwRQpyXxyMZx
 s4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=3D+xJcFV/pAAU+Mfa4tEUl22X2tdUo8Itmq4zy3ruIE=;
 b=MLDUjCff9Ii7Lb/YfwsTeOSLqy/v+Zs6po0KIrSS6Spx+Gt95TCmENEEN8TS8w5NC4
 4a5lo7lAQhhrlgr4TtK47iz0t3FoIxeaFph/4b42fqltF64deM7c0aVzM3nMnhDBBnld
 YJyGAOl05aP4Fv4aFZ1MmU8JkhWSEuUrehGeaKObnI5SPjjijatTtMElwGbDak3ODXcm
 IkrelckXo0psqUxb04wkcqcn+gxGF1HFA4W72coYJGZr5Qoeq5jC1HX2R9S7orCIFysT
 eyDG3WFwH+Jcv/AdlH80wVleq7t5g0po6uWEBuNHtuIRRHcu0o7TZGiWbDPoeLq4z4Hw
 TySA==
X-Gm-Message-State: APjAAAUhXrenqDoTSqEPHljEu4UgGyhy+cTcjp0fE6/JALozD/v29dZl
 7tnFewpdkNS0H8lShn+noUyISr+kAAgSrjwxt64GvKhW
X-Google-Smtp-Source: APXvYqwOkx5tLRx/DC2tGIFOx+fEqHmf/BazHrVdprNLG9D22xFYUVCfsaZiAsVbb2UNGBJvmUhN8aSKCnphAPLE7bU=
X-Received: by 2002:a05:6830:1649:: with SMTP id
 h9mr5852124otr.281.1574900301626; 
 Wed, 27 Nov 2019 16:18:21 -0800 (PST)
MIME-Version: 1.0
References: <20191127223005.9632-1-rosenp@gmail.com>
 <20191127223005.9632-2-rosenp@gmail.com>
In-Reply-To: <20191127223005.9632-2-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 27 Nov 2019 16:18:10 -0800
Message-ID: <CAKxU2N-LM_6BB7+3mHwG-AYh=BnC4oY7dEoX+93uUR-V9U93qQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_161826_296331_B12C251E 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] tools/pkgconf: Run pkg-config
 wrapper through shellcheck
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Nov 27, 2019 at 2:30 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> Mainly quoting fixes.
>
> Separated parameters by \ for easier readability.
>
> Switched to calling by dirname so that it can be called from any
> directory.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  tools/pkgconf/files/pkg-config | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/tools/pkgconf/files/pkg-config b/tools/pkgconf/files/pkg-config
> index 82cc74ffcb..4b5e57b39f 100755
> --- a/tools/pkgconf/files/pkg-config
> +++ b/tools/pkgconf/files/pkg-config
> @@ -1,3 +1,6 @@
>  #!/bin/sh
>
> -pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
> +"$(dirname "$0")pkg-config.real" \
AGH. This is totally wrong. I goofed while rebasing this. It should
have a / after dirname. Should I resend?
> +--define-variable=prefix="${STAGING_PREFIX}" \
> +--define-variable=exec_prefix="${STAGING_PREFIX}" \
> +--define-variable=bindir="${STAGING_PREFIX}/bin" "$@"
> --
> 2.23.0
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
