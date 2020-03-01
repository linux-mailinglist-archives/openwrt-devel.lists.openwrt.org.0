Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9BB174D94
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 15:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vF2DrVtyofCQql2PGd3GSIDymd54xyXsqknjLN3PQqc=; b=XSrtiW+8u3IlG5EJHsVAWvsmt
	ickGc8K9NqhzUB7bgIib7+2H63oce0MKRgsiJhvMaWxTNaUUXUgstWMuYYE2Mpa+ByB2P8OR98S+s
	MuwlY5/C1EgcjNB/RO+bzY65RZkLy1Tw9sNT5q3YwLN4xxm6O+LC/wDSN3ssSOl2K65B817XRH+Av
	UWGKUceNIGCmPjo29aLzVGaJaEcsk95WyIJj9HGSSvrExdvtMpCQuJZLW55BPdpt267SswoUugKd1
	SeGV+uguoADHsZBDtyVgKyhUEst7agWfKAdt7WSA8IqbVQFlOKzpNEfZ87z7mhyYR5qbX4VdioTB7
	qfbhcWKLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8P8h-0004lI-7P; Sun, 01 Mar 2020 14:00:15 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8P8S-0004bn-Fs
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 14:00:01 +0000
Received: by mail-vk1-xa42.google.com with SMTP id y125so574035vkc.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Mar 2020 06:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iXx8OhomtV83/dcT5vJXlFwKcZuEt+jyEVRGGHfU9T4=;
 b=uiiDBHOZ9SlmqsShIHBb/E8BN9Pc/3WOk+mWJxyel/a82SnVQdDd1SQy1HOi/XwXHi
 yYf62jBBVXu2v5quK1l7W9CytaMCIxt6WlyJYc58yxmpPlYY+Tt+8lOTsux1y7IR5Mm+
 Se2DiZW3sWDm6yiPIJJL1UawNcTQRly66ZFcxpoY85TyD11JOgaiEAYEg2+A5gL5Pfrp
 E8XT2hP+fooO1wUkSDSX28rltQufvaPfh4vwpUjktIZzFJ1B6+hX1ho2uHL6AbbFw2p1
 oeGP9G9D5Fyye3BIiJJXBSJs3rR5vxLhR0/0CdjjY5pRsje87VR5kC9Tp+WxhxSxGrI9
 ebbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iXx8OhomtV83/dcT5vJXlFwKcZuEt+jyEVRGGHfU9T4=;
 b=mKwktTAtUCrurjyNJbApjqjsH1vvPkutyShlTTHhHp98cP6O9aXXfPt2OJPU/YNwcn
 puXP1X7+uPIfek8fFRQXxbDK4hGWY69MG+weucuKeG0IFb0YJj3kfgFaXdnoccHG4Q9G
 twnWcBcbHJ+qoN5Q429XI39v8+S+bOxTgioEIgh7BcdckdJ0j3dpvdiJcI7IViQv8hr7
 DMxVTStorKkRR5BXqmP2QN9Id65A7FL5ItVZmpE5G6GgaJB4ShVJmksHaklIemsi3PoH
 92ZNPng2avgr+JtaEIYb40Inupye0uPeSuz+50J/b5tzRHbhVqAAAba6ds9slw48Q2BE
 OkQA==
X-Gm-Message-State: ANhLgQ24D7IeLITAu+ZsJ1Hb+eESPJNPJ1KfWn1zp1BRHQL3CC8x1AJh
 8xxukeJcNb40+06c9vJQPeYnqDv9Bmrpkjw59jLJ
X-Google-Smtp-Source: ADFU+vsliHUpnTjY98dn7uYr0ig6vXh8bTwEsvQzkO+8D6ZxF8RyLQHarsN/lPPbz1ZncZOHZ4oYd1sCW2/+yZgq5nk=
X-Received: by 2002:a1f:ad92:: with SMTP id w140mr6797566vke.10.1583071199290; 
 Sun, 01 Mar 2020 05:59:59 -0800 (PST)
