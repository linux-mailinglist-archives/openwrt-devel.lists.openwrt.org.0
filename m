Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64701EEE31
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 01:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2BY58e0kzg6oXHlhVV16imvU2j88HhfsOjmuh62ObJc=; b=nIBEfbjOOhYlvVtaS6+y35pon
	uXJ0GFBjZROlk4JQxqYWJ8NO4TyqK2XzQGmyhVGW6Kucr4zrvEBKUGG6RFan2Rd0OgiG+04CZ+mQc
	OIkr8Wngo945fJfEepOdx9rLSsrOgu7MEeFGR1bacZlNUplW/ZejV9aRND5yFNaDocEutxqrmLOq6
	CnNJTlBE40Q4eT4syAhoqz7lZaiU7Yu3YVAYE8HBI7n5AQHXeDd6ybx0JvRL+fYtnpnbF93P3/Suo
	zeIJuE7nLrpn82IewnaNanR7NFOhyYsJ/PiQtnYqtW7CBRJNUis9fWocVcSz8ejNPcCWo0lIE6+IO
	IUJh0Ljwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgz3W-0002BW-Hc; Thu, 04 Jun 2020 23:13:50 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgz3O-0002B1-8O
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 23:13:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id j8so8259364iog.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 16:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l0cPfC0sAlUY6GQhRH6t/WZGx/2rcwzV8aWjM6IuwUE=;
 b=rjBjzXDHeO8au/YMHdT+q2lXBZs3IckmkRDvV10P1khyhR/rhcy39LGAm8MjdJKMS+
 /EyltVg205bEAf5P61x0jmweO1JhMK1dcjcCBo6t+2MA4hFjP/Wp30ztURAZkhZjwhHj
 a95ix0oppCx4kCH44W26WNx7Y23Ch4CwWYqY7KldEOjkUtFTr9ceZQVnnw0rqwT1tBC5
 4rARw3K6w71rKpifi+9hmyYA691XjiSdzYCKF3tvoTtxQS/rAKC7VxGJEPU+7BpOQH8D
 LJhyHzgK1sxqR3Sfgz+C16oQqcsnStJfPe1FtY+UmH5GqyL2UH0NG51jP5ogoLUgb/L4
 Td1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l0cPfC0sAlUY6GQhRH6t/WZGx/2rcwzV8aWjM6IuwUE=;
 b=siwO+HT7uvSMcxm/UQfVQBbb5KiM8tT6Tk5oKorzVjQLpnV6K8BkHUFKD5AlK0tCzw
 t8jLJwY06R/1ckUuomWismEJ0+1h2MlAHR9PlEhhqkOq8TV3PqV9uvX3Hm7ZxCgcbstH
 l+DGCIjokjSrfZ1boA03W1BwjIdP+XyUAWmKMlb9hesGDBbpi29YZEuZjh/qeY5ECYEC
 6wr4+RosRniSzHMjF228g+k6S9KLgZa/j6wdQPBJN1MLdClpRCubG/YMcO3z4s6yL7VP
 3JOJLABApOaiLfZFPB6yomGLUCFA32anaswkh65S9PWJlL0F2sw9o8sgKAkFaD6HbNTB
 GLVQ==
X-Gm-Message-State: AOAM5335liy1MJ0w9OUzo0UDpzjc+TYP6qZV874ktgwaKO/iuZ6obuMu
 7ACJIad22Kk+sHosBoKf/aNk4AQZ/M3E7L7VhzHKpA==
X-Google-Smtp-Source: ABdhPJzYABaOBCrlSnDWi/BCZuh5+KxBUXBjVQHFKIUqTmpAIaxQYVvVWAcf98IO6PiLi1ATbTJZQVIK8BzbLwU1ac4=
X-Received: by 2002:a05:6602:2f0f:: with SMTP id
 q15mr6260199iow.23.1591312420895; 
 Thu, 04 Jun 2020 16:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
 <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
 <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
 <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
In-Reply-To: <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
From: Daniel Bailey <danielb@meshplusplus.com>
Date: Thu, 4 Jun 2020 16:13:29 -0700
Message-ID: <CABzx=O1cYRmhMcB8oKRujjwWeRbXBNCGm6biBQUoB+P4_d6OqA@mail.gmail.com>
To: Stan Grishin <stangri@melmac.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_161342_876141_2FA499DB 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled
 to service function in /etc/profile
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
Content-Type: multipart/mixed; boundary="===============2366314230664050567=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2366314230664050567==
Content-Type: multipart/alternative; boundary="00000000000093199d05a74a4b6b"

--00000000000093199d05a74a4b6b
Content-Type: text/plain; charset="UTF-8"

Somebody who is better with jsonfilter than me might be able to clean this
up, but it does the trick:

#!/bin/sh

. /usr/share/libubox/jshn.sh

json_load "$(ubus call service list)"
json_get_keys SERVICES

for SERVICE in $SERVICES; do
    echo "$SERVICE: `ubus call service list | jsonfilter -e
