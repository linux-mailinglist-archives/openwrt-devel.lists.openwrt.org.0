Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3D8158DEE
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 13:08:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nLnXZOEcbk6PUKPb9ErkUtyY+YKuUWx1N266OM9wPVo=; b=F2EYaKVHV91D4q37JhimZAjcd
	oxVeeDaxgxxC0aL6C2RZhTbPYB5qiT6BwVb1gVgYrLHMbfE+3EIll6lAblESVdxf0ooVjjjNOkd9j
	1fk7GiRI3JgultohSLOg6V9tLl5dL5N7SoR7LYIBtWyLJTR+f5iV12V6HbJtSoSdc5JYR7Bq6ISJl
	eXh11JvdHnsWBilLdl7eAYEmXFoEweZXZk6D7ZkLcZNiTMb2JvNwrajg+LHt6v87gOLOdxNpMGRPg
	gH39F8Ia0oo5oVvxs4LEqhXa8zf6H9suCoFUifqvjOER5BsbYL01YbF4PzlzjH5T733t3XmIITrmp
	CXEKrn9rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UL3-0003Ik-R0; Tue, 11 Feb 2020 12:08:25 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UKx-0003IE-P6
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 12:08:21 +0000
Received: by mail-pf1-x42d.google.com with SMTP id k29so5390551pfp.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 04:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ToQpUXet8u5qntEJhWvaoGiBiNQnmlcS44i30hqr04=;
 b=vNg6a+e5B1YOqnqEukOCt5ikZ3buk3v/CJvxg+O/ZBal3D/vrNyD7Fo6Xtz7RrKtXP
 KixM5C00G9mzr5IFCPUyZiV1wE4jdHPuljZO8DLvKNRow3QYKGHgerZSziEeXIT4wNcN
 dR2/tcTwtsN4czfMg5ZuGxkUXjmamTpQAt2nT9OxxWNstg42NI7kARV1/9UaGeWGzBGc
 +6b4JUqBqqGClmMDh2HohZf7gawgn9tWevQKqdNPGkh3eRQnfySpmCoPu8zeNrAqjfLj
 iADg33H1c0tSSmUYsUJKypWnOhbM0WmEGNu0xKxh59TzkT2DjCZ4P0MstbhE8PCGBobE
 HyQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ToQpUXet8u5qntEJhWvaoGiBiNQnmlcS44i30hqr04=;
 b=CLQF10tqgAY6omVSqQXfaO5I4yrE9jsVxRt0Zg528wG6xQYZsRc/DMH1bUuhGKn6+1
 uF+0s2OScAjsF3bwY9yQTaFFmZ3Tr6p/f9p6h8Bn6kG39NWGnJBUTizKnQDpdRo+X6jN
 Doy+3ieZyfdNn/YHB0EOSqMdg9BMXk5WVtcnM6wukSpXwnL0x4WCL0hotZ7SdY7x+HIe
 NjPEfP9+kP1wvNf7GDs0I0GO49VX9iNgZa/mdufjq0QCkf0wmai73d5mOEmHgO+haPlT
 mN3K92BiBZACYxoBvLykgHlrIdyKaszfk0Y+K8KjhERUqKSdgAsKCMn5lDo7HXk5qAcY
 dM/g==
X-Gm-Message-State: APjAAAXI0py5tCD9HRKJad+wSh+bhJvIlM4pUpg2hpeyf4qsEXM82+ts
 XJYUv4bNjqb0jNLS1j3o/oXweyTUve8uFItbXPk=
X-Google-Smtp-Source: APXvYqwObAsJuV7X5iOJozchTixRTaSibyoJnkWvyX8V5rs7RswWW7W8wcYVgMp3CdjTQBD4loBaSvyT65Nkhfff0RU=
X-Received: by 2002:a63:a411:: with SMTP id c17mr6680585pgf.450.1581422897686; 
 Tue, 11 Feb 2020 04:08:17 -0800 (PST)
