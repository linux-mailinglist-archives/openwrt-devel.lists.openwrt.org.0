Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EF8B701D
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 02:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2PK5LQwXtoV/ORfJiGu9MriP0VOdU/yUsUzoG/N9AVM=; b=eYk1URmgPc2xHnjqoLHZREagx
	SJGi66NH8AIA2yUySk0vIsWvLEODk8DhGqwM22k4pqHmkwQtsr8jAww3K3mJhOZK/IA7zGFJSpag+
	xTQHSVSFpJAstdqC5Xj4OtVtL20YoK1a3Hgs/muUhJBehz5cmCXT36CPFmyg81i3w0AyIxDMojcKr
	C2VXldAfNtMj+YYghj/hqgC2VpJ2/GWxivQVa6PcKgz5Sj9MAlhhgTVgTwtACrVyzHpop3YrkBSai
	Yj35/sdI+kBQ17UMazC/6qwE4LfQq3suHxlcsXQSe19hCAFxev0Ox9C2T0v4it2LrlfhXOFrL8gcQ
	GFi1aBA0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAkN6-0005Zn-T2; Thu, 19 Sep 2019 00:32:33 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAkMp-0005ZM-Pm
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 00:32:17 +0000
Received: by mail-pg1-x52e.google.com with SMTP id a3so789586pgm.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 17:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S50YAsT/UtDv9W3oK9QufLWUvb82nXrszIJkwIGn+M8=;
 b=nEm5x+zznYAgH9RIYg13y3QxbBglNoX/kH4aRJ9a73sIjvukIoPLmXPL8eNdbt4BzB
 cd9wgzVwSa6F84YV7MAw2KK3HaWNhPr0q25pIc8VUkjk5Y0T148F84XI/uQRLRV0hn6O
 tT72FTz31OSFJ+mGrmvlSebyYAgCIF2xu2z9ji95BCA/+rFM8Xr4RqbT0xJsyE4BlOuB
 cPUFC79GUbu/qDRtzJaxdaW6WknSQO1f6M38X9fM9HMCtndI6dsULAzq/83U9FY6S1U+
 Z36Nrp8ibmJdmTZxkhe4+bLKMRX2IGNoflL0cIkZhJ3NaagvM8+7YUThmzOhkbD+Mt7y
 vTFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S50YAsT/UtDv9W3oK9QufLWUvb82nXrszIJkwIGn+M8=;
 b=YweE8F4OCTlo7a6VNRIgXlAJUQ9rHM6STbRnzPjm0JEfZCwrGmScU5gZD3y6EbuGYZ
 RKk4zlSZd7f05ATo/Y9Kxw2LWdx6kF88D64/9bl/9GVXb+lOuYPbB6+M9UW+XGzb7alV
 /wy81yJu2kp87SXGmzNnfWtolnB+TIVgJ6t7sg/G6ANps99SI5ATwESRJYbMxsDv70fT
 kUaSfTKuRiI+HsufRnErhoyhUtNS4tFqhNfH3Ryd46RnpZf9J7rqHQ+RjIXn7VGluRZ8
 sAoVz8wgk/zWfJvcCaOK9RE9N1TmoM6PDsXlmHLGOqVc+IsDEI6V+8mukA66039mXoXC
 CUbQ==
X-Gm-Message-State: APjAAAUaVPikSAkI3aP/nBhu4jP7YpITcWfKf1jlpapnczW3I2ZjVW1W
 b2bTCfLHSlUDpL0rKxdWa2rPsL/n6wAwzZE2hD40nB4K
X-Google-Smtp-Source: APXvYqwZ+4Jq44LltGCTOc28RYqgJD5gugUITyIDE6NEdNT/4qybV4nc2fJ0A+R/CIOomRNykBD4FedIZrSLgSxwBGA=
X-Received: by 2002:a65:6802:: with SMTP id l2mr6463689pgt.33.1568853133968;
 Wed, 18 Sep 2019 17:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <sdwalker/sdwalker.github.io/push/refs/heads/master/fced31-4b1ac0@github.com>
 <310e24f5-e674-f48a-0231-4a20a158ae6b@nic.cz>
