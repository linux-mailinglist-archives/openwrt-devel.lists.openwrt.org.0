Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8097A196467
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 09:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPBlO/zRbyp7yezghAScbU8qnzPjYTArRT2foV2WRgU=; b=hTKIngc997miMf
	tjpx2BcGN208PuRxb70hVrhf/Ge5kvqVu2HUTYLPundfpOwXSqr5uQTiTXZPAAjsD/TqmkiuLM0/h
	LC7KvnVVKnLjeQaeg9OdgJ1XBjVrGPbvyOJ2EicB2h73nJcuIUN6Bjkg8RK36pbf1p234SgFJ45rG
	McfKxRovP7DqXziMg5E8hKOiaO80AaeXFXF/IsTy0I95oB/el3S6fb49wBDTZRHjV2nj+/yTncj8d
	EkbMnrE8zXGfXC0LGBRtScmpSgS9SzB7BPgiU0G8Lr8sBjVmsNhEFEFK0Na8KszUY5h24rfm+AHFe
	5suOtH62q6zI8P97uEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI6na-0003iN-Ep; Sat, 28 Mar 2020 08:26:34 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI6nS-0003h6-4o
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 08:26:27 +0000
Received: by mail-qt1-x843.google.com with SMTP id t17so10709811qtn.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Mar 2020 01:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mpOLi+iIte9axWn/L74bk4kQ9jXmZBuiH1B4EehT7t4=;
 b=TyNJigk0qR72G6llPNnL23Nck0NHZJWiKdESmqGI/60ws4cok624fD4tpl4oJxR/9y
 e0tCHtPWMFJuzT+GiMdiYFi9zJlAbyZaOt7AYyKQcY7mQ0DQm/N/zuzs+g59bwF7Qn7i
 dwaeRkFaW8ik6hH0ZzxhOxFuOME5MMVs/Z+A2RMUPQMdHxr1HKEoho3S43sCDz3NL24Q
 Xqxz/BWk6zja2SOB40oIIiyyzblb9sWJu39q1wESo3teTHmP04a5u9WIVBESBgNYOLyS
 x2L/ku3Q9M+bYlk/WbDJwBYXbOi1PAw9+y4oD4+4b7EtWfn7IEokOxfQxHlPrnPAiDvA
 mzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mpOLi+iIte9axWn/L74bk4kQ9jXmZBuiH1B4EehT7t4=;
 b=cClneNMXJzoowrGCfbQNwUoZLvo6jDi2mrkt1XjNkbKAfmA196SDqRxIGpoVV4oJg1
 nQrEQKMtfvvMKTAN6s+DbNW6gMvJ6Yd3Cixa3XoX4I/LzEBl7e46lI0qB9ImKjKkrgKO
 el/FrImKRa6YUbQakE0xVKIwDzbA6WPV8YtMt5PI0gJ/JUslS4BoONJ1CFKe3jacHFEE
 kUAj0lpoW+ylxC2fHfR4+EmsH1XSRsHGu9oSoezuJRoiMut0BQB+ejR6InGba5st3F3w
 I3+yunGgGO6I+VGfdmab6JWAxjT46y9uQKTIriOEMO84Q9pUs3dAtB1g2oKhrrr75RMR
 SC/w==
X-Gm-Message-State: ANhLgQ16t7hTk4doCe8O3WU3gxr+6lCuEQ0JleGe5AW7QMIaM7U5XN9l
 1HSjqtl94tYR5RlfA272pTZ19P9yrrxwJiuAg1o=
X-Google-Smtp-Source: ADFU+vsKR96UstPOUthn4/GXaSKPNctpZB9Zat7Qk983+tzAdkxq7Iq8hTa25v5lCGakZEpYZ7N8rxiVlcBIwzolG2M=
X-Received: by 2002:ac8:33d2:: with SMTP id d18mr2888204qtb.325.1585383984152; 
 Sat, 28 Mar 2020 01:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200326230027.3771-1-rosenp@gmail.com>
In-Reply-To: <20200326230027.3771-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 28 Mar 2020 09:26:13 +0100
Message-ID: <CAJLcKsF6B-q5rNN07k647i7zK-OLoDwym3dTQvgCkuGFdk0daQ@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_012626_213442_2A1DB553 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] umdns: fix 64-bit time format string
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

On Fri, Mar 27, 2020 at 12:00 AM Rosen Penev <rosenp@gmail.com> wrote:
>
> Fixes compilation under musl 1.2.0
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  service.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/service.c b/service.c
> index 97b6f91..2a7c28f 100644
> --- a/service.c
> +++ b/service.c
> @@ -122,7 +122,7 @@ service_timeout(struct service *s)
>         time_t t = monotonic_time();
>
>         if (t - s->t <= TOUT_LOOKUP) {
> -               DBG(2, "t=%lu, s->t=%lu, t - s->t = %lu\n", t, s->t, t - s->t);
> +               DBG(2, "t=" PRId64 ", s->t=" PRId64 ", t - s->t = " PRId64  "\n", (int64_t)t, (int64_t)s->t, (int64_t)(t - s->t));
This will fail to compile just like the odhcpd patch as it should be %"PRId64"

Hans
>                 return 0;
>         }
>
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
