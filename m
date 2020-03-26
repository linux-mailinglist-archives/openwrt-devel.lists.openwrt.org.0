Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D970B193A09
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 08:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCFWX583Mg8CIMgH5gPynea/3JvszIQnDV7GMQjXQkI=; b=qqq/yYa9TwJ5vZ
	06ZgsJywSC6NfWa/ytSe5cRjwPfn5k2AC+TAkywRZ4ZkpwDgWWucB4LUy/TpoDnX2asF+s+IcqwAF
	2ZrMi1p+vGgdAg4iK7xhtQ9KL6y+oggQhbY+cLY7rJzSY4o955thnM014ZNwhlC7Gn9vKnQITqsNr
	vvnjcwQlua917tkEjX4TQpIbSFwsPQNXsmvNWP17Wzv/Yan7Ux19lCn+8sGC6bMEwCCpXniJEToKz
	LL7Xa50WS/V2UNObH0+700B6ebS3xVDBl0euNwfQDwtltb5J3D2a18WolvwQ/XiCGvf11oZZkPLy9
	iLhefNjUdJhQEXdn5IvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNQA-000461-VQ; Thu, 26 Mar 2020 07:59:22 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNPu-00040Z-Tt
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 07:59:09 +0000
Received: by mail-qt1-x841.google.com with SMTP id f20so4523264qtq.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 00:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uG/sPzIpfokgyUX09FaxSvXY1JGSFDxXUOylPjcXXKk=;
 b=eH0Ri5Cr3tJVbZlg5O7Jm2meSZj0vqLtTjI4fL+8VP+yfScNEUAJQxpDyOgJq9xADX
 ElrAAkDSVSGgfw19fiyhEPT9+8Rwg+YUz4VoxQZEuf+93sZOIKgux6YqLQC8PD1wfd8z
 aNTEfot//eN7GxULOHJyf7v7nLUvQCdtKAmec1HweoIQ7ulmZpQwiqYT4NYq+zRhzyH4
 iN4eLqtRsshdy2QRdEeyfZarDwmGe4O7f6xHjumtilPr1A1m2d0TnmIKpuzVJ8VqAT9U
 86aFiFyWd54r4Y+YOSLEpLeSFvX5zOc345Eo8fpa9xUt40eeIJRwxGGOz1zdRE88pSqY
 Ulmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uG/sPzIpfokgyUX09FaxSvXY1JGSFDxXUOylPjcXXKk=;
 b=apx3f+HhFO2lHN15aoLLo/y/14AbwByRclXVt+Vm2cyM7OSO6apowgIU8rwXsbVSOE
 BvPBVsEkzdI+cOOewgwtPgTlzFAdJg//yUj6o8PmHdC24ZcAmUTQrpOnsHPDey2DsOP3
 OOnJTqrqR3CamIlDzuHnbCRjiT2jvpZVo5Gc6ROlLsE1xM8o2OqmDoWFce2luIUy1EpF
 YuxnSQWuwlMpT7XtGqwI8uIJQGmmnxfcg4Stza2NcvO2MYyuf3uxvgXGCvDDswGJZUWQ
 DhVKDT+j39XxAa/feeyalAtpNhB3NWU4/T4Et7Y3wkN2Mk6EYqr4QM4MIsOmxt9C3g/N
 n2OQ==
X-Gm-Message-State: ANhLgQ3VB+5CdkYy+mcuwIFt8ENLYnQJuta6zS2BvYCC7iTkguqo2w0U
 3kDwXb2rxr894y1ZYig3TbKvWdGeavwBAIDy274=
X-Google-Smtp-Source: ADFU+vs0xiE3f9zLjvUybCjNnhYD6FrC7tVbyMItFkT+847BKRyqswaQu4ZmnHQLNoXBNYoI1P92hoZOlmjNnnM45hQ=
X-Received: by 2002:ac8:1bf5:: with SMTP id m50mr6838717qtk.200.1585209545401; 
 Thu, 26 Mar 2020 00:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200325231319.6778-1-rosenp@gmail.com>
In-Reply-To: <20200325231319.6778-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 26 Mar 2020 08:58:54 +0100
Message-ID: <CAJLcKsEdm+EfNBg41fAQ7NUVoZJ66o9hefHTcknnhLoptUmYXw@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_005907_063337_1EB6FC3A 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCHv3] odhcpd: fix compilation with musl
 1.2.0
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

On Thu, Mar 26, 2020 at 12:13 AM Rosen Penev <rosenp@gmail.com> wrote:
>
> SYS_clock_gettime is gone with musl 1.2.0. Switched to the function.
>
> Also fixed two format strings that fail as time_t is 64-bit with 1.2.0.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  v3: no need for linking to librt
>  v2: switch to function
>  src/dhcpv6-ia.c | 8 ++++----
>  src/odhcpd.c    | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/src/dhcpv6-ia.c b/src/dhcpv6-ia.c
> index 1a13945..01b0939 100644
> --- a/src/dhcpv6-ia.c
> +++ b/src/dhcpv6-ia.c
> @@ -338,12 +338,12 @@ void dhcpv6_ia_write_statefile(void)
>                                         odhcpd_hexlify(duidbuf, ctxt.c->clid_data, ctxt.c->clid_len);
>
>                                         /* iface DUID iaid hostname lifetime assigned length [addrs...] */
> -                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %ld %x %u ",
> +                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %lld %x %u ",
Please use PRId64 iso lld
>                                                                 ctxt.iface->ifname, duidbuf, ntohl(ctxt.c->iaid),
>                                                                 (ctxt.c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
>                                                                 (ctxt.c->hostname ? ctxt.c->hostname : "-"),
>                                                                 (ctxt.c->valid_until > now ?
> -                                                                       (ctxt.c->valid_until - now + wall_time) :
> +                                                                       (int64_t)(ctxt.c->valid_until - now + wall_time) :
>                                                                         (INFINITE_VALID(ctxt.c->valid_until) ? -1 : 0)),
>                                                                 ctxt.c->assigned, (unsigned)ctxt.c->length);
>
> @@ -368,12 +368,12 @@ void dhcpv6_ia_write_statefile(void)
>                                         odhcpd_hexlify(duidbuf, c->hwaddr, sizeof(c->hwaddr));
>
>                                         /* iface DUID iaid hostname lifetime assigned length [addrs...] */
> -                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %ld %x 32 ",
> +                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %lld %x 32 ",
Same here

Hans
>                                                                 ctxt.iface->ifname, duidbuf,
>                                                                 (c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
>                                                                 (c->hostname ? c->hostname : "-"),
>                                                                 (c->valid_until > now ?
> -                                                                       (c->valid_until - now + wall_time) :
> +                                                                       (int64_t)(c->valid_until - now + wall_time) :
>                                                                         (INFINITE_VALID(c->valid_until) ? -1 : 0)),
>                                                                 ntohl(c->addr));
>
> diff --git a/src/odhcpd.c b/src/odhcpd.c
> index 4b8e589..26094b1 100644
> --- a/src/odhcpd.c
> +++ b/src/odhcpd.c
> @@ -440,7 +440,7 @@ int odhcpd_urandom(void *data, size_t len)
>  time_t odhcpd_time(void)
>  {
>         struct timespec ts;
> -       syscall(SYS_clock_gettime, CLOCK_MONOTONIC, &ts);
> +       clock_gettime(CLOCK_MONOTONIC, &ts);
>         return ts.tv_sec;
>  }
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
