Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20541F95C
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 19:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=33+0ACGKkowUcKJ0onIOYLZxDkPfnMJfv/WZ2D8iqgQ=; b=WY+vL1ZMcyPxNL+R7onmQls4F
	y2TlieASz/DXsk20VcqtTz8nC+LLi3jSHUwKAaCdIJgewQCnwPjxgsLJS2lbAJhilQuaXgXs+vRyy
	XJsosTon9H9XlJOlB2uOd9Ou1quScziUWqL6AQJgX+KqW3xwZVNfjGG3No1WKQV49TCWE90RTyMSZ
	7+iSech0v/Qgruw+crGtbC1vRH4MspnCZhqZc6BOxsaGIR699w8gTua2W5sbQVhbLU8voFZoy4Ylw
	tUGwkusUGTTTcQhn7b3su44f1YWvqKswa06okuKQhuolEJlPb38tLKGCwB+9Z5X/9s/+OGuZi7few
	z7vXG823A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxja-0000tX-Jt; Wed, 15 May 2019 17:30:30 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxjS-0000tB-Mz
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 17:30:24 +0000
Received: by mail-vs1-xe44.google.com with SMTP id z11so443129vsq.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 10:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FhmiDYA2hbzlMWkf1oa6qKk2bWmJToJ0gIvLu/etU/g=;
 b=K7Ce3Scq7KTRGa09iKU9nlwNnfeRVc7NL6tIQuI4XgvOurLd3mLA3GCepRMUH+nVol
 J2e2Re/zdcKz+mdqvHK139ueMGrNVFcyGBJNnchJITgGhh+bvIP7WMxuuF4EhoRi+cN/
 nUi19819CGzLWpog5XE/uhzd919Nac1jogHZQTB6TRKea412MO3IHXK3Xe3YPI6MZyic
 +nWjGHnO6aQspK+Ve0T7hsT6HT+z6TN9g+1APhwEBJUpejmYXxVfP7HXD10eb1nRNkpl
 UQn4D+ZHelYLwoRoFor7dOlpwwRfc4Y+611pO1bQKia1L6H++3UoQbFPRwsaGlBZX2v+
 TWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FhmiDYA2hbzlMWkf1oa6qKk2bWmJToJ0gIvLu/etU/g=;
 b=Sj4tK5mxoEnA0hpjdrfcju86YBmK1Oe68dKkxwPAKuaLvr1q31n7jlJJEjD0WLqBrz
 G9ApGW94ac+Q6fw+lg3fRw1B2l81FXWIBPVacK++PGyp03ESt+kY2Fih/Eu2w24lv8iB
 gMKma9koReW0xZraKMxBKnM+n9iPPvspGjnpBn5iI35kpJ+R2hGoTUT9pEumqtqVJTM5
 d7tY5nusfpXg2hyNex/gMrqNqRdWdecMLbZ3KRQxERd333hR0W3YeOD1nUBjx6JAGkYD
 YHKhzJeoynMUOxHkToQb33qQXXV7kiYDpERSXLtarXjRvgoZE8ItjwbP1XcvpcvfNxFt
 Vkuw==
X-Gm-Message-State: APjAAAXvqqRFqlekT5eHj2fxAnpvd4tHIw475oTA3nYr7l7mNVzm/aBi
 oXrEBnKyIYyKNIqIHdfyLiKW7l+7rsUSQJZKg2Y=
X-Google-Smtp-Source: APXvYqw0ZpvU5Q5oEXlk02lzEkYKPRGaZCXGreeOPnhTdt7t/P/h9O3d7LogshFXQr7BI2PdpqjBCWQGM/QsCSloNhA=
X-Received: by 2002:a67:ff08:: with SMTP id v8mr6895234vsp.81.1557941421098;
 Wed, 15 May 2019 10:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-3-be.dissent@gmail.com>
 <20190515155935.GB4938@meh.true.cz>
