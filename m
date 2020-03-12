Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303AC1826AD
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 02:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ucPB5odeIU9YDJujmY36K8asik1SP4zZHx1gxvl570Q=; b=qJIbppIlK2XkJCwStb8y1kAkQ
	AOE8LTJguz783/rBcuKnBn+H08VXt/Otrj1N08dJg8AP5v9pZErKg1EBpATfqwVhw01VAKR2L6OOa
	hqAv/YiDfKhqeraaINlljvFXbmktQmtSWEAW9hJ279TUkH9GvWr1qhc9XxGzh4Zv7E7c7THY2dtki
	e6DGSARkLCu04An/tGpZTHktuu4dzWFlZdIQp3ojnZek/2MGFghZJI+Yw2U9QAzd0jp9WitFr2SAT
	nbSUeN+EvxJutFXjpid/N28fzvsThVAfMRrn6F6n3kiJoWd/cSLhyGtUTCLQs8fil0ehLtpNMW1cI
	CE3C8zmzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCCm2-0002Q7-NC; Thu, 12 Mar 2020 01:36:34 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCClu-0002Ot-F0
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 01:36:28 +0000
Received: by mail-lf1-x142.google.com with SMTP id q10so3373529lfo.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Mar 2020 18:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J+3/zh0wyAn4ZtVWiFAZ5ksByqJaNXVTOeIq68VX5N8=;
 b=PoS782KsbPXYHONoetDgNMHqBc0FOhH2K0F2fHM7PbBnDquPwAj5HbRa1SSPuv++Fl
 KNJMZ6nzXqypD6gmAeqnV/eshdOfjfiUrAtz0bNhVtZd/I8o6HzYP4KaP97+9rQDteZT
 /j0AEaUfXD74egfcQ6liSLr09TKcZI4/vM3nn2dy+FEYK4hvK0joK1ePuFvb78rjvOhZ
 wXEvotOjyhJb5amSuzTY3D+k+TZcDso4iXxuX26E0pfoDk5ZAKyUBJIzvV9TNoeSBe/I
 dULFMd8Xn9Yh9K9ty5iNtyxF8+qY8jTAQzR2i+2AkArYzGoDObXaly7TrlNBvde92+k/
 xysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J+3/zh0wyAn4ZtVWiFAZ5ksByqJaNXVTOeIq68VX5N8=;
 b=F90typDqhokRpyKsAD1/Xm3t2JbK+VPgWwoRw5A9JyiGU7hqk5n1QT9nBKecnpWnzb
 rqmjKeZyu4SZqpTu9+bO2YTwUiR3y+337dTxrsxi3XEzCMY84YyXanKEe1ezfe2j/2kK
 UkRZ6ycQQ6CDmsFHqEgC8OJrsSqXVF0t3WvyoP8+lzavO4Vh0GbTj1iufjzTUlFklkln
 X3MEMH7HbtR0BeD0hMl1uvJghHCYca29B6pKIx9tvuANHFoKV6xaJ/d1JVX7OGo8fa4t
 mHNliMgCMsZcKNkP5hhicJZvta+zMkhjnlIAIhYyMrDKyFmiKlEjVPPFwn7dE3CXOJeL
 k6qA==
X-Gm-Message-State: ANhLgQ12/9EN7mNMjHdkb45pFj8+AN40icgbS0AjN51sDORmo6xuKqyZ
 w+zzpntV7hJjT9nHgBwTc7XM1dE0827Q3d+V+Uj1K0R64K/ldA==
X-Google-Smtp-Source: ADFU+vual5vv3H3uVzdk+lwXyvhCZ/6yULpXqDGThL4hBqOmg9UoGF9csxSbIGn8AIP4JFYiFbUASjuDJtrBX8FcTFs=
X-Received: by 2002:ac2:59de:: with SMTP id x30mr3578276lfn.144.1583976982274; 
 Wed, 11 Mar 2020 18:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200305084912.14659-1-ynezz@true.cz>
 <px9v7VGUzQWVsQG8LA985yU7sHqErVFNEMj8VRtq23cb@mailpile>
 <20200305113526.GB86312@meh.true.cz>
 <CAJQUmm4Jp1jWkR7OMdUvn4KEo9CQM0UuWxZqYyhjQ=X-ZzQ0jQ@mail.gmail.com>
 <f23ab0c2-c208-4354-b6cd-b4f6d1821818@localhost>
 <CAJQUmm5ncym=rtPLwr-9zf3ctrg2NDST_DB7_u8CH+js7RBAbg@mail.gmail.com>
 <abb1c88b-df58-97ba-6e41-9c92a31593bb@wwsnet.net>
In-Reply-To: <abb1c88b-df58-97ba-6e41-9c92a31593bb@wwsnet.net>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 11 Mar 2020 20:36:10 -0500
Message-ID: <CAJQUmm7XmugrXDG2RTgAmoc01_877WuP=HMxyPWZF8aRxGr_ww@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_183626_677047_E66067E0 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
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
Content-Type: multipart/mixed; boundary="===============7579502657669633132=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7579502657669633132==
Content-Type: multipart/alternative; boundary="0000000000005c784105a09e61d4"

