Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C2196464
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 09:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIKMpEnq5QPeE9GZ9/YbPuZlAdKdNegmI5qO4mZX7sg=; b=H/77ZXon8CteQo
	L6l0aoSTrGjkCnngnQzAUFlEaS/kMcbt/wcq/vp4EvRv1er7o5J2DlRa1u/pXCJndBztAu97lNa81
	1vLQU4FfyDWcrAzIRs6gfB1wlAIx/MZbkvfGPoWydp9ud7pZyUZXNj4dEMrNTfq9wY9UkpmMaDRl4
	aE5KzQXM5XFgW96oGdugZE6I6SQ3vozG5tUqqWdZRagePxeGWNQxYtIkhHLRsLyMj788yG2hxzJ6H
	Ks97aj/AQbjvLHKy2DfPxACAfvrVIP1s1We9JTn2+VcOG89dmVJ7VNt+ObWbqSv5Gv/Edj8fFTtEV
	Q45cWYwisoZ17pqui05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI6lR-0001zx-VJ; Sat, 28 Mar 2020 08:24:21 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI6lK-0001zY-DQ
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 08:24:16 +0000
Received: by mail-qk1-x741.google.com with SMTP id d11so13517709qko.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Mar 2020 01:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RZFLnM0Wi6HeWtG08NKYJli46Ldn+XUe4ep0KcvZ47U=;
 b=IafG9aRHDxW9IYFB1jgHS3m5KI4AYHDDhUYUmmUa+/ogdlSl9b5CCsKpdKTZ4ZSG+e
 3dCwlj0VIhrHK+YMccADP5khnVS1ri++Ale4B/Z1dV6y4JBaXP47LPzenk1tPVx2eT3U
 NM34L57r6cjjEWGwJVc9D6ySd4Lnho67vMfc4lrUpfButmvuHVK4gfhVxCBblITI7anf
 UWmXprpV6W1FSehE8lQ7LJJ5aLOqQE2bwrZ4Cln0fTS9e7JKA98rU8kxTQr2KJ7PVmou
 3FNjtX/WMQfSunCi+EVYCtag/yDWRGywTYvwC3UPavEWkqUJuzjcpPppDSbL+YrIkH07
 8cmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RZFLnM0Wi6HeWtG08NKYJli46Ldn+XUe4ep0KcvZ47U=;
 b=enXCCs0iVBXelN28psmdsrkNzI8gxn9e8U0+LIlXNwBDR/2JhK+MFAizmEi4VbrTbW
 u10OCe+SSGqVjX1OEZ3SklXKFtF9821uR4eS3XEU3m0WrNwTuczFrpq54Kt4QyQX9SoX
 zIy3paAMtpJILxo78SoBD0VhXApkuXKrRZVIlM+hopTZc211ZQ/DzI5gbl53vu+YkrW8
 HtJCdxeprCOM2q8k7CEGKmPX/+jDtv3M7KRptdz57HIoS/Y67s3X5FZ7ZxWI52IXF67a
 ltwFepHA5b4gkQ97Nb6E3StEGZNewAzV6njX8GWg02MCU/N+VYUTUqywyLNQoTrfR3Ro
 lJxQ==
X-Gm-Message-State: ANhLgQ3pMTtRSGjShZXTxL3Wv1bV8m0lLqriP83Qz9kWNxdxGNCPplqh
 FRvDCkKH+uaRLTvOsH+HO21+mHL0UYak85ihdP4=
X-Google-Smtp-Source: ADFU+vv6LmWAizCM8JoI9vUjiPEVR+B2MdqSKZHNkrzaviOtFx9jTDm7GkO1clg6ywSlOEnN2cNf/P/vZKcBTzio5LA=
X-Received: by 2002:a37:b702:: with SMTP id h2mr3047292qkf.491.1585383848538; 
 Sat, 28 Mar 2020 01:24:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200326230712.186209-1-rosenp@gmail.com>
In-Reply-To: <20200326230712.186209-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 28 Mar 2020 09:23:57 +0100
Message-ID: <CAJLcKsGoHJyF7t82Zti8sbP7pmeAvGq8xKhCYBt1jy2A8eYmYw@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_012414_481702_4181FD56 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH] odhcpd: fix compilation with musl 1.2.0
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

