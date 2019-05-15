Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B4D1F962
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 19:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5J+MVRtSdphCKksOa0laFf/lXiD9g1xgJTjaAcTU0Jg=; b=f03tLBKlzzken8k7RWXdX0GuA
	L/pdY4TFooTp+OXR2ccUHPKQfjLN55Js83g9xU9wRUK2woyZx6gyCn/ASANxFnJ10wh4VVVTJVF9G
	/ADVPYkachviGmP8IdwbL+Tzeq7k9nnYNtJU+aUnxaW72dGUe9Hk3u18+8PYMYifNGZd8jrRXq++s
	8hv87636Ov+OjGUaWiA177FbrkJmuT6HTW3Eq+o81Xy2xvb5S+kr/XUv9cxHyH00+hzc6fqejUBpy
	RTX1yKnIeRpRXywh9lFVr6gu86KLqd0/s20OsIMme43rnCgX7juwSYss70zy3WImt9/xEv0F7wAZu
	kR+TbxrbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxot-0002i9-Q6; Wed, 15 May 2019 17:35:59 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxom-0002hi-Kg
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 17:35:54 +0000
Received: by mail-ua1-x942.google.com with SMTP id s30so164781uas.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 10:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wnpeVEm+lXcTkVHRU4QPVYLOf4sO4RpNGzqd6Y0+Dos=;
 b=XfUk6BuePHVSSvbX31Mmwz9w9CnlOvrN1rlQT1gcxmL7dnYD9X+dp8/BSZCGfHllQS
 HjAad8hskH2BXQFAazfA/0PfIXWQw3IKS4KUPB17aEPDvFZjnmSACQq4i1GdT8fHlmJz
 51z0RbmSgdl+pXL7/RQ0jn1cOfr3GD4q/lHreunAk666E3yK/zhTJIVDiLlSfa77oaOK
 1UXXbmhPN2Rf5V4moWyiwTTiBJNUf8D3OHVj5PFgDNlrlaAf0yFhT/F0U6jZvpGOUJsy
 dX2QmW5HWFd4pyW36V7HtDJGHqjzrArWeHy4OUcgPJHbbYIvRrexjWvRmGQLHImPcKgk
 M0jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wnpeVEm+lXcTkVHRU4QPVYLOf4sO4RpNGzqd6Y0+Dos=;
 b=C+x25SskeU284blxN2yiTjfdhZlvZ0117DXayRCdJc0C9R7goPZTWzenh+rMjEfobg
 ObxBjn9Na+MSrRWiLReSVMYh/8Nq+BiiaIirfLrUkR9HghpoRpihdVgzlONMmqU4CUG0
 3Hs42n8wg1mIXZ4p1A7sNdpQjimoK9UXpwKDE64s/pXVzrE4K6ukeq5M0XXlMRm/GW5H
 sis1cRMVJjn7rNBmtYzg0+L18QvVvulLg2xooyURyIu+ZsS7vQJm8hIfq2iti3BRgNNY
 pFVNDL86NrRr7RUJa9+BIXcKITDr7Yu8gudk+qOjpjVqLN4esTp9u4Xs+ZYknOk0kZRX
 LyMA==
X-Gm-Message-State: APjAAAV1Yk8T37rKMPiaISzf+vkJfXC0Et/lsuo/fEER1Je1qsbwhvqj
 UKCz3RZ4QQe4WA9E2vE0NjNR6xAS/1yyaTy9YwM=
X-Google-Smtp-Source: APXvYqyZPcHg+KhwGgju7nUbUoOGcsSsm2Ddw1Lqhdyfqu69YwXQNvLZYB7vsMZgFV4MVOSzjvSDXQzgCJ2oTsOcpPc=
X-Received: by 2002:ab0:6099:: with SMTP id i25mr4206189ual.55.1557941750714; 
 Wed, 15 May 2019 10:35:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-4-be.dissent@gmail.com>
 <20190515160152.GC4938@meh.true.cz>
