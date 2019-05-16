Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E6320D39
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 18:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AklduzX7bon8bcPrHwInxgc8oWuJJM8Q5/vdMLZpaLY=; b=Nu+F5LyjmUyVH/
	mLibYjDkz+Zh6XJQZ3zMtY/B1Xnc3wf9/ETA/nuAbvG4X94fyu8+7FQ55emet3/u+I02rkBExyT4k
	p6AItqs6cNWOw9NXUquo2qscXgwiqhfBI8rIZ5PiLQDcNo28IjIdxBI4vub4gnSnMyYBBNJG+oR9a
	RRkDQjb4gqX9UBVqUquF5CNuAolMyeoAu/ihifxDW5Gme5DMrkTF7o8BAFrsDAtUKjaV/z39S8kYI
	qgk83q+v5Jp4x+jgX1JWJOsQpphI9K/mk0we9VkAMQ4XcJWzpeO5ODZmThjEZWGFjGJL8oCPfvqiI
	ep9ISBA11H+mVCaycYog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJRe-00083x-3R; Thu, 16 May 2019 16:41:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJRG-0007kx-KT
 for openwrt-devel@bombadil.infradead.org; Thu, 16 May 2019 16:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hv5dWv8zDSbD1PyszCaV5POoQUiklNh9bMZWRNsZo2Y=; b=CiHeJozEU4dZE2jy4bi6OY+lD
 S+7/PhmzFJX13RtMT2PbnTEqM9zwCvvDMSji8K+p1MA/Ml4wVHkO1YZRWLwlJVfLHrJ0U9ih6bn0p
 dDClROPVQerb6sn3DytDzGXo61fXll0WHfKNcdTCY5w9gQobFUKlGZCJ6f2Yld0GOHJmStqEPTuds
 Zsq2EbSQaq3MY2GSnkV6ViX9jbSONPXEUKtVwJaPkJhQLVkisAX9E81j9EfnohLaaD+0wOQiDGroU
 u0eqdq3Y3eyPHIKPzMBDN8E6AItXM8oFXOc+k9vmSCpjvEOe2JktLN7agQ3i+b4B1cPyepHBLKdUL
 1kildh5lQ==;
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJRD-0008Kl-JZ
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 16:41:00 +0000
Received: by mail-qt1-x841.google.com with SMTP id y42so4678943qtk.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 09:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hv5dWv8zDSbD1PyszCaV5POoQUiklNh9bMZWRNsZo2Y=;
 b=nYBB44JTfLC5ipEmJqyaK37ma5Kfu3PEIWhwxNI3Y1epWTPKXfTWk5Fu/TLDncHbe9
 uvZO4Z99EJvxdlo3wpCGnGkSusvWFkcB1pKeC3XDwYjhd2VYF0NpxRTjtUX+FIDLjQPN
 CyR6Nyxz3rEe3QDQmwj7yFco2C5Yw/Q8Amok0XCoklp3yM6QhuVOvPved4mavT4b+Pil
 N6xKV2pizsBp0iwJaDLoqdaJYMD752ftdIKLWTWy+qEaJByb3ATmG4hEz+JkK0e0LoDx
 /pZD/AOWJNFOvPiQ3Ws5XTATPphwBIUENUlKYxDlh32it4UDaA8c/sZPJI3UM9hhr8Y2
 XNeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hv5dWv8zDSbD1PyszCaV5POoQUiklNh9bMZWRNsZo2Y=;
 b=mrHyxELRidOK+wfQ8EAHyiHEDDzNYJzYJG+7Y1HXq8ce4Arin9Ug4mh23pP+L1fDIB
 YC1lkBEwxu3bhGX8hA1/yLxtv+pecd+NY8QeSMJQFEedur5721aK5J9GhfFfWqryjT6z
 8x4KjH6ALCqXJs2puAfuyEKKXx8O2kkDLoV96Zjn4L2OGUc/8tHgEhoLdOxKxDOVGryt
 tvk/PeK6/m57sdNYTF3iK3vYdxLbig5hBicZOfiNHb/yXJWDdOqmaMpL9xwj4r8u3QdI
 JInfVtpGhyCht4DrwZXMGqIbEbnEcgcuN3K7R7TVe+7CGiai52hs7WSUyz1ZhTJrgLRW
 Bljw==
