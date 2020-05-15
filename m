Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBF61D5811
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 19:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A+1q7XTlA9z3/3STYYULFQY+1UMl5uzrw8rrb1375jc=; b=PtSZB62GuOWs9/qQQJgIXt+cm
	upuv3taJTWe9qStZyjmAuOkw38BwzFaOkdAvM4Gi72IBcfjd1rjVKaWby3iVB/3gF97SGI7FYW7dF
	K42gFSlUZC6MBIPqIWlhwNmg+pfBxzUEkSywD2MpcGcALPorZ5DptcfyiTEVLVfxLma8Lei6ntvlH
	4Pk/AMOn80W8fchqhMcW/pGsMt27bXV8RmbpAAV51+eSpJQav0gXmQBkNaD6Vn8ERtb/bJcrJfV/S
	IkpbVfJLtdpcW83BAeTGMAfDjseQVJWqTxUGfJkurK+5r/nnft5TOYbjBO/8EW/oZA1IukO5mDWAx
	mV173fsgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZeFs-00078X-0H; Fri, 15 May 2020 17:36:16 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZeFl-00077r-CO
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 17:36:11 +0000
Received: by mail-lf1-x132.google.com with SMTP id a9so2500390lfb.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 10:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DQhf4DBabzTxcuDLoFasJP8rcmHpvHu5C7/JfwGZ6nk=;
 b=xu2VgavyJnDdAxXq+1GpDhxTRAiMPMLqm3woL9IBa/CtlAwQlHvgK3+39RZPW6qTea
 hwDECgFeeBxOGhe16Ej7Bmq2Pvb70NybViSIyQzI5YD4RVDetYm1RbyKHScaim4zcTF1
 +o5FbezXBx7wl/9gxkDH/pnmDJqPwYJSAqIoKR6zpviAlYHv+d9VNX9xSc3Z9BNqdbIl
 6MHCX/SK4lHDxO+F8KzuxdnXJ/ops839FZfjnwsLgrl7l5F3zo8F6bloZsgHou6iZraX
 NCBng9zZ7WcsVMXhNdKfyTUQ9+5MhFwmNgionZpdWK9zgyW0jBZmBnm/ca43UdGXaTZg
 OapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DQhf4DBabzTxcuDLoFasJP8rcmHpvHu5C7/JfwGZ6nk=;
 b=RKIxVjtKJ19ipJEzvucxUgIH751uDwTJwg88CPeo419/Z0qJn8eI1lMs+RzQ/xOOGO
 x853ZRfboIOqasifB+DY8SI+YeyGWzPTiPTJucOmCuD82jGnhYsgNk/Pndv7R656GVT1
 RzRRrf6MsYdccDK2IE+gyF2AwcR6x/9TEeC+lmN+gTP7Q6bYL8O66ItKrK1N3lrjGr/k
 fpq6NRFHGu3UhPvMI22isrSteAr2wRzzgZLVe/6U6GwYbAEKfTJhAfU/COk3mI2bieNk
 Mhq2j5/oZyrhelJoyS9vgX4chLUteHuRCL01masqUpYO1aIPZGmK2lC5kC1XycPmDpE4
 K1FA==
X-Gm-Message-State: AOAM5315Mr0FJZZbbwaIP4WPWG+138V2VTUDaORf1vPihfEe75jcXCEi
 z0/f+0D7O62Fr3JyWgdNt0I+rhQqXg9NBe2kFiR+QhZ3
X-Google-Smtp-Source: ABdhPJy9Nzm4I4FPLhoICtcp8BZUi28XhGVD3OBEdY+TISXngLdrA0aLTQ5KOp79Li54+ngw+uVu0NP/d1c+86eIAEc=
X-Received: by 2002:a19:c394:: with SMTP id t142mr3157927lff.129.1589564165247; 
 Fri, 15 May 2020 10:36:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <20200515065807.GE69771@meh.true.cz>
 <CAJQUmm5iyZ745gDrXgzwtLqZUxOrEU6p2Xw7Sb4K1qf9MBFXZQ@mail.gmail.com>
 <20200515093513.GF69771@meh.true.cz>
In-Reply-To: <20200515093513.GF69771@meh.true.cz>
From: Michael Jones <mike@meshplusplus.com>
Date: Fri, 15 May 2020 12:35:53 -0500
Message-ID: <CAJQUmm4BD0a3yivVxwxQ25dpi+oBAntugtt1SCUnaPh2qzqbWA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_103609_449394_BB5708E0 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
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
Content-Type: multipart/mixed; boundary="===============2735199328605317156=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2735199328605317156==
Content-Type: multipart/alternative; boundary="0000000000006aea8405a5b33fcd"

--0000000000006aea8405a5b33fcd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 15, 2020 at 4:35 AM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Michael Jones <mike@meshplusplus.com> [2020-05-15 02:39:52]:
>
> > What's wrong with monit is that it's documentation is gigantic
>
> Good documentation with a lot of examples is hardly a problem, its a bonu=
s
> point for me.
>
>
I think you misunderstood.

