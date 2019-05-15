Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144B21F18E
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 13:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yb1aQ+2AC24lP9LOO1G1co0tIoSenfi3MaRKIwwnW4E=; b=n3YUaYONI6biE9FMBHsWr28pL
	ZVIS2KPpQqtMBOSb8rF3xNhKVOMJqF5Pl2CQWnlWXE+9CShJ0aMSvOYhy88DGg9a1n5QW6vAuDXmJ
	RS8y1qeEVMZIdmjQhDeVrnv/a5ycvnBkGdGJ23xuy89CTfgl0EcmQJ+NEmp0onXA3InoIcOMkM3bs
	tnWxMjUGR2b93bsae3lO9brTeAHEx+/GBvihDF6gQr/NaOCWwfgoS99xSWI5XHa5OYI+QSDvxmJEH
	LZsJe150uZdkbAqbyikatzl8VgsfGyqIVlL06qfm86kHOoIuQBrLAkOUtVcg3JQ5MnWUjVRo4jytY
	RLQhmUJ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsX7-0003uf-LL; Wed, 15 May 2019 11:57:17 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsWz-0003ty-LV
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 11:57:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id e19so1983560iob.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 04:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+4nh2gN2+L4YaRdfPEDlnhcaDFPLHyB0POM15t1zS1M=;
 b=lqsZ0PIgo9pZEjHqw0wiLfuzzFPMdcht4FX3eBqwHGBVOi6hrmw2pYTF2899rCRuEI
 EGR+jQAYX6r//gY06Ez6Z8F+oeU7cZNLkajlPCbbilJgkSMxc9tRrkC/EIww+/6gHb2+
 NZ0+KeeRxQE31V4UCZ1qKeNOjJN7ZBj/muGq62LGFHX6uwMc1kYDsm62DywTZCummolY
 TLEnNmFriOyiujuZUE2EHR6oG0Hior98IMGwXO5bN2N/MZrISTIQ6z3vPFOBTK2K3/Ov
 PMlx4BMeda8Oj+nBrwl5ryRojGhHvgKxOJ3LQJQSUwor6v14tWroUHfuGqGvDqwmXIfc
 +ijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+4nh2gN2+L4YaRdfPEDlnhcaDFPLHyB0POM15t1zS1M=;
 b=P506ZbdalRFjx0wWUEZSapi3+/WcdHKKY68F6TQF9j5OWnMumIezV1/gmziIwUhTt6
 m9joxafaIz/Pd/BQGmkkRycPBk0aPPsFjXDGCmeCXlT0zRJxUq5wkFOtvq4dTxSqmizS
 CuIJnOD9UIPz1Gai+o+lQ/VifF8Sfns660jOVm7VY2o5oxXs7kQkhvSy4OKsxG9+Y7go
 AQC4WB38vcTq3fE6mhTCswYeI0vZCKIPqetyZ9olT+/8LXe2OjgDtK08eh2H6AsgC4DS
 xZcWkTjIEOxFGxSV3dMDJou6bCaI3DQ025JCXM7HuTKlM072R/6+IYpzL9WN244xn1Me
 Y4hA==
X-Gm-Message-State: APjAAAXGisWmKPc7HaTaH11csuSaVunxZizdvkvnvnvlKKUr6urLsl6k
 Gi1ak2mgDKbWPBAhaJxcx4qxewLWts8hnyDXjc1G+g==
X-Google-Smtp-Source: APXvYqxLuK+tk1TmMr7huWaSeBHcuPvwZDHlC+v7aAdiCS+Ln9ItYZH+OVrYWBoU9fv7UXltSkHUBoW1rzRgdqcmi1Q=
X-Received: by 2002:a6b:7006:: with SMTP id l6mr17448031ioc.161.1557921428609; 
 Wed, 15 May 2019 04:57:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190502175253.22491-1-jeffery.to@gmail.com>
 <801aa3f3-8d5a-d70c-91d1-4e42d9fc2781@hauke-m.de>
