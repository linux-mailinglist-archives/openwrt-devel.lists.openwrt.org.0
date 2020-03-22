Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A260A18E7E4
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 10:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yhivzI++VwATPco7CqFSjQY0dE5H6GEcHuGZ7Hvneg=; b=Irf0n+p9ML7juj
	AjpJRtQkUcnwGpsMD7/OYBN6KJ0DGYa1mHpSyHLlLGRkNHP8ToHmUcHPY31gt9Qy+bDT44prp3Tdm
	rOSLDxHDNnDsVnZYN1Tw+wZT9fr5rUp0DWOgOWEp3iXTV+4kTQ8IuMyY+v7Tmx/tNHsnKIUXbUANw
	s5ifyMTYP8JSFU4VohCalNdQGv19bDELwzYPGFmN1bQYGWUV6EhB6q0nLurtbBESWgH4gAn6WVy94
	3YyyDA9W/ukqd6oSyugARyxNYdQ+J6Jm2fJZcx2qZJOtdzWKHTq8jwhG8Oy76yjp0y/CWPxhiMANz
	9iJvckeEeJM/g/RVvJRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFx3y-00050Y-Vs; Sun, 22 Mar 2020 09:38:35 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFx3q-0004zr-Ka
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 09:38:28 +0000
Received: by mail-oi1-x243.google.com with SMTP id b17so11554310oic.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 02:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yNWVP+eg+0ZKpVb45WlG3b2kRwjqKxy+rr5vhqh0Vs8=;
 b=UqtOcyBohGPNOZeOKUslH4d+HJEL05WSVHYIEalKCSp3jHeRBUFXLpnuOoQ0CUvVBr
 VWs9xRu9bDDyl+4SkGeFIngsH8ayUZnm3YUDUko1yE0A5mpAIwHJ5pQY4D0Yw8epiK6h
 Tm+f617hZ7RhtrGHPwMWqobWnCTi8TJR7SAvRtzFv75vQzFh4LMe2aTftb56tCeHVlBu
 Tko3CBqiNV9WjSgOXS7mWM79N95vSEpFgcerySd4T1mXlBZZgWBmfBpZQ46ibPq7pnw2
 yHWMEK9GPMah8r0gYEHHMQKv9Cz9Z41EAqbyDnfA4N/7hA2yVRc/8afxMm446XvRndoe
 HQow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yNWVP+eg+0ZKpVb45WlG3b2kRwjqKxy+rr5vhqh0Vs8=;
 b=s0PFpxVt+IqcZlaCJGfO8SEcko1Ji0VnGjG7LcBp2xdErPn+ID5cl/pZnw12u308vU
 Por6nrRNK9Ghl7Y/aVJCWoPE2Xl3RLUCy5S6k+E+C50c1q+XmtHNwgQ3Lpbu08LICW0P
 zH6Vkm8mEQ+1mZlkEt89rbI7y9WcnRSXvk/jcs2bo6dbQ4AsWM3q7HLoA6Tuqu/KutGq
 /qRGAz2Eh0KyBTeH8+hVLhYgclRPbhoPT011CSGENDtreMDgDwjkLp6D2HHgKTbZ8BpX
 8jmn25NPZB6RfuQf4cE07V3h5WUiXaMcbbeGZiKsMCft63PZmMrIFQpjxoO2Kesxx8LO
 XxHg==
X-Gm-Message-State: ANhLgQ2ce7xrZIJ4uAmvN86Oem/quMhZPhwxSNDMEypLTv8g6N/APCi9
 pJJqOgEmMgmw6Bp5cjehWJoZCzyt2/OQV+s6fc4=
X-Google-Smtp-Source: ADFU+vv4mst4sLH3xlmP7jTtFDPaRYWknLYosRHPC6/H/9YXa3ExeFMEzuUhE2RE0fOLSiIiolq8SwPSsje+94d9rFU=
X-Received: by 2002:aca:d68a:: with SMTP id n132mr13708663oig.40.1584869905808; 
 Sun, 22 Mar 2020 02:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200320215939.1168125-1-rosenp@gmail.com>
 <CAJLcKsGgX9JA3kNGhRivrB_-bPwkJGkBibAgWnrQLXWZEFYoPw@mail.gmail.com>
In-Reply-To: <CAJLcKsGgX9JA3kNGhRivrB_-bPwkJGkBibAgWnrQLXWZEFYoPw@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 22 Mar 2020 02:38:20 -0700
Message-ID: <CAKxU2N8jJ+vzKFcCgnjOVxNdw30Ooh5eVZZYpMO+zNnTVewimg@mail.gmail.com>
To: Hans Dedecker <dedeckeh@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_023826_676780_BEB5F68B 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
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

On Sun, Mar 22, 2020 at 1:39 AM Hans Dedecker <dedeckeh@gmail.com> wrote:
>
> hi,
>
> On Fri, Mar 20, 2020 at 10:59 PM Rosen Penev <rosenp@gmail.com> wrote:
> >
> > Fixes compilation with musl 1.2.0 which removes this syscall.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  system-linux.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/system-linux.c b/system-linux.c
> > index d533be8..902ab50 100644
> > --- a/system-linux.c
> > +++ b/system-linux.c
> > @@ -2421,7 +2421,7 @@ time_t system_get_rtime(void)
> >         struct timespec ts;
> >         struct timeval tv;
> >
> > -       if (syscall(__NR_clock_gettime, CLOCK_MONOTONIC, &ts) == 0)
> > +       if (syscall(__NR_clock_gettime64, CLOCK_MONOTONIC, &ts) == 0)
> >                 return ts.tv_sec;
> This breaks compilation on glibc
>
> /home/dedeckeh/WDR4300_glibc_staging/build_dir/target-mips_24kc_glibc/netifd-2020-02-05-dbdef938/system-linux.c:2424:14:
> error: '__NR_clock_gettime64' undeclared (first use in this function);
> did you mean 'SYS_clock_gettime'?
>   if (syscall(__NR_clock_gettime64, CLOCK_MONOTONIC, &ts) == 0)
>               ^~~~~~~~~~~~~~~~~~~~
>               SYS_clock_gettime
lovely...

I guess it has to be converted to clock_gettime.
>
> Hans
> >
> >         if (gettimeofday(&tv, NULL) == 0)
> > --
> > 2.24.1
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
