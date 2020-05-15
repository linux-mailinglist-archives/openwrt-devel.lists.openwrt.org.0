Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAFE1D473E
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 09:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2ARrPnQwt+O0hzdtNoA/hTNL30ABYnC71tTDLmaus4s=; b=pyfFGqjKwE1h2eNEpLKSz9rkI
	wUMG1gZmicsTpaQL9WYFQHy+QSOiUbzEPuyI9WOe886zH2VWm6tIK3i2egA3GXe3o6wa3zLFsz34H
	xN3RAopcqmPD8Dhwn0Pf9WTgA+xr/Nm5P2/gqXIesP08Bv+mnv2GRUvCwtGnM9FZN1X0kL22YpJl/
	oBqxDEluUFjTpmQeXyvA4X/M2C92neQBso5Far3o6uTsG+rZNqwg8DsPI0+P5nUj1d1wJmriMl97H
	CSN27SvvpjmanHATk/V8aPG2sXMtmLdGk4zeF/cNARZzuotIl7ppm1FAauPpnXVgQTyhWazp72qJ6
	72czfP6OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUx7-0004wY-8a; Fri, 15 May 2020 07:40:17 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUwx-0003et-MD
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 07:40:09 +0000
Received: by mail-lj1-x234.google.com with SMTP id l19so1140072lje.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 00:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ipWzs9/kagceWh47deBFYowHlNU16vopRoPQzySc8/w=;
 b=HDZTszrxOW3TnmvdVmZbiVxD2hiBtYgoWBrvNBjamyNARvwcWuyTIaGZkBFKFwXW62
 vTGyz5HQBh7pAqTTmz2LLSWD4NcHi9ef2gDBrkPhSE8iukBDL4Fn/w1sl2gQYy6fifyP
 8vO9UmTeGgEcex2FuigHujYnGplGQW7sW4fOi9fztMNMPf0z/JLb1fjehzrz2CBgSAmT
 cEaWnWQgVxnXbF2EaSdT2yCmp7qF9KA2cNuUZEskqPAXZbFQ1UmMg3cGj1b20UPp9P0I
 qGsQm8xtwiEuto4iXqZ/iOBCLtIQO3uqzZHcFCrCzCrN6QHmlhCwxAKsdrhoyjwHPIde
 V1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ipWzs9/kagceWh47deBFYowHlNU16vopRoPQzySc8/w=;
 b=tGFKtL+Sk2/t/UG0/WNH/qbCulFVKmfl3mOKonnKQp87u1Q6nZn3UzEq0mEiDkkM+F
 7K2+Cg1zUU2zgcqMvnNSmeX/fVUTYqs6YcYgnMzd9FXrFsap1BHSOuoN4Allay2m7KBg
 32P7ZrHQahl/2SpHuFC5In9uU/3YxRuN8ZoG0l2VPyYtuNwlzrCb9Xk8coGk6ySXg9GR
 +AyecH1Sec0+vSR1i5vUZyUjCMg+K0xbltCEldDAw4DhQ2D5Jve7e3RNBxH5u6m+vIUJ
 MzT6ORQ68bY0uMzC/B5Oxte3Wy9HUHwj+MXje6ldq+mZo7ks04dt/880F/HZoFA+u6jb
 UhzA==
X-Gm-Message-State: AOAM530ilnGvTBo5zadzcgINu6PGknZjvvnlRqFN0IXDJPHulKw8uwdf
 5myYNRYmcpF7zq1daHw+7Zxvuo681HG/dG+lIQZwEDej
X-Google-Smtp-Source: ABdhPJw5N2lw8M6RRUjrvCS5tvr+CDHRvl6l9ySLOxgiNvNP9xV0/HKihNfWY+XxAtQnOd/Y3hL0/xF8WMGLuzLgRYI=
X-Received: by 2002:a2e:8082:: with SMTP id i2mr1459040ljg.134.1589528405541; 
 Fri, 15 May 2020 00:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <20200515065807.GE69771@meh.true.cz>
In-Reply-To: <20200515065807.GE69771@meh.true.cz>
From: Michael Jones <mike@meshplusplus.com>
Date: Fri, 15 May 2020 02:39:52 -0500
Message-ID: <CAJQUmm5iyZ745gDrXgzwtLqZUxOrEU6p2Xw7Sb4K1qf9MBFXZQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_004007_808486_1C52D466 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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
Content-Type: multipart/mixed; boundary="===============8909755309670405452=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8909755309670405452==
Content-Type: multipart/alternative; boundary="000000000000f91a0105a5aaeb77"

