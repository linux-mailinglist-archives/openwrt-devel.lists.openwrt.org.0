Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D44518D9E8
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 22:00:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mOuawz9rNgRgCk4oy4Wfv9aHGM3WQ030CGj0HWRoxGM=; b=LXJiH3dBiKJ3vl94VST6Do9fU
	IElFs3WXynTEiiVWe65OARyAl91AP6J2KDVcY/f+yQpf6vgk+hlEDaTRVwj0mbKPVA5y5aOeyz7sg
	dwEcdGZolZOA9NxWQsQfLMXfTOpVSbOxzKe8SKssGmvcLJ1L/vLzhmQfRNJy6E1ga7bm+a2/ttmM4
	iq827XNfw1BQKMrPseb9G1VAfjuKL/ICTlI8gBHuEs3EVN/TeDzulJ3tEXWNCQFUiCZFRphGV45e1
	u5RZwDmvQOU3NUz/aXbEKIU3R1lWIBNAF/p6qFKLahO5BrbT/RogpJLUEpeaTj8cyVVfF6KLDhI2a
	+pPr2SwNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFOkK-0006e1-La; Fri, 20 Mar 2020 21:00:00 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFOkD-0006dT-TI
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 20:59:55 +0000
Received: by mail-qt1-x843.google.com with SMTP id i9so5633001qtw.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Mar 2020 13:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xTBkqXPA+NLv+IsCBjQr7oqLcZGGf+um/v+KxBVWx0Y=;
 b=hWU/dvqTGIvvVxgsaQEkBXXxa9voB7plYRm1g6TS9kItxzSK8wub5qgCg906CqmNdW
 ruOWFacEs7hQtIrcQ3o2n4xCoSKe/6ewGORgK36QP7GYib6QN6szm09x2ZaGCHPsnJWp
 Tn0zqZYoCj7JLf/tEaOMqG1qDvCINl8kUFnswgbEmhI3nQ9//OVttZZwEWMI86Z6XZ1S
 /guoMHN0lTf08Y584gybIya6y2dM3IdGOzvwVhbBoP74tx6HkNi2RzsszsM4FQbw+EAX
 HPtgLKdHd8UGXMmuYSK/V3Kow/AO5xA0zoUq9d7/JFhZoC2Rx1DMg6/lw+hdBKpfk0EG
 h51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xTBkqXPA+NLv+IsCBjQr7oqLcZGGf+um/v+KxBVWx0Y=;
 b=s0trrgEXEEd7L0FOqcj+hM8wwXlNAqQbudFzEhH2gj/1JLgGXepFru6IrovDxOQ1wr
 0jXuV7xfuXmJCPdMMUsyUKsERfgEEVPHjz2i3TacH6PHLv+vaVFZnKd5Ae30aXnPw/5q
 WWdy9qLo3HhWJijdRoQwp9/WHRRwoWHTf1VjWezR/EogPoTKbP1j0nR6/ZTXIowNP5Hl
 G5otUmn1pB5TO7fR47WviDMhLf40Hs8mO3eHiEn5J5h0tgQZZxL7SrygvWJfZvOYC5W5
 dZtwv+0TT6e8H47Gt1TVCTRI176rlU0HQuLrWPm7nxifKTf2xeGSSQgXgN12WiWaCaYv
 heiQ==
X-Gm-Message-State: ANhLgQ2FLJ/rRTlXz8LhU7uChBlkjOPEeX6OMir+j0I2elGm1tamWSn7
 agPadnk7kKFc006D9i1tzjSgJiDX36gHLybyqzE=
X-Google-Smtp-Source: ADFU+vvhUQjzUdnlrL7SsAEveg//ZEoUjWBWT33UX5JppYoYxrGAQrMcbw4iC3nE1SBLQGClfx0UGFXOWKqHTk0jN94=
X-Received: by 2002:aed:2a55:: with SMTP id k21mr10688489qtf.159.1584737991329; 
 Fri, 20 Mar 2020 13:59:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200319120320.28651-1-fe@dev.tdt.de>
 <18a31c67-73a6-e410-8ade-31aa445ea000@nbd.name>
 <e5b38741723f540699fc175c8fbd8206@dev.tdt.de>
 <4acf0592-cf45-15c9-3741-55b47fccc238@nbd.name>
