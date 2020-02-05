Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2953F152799
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 09:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9Mpx9iTumdIbpveqaJzlnYO3Ih33X9trYWfQGKBaD4=; b=q3e6zQol3i+Swo
	iisHHb0UBBhtLXreNpCIsTgGYl1OWnYb2fu5deq2tyEXJDSusgkMtcu1e8trjca7EHFz4okXtPdqv
	8tSpApwUR9T4uVGNzypT/cM+WCwex21p0HFaJIBxxuASmTf1zdx+6iKUOthP5vO5pzzoe/wwTW8cJ
	bCag/TEOkkcQsDLGAOuTsTZB3i7x7tWOhyzb5QnP9x9IqQP/xdO7jEeugCPLth4pBNt8Q5qghsLR3
	t82U+/eGyU+HoAsntaqj4jAOl+WyfMTeXkzEg4pe/t78HrhlmgqS89oHR1BnUePfDKQ1A5kIlGfbQ
	fcDOSGgjT/1/kuhIj2Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izG8V-0005Lz-Do; Wed, 05 Feb 2020 08:34:15 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izG8N-0005LT-IE
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 08:34:09 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k188so804500vsc.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 00:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lv6C+TzFwowMhQlRmUCN4LOSCB/EE3V8mUzvotp6GAk=;
 b=HgSZXV5F8NS/grb/Nv2WRArUdbZiImE5Py2wQXVC6+A4qizERXyWe+MSyygRqloxOg
 ijifLzALZlGNUqXFHcnXMzAgyqLHoRY4TmofTqcJAJe/TWYIhHKSQWFan9bC2+nYSFZF
 S4EjEQLmCeBUmQqew77DGC+VPSy2Y/yqO0as4FbMX5NqIcGKKuAl3RGyv3i7ZKirhyZZ
 PiMgl3rJF945XxdKADu25V+WMZ7loPcA0FR+opnlhS/DQqruktEN1wDNQ/5VXylHoP8M
 DaWaj9+vzLULuRvgGNTzNpnZxTUcL1DweIkZFzBJroVIk6uuivXKG2rjghamV8kecrB0
 ep9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lv6C+TzFwowMhQlRmUCN4LOSCB/EE3V8mUzvotp6GAk=;
 b=FKaKOX6qmP13YtSOnX9BxzTW0HgiIaR+TA2OI9bE84ZENC4oJBXQTio6zOITdX3O+Y
 eysUYzTf+S6vJ+1uG1IQsVG48IpFiFuPQl5RNHfAkVG57HWdiMzCeXC9wJQZwmYjDTzB
 vSmvr81R3bZ19o9bekBSbIfMJzdedQfOwbpZIf5sNOGm7Zz/CSvLD3wiwFPgaLLiHp8v
 L2BNr09EYFH+hLkve1GXgoeSwtUuSy/zRbNFfq7m++HsrTPJ1TYXEUH1+nS2q1alcwKy
 fPZ65+xyfiQjO8aurYJsmXKbKLpEp7RgoLY4BwgdxxzUInAQQeMJQuIIYAUlQNhqH4Hr
 IW/Q==
X-Gm-Message-State: APjAAAWqO0CJ0UlsdIoBQHisGE37IOzqDxOTfGwQmR7s2HO4vdbrzPH7
 PrFUjbN/2fDyx6T2bxNtWl0iWWFcH4iy92HqByc=
X-Google-Smtp-Source: APXvYqxQ6NgQBUNLv7UHZpWMp+evLFLBLK9PFreEbcHv3lWgrX4vmOLjJAlWMCiqxT8yjdGgvUnqdx9DCtQJpXPVxbI=
X-Received: by 2002:a67:fd0d:: with SMTP id f13mr21455646vsr.125.1580891645784; 
 Wed, 05 Feb 2020 00:34:05 -0800 (PST)
MIME-Version: 1.0
References: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
 <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
In-Reply-To: <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Wed, 5 Feb 2020 09:33:55 +0100
Message-ID: <CAF1oqRBa5vabU4Am+Q-Fqr+2mp-LUsLyjYqWzrzMnWSF3PQ4Cw@mail.gmail.com>
To: Hans Dedecker <dedeckeh@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_003407_630615_7FA7D369 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
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

Hi Hans,

On Tue, Feb 4, 2020 at 10:49 PM Hans Dedecker <dedeckeh@gmail.com> wrote:
>
> Hi Alin,
> On Mon, Feb 3, 2020 at 4:27 PM Alin Nastac <alin.nastac@gmail.com> wrote:
> >
> > From: Alin Nastac <alin.nastac@gmail.com>
> >
> > When netifd manages the prefix route directly, it will remove it
> > the moment prefix gets deprecated. This will make it impossible
> > for the target to send ICMPv6 errors back to LAN devices still
> > using the deprecated prefix, thus breaking the L-14 requirement
> > of RFC 7084.
> >
> > Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
> The patch fails to apply with the following error message :
>
> Applying: interface-ip: transfer prefix route ownership to kernel when
> IPv6 address becomes deprecated
> error: sha1 information is lacking or useless (interface-ip.c).
> error: could not build fake ancestor
> Patch failed at 0001 interface-ip: transfer prefix route ownership to
> kernel when IPv6 address becomes deprecated
>
> >                         route.addr = addr.addr;
> >                 }
> >
> > +               addr.flags |= DEVADDR_OFFLINK;
> >                 if (system_add_address(l3_downlink, &addr))
> >                         return;
> >
> > --
> > 2.7.4
> >

I've downloaded the patch from
https://patchwork.ozlabs.org/patch/1232885/ and applied it
successfully with a git am command line:

nastaca@cplx1037:/usr/localdisk/openwrt/netifd$ git am
~/Downloads/OpenWrt-Devel-netifd-interface-ip-transfer-prefix-route-ownership-to-kernel-when-IPv6-address-becomes
-deprecated.patch
Applying: interface-ip: transfer prefix route ownership to kernel when
IPv6 address becomes deprecated

Alin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