--0000000000005c784105a09e61d4
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 6, 2020 at 1:19 AM Jo-Philipp Wich <jo@mein.io> wrote:

> Hi,
>
> > rpcd crashes for me daily, to the point where i have a script that
> restarts it
> > every 5 minutes.
> >
> > It also gets hung a lot without crashing, and stops serving responses to
> ubus
> > traffic.
>
> I've never heard about anything like that until now, not even in the forum
> or
> IRC chatter. Getting some details here would be interesting.
>
> ~ Jo
>

I've reviewed the mailing list for the previous year, and found this post:

http://lists.infradead.org/pipermail/openwrt-devel/2019-October/019592.html

Which appears to have been merged into rpcd with this commit :
https://git.openwrt.org/?p=project/rpcd.git;a=commit;h=bd0ed2521476c3e5b6c1a0e0bd2c386ea809d74b

This post / commit appears to identify the same crash that my scripts cause.

However, the commit for the OpenWRT 18.06 branch (Still receiving security
fixes, as far as I can tell), has this commit for RPCD

https://github.com/openwrt/openwrt/blob/openwrt-18.06/package/system/rpcd/Makefile

commit 3aa81d0dfae167eccc26203bd0c96f3e3450f253
Author: Jo-Philipp Wich <jo@mein.io>
Date:   Wed Nov 28 12:12:04 2018 +0100

    file: access exec timeout via daemon ops structure

    Since the plugin is not linked, but dlopen()'d with RTLD_LOCAL, we
cannot
    access global rpcd variables but need to access them via the common ops
    structure symbol.

    Signed-off-by: Jo-Philipp Wich <jo@mein.io>



To see if that really fixed the issue, I will update my build of rpcd
from 3aa81d0dfae167eccc26203bd0c96f3e3450f253
to bd0ed2521476c3e5b6c1a0e0bd2c386ea809d74b (or git head, perhaps) to see
if the crash gets resolved.

--0000000000005c784105a09e61d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 6, 2020 at 1:19 AM Jo-Philipp=
 Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.io</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
&gt; rpcd crashes for me daily, to the point where i have a script that res=
tarts it<br>
&gt; every 5 minutes.<br>
&gt; <br>
&gt; It also gets hung a lot without crashing, and stops serving responses =
to ubus<br>
&gt; traffic.<br>
<br>
I&#39;ve never heard about anything like that until now, not even in the fo=
rum or<br>
IRC chatter. Getting some details here would be interesting.<br>
<br>
~ Jo<br></blockquote><div><br></div><div>I&#39;ve reviewed the mailing list=
 for the=C2=A0previous year, and found this post:<br></div><div><br></div><=
div><a href=3D"http://lists.infradead.org/pipermail/openwrt-devel/2019-Octo=
ber/019592.html">http://lists.infradead.org/pipermail/openwrt-devel/2019-Oc=
tober/019592.html</a><br></div><div><br></div><div>Which appears to have be=
en merged into rpcd with this commit :=C2=A0<a href=3D"https://git.openwrt.=
org/?p=3Dproject/rpcd.git;a=3Dcommit;h=3Dbd0ed2521476c3e5b6c1a0e0bd2c386ea8=
09d74b">https://git.openwrt.org/?p=3Dproject/rpcd.git;a=3Dcommit;h=3Dbd0ed2=
521476c3e5b6c1a0e0bd2c386ea809d74b</a></div><div><br></div><div>This post /=
 commit appears to identify the same crash that my scripts cause.</div><div=
><br></div><div>However, the commit for the OpenWRT 18.06 branch (Still rec=
eiving security fixes, as far as I can tell), has this commit for RPCD</div=
><div><br></div><div><a href=3D"https://github.com/openwrt/openwrt/blob/ope=
nwrt-18.06/package/system/rpcd/Makefile">https://github.com/openwrt/openwrt=
/blob/openwrt-18.06/package/system/rpcd/Makefile</a><br></div><div><br></di=
v><div>commit 3aa81d0dfae167eccc26203bd0c96f3e3450f253<br>Author: Jo-Philip=
p Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.io</a>&gt;<br>Date: =C2=A0=
 Wed Nov 28 12:12:04 2018 +0100<br><br>=C2=A0 =C2=A0 file: access exec time=
out via daemon ops structure<br><br>=C2=A0 =C2=A0 Since the plugin is not l=
inked, but dlopen()&#39;d with RTLD_LOCAL, we cannot<br>=C2=A0 =C2=A0 acces=
s global rpcd variables but need to access them via the common ops<br>=C2=
=A0 =C2=A0 structure symbol.<br><br>=C2=A0 =C2=A0 Signed-off-by: Jo-Philipp=
 Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.io</a>&gt;<br></div><div><b=
r></div><div><br></div><div><br></div><div>To see if that really fixed the =
issue, I will update my build of rpcd from=C2=A03aa81d0dfae167eccc26203bd0c=
96f3e3450f253 to=C2=A0bd0ed2521476c3e5b6c1a0e0bd2c386ea809d74b (or git head=
, perhaps) to see if the crash gets resolved.</div><div><br></div></div></d=
iv>

--0000000000005c784105a09e61d4--


--===============7579502657669633132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7579502657669633132==--

