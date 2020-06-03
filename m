Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF121ED9A7
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 01:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gWBcfYpSCJ4hVbTeNpL3fG8Ym3N1dN4vXUPFBvXjy20=; b=N1LyHO1jvykKsuWZWewpec2Rl
	aiyuOqF0BygdA+CIppDP9gKnzLbig9oY72tJ3NolGbBIRECeNkPgZxs5dKzq4fBd7/N/W3uR5w4vQ
	blBaURtjXE/qT96mWgxGMlglaUbnF3Nz/TqlL7B1cvYRbgUv6iVbZ0lvL49DSuwd7CKXnuHyMAHCl
	clQJEzoBGiHaxBJ70sD7yy3KqFDwzZ6pMD2Ncik6o9GNweqe1Rwi7W1UQvJvTJyZksJVQPToQU5u0
	yG8QOaNR6s+Y2wJPw/jh/Wxl8RIw+KOcydzR0ebK787UrneDNHlCQrRB+gGArJDtoW74E50wb9ENs
	yzajzVYLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgdCP-00017D-EW; Wed, 03 Jun 2020 23:53:33 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgdCJ-00016V-2F
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 23:53:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id e4so5017398ljn.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 16:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ME7gB4hsvGRv2gny9uYxRb1MD/9G78uIGL0RNtNuO9I=;
 b=fPDXf8TVgqqyqO5MgECd2iz0nQnU9DWLjRWlLWcSLsaQMDBa0aG/Zi3y1VC9pJZlRS
 aQ6ePpmOM/MLoNX+LlMkeoSNagtErhKZHvLLD9cJgQKDhLDIw3xFz53k/mq1pmYQMst3
 mWR3QtOjnuabuvS6pvbWvXs05JD4Oa4j6ih/rfPj5TdUgq9jIB3JpKDSbiiPNAjxYrwg
 2QOx0Zq/5n19/xkdZkJdMEAWqHaVKdnMHRbQdbh1GmI37AdS44CKHmcQcYHpaxq5n5Sk
 XuR1mcReh+wZMBpVwZT/2YAQyYu/nr1NuPEkpxU96GQhCYkdPtbsQ01T/714rfZ8F1MN
 1Gig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ME7gB4hsvGRv2gny9uYxRb1MD/9G78uIGL0RNtNuO9I=;
 b=e92O9QG8XEGtNUDBwWRj9I7k92MibK3IzZydvwhcw6zPV7PaO/xRHyDeKyBOScufOH
 ozZeX8SaSXXBnIyGCi6gOq7QXyDhOHB5OMb5oLtwoRTtvXR/k3GWdP5Q3Rsl6m+An5uD
 a56CMdqiMcbGcAeugvNmNC9c2KVENLEqxv3dzgmrHpCOgNv/8oXD1747NcFxrGcJ67Mz
 lqN7Qrgr+6Jp0qCVbIzv139MHFPBElV/MgQTum9bsUncwlCK3gbOXzcNItOWKzF9ZjWh
 8LpdXpXWnX6CL0g0+FaI6zRtxCA9mH/6q8S07z3DC9f8iyWi43A6PWxruIqseB3sX8O4
 QSjA==
X-Gm-Message-State: AOAM5316P6CVNPaVPSQJ053zKxJvqwKGVReJ5sGmlkFi0M01naWZebSB
 pnPMgn9Fdu7qsgyUuwLFh2rqg6ginkPZ3/6gNsMXjg==
X-Google-Smtp-Source: ABdhPJwWN3PmUb1uDApqowheuMIrd5TwhDSI4R4PLWu97xMeENYH6H0XfyzL39C22izEDjpJaojf+rhEnpySEJkPR+k=
X-Received: by 2002:a2e:9105:: with SMTP id m5mr832927ljg.408.1591228404736;
 Wed, 03 Jun 2020 16:53:24 -0700 (PDT)
MIME-Version: 1.0
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
 <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