Hi,

On Fri, Mar 27, 2020 at 12:07 AM Rosen Penev <rosenp@gmail.com> wrote:
>
> SYS_clock_gettime is gone with musl 1.2.0. Switched to the function.
>
> Also fixed two format strings that fail as time_t is 64-bit with 1.2.0.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  src/dhcpv6-ia.c | 8 ++++----
>  src/odhcpd.c    | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/src/dhcpv6-ia.c b/src/dhcpv6-ia.c
> index 1a13945..9f5c77e 100644
> --- a/src/dhcpv6-ia.c
> +++ b/src/dhcpv6-ia.c
> @@ -338,12 +338,12 @@ void dhcpv6_ia_write_statefile(void)
>                                         odhcpd_hexlify(duidbuf, ctxt.c->clid_data, ctxt.c->clid_len);
>
>                                         /* iface DUID iaid hostname lifetime assigned length [addrs...] */
> -                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %ld %x %u ",
> +                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s " PRId64 " %x %u ",
>                                                                 ctxt.iface->ifname, duidbuf, ntohl(ctxt.c->iaid),
>                                                                 (ctxt.c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
>                                                                 (ctxt.c->hostname ? ctxt.c->hostname : "-"),
>                                                                 (ctxt.c->valid_until > now ?
> -                                                                       (ctxt.c->valid_until - now + wall_time) :
> +                                                                       (int64_t)(ctxt.c->valid_until - now + wall_time) :
>                                                                         (INFINITE_VALID(ctxt.c->valid_until) ? -1 : 0)),
>                                                                 ctxt.c->assigned, (unsigned)ctxt.c->length);
This fails for me :
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:
In function 'dhcpv6_ia_write_statefile':
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:341:54:
error: format '%x' expects argument of type 'unsigned int', but
argument 9 has type 'long long int' [-Werror=format=]
      ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s
" PRId64 " %x %u ",
                                                      ^~~~~~~~~~~~~~~~~~
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:345:9:
         (ctxt.c->valid_until > now ?
         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          (int64_t)(ctxt.c->valid_until - now + wall_time) :
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          (INFINITE_VALID(ctxt.c->valid_until) ? -1 : 0)),
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:341:83:
note: format string is defined here
      ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s
" PRId64 " %x %u ",

           ~^

           %llx
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:341:54:
error: too many arguments for format [-Werror=format-extra-args]
      ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s
" PRId64 " %x %u ",

>
> @@ -368,12 +368,12 @@ void dhcpv6_ia_write_statefile(void)
>                                         odhcpd_hexlify(duidbuf, c->hwaddr, sizeof(c->hwaddr));
>
>                                         /* iface DUID iaid hostname lifetime assigned length [addrs...] */
> -                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %ld %x 32 ",
> +                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s " PRId64 " %x 32 ",
>                                                                 ctxt.iface->ifname, duidbuf,
>                                                                 (c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
>                                                                 (c->hostname ? c->hostname : "-"),
>                                                                 (c->valid_until > now ?
> -                                                                       (c->valid_until - now + wall_time) :
> +                                                                       (int64_t)(c->valid_until - now + wall_time) :
Same here :

/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:371:54:
error: format '%x' expects argument of type 'unsigned int', but
argument 8 has type 'long long int' [-Werror=format=]
      ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4
%s%s " PRId64 " %x 32 ",
                                                      ^~~~~~~~~~~~~~~~~~~~
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:375:9:
         (c->valid_until > now ?
         ~~~~~~~~~~~~~~~~~~~~~~~
          (int64_t)(c->valid_until - now + wall_time) :
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          (INFINITE_VALID(c->valid_until) ? -1 : 0)),
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:371:85:
note: format string is defined here
      ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4
%s%s " PRId64 " %x 32 ",

             ~^

             %llx
/home/dedeckeh/OpenWrt_staging/build_dir/target-arm_cortex-a15+neon-vfpv4_musl_eabi/odhcpd-full/odhcpd-2020-03-14-6594c6b1/src/dhcpv6-ia.c:371:54:
error: too many arguments for format [-Werror=format-extra-args]
      ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4
%s%s " PRId64 " %x 32 ",
                                                      ^~~~~~~~~~~~~~~~~~~~

Has this been compile tested ?

Hans
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