In-Reply-To: <20190515155935.GB4938@meh.true.cz>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Wed, 15 May 2019 20:30:09 +0300
Message-ID: <CAEdN=pG5p=i2wVQ0uWxELKLep+pd2=1f_T58iq7kTt=aRgZRfA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_103022_782146_3EF08EB1 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] ipq40xx: fix high resolution timer
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
Content-Type: multipart/mixed; boundary="===============2578673559818517778=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2578673559818517778==
Content-Type: multipart/alternative; boundary="000000000000fc4cb50588f08009"

--000000000000fc4cb50588f08009
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 18:59 Petr =C5=A0tetiar <=
ynezz@true.cz>:

> Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:19]:
>
> > diff --git
> a/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer=
.patch
> b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer=
.patch
> > new file mode 100644
> > index 0000000000..0fc50ec533
> > --- /dev/null
> > +++
> b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolution-timer=
.patch
> > @@ -0,0 +1,30 @@
> > +From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 2001
> > +From: Pavel Kubelun <be.dissent@gmail.com>
> > +Date: Tue, 7 May 2019 10:14:05 +0300
> > +Subject: [PATCH] ipq40xx: fix high resolution timer
> > +
> > +Cherry-picked from CAF QSDK repo.
>
> You should preserve the authorship of the changes if you do so. It looks
> now,
> like you're author of this work.
>

Sure, will fix this.


> > +The kernel is failing in switching the timer for high resolution
> > +mode and clock source operates in 10ms resolution. The always-on
> > +property needs to be given for timer device tree node to make
> > +clock source working in 1ns resolution.
>
> Shouldn't this go through upstream as well?
>

It should, but I'm not the author.


> > +     soc {
> > diff --git
> a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
> b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
> > index 0e1bb87368..b7e241058c 100644
> > ---
> a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
> > +++
> b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.patch
> > @@ -15,7 +15,7 @@ so the info might change.
> >
> >  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> >  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > -@@ -566,6 +566,34 @@
> > +@@ -567,6 +567,34 @@
> >                       status =3D "disabled";
> >               };
>
> Probably some leftover?
>

It's a refresh of existing patches, because they are applied to the same
file.


> > diff --git
> a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> > index 03da6c863a..cc56a60ea3 100644
> > ---
> a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> > +++
> b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> > @@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.co=
m
> >
> >
> >  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> >  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > -@@ -594,6 +594,29 @@
> > +@@ -595,6 +595,29 @@
> >                       };
> >               };
>
> Ditto.
>
> > diff --git
> a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> > index 7302d237bc..80b16a8211 100644
> > ---
> a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> > +++
> b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> > @@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.co=
m
> >
> >       };
> >
> >       cpus {
> > -@@ -617,6 +619,64 @@
> > +@@ -618,6 +620,64 @@
> >                       status =3D "disabled";
> >               };
>
> Ditto.
>
> > diff --git
> a/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer=
.patch
> b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer=
.patch
> > new file mode 100644
> > index 0000000000..9d277fa8e0
> > --- /dev/null
> > +++
> b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolution-timer=
.patch
> > @@ -0,0 +1,30 @@
> > +From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 2001
> > +From: Pavel Kubelun <be.dissent@gmail.com>
> > +Date: Tue, 7 May 2019 10:14:05 +0300
> > +Subject: [PATCH] ipq40xx: fix high resolution timer
> > +
> > +Cherry-picked from CAF QSDK repo.
> > +Original commit message:
> > +The kernel is failing in switching the timer for high resolution
> > +mode and clock source operates in 10ms resolution. The always-on
> > +property needs to be given for timer device tree node to make
> > +clock source working in 1ns resolution.
>
> Same as above.
>
> > diff --git
> a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
> b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
> > index e5936a0c93..0298644d22 100644
> > ---
> a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
> > +++
> b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.patch
> > @@ -15,7 +15,7 @@ so the info might change.
> >
> >  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> >  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > -@@ -570,6 +570,34 @@
> > +@@ -571,6 +571,34 @@
> >                       status =3D "disabled";
> >               };
>
> Ditto.
>
> > diff --git
> a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> > index 7c5d1ec2bb..df95699294 100644
> > ---
> a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> > +++
> b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch-nodes.=
patch
> > @@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.co=
m
> >
> >
> >  --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> >  +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > -@@ -598,6 +598,29 @@
> > +@@ -599,6 +599,29 @@
> >                       };
> >               };
>
> Ditto.
>
> > diff --git
> a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> > index 51cf411143..8f7627b048 100644
> > ---
> a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> > +++
> b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-essedma-=
node.patch
> > @@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter <chunkeey@gmail.co=
m
> >
> >       };
> >
> >       cpus {
> > -@@ -621,6 +623,64 @@
> > +@@ -622,6 +624,64 @@
> >                       status =3D "disabled";
> >               };
>
> Ditto.
>

