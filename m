Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9D919EEAC
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 01:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jS3lyEMG2X5T5mnUHzvFRw03LVp0aoqnf5rJiv8Zl1Y=; b=b0S5R7Twr6yEIcNjCKzC8Qj/y0
	alCZHJ9j3202bOIGtL4Aj0UYE3bqeEnoSKLX84ygCsf5HvF4C73dBNLBR0/ijOvmuJqi3SGEveLJD
	44zKbkIh17fOUrBYOFJT7rbWmM47Ls4ioq+qZqAeOatZFx8cjsWxzEEEUvPkS6PbhqvLNZJUqtS0p
	Ai2IkJONpEGjGuVmAYMo1x0jHT4U6akSWJPDRperrmgBci6o7jNk88WSQVJKpC1WLZn4RtlzJjM7r
	8RCGgre6/IkkrTEQlveXHYKhqOE7uCbigcEzDpgwJfoLYXXDtmT/M8RbUYGm/ji37sHiJkrGEK/DF
	iiSnOuDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLF1t-0006Cq-KB; Sun, 05 Apr 2020 23:50:17 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLF1h-0005IQ-VD
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 23:50:07 +0000
Received: by mail-oi1-x244.google.com with SMTP id d63so11588645oig.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 16:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=7w/+FzW4wiDCiGG9kQtzkAd1A6+qVdlHyd62Y9IsC08=;
 b=SB0fVHZebMsIinJI0FD5qQgnNDshnx8d+/R8fK1yAxan0d0K/g4EEad3YLzBMQMZUL
 mMwCdHb7iGnxJc/hKmOXuKAUbZHwKw1JgEl7Vn13Z3QoB5EiCpLrdDfL3fN38itUEKgr
 bQ/0lZbyZ2JyesGTfHl0kFux7z5yCOg8RVaZlJ33QQcA5rI4iosjJXMC0q4U0/tOUlho
 FifCenu/loozHjglOclUkom5MeXCJJxZ5j5cZ/jIlqWOz/7vl0sVPZUt8T3tF4bdCiOT
 cIkBIYp2zqnKUyTac7nXhBCHgpCA8zYasEhpZWbcBNgF87l3nrRnPB+yR6XTLb+NOT5Q
 Au1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=7w/+FzW4wiDCiGG9kQtzkAd1A6+qVdlHyd62Y9IsC08=;
 b=Gt7JYc40318qYAHumabWnwvkcXNx75Zlu7A+JPObGaS3fIN7Ud98FhJzK9Ya+KW/kn
 CxIDbUKvKwJJfild8FKZJY5ZAz1MhjqJIYGi/S/oWftHmSPFwE5iEc6CKxvBn803txYO
 1Po1ukMN0ThLD91WThB2+3up9kJ+lG+L5srwLcbm+vvyUbneHp/MDJK9CY4VDErlBvpC
 BnF4UdHG3wZGkQM2uJnWmssWkvC3IbWEzROuLeT5QWJb7KIk6UZeHNVi1RqtoMbNkmIL
 5CphV3dkM0dXiOXFOZoDNfvlGNJ+e2p9iEd5VRZ++AZ0svUaubpm2kwRFutGoB/2fabC
 zy1Q==
X-Gm-Message-State: AGi0Pua/GSjYUInRn/ZCxfWWqMPtXJT/YZ8CrPEMi6QeADMqBz9qCaB9
 RCMenFG+31v03s9kLetprJO57AsI3n8UHGTmhZhfrMlc
X-Google-Smtp-Source: APiQypI40erAsQ6tcrzxzl9oDcHq/QYhVbbriLQeGKeYwik8DPRzkyuUQRVoWu9jzeRGnhqQQC4JWYfMQ2603kteETU=
X-Received: by 2002:aca:574a:: with SMTP id l71mr10928479oib.148.1586130603776; 
 Sun, 05 Apr 2020 16:50:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200405234803.631826-1-rosenp@gmail.com>
In-Reply-To: <20200405234803.631826-1-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 5 Apr 2020 16:49:52 -0700
Message-ID: <CAKxU2N8FkP0w6qGcWDh-+410KZcmBx8XFw-c+wRZ-FuRHfA-0Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_165006_019727_CB5EB3FE 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Apr 5, 2020 at 4:48 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> SYS_clock_gettime is gone with musl 1.2.0. Switched to the function.
>
> Also fixed two format strings that fail as time_t is 64-bit with 1.2.0.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
Whoops. accidentally sent this. Changed status on patchwork.
> ---
>  src/dhcpv6-ia.c | 8 ++++----
>  src/odhcpd.c    | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/src/dhcpv6-ia.c b/src/dhcpv6-ia.c
> index 1a13945..93bbe45 100644
> --- a/src/dhcpv6-ia.c
> +++ b/src/dhcpv6-ia.c
> @@ -338,12 +338,12 @@ void dhcpv6_ia_write_statefile(void)
>                                         odhcpd_hexlify(duidbuf, ctxt.c->clid_data, ctxt.c->clid_len);
>
>                                         /* iface DUID iaid hostname lifetime assigned length [addrs...] */
> -                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %ld %x %u ",
> +                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %" PRId64 " %x %u ",
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
> +                                       ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %" PRId64 " %x 32 ",
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

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
