Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A76021B9C
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 18:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9fFhvvtBtxrahywtYp4YosANGblQCIppcm+nYrvDrQ=; b=FRAswQxYjqQAz6
	lLe6Fte0okbwdTy8oRo3ah4b0+WmMaZDb4ypUfis9NtDrJyw97iYP+aZhrvUkkgW6nmG4PDqTYfmt
	YQguLZ1H2m1bmexMVU3e7Hm4oLtSN9oZou/TVT8Dth7F0sBsxIdZPpRePcf7UieF61iWj4UOGwYPk
	uSXF9/bfKonxAU8p+FXref6s87C39CIe4xdmcS/qf7JvK1mi4kLXvuUHXi2zLdVfnR0ATP580lxMP
	DgbHJpRyRBzVPJQ5p4bdUTWlbCMXc/a8iuGI8PuDY+sVCjNuwklOeKj8kMB/LDYl8XNhBnpmPV15B
	oxAqCT1eUvZoMYMcII3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfi7-0000H7-P3; Fri, 17 May 2019 16:27:55 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfi0-0000GO-B0
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 16:27:49 +0000
Received: by mail-qt1-x843.google.com with SMTP id k24so8669415qtq.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 09:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qHkSJs1eV/OLIF7P73HPti/OWYkAJi/4ZMjxwdLI480=;
 b=SPGpe7DXd4vQIXKNpjZ2PVWU01e5g8UhstWXtz+vgZoRZIEWK9wix7UNNyR5/D3yVd
 csYBpWJrSSr7IevXvw1W3P76N2SJ3nMD/ZYRh7Z7HPGYOTkHSsvcKKkblcuc4HBDo4hl
 EMrwdGdLHAlCBZTmhOFdk95ubDid1zl7LSZmPuaM/VrccACtTRIsuhedvQcdJtjXOcNq
 B/35YHY2mjCJ75PMdGd3klbxS38wN9iwFNUNU2kLpdqMGFhZvOQPyI5Ma59whsJhsWQ5
 VEu04t7BplzjbJ7wCl3VRCas6+FcR8uYIKtWyZ0E+T9xSEPdpxoA4/oF9+nRNitbVIes
 hftA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qHkSJs1eV/OLIF7P73HPti/OWYkAJi/4ZMjxwdLI480=;
 b=SxavtikkSEZyLcO1xzsZAlsFjCUYGhqGbAYJbDCwpc91MgyMS6QMqzpK5E2m0ENdx8
 MwVHSaZSNtAMlboLbvOgAC26aBefVQ+l1XOh+URmuzUolKU2zLpjzKcCOVcdRWVxw4Lx
 TfpxwoRUJE9ZEC0z9wzpDuFlszYKRs6YfYu3XrzyNegkAyx7Jf0YVh6sqjlmxpo2nV0n
 d3HCRlA50jFdP+dEssSPOXBlg7ukXe1aS4M0CaMDhgSBYYoAvsKOPFmIV+XIcvNu09kP
 iFH/QBL1kqKet+rXJeN2Sihu9MlJ9niZyZKMuB3V35UVxm/+ETdY8jnLnFvV0sL74v7i
 3VVw==
X-Gm-Message-State: APjAAAU3oKMsJVe/6kxqYYVL2tZ01nmFYRSmy5nmBWfKCbD0C9mEpDBC
 h313tWs1wtBY9ticHyhdwbiLvXZCzxwQA+pyRp0=
X-Google-Smtp-Source: APXvYqyKyHgUfwCq+ipqsRsvS34yoMRWZVLLLiVEE2dq/jq15jjEWMjqlCoxNud4hN/iMOJqI8xlcgbpG3Qjnfhr+wg=
X-Received: by 2002:a0c:b5ad:: with SMTP id g45mr21172193qve.231.1558110465311; 
 Fri, 17 May 2019 09:27:45 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
 <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
 <AM6PR03MB4821953F914D9BAF83521992B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
In-Reply-To: <AM6PR03MB4821953F914D9BAF83521992B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Fri, 17 May 2019 18:27:33 +0200
Message-ID: <CAJLcKsHoFxKzCuPQWW-pP8pOjQMiWVOs=ZL-Ms9baF9j-hDXNg@mail.gmail.com>
To: Tan Xiaofan <xfan1024@live.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_092748_405683_A20E258D 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 NORMAL_HTTP_TO_IP      URI: URI host has a public dotted-decimal IPv4
 address
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi,

On Thu, May 16, 2019 at 8:00 PM Tan Xiaofan <xfan1024@live.com> wrote:
>
> Hi, the email replace TAB with SPACE, so apply failed.
> So, I put the patch file in my server
>
>         http://167.88.124.64/0001-interface-ip-fix-find-locally-addressable-target-for.patch
Can you share the network config which requires this patch ?

Hans
>
> >
> > Hi
> >
> > On Thu, May 16, 2019 at 5:09 PM Tan Xiaofan <xfan1024@live.com> wrote:
> > >
> > > Hi, I add some explanation to the patch
> > >
> > > From 57007eef77f266e40640a2c76aabd56fd37553f7 Mon Sep 17 00:00:00 2001
> > > From: xiaofan <xfan1024@live.com>
> > > Date: Thu, 16 May 2019 21:12:47 +0800
> > > Subject: [PATCH] interface-ip: fix find locally addressable target for p2p
> > >
> > > In case of tunnel over PPP(such as gretap over l2tp): tunnel interface
> > > use PPP's peer address as remote address, netifd script will call
> > > proto_add_host_dependency function, then netifd will search which device
> > > can reach to the remote address. Before the patch, netifd don't consider
> > > the PPP interface can reach to the remote address, so netifd will select
> > > default route to remote address, it will lead to remote address unreachable.
> > The patch fails to apply with the updated commit description; please
> > resend after you've created the patch via git format-patch with the
> > updated git commit description
> >
> > Hans
> > >
> > > Signed-off-by: xiaofan <xfan1024@live.com>
> > > ---
> > >  interface-ip.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/interface-ip.c b/interface-ip.c
> > > index 6900cd7..8d5587c 100644
> > > --- a/interface-ip.c
> > > +++ b/interface-ip.c
> > > @@ -196,6 +196,9 @@ __find_ip_addr_target(struct interface_ip_settings *ip, union if_addr *a, bool v
> > >     if (v6 != ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6))
> > >      continue;
> > >
> > > +  if (!v6 && addr->point_to_point && a->in.s_addr == addr->point_to_point)
> > > +   return true;
> > > +
> > >     /* Handle offlink addresses correctly */
> > >     unsigned int mask = addr->mask;
> > >     if ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6 &&
> > > --
> > > 2.17.1
> > >
> > >
> > >
> > >

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