MIME-Version: 1.0
References: <20200127181946.11978-1-rsalvaterra@gmail.com>
 <20200301130625.GB70913@meh.true.cz>
 <CALjTZvZSLEH-P3Ht8-HFtbgK7YN1-gBGY1wzMtUH2hYK_BC2Mw@mail.gmail.com>
 <CALjTZvbNs0k9i-Rkdh-F9Kqxr1Xu2tRcz6RdBpR801FE4y7-vA@mail.gmail.com>
 <20200301134731.GC70913@meh.true.cz>
In-Reply-To: <20200301134731.GC70913@meh.true.cz>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Sun, 1 Mar 2020 13:59:47 +0000
Message-ID: <CALjTZvYMK9pLgaFc4ZD9bp9yBHgs4RkXMy+Enyoh1Tza6XxUnQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_060000_557070_676CDC3B 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath9k: enable hardware random
 number generator.
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============6776855220496684982=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6776855220496684982==
Content-Type: multipart/alternative; boundary="0000000000007cea57059fcb7cb3"

--0000000000007cea57059fcb7cb3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi again, Petr.

A domingo, 1/03/2020, 13:47, Petr =C5=A0tetiar <ynezz@true.cz> escreveu:

> Rui Salvaterra <rsalvaterra@gmail.com> [2020-03-01 13:39:37]:
>
> > Ah, silly me, you're absolutely right. This is just half the patch, and
> > it's perfectly fine the way it is, so I'm not enabling anything new, ju=
st
> > exposing the existing kconfig. Please ignore my previous email.
>
> Well, I've re-read it again.
>
> Your commit description forget to mention, that you're actually removing
> ADC
> based RNG feeding for ar5k, which is missing in that upstream rng.c.
>

Yes, I don't want to regress that, of course.

So commit subject and commit description needs some work. You should
> consider
> as well Felix's remark and if I were your, I would simply handle this via
> upstream, once upstreamed, simply backported it to OpenWrt.
>

That's my preferred course of action too, upstream first. As for Felix's
concerns, I'm very thoroughly testing on all the hardware I can get my
hands on. I'm worried the most about AR5008, which is the earliest one, but
now I have a card to test it.

Thanks,
Rui

--0000000000007cea57059fcb7cb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br>Hi again, Petr.</div><div dir=3D"auto"><br><div =
class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">A =
domingo, 1/03/2020, 13:47, Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@tr=
ue.cz">ynezz@true.cz</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">Rui Salvaterra &lt;<a href=3D"mailto:rsalvaterra@gmail.com" target=3D"_=
blank" rel=3D"noreferrer">rsalvaterra@gmail.com</a>&gt; [2020-03-01 13:39:3=
7]:<br>
<br>
&gt; Ah, silly me, you&#39;re absolutely right. This is just half the patch=
, and<br>
&gt; it&#39;s perfectly fine the way it is, so I&#39;m not enabling anythin=
g new, just<br>
&gt; exposing the existing kconfig. Please ignore my previous email.<br>
<br>
Well, I&#39;ve re-read it again.<br>
<br>
Your commit description forget to mention, that you&#39;re actually removin=
g ADC<br>
based RNG feeding for ar5k, which is missing in that upstream rng.c.<br></b=
lockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Yes, I =
don&#39;t want to regress that, of course.</div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
So commit subject and commit description needs some work. You should consid=
er<br>
as well Felix&#39;s remark and if I were your, I would simply handle this v=
ia<br>
upstream, once upstreamed, simply backported it to OpenWrt.<br></blockquote=
></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"></blockquote></div></div><div dir=
=3D"auto">That&#39;s my preferred course of action too, upstream first. As =
for Felix&#39;s concerns, I&#39;m very thoroughly testing on all the hardwa=
re I can get my hands on. I&#39;m worried the most about AR5008, which is t=
he earliest one, but now I have a card to test it.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Rui</div></div>

--0000000000007cea57059fcb7cb3--


--===============6776855220496684982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6776855220496684982==--