In-Reply-To: <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 3 Jun 2020 18:53:13 -0500
Message-ID: <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
To: Stan Grishin <stangri@melmac.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_165327_161665_2100075B 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Content-Type: multipart/mixed; boundary="===============4224084907802382198=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4224084907802382198==
Content-Type: multipart/alternative; boundary="000000000000d2399605a736bb5c"

--000000000000d2399605a736bb5c
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 3, 2020 at 6:21 PM Stan Grishin <stangri@melmac.net> wrote:

> To obtain the list of enabled (for autostart) services, you'd type
> service list-enabled. For disabled services service list-disabled. It
> is useful when you need to quickly check which services are
> enabled/disabled or when helping other users troubleshoot.
>
> An alternative to list-enabled/list-disabled that I have considered
> was to output the enabled status of available services below the usage
> output, ie replace:
>                 if [ -n "$1" ]; then
>                         echo "service "'"'"$1"'"'" not found, the
> following services are available:"
>                     ls "/etc/init.d"
>                 fi
>
> with
>
>                 if [ -n "$1" ]; then
>                         echo "service "'"'"$1"'"'" not found, the
> following services are available:"
>                     for F in /etc/init.d/* ; do
>                         $F enabled && echo "$F (autostart enabled)" ||
> echo "$F (autostart **disabled**)"
>                     done;
>                 fi
>
>
> Please elaborate on the list-start and list-stop question, I'm not
> sure I understand the purpose of those.
>

Originally I asked that question because I misunderstood what the goal of
this change was.

I thought that you were proposing to add the ability to enable / disable
multiple services at the same time, so I was asking about the ability to
start / stop multiple services at the same time.

It's clear not that's not what you were trying to propose.

So instead, what about listing the services that are running, and also
listing the services that are configured, but not running?

I don't know that that provides a lot of value, so it may not be worth
doing.

--000000000000d2399605a736bb5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 3, 2020 at 6:21 PM Stan G=
rishin &lt;<a href=3D"mailto:stangri@melmac.net">stangri@melmac.net</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">To obtai=
n the list of enabled (for autostart) services, you&#39;d type<br>
service list-enabled. For disabled services service list-disabled. It<br>
is useful when you need to quickly check which services are<br>
enabled/disabled or when helping other users troubleshoot.<br>
<br>
An alternative to list-enabled/list-disabled that I have considered<br>
was to output the enabled status of available services below the usage<br>
output, ie replace:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;$1&qu=
ot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 echo &quot;service &quot;&#39;&quot;&#39;&quot;$1&quot;&#39;&quo=
t;&#39;&quot; not found, the<br>
following services are available:&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ls &q=
uot;/etc/init.d&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
<br>
with<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;$1&qu=
ot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 echo &quot;service &quot;&#39;&quot;&#39;&quot;$1&quot;&#39;&quo=
t;&#39;&quot; not found, the<br>
following services are available:&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for F=
 in /etc/init.d/* ; do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 $F enabled &amp;&amp; echo &quot;$F (autostart enabled)&quot; ||=
<br>
echo &quot;$F (autostart **disabled**)&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 done;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
<br>
<br>
Please elaborate on the list-start and list-stop question, I&#39;m not<br>
sure I understand the purpose of those.<br></blockquote><div><br></div><div=
>Originally I asked that question because I misunderstood what the goal of =
this change was.</div><div><br></div><div>I thought that you were proposing=
 to add the ability to enable / disable multiple services at the same time,=
 so I was asking about the ability to start / stop multiple services at the=
 same time.</div><div><br></div><div>It&#39;s clear not that&#39;s not what=
 you were trying to propose. <br></div><div><br></div><div>So instead, what=
 about listing the services that are running, and also listing the services=
 that are configured, but not running?</div><div><br></div><div>I don&#39;t=
 know that that provides a lot of value, so it may not be worth doing.<br><=
/div></div></div>

--000000000000d2399605a736bb5c--


--===============4224084907802382198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4224084907802382198==--

