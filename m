Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF37FD12E
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 23:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xaRVvg2ewNWfNCjI8uTcCmRlLs24yyG4Ch6Q3HiEa8c=; b=uVOqMEBSx1CFaP1Ae9BJlog3r
	FGoaFBo8jqfIPUTQpED14l1Ck+IlzpD99mtYxeirEMDNMDhSpjF8vM0cCR8Y8SD66XISaTB/0X8Sn
	I0Zwoi7+N3tDXhdDPxlnNuZPFSjXXWTvYU6WlXM2uqLTKDeVSlTbNOh0DATtoURNo07m+Pu/a09AT
	DRQaNXNUoQhuHIjmhdUQfM3lOQzYPhSXpOh81msMaBe9Ruvvk88+ka0WuQ1oOuWts2LBwl2BNUB5y
	rsYM4PDD1HglW/ac/rkDzoaS8wn8HH4VakT2sqlXYBNwQeCtJ6eV05eCYC3S602cK65yEuwtNmyjO
	M6h55wdfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVO0L-0008Po-1q; Thu, 14 Nov 2019 22:54:21 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVO0E-0008Os-OT; Thu, 14 Nov 2019 22:54:16 +0000
Received: by mail-il1-x133.google.com with SMTP id q15so6929294ils.8;
 Thu, 14 Nov 2019 14:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ue4ERP5S+KNSB7PzRdIWqigkpu1B0cfPjvWZq6zpQZA=;
 b=qBQkPptPN0ivb/HWAWl/e5z6x+Zz8yFZ5bXBMi8F477ZhCxpT1+74m1l9e0/lpB3G5
 Kpa7fM+PgNzjg6S9bLRtYOFhtK5T2MwMt5k3GRcRytc2OlWx1Y+od4y4DeFL4v4QayGL
 HovjHAY78u226i2zDxhp5CN5Nr5LPLMi5kX1AF0X9J+JncMYCx8xMQM1JIhjPClUbx4Z
 NRJ3GB6n9OJJ9fURLUDOQ1RaHdU6oFYgy+FUV38Uf4gufVr8F/ElArb/ZpQtjQWg8eaY
 kkyfNa0ItnSU/sFZ03QeuRAQszcoVGeUa8qlhiuuS9rA7dLh/cwg4R1stpHRiNpgV0EP
 ywqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ue4ERP5S+KNSB7PzRdIWqigkpu1B0cfPjvWZq6zpQZA=;
 b=lm3Ji3TnAiey+eLlERYXrXx0lgmaQ37DU68gFw7lOb+Rwqa8Q29wvrMYa9ksovChzF
 rzrtqzYyupd23BVhOlsHCZ3QR/fxaVxDHuxjeVGHDV8Rti/UMtLuaOnAx7KysqV9un2k
 uCpPPwaPY2HwcphGLT/HnBYazdk5THyEyryt/FNyIPoQKTcAIJE/JyOuBOCHojpB8ZPy
 RhN+L0tmitVYDET4Cd81b+wXAVWaYm9RNusdk4u17siUwYr4IuTctG1Sw7AmwA28ydGU
 AzXexd0dMR+GINUHvUV49vRCKl5kz1FjxW0+2N0/dQAzPtfSKAk/oQSALaka3SNOjQvc
 YiaA==
X-Gm-Message-State: APjAAAUOTRTl7KWfyR33E9SMnd63OgozToIXMOIg+XtJO5w19J9cSe3U
 3jolWv+27sZ7LP0yNptxR9kex7HN5g2gyPsIXo0=
X-Google-Smtp-Source: APXvYqxQP0y4mQEXv4TxLpdRWUxSvvSNzva2gtlWpNINZVKLO85OgSBATyIBsqH+ZHVAtHCy+C0Clfv/INQipXZdatA=
X-Received: by 2002:a92:9cce:: with SMTP id x75mr12870536ill.31.1573772053370; 
 Thu, 14 Nov 2019 14:54:13 -0800 (PST)
MIME-Version: 1.0
References: <9C8DC744-4EE6-440D-BDF7-5000C8DAD4A7@gmail.com>
In-Reply-To: <9C8DC744-4EE6-440D-BDF7-5000C8DAD4A7@gmail.com>
From: Luna Jernberg <droidbittin@gmail.com>
Date: Thu, 14 Nov 2019 23:52:56 +0100
Message-ID: <CADo9pHgcUUzrcUSxNOA4x0hCxC5XQ85a=j+EhGii92xk-O5aww@mail.gmail.com>
To: Rich Brown <richb.hanover@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_145414_795902_209F68F9 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (droidbittin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Congratulations on 19.07-rc1
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
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3574899724989377632=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3574899724989377632==
Content-Type: multipart/alternative; boundary="00000000000032dc5a0597565cae"

--00000000000032dc5a0597565cae
Content-Type: text/plain; charset="UTF-8"

yay!

Updated today on my Linksys router

On Mon, Nov 11, 2019 at 7:21 PM Rich Brown <richb.hanover@gmail.com> wrote:

> I saw an notice for an update to the OpenWrt wiki:
>
> Announcement for 19.07-rc1: https://openwrt.org/releases/start
> Release Notes: https://openwrt.org/releases/19.07/notes-19.07.0-rc1
>
> Thanks to all who helped to move us off top-dead-center.
>
> Rich
>
> _______________________________________________
> openwrt-adm mailing list
> openwrt-adm@lists.openwrt.org
> http://lists.infradead.org/mailman/listinfo/openwrt-adm
>

--00000000000032dc5a0597565cae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">yay!<div><br></div><div>Updated today on my Linksys router=
=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Nov 11, 2019 at 7:21 PM Rich Brown &lt;<a href=3D"mailt=
o:richb.hanover@gmail.com">richb.hanover@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">I saw an notice for an up=
date to the OpenWrt wiki:<br>
<br>
Announcement for 19.07-rc1: <a href=3D"https://openwrt.org/releases/start" =
rel=3D"noreferrer" target=3D"_blank">https://openwrt.org/releases/start</a>=
<br>
Release Notes: <a href=3D"https://openwrt.org/releases/19.07/notes-19.07.0-=
rc1" rel=3D"noreferrer" target=3D"_blank">https://openwrt.org/releases/19.0=
7/notes-19.07.0-rc1</a><br>
<br>
Thanks to all who helped to move us off top-dead-center.<br>
<br>
Rich<br>
<br>
_______________________________________________<br>
openwrt-adm mailing list<br>
<a href=3D"mailto:openwrt-adm@lists.openwrt.org" target=3D"_blank">openwrt-=
adm@lists.openwrt.org</a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/openwrt-adm" rel=3D"=
noreferrer" target=3D"_blank">http://lists.infradead.org/mailman/listinfo/o=
penwrt-adm</a><br>
</blockquote></div>

--00000000000032dc5a0597565cae--


--===============3574899724989377632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3574899724989377632==--

