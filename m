Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB9912A445
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 23:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cVaYIjlZ9w/R1UlYlYMRsVGjoMmbqkx0+RUi2QETSj4=; b=Kbql9zOGiDDldmHSK1b6jpGWi
	mu+02CGM7p1tNhdZTPjaEMz2bnRGRB7a0Y+0Oxpo2uRR6UdQzBqFiMtjo7RqxHp/JC7wDTOR/QVoI
	Kk3HiCfWemsotghbmDfUQ6dIKbSe6BdTtv4AvLBzxuGk1KAUugGQcrkIeaR3Izu+0CeLvSlp7VQ+9
	tsW580XOcUFInTq3tWQ86NmLp2HQZI0CLwVUob0cZpa7QM/cl3A1xMf7dgWfpnIPehvbil06GMTLE
	K2q9Vm5IA8vBaaC87lquWIUDmPIw8SPYdFErfsjFyM6vOlq2yTALdroS/Od/3ZfMKUiLG6XlfU2L3
	C1H2WtUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijsSy-0006cD-Bs; Tue, 24 Dec 2019 22:15:48 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijsSs-0006bm-Ic
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 22:15:44 +0000
Received: by mail-qk1-x741.google.com with SMTP id w127so16824853qkb.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 14:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=11GU8CCxGaKB+T/PoaqXRzTI7oAj47rix3i9lj21WnE=;
 b=ejmimCquR+/cYx6zGbNGNr9wDtU/jXwPxO0XQTIsqfh/6Zfpm4+gPCWiW3ebGugNNH
 Un1auhbJ0L1fjSF/sdrxvHYD7X0LSI4VCxv90wfzFb4nIUMZMhWSQ/+WzM8LmfBFUfhq
 L9eNLRY2MIDZs+O6jkHJ5NGb4/DRv3niIPOqt137gVyTPbB6Y0my0AHweX7EDogWir6Z
 ZVVG4yQQYetIx/CCgWAZAymwc9WaVFQfKJSKuWG2FoCfyWwdsfahfyqLucIyE3l/Vnvc
 BPfIbsbX23EoOCUSN9g30Afp8ejfymZ1BPHaS3wYfcPfuRBN5GKSlNm4MqgtD7/Gypv5
 BHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=11GU8CCxGaKB+T/PoaqXRzTI7oAj47rix3i9lj21WnE=;
 b=PkCDFF7z8NBEZvUssWb6prTYoXgaX/OH9gRCIjfRrbtEL6g2+tMWj3yHbXCAxJM3ts
 rntn/n8pkTrYuB0hX2KLxMWX6Md/rRuaFdbNM1KP2Z4D/zc5IIYI0GsnLSCxYg/JaheK
 6JrEY2zekcbj0eyuh1SYNxnIcxlj2DYvKAQYe9Dp8mIcOSXmuJjEVVR9jA33goZ84o8F
 0Upo5tCYxPVG4iZTanqdqmRnGBxWk5LM/4KpnFLEevkk8KRjDQwOUPU2EwZXbPcvHoiI
 42E+LuQZfs72o8AGBg7YSICFX+bWwp0oX65iVD+pZghhoWDeRaimlITzqPe6Ru7RdzFC
 gbEA==
X-Gm-Message-State: APjAAAVgwaqLlKAaSDN4wVqXqDYNLKNFdu/ml0uZGsoeZ0afIL9BZ6dk
 zjPy3w72+qIQOKNSQ/XzfY4KPkxLx6ps387S5Lvx1d7T
X-Google-Smtp-Source: APXvYqzxpNbI7rg1nR6kA+IMobAOf5xVU6z01v8ZbWJd+5SwhviLkht3dR543GElUBSU7T31f5RKmegbA3QCtW/cZ+o=
X-Received: by 2002:a05:620a:6b8:: with SMTP id
 i24mr33466937qkh.9.1577225738290; 
 Tue, 24 Dec 2019 14:15:38 -0800 (PST)
MIME-Version: 1.0
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224215051.GF70645@meh.true.cz>
In-Reply-To: <20191224215051.GF70645@meh.true.cz>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Dec 2019 14:15:26 -0800
Message-ID: <CAMKF1sqyKBm0Yz=rtgL9JnPPRzyxfcemnuLpfV-SEQYqgTiFOA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_141542_638627_2CDC9F5A 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raj.khem[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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
Content-Type: multipart/mixed; boundary="===============2416863990935939243=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2416863990935939243==
Content-Type: multipart/alternative; boundary="000000000000dc8b78059a7a7bf4"

--000000000000dc8b78059a7a7bf4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2019 at 1:51 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Khem Raj <raj.khem@gmail.com> [2019-12-24 10:02:13]:
>
> Hi,
>
> use "PATCH libubox" subject prefix, because there is no blobmsg.c file in
> the
> main tree.
>
> > Fixes error: '__builtin_strcpy' offset 6 from the object at 'attr' is
> out of
> > the bounds of referenced subobject 'name' with type 'uint8_t[0]' {aka
> > 'unsigned char[0]'} at offset 6 [-Werror=3Darray-bounds]
>
> out of curiosity, which target/compiler is that? I'm not able to reproduc=
e
> it on any of the pre-selected CI targets[1].


This is gcc trunk

>
>
> 1. https://gitlab.com/ynezz/openwrt-libubox/pipelines/105374045/builds
>
> -- ynezz
>

--000000000000dc8b78059a7a7bf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Dec 24, 2019 at 1:51 PM Petr =C5=A0tetiar &lt;<a hr=
ef=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a>&gt; [2019-12-24 10:02:13]:<br>
<br>
Hi,<br>
<br>
use &quot;PATCH libubox&quot; subject prefix, because there is no blobmsg.c=
 file in the<br>
main tree.<br>
<br>
&gt; Fixes error: &#39;__builtin_strcpy&#39; offset 6 from the object at &#=
39;attr&#39; is out of<br>
&gt; the bounds of referenced subobject &#39;name&#39; with type &#39;uint8=
_t[0]&#39; {aka<br>
&gt; &#39;unsigned char[0]&#39;} at offset 6 [-Werror=3Darray-bounds]<br>
<br>
out of curiosity, which target/compiler is that? I&#39;m not able to reprod=
uce<br>
it on any of the pre-selected CI targets[1].</blockquote><div dir=3D"auto">=
<br></div><div dir=3D"auto">This is gcc trunk=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
1. <a href=3D"https://gitlab.com/ynezz/openwrt-libubox/pipelines/105374045/=
builds" rel=3D"noreferrer" target=3D"_blank">https://gitlab.com/ynezz/openw=
rt-libubox/pipelines/105374045/builds</a><br>
<br>
-- ynezz<br>
</blockquote></div></div>

--000000000000dc8b78059a7a7bf4--


--===============2416863990935939243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2416863990935939243==--

