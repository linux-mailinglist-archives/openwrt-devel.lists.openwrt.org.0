Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BD21F955
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 19:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lvBxiLOvs9cDvRvnG5Bb0LRn4FU0l5nIY8dkvUGUYE=; b=OSEX7+gqbQ7x0WF8Jms65PBqm
	6kmEBqEYKXfcUA0MgkwNJDXvJEFpGLkypwOX6yKyAqTSVNZv8puYYVjoO0cCypkrng23Hv25+dLmE
	ELIcODHMuQacLtnydHmsZdhL9xB77fwBmXrvWNOQknz4UsiIJcTrVinNHfzGsWPmfQ7gIgqPWJY73
	ypyIAeE25xVytBuQ5SaDKeZuFDEtSR3MjDJdeN9t0xwRaKE3T4JXuiuAZEjBDZxwX5Xqwvf0M4jWF
	SRbybhlxGJ3n9hVZhGGW1GDwyjPIEOhFqpZPSbr05c3yrPuBIRZx8MizbZvC+UqSztSWRvDumkYpz
	hbqlRv06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxhY-0007pr-A0; Wed, 15 May 2019 17:28:24 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxhR-0007pG-14
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 17:28:18 +0000
Received: by mail-vs1-xe43.google.com with SMTP id j184so431904vsd.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 10:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kFxN0yfMOMzL48x5Maa9TpXzFzanC7OwrDrKiUxfHFE=;
 b=WQHggAuYL6+gc9mq1bEs7ODsz2QuuW9udwpi3pWsjZxfhpy2Cu81OauiXjxLB+VDkw
 1ovXmsS+oka0o1hhq0UofytcvSzHWxK371k9d4rlUuHcCb2rDcwGtg+4LQRZA+sINYet
 gD8mSGn4bTfgkEqUEUqK9de+mS8Os4jG8DInv7wI53vs/83gUi0C62mdoHHBRd5eYM2v
 Zi2lwRz3mr1qty8qaRJHpUpQPJ5ylI7BMOKXymTpche1b76cyQ0Oal2i6VDZiLozT+0k
 OZsR/QWgLBQTOmNi2BeTTc+UsY6atgBZRfq0HdLj1aSBJQligYVwALo3aI+P45S/MDTK
 WCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kFxN0yfMOMzL48x5Maa9TpXzFzanC7OwrDrKiUxfHFE=;
 b=rK4WdS7CcWp0b3pwhA3gQqhaq49x9nq+K/pbAvCvygxt5uJs9ldRq9VCHPixfMJcGk
 MPCOASI7Wn+3Erh7O0L7E41dpE6LBxqz2bcYh+CGJr5ESpo9HeXk9hsLXyiDELySXlQb
 JiVpUz+GIYi1olpzfSZYfcq6feqAZK5hCcnLRBKPnCLmD5K/yc05VWeayMCRdlPCmY97
 vivRcvQRIbpsYB4PPEURLGgWeW2YnPAmDfY0BXKWJTAtWGYLVnR1waAVS1pAyUTQ7DWA
 9CPlUeryAfEbjEFzfBEj57b3xsb2tzbYhWuG16jaVtAZD7UMZ+slAzwd96tmFPJ4Nd32
 Rg+A==
X-Gm-Message-State: APjAAAVoscAVXhFWFHSntBizNqJmdq39uspZt+xCGAmcbbHM1INUicg0
 HfW1cL1TpTIQGJvOy2nm0RBDRVMX48+6AOqZg88=
X-Google-Smtp-Source: APXvYqwTGWTd7ZcVT0tMod+LDlhu1d9oPEJ+r3Es6ovuyhLEt9xc1k/JBQfPFRadgRBOEa3Fxr6gCjj2achuzTZBAxA=
X-Received: by 2002:a67:e8c8:: with SMTP id y8mr10262509vsn.124.1557941295736; 
 Wed, 15 May 2019 10:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190515161108.GA17661@meh.true.cz>
