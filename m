Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2461800B0
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 21:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xz2iF/JpVi/UPWSw4Os49ldyKHCNimeMr6tT71OkXwQ=; b=avuwHH1sTIWYJBrP9wl/N//X5
	QgbwspciusDN+NSzImIN41f8933aiM4mQMYp3q0tIsQ9M4I3QvOefy6xlAHM04iVM6cR7mX8EMZ1h
	WWt/8G7Hr3HzHAkqD6XR4XC9muv7+nJRIxCasLi1ybeu10iZAiS08wsyLQeEX6W+xdttilm9g8Eyc
	oq4x12hX9YUJ82rEqG3WQGm+WJSxiezedPi6JE99Eq8qmN0mcwtY0Ts2OTPgHSqx9VkctE65e17TX
	KmO79SxdFfqGQe0kPqf3iRtImtYzslyGpWlHDwaavCqCms+BvswN2XkNrNK3v4ejCxXWivJKEZwD7
	HD592JXSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htcvE-0000qS-To; Fri, 02 Aug 2019 19:09:00 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htcv5-0000pl-Gl
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 19:08:52 +0000
Received: by mail-vk1-xa31.google.com with SMTP id b69so15563592vkb.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 12:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0gl4jGBZFVjuyZQ1zk3PfnG1hvsIdfYwGWyorxncD3A=;
 b=X6hgl1H1xZT/tucVFSjbonW61R9TS9mlBdCBYnycN6tlhl78v0RwZA5ViBNgH8KM8y
 aC8F+7zzX+i3J8cGUjN6ji4fEfeq7rRXaNUePfP2a6Atbb4xsTTGK5SEOP6ALB6B6Erg
 PEO66f/TpvUlwauYODGwYGru8PRcqAbROTG02TvqwNh6ri7NMApV23gd3WjqU6PqFrZY
 Vg8QdH17E+wUPen7SB8TP5uVeMU9XI312f2bdyzg9WModmh6nOon7CdJVtUbP+emHab8
 JTszQuZk5LRFwxsUhxqGujA9WQpoug13jowmhrxpvMV/WeMNKoMYQm6svuwXGW5zQiKv
 5fSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0gl4jGBZFVjuyZQ1zk3PfnG1hvsIdfYwGWyorxncD3A=;
 b=WmsPCywnoHeCZ5nM3pCoPauIUPjn/hGy6P7YgWxkn32n+mcVj3R/DLlG15BgUMGmm2
 bI54Up6A1JK9piy5p/F0Yvprn2R0HaP1MAwLdzn8GlEcHsbt3uYGRDm1jROFp9+rQW1f
 SvswojA1KC6TCO2YQysOwq3lCJWHc1cjpdbeTaK0wMiD7vj7uBsP7UIYr4g9nMY3d9Jm
 Z76wMJN5qxUemHZIvHKK0DR/cVHJccMTWKTsbpgQzbt9R2LsANptxvVqwsgOVPLwDgBC
 xGcv2LCeE53rIOGA2v6y6bNnumSEev6K/xcl/OQMbt2mVXHbeMTOwY238gIf+f3ptSGT
 FZdQ==
X-Gm-Message-State: APjAAAU1hrIBQ9xO94FnJRPT+3Yje3gFgASaslSNV0hx+rkqGdMHKXqn
 nxihNE3378zrfvhAfB6yB91/qWAXrUbHVY9/8wT0mpax
X-Google-Smtp-Source: APXvYqyrHxe3w8hCC+YzZWqPIx13kngzHzbiXI6bh3/qp3gfxwP7CcFDzusorTuukzhiWv5ML66GHxnc+jITAff78Cw=
X-Received: by 2002:a1f:9f06:: with SMTP id i6mr53988286vke.52.1564772927537; 
 Fri, 02 Aug 2019 12:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJXyS=g12DcdYsUMoSOMTY6oDJrd8K+M6_Bp15fK0-dAJ3x-Zg@mail.gmail.com>
 <20190801191619.GN74752@meh.true.cz>
In-Reply-To: <20190801191619.GN74752@meh.true.cz>
From: Jeffery To <jeffery.to@gmail.com>
Date: Sat, 3 Aug 2019 03:08:36 +0800
Message-ID: <CAJXyS=j0gQMqMUFCusF1CeR-aj05qo0HjPfBVw3u26BiiCzTFA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_120851_561474_34E56F5D 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a31 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Cryptodev-linux compile error with armvirt-64
 sdk
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
Content-Type: multipart/mixed; boundary="===============7672325465805785684=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7672325465805785684==
Content-Type: multipart/alternative; boundary="000000000000800586058f2716e7"

--000000000000800586058f2716e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 2, 2019 at 3:16 AM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Jeffery To <jeffery.to@gmail.com> [2019-08-02 02:04:23]:
>
> > I believe this started after a459d237 (this added
> CONFIG_ARM64_MODULE_PLTS=3Dy
>
> that config symbol is selected by ARM64_ERRATUM_843419 ("Cortex-A53:
> 843419: A
> load or store might access an incorrect address"), so probably the fix
> would
> be to bundle that linker script into SDK (target/sdk/Makefile).
>

Thanks for the pointer - I've sent the patch (
https://patchwork.ozlabs.org/patch/1141354/).

Jeff

--000000000000800586058f2716e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Aug 2, 2019 at 3:16 AM Petr =C5=A0tet=
iar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Jeffery To &lt;<a hre=
f=3D"mailto:jeffery.to@gmail.com" target=3D"_blank">jeffery.to@gmail.com</a=
>&gt; [2019-08-02 02:04:23]:<br>
<br>&gt; I believe this started after a459d237 (this added CONFIG_ARM64_MOD=
ULE_PLTS=3Dy<br>
<br>
that config symbol is selected by ARM64_ERRATUM_843419 (&quot;Cortex-A53: 8=
43419: A<br>
load or store might access an incorrect address&quot;), so probably the fix=
 would<br>
be to bundle that linker script into SDK (target/sdk/Makefile).<br></blockq=
uote><div>=C2=A0</div><div>Thanks for the pointer - I&#39;ve sent the patch=
 (<a href=3D"https://patchwork.ozlabs.org/patch/1141354/">https://patchwork=
.ozlabs.org/patch/1141354/</a>).</div><div><br></div><div>Jeff</div><div><b=
r></div></div></div>

--000000000000800586058f2716e7--


--===============7672325465805785684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7672325465805785684==--

