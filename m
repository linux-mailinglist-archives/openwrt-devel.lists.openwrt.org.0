Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A589D10FEC2
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 14:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hFT3AXrWei5Zj4dkWPTpyM4ywHJdMeS5LgQNm8HYNI=; b=GVb1eGvss4cNWR
	wjURKNJ+mQoQGe4rAptSiTG1WnnLAooNw2ooh8cLdSSjX8/WVJjSSJ1FGaJkqbkcIHhzhRnLeXCxG
	Qe4z6EEhzP4sDBPYLfTvKt4edxBi5R2J3WtgwXnfW9R7Y1df2gRVibilRZShMLem5L54tT20gIF88
	r+MFRScN5ZgnO2VA1qXLrzKsWWT2MHuXfsZh3y8bEBECvpwtFoX7TtxLf9lXxFaJJLePqfmrX1OCh
	2N9TsDMnx8YDK+p/w/JtXBxxqet0flLs3YakDiYcjxF+TQc03MUatAK4gQhLpEQn06tQMILrw2WM/
	mMhdoAEDR/IxJWWQ9CNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8DB-0000j5-OB; Tue, 03 Dec 2019 13:27:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8D5-0000UQ-0n
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 13:27:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so3640580wrj.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Dec 2019 05:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kU+MKxwQLretMS0dx40s9Ym4DNEY90gDT0R5ypN3kos=;
 b=sHKA6OtC9uIYy6zsM0aalGeIeS6ynQbBI1WotdD3Tx9a+dlyaaPB8bPsiweTGv/jgk
 Hms0M/Tgd+H21/83I+plVGYgWAL/b01bEbTQVAhfomybbBz2SMlcbMDhyI9yUDCyVo4V
 wNwW2iN71HNoZ8PR1igxlIHRxLQrKjhfCxUuQA75VrcyCjZs6okWaW0wVNfwcrkN+Q1x
 rXPiI7aa8YrfO12iDEgoRaByKutuUCia7+F5CKaVMXMm2GXG/FIdywgUvdIbF3jBwHnI
 fJCXgOaXk9Ag4RjX64XIB6crQ3VtW9naG3ua4PyI8IiNdQaf1n0FHGj+rYRnieVvrSgD
 V/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kU+MKxwQLretMS0dx40s9Ym4DNEY90gDT0R5ypN3kos=;
 b=PZTg8VJyNLNLcXUMlPLYX67n0EXr9GByS05WeRg2WUaCnoNG3ECZ1t51MxYEeQxDsK
 4HJPbU6MdvTQCC7c8VwZh4ZFcF20T5qcBgkTnMOtForvnepQHowuu9wZNgQcQFSR/X0a
 M0FD7pbV0eqYO1BAXjBgOOvFLB2jDYx8IUm6f1lTVVadjt5505ltT7ZLtDl/p1SG1bon
 SH+87/D8OC/8ourXcr7xs0curSt1Rm21jUYe89QuCrcm/FWhpxdYs2k/XE3NMjtz+0ah
 qd5nMo87u6G4ee7GmJLIDk2uzKxooXkhjZvjdLyRWKeRaAfNL4KzSPSLVcASJXIIeJ1/
 suaA==
X-Gm-Message-State: APjAAAVZ82qQVUbU5yz9teWmRXWaZvaLWVj1FKlT369ar3+AxvNitYAG
 +S7NHkyPt3uSGMLMNLK7Eokx2ij8ltqTMpomJU0=
X-Google-Smtp-Source: APXvYqwU18QKfzr0MaESlECjuZVeWy2n9aa8C6nkhA9GX3o51qxfPrw/haUPe5JckUQuz3FZYgJ4pe21Tvz0PwFoF9s=
X-Received: by 2002:a5d:6b82:: with SMTP id n2mr5176821wrx.153.1575379641273; 
 Tue, 03 Dec 2019 05:27:21 -0800 (PST)
MIME-Version: 1.0
References: <20191203005447.4607-1-rosenp@gmail.com>
In-Reply-To: <20191203005447.4607-1-rosenp@gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 3 Dec 2019 14:27:10 +0100
Message-ID: <CAOiHx=ndf-K0qOO535AQ=Xath3qzAp38qoqRsKuX_y3tn-oU5Q@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_052723_092393_7F7F56B3 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] uci: Fix Wformat-nonliteral warning
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

On Tue, 3 Dec 2019 at 01:54, Rosen Penev <rosenp@gmail.com> wrote:
>
> A const char * variable is being passed as a format string. Unfortunately,
> this is not correct.
>
> A constant expression needs to be passed so that GCC can determine the
> types of the format properly.
>
> Also fixed a different warning that needs a printf attribute.
>
> Fixes:
>
> error: format not a string literal, argument types not checked
> [-Werror=format-nonliteral]
>   176 |    error_info);
>       |    ^~~~~~~~~~
> error: format not a string literal, argument types not checked
> [-Werror=format-nonliteral]
>   185 |    error_info);
>
> cli.c:196:19: error: format string is not a string literal
> [-Werror=format-nonliteral]
>            vfprintf(stderr, fmt, ap);
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  v3: Moved define to top of file.
>  v2: Fixed extra warning from clang 10.
>  cli.c    |  1 +
>  libuci.c | 15 ++++++++-------
>  2 files changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/cli.c b/cli.c
> index 8970f4f..6ba97ea 100644
> --- a/cli.c
> +++ b/cli.c
> @@ -185,6 +185,7 @@ static void cli_perror(void)
>         uci_perror(ctx, appname);
>  }
>
> +__attribute__((format(printf, 1, 2)))
>  static void cli_error(const char *fmt, ...)
>  {
>         va_list ap;
> diff --git a/libuci.c b/libuci.c
> index a9e70e8..0f0211a 100644
> --- a/libuci.c
> +++ b/libuci.c
> @@ -40,6 +40,12 @@ static const char *uci_errstr[] = {
>  #include "uci_internal.h"
>  #include "list.c"
>
> +#define errstr \

As mentioned in my previous email, please use all caps for #defines.
And maybe give it a more descriptive less generic name. E.g.
UCI_ERR_FORMAT, as it is a format string, and should be uci
"namespaced" (as much as you can namespace stuff in C).


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