Monit has a massive feature surface. I'm not even going to consider it, it
goes far far beyond the level of capability that's appropriate for my use
case.


> > for a relatively trivial need.
>
> Your need, your current trivial use case. Overall project
> goals/design/universe should be taken into account.
>

Sure, accept the patch or don't. I'm happy to take guidance from the
OpenWRT community, but ultimately will implement the things I need the way
I need them. Designing patches so that they are palatable to OpenWRT is a
secondary concern. Once I have it working to the level that I'm happy with,
the patch will be provided under the appropriate license, and then it's not
my problem beyond helping serious efforts at integrating it.

> If ubus is failing, there's a much larger problem than my service failing=
.
>
> And you don't want to recover from this even more critical situation?
>

If UBus fails, there's not a realistic recovery option beyond restarting
the system, I'd rather that be PID 1's responsibility as well.

> This requires that my program be able to communicate with ubus natively
> and
> > offer a ubus endpoint that can be queried.
>
> Then use file, socket or whatever suits your use case.
>

Of course, I will do what suits my use case. In this situation, the use
case is that I want service monitoring built into the daemon that manages
services.

I was responding to your suggestion of advertising a status string on ubus,
and explaining why that's not viable.

> More complicated than a simple timer in procd.
>
> Which is not flexible enough, tailored exactly to your very simple use
> case.
>

Perfect is the enemy of the good. My proposal is very simple, and very
flexible. It's not literally as flexible as it possibly can be while
simultaneously having no negatives, but no solution is.

> It's hardly bloat.
>
> Just take a look one step further.  Once OpenWrt accepts this feature its
> official.  What is going to happen afterwards in the OpenWrt universe?
>

> Folks will of course start using this feature, adding support for this
> feature
> into their critical services (take your answer to ISC dhcp support as
> example), which would in most cases mean local patch(es) as this feature
> could
> be hardly upstreamed.
>

Lots of projects accept patches for specific init system features. If
systemd specific patches can be upstreamed, so can procd patches.

Also consider that OpenWRT already has patches for lots of programs to
communicate over ubus. Are you insinuating that those patches are
undesirable?

This is the cost that comes with maintaining your own set of system
services that no other project family uses. You don't see procd used in
desktop distributions, or cellphones, or "infotainment" systems in cars,
etc. (That I'm aware of, I'm happy to be corrected). Custom tools require
customization to things.

Procd does not have the feature set that I require for my purposes. I am
happy with other parts of the OpenWRT ecosystem, so instead of switching to
a different distribution, I'm open to making contributions so everyone can
benefit.

So in the end, we're going to have not so trivial amount of local patches
> for
> ubus service watchdog support, which would break DRY principle,


Hardly. Each package is different, so the decision making logic to
communicate with a service watchdog will be different. At worst, you have
10-20 lines of code duplicated per package, and that'll be whatever
quantity of boilerplate communicating with UBus requires.


> and probably result in additional maintenance/QA work with every package
> version bump.
>

Trade off between additional reliability and code complexity. It's a tale
as old as software.


> In order to avoid this bloat, unnecessary patch hell, one would perhaps
> need
> to implement kind of monit/cron solution in procd/umonitd, so it would be
> possible to have custom/generic service liveliness checks defined in the
> service init scripts or UCI configuration.
>
> Maybe all is needed is some kind of monitrc generator from UCI configs/in=
it
> scripts?
>

Your counter proposal to a (estimated) 200-300 lines of code patch in
procd, which could even be a compile-time-option, is to have services
depend on a package that has more features than I know what to do with?

How is monit going to work with procd's jails? The whole point of the jails
is to isolate services into their own mini-container type thing. So now we
have to poke a hole in the jail to allow monit to monitor the service?

And monit isn't some magical drop-in solution. Imagine a service that
doesn't already have a strong indicator of "liveness". Now that program
needs to be patched for compatibility with monit, just like it would be for
compatibility with procd's potential service watchdog.

--0000000000006aea8405a5b33fcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 15, 2020 at 4:35 AM Petr =
=C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Michael Jone=
s &lt;<a href=3D"mailto:mike@meshplusplus.com" target=3D"_blank">mike@meshp=
lusplus.com</a>&gt; [2020-05-15 02:39:52]:<br>
<br>
&gt; What&#39;s wrong with monit is that it&#39;s documentation is gigantic=
<br>
<br>
Good documentation with a lot of examples is hardly a problem, its a bonus<=
br>
point for me.<br>
<br></blockquote><div><br></div><div>I think you misunderstood.</div><div><=
br></div><div>Monit has a massive feature surface. I&#39;m not even going t=
o consider it, it goes far far beyond the level of capability that&#39;s ap=
propriate for my use case.<br></div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
&gt; for a relatively trivial need.<br>
<br>
Your need, your current trivial use case. Overall project<br>
goals/design/universe should be taken into account.<br></blockquote><div><b=
r></div><div>Sure, accept the patch or don&#39;t. I&#39;m happy to take gui=
dance from the OpenWRT community, but ultimately will implement the things =
I need the way I need them. Designing patches so that they are palatable to=
 OpenWRT is a secondary concern. Once I have it working to the level that I=
