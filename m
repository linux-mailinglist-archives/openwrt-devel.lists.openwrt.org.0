Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BCE1DFAB9
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 21:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W8xOJqrCMRoNl3QbJN5CB4iRVoNkAuvomB8nnlpP0XY=; b=ldY/udWBabzpgN5Tei95+Fg8O
	DTC/2vbi+i2KxAZFB9ieEsfI1o/vIn8Kgy6xy6He99va5gsECZYYvI/1IyH1hKjrzZvnYaqZo74wy
	fyQA5Fibbh2b6q/Ybn87DS+ZQ4uZu1aLFleKGiowPYQmh7yB05RrQdWqw2+t9W3A03yincASwqOV3
	3WTUq/ehHq3VnlcLw8U2PiKwAU7r8AYDCmtAaulf2jfho71GrDAmf4njanFO/qzkNtqAguAAdg+up
	ZsHTDaJEDhCLtnvBS2OFCfHV/QwIY4PX5TR08W2vGgqMBT0AxzrXwvkLcJ0/8xCVDuPi0o0m1voy6
	EdVsblCZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcZup-0008F8-2m; Sat, 23 May 2020 19:34:39 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcZui-0008Dl-45
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 19:34:34 +0000
Received: by mail-lf1-x133.google.com with SMTP id u16so6656356lfl.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 May 2020 12:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KigIL8XovxrNT3Qt0N1ad3kQZEHZOGD/6e0ptsL09ag=;
 b=i4SDRSPdOl4eQGwb26xcmV+dUxE39XlWtvtk5t9p7pu+CdeWZOeW3prvz1yjk1CEJV
 ODuekUoHKn7/l5TmrhJNtEgkVodDnYWqT8Dt+rL0ZWlKAXuyHpu4JCS0ZyFPFJDFURfh
 RL2UD4I26mnPSTjAsrEoYLAYVlIygYMi00wNhitOcGPGWXB87nTETFApf3bZPMvqt7jy
 los0Okbg7kQuCCcvHcYlGt4M9Pw5ZerWPr2RNeZ5KCNByAPdIinDQgfj6ZMhqH+5jWrN
 TXu+KGezykctaEc9aSo+97ghZzsS6FUoRo6l+QlP/F5IG7Jh8ImWag0bWqNHNYa2YWO7
 OGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KigIL8XovxrNT3Qt0N1ad3kQZEHZOGD/6e0ptsL09ag=;
 b=hWCUhE9R4OQrMvs9sG2AFkrDLoo9tXyPBnLxwFF947qyJ8K3wn9EVMPJfaECc+qWlR
 iAgs3Lt1rJ4/uFzu6M8NE+UiNljP4jyw/aLohCR3unJbye8BgJt9QZq+z7I5SpE7JGwX
 RX771/68obPt4VEoivbJGAN++WSgQmHgouquJkXHnyqPDo46u5LGTiLa1c+Om3jC0pxg
 V1gLFi5+6rpgl38CGjKq3QOSylKYzjw4foK/dkntU+ILek893AG/HYBKy/sueVyyGZIR
 FZ+tkrjSMyWaSDvj4SJZy6Iy5+bIEJZPxDbDYZra8d/JxAXRab6vPZ6Yi1lOQzO6lydo
 C2Hg==
X-Gm-Message-State: AOAM532ri/e904b+29zduj2jOJWN6mZBkZICPCMkisKJv9iHcp5G5F87
 4fb+9KpoR0aoo60jcnAJAZu92c4NahQUJp+3d3kXUV9s
X-Google-Smtp-Source: ABdhPJxeEP6EpZmCgZiILyrrOJ/e/LZc/1kEu5HkQH6dO+cU9CCqfe+m2ELo2CmNWQ4mLuPdYzGbOVsNZI6nETSq3Ls=
X-Received: by 2002:a19:d57:: with SMTP id 84mr10700914lfn.112.1590262464757; 
 Sat, 23 May 2020 12:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200523180045.GB1372015@tuxmachine.localdomain>
In-Reply-To: <20200523180045.GB1372015@tuxmachine.localdomain>
From: Michael Jones <mike@meshplusplus.com>
Date: Sat, 23 May 2020 14:34:10 -0500
Message-ID: <CAJQUmm4xUhFZEUs+z+cH5KY30rY7-1QtO8Pdb-6o71_ahp=usQ@mail.gmail.com>
To: Baptiste Jonglez <baptiste@bitsofnetworks.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_123432_230705_BDB5A189 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Experimental "release goals" for 19.07.4
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
Content-Type: multipart/mixed; boundary="===============8732470469311940260=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8732470469311940260==
Content-Type: multipart/alternative; boundary="0000000000004fd6e605a655d53e"

--0000000000004fd6e605a655d53e
Content-Type: text/plain; charset="UTF-8"

On Sat, May 23, 2020, 13:01 Baptiste Jonglez <baptiste@bitsofnetworks.org>
wrote:

> If the initial concept looks good, we can think about automating some of
> it:
> tag bug reports on Flyspray/Github/Gitlab as blocking for a specific
> release, use "milestones", automatically find commits that satisfy a goal,
> etc.
>


I find it very confusing that there are so many different places for bugs
to live and be tracked.

What's going on with gitlab? Is that going to be the source of truth for
OpenWRT? Or will we always have 3 different bug trackers?

>

--0000000000004fd6e605a655d53e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, May 23, 2020, 13:01 Baptiste Jonglez &lt;<a hr=
ef=3D"mailto:baptiste@bitsofnetworks.org">baptiste@bitsofnetworks.org</a>&g=
t; wrote:=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
If the initial concept looks good, we can think about automating some of it=
:<br>
tag bug reports on Flyspray/Github/Gitlab as blocking for a specific<br>
release, use &quot;milestones&quot;, automatically find commits that satisf=
y a goal, etc.<br></blockquote></div></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">I find it very confusing that the=
re are so many different places for bugs to live and be tracked.</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">What&#39;s going on with gitlab? I=
s that going to be the source of truth for OpenWRT? Or will we always have =
3 different bug trackers?</div><div dir=3D"auto"><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--0000000000004fd6e605a655d53e--


--===============8732470469311940260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8732470469311940260==--

