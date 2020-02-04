Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DDA152213
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Feb 2020 22:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyt7G0iaU8nthHKjRYP907XQ+97JuXHyv3KrM2E3ft0=; b=MWUDnaCcBMvNbo
	RO8jFpozItmtC76JRh4hvShbAUDqVqOJTPMcb+v7KxudcbWNzj0Hcv1Izr3pdB9XvNKFOCELXh5MM
	7nTum5JuJXGj1c3KbX32HCQ8657fNkwnv7MHvp12a6gHPjx0RsV7gmjBYES1xcjxBAjqpvaT630zv
	GsprtTcHN2Vg8ZSXlL3J9kwvSnXArfj7fSI8i2zjgMC6qjQvDBAkwIy7zgaT2BESi23PpxY/lTso+
	BTW0jL+jtjJqUFjovDqmYyOYzTLCjdhV1q6PQWVMDipBR8uVPI7WSGQkCXMgFrMrgdUkEUfnzxXI5
	8GeqloaEo3vUKVEGrR9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz658-0004tT-K0; Tue, 04 Feb 2020 21:50:06 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz64t-0004sJ-78
 for openwrt-devel@lists.openwrt.org; Tue, 04 Feb 2020 21:49:52 +0000
Received: by mail-qk1-x742.google.com with SMTP id 21so2532469qki.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 04 Feb 2020 13:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s9RX5LdW4pC1bV162MDIpom7/xxJL8/4kDUjrD+kN2U=;
 b=p+yQ5Igy+NsUTzmmIeuPSTp4Fx35JtsWN494m06wSZXnJb8WXVMftfdMczerzticX1
 iJMOUUAOZ9/44MrH4WZ2wwDTUHH7oYJIeoWsurg6+VQ8J4xqIMg8vy4OnDGwYcG1nqdF
 8pVEq/6PcTfY7Lil/57xeCbhFht83iZbd6uMgjdin1lO/zeoZ4emoJAK6WY4mQd0E+yS
 PCrwCTcgYJ9Seo0GePW+MJzyFsqOBCZGiMhA/ftzineMkIGeXeTM4fD2e6LsEIdHlujB
 QiEqYfL14/of//bY2bGe94Tuy9PatVEptfCS5F50cNDGW0vLSGRZDQqpDrn6TdjQJFaD
 djBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s9RX5LdW4pC1bV162MDIpom7/xxJL8/4kDUjrD+kN2U=;
 b=qN1G2HaVPYEhFMekblfitmqCUJh0lDfpkUk18/IXWEkkS3ea0W8fjMxQqCLTE0+aIK
 itu/7/waD3+It8xxLTIuif7WPKoXisF7nVNJriIUph6DkehMGOX9/9ufOn1eXGJsQMqp
 dQik6dHpL9aQDVLu9qyIytqsGTYQJowD8mAlBDJIXRv9p+o+2YRDc0ZmOlYCh6tk6zqq
 njtLX8UPZAQK1srxNLp68liEyBWuyjghnV+krf58OjpgU1VMMOr1KarhtlToFig1W8sn
 qBdt+t6FR8n8Ig1YsTdD4ksYXT541DXi6zF6zA3sT4qY/Q15/9H5WkS+n18TqrmI9Bmw
 Um5g==
X-Gm-Message-State: APjAAAUyLuvFr3z2EC2V2tHvqfxbU3jkQIQseRSj8DtkTX4wVmXSjDFb
 IBgmAnDMz+CkAeb+6itfO5Vcst92tB59qIBorPw=
X-Google-Smtp-Source: APXvYqzb+XemI8clDkUUImXIhJgCoknlgoF9Gmy0R3notHFziZD7nPBySgRvAZLQJG/jDqkQK/VidobPzqD+rxJAJso=
X-Received: by 2002:a37:8683:: with SMTP id i125mr5884744qkd.491.1580852988252; 
 Tue, 04 Feb 2020 13:49:48 -0800 (PST)
MIME-Version: 1.0
References: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
In-Reply-To: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Tue, 4 Feb 2020 22:49:37 +0100
Message-ID: <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
To: Alin Nastac <alin.nastac@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_134951_286553_59EAC40C 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix
 route ownership to kernel when IPv6 address becomes deprecated
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

Hi Alin,
On Mon, Feb 3, 2020 at 4:27 PM Alin Nastac <alin.nastac@gmail.com> wrote:
>
> From: Alin Nastac <alin.nastac@gmail.com>
>
> When netifd manages the prefix route directly, it will remove it
> the moment prefix gets deprecated. This will make it impossible
> for the target to send ICMPv6 errors back to LAN devices still
> using the deprecated prefix, thus breaking the L-14 requirement
> of RFC 7084.
>
> Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
The patch fails to apply with the following error message :

Applying: interface-ip: transfer prefix route ownership to kernel when
IPv6 address becomes deprecated
error: sha1 information is lacking or useless (interface-ip.c).
error: could not build fake ancestor
Patch failed at 0001 interface-ip: transfer prefix route ownership to
kernel when IPv6 address becomes deprecated

Hans
> ---
>  interface-ip.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/interface-ip.c b/interface-ip.c
> index 91c305b..ff8f219 100644
> --- a/interface-ip.c
> +++ b/interface-ip.c
> @@ -913,7 +913,7 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
>
>         addr.addr.in6 = assignment->addr;
>         addr.mask = assignment->length;
> -       addr.flags = DEVADDR_INET6 | DEVADDR_OFFLINK;
> +       addr.flags = DEVADDR_INET6;
>         addr.preferred_until = prefix->preferred_until;
>         addr.valid_until = prefix->valid_until;
>
> @@ -960,6 +960,7 @@ interface_set_prefix_address(struct device_prefix_assignment *assignment,
>                         route.addr = addr.addr;
>                 }
>
> +               addr.flags |= DEVADDR_OFFLINK;
>                 if (system_add_address(l3_downlink, &addr))
>                         return;
>
> --
> 2.7.4
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
