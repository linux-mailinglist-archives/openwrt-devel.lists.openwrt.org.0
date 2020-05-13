Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F91A1D1C24
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 19:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lGEwSxuNiqT77sbFXmj/Rw67hovUZGNzS9ZsP4o9lfg=; b=aYD6gO8Lbh5isbuDODei2XFYO
	G1XzEmbV5DvZroh3ebyi/sgY6lpNom6e4jfVeFkI7fH9OOEr2ti9jTXi9W8VBS3Jh/W16cnpxDu7h
	BkL8EvN405tV7w2Dh2pzzrOzjmh/FXDEdT3I0ef4INNPt2qDLLMCqBWFSIZVQCrFJ9E+Lw1XsDPFt
	00fUo94/08KNssHjlgDolwxwtrvdUKajn8xNtgkzsY82JJXJWQzRN+Fgln7/lTzX+XtqrgkH+DHME
	iLV6+WIyrtMj97cPCgcRMzireMRxn70oQB/0EkyDX+oVirbEd9iCL1psE3/MbR/dhT+lTgq5ePgHt
	wYlN4R+Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYv5l-0000wv-Kk; Wed, 13 May 2020 17:22:49 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYv5c-0000wb-90
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 17:22:41 +0000
Received: by mail-lf1-x132.google.com with SMTP id r17so166966lff.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 10:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ID23KxBGRqn8uB/XBthohvuSC9dk8ht+vwBkAadxXtA=;
 b=lrM4H74LzTzMuy+zKpb34Tja/dNmqS7b8/cPL0ec3swdpcUhnkQX/5hO+y98JgRWSJ
 fVD2SvehBq2VA0+CdaqoSjlKJhl9Xej/56NkQSbkrD3M6E6yE93zgzg5cOpgdmxqon4h
 22ygITxCq3thTwrgn9U8o7kf8O0gzasnxXGNcthbLDuaYbWfkeUDupxpPzO+3XhYEplI
 uOx7A9UGRf/37js0yGI6NSwzT9LJk3j82Bf0fGKwSaR427xYAR0jZ32d+hML2dyPIpOi
 Oe+Z1kEbyUIeqreoCs4zpwGA7vtzRqXPoFVyVeeHItxvtZJ38V0A4BaJSoKLanv8cyqX
 Ys+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ID23KxBGRqn8uB/XBthohvuSC9dk8ht+vwBkAadxXtA=;
 b=l2CSzUMYAQAUOkyVy039WMLWCyYJs5vht85dkqXIqTsw+R3L8fw47pIZZWTbB4aEra
 YdxLQ3NY0Yh7AmH2BZgloOgBCAHTvEMevbwev587e2DWmJVU6P++EH76Xsazkctvfza9
 qRFU8pwPkwsZcJgMuEpAPn21jqb+L/qcwyME3yBLAcqYxGb67P/AiQd74OhnWgSiWMsH
 7/ohGo9AHOazhaKR6MSPvne53XpmQePX790EZjuIaGlRv+PvLyYVoZ/GXO3tyIA4QT1V
 J23xqoCb6bJTuiOjZ4jALW35Hmm/3k/O/LjamTAU4wxjwjLNsUkO7OGuL4nZCU0Oj6f1
 5TVQ==
X-Gm-Message-State: AOAM533qUFFS4gaytWP4u407P6989TXQAIt26CbXPvFTDCSe7z2zV0QV
 pnzYW0jE8v7LIeofZ9AQbB7wOhsvRH91RuUvVug+8w==
X-Google-Smtp-Source: ABdhPJyH7ae+hHYd1tkibV80vtMedv1IT0NQh6ewFRjlRQLxFEmiaX76JtoRbASlfDHnsMr9FSUstc7HJ7+onjhjO6g=
X-Received: by 2002:a19:6a02:: with SMTP id u2mr359243lfu.144.1589390558440;
 Wed, 13 May 2020 10:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <86daec20-93b3-f5bb-8b38-98c0e2160d80@wwsnet.net>
 <CAJQUmm7tProVh=+JPp6owcEKQL5W4vUBwmiBNV7KLVMz4TNwqg@mail.gmail.com>
 <c3e4850c-ab4d-7770-7831-be479e8d7bea@wwsnet.net>
 <F4EFD3C0-3D02-4D0C-A119-44543C8F7781@darbyshire-bryant.me.uk>
In-Reply-To: <F4EFD3C0-3D02-4D0C-A119-44543C8F7781@darbyshire-bryant.me.uk>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 12:22:26 -0500
Message-ID: <CAJQUmm7EFqzV40dyoxYCYyN=_NA+usxRVXkHXFS-pryfx92c9Q@mail.gmail.com>
To: "Kevin 'ldir' Darbyshire-Bryant" <ldir@darbyshire-bryant.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_102240_372448_E2999EF3 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
 Jo-Philipp Wich <jo@mein.io>
Content-Type: multipart/mixed; boundary="===============1472089041485502397=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1472089041485502397==
Content-Type: multipart/alternative; boundary="000000000000a5484705a58ad371"

--000000000000a5484705a58ad371
Content-Type: text/plain; charset="UTF-8"

On Wed, May 13, 2020 at 4:42 AM Kevin 'ldir' Darbyshire-Bryant <
ldir@darbyshire-bryant.me.uk> wrote:

>
>
> > On 13 May 2020, at 09:57, Jo-Philipp Wich <jo@mein.io> wrote:
> >
> > Hi,
> >
> >>
> >>    That loop-kill-all thing should be a kind of last resort really,
> what's
> >>    actually needed is some kind of "init 1" procd equivalent which
> shuts down all
> >>    services in a more or less clean manner.
> >>
>
> Beware the watchdog Luke.
>
>
Could you elaborate on this?

--000000000000a5484705a58ad371
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 4:42 AM Kevin=
 &#39;ldir&#39; Darbyshire-Bryant &lt;<a href=3D"mailto:ldir@darbyshire-bry=
ant.me.uk">ldir@darbyshire-bryant.me.uk</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; On 13 May 2020, at 09:57, Jo-Philipp Wich &lt;<a href=3D"mailto:jo@mei=
n.io" target=3D"_blank">jo@mein.io</a>&gt; wrote:<br>
&gt; <br>
&gt; Hi,<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt;=C2=A0 =C2=A0 That loop-kill-all thing should be a kind of last res=
ort really, what&#39;s<br>
&gt;&gt;=C2=A0 =C2=A0 actually needed is some kind of &quot;init 1&quot; pr=
ocd equivalent which shuts down all<br>
&gt;&gt;=C2=A0 =C2=A0 services in a more or less clean manner.<br>
&gt;&gt; <br>
<br>
Beware the watchdog Luke.<br><br></blockquote><div>=C2=A0</div><div>Could y=
ou elaborate on this?=C2=A0</div></div></div>

--000000000000a5484705a58ad371--


--===============1472089041485502397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1472089041485502397==--