MIME-Version: 1.0
References: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
 <CAJq09z6y3GsSi3Efs817kuHkpp_M9C9gZt+GPg-hr3Ju7TfQzg@mail.gmail.com>
 <CAJsYDVLvPR8BRe=WGh0Op3a4dE+4CBkyC7_HeEyBcHiwOo=wBA@mail.gmail.com>
 <CAJq09z4GP8RJkusx9HtVNdgguiU_Mupbus=Ts12boro25uFVRQ@mail.gmail.com>
 <CAJsYDVLzCzer=ya-CeN3rLQuXxGUhuZb8umkxZeg14K110CE0Q@mail.gmail.com>
 <CAJq09z4D0DHZ8Ne-h1Tb-obAzJ1fKdYRQ1vhvnFytcQom+ynjA@mail.gmail.com>
 <CAJsYDVK=ukZbfCQO-+uHA6fpmMCsx+rFKueJcyRcU-LMipPDjQ@mail.gmail.com>
In-Reply-To: <CAJsYDVK=ukZbfCQO-+uHA6fpmMCsx+rFKueJcyRcU-LMipPDjQ@mail.gmail.com>
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Tue, 11 Feb 2020 09:08:05 -0300
Message-ID: <CAJq09z4KwqvN_Y7SdENffwRkeg119iuwXzEPVkEfdiPtiiGdBQ@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_040819_838312_ED4CFE06 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Random data on rootfs_data for tp-wr2543nd-v1
 only with ath79
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
Content-Type: multipart/mixed; boundary="===============1427971645170550310=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1427971645170550310==
Content-Type: multipart/alternative; boundary="0000000000000e6d9a059e4bb6a7"

--0000000000000e6d9a059e4bb6a7
Content-Type: text/plain; charset="UTF-8"

> There's no need for this. If it's implemented we could simply
> use it on all chips and gain the increased flash reading speed.
>

Ok. I'm using it during my tests, but I could remove it in the final
version.


> On memory-mapped flash reading, spi controller issues 0x0b
> fast-read instruction. for the sake of correctness in spi-mem
> we should check whether spi-mem-op matches 0x0b + 3-byte
> address + 1-byte dummy before executing the operation.
> You'll need to set m25p,fast-read for spi-nor code to generate
> this matching operation.
>

The old fast read patch did not check the dummy byte. I'll do it as you
suggested.

I already have a working WIP patch. It does fix the issue. I might post a
RFC version today.

Regards,
> Chuanhong Guo
>

--0000000000000e6d9a059e4bb6a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">There&#39;s no need for this. If it&#39;s implemented we =
could simply<br>
use it on all chips and gain the increased flash reading speed.<br></blockq=
uote></div><div dir=3D"auto"><br></div><div dir=3D"auto">Ok. I&#39;m using =
it during my tests, but I could remove it in the final version.</div><div d=
ir=3D"auto"><br></div><div class=3D"gmail_quote" dir=3D"auto"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"></blockquote></div><div class=3D"gmail_quote" dir=3D"auto=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><br>
On memory-mapped flash reading, spi controller issues 0x0b<br>
fast-read instruction. for the sake of correctness in spi-mem<br>
we should check whether spi-mem-op matches 0x0b + 3-byte<br>
address + 1-byte dummy before executing the operation.<br>
You&#39;ll need to set m25p,fast-read for spi-nor code to generate<br>
this matching operation.<br></blockquote></div><div dir=3D"auto"><br></div>=
<div class=3D"gmail_quote" dir=3D"auto"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></bl=
ockquote></div><div dir=3D"auto"><span style=3D"font-family:sans-serif">The=
 old fast read patch did not check the dummy byte. I&#39;ll do it as you su=
ggested.</span><br></div><div dir=3D"auto"><span style=3D"font-family:sans-=
serif"><br></span></div><div dir=3D"auto">I already have a working WIP patc=
h. It does fix the issue. I might post a RFC version today.</div><div dir=
=3D"auto"><br></div><div class=3D"gmail_quote" dir=3D"auto"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
Regards,<br>
Chuanhong Guo<br>
</blockquote></div></div>

--0000000000000e6d9a059e4bb6a7--


--===============1427971645170550310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1427971645170550310==--