&#39;m happy with, the patch will be provided under the appropriate license=
, and then it&#39;s not my problem beyond helping serious efforts at integr=
ating it.<br></div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
&gt; If ubus is failing, there&#39;s a much larger problem than my service =
failing.<br>
<br>
And you don&#39;t want to recover from this even more critical situation?<b=
r></blockquote><div><br></div><div>If UBus fails, there&#39;s not a realist=
ic recovery option beyond restarting the system, I&#39;d rather that be PID=
 1&#39;s responsibility as well.</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
&gt; This requires that my program be able to communicate with ubus nativel=
y and<br>
&gt; offer a ubus endpoint that can be queried.<br>
<br>
Then use file, socket or whatever suits your use case.<br></blockquote><div=
><br></div><div>Of course, I will do what suits my use case. In this situat=
ion, the use case is that I want service monitoring built into the daemon t=
hat manages services.</div><div><br></div><div>I was responding to your sug=
gestion of advertising a status string on ubus, and explaining why that&#39=
;s not viable.</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
&gt; More complicated than a simple timer in procd.<br>
<br>
Which is not flexible enough, tailored exactly to your very simple use case=
.<br></blockquote><div><br></div><div>Perfect is the enemy of the good. My =
proposal is very simple, and very flexible. It&#39;s not literally as flexi=
ble as it possibly can be while simultaneously having no negatives, but no =
solution is.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
&gt; It&#39;s hardly bloat.<br>
<br>
Just take a look one step further.=C2=A0 Once OpenWrt accepts this feature =
its<br>
official.=C2=A0 What is going to happen afterwards in the OpenWrt universe?=
 <br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Folks will of course start using this feature, adding support for this feat=
ure<br>
into their critical services (take your answer to ISC dhcp support as<br>
example), which would in most cases mean local patch(es) as this feature co=
uld<br>
be hardly upstreamed.<br></blockquote><div><br></div><div>Lots of projects =
accept patches for specific init system features. If systemd specific patch=
es can be upstreamed, so can procd patches.</div><div><br></div><div>Also c=
onsider that OpenWRT already has patches for lots of programs to communicat=
e over ubus. Are you insinuating that those patches are undesirable?</div><=
div><br></div><div>This is the cost that comes with maintaining your own se=
t of system services that no other project family uses. You don&#39;t see p=
rocd used in desktop distributions, or cellphones, or &quot;infotainment&qu=
ot; systems in cars, etc. (That I&#39;m aware of, I&#39;m happy to be corre=
cted). Custom tools require customization to things.</div><div><br></div><d=
iv>Procd does not have the feature set that I require for my purposes. I am=
 happy with other parts of the OpenWRT ecosystem, so instead of switching t=
o a different distribution, I&#39;m open to making contributions so everyon=
e can benefit.<br></div><div> <br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
So in the end, we&#39;re going to have not so trivial amount of local patch=
es for<br>
ubus service watchdog support, which would break DRY principle,</blockquote=
><div><br></div><div>Hardly. Each package is different, so the decision mak=
ing logic to communicate with a service watchdog will be different. At wors=
t, you have 10-20 lines of code duplicated per package, and that&#39;ll be =
whatever quantity of boilerplate communicating with UBus requires.<br></div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">and pro=
bably result in additional maintenance/QA work with every package version b=
ump.<br></blockquote><div><br></div><div>Trade off between additional relia=
bility and code complexity. It&#39;s a tale as old as software. <br></div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
In order to avoid this bloat, unnecessary patch hell, one would perhaps nee=
d<br>
to implement kind of monit/cron solution in procd/umonitd, so it would be<b=
r>
possible to have custom/generic service liveliness checks defined in the<br=
>
service init scripts or UCI configuration.<br>
<br>
Maybe all is needed is some kind of monitrc generator from UCI configs/init=
<br>
scripts?<br></blockquote><div><br></div><div></div><div>Your counter propos=
al to a (estimated) 200-300 lines of code patch in procd, which could even =
be a compile-time-option, is to have services depend on a package that has =
more features than I know what to do with?</div><div><br></div><div>How is =
monit going to work with procd&#39;s jails? The whole point of the jails is=
 to isolate services into their own mini-container type thing. So now we ha=
ve to poke a hole in the jail to allow monit to monitor the service?</div><=
div><br></div><div>And monit isn&#39;t some magical drop-in solution. Imagi=
ne a service that doesn&#39;t already have a strong indicator of &quot;live=
ness&quot;. Now that program needs to be patched for compatibility with mon=
it, just like it would be for compatibility with procd&#39;s potential serv=
ice watchdog.</div><div><br></div></div></div>

--0000000000006aea8405a5b33fcd--


--===============2735199328605317156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2735199328605317156==--

