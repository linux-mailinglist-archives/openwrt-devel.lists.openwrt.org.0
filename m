Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2492B1FB33
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 21:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vwcGSk5FwQzmrU8Lut5IV4WFvkcp0s4FEDsG4+8r2I8=; b=Pz4+B7TSjxWxFvzh3YLYBJokh
	xxtkO5m8zMmhdJ9sXrt3Q2+1EXo1T6x2d6Q9j+289V9+aHurwB4XqxbV74EIe1nAZAGrJcEwY1SbG
	2cHMfLqqhFOuV0ZiLRM52KnCXOokRHr9W1PAq9qgcuJLnBzrsccTcxoruR2h58eBx3u0qEPD2kCKa
	REgrX/8zqZEJVgg6pUg+TrZCuilr43cUyWl7gMu3oCo0HH/tiXV4ytVZ/WxRkGQsNlAc3SmTmU+LW
	jbpynqogTvS2/NrnE/l3gEMa7lH+3+OrVnbCPSsvjuB2/DOLhgwIlFchMO7Dq+sNeQ8T9PRhfV07t
	CZ3rg0XNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQznj-0008FD-Qv; Wed, 15 May 2019 19:42:55 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQznc-0008Es-Um
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 19:42:50 +0000
Received: by mail-ua1-x942.google.com with SMTP id p13so319716uaa.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 12:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1v1zXAaASjYqLZbY4oq7kPUba8Cgq8LEgE/FRYQ2ADY=;
 b=pDMEGmEKMBCppH+Ip3U5Za5R7Xm+cmpgEIvFnnneNCY1Tg7/etFmHszYrDDhkBES+1
 R5XCVo0I0BXYHL/MY1orJ7xkYAkoK8Z/tdnXQPDHSYdzmTUNmhxxnMXS5baY0WFe2zx5
 ff55eA80CXyhk+kCQVqZPFQ8dy8KUZZq2Kw63X4wQuypSx+GR3r+iICDrRrQxuKphPkk
 9oOLuSUKv1lVFUueGQpiff3yvjzyrtd+I7gCe+GsZW+3kHY8B4Y1HCwgYwSsA0JtHfCM
 q1gjN2KjdT3ctQB/uWgMXwfTaWOUGx+cV1aJG1m6OPYRWbayeZJvHagHtZzGo2FW0Tcx
 eU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1v1zXAaASjYqLZbY4oq7kPUba8Cgq8LEgE/FRYQ2ADY=;
 b=OgXU0CV45AFwxsRNNToNVLK7BRKvF2HHTiX4EsB1B28i1xzWeBeMiIuKZuW+IdRfkS
 8SwdMkRWwMWZLXEMhzfzbYAq2Prb446L2n79ancwNibkZQrlAxiAGCOcJsuLSb8+qRK6
 qSuVfEA5jprXdsFgOfZRa0mX4R1X9kMMZa/VF2GM7uVmdmvt91baDfBwKCKhewjYMhcp
 6gSMbQFkGIcL8Wa0BHmNjLinC+7XoOTQsUZanqLtb0p6IbqLI5isKfB0UQRVFetadYpr
 X2sMBZJ74eFc0pb1SnPkAci9gqSTYiWuIWxflE+WxZNZbwgTSSIrHCbsDsHvf2KAYXG1
 /1CQ==
X-Gm-Message-State: APjAAAUlmCnlrZ+UgLX1mjjLQO3eMKMCJQYBIliEJDG6QwUwl+NLMbOu
 cRvFu6YdofD6F0axFenWsiyfK6NVG+tu51sdboc=
X-Google-Smtp-Source: APXvYqykigUtY9/2tJIyTNcoai4YhGZjbcFd7JM9RJo4Xw7lj+as5kvE383R4SvGyg3PFrTL0VYFFrQWNLxAnIeXCaY=
X-Received: by 2002:a9f:22ac:: with SMTP id 41mr3345854uan.42.1557949367684;
 Wed, 15 May 2019 12:42:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-4-be.dissent@gmail.com>
 <20190515160152.GC4938@meh.true.cz>
 <CAEdN=pFgpHN6zjMqEjs-3p-SgDneFG18B4=-Tyk4fnR_zofuXA@mail.gmail.com>
 <20190515185538.GB63920@meh.true.cz>
 <CAEdN=pENo3cxEyffOBdLd1OAcmbpTYzrkk9bWx_F6csoiwLGVA@mail.gmail.com>
 <20190515193528.GD63920@meh.true.cz>