In-Reply-To: <801aa3f3-8d5a-d70c-91d1-4e42d9fc2781@hauke-m.de>
From: Jeffery To <jeffery.to@gmail.com>
Date: Wed, 15 May 2019 19:56:56 +0800
Message-ID: <CAJXyS=hUTk+w4pieSKf-5sPbdZS3p6sg6WSB6k4ZqwEf1WQSeQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_045709_700316_72FFB094 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] build: include BUILD_VARIANT in
 PKG_BUILD_DIR
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0843058424751959342=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0843058424751959342==
Content-Type: multipart/alternative; boundary="000000000000571f160588ebd997"

--000000000000571f160588ebd997
Content-Type: text/plain; charset="UTF-8"

On Sun, May 12, 2019 at 3:15 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:

> On 5/2/19 7:52 PM, Jeffery To wrote:
> > This changes the default PKG_BUILD_DIR to take BUILD_VARIANT into
> > account (if set), so that packages do not need to manually override
> > PKG_BUILD_DIR just to handle variants.
> >
> > This also updates most base packages with variants to use the updated
> > default PKG_BUILD_DIR.
> >
> > Signed-off-by: Jeffery To <jeffery.to@gmail.com>
> > ---
> >  include/package.mk                        | 2 +-
> >  package/libs/ustream-ssl/Makefile         | 2 --
> >  package/network/services/hostapd/Makefile | 2 --
> >  package/network/services/odhcpd/Makefile  | 2 --
> >  package/network/services/openvpn/Makefile | 1 -
> >  package/network/services/ppp/Makefile     | 3 ++-
> >  package/network/utils/iproute2/Makefile   | 4 ++--
> >  package/network/utils/iw/Makefile         | 1 -
> >  package/network/utils/tcpdump/Makefile    | 1 -
> >  package/system/ucert/Makefile             | 2 --
> >  package/utils/px5g/Makefile               | 1 -
> >  11 files changed, 5 insertions(+), 16 deletions(-)
> >
> > diff --git a/include/package.mk b/include/package.mk
> > index 569ad647d6..015117bd3a 100644
> > --- a/include/package.mk
> > +++ b/include/package.mk
> > @@ -11,7 +11,7 @@ all: $(if $(DUMP),dumpinfo,$(if
> $(CHECK),check,compile))
> >
> >  include $(INCLUDE_DIR)/download.mk
> >
> > -PKG_BUILD_DIR ?= $(BUILD_DIR)/$(PKG_NAME)$(if
> $(PKG_VERSION),-$(PKG_VERSION))
> > +PKG_BUILD_DIR ?= $(BUILD_DIR)/$(if
> $(BUILD_VARIANT),$(PKG_NAME)-$(BUILD_VARIANT)/)$(PKG_NAME)$(if
> $(PKG_VERSION),-$(PKG_VERSION))
> >  PKG_INSTALL_DIR ?= $(PKG_BUILD_DIR)/ipkg-install
> >  PKG_BUILD_PARALLEL ?=
> >  PKG_USE_MIPS16 ?= 1
>
> Please also update the variable in include/kernel.mk then you should not
> need the workarounds for the packages which include include/kernel.mk
> and more.
>
> Hauke
>

I've updated include/kernel.mk and will submit a revised patch shortly, but
now iproute2 and ppp are built inside KERNEL_BUILD_DIR instead of
BUILD_DIR, not sure if this is an issue.

Jeff

