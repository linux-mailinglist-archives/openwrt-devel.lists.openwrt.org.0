Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDBE193A1B
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 09:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ABeH49E3SXbTpXyi7ejla6iKhlz9Wy1Jejp8+mUZbs=; b=hymFnDJqpC6foH
	EuuS4g512xsP/wQka+FnMtL3gKEHtNG6HAKkNODVD/ZaouGd3SY2AeepKlHaS4m6vjcAit65dzJiL
	vDqYkpsEJM0IhvZmcLsPkZBM5zK+bBlK7kQCJAXccza94+mo/W69va6KQs+mYpa0E4ZdvdD5MqdVE
	+cgkpoQ/M/qTIxbWhxA+pH1oiKnPvaRhtimv0aJ8ZQr3JEIJP5MbqT9BP8rjudXhH9lkuxfnkRDsE
	zzSL+Zbvf9/w2FkNU+rdd3puvOQDRsdLJ26xyX7ycTNAvpkJfpgd6FCHhppfod2olXXrKv0v69KFh
	HmtEjMmilliCj8XsjcAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNRE-0004Wr-Vp; Thu, 26 Mar 2020 08:00:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNR4-0004WP-4E
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 08:00:20 +0000
Received: by mail-qt1-x843.google.com with SMTP id c9so4516824qtw.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 01:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uy6KxsJc5Dq/POi/Mumc87e+4KM3oVjb1zShR4bYT0o=;
 b=qqYiFewYReBcr5h77g+OHOuJdIvwmoiz9Nlb57fVhIqYciI6YhzKTVC8k3kFnnHsWk
 DOVxfWXIz9cVHRStztFfYWsxC3LIn1v87BCpXCmBnYHlxLlHJ91zstBdbabee1QFDCio
 upWM7yuVHR4YI/g24le/HUbC2TdHgXxSQI9qjNw5KZolxe/eBp2mMY6//XjSOqQkfvjs
 BKkuwJZ4iZhEWFn32OPyXs/A/amMwmbUDBOcL3Zb/R5KSmKz5qU9rdCAXdvOqdahdf3K
 JW3xMqifKqyX/XPOuYZG2y6RH3BhBY/FclIN+dQ2Kz0E4ch/vGjzRhcgpfTjDNf7vS6k
 Qmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uy6KxsJc5Dq/POi/Mumc87e+4KM3oVjb1zShR4bYT0o=;
 b=OSlr3N6Yr/jt8ybO07aYSQbMxZV79Xq6DIW9FZVIGscA6yTUOEUEu7R9Y9W2IDtake
 IC1IO+9uU6bwuVV/eqbBjgzPcbJ/X3fRaCOSjAJincbrr8JOdDyymDQryV4qA1lVu+jG
 zPZ3gGAacN0zS4E/pzu7Xh0CTN3zDyhSLrtgDgoRcJoDwfSox6keZjKjj2Y7r7TEd64X
 qY2SolruH7p612Dli7TEkQ1sxe2JHEtSLJ1nW04jVGoSAtLOjNRwrwFLK6C/mTX3rZg2
 hNjDp/pwkFcIPJFvT1Uf0z5V9sNuk+XHu8zQWLWgM6obm3k1QfKIjtw21iBSnrWegeEq
 bdRw==
X-Gm-Message-State: ANhLgQ1twM0qZtNhO8DpX9LjKif/vN12EPx1zOSFx97Q2T4YXxI0EwUh
 AuaVW1ibFhekBNZvIejWlIFHUaLyHAnNd+rQMDg=
X-Google-Smtp-Source: ADFU+vsjz0TP1Bpnt9EWkGSW8XIKWGGwhW9zNj8fFjE4/ptk44eUppeWd/BZ7vNTw4AjdKHYFXJPFLhPGoDIIneBL9s=
X-Received: by 2002:ac8:4f04:: with SMTP id b4mr7242915qte.0.1585209617035;
 Thu, 26 Mar 2020 01:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200326005327.1383130-1-rosenp@gmail.com>
In-Reply-To: <20200326005327.1383130-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 26 Mar 2020 09:00:06 +0100
Message-ID: <CAJLcKsG7Os0oQ1OTZ+FonFMHgGxQg0ZiWadFQ66goHE1N=0KMA@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_010018_865924_D6665300 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Mar 26, 2020 at 1:53 AM Rosen Penev <rosenp@gmail.com> wrote:
>
> Fixes compilation under musl 1.2.0
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  service.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/service.c b/service.c
> index 97b6f91..f9d3b48 100644
> --- a/service.c
> +++ b/service.c
> @@ -122,7 +122,7 @@ service_timeout(struct service *s)
>         time_t t = monotonic_time();
>
>         if (t - s->t <= TOUT_LOOKUP) {
> -               DBG(2, "t=%lu, s->t=%lu, t - s->t = %lu\n", t, s->t, t - s->t);
> +               DBG(2, "t=%lld, s->t=%lld, t - s->t = %lld\n", (int64_t)t, (int64_t)s->t, (int64_t)(t - s->t));
Please use PRId64 iso lld

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