In-Reply-To: <20190515193528.GD63920@meh.true.cz>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Wed, 15 May 2019 22:42:34 +0300
Message-ID: <CAEdN=pGagtZcdMdXyq3-NitxhB9T1ynW+ndkf_t2ZfQsr_J5rQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_124248_997094_C53F1D8A 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] ipq40xx: add support for secondary
 cores bringup
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
Cc: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============2738345634251574566=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2738345634251574566==
Content-Type: multipart/alternative; boundary="000000000000a3957b0588f25a79"

--000000000000a3957b0588f25a79
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 22:35 Petr =C5=A0tetiar <=
ynezz@true.cz>:

> =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB <be.dissent@gmail.com> [2019-05-15 22:14:4=
1]:
>
> > Not a problem, actually, but I've been suggested to squash them :)
> > https://github.com/openwrt/openwrt/pull/2043#issuecomment-491581897
>
> ok, thanks for the background, but still, squashing doesn't mean changing
> authorship and Christian has probably also warned you beforehand :-)
>
> "(Note: In some of the patches the "Author" in the commits is dissent1! S=
o
>   watch out before sending them off)"
>

That was about different - I didn't switch from nickname to real name by
mistake when exported patches from my staging tree.

Thanks anyway, I'll add 2 commit messages into patchnotes within the
squashed patch. Is that okay?


> > Shouldn't the dev send the patch directly to me in order to be able to
> post
> > it on his behalf, like openwrt submitting patches guideline describes?
>
> From the kernel docs[1]:
>
> "The contribution is based upon previous work that, to the best of my
>  knowledge, is covered under an appropriate open source license and I hav=
e
> the
>  right under that license to submit that work with modifications, whether
>  created in whole or in part by me, under the same open source license
> (unless
>  I am permitted to submit under a different license), as indicated in the
> file;"
>
> so in short, kernel is covered by GPLv2 which allows you to do this if yo=
u
> retain the authorship.
>
> 1.
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#si=
gn-your-work-the-developer-s-certificate-of-origin


Okay, thanks for pointing out.


>
> -- ynezz
>

--000000000000a3957b0588f25a79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 22:3=
5 Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&=
gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">=D0=9F=D0=B0=D0=B2=D0=B5=D0=BB=
 &lt;<a href=3D"mailto:be.dissent@gmail.com" target=3D"_blank" rel=3D"noref=
errer">be.dissent@gmail.com</a>&gt; [2019-05-15 22:14:41]:<br>
<br>
&gt; Not a problem, actually, but I&#39;ve been suggested to squash them :)=
<br>
&gt; <a href=3D"https://github.com/openwrt/openwrt/pull/2043#issuecomment-4=
91581897" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.co=
m/openwrt/openwrt/pull/2043#issuecomment-491581897</a><br>
<br>
ok, thanks for the background, but still, squashing doesn&#39;t mean changi=
ng<br>
authorship and Christian has probably also warned you beforehand :-)<br>
<br>
&quot;(Note: In some of the patches the &quot;Author&quot; in the commits i=
s dissent1! So<br>
=C2=A0 watch out before sending them off)&quot;<br></blockquote></div></div=
><div dir=3D"auto"><br></div><div dir=3D"auto">That was about different - I=
 didn&#39;t switch from nickname to real name by mistake when exported patc=
hes from my staging tree.</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Thanks anyway, I&#39;ll add 2 commit messages into patchnotes within the =
squashed patch. Is that okay?</div><div dir=3D"auto"><br></div><div dir=3D"=
auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; Shouldn&#39;t the dev send the patch directly to me in order to be abl=
e to post<br>
&gt; it on his behalf, like openwrt submitting patches guideline describes?=
<br>
<br>
From the kernel docs[1]:<br>
<br>
&quot;The contribution is based upon previous work that, to the best of my<=
br>
=C2=A0knowledge, is covered under an appropriate open source license and I =
have the<br>
=C2=A0right under that license to submit that work with modifications, whet=
her<br>
=C2=A0created in whole or in part by me, under the same open source license=
 (unless<br>
=C2=A0I am permitted to submit under a different license), as indicated in =
the file;&quot;<br>
<br>
so in short, kernel is covered by GPLv2 which allows you to do this if you<=
br>
retain the authorship.<br>
<br>
1. <a href=3D"https://www.kernel.org/doc/html/latest/process/submitting-pat=
ches.html#sign-your-work-the-developer-s-certificate-of-origin" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://www.kernel.org/doc/html/latest=
/process/submitting-patches.html#sign-your-work-the-developer-s-certificate=
-of-origin</a></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Okay, thanks for pointing out.</div><div dir=3D"auto"><br></div><=
div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<br>
<br>
-- ynezz<br>
</blockquote></div></div></div>

--000000000000a3957b0588f25a79--


--===============2738345634251574566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2738345634251574566==--

