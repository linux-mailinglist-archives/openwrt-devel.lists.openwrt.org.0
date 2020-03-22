Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F006018E7A5
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 09:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El2O9hlfMGthIEEq6hcOFektwNqDh0ytbUslQBjUSV0=; b=t8Adzj5G6sjN6p
	0C64EOzK0Tmum6OpPhzmr0cLHW9dBVYcAsj947CC2JnkALCNXo/xT8gBIgNkwEnvDwYld6+JYyN5+
	ylNeXwBzSgbs/l5s4l0ZvX2Ez6o3LHdR/kcAeZImCvcSXz9lMKarzLzURF/NqVD61FCT4h1zazsSN
	+pPsb199kWnY9de5dunXVwUJr+3aya4pvOwVes1s7kOstvawwnDS9Ch9+ivgWh6EvMW9tkMF47SaH
	k57O3rNkL9bpKUt0v52+aq8r5DjB5aht/u3DGqoLRWhcqICdnkhvmxO6F1YZf7gxQQGM3K7EsMCaq
	jofgSyE7O52U+7gFwnvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFw9A-0002aY-St; Sun, 22 Mar 2020 08:39:52 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFw94-0002Zr-B0
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 08:39:48 +0000
Received: by mail-qt1-x842.google.com with SMTP id y24so8983967qtv.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 01:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mXli5gzT4/bUD8KC7jX14Dw70g/JjioAj3l/EBDeK1A=;
 b=FWR+sgLKc9CCqI2QgReZ+f6hFrLiNPZG+rV3L+pA3VLh6CnW4zSr7SnXL1qEGmdk18
 SBxld/rq5Ddqg6PoYomL9c0GE2Xz5vbxD48cC4NxoZzrky/mxYfKjWwG1LSP5sLgesg/
 /kvePEuUidY9BlxP8GtcJi+dbyfs8zYD0e3PrbL10pwYM8DJ43v6DRFdaObCccm/E7x3
 Mmtz2mpGlsiVjwZ2uz8a4DYd07sAaQ5gZDR/GulXeOCRgQ/KMEXlDqKGHxapRHH7rzRE
 Ho2AbK0wqA8IB/YW/mU2+aWP11sHSIrtxOav7cNXmP0Mvbj7oRChlJSS7g9bAmTHxoJS
 6mMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mXli5gzT4/bUD8KC7jX14Dw70g/JjioAj3l/EBDeK1A=;
 b=dHaLGjUoMSB24vIQAYCZYFQYiNUmSqz7g/qfDCCdsFoL7ouTh1JkKuKTZQozpYl9wb
 8siF4FXyaYceW6D4N0H9EcGCzwDCdckpisAxuEVR4P0xqRQ4fp7NHQ4PGyK/cBSOn0os
 9g6sLGCg0kAXTUqSHItIJzHeNpKpdL7uvoMH930BB40GTSWjhPaTTuUcWxs2NHazNA8h
 E+kIjN9wBMhnviUGPNLIXm38dlqc4bupTaT50KGGDOS37lzIkXhIbIA66khPspGS63xs
 F+7bneW2RLX3N15fwjpZ7t0LSobHni9d0VzrbNKV/T1DQ/4c/4YWBAOs9fLkXvexsQcp
 BQAQ==
X-Gm-Message-State: ANhLgQ25gCkCbdl63f1cW67a0meLw8EnkPeT5DG70kzdezHxXZZCSm7S
 Rm7sv62dUVQnKlheMuG8yDYqvy5GlbYzoxuEVh4=
X-Google-Smtp-Source: ADFU+vvzdPOC10ayRuzmv0aPnbkY0LeXW35T6k+TrL1ntM9KFU2QUpIlsZ58R4NFesoLEMt5ue6yJscOMye1HpsJahI=
X-Received: by 2002:ac8:1bf5:: with SMTP id m50mr16128505qtk.200.1584866384369; 
 Sun, 22 Mar 2020 01:39:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200320215939.1168125-1-rosenp@gmail.com>
In-Reply-To: <20200320215939.1168125-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sun, 22 Mar 2020 09:39:33 +0100
Message-ID: <CAJLcKsGgX9JA3kNGhRivrB_-bPwkJGkBibAgWnrQLXWZEFYoPw@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_013946_406809_B903EA08 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: use the 64-bit version of
 clock_gettime
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

hi,

On Fri, Mar 20, 2020 at 10:59 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> Fixes compilation with musl 1.2.0 which removes this syscall.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  system-linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/system-linux.c b/system-linux.c
> index d533be8..902ab50 100644
> --- a/system-linux.c
> +++ b/system-linux.c
> @@ -2421,7 +2421,7 @@ time_t system_get_rtime(void)
>         struct timespec ts;
>         struct timeval tv;
>
> -       if (syscall(__NR_clock_gettime, CLOCK_MONOTONIC, &ts) == 0)
> +       if (syscall(__NR_clock_gettime64, CLOCK_MONOTONIC, &ts) == 0)
>                 return ts.tv_sec;
This breaks compilation on glibc

/home/dedeckeh/WDR4300_glibc_staging/build_dir/target-mips_24kc_glibc/netifd-2020-02-05-dbdef938/system-linux.c:2424:14:
error: '__NR_clock_gettime64' undeclared (first use in this function);
did you mean 'SYS_clock_gettime'?
  if (syscall(__NR_clock_gettime64, CLOCK_MONOTONIC, &ts) == 0)
              ^~~~~~~~~~~~~~~~~~~~
              SYS_clock_gettime

Hans
>
>         if (gettimeofday(&tv, NULL) == 0)
> --
> 2.24.1
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
