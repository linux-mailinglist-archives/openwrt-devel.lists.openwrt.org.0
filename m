Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77BD194B4D
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 23:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=seh5e1yr60CbKz8BW5dq5lRECFYRhZdneFHTpW4hLp0=; b=HquK+0kUhUTQ7kx3+gBYbo2rl
	3kFKE/BO5ceupkKn8GWE1ExF+8aDKRsbZHltguhWsKg8t+LjWNND2R/STV8lOywFLafDxxK3LnnK/
	6i0v8gZVQ8gXHGan2Eb7j8jrX57pqlb1n1/d/1yJIQF+a5WXlWd+hc6yAWaQiZXmYP7My70e7MaIN
	tbxolxSY9MYhP48uvtmga91O58I22e45JouFwECzPRiNuFcmarKAiyVXFfZbfFxPHBcrXtV01HEWQ
	O4XkWgzv21ZQIVdDClom1tDKE6sYmkPbcBDnS9eXyKqdrdLCLO0VLt1vQgRiNIhdJ2vrumFPeGzdk
	Jh1M87eXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHahh-00005G-LZ; Thu, 26 Mar 2020 22:10:21 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHahY-0008WN-8A
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 22:10:16 +0000
Received: by mail-yb1-xb33.google.com with SMTP id h205so3489947ybg.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 15:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wl04sFTeb/p06KkZNVYYL+zQI3HvKvC+vnrc8UbyaqA=;
 b=DDOtfV9dg8EOV9zII0ejo+tc7XSR6gRDAeCGM05h/xSGUv2i/MqhHHDbj4sQf2/q1I
 EPUe5qyQLaPIGdPvaJO+vhwOeROFS67aFndNIddm+UHhvJzbkdpCJxZNNMe2HKvxNdy2
 OP03zoM64HetTqeebSeElw59jzvDs76EAw4N4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wl04sFTeb/p06KkZNVYYL+zQI3HvKvC+vnrc8UbyaqA=;
 b=G4ezXPZ7/hXRSJU/tfYz/nSC6xEIYi5xznBsB7rYNgmHSDPjYwFIKa57m3rGTGd9ok
 EtIMpuEe6TRyKsKm+luVhwNXLmxlQbJfB35hoQ/+fY4NQTKPRVS/L8Q7ipf0LGUniuhZ
 SEo7NpIsrNYeNgMZO6KGLbky82ZthvGMROZSXWdqrLqlkp8/Av0pnXgsz7H/NV6bbRCh
 QXjnz7jkRkrwE81nt6zr3fNriVeVGkgj2u2xgx3rV3oe8waIzSfE6vjvkdmInScl5U83
 xBhUlYr4Gh5u3+cbIAa0rgRwSYw9z0vUWkxJBPeoLWS1qAhwv/0sY+fokbjXqLxATDKo
 Da/Q==
X-Gm-Message-State: ANhLgQ1XJ4WXMbXG8VyYlSobg8+g1AR0RciQ/ZF3SBkMmESBoQQCtQfK
 GqBMxkW4/c/5pEyzSDZIWhyNv2pi1R2Loc/1FZOw0Q==
X-Google-Smtp-Source: ADFU+vslBwmOCbcv2C5Vn5QL3oosq5ykow9xiULa3o76v4F36cxyTX7QmlILiL1Mbe2JfB5jSlElhKMch9BFbiAKsCo=
X-Received: by 2002:a25:2b01:: with SMTP id r1mr337730ybr.163.1585260610386;
 Thu, 26 Mar 2020 15:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
 <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
In-Reply-To: <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Fri, 27 Mar 2020 11:09:58 +1300
Message-ID: <CAKiAkGQ86KBsO7HEzd3FzNWxG19Yj7ROaupAAe-7pPyyyHMh9w@mail.gmail.com>
To: Ansuel Smith <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_151012_295228_05B64F35 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b33 listed in]
 [list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] New target IPQ8074 / Asus-ax89x(u)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Robert Marko <robimarko@gmail.com>