--000000000000f91a0105a5aaeb77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 15, 2020 at 1:58 AM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Michael Jones <mike@meshplusplus.com> [2020-05-13 12:48:49]:
>
> Hi,
>
> > I have a critical service on my OpenWRT system that needs monitoring an=
d
> > re-starting if it's failed.
>
> whats wrong with monit[1]? It was designed exactly for this purpose and i=
s
> much more flexible.
>
>
What's wrong with monit is that it's documentation is gigantic for a
relatively trivial need. This disqualifies it as being designed exactly for
the purpose.


> > I've been looking for a mechanism in procd that would allow me to reque=
st
> > that my service be terminated if it did not periodically notify some
> > watchdog endpoint via ubus.
>
> So instead of proper error handling and crashing your service ASAP, you'r=
e
> now
> going to add another ubus layer which might possibly fail as well.


If ubus is failing, there's a much larger problem than my service failing.


> You know, your service could happily ping the watchdog endpoint, yet stil=
l
> fail in other
> parts. You want something more robust.
>

Ubus would only be pinged when the service does the thing it's designed to
do. In this case, there'll be some communication with the internet that
involves bi-directional communication. No risk of false positives.


>
> I would simply add ubus status method to that critical service,


This requires that my program be able to communicate with ubus natively and
offer a ubus endpoint that can be queried.

UBus is fundamentally incompatible with programs that have their own event
loop. Or was, last I investigated. I have not had time to dig into ubox to
make the necessary improvements to allow external loop drivers.

Having the program being managed call "ubus call
service.$servicename.watchdog ...." in whatever way it wants to is more
flexible. All programs can launch sub processes, even if they have to
resort to fork+exec.



> then check the
> output in the cron shell/Lua script and kill the service if the output of
> the
> ubus status method wouldnt match liveliness for that service.
>

More complicated than a simple timer in procd.


> In other words I think, that one can solve this use case with current
> solutions, no need to bloat procd.
>
>
It's hardly bloat. It's a very simple feature that serves a core need in
service management as a generic concern.

--000000000000f91a0105a5aaeb77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 15, 2020 at 1:58 AM Petr =
=C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Michael Jone=
s &lt;<a href=3D"mailto:mike@meshplusplus.com" target=3D"_blank">mike@meshp=
lusplus.com</a>&gt; [2020-05-13 12:48:49]:<br>
<br>
Hi,<br>
<br>
&gt; I have a critical service on my OpenWRT system that needs monitoring a=
nd<br>
&gt; re-starting if it&#39;s failed.<br>
<br>
whats wrong with monit[1]? It was designed exactly for this purpose and is<=
br>
much more flexible.<br>
<br></blockquote><div><br></div><div>What&#39;s wrong with monit is that it=
&#39;s documentation is gigantic for a relatively trivial need. This disqua=
lifies it as being designed exactly for the purpose.<br></div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; I&#39;ve been looking for a mechanism in procd that would allow me to =
request<br>
&gt; that my service be terminated if it did not periodically notify some<b=
r>
&gt; watchdog endpoint via ubus.<br>
<br>
So instead of proper error handling and crashing your service ASAP, you&#39=
;re now<br>
going to add another ubus layer which might possibly fail as well.</blockqu=
ote><div><br></div><div>If ubus is failing, there&#39;s a much larger probl=
em than my service failing. <br></div><div></div><div>=C2=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"> You know, your service could happ=
ily ping the watchdog endpoint, yet still fail in other<br>
parts. You want something more robust.<br></blockquote><div><br></div><div>=
Ubus would only be pinged when the service does the thing it&#39;s designed=
 to do. In this case, there&#39;ll be some communication with the internet =
that involves bi-directional communication. No risk of false positives.<br>=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
I would simply add ubus status method to that critical service,</blockquote=
><div><br></div><div>This requires that my program be able to communicate w=
ith ubus natively and offer a ubus endpoint that can be queried.</div><div>=
<br></div><div>UBus is fundamentally incompatible with programs that have t=
heir own event loop. Or was, last I investigated. I have not had time to di=
g into ubox to make the necessary improvements to allow external loop drive=
rs.</div><div><br></div><div>Having the program being managed call &quot;ub=
us call service.$servicename.watchdog ....&quot; in whatever way it wants t=
o is more flexible. All programs can launch sub processes, even if they hav=
e to resort to fork+exec.</div><div><br></div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"> then check the<br>
output in the cron shell/Lua script and kill the service if the output of t=
he<br>
ubus status method wouldnt match liveliness for that service.<br></blockquo=
te><div><br></div><div>More complicated than a simple timer in procd.</div>=
<div> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
In other words I think, that one can solve this use case with current<br>
solutions, no need to bloat procd.<br>
<br></blockquote><div><br></div><div>It&#39;s hardly bloat. It&#39;s a very=
 simple feature that serves a core need in service management as a generic =
concern. <br></div></div></div>

--000000000000f91a0105a5aaeb77--


--===============8909755309670405452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8909755309670405452==--