--000000000000fc4cb50588f08009
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 18:5=
9 Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&=
gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Pavel Kubelun &lt;<a href=3D"m=
ailto:be.dissent@gmail.com" target=3D"_blank" rel=3D"noreferrer">be.dissent=
@gmail.com</a>&gt; [2019-05-14 16:42:19]:<br>
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-re=
solution-timer.patch b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-hi=
gh-resolution-timer.patch<br>
&gt; new file mode 100644<br>
&gt; index 0000000000..0fc50ec533<br>
&gt; --- /dev/null<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.14/090-ipq40xx-fix-high-resolutio=
n-timer.patch<br>
&gt; @@ -0,0 +1,30 @@<br>
&gt; +From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 200=
1<br>
&gt; +From: Pavel Kubelun &lt;<a href=3D"mailto:be.dissent@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">be.dissent@gmail.com</a>&gt;<br>
&gt; +Date: Tue, 7 May 2019 10:14:05 +0300<br>
&gt; +Subject: [PATCH] ipq40xx: fix high resolution timer<br>
&gt; +<br>
&gt; +Cherry-picked from CAF QSDK repo.<br>
<br>
You should preserve the authorship of the changes if you do so. It looks no=
w,<br>
like you&#39;re author of this work.<br></blockquote></div></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Sure, will fix this.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
<br>
&gt; +The kernel is failing in switching the timer for high resolution<br>
&gt; +mode and clock source operates in 10ms resolution. The always-on<br>
&gt; +property needs to be given for timer device tree node to make<br>
&gt; +clock source working in 1ns resolution.<br>
<br>
Shouldn&#39;t this go through upstream as well?<br></blockquote></div></div=
><div dir=3D"auto"><br></div><div dir=3D"auto">It should, but I&#39;m not t=
he author.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0soc {<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdi=
o-node.patch b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-n=
ode.patch<br>
&gt; index 0e1bb87368..b7e241058c 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.=
patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.14/701-dts-ipq4019-add-mdio-node.=
patch<br>
&gt; @@ -15,7 +15,7 @@ so the info might change.<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt;=C2=A0 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; -@@ -566,6 +566,34 @@<br>
&gt; +@@ -567,6 +567,34 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0status =3D &quot;disabled&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
Probably some leftover?<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto"><span style=3D"font-family:sans-serif">It&#39;s a re=
fresh of existing patches, because they are applied to the same file.</span=
><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY=
-switch-nodes.patch b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add=
-PHY-switch-nodes.patch<br>
&gt; index 03da6c863a..cc56a60ea3 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch=
-nodes.patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.14/702-dts-ipq4019-add-PHY-switch=
-nodes.patch<br>
&gt; @@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter &lt;<a href=3D"ma=
ilto:chunkeey@gmail.com" target=3D"_blank" rel=3D"noreferrer">chunkeey@gmai=
l.com</a>&gt;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt;=C2=A0 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; -@@ -594,6 +594,29 @@<br>
&gt; +@@ -595,6 +595,29 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0};<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
Ditto.<br>
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-eth=
ernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.14/711-dts-ipq401=
9-add-ethernet-essedma-node.patch<br>
&gt; index 7302d237bc..80b16a8211 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-e=
ssedma-node.patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.14/711-dts-ipq4019-add-ethernet-e=
ssedma-node.patch<br>
&gt; @@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter &lt;<a href=3D"ma=
ilto:chunkeey@gmail.com" target=3D"_blank" rel=3D"noreferrer">chunkeey@gmai=
l.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cpus {<br>
&gt; -@@ -617,6 +619,64 @@<br>
&gt; +@@ -618,6 +620,64 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0status =3D &quot;disabled&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
Ditto.<br>
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-re=
solution-timer.patch b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-hi=
gh-resolution-timer.patch<br>
&gt; new file mode 100644<br>
&gt; index 0000000000..9d277fa8e0<br>
&gt; --- /dev/null<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.19/086-ipq40xx-fix-high-resolutio=
n-timer.patch<br>
&gt; @@ -0,0 +1,30 @@<br>
&gt; +From 09f145f417a5d64d6b8d4476699dfb0eccc6c784 Mon Sep 17 00:00:00 200=
1<br>
&gt; +From: Pavel Kubelun &lt;<a href=3D"mailto:be.dissent@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">be.dissent@gmail.com</a>&gt;<br>
&gt; +Date: Tue, 7 May 2019 10:14:05 +0300<br>
&gt; +Subject: [PATCH] ipq40xx: fix high resolution timer<br>
&gt; +<br>
&gt; +Cherry-picked from CAF QSDK repo.<br>
&gt; +Original commit message:<br>
&gt; +The kernel is failing in switching the timer for high resolution<br>
&gt; +mode and clock source operates in 10ms resolution. The always-on<br>
&gt; +property needs to be given for timer device tree node to make<br>
&gt; +clock source working in 1ns resolution.<br>
<br>
Same as above.<br>
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdi=
o-node.patch b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-n=
ode.patch<br>
&gt; index e5936a0c93..0298644d22 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.=
patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.19/701-dts-ipq4019-add-mdio-node.=
patch<br>
&gt; @@ -15,7 +15,7 @@ so the info might change.<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt;=C2=A0 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; -@@ -570,6 +570,34 @@<br>
&gt; +@@ -571,6 +571,34 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0status =3D &quot;disabled&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
Ditto.<br>
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY=
-switch-nodes.patch b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add=
-PHY-switch-nodes.patch<br>
&gt; index 7c5d1ec2bb..df95699294 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch=
-nodes.patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.19/702-dts-ipq4019-add-PHY-switch=
-nodes.patch<br>
&gt; @@ -14,7 +14,7 @@ Signed-off-by: Christian Lamparter &lt;<a href=3D"ma=
ilto:chunkeey@gmail.com" target=3D"_blank" rel=3D"noreferrer">chunkeey@gmai=
l.com</a>&gt;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt;=C2=A0 +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; -@@ -598,6 +598,29 @@<br>
&gt; +@@ -599,6 +599,29 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0};<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
Ditto.<br>
<br>
&gt; diff --git a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-eth=
ernet-essedma-node.patch b/target/linux/ipq40xx/patches-4.19/711-dts-ipq401=
9-add-ethernet-essedma-node.patch<br>
&gt; index 51cf411143..8f7627b048 100644<br>
&gt; --- a/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-e=
ssedma-node.patch<br>
&gt; +++ b/target/linux/ipq40xx/patches-4.19/711-dts-ipq4019-add-ethernet-e=
ssedma-node.patch<br>
&gt; @@ -25,7 +25,7 @@ Signed-off-by: Christian Lamparter &lt;<a href=3D"ma=
ilto:chunkeey@gmail.com" target=3D"_blank" rel=3D"noreferrer">chunkeey@gmai=
l.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cpus {<br>
&gt; -@@ -621,6 +623,64 @@<br>
&gt; +@@ -622,6 +624,64 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0status =3D &quot;disabled&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
Ditto.<br>
</blockquote></div></div></div>

--000000000000fc4cb50588f08009--


--===============2578673559818517778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2578673559818517778==--