Content-Type: multipart/mixed; boundary="===============0100468821824015222=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0100468821824015222==
Content-Type: multipart/alternative; boundary="0000000000008f2a8f05a1c93f61"

--0000000000008f2a8f05a1c93f61
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's 800$NZD not sure of what the conversion is.

BUT

It's got Dual 10Gbit ports ; so if you factor going the DIY route on x86
boxes (which is what I have been forced to do for 10G capable for the last
few years), Power consumption, and wifi6 - it's actually not an
unreasonable price point for what you get.



On Fri, 27 Mar 2020 at 10:45, Ansuel Smith <ansuelsmth@gmail.com> wrote:

> 400=E2=82=AC for a router... little too much for now... at least the firm=
ware
> is openwrt based so ASUS should provide GPL.
>
> Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko
> <robimarko@gmail.com> ha scritto:
> >
> >
> >
> > On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <joel@aenertia.n=
et>
> wrote:
> >>
> >> Hi all,
> >>
> >> I received my ax89x yesterday and have added a stub wiki page for it
> here:
> >>
> >> https://openwrt.org/toh/asus/rt-ax89x
> >>
> >> There is a published build chain for the device from ASUS - I haven't
> tried compiling it.
> >> I've done some preliminary poking and opened the case up - dumped the
> bootlog.
> >>
> >> Very interesting device and likely a good target for 10Gbit and Wifi6
> work.
> >
> >
> > Looks great, just that the price tag is painful.
> > Its HK01 reference board based, a lot of stuff has been upstreamed but =
a
> whole more is missing for IPQ807x upstream.
> >>
> >>
> >>
> >> -Joel
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000008f2a8f05a1c93f61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">It&#39;s 800$NZD not sure of what the conversion is. <br></div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
BUT</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-ser=
if"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,san=
s-serif">It&#39;s got Dual 10Gbit ports ; so if you factor going the DIY ro=
ute on x86 boxes (which is what I have been forced to do for 10G capable fo=
r the last few years), Power consumption, and wifi6 - it&#39;s actually not=
 an unreasonable price point for what you get.</div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif"><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Ma=
r 2020 at 10:45, Ansuel Smith &lt;<a href=3D"mailto:ansuelsmth@gmail.com">a=
nsuelsmth@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">400=E2=82=AC for a router... little too much for now... =
at least the firmware<br>
is openwrt based so ASUS should provide GPL.<br>
<br>
Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko<br>
&lt;<a href=3D"mailto:robimarko@gmail.com" target=3D"_blank">robimarko@gmai=
l.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling &lt;<a href=3D"=
mailto:joel@aenertia.net" target=3D"_blank">joel@aenertia.net</a>&gt; wrote=
:<br>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I received my ax89x yesterday and have added a stub wiki page for =
it here:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://openwrt.org/toh/asus/rt-ax89x" rel=3D"noreferre=
r" target=3D"_blank">https://openwrt.org/toh/asus/rt-ax89x</a><br>
&gt;&gt;<br>
&gt;&gt; There is a published build chain for the device from ASUS - I have=
n&#39;t tried compiling it.<br>
&gt;&gt; I&#39;ve done some preliminary poking and opened the case up - dum=
ped the bootlog.<br>
&gt;&gt;<br>
&gt;&gt; Very interesting device and likely a good target for 10Gbit and Wi=
fi6 work.<br>
&gt;<br>
&gt;<br>
&gt; Looks great, just that the price tag is painful.<br>
&gt; Its HK01 reference board based, a lot of stuff has been upstreamed but=
 a whole more is missing for IPQ807x upstream.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -Joel<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; openwrt-devel mailing list<br>
&gt;&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k">openwrt-devel@lists.openwrt.org</a><br>
&gt;&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-deve=
l" rel=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/l=
istinfo/openwrt-devel</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
</blockquote></div>

--0000000000008f2a8f05a1c93f61--


--===============0100468821824015222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0100468821824015222==--

