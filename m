Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76B7174D87
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 14:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kwt0BsRdtkOlpob3Z/klSYuL5G1OBK4sokb8aNkXIQs=; b=COPVY74Pj4/64Eodpq9/kwDQU
	XsOGvBdn4xpT5kslLQblJXFXvgmqad0JqeJ3Ld6wi4W07MRbH7CL1238mRAoyY4hkr8Ph4A/Q9uBt
	L9rescBFWFfKtiMtEU+XAVsJ7VjaQrlk2w47j5OXvk3E4I+Osm4fw4RyYQLHJJ+7dsTc7om242tNh
	TrtsHotsNr9sjkQmQj5nF3/LwQak6Sfum9kBu2QmEJ98goPpU0MI2VJUciZKJiDeHFb50LKx4VK6g
	d++849x2YXFbBZq3RGKd2jqBB/Me/7PtCwNJfhN76faAwbvDiLAAOe1GjlSzDyWmU4y95e66tkoqO
	TSSGy/ALA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Op4-0006v7-RD; Sun, 01 Mar 2020 13:39:58 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Oow-0006ul-4f
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 13:39:51 +0000
Received: by mail-vk1-xa43.google.com with SMTP id a76so637661vki.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Mar 2020 05:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oIHrtdCma8+6LU6BEQyqCAouRfZ6YttLSfszQZ2kFUw=;
 b=DrMoe+pwgzR3uYJ/Vu4QjQad+9YBvPjtxHTTO72/Ppu6dK3uOfVBQZA88JRWgOB4QQ
 UN5jxIhvDY8Ha9c/LmM5UZgcEC9/kOh3cBaUKHpBWhuxJx+PRMPmYoJU+kv6kStvjFYU
 CUxu7PBEnX8ii+REtDSrOoTrF5Yrgdyd9fNdFPt0LJ53jvS4msgZVb43GL3Da6seQK/C
 a59tHZfw4cbVjmRA6eNa8QMj1f+zHeY9W6bcyQL3hTjaIXPN0rwapajoSoNcspALFPw/
 c8HnlTg8RSm+P9jhHrhcjBZHA+Lt4rdrdVjI4cVWtnFein7cALo+v0xPlYq6R3+pMp3s
 ZixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oIHrtdCma8+6LU6BEQyqCAouRfZ6YttLSfszQZ2kFUw=;
 b=ZmFNcnF05FTYNZnd4T0PC76lZiwJzDd1H/bB0R4adBcD79gA6ftaMW/sLFwLvHiXu+
 KJGlafPFUh4RIaOKhkKl2kL65TrMg1nYRJiq+HIrGhwTHE0nxEbiTr1sCMi5l+q5TUsw
 Sp/k+j4laQ+NdHyLw21HoNdgPIPo2x68L5ZMqVHxbaidNsbr6jV094MSK0coTdaluC23
 4/o9Ld+llbU7sQ4TBkDo7ZaAJ1m+QWVKfSMlGBTGvJmLFhChOPkeQgO4jhfWAEfsQLiC
 fnmq29rBGw/wE/FuXlszKEDrZW3NQs4Pt1im1IOsWystVVTDNtha99NvIvD1gOf53Kju
 W9ug==
X-Gm-Message-State: ANhLgQ318YIsPFCd3ZvVxpMZBy5m3p6Zq0wOumLHsqFAI160EIjSZTkX
 OweDROIxGCt/53mDVyMuz8av9+f4oBYynz8fbg==
X-Google-Smtp-Source: ADFU+vvI9RNWC5Cf98bBqydymq6pqVTqZU7BhNjQ+9Bst8QPkjIeupd6PX7fP8aRb1VrNQfJ8YK/+dN2d/CiHNI6lzs=
X-Received: by 2002:a1f:170c:: with SMTP id 12mr6561820vkx.24.1583069988637;
 Sun, 01 Mar 2020 05:39:48 -0800 (PST)
MIME-Version: 1.0
References: <20200127181946.11978-1-rsalvaterra@gmail.com>
 <20200301130625.GB70913@meh.true.cz>
 <CALjTZvZSLEH-P3Ht8-HFtbgK7YN1-gBGY1wzMtUH2hYK_BC2Mw@mail.gmail.com>
In-Reply-To: <CALjTZvZSLEH-P3Ht8-HFtbgK7YN1-gBGY1wzMtUH2hYK_BC2Mw@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Sun, 1 Mar 2020 13:39:37 +0000
Message-ID: <CALjTZvbNs0k9i-Rkdh-F9Kqxr1Xu2tRcz6RdBpR801FE4y7-vA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_053950_209512_A958952E 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============1726922422594952055=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1726922422594952055==
Content-Type: multipart/alternative; boundary="00000000000053d32a059fcb3418"

--00000000000053d32a059fcb3418
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah, silly me, you're absolutely right. This is just half the patch, and
it's perfectly fine the way it is, so I'm not enabling anything new, just
exposing the existing kconfig. Please ignore my previous email.

Thanks,
Rui

A domingo, 1/03/2020, 13:34, Rui Salvaterra <rsalvaterra@gmail.com>
escreveu:

> Hi, Petr! Writing from my phone, pardon the terseness (and HTML crap).
>
> A domingo, 1/03/2020, 13:06, Petr =C5=A0tetiar <ynezz@true.cz> escreveu:
>
>> Rui Salvaterra <rsalvaterra@gmail.com> [2020-01-27 18:19:46]:
>>
>> why is this RFC, are there any gotchas?
>>
>
> This has only been thoroughly tested on AR9003 and AR9002 hardware. I jus=
t
> received an AR5008 card to test, but I'm on holidays at the moment, so I'=
ll
> only test it after Tuesday.
>
> BTW that `enable` in commit subject is probably misleading, because you'r=
e
>> just improving the support for hwrng, you're not enabling anything.
>>
>
> I'm enabling kthread-based entropy collection on AR5008+ hardware, which
> hasn't been enabled before (only AR9003 was supported). Does it make sens=
e
> this way?
>
> Thanks,
> Rui
>

--00000000000053d32a059fcb3418
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Ah, silly me, you&#39;re absolutely right. This is j=
ust half the patch, and it&#39;s perfectly fine the way it is, so I&#39;m n=
ot enabling anything new, just exposing the existing kconfig. Please ignore=
 my previous email.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Than=
ks,</div><div dir=3D"auto">Rui<br><br><div class=3D"gmail_quote" dir=3D"aut=
o"><div dir=3D"ltr" class=3D"gmail_attr">A domingo, 1/03/2020, 13:34, Rui S=
alvaterra &lt;<a href=3D"mailto:rsalvaterra@gmail.com">rsalvaterra@gmail.co=
m</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"aut=
o"><div>Hi, Petr! Writing from my phone, pardon the terseness (and HTML cra=
p).<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>A domingo, 1/03/2020, 13:06, Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz=
@true.cz" target=3D"_blank" rel=3D"noreferrer">ynezz@true.cz</a>&gt; escrev=
eu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">Rui Salvaterra &lt;<a href=3D"m=
ailto:rsalvaterra@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank=
">rsalvaterra@gmail.com</a>&gt; [2020-01-27 18:19:46]:<br><br>
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
</blockquote></div></div></div>

--00000000000053d32a059fcb3418--


--===============1726922422594952055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1726922422594952055==--

