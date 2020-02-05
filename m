Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEAD1531FB
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 14:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06aeClw53KH2FBLM1DdhC8EEvt41sRgGyhCY97iZwx0=; b=Sf4QIm6isy2CPO
	GO1xodNqb/MsCwcnbw3TUB3cdTkGb2osFgzs5r/diHSb1KatqwFNTkHYw1wkOXjaWJHGbJKxNaPEX
	sSH0Bulq3iSz/3mwT8526fS2+B+HM17JinRv69w8ndDDSuiPazEcYFCBUKIPZIoarhcKQh4HANpdj
	xZIytS+i8fOa3/Gv1qPWRkH6SYP1isWf6FGrzV8212TANsooWfgXF9I2NI+y6zxN63eVfjBwq0WU/
	e+A1/5RyKKQutultbCxD2L7fRh+Qj+e+l7Z9IhgH46C2d3F/nKywas5GVxvKtvs2shg1fBWDXYt5J
	UmyercqMpdbIwrbajvMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKsq-0003fn-AB; Wed, 05 Feb 2020 13:38:24 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKsc-0003fS-3T
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 13:38:11 +0000
Received: by mail-vs1-xe42.google.com with SMTP id k188so1317011vsc.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 05:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aTBJ/QB7OGXekvtVj0jD1dqRU4rSbYyEf5noIGQOJu8=;
 b=uoi5F8ikLpmHbFHe/yXcR3tA6NnmRz+AwMxBLmpBhy6J8MlDB4gAuYRHoFnL23/0xK
 3wW4DoHVOgcOAnIYtRkrJX0tF5Ee17KNNwzMfYEyadII+56EtUO38GGQ4PZFloZKHC35
 p3cSVJPzMHRRbl+ziGDL5nUEAP84IJPMXLS3Mw6bPwA9tXst3Z0pnL9fZiwW46PA4Few
 QIl9iTjA3eE/dZrmq2jvUm3IZgXWkrtatfKWjee8Yufy8ouPoZnRWrSZB8FWPKnOVpQv
 jap2hiFbzZ+N0Nxeq1d+fYTqfR0z85Flu7jMa2Yix/Npi7HDJ/Wq7l+cZkud3H+VjhpK
 P3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aTBJ/QB7OGXekvtVj0jD1dqRU4rSbYyEf5noIGQOJu8=;
 b=PxosxCueepqhKvkg+OR1ZvBBqeqyZOE0GdQRjCSsxlKQIQgQZrTsBL2hrYNLMko/Zd
 HkzTVldL7yXGwAkqhYTe2CdDAWxr0GBgP4crTCBjlyrn3P+0QyyDmBQt2+nG8CGawaNV
 w6iVjG/ZNH+dtPHmVjpDuUBQt9Z6SoPuIKfGCEYjr22qgua09PNRGF7sjhJTrP6eznfv
 8PsiTkFPPxV6zZHgbkRB7FBaeCc4nV+FSn7+tHdl2pbgnw8XagKTW6swUEb72QnAuBmK
 rvnKd2PWlvrc6VouGiET8PZz7ZFEIRaz1bW0t0tzatRTIoIo2jNk0CkQ47lf7rRbgMaA
 pu+w==
X-Gm-Message-State: APjAAAVbmdtR1XW+klGthvqzgrHuxkf868Kx7GjV8Jiz55tRLHY/TNXd
 hf0XbpsqMYCdLLOjwnus1BNZaj8lfGxQx+CK1mTgnyJL
X-Google-Smtp-Source: APXvYqwSDiRNIDpYAqCeS6T6mHk8Zn5ackE+a8NUb9fz42jNSHFQkUERvCMyiPVIQmYxA63Ru/rPxge20wc+NwnIfdE=
X-Received: by 2002:a67:6485:: with SMTP id y127mr22102974vsb.54.1580909888902; 
 Wed, 05 Feb 2020 05:38:08 -0800 (PST)
MIME-Version: 1.0
References: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
 <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
 <CAF1oqRBa5vabU4Am+Q-Fqr+2mp-LUsLyjYqWzrzMnWSF3PQ4Cw@mail.gmail.com>
 <007e01d5dc23$b9107fd0$2b317f70$@adrianschmutzler.de>
In-Reply-To: <007e01d5dc23$b9107fd0$2b317f70$@adrianschmutzler.de>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Wed, 5 Feb 2020 14:37:58 +0100
Message-ID: <CAF1oqRC6z3+YqpmByiyJ0x-2h5bcaE21HRHc4a6HvdCDaZd-xg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_053810_142644_C6EACDA7 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

This patch has been superseded by https://patchwork.ozlabs.org/patch/1233845/

Alin

On Wed, Feb 5, 2020 at 1:56 PM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> works for me as well.
>
> However, I'd prefer a shorter commit title, e.g.
>
> interface-ip: transfer prefix route ownership for deprecated ipv6addr to kernel
>
> Best
>
> Adrian
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> > Behalf Of Alin Nastac
> > Sent: Mittwoch, 5. Februar 2020 09:34
> > To: Hans Dedecker <dedeckeh@gmail.com>
> > Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
> > Subject: Re: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix
> route
> > ownership to kernel when IPv6 address becomes deprecated
> >
> > Hi Hans,
> >
> > On Tue, Feb 4, 2020 at 10:49 PM Hans Dedecker <dedeckeh@gmail.com> wrote:
> > >
> > > Hi Alin,
> > > On Mon, Feb 3, 2020 at 4:27 PM Alin Nastac <alin.nastac@gmail.com> wrote:
> > > >
> > > > From: Alin Nastac <alin.nastac@gmail.com>
> > > >
> > > > When netifd manages the prefix route directly, it will remove it
> > > > the moment prefix gets deprecated. This will make it impossible
> > > > for the target to send ICMPv6 errors back to LAN devices still
> > > > using the deprecated prefix, thus breaking the L-14 requirement
> > > > of RFC 7084.
> > > >
> > > > Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
> > > The patch fails to apply with the following error message :
> > >
> > > Applying: interface-ip: transfer prefix route ownership to kernel when
> > > IPv6 address becomes deprecated
> > > error: sha1 information is lacking or useless (interface-ip.c).
> > > error: could not build fake ancestor
> > > Patch failed at 0001 interface-ip: transfer prefix route ownership to
> > > kernel when IPv6 address becomes deprecated
> > >
> > > >                         route.addr = addr.addr;
> > > >                 }
> > > >
> > > > +               addr.flags |= DEVADDR_OFFLINK;
> > > >                 if (system_add_address(l3_downlink, &addr))
> > > >                         return;
> > > >
> > > > --
> > > > 2.7.4
> > > >
> >
> > I've downloaded the patch from
> > https://patchwork.ozlabs.org/patch/1232885/ and applied it
> > successfully with a git am command line:
> >
> > nastaca@cplx1037:/usr/localdisk/openwrt/netifd$ git am
> > ~/Downloads/OpenWrt-Devel-netifd-interface-ip-transfer-prefix-route-
> > ownership-to-kernel-when-IPv6-address-becomes
> > -deprecated.patch
> > Applying: interface-ip: transfer prefix route ownership to kernel when
> > IPv6 address becomes deprecated
> >
> > Alin
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