In-Reply-To: <20190515160152.GC4938@meh.true.cz>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Wed, 15 May 2019 20:35:38 +0300
Message-ID: <CAEdN=pFgpHN6zjMqEjs-3p-SgDneFG18B4=-Tyk4fnR_zofuXA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_103552_707844_460EDA66 
X-CRM114-Status: GOOD (  11.29  )
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
Content-Type: multipart/mixed; boundary="===============4701802858368724098=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4701802858368724098==
Content-Type: multipart/alternative; boundary="000000000000a1d8100588f09445"

--000000000000a1d8100588f09445
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 19:02 Petr =C5=A0tetiar <=
ynezz@true.cz>:

> Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:20]:
>
> > --- /dev/null
> > +++
> b/target/linux/ipq40xx/patches-4.14/091-ipq40xx-add-support-for-secondary=
-cores-bringup.patch
> > @@ -0,0 +1,174 @@
> > +From 6126701397fa6c884fd78453d995e49df91a566a Mon Sep 17 00:00:00 2001
> > +From: Pavel Kubelun <be.dissent@gmail.com>
> > +Date: Mon, 13 May 2019 11:25:05 +0300
> > +Subject: [PATCH] ipq40xx: Add support for secondary cores bringup
> > +
> > +Cherry-pick QSDK patches to enable proper ipq40xx
> > +secondary cores bringup.
> > +
> > +
> https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/commit/?h=3D=
eggplant&id=3Df810b63c356bd72d9b89fb9c0b7e27c250c3540f
>
> Please preserve the authorship of the work and try to upstream this chang=
es
> first, then backport it to OpenWrt.
>

This patchset consists of 2 patches with different authors that I have
squashed into 1. How should I preserve authorship in this case?
I'm not the author of this code to upstream it.


> -- ynezz
>

--000000000000a1d8100588f09445
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 19:0=
2 Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&=
gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Pavel Kubelun &lt;<a href=3D"m=
ailto:be.dissent@gmail.com" target=3D"_blank" rel=3D"noreferrer">be.dissent=
@gmail.com</a>&gt; [2019-05-14 16:42:20]:<br>
<br>
&gt; --- /dev/null<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.14/091-ipq40xx-add-support-for-se=
condary-cores-bringup.patch<br>
&gt; @@ -0,0 +1,174 @@<br>
&gt; +From 6126701397fa6c884fd78453d995e49df91a566a Mon Sep 17 00:00:00 200=
1<br>
&gt; +From: Pavel Kubelun &lt;<a href=3D"mailto:be.dissent@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">be.dissent@gmail.com</a>&gt;<br>
&gt; +Date: Mon, 13 May 2019 11:25:05 +0300<br>
&gt; +Subject: [PATCH] ipq40xx: Add support for secondary cores bringup<br>
&gt; +<br>
&gt; +Cherry-pick QSDK patches to enable proper ipq40xx<br>
&gt; +secondary cores bringup.<br>
&gt; +<br>
&gt; +<a href=3D"https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-m=
sm/commit/?h=3Deggplant&amp;id=3Df810b63c356bd72d9b89fb9c0b7e27c250c3540f" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://source.codeaurora.o=
rg/quic/qsdk/oss/kernel/linux-msm/commit/?h=3Deggplant&amp;id=3Df810b63c356=
bd72d9b89fb9c0b7e27c250c3540f</a><br>
<br>
Please preserve the authorship of the work and try to upstream this changes=
<br>
first, then backport it to OpenWrt.<br></blockquote></div></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">This patchset consists of 2 patches with=
 different authors that I have squashed into 1. How should I preserve autho=
rship in this case?</div><div dir=3D"auto">I&#39;m not the author of this c=
ode to upstream it.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
-- ynezz<br>
</blockquote></div></div></div>

--000000000000a1d8100588f09445--


--===============4701802858368724098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4701802858368724098==--