"@.$SERVICE.instances[\"*\"].running"`"
done

On Thu, Jun 4, 2020 at 2:56 AM Stan Grishin <stangri@melmac.net> wrote:

> On Wed, Jun 3, 2020 at 4:53 PM Michael Jones <mike@meshplusplus.com>
> wrote:
> >
> >
> >
> > On Wed, Jun 3, 2020 at 6:21 PM Stan Grishin <stangri@melmac.net> wrote:
> >>
> >> To obtain the list of enabled (for autostart) services, you'd type
> >> service list-enabled. For disabled services service list-disabled. It
> >> is useful when you need to quickly check which services are
> >> enabled/disabled or when helping other users troubleshoot.
> >>
> >> An alternative to list-enabled/list-disabled that I have considered
> >> was to output the enabled status of available services below the usage
> >> output, ie replace:
> >>                 if [ -n "$1" ]; then
> >>                         echo "service "'"'"$1"'"'" not found, the
> >> following services are available:"
> >>                     ls "/etc/init.d"
> >>                 fi
> >>
> >> with
> >>
> >>                 if [ -n "$1" ]; then
> >>                         echo "service "'"'"$1"'"'" not found, the
> >> following services are available:"
> >>                     for F in /etc/init.d/* ; do
> >>                         $F enabled && echo "$F (autostart enabled)" ||
> >> echo "$F (autostart **disabled**)"
> >>                     done;
> >>                 fi
> >>
> >>
> >> Please elaborate on the list-start and list-stop question, I'm not
> >> sure I understand the purpose of those.
> >
> >
> > Originally I asked that question because I misunderstood what the goal
> of this change was.
> >
> > I thought that you were proposing to add the ability to enable / disable
> multiple services at the same time, so I was asking about the ability to
> start / stop multiple services at the same time.
> >
> > It's clear not that's not what you were trying to propose.
> >
> > So instead, what about listing the services that are running, and also
> listing the services that are configured, but not running?
>
> Is there an easy universal way to determine if the service is running?
>
> > I don't know that that provides a lot of value, so it may not be worth
> doing.
>
> If there's a one/two liner to figure out if a service is running or
> not, it may be better to implement `service list` which would print
> the table of available init scripts, wherever they are enabled or not
> and wherever they are running or not.
>
> If that is deemed to be a better approach I can resubmit the patch.
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000093199d05a74a4b6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Somebody who is better with jsonfilter than me might be ab=
le to clean this up, but it does the trick:<br><br><span style=3D"font-fami=
ly:monospace"><span style=3D"color:rgb(0,0,0)">#!/bin/sh
</span><br>
<br>. /usr/share/libubox/jshn.sh
<br>
<br>json_load &quot;$(ubus call service list)&quot;
<br>json_get_keys SERVICES
<br>
<br>for SERVICE in $SERVICES; do
<br>=C2=A0 =C2=A0 echo &quot;$SERVICE: `ubus call service list | jsonfilter=
 -e &quot;@.$SERVICE.instances[\&quot;*\&quot;].running&quot;`&quot;
<br>done</span><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Jun 4, 2020 at 2:56 AM Stan Grishin &lt;<a href=
=3D"mailto:stangri@melmac.net">stangri@melmac.net</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Jun 3, 2020 at 4:5=
3 PM Michael Jones &lt;<a href=3D"mailto:mike@meshplusplus.com" target=3D"_=
blank">mike@meshplusplus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jun 3, 2020 at 6:21 PM Stan Grishin &lt;<a href=3D"mailto:stan=
gri@melmac.net" target=3D"_blank">stangri@melmac.net</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; To obtain the list of enabled (for autostart) services, you&#39;d =
type<br>
&gt;&gt; service list-enabled. For disabled services service list-disabled.=
 It<br>
&gt;&gt; is useful when you need to quickly check which services are<br>
&gt;&gt; enabled/disabled or when helping other users troubleshoot.<br>
&gt;&gt;<br>
&gt;&gt; An alternative to list-enabled/list-disabled that I have considere=
d<br>
&gt;&gt; was to output the enabled status of available services below the u=
sage<br>
&gt;&gt; output, ie replace:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ =
-n &quot;$1&quot; ]; then<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;service &quot;&#39;&quot;&#39;&quot;$1&q=
uot;&#39;&quot;&#39;&quot; not found, the<br>
&gt;&gt; following services are available:&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ls &quot;/etc/init.d&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br=
>
&gt;&gt;<br>
&gt;&gt; with<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ =
-n &quot;$1&quot; ]; then<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;service &quot;&#39;&quot;&#39;&quot;$1&q=
uot;&#39;&quot;&#39;&quot; not found, the<br>
&gt;&gt; following services are available:&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0for F in /etc/init.d/* ; do<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0$F enabled &amp;&amp; echo &quot;$F (autostart enab=
led)&quot; ||<br>
&gt;&gt; echo &quot;$F (autostart **disabled**)&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0done;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br=
>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Please elaborate on the list-start and list-stop question, I&#39;m=
 not<br>
&gt;&gt; sure I understand the purpose of those.<br>
&gt;<br>
&gt;<br>
&gt; Originally I asked that question because I misunderstood what the goal=
 of this change was.<br>
&gt;<br>
&gt; I thought that you were proposing to add the ability to enable / disab=
le multiple services at the same time, so I was asking about the ability to=
 start / stop multiple services at the same time.<br>
&gt;<br>
&gt; It&#39;s clear not that&#39;s not what you were trying to propose.<br>
&gt;<br>
&gt; So instead, what about listing the services that are running, and also=
 listing the services that are configured, but not running?<br>
<br>
Is there an easy universal way to determine if the service is running?<br>
<br>
&gt; I don&#39;t know that that provides a lot of value, so it may not be w=
orth doing.<br>
<br>
If there&#39;s a one/two liner to figure out if a service is running or<br>
not, it may be better to implement `service list` which would print<br>
the table of available init scripts, wherever they are enabled or not<br>
and wherever they are running or not.<br>
<br>
If that is deemed to be a better approach I can resubmit the patch.<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--00000000000093199d05a74a4b6b--


--===============2366314230664050567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2366314230664050567==--

