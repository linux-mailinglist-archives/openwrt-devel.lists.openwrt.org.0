Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BCD1FA5D
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 21:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5K9U9YQhy40U1jQYAJPBmv3iSbyXMo080aBbxaJmTv8=; b=PNp1O1kR2fXj1BxefNtSbC7xa
	VrvXwPbrxvWDKnV/IXH7oIqPaL27sxukb95rwABCQCi1F8TqrwcEuNULqKZ3RE7mpPWIvyMVKp5TD
	fqzPqb2gxir2Wuj+aYmCO7AqIrHmPh5ZC6wx/P7UyjWl91cRtEI9X8DY/P+qpGPGsB2nktqZrLgNq
	smCrSSz5qQRDS8e/iB0mIBkOsGrSIeu2cR18+QpX4LvHIq+5n46Eqhxo/itTA6GfBN3Y+0i5Wv+Ao
	R4uszIwnhnvmxH2G9ISD+nthWUArc1Qfhl0ppKBVaZQ0tUfRm6PFmmWMdXIKSxgdtpWc6EC3Fsikv
	QxtSy8m3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzMn-0006Ux-DZ; Wed, 15 May 2019 19:15:05 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzMd-0006Ue-8b
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 19:14:56 +0000
Received: by mail-ua1-x943.google.com with SMTP id t18so302084uar.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 12:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D7+Hts4btfH9MzceEk1aucE72pbeU2JxT31MlTvDbu4=;
 b=ZypAcrZjzaLMSUm64PEfOKKREPcV/rApMA3+SG/A2aa7ZHaIhim+iMT4mh1RRmR8UH
 DHiKf3Ejo2MWjlOiIx555NgCDI7M11wpbjoP3YbzO7anESH2FY75C027cOdVjdrRGDpP
 h/aBtsvvxF7Hlgb5QvDUJZFWURuPH8AdlDBWxoADT9eDzm8noYCzzh+oo4ABkSDcA+K0
 wrkLR9Lmov1dAq7URBShMyJ1DVC4cf7yMTs6lmIn6QXk1eN1vvmfdiiGkwLi6HzWpnLC
 RgbpbTe7NNpHiu9MHnpJgNDugL6tr7G/gj1pzXAi3q/zrZnMt4r5cYz2MkknLhWEV697
 C44A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D7+Hts4btfH9MzceEk1aucE72pbeU2JxT31MlTvDbu4=;
 b=GFGvsy82IHkYQhDCHjyTKjNcEI6P2X9DS4NUewDKhI057kiUx6n4j/wqtMJJK7Cu0M
 e828BwOX0UTCFqo4fu+s7XtOgdDtxxg7tPM5haDQ+Rbgp1CKV97KCH48myI3NrFcU9La
 Qooixhdw2acwcEV/8urcCO6eFmwW2xa/+SdZwS/uks1Go+eV2xxKBZjEgMT4EO5lLH2j
 7CggWVc/3XcImZLlm5napaZDPqzJv0PAGdKH7xDQx0gwi9GmAOFtSYECGXPttIzLBONw
 WK6EfcI9O2LEfGEQzB3gjlEoDMO7OV+k8GOlh8mDf6ED7o11Ezh8tZtXz3OsYJBJ+1os
 Wtmg==
X-Gm-Message-State: APjAAAXZAmsCsLgfetu5Pc3oJg0xmcRRYEnsFw0snIlgzoXCATwcYy6i
 iRkNqt4hov91Om/mQzgL8eDAOhziXfUumsW6K5A=
X-Google-Smtp-Source: APXvYqyk0WriWBnnsvhNaN2G+ZUcTsQgyLS+pp27RQByM60R/CbilPloYjJ8CpgD/cWaZ+nu/bXpiWyvXNJXZ77+q+o=
X-Received: by 2002:ab0:4a97:: with SMTP id s23mr19266442uae.19.1557947694034; 
 Wed, 15 May 2019 12:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-4-be.dissent@gmail.com>
 <20190515160152.GC4938@meh.true.cz>
 <CAEdN=pFgpHN6zjMqEjs-3p-SgDneFG18B4=-Tyk4fnR_zofuXA@mail.gmail.com>
 <20190515185538.GB63920@meh.true.cz>
In-Reply-To: <20190515185538.GB63920@meh.true.cz>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Wed, 15 May 2019 22:14:41 +0300
Message-ID: <CAEdN=pENo3cxEyffOBdLd1OAcmbpTYzrkk9bWx_F6csoiwLGVA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_121455_303569_7150830D 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
Content-Type: multipart/mixed; boundary="===============6191406651106931517=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6191406651106931517==
Content-Type: multipart/alternative; boundary="000000000000e1b32a0588f1f6b2"

--000000000000e1b32a0588f1f6b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 21:55 Petr =C5=A0tetiar <=
ynezz@true.cz>:

> =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB <be.dissent@gmail.com> [2019-05-15 20:35:3=
8]:
>
> > This patchset consists of 2 patches with different authors that I have
> > squashed into 1. How should I preserve authorship in this case?
>
> Just add them as separate patches, exactly as produced by `git
> format-patch`
> command, don't squash them.
>

Not a problem, actually, but I've been suggested to squash them :)
https://github.com/openwrt/openwrt/pull/2043#issuecomment-491581897


> > I'm not the author of this code to upstream it.
>
> You don't need to be author in order to upstream it. It's quite common to
> post
> patches for review on behalf of other developers, you just need to keep
> proper
> authorship. My recent (rejected) attempt for example[1].
>
> 1. https://patchwork.ozlabs.org/patch/1086628/


Shouldn't the dev send the patch directly to me in order to be able to post
it on his behalf, like openwrt submitting patches guideline describes?


>
> -- ynezz
>

--000000000000e1b32a0588f1f6b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 21:5=
5 Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&=
gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">=D0=9F=D0=B0=D0=B2=D0=B5=D0=BB=
 &lt;<a href=3D"mailto:be.dissent@gmail.com" target=3D"_blank" rel=3D"noref=
errer">be.dissent@gmail.com</a>&gt; [2019-05-15 20:35:38]:<br>
<br>
&gt; This patchset consists of 2 patches with different authors that I have=
<br>
&gt; squashed into 1. How should I preserve authorship in this case?<br>
<br>
Just add them as separate patches, exactly as produced by `git format-patch=
`<br>
command, don&#39;t squash them.<br></blockquote></div></div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Not a problem, actually, but I&#39;ve been s=
uggested to squash them :)</div><div dir=3D"auto"><a href=3D"https://github=
.com/openwrt/openwrt/pull/2043#issuecomment-491581897">https://github.com/o=
penwrt/openwrt/pull/2043#issuecomment-491581897</a><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<br>
&gt; I&#39;m not the author of this code to upstream it.<br>
<br>
You don&#39;t need to be author in order to upstream it. It&#39;s quite com=
mon to post<br>
patches for review on behalf of other developers, you just need to keep pro=
per<br>
authorship. My recent (rejected) attempt for example[1].<br>
<br>
1. <a href=3D"https://patchwork.ozlabs.org/patch/1086628/" rel=3D"noreferre=
r noreferrer" target=3D"_blank">https://patchwork.ozlabs.org/patch/1086628/=
</a></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Shouldn&#39;t the dev send the patch directly to me in order to be able to =
post it on his behalf, like openwrt submitting patches guideline describes?=
</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
-- ynezz<br>
</blockquote></div></div></div>

--000000000000e1b32a0588f1f6b2--


--===============6191406651106931517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6191406651106931517==--