In-Reply-To: <310e24f5-e674-f48a-0231-4a20a158ae6b@nic.cz>
From: Stephen Walker <stephendwalker@gmail.com>
Date: Wed, 18 Sep 2019 20:32:01 -0400
Message-ID: <CAH7PtXxmSjwZ6Cda-9RrOiRZ=EmnmUabZhgp+HwmGPKRCrLEQA@mail.gmail.com>
To: Jan Pavlinec <jan.pavlinec@nic.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_173215_864697_35B1C1BA 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (stephendwalker[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: Re: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 4b1ac0: This
 week's update
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
Content-Type: multipart/mixed; boundary="===============4853462500704712360=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4853462500704712360==
Content-Type: multipart/alternative; boundary="000000000000c149b00592dd150d"

--000000000000c149b00592dd150d
Content-Type: text/plain; charset="UTF-8"

No, they've always just been sitting in a local source tree. Do you have
any specific packages in mind? I just created watch files for the
measurement-kit, python-cachetools, python-cryptodomex, python-pyrsistent,
tessdata and tesseract packages.

On Wed, Sep 18, 2019 at 7:31 AM Jan Pavlinec <jan.pavlinec@nic.cz> wrote:

> Hi,
>
> is there any source of watch files for uscan where I can push missing
> package watch files?
>
> J.P.
>
> Dne 16. 09. 19 v 0:03 Stephen Walker napsal(a):
> >   Branch: refs/heads/master
> >   Home:   https://github.com/sdwalker/sdwalker.github.io
> >   Commit: 4b1ac0e52c1d0f0bac5b464e6a01d2bda1b97102
> >
> https://github.com/sdwalker/sdwalker.github.io/commit/4b1ac0e52c1d0f0bac5b464e6a01d2bda1b97102
> >   Author: Stephen Walker <stephendwalker+github@gmail.com>
> >   Date:   2019-09-15 (Sun, 15 Sep 2019)
> >
> >   Changed paths:
> >     M uscan/index-18.06.html
> >     M uscan/index.html
> >
> >   Log Message:
> >   -----------
> >   This week's update
> >
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000c149b00592dd150d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>No, they&#39;ve always just been sitting in a local s=
ource tree. Do you have any specific packages in mind? I just created watch=
 files for the measurement-kit, python-cachetools, python-cryptodomex, pyth=
on-pyrsistent, tessdata and tesseract packages.</div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 18, 2019 at 7:31=
 AM Jan Pavlinec &lt;<a href=3D"mailto:jan.pavlinec@nic.cz">jan.pavlinec@ni=
c.cz</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Hi,<br>
<br>
is there any source of watch files for uscan where I can push missing<br>
package watch files?<br>
<br>
J.P.<br>
<br>
Dne 16. 09. 19 v 0:03 Stephen Walker napsal(a):<br>
&gt;=C2=A0 =C2=A0Branch: refs/heads/master<br>
&gt;=C2=A0 =C2=A0Home:=C2=A0 =C2=A0<a href=3D"https://github.com/sdwalker/s=
dwalker.github.io" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
sdwalker/sdwalker.github.io</a><br>
&gt;=C2=A0 =C2=A0Commit: 4b1ac0e52c1d0f0bac5b464e6a01d2bda1b97102<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/sdwalker/sdwal=
ker.github.io/commit/4b1ac0e52c1d0f0bac5b464e6a01d2bda1b97102" rel=3D"noref=
errer" target=3D"_blank">https://github.com/sdwalker/sdwalker.github.io/com=
mit/4b1ac0e52c1d0f0bac5b464e6a01d2bda1b97102</a><br>
&gt;=C2=A0 =C2=A0Author: Stephen Walker &lt;<a href=3D"mailto:stephendwalke=
r%2Bgithub@gmail.com" target=3D"_blank">stephendwalker+github@gmail.com</a>=
&gt;<br>
&gt;=C2=A0 =C2=A0Date:=C2=A0 =C2=A02019-09-15 (Sun, 15 Sep 2019)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0Changed paths:<br>
&gt;=C2=A0 =C2=A0 =C2=A0M uscan/index-18.06.html<br>
&gt;=C2=A0 =C2=A0 =C2=A0M uscan/index.html<br>
&gt;<br>
&gt;=C2=A0 =C2=A0Log Message:<br>
&gt;=C2=A0 =C2=A0-----------<br>
&gt;=C2=A0 =C2=A0This week&#39;s update<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
</blockquote></div></div>

--000000000000c149b00592dd150d--


--===============4853462500704712360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4853462500704712360==--

