Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC53174D85
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 14:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IY8517XtindUFEbCmdE3wOziLRmyvWPxmHyQPfoG5eo=; b=AzJjK+vlDsJsjm1QyoU8N1H8X
	ZXAZILuEnuWiKGUpdNnJ8WRi645JTBiveVz7QObr08D3NLAfjWdQQmarVwKd3iej/V6UCJg80tLFf
	//r3UpBe0em4rCau9juMzFVMVY1YuoU7r354vNo8Fb/PxwnrRg8vg53dMeU6MdEg9zof3bhe4T3AD
	d76pqpK4HM35UKzj9NcoJCfuj4GbYtIFqx2bbUmrgiTGNSnILWPSkMSIRFWfMkB07A6yQzkt1VAzX
	8k3/Kq2t2fZIh/YodO3fNGzhrqVONyZy18tVCzNkDmIj+RUMTDDTiNq12fTVO+IDj9h+ZTD8yL9Ae
	40szHePFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Ojj-0005Hd-Dh; Sun, 01 Mar 2020 13:34:27 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Ojc-0005HK-Oe
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 13:34:22 +0000
Received: by mail-ua1-x942.google.com with SMTP id y3so2658688uae.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Mar 2020 05:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hqciBcppfme6xoGHXvXWmjp+qZg9l5NmBjH/v+BTSDI=;
 b=EaWpzt+kkZFeUdeDlMBp0riOCecT2bdHndkRvRiq4bcieOWf2V5561Nmb0NrDBcV45
 MBZtxuRux8M6ge+xvRK+KwqlEJviBNqTUu7FZwDHhsMcmV6EfN7VcLMen5lwWsHXjSiv
 22Zj4oOHfCP2XGWjmeJDd5CIQhBJUMBDn7CyyWjwf0BdytuUz1+Oh+vJ6L+JaKMRVXN1
 ApyrTa12o8LPG6FQNBAtb0XEIC8PKp3eOWyPh+7J8Sxx1zXsTdQarL6ZnNyqsqYUfA+f
 dsk5urulJuFJB7TeONYQBYrhJlG/SJfPX7k7SXBvc+iHMwWiDBGGk5z4PkF6TSVeubbp
 0p6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hqciBcppfme6xoGHXvXWmjp+qZg9l5NmBjH/v+BTSDI=;
 b=hSrUA/LBvdTdCkde7OUPGP6fB67MjMqzRL5TeRz/2nahjpaZrKZTFX/ZYI/6nxlNpK
 2TjkUzRPYioOTQevH2aIryfD+rg86o4sYUv5qkVnH0is+cAqUn/x5hpuF6sRk7UFJVc4
 ki+8F1PTa1IBDb4pjW9v1hcKtZ3fCp9AVHO8sGYh+K53NiD0DVOzp3OG3bN32Rm/MykH
 44mjSZOehk+iOj3erxSrF84jXao8FX5Z75bp5FBTCeOFy3IGgBx61dV5fRjA7UWKDvM0
 qiqw9pkNAKPVdTVCfbS6Kwq4+09z9w8KvPvAArRyoxkRI9hPLK4Gk0D/B3s57DK5x+hE
 HV9w==
X-Gm-Message-State: ANhLgQ3r2PpIT7j1UUC/0tBWrOi5BpcsV8uY6aqQ7wnX+OH3Gypq9ZG5
 JtWa2kLFPJa0ZBlsylDFLI/gEU2pqYVnLZuMJ00h
X-Google-Smtp-Source: ADFU+vtCV07M4UKk/efLDPWyQ7Hz6/QOb3wH9TPplYtjyZTH9ZvF3oGpskEgPfy154LtX09CAkAPX9osubOxCanavJg=
X-Received: by 2002:ab0:1161:: with SMTP id g33mr505032uac.32.1583069657805;
 Sun, 01 Mar 2020 05:34:17 -0800 (PST)
MIME-Version: 1.0
References: <20200127181946.11978-1-rsalvaterra@gmail.com>
 <20200301130625.GB70913@meh.true.cz>
In-Reply-To: <20200301130625.GB70913@meh.true.cz>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Sun, 1 Mar 2020 13:34:06 +0000
Message-ID: <CALjTZvZSLEH-P3Ht8-HFtbgK7YN1-gBGY1wzMtUH2hYK_BC2Mw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_053420_828558_20AC40B5 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============7843882853182936446=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7843882853182936446==
Content-Type: multipart/alternative; boundary="0000000000009bb7ec059fcb2091"

--0000000000009bb7ec059fcb2091
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Petr! Writing from my phone, pardon the terseness (and HTML crap).

A domingo, 1/03/2020, 13:06, Petr =C5=A0tetiar <ynezz@true.cz> escreveu:

> Rui Salvaterra <rsalvaterra@gmail.com> [2020-01-27 18:19:46]:
>
> why is this RFC, are there any gotchas?
>

This has only been thoroughly tested on AR9003 and AR9002 hardware. I just
received an AR5008 card to test, but I'm on holidays at the moment, so I'll
only test it after Tuesday.

BTW that `enable` in commit subject is probably misleading, because you're
> just improving the support for hwrng, you're not enabling anything.
>

I'm enabling kthread-based entropy collection on AR5008+ hardware, which
hasn't been enabled before (only AR9003 was supported). Does it make sense
this way?

Thanks,
Rui

--0000000000009bb7ec059fcb2091
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi, Petr! Writing from my phone, pardon the tersenes=
s (and HTML crap).<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">A domingo, 1/03/2020, 13:06, Petr =C5=A0tetiar &lt;<a href=
=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; escreveu:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">Rui Salvaterra &lt;<a href=3D"mailto:rsalvaterra@gma=
il.com" target=3D"_blank" rel=3D"noreferrer">rsalvaterra@gmail.com</a>&gt; =
[2020-01-27 18:19:46]:<br><br>
why is this RFC, are there any gotchas?<br></blockquote></div></div><div di=
r=3D"auto"><br></div><div dir=3D"auto">This has only been thoroughly tested=
 on AR9003 and AR9002 hardware. I just received an AR5008 card to test, but=
 I&#39;m on holidays at the moment, so I&#39;ll only test it after Tuesday.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">BTW that `enable` in commit subject is p=
robably misleading, because you&#39;re<br>
just improving the support for hwrng, you&#39;re not enabling anything.<br>=
</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">I&#3=
9;m enabling kthread-based entropy collection on AR5008+ hardware, which ha=
sn&#39;t been enabled before (only AR9003 was supported). Does it make sens=
e this way?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div=
><div dir=3D"auto">Rui</div></div>

--0000000000009bb7ec059fcb2091--


--===============7843882853182936446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7843882853182936446==--