X-Gm-Message-State: APjAAAWaHbj/BaAAOOUcHC/gKSUYGjTVdhD/VevJCZxZabWvUZwfo1DF
 q7CulGIFn1C61yWlkn4JtwUdHm/5rCZuokvBfuI=
X-Google-Smtp-Source: APXvYqzPTORra2wVa79H4MX22uTVFxlENpRSKf0xfwpFY91CS7qf9i/DSix5/msI5dYqLWJemLOkhMuXNb0kVKW790Y=
X-Received: by 2002:ac8:2ea1:: with SMTP id h30mr2338843qta.333.1558024851380; 
 Thu, 16 May 2019 09:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
 <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
In-Reply-To: <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 16 May 2019 18:40:39 +0200
Message-ID: <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
To: Tan Xiaofan <xfan1024@live.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_124059_648960_E5F7E519 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally
 addressable target for p2p
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On Thu, May 16, 2019 at 5:09 PM Tan Xiaofan <xfan1024@live.com> wrote:
>
> Hi, I add some explanation to the patch
>
> From 57007eef77f266e40640a2c76aabd56fd37553f7 Mon Sep 17 00:00:00 2001
> From: xiaofan <xfan1024@live.com>
> Date: Thu, 16 May 2019 21:12:47 +0800
> Subject: [PATCH] interface-ip: fix find locally addressable target for p2p
>
> In case of tunnel over PPP(such as gretap over l2tp): tunnel interface
> use PPP's peer address as remote address, netifd script will call
> proto_add_host_dependency function, then netifd will search which device
> can reach to the remote address. Before the patch, netifd don't consider
> the PPP interface can reach to the remote address, so netifd will select
> default route to remote address, it will lead to remote address unreachable.
The patch fails to apply with the updated commit description; please
resend after you've created the patch via git format-patch with the
updated git commit description

Hans
>
> Signed-off-by: xiaofan <xfan1024@live.com>
> ---
>  interface-ip.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/interface-ip.c b/interface-ip.c
> index 6900cd7..8d5587c 100644
> --- a/interface-ip.c
> +++ b/interface-ip.c
> @@ -196,6 +196,9 @@ __find_ip_addr_target(struct interface_ip_settings *ip, union if_addr *a, bool v
>    if (v6 != ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6))
>     continue;
>
> +  if (!v6 && addr->point_to_point && a->in.s_addr == addr->point_to_point)
> +   return true;
> +
>    /* Handle offlink addresses correctly */
>    unsigned int mask = addr->mask;
>    if ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6 &&
> --
> 2.17.1
>
>
>
>
> >
> > Hi,
> >
> > On Thu, May 16, 2019 at 4:01 PM Tan Xiaofan <xfan1024@live.com> wrote:
> > >
> > > From d0e1cb81b45ec825199d499cda9c8daef94e13a5 Mon Sep 17 00:00:00 2001
> > > From: xiaofan <xfan1024@live.com>
> > > Date: Thu, 16 May 2019 21:12:47 +0800
> > > Subject: [PATCH] interface-ip: fix find locally addressable target for p2p
> > The patch fails to explain why this change is required and what
> > usecase/problem it fixes.
> >
> > Hans
> > >
> > > Signed-off-by: xiaofan <xfan1024@live.com>
> > > ---
> > >  interface-ip.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/interface-ip.c b/interface-ip.c
> > > index 6900cd7..7ab8643 100644
> > > --- a/interface-ip.c
> > > +++ b/interface-ip.c
> > > @@ -196,6 +196,10 @@ __find_ip_addr_target(struct interface_ip_settings *ip, union if_addr *a, bool v
> > >    if (v6 != ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6))
> > >     continue;
> > >
> > > +  if (!v6 && addr->point_to_point && a->in.s_addr == addr->point_to_point) {
> > > +   return true;
> > > +  }
> > > +
> > >    /* Handle offlink addresses correctly */
> > >    unsigned int mask = addr->mask;
> > >    if ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6 &&
> > > --
> > > 2.17.1
> > >
> > >
> > > _______________________________________________
> > > openwrt-devel mailing list
> > > openwrt-devel@lists.openwrt.org
> > > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
