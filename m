Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61228184F60
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 20:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMvbRu2L7CPbvi5Rxa857YOjmkbTNRC0sxa+HvRTuXM=; b=GoIIIy30iy6Bb2
	4esPRvjWeos8ncRQnaHintIGvFgu8CXQ4hFfLUDFCaYA99EEOXytY1RXABfsbTrGPOuoFygGFS75A
	DHeiuIQJrq1u2buyl0sWxXYg7nurQCLQ1R/20zxCuv7vf0gJNqok5qhyuYIIkYjxldExabzJ3msRu
	5xvwS5uUYe4Hi5UldyrtDDWfWFER+P5wXaUSi/rD1UFYygNYK7bojOTXbDmnKPI/SQEE4mKgPB7NZ
	ohha2EyQCo5gBpwOq541NxULlL/wMxMQalYbJtcmI2yYGB1JdpnRrDzvXglYBit3uqBya7EbApVzo
	80OxoE/1zB/XH3WR7uyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqCa-00081o-Qm; Fri, 13 Mar 2020 19:42:36 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCO-0007zt-81
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 19:42:25 +0000
Received: by mail-oi1-x243.google.com with SMTP id y71so10665032oia.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 12:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RcHMeWIhWTn30O/T8GBrP/KqNdLTbRtQBHahv5V0pYE=;
 b=YHfh8/7KfAiC1Vm4sw37V0so29mweDi+BHC9/Wk5t1xus0FUTInGsxApOdvyS3mf3A
 PUJazJsN+SBieHda53sVB2qvp0mCd1cYziHyf6DrkFN7e/R2ZOxK0Ag6/gNKHq1lATwt
 qTUVUYpnlFbuTCRaB3NZ90O9qFrA0bSPu0Yxkll2Uu9EAzbOg+m479eV9X6g2FxOGExs
 Mb+aHspoR2VDz7YEDlcQNXeQM0MJaB7N1qA9U2FTyZMcVvwn2SsK2q/kM0YWTZB9v6O3
 Ctr7Tiok0TObHZ1wS9nZbrl91ecHi6LgH8rASOW2keSOJqh0mlfj6/LzFli2ONC7J5+9
 qsig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RcHMeWIhWTn30O/T8GBrP/KqNdLTbRtQBHahv5V0pYE=;
 b=oVa2DfeyW0Cg7pk+4s1nwvgp82M5ROycQK4T7bgLCggpNE8CW8cnW3G8RDOkfDt8mL
 aWFS5PCotvSMxMsWXAewBoeOhitpkRS13duHDQJvwybGQIOfsJ0yZDlYwPqsAx5pxYU5
 Ah4T2N4XGO6734nLlm6wTheqWtb28FAN1yPNm39Ksax+gKQz7xY/NLtS0RtHxz/OehMT
 vrpfU1YLiXlobePcdA+XgB2HIhEzfTknsko2dnKHndk7Nz8UaKzCr6ETHSyv2n+qUpTF
 zsbW8u5edMD5kXW7WHHS2t52+5wnFgVkHz920EfjWj9JBIwYxDAh3G/pOLpdTVuVgQxE
 ewsQ==
X-Gm-Message-State: ANhLgQ0ipIXLD+crTwKDmmEyRkMFzjzmqg3Ha0NWuUWKEzlEUn6sFYzu
 /pIzYMKF4rhhxfQXDBQZWv+gOR1Jn0DfCETwTvXnONEA
X-Google-Smtp-Source: ADFU+vskxBnPKsK6IBWjbB2T/IcccqIMmWV5lnG8MnKnySCa3pcC9nTsw4T59EcsDbWqFTVCxEIq75DVluA6+zyDHsc=
X-Received: by 2002:a54:4f81:: with SMTP id g1mr5472370oiy.113.1584128543216; 
 Fri, 13 Mar 2020 12:42:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200313143339.GA20674@meh.true.cz>
 <20200313145450.1962201-1-jo@mein.io>
In-Reply-To: <20200313145450.1962201-1-jo@mein.io>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 13 Mar 2020 12:42:12 -0700
Message-ID: <CAKxU2N_5tBiaKOykVNEK5AAnRz0D+3yyaC8eC_OxQw-aaALbrg@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124224_286281_8200F82A 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] pkgconf: always retain -I and -L flags
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

On Fri, Mar 13, 2020 at 7:55 AM Jo-Philipp Wich <jo@mein.io> wrote:
>
> The pkgconf fork filters -I and -L flag values from .pc files which match
> pkgconf's builtin system directory value.
>
> During configure, pkgconf derives the default system include and library
> search path values from exec_prefix, which is set to staging_dir/host in
> the host tool build phase.
>
> Due to that, pkgconf will drop all -I and -L flags pointing to
> staging_dir/host/include or staging_dir/host/lib, unless invoked with
> --keep-system-cflags and --keep-system-libs respectively, breaking our
> kernel libelf discovery / stack validation workarounds.
>
> In order to inhibit the filtering, add --keep-system-cflags and
> --keep-system-libs to our pkg-config shell wrapper.
>
> Fixes: GH#2832
> Fixes: 867298cf47 ("tools/pkg-config: Replace with pkgconf")
> Ref: https://lists.infradead.org/pipermail/openwrt-devel/2020-March/022182.html
> Ref: https://git.openwrt.org/fe43969336201f2cc7d103b68fd6e65989bee184
> Signed-off-by: Jo-Philipp Wich <jo@mein.io>
> ---
>  tools/pkgconf/files/pkg-config | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/tools/pkgconf/files/pkg-config b/tools/pkgconf/files/pkg-config
> index fa1faccc6c..2c6fd08b4a 100755
> --- a/tools/pkgconf/files/pkg-config
> +++ b/tools/pkgconf/files/pkg-config
> @@ -1,6 +1,8 @@
>  #!/bin/sh
>
>  pkg-config.real \
> +--keep-system-cflags \
> +--keep-system-libs \
Any way to make these only used for host builds? I imagine these
options could impact target builds.
>  --define-variable=prefix="${STAGING_PREFIX}" \
>  --define-variable=exec_prefix="${STAGING_PREFIX}" \
>  --define-variable=bindir="${STAGING_PREFIX}/bin" "$@"
> --
> 2.25.1
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
