Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B68194ACE
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 22:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RvP8zCMvpuRUmqK2yB6B8cyO7TdJU2FXv1ywOfB591Y=; b=RETRbxYVcIavB2F72UK2HdAnA
	Y7fmvbJyRocTKzN0qCHmzzRa6KanXEExeXyScm6kqdtqv72p6dQYIO7f2HNlF/iTffSdyX4V4TI0+
	i5ZYZQGtdIUHNLeEdywFdPIk1jJN06fTDUSjPkwh9UWIaCcFB7QXWaNyErEWRnbmh2Oe31CLKkyxY
	AU9jX0T7rfo//Js9E8cfN9oCmcMqXGd+LLiKt11fdHGxMEpo9SCd6mVI85mLljDeQP6og9OhGcJWu
	mbPfyUVgQ8FEbTbZbRfKTcC94IigQ5NhAe7FxTYmcR+ZOMwiHMlM81QufUfZExc9Ot5jRt1UL7nP2
	nqaYvrDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaH4-0004Ny-I1; Thu, 26 Mar 2020 21:42:50 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaGx-0004Nb-2C
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 21:42:44 +0000
Received: by mail-qt1-x82b.google.com with SMTP id i3so6906697qtv.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 14:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WYGbTFa8L3tfso89C3RCVh1bpZlqki/momTLLwEOYhM=;
 b=bYK7pyJ3eSnnR+C1lUwhaHv0d7Ud7z1/dFZyxcMFo8Y34WZBEGxA8AIOr/VWGGWYHE
 qJa0UwpPZfRSL7xhzo/F0d/0ZCyKwrxyXH18s6Hm/cotvnRu8TpgQo557wAkS9MTAO48
 3OZQGvC/7Cg4f2Tx4qWvjpgCIWvZ40Xws5PL41B+Y49YXFgDlT0a5ZHAbE+eNQzG2bl4
 PE5y3YjXQCXDyRBw8LiKzlZEaAcBE9sZYta3mmPs4nJjQh5mdgOn5GXONU+91rapRjXD
 fvLKcehOinCeECkn+VRmF+j09/yck/CpBZLOculLwpCX0spjVwxPE9spL4PreHKef+cL
 8RHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WYGbTFa8L3tfso89C3RCVh1bpZlqki/momTLLwEOYhM=;
 b=rG79R8CA9hUwsCKGBd3c+bY0uUcMYzgDbkcExmg9D70nOUHhW9Mu75gC4x5P1iV9lA
 ubAPG8mQIc8cK5UZDjEJaMpwjFT8bA5KXiexVAf6XsjDI5CsTESLYSZMCaQNlOsdT8MZ
 uO9c7TDSs5Q3o3gjSEnugCxbfRye+zC/VnWK8zECGaK0OK8jFajysK/eBpsh2cpcmzyg
 IkbW+fCxoPKG1O6Oolz2AJUG3N70Zql1Q9fjEfJIb7AxVsXsHYiwQunKMWajwPbmId6T
 LysYKTB+kEgZy/OP2R9BbURNAmFJc6BEQZvYvMeV/4AEcK1n2GxIoJRIwoFxeRTsAjDw
 Xm7A==
X-Gm-Message-State: ANhLgQ3HFABoocaPLLwVR6pzrE5cFhPfrbCAoeEWtvPH6d0yh1IZID+F
 8UvlwVjZDcWM+fD2jtSDW3b8BuOTIsr7euRNk5qOCw==
X-Google-Smtp-Source: ADFU+vtqfW8Cp9ZM1PeGCd4OXRO7XY03vBKJzls00XTHS9JLSP4ANCzh0/72hf6bN31e76nKAtmBIukBiA3FQvbCi7o=
X-Received: by 2002:ac8:6942:: with SMTP id n2mr7351539qtr.238.1585258959702; 
 Thu, 26 Mar 2020 14:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
In-Reply-To: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 26 Mar 2020 22:42:28 +0100
Message-ID: <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
To: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_144243_133807_95E353AB 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robimarko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3431319475612151438=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3431319475612151438==
Content-Type: multipart/alternative; boundary="0000000000002b8f6505a1c8dd31"

--0000000000002b8f6505a1c8dd31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <joel@aenertia.net> =
wrote:

> Hi all,
>
> I received my ax89x yesterday and have added a stub wiki page for it here=
:
>
> https://openwrt.org/toh/asus/rt-ax89x
>
> There is a published build chain for the device from ASUS - I haven't
> tried compiling it.
> I've done some preliminary poking and opened the case up - dumped the
> bootlog.
>
> Very interesting device and likely a good target for 10Gbit and Wifi6 wor=
k.
>

Looks great, just that the price tag is painful.
Its HK01 reference board based, a lot of stuff has been upstreamed but a
whole more is missing for IPQ807x upstream.

>
>
> -Joel
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000002b8f6505a1c8dd31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 26 Mar 2020 at 22:39, Joel Wi=
r=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.net">joel@aenertia.ne=
t</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif">Hi all,</di=
v><div style=3D"font-family:verdana,sans-serif"><br></div><div style=3D"fon=
t-family:verdana,sans-serif">I received my ax89x yesterday and have added a=
 stub wiki page for it here:</div><div style=3D"font-family:verdana,sans-se=
rif"><br></div><div style=3D"font-family:verdana,sans-serif"><a href=3D"htt=
ps://openwrt.org/toh/asus/rt-ax89x" target=3D"_blank">https://openwrt.org/t=
oh/asus/rt-ax89x</a></div><div style=3D"font-family:verdana,sans-serif"><br=
></div><div style=3D"font-family:verdana,sans-serif">There is a published b=
uild chain for the device from ASUS - I haven&#39;t tried compiling it.</di=
v><div style=3D"font-family:verdana,sans-serif"></div><div style=3D"font-fa=
mily:verdana,sans-serif">I&#39;ve done some preliminary poking and opened t=
he case up - dumped the bootlog.</div><div style=3D"font-family:verdana,san=
s-serif"></div><div style=3D"font-family:verdana,sans-serif"><br></div><div=
 style=3D"font-family:verdana,sans-serif">Very interesting device and likel=
y a good target for 10Gbit and Wifi6 work.</div></div></blockquote><div><br=
></div><div>Looks great, just that the price tag is painful.</div><div>Its =
HK01 reference board based, a lot of stuff has been upstreamed but a whole =
more is missing for IPQ807x upstream.</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-s=
erif"><br></div><div style=3D"font-family:verdana,sans-serif"><br></div><di=
v style=3D"font-family:verdana,sans-serif">-Joel<br></div></div>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--0000000000002b8f6505a1c8dd31--


--===============3431319475612151438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3431319475612151438==--