In-Reply-To: <20190515161108.GA17661@meh.true.cz>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Wed, 15 May 2019 20:28:04 +0300
Message-ID: <CAEdN=pEUmss2g-OFS9_rSWKGoggQOEQY5110p=9BDC6V_ZS8Sg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_102817_074628_11254417 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] ipq40xx: directly define voltage
 per opp
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
Content-Type: multipart/mixed; boundary="===============5493673655000699525=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5493673655000699525==
Content-Type: multipart/alternative; boundary="000000000000836da10588f07969"

--000000000000836da10588f07969
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 19:11 Petr =C5=A0tetiar <=
ynezz@true.cz>:

> Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:17]:
>
> > diff --git
> a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2=
-reg-value.patch
> b/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2=
-reg-value.patch
> > index d72e3d3c36..ac128ab9e1 100644
> > ---
> a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2=
-reg-value.patch
> > +++
> b/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qcom-saw2=
-reg-value.patch
> > @@ -22,7 +22,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
> >
> >  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> >  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > -@@ -262,7 +262,7 @@
> > +@@ -266,7 +266,7 @@
> >
> >                   saw0: regulator@b089000 {
> >                           compatible =3D "qcom,saw2";
>
> Some leftover?
>

It's a refresh of existing patches, because they are applied to the same
file.


> > diff --git
> a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-n=
odes.patch
> b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-n=
odes.patch
> > index 44c07f8f45..be413188a7 100644
> > ---
> a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-n=
odes.patch
> > +++
> b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devicetree-n=
odes.patch
> > @@ -41,7 +41,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
> >   };
> >  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> >  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > -@@ -410,5 +410,79 @@
> > +@@ -414,5 +414,79 @@
> >                                         "legacy";
> >                       status =3D "disabled";
> >               };
>
> Ditto.
>

--000000000000836da10588f07969
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 19:1=
1 Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&=
gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Pavel Kubelun &lt;<a href=3D"m=
ailto:be.dissent@gmail.com" target=3D"_blank" rel=3D"noreferrer">be.dissent=
@gmail.com</a>&gt; [2019-05-14 16:42:17]:<br>
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cp=
u0-s-qcom-saw2-reg-value.patch b/target/linux/ipq40xx/patches-4.14/073-qcom=
-ipq4019-fix-cpu0-s-qcom-saw2-reg-value.patch<br>
&gt; index d72e3d3c36..ac128ab9e1 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qc=
om-saw2-reg-value.patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.14/073-qcom-ipq4019-fix-cpu0-s-qc=
om-saw2-reg-value.patch<br>
&gt; @@ -22,7 +22,7 @@ Signed-off-by: John Crispin &lt;<a href=3D"mailto:jo=
hn@phrozen.org" target=3D"_blank" rel=3D"noreferrer">john@phrozen.org</a>&g=
t;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt;=C2=A0 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; -@@ -262,7 +262,7 @@<br>
&gt; +@@ -266,7 +266,7 @@<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sa=
w0: regulator@b089000 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;qcom,saw2&quot;;<br>
<br>
Some leftover?<br></blockquote></div></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">It&#39;s a refresh of existing patches, because they are appl=
ied to the same file.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-US=
B-devicetree-nodes.patch b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq40=
19-add-USB-devicetree-nodes.patch<br>
&gt; index 44c07f8f45..be413188a7 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devic=
etree-nodes.patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.14/077-qcom-ipq4019-add-USB-devic=
etree-nodes.patch<br>
&gt; @@ -41,7 +41,7 @@ Signed-off-by: John Crispin &lt;<a href=3D"mailto:jo=
hn@phrozen.org" target=3D"_blank" rel=3D"noreferrer">john@phrozen.org</a>&g=
t;<br>
&gt;=C2=A0 =C2=A0};<br>
&gt;=C2=A0 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt;=C2=A0 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; -@@ -410,5 +410,79 @@<br>
&gt; +@@ -414,5 +414,79 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;legacy&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0status =3D &quot;disabled&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
Ditto.<br>
</blockquote></div></div></div>

--000000000000836da10588f07969--


--===============5493673655000699525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5493673655000699525==--