--000000000000571f160588ebd997
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, May 12, 2019 at 3:15 AM Hauke Meh=
rtens &lt;<a href=3D"mailto:hauke@hauke-m.de">hauke@hauke-m.de</a>&gt; wrot=
e:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On 5/2/19 7:52 PM, Jeffery To wrote:<br>
&gt; This changes the default PKG_BUILD_DIR to take BUILD_VARIANT into<br>
&gt; account (if set), so that packages do not need to manually override<br=
>
&gt; PKG_BUILD_DIR just to handle variants.<br>
&gt; <br>
&gt; This also updates most base packages with variants to use the updated<=
br>
&gt; default PKG_BUILD_DIR.<br>
&gt; <br>
&gt; Signed-off-by: Jeffery To &lt;<a href=3D"mailto:jeffery.to@gmail.com" =
target=3D"_blank">jeffery.to@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 include/<a href=3D"http://package.mk" rel=3D"noreferrer" target=
=3D"_blank">package.mk</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
&gt;=C2=A0 package/libs/ustream-ssl/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 2 --<br>
&gt;=C2=A0 package/network/services/hostapd/Makefile | 2 --<br>
&gt;=C2=A0 package/network/services/odhcpd/Makefile=C2=A0 | 2 --<br>
&gt;=C2=A0 package/network/services/openvpn/Makefile | 1 -<br>
&gt;=C2=A0 package/network/services/ppp/Makefile=C2=A0 =C2=A0 =C2=A0| 3 ++-=
<br>
&gt;=C2=A0 package/network/utils/iproute2/Makefile=C2=A0 =C2=A0| 4 ++--<br>
&gt;=C2=A0 package/network/utils/iw/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 1 -<br>
&gt;=C2=A0 package/network/utils/tcpdump/Makefile=C2=A0 =C2=A0 | 1 -<br>
&gt;=C2=A0 package/system/ucert/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 2 --<br>
&gt;=C2=A0 package/utils/px5g/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 1 -<br>
&gt;=C2=A0 11 files changed, 5 insertions(+), 16 deletions(-)<br>
&gt; <br>
&gt; diff --git a/include/<a href=3D"http://package.mk" rel=3D"noreferrer" =
target=3D"_blank">package.mk</a> b/include/<a href=3D"http://package.mk" re=
l=3D"noreferrer" target=3D"_blank">package.mk</a><br>
&gt; index 569ad647d6..015117bd3a 100644<br>
&gt; --- a/include/<a href=3D"http://package.mk" rel=3D"noreferrer" target=
=3D"_blank">package.mk</a><br>
&gt; +++ b/include/<a href=3D"http://package.mk" rel=3D"noreferrer" target=
=3D"_blank">package.mk</a><br>
&gt; @@ -11,7 +11,7 @@ all: $(if $(DUMP),dumpinfo,$(if $(CHECK),check,compi=
le))<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 include $(INCLUDE_DIR)/<a href=3D"http://download.mk" rel=3D"nor=
eferrer" target=3D"_blank">download.mk</a><br>
&gt;=C2=A0 <br>
&gt; -PKG_BUILD_DIR ?=3D $(BUILD_DIR)/$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG=
_VERSION))<br>
&gt; +PKG_BUILD_DIR ?=3D $(BUILD_DIR)/$(if $(BUILD_VARIANT),$(PKG_NAME)-$(B=
UILD_VARIANT)/)$(PKG_NAME)$(if $(PKG_VERSION),-$(PKG_VERSION))<br>
&gt;=C2=A0 PKG_INSTALL_DIR ?=3D $(PKG_BUILD_DIR)/ipkg-install<br>
&gt;=C2=A0 PKG_BUILD_PARALLEL ?=3D<br>
&gt;=C2=A0 PKG_USE_MIPS16 ?=3D 1<br>
<br>
Please also update the variable in include/<a href=3D"http://kernel.mk" rel=
=3D"noreferrer" target=3D"_blank">kernel.mk</a> then you should not<br>
need the workarounds for the packages which include include/<a href=3D"http=
://kernel.mk" rel=3D"noreferrer" target=3D"_blank">kernel.mk</a><br>
and more.<br>
<br>
Hauke<br></blockquote><div><br></div><div>I&#39;ve updated include/<a href=
=3D"http://kernel.mk">kernel.mk</a> and will submit a revised patch shortly=
, but now iproute2 and ppp are built inside KERNEL_BUILD_DIR instead of BUI=
LD_DIR, not sure if this is an issue.</div><div><br></div><div>Jeff</div><d=
iv><br></div></div></div>

--000000000000571f160588ebd997--


--===============0843058424751959342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0843058424751959342==--

