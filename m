Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AF91509D3
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 16:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgN055eAIhAbxHSQyYibuqcuD3uJvT9BzYYhdDf+xQc=; b=HvKFJ+TfMvPTYT
	+S/T1ax5OoSqQ96Qfhr4jP9mWn9H1wbMcTBWsh5IBztSH4xXHy0heq/1KmM64/rbEE6rjQMdXSM5Q
	FIIcqQWolcpOo7L+OXOTokBSaYKwwFIIp0YXiKvcOSob9HJcv4RY3j94hn9i4BpQdvickkYygkbzK
	f+mquInKRPjPrwg4gfLEHxPgsOTWIZwTUIJX08b/QFWCPH29PILdNW1QXn4VUBKclLkbL/Fr+iX3r
	MxdGKKF1TuW19oHZ4BkRSBrc8GuLQM3HIkkFOVoxgTy4OCzeixKIns9R9+dJV+5WzdWikPAD5JTdD
	VmWtWaK5u7ZTkuQ+EBuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydg1-0004NS-8r; Mon, 03 Feb 2020 15:30:17 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydfs-00043C-2D
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 15:30:09 +0000
Received: by mail-vs1-xe42.google.com with SMTP id r18so9172561vso.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Feb 2020 07:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gWrsSdPpATm8XWeHCyyoR+FCq2VGJMK034IThlsLceY=;
 b=tnwfWzODsyZ+c3BOnnjM/m7NB8RSe/1+u+zQsKA1dPEUibzdZCcMNA9QAzDFFGEJnC
 o/45ixDzzE3vzQv3tk63a2qHFun5+QlJEPC7brT0XzkoaKPGpgUqK4uNGUVm34d1IBTY
 YFEqNbl+iTuvQ637TogYEr1DqlYKnHXE/fG/R231f0zoefkwI1VCI3tyrnzW3wiVc6UW
 dkBl0eULCT19k50KWMVdbrkYtd5kpRRDQG0kFxPwdRccVUzm3e/RDKEycw2gqSJd0Bw/
 Nc+LJeAo9PTLf/XhalEmVW2ToHJsmM9ZUKoQGTU1zB4vQRlhs83n0UMomfMvCiVNmRhK
 IGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gWrsSdPpATm8XWeHCyyoR+FCq2VGJMK034IThlsLceY=;
 b=JLv1h0tjC0kYDmFiMTBAv9wUGcXrodgq/+V025z6sQ39RZMfANWaigi4nLpbjs5jef
 auTcFbikszrxfVp5KhWxE+bIkSbv2bQwZDPQGZAnP9Z9/5d6UaCE4eIvnIT+rJXGOo+3
 nGGyCcWYcYmstVZ3kBInf0AUaj8IFwvM95l5ICfq4zlhxA8Dy5dnpWGZnd8JgaSo9Ip/
 0RyofwRPd1jfhYZeJ0LC7TdNCXjgrrWLP982/bOBBAvcL6VhBTfKSVKwGddofOgQeqh7
 W4N3X4lv/8awMRz5kRvj1hHBkvGGY+0MYgF2/rqxmxp+UH5YWmn1zZOzWT58KI8CGnY3
 ntYQ==
X-Gm-Message-State: APjAAAUdpEJ+kQ9zNcnwVfOMaqYX93WqTIZM2CGD7Vv7pLjEheca6hHJ
 2SkBmeNT4QaeQVlB3A/qo5x0RV0wrAiSAbTuKhc=
X-Google-Smtp-Source: APXvYqyrO/DsA4DwVTW4XMLjQvKyBcfTq15fOFLXCrQSxw59j5mCtQHSdx3TLJTil/lAb+s0ygf2dH+lpfSOQaMJpe4=
X-Received: by 2002:a67:6341:: with SMTP id x62mr14307000vsb.88.1580743806258; 
 Mon, 03 Feb 2020 07:30:06 -0800 (PST)
MIME-Version: 1.0
References: <1576665890-5819-1-git-send-email-alin.nastac@gmail.com>
In-Reply-To: <1576665890-5819-1-git-send-email-alin.nastac@gmail.com>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Mon, 3 Feb 2020 16:29:55 +0100
Message-ID: <CAF1oqRA7T1Ts1Y=s6zduhkHhZ4etkuvWrRrhAqJ=7A0YUKiHLw@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>, Hans Dedecker <dedeckeh@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_073008_121439_BC10D3C9 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] interface: add IPv6 addresses without
 IFA_F_NOPREFIXROUTE
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

On Wed, Dec 18, 2019 at 11:44 AM Alin Nastac <alin.nastac@gmail.com> wrote:
>
> When netifd manages the prefix route directly, it will remove it
> the moment prefix gets deprecated. This will make it impossible
> for the target to send ICMPv6 errors back to LAN devices still
> using the deprecated prefix, thus breaking the L-14 requirement
> of RFC 7084.
>
> Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
> ---
>  interface-ip.c | 18 +-----------------
>  1 file changed, 1 insertion(+), 17 deletions(-)
>
> diff --git a/interface-ip.c b/interface-ip.c
> index c159e09..0958fcb 100644
> --- a/interface-ip.c
> +++ b/interface-ip.c
> @@ -905,20 +905,14 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
>         struct device *l3_downlink = iface->l3_dev.dev;
>
>         struct device_addr addr;
> -       struct device_route route;
>         memset(&addr, 0, sizeof(addr));
> -       memset(&route, 0, sizeof(route));
>
>         addr.addr.in6 = assignment->addr;
>         addr.mask = assignment->length;
> -       addr.flags = DEVADDR_INET6 | DEVADDR_OFFLINK;
> +       addr.flags = DEVADDR_INET6;
>         addr.preferred_until = prefix->preferred_until;
>         addr.valid_until = prefix->valid_until;
>
> -       route.flags = DEVADDR_INET6;
> -       route.mask = addr.mask < 64 ? 64 : addr.mask;
> -       route.addr = addr.addr;
> -
>         if (!add && assignment->enabled) {
>                 time_t now = system_get_rtime();
>
> @@ -939,10 +933,6 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
>                                                         addr.mask, 0, iface, "unreachable", true);
>                 }
>
> -               clear_if_addr(&route.addr, route.mask);
> -               interface_set_route_info(iface, &route);
> -
> -               system_del_route(l3_downlink, &route);
>                 system_add_address(l3_downlink, &addr);
>
>                 assignment->addr = in6addr_any;
> @@ -955,7 +945,6 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
>                                 return;
>
>                         assignment->addr = addr.addr.in6;
> -                       route.addr = addr.addr;
>                 }
>
>                 if (system_add_address(l3_downlink, &addr))
> @@ -976,11 +965,6 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
>                         }
>                 }
>
> -               clear_if_addr(&route.addr, route.mask);
> -               interface_set_route_info(iface, &route);
> -
> -               system_add_route(l3_downlink, &route);
> -
>                 if (uplink && uplink->l3_dev.dev && !(l3_downlink->settings.flags & DEV_OPT_MTU6)) {
>                         int mtu = system_update_ipv6_mtu(uplink->l3_dev.dev, 0);
>                         int mtu_old = system_update_ipv6_mtu(l3_downlink, 0);
> --
> 2.7.4
>

This patch has been superseded by https://patchwork.ozlabs.org/patch/1232885/ .

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