In-Reply-To: <4acf0592-cf45-15c9-3741-55b47fccc238@nbd.name>
From: Wes Turner <wes.turner@gmail.com>
Date: Fri, 20 Mar 2020 16:59:39 -0400
Message-ID: <CACfEFw8p3rv5P+JcqqMJ-aa2F5AqGNBPYsR05YSxJN_LVoLYLg@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_135953_947024_25DEEEF2 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] netifd: add pre-up/down
 post-up/down callback handling
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
Cc: openwrt-devel@lists.openwrt.org, Eckert.Florian@googlemail.com,
 Florian Eckert <fe@dev.tdt.de>
Content-Type: multipart/mixed; boundary="===============0606492870652064728=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0606492870652064728==
Content-Type: multipart/alternative; boundary="000000000000090e3e05a14f91e0"

--000000000000090e3e05a14f91e0
Content-Type: text/plain; charset="UTF-8"

What is the reason that creating a script in /etc/hotplug.d/iface/ that
checks $ACTION and $DEVICENAME doesn't solve for this use case?
https://openwrt.org/docs/guide-user/base-system/hotplug

On Fri, Mar 20, 2020, 11:02 AM Felix Fietkau <nbd@nbd.name> wrote:

> On 2020-03-20 15:21, Florian Eckert wrote:
> > network
> >>> With this change we can decide if this is a user interaction with
> >>> CLI/LuCI,
> >>> because with the new callback mechanism I can set/delete a uci config
> >>> flag so
> >>> that the connection should really disconnected. And so does not
> >>> restart on a
> >>> failed connetion tracking again because the uci config flag is not
> >>> set.
> >>>
> >>> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> >> netifd already tracks for every interface if the user requested it to
> >> be
> >> enabled or not via the 'autostart' flag, which you can query via ubus.
> >
> > I know this is done wit the uci option auto for this interface.
> > But if I disable this flag, then on the next boot this interface does
> > not start
> > on boot anymore. I have to start this manual. So I think this is not an
> > option.
> No, I'm talking about the internal per-interface 'autostart' variable,
> which gets set to false if the user does a manual ifdown of an interface
> (but not if it just failed to start up).
> It's not backed by configuration and you can query it via ubus.
> (e.g. ifstatus wan)
>
> - Felix
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000090e3e05a14f91e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What is the reason that creating a script in /etc/hotplug=
.d/iface/ that checks $ACTION and $DEVICENAME doesn&#39;t solve for this us=
e case?<div dir=3D"auto"><a href=3D"https://openwrt.org/docs/guide-user/bas=
e-system/hotplug" target=3D"_blank" rel=3D"noreferrer">https://openwrt.org/=
docs/guide-user/base-system/hotplug</a><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020, 11:0=
2 AM Felix Fietkau &lt;<a href=3D"mailto:nbd@nbd.name" target=3D"_blank" re=
l=3D"noreferrer">nbd@nbd.name</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">On 2020-03-20 15:21, Florian Eckert wrote:<br>
&gt; network<br>
&gt;&gt;&gt; With this change we can decide if this is a user interaction w=
ith <br>
&gt;&gt;&gt; CLI/LuCI,<br>
&gt;&gt;&gt; because with the new callback mechanism I can set/delete a uci=
 config <br>
&gt;&gt;&gt; flag so<br>
&gt;&gt;&gt; that the connection should really disconnected. And so does no=
t <br>
&gt;&gt;&gt; restart on a<br>
&gt;&gt;&gt; failed connetion tracking again because the uci config flag is=
 not <br>
&gt;&gt;&gt; set.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Signed-off-by: Florian Eckert &lt;<a href=3D"mailto:fe@dev.tdt=
.de" rel=3D"noreferrer noreferrer" target=3D"_blank">fe@dev.tdt.de</a>&gt;<=
br>
&gt;&gt; netifd already tracks for every interface if the user requested it=
 to <br>
&gt;&gt; be<br>
&gt;&gt; enabled or not via the &#39;autostart&#39; flag, which you can que=
ry via ubus.<br>
&gt; <br>
&gt; I know this is done wit the uci option auto for this interface.<br>
&gt; But if I disable this flag, then on the next boot this interface does =
<br>
&gt; not start<br>
&gt; on boot anymore. I have to start this manual. So I think this is not a=
n <br>
&gt; option.<br>
No, I&#39;m talking about the internal per-interface &#39;autostart&#39; va=
riable,<br>
which gets set to false if the user does a manual ifdown of an interface<br=
>
(but not if it just failed to start up).<br>
It&#39;s not backed by configuration and you can query it via ubus.<br>
(e.g. ifstatus wan)<br>
<br>
- Felix<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.=
org/mailman/listinfo/openwrt-devel</a><br>
</blockquote></div>

--000000000000090e3e05a14f91e0--


--===============0606492870652064728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0606492870652064728==--

