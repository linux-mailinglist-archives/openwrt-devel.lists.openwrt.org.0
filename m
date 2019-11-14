Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFD6FBD87
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 Nov 2019 02:36:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xTVzmEpmWc02dZF74Z/4g8jQN+JZMbCazJL6JP0fYxE=; b=aP7pLFN+qt6PDyp6QLlvu+kze
	AP8GiBleLANQFAvF/rAtOgiBTQJB5eG7exwfzUizB1XO7Com3kVVd3VqL+cXnJxvpBoj3sPWPqfQz
	6OXKuRTeQvPQZgzr3dw6AE1gm6mh9ia1vxdK/AZFYrre5Ow8sMdjZLp+8VUFPSvva5B5yYauND/Vu
	OaxDJQwgchqU7bCrn/Oq5VBfSU2XGyX6SbtLW57s4Ea5aHd2/O/htUj2emn36lhs+X8oTzwYD2sDv
	wAU9APAb30+H/CmRXtBCO4+Me2Mih9JdjegeWVa/3PCT8qi5x5UpHwLenk5GyBusdOsmphwp1tdWv
	Mg2ykRM1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV43w-000720-EU; Thu, 14 Nov 2019 01:36:44 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV43l-00071T-HS
 for openwrt-devel@lists.openwrt.org; Thu, 14 Nov 2019 01:36:35 +0000
Received: by mail-ua1-x941.google.com with SMTP id a13so1363299uaq.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 Nov 2019 17:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cOmCEizVBwZQ4rx32pFkjUtjXq7cYEDKJrMhlmRiDpA=;
 b=r98CbHC1bNT2niOYc27od0TFXZzJ9wzSnaWEZsFSwXCL4OmGQ/tdkVLojF/eIR4R3/
 UF2UdJNgF84pWu/D8GMxkrPvS++zheGHssGh4QpfQLz7rF4GtFVBPfodhJ++QnmwxH5o
 vf59PmX2Lg1muf2IZ1lTyp3gS8OWw1fnWaeH9U6tvDh3NDOkepD5Rb5bjWKH3hIY5DvS
 ef4hraMWBvuYL+C+403SWmthytEt7jThsk685L7rzcYPw8PJ6NYvWIvrnREcWtnGa0ta
 nbBhBpy7F0lbJt6kwx6sK9A4EWHDmQPoUv9tMZWE8bsHJAyrRT1dtfD8qCx43Vqwck1u
 O35Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cOmCEizVBwZQ4rx32pFkjUtjXq7cYEDKJrMhlmRiDpA=;
 b=f7JAqp3qJ54fZtno1r9S0isCpG72vgNTR8B3u0v+5fABxt/BKDbLcuM9ov/q+7yJjz
 p+z7P2xxXcqZok+nsn4Wc00Hc4QMvgR7p4eiGj6c5AOQ2sD9bOivs0r4T3y/oBYmSijy
 p2eS72ILU1kl8gtNKSMm1AcZxJ+vu4ZGMZH+zLKnNp1vH5t5qUhA0p+QiaUSEqM6MFrH
 WdDkwcAI5ZAyMgp/SKhMy+x1r4xFIeDJ9gptb5Wd81fcSPvZHBFIthWZu3XRlaOSEjwF
 3o58KnOilmZo/YOCcmNdfm12BxHSOzAY/7ckxJTiRQ/ENMo338rOSl/PdY0dQB2+HGZ8
 NI8w==
X-Gm-Message-State: APjAAAXCs8rRKRZTUybld4w7lt+GANoxlVSNU23JN/T6D+e+VrYosLVO
 crdzbHTP7AqsIGG7Qwi/Md6mRSVo0TnOb51FPOdeMw==
X-Google-Smtp-Source: APXvYqzPxjDa9xDawAc7EGUEb+V9iCgC+E43kgItMU0AbZoyp24+d9v8Y7TSp1G9HxOXu4G07BRKI91rlhigBfMqYp8=
X-Received: by 2002:a9f:364c:: with SMTP id s12mr3799783uad.77.1573695391601; 
 Wed, 13 Nov 2019 17:36:31 -0800 (PST)
MIME-Version: 1.0
References: <87bltgller.fsf@husum.klickitat.com>
 <20191113200806.GA1279@makrotopia.org>
 <87h837gyft.fsf@husum.klickitat.com>
 <00dd01d59a79$387f8820$a97e9860$@adrianschmutzler.de>
