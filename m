Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBC43562D
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 07:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Cc:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IFj6XbE3ocMFe7f6lTIYlFbRQ2UosAuqfXlrkozdqhg=; b=UGBHHwrKxg0sdx82jxYK6FMk8
	MNQxgx9rtWzAuunk7+9IGu7yMwSh/fF1N2V+JW/maFiO0+uy1xqt/JnV9JSFrxIPp3pTPGjz/zQE2
	SjYth+dCytHeyebzkZNL0A0vl+Kt6qYhryzCaeGiN4ME5IcPWt+jFkWYG5wbCifv22FCA22g4rF75
	jABARSlEko/jv0hF4JpZmhDENP5gZnUId3f06deapOkrSqYSQzvyVvWkSvFtcMIZZNVKWf2K/k63l
	hmARX5Sx+DZEWiDQP0IST3p1VihHYof4+MJZtjyVlFlRGdIA5lS3nKR3t+Z1kOCFhj5nQuEtrr5NC
	Uf7L/WZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYONe-0004jl-8B; Wed, 05 Jun 2019 05:22:34 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYONY-0004co-3J
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 05:22:29 +0000
Received: by mail-vs1-xe29.google.com with SMTP id g24so12945725vso.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 04 Jun 2019 22:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=pX37s+UNtEPx97sshexi2t/K5IxLWymRZq3ElLajuKo=;
 b=OxnKsw4130oIjZfGg0ZRPh7qnFLrW3+FM/tA08no91Vk63wa/V/ifztlfw3sY05vO0
 m2nSTv6q8uwV9sdlMhDQxdpEZK3kI52Snl86QLzS3CQTc5ItgnBUhYrtUQqe+H6/OUr6
 SXnEFvorOkONuHGYqoTqAd9tW1UBy0lI3UK3d9JqfKl9Bzqji/qlBmOZEtFccx0KhqrL
 ZtzSNmKaQ9ENjEKTu6AN28tbEVfVeBpD0itdidbl8OKY+odzwPZbh2OxboU8SXehOTcH
 UATwtK+C6Rf2hO3iVBlA98WQLpvbMXVT40xVCnMRdR9Ec3S9aT8lT2CkkCITJO08kLU2
 vq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=pX37s+UNtEPx97sshexi2t/K5IxLWymRZq3ElLajuKo=;
 b=dWgbEUEzTxfpsJFgEFvwXTZjMYqsjG5PtbnnjB21kvguT1BW+6CeU+nwmWgdIGsuKt
 2sKGrUlo1lyn8eU7B5jF9zc/eniZ0/LaXBfsbS3Rk0+N7XF2LCX2CZ1wuRzspTupJJKy
 8ferNPHWl29EGtDBA/svyd3etA/dYMmf/V/UmEKGTCqxvwKOOETKlD3gBDX7q28wlAIi
 PX+uyzIe3d8GKo7d5sRD4G9tPqaq5F5N23NFjUrB3NjDTbFAT+4649peKSWTJjm7FtgY
 pYR/FEcydreZyKUl/+SS7izNzhrB9j6EWFmToCfAQHwqZxW6DiN7vkUIOQsa4i0a/ClK
 WgmA==
X-Gm-Message-State: APjAAAXcouSlhR/7g5tGUQPFK6Sdk2Ify809W7q9OdO8XJsQ+fWxftFy
 TRvm3krfJatPZRNM+lJOM2xUTVd1gw8DGUkzl2dlF0ew
X-Google-Smtp-Source: APXvYqy1HUVp6bJJy4uNu3fNJgOLqY6YpW7625+o44EZF/zfDG4b5pCs6IcaN2X14rhbCMFlalQKd34hl/BOK5QtyA4=
X-Received: by 2002:a05:6102:195:: with SMTP id
 r21mr4504520vsq.194.1559712144871; 
 Tue, 04 Jun 2019 22:22:24 -0700 (PDT)
MIME-Version: 1.0
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
 <20190530153018.GF13432@meh.true.cz> <20190602120630.GH13432@meh.true.cz>
 <fe1c4aa1-8423-9b80-7738-e346d4e23edf@gmail.com>
In-Reply-To: <fe1c4aa1-8423-9b80-7738-e346d4e23edf@gmail.com>
From: John Braley <server.email.mash4077@gmail.com>
Date: Wed, 5 Jun 2019 00:22:17 -0500
Message-ID: <CAHMvWa4t4VM0o-Wgg6iZv--UjL6n+Hyt0y65QRxF4sbviVM3tg@mail.gmail.com>
Cc: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_222228_167600_F09E22DF 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e29 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (server.email.mash4077[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (server.email.mash4077[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] EFI images for x86
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0557424466319039329=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0557424466319039329==
Content-Type: multipart/alternative; boundary="00000000000058d573058a8cc8e1"

--00000000000058d573058a8cc8e1
Content-Type: text/plain; charset="UTF-8"

Also tested on an EFI only Asrock J5005-ITX. Builds, writes and boots fine.
However since it is not from 18.06 dev and is built from LEDE you really
cant do anything else with as luci wont install via opkg.

If the commits can be pulled into openwrt-dev, I can test it on my Gigabit
connection.

On Sun, Jun 2, 2019 at 7:59 AM Alberto Bursi <bobafetthotmail@gmail.com>
wrote:

> On Github there is a PR about adding EFI image generation
>
> to the x86 target, but it has not been picked by anyone for a while.
>
> This is an important feature, can anyone look into merging it
>
> https://github.com/openwrt/openwrt/pull/1968
>
>
> -Alberto
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000058d573058a8cc8e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Also tested on an EFI only Asrock J5005-ITX. Builds, =
writes and boots fine. However since it is not from 18.06 dev and is built =
from LEDE you really cant do anything else with as luci wont install via op=
kg.=C2=A0</div><div><br></div><div>If the commits can be pulled into openwr=
t-dev, I can test it on my Gigabit connection.<br></div><div><br></div><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jun 2,=
 2019 at 7:59 AM Alberto Bursi &lt;<a href=3D"mailto:bobafetthotmail@gmail.=
com">bobafetthotmail@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On Github there is a PR about adding EFI imag=
e generation<br>
<br>
to the x86 target, but it has not been picked by anyone for a while.<br>
<br>
This is an important feature, can anyone look into merging it<br>
<br>
<a href=3D"https://github.com/openwrt/openwrt/pull/1968" rel=3D"noreferrer"=
 target=3D"_blank">https://github.com/openwrt/openwrt/pull/1968</a><br>
<br>
<br>
-Alberto<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--00000000000058d573058a8cc8e1--


--===============0557424466319039329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0557424466319039329==--