In-Reply-To: <00dd01d59a79$387f8820$a97e9860$@adrianschmutzler.de>
From: Russell Senior <russell@personaltelco.net>
Date: Wed, 13 Nov 2019 17:36:20 -0800
Message-ID: <CAHP3WfMQBxGvMaSickLf6mxeiCuNeYX-9eWPtJxL=1OwNapbMQ@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_173633_654601_B10EDC4D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add
 /usr/share/libubox/jshn.sh to sysupgrade stage2
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
Cc: openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============4520750117354043881=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4520750117354043881==
Content-Type: multipart/alternative; boundary="000000000000cd2b54059744826d"

--000000000000cd2b54059744826d
Content-Type: text/plain; charset="UTF-8"

It should be harmless.

+1

On Wed, Nov 13, 2019 at 3:22 PM <mail@adrianschmutzler.de> wrote:

> Hi,
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Russell Senior
> > Sent: Donnerstag, 14. November 2019 00:16
> > To: Daniel Golle <daniel@makrotopia.org>
> > Cc: openwrt-devel@lists.openwrt.org
> > Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add
> > /usr/share/libubox/jshn.sh to sysupgrade stage2
> >
> > >>>>> "Daniel" == Daniel Golle <daniel@makrotopia.org> writes:
> >
> > Daniel> Hi Russell,
> > Daniel> On Tue, Nov 12, 2019 at 03:33:48PM -0800, Russell Senior wrote:
> > >>
> > >> Discovered recent changes had broken sysupgrade for ar71xx mikrotik
> > >> rb-493g, traced the problem to missing /usr/share/libubox/jshn.sh
> > >> after switching to tmpfs.
> >
> > Daniel> I've applied your patch to master. Do we need to apply it for
> > Daniel> openwrt-19.07 as well?
> >
> > I'm not sure, I haven't tested 19.07.
>
> I think most of the sysupgrade changes have been backported. Despite, we
> are fixing ar71xx here, it makes no sense to fix ar71xx in master only ...
> And adding a file should not break anything, in worst case the file would
> be just useless?
>
> So, I'd vote for backport.
>
> Best
>
> Adrian
>

--000000000000cd2b54059744826d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It should be harmless.<br></div><div><br></div><div>+=
1</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Nov 13, 2019 at 3:22 PM &lt;<a href=3D"mailto:mail@adriansch=
mutzler.de">mail@adrianschmutzler.de</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: openwrt-devel [mailto:<a href=3D"mailto:openwrt-devel-bounces@li=
sts.openwrt.org" target=3D"_blank">openwrt-devel-bounces@lists.openwrt.org<=
/a>]<br>
&gt; On Behalf Of Russell Senior<br>
&gt; Sent: Donnerstag, 14. November 2019 00:16<br>
&gt; To: Daniel Golle &lt;<a href=3D"mailto:daniel@makrotopia.org" target=
=3D"_blank">daniel@makrotopia.org</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k">openwrt-devel@lists.openwrt.org</a><br>
&gt; Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add<br>
&gt; /usr/share/libubox/jshn.sh to sysupgrade stage2<br>
&gt; <br>
&gt; &gt;&gt;&gt;&gt;&gt; &quot;Daniel&quot; =3D=3D Daniel Golle &lt;<a hre=
f=3D"mailto:daniel@makrotopia.org" target=3D"_blank">daniel@makrotopia.org<=
/a>&gt; writes:<br>
&gt; <br>
&gt; Daniel&gt; Hi Russell,<br>
&gt; Daniel&gt; On Tue, Nov 12, 2019 at 03:33:48PM -0800, Russell Senior wr=
ote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Discovered recent changes had broken sysupgrade for ar71xx mi=
krotik<br>
&gt; &gt;&gt; rb-493g, traced the problem to missing /usr/share/libubox/jsh=
n.sh<br>
&gt; &gt;&gt; after switching to tmpfs.<br>
&gt; <br>
&gt; Daniel&gt; I&#39;ve applied your patch to master. Do we need to apply =
it for<br>
&gt; Daniel&gt; openwrt-19.07 as well?<br>
&gt; <br>
&gt; I&#39;m not sure, I haven&#39;t tested 19.07.<br>
<br>
I think most of the sysupgrade changes have been backported. Despite, we ar=
e fixing ar71xx here, it makes no sense to fix ar71xx in master only ...<br=
>
And adding a file should not break anything, in worst case the file would b=
e just useless?<br>
<br>
So, I&#39;d vote for backport.<br>
<br>
Best<br>
<br>
Adrian <br>
</blockquote></div>

--000000000000cd2b54059744826d--


--===============4520750117354043881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4520750117354043881==--

