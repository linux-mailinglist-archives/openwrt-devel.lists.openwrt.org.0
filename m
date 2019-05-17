Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B3E21531
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 10:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mHNJUr2hgMs1pobEHYuQO3TvuzLRlrfhCtoXn6o9rdI=; b=YqKLvwm0blRNa1paUkkk1TeoT
	SNHlh+KzLuKavpeZNAgI3GDQ0/2bL1Q21slSMbWBOUDejQnqZ+Dqa3LR+DEb1zeciN/KpkeKlF16W
	LkOWkNBEgr5kiVBISZXh9WGT5C50mFy56XZyKnxqNWMANmH4YXYOyM/PqnZmxGpb9jWd38EwvHKu6
	9Wa6oJItu84Klw4CZm0EF+ZFQmIwyWuTj/rt0KParTO9Usg2AcTHoALkGQwGMZLoc5EOKzQoN8sq8
	CtMiPd+tv8WLE9MlIdOcyuouv4m1N+6U9C8OfEBvx6F+jCAQzkcyKCplvM9jtZDvQxgcvuTlZGhXb
	pUOgv/KZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRY3C-00060N-Fn; Fri, 17 May 2019 08:17:10 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRY35-0005zp-8I
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 08:17:05 +0000
Received: by mail-vs1-xe42.google.com with SMTP id l20so4095605vsp.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 01:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cxtktBn+cx4i7sDM2xLwXnHj7iUwcExDm+iBNp3y6xs=;
 b=en3s9+WT4fe/J3/xIdVj+jhM/LHYIrpF1Mr/NcLz0gW5d2c5cUoAaN/irgDfFQlq2I
 EhpaV5kQeixOmNumq68XhFVaLJSaiWtNjp4Wytp4qb4OuFjdvNA8UNFC0nY0BmGjFDj1
 /SkbmVaUGZt5dzDvSr+hi6mihOkhLIqSCNsJ7HjdR75v7zvs7NayMyZcySNE+BWaR4pt
 KCo/8Pv+ReDgl3vrju2NOLTmOsEscD+0uo6k1lG7zqqXJPf4dZe7oXBEyptiIL3vR8S2
 TDNifpjVFzywdWcuNb3c3geFJfH7kSNoQ2OWYlpupI566hVLxpMUaxO7GYoof6xwVtGd
 YLdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cxtktBn+cx4i7sDM2xLwXnHj7iUwcExDm+iBNp3y6xs=;
 b=DMoT3bFUUkk84eLIb5+phFx8cIyk/sJauUGGTQWUdXkyFoGG64a3EQ6rcg60lZngqA
 e7Abjj4GJO6p98nwODZjeDUbDmkvRB8i/JV4PaRuWh56id/dt5IBnIDa7VvwjfGrfvOa
 tiIZhYZtslmDCUaHjD3Xc4HTehGVVy3s5RHLHuP2qC8XSj5Xop4Y7bRy9ZZJFEwFaLP0
 z0IrZ1hatU/7/Z0K0l1UXBmK5Z4eovewu2Eg0IqjaTqRB5CNkowwGrQO20DbAfdonOJ1
 8T7xM7+4KByS6sh+w7Xzy6/MJon1vHm/0xIVwJBFom9McpJVlBGFLYIsnQut17Nbou3x
 jg6g==
X-Gm-Message-State: APjAAAXJF8jj+ryaAXH7S3ztxRWNlfljehmIkeBtYlUN5svNiXPAHnp1
 58whTEnNYgXU1qEVIK0ggW2wp4wNY8/4h5iT6Go=
X-Google-Smtp-Source: APXvYqygjlLHcib9qu5JZLvlgGXGrTJqeMnQ3aMGZjW8rjGhIeWhRLjYU43Tb0/WBTyR/U2gYHschE3QUoDd/qRZyOY=
X-Received: by 2002:a67:ea98:: with SMTP id f24mr18682139vso.128.1558081021464; 
 Fri, 17 May 2019 01:17:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <2125930.tk2zk5hxM4@bentobox>
 <CAEdN=pFJ_AoNftsHySvZU6Vsf+L8tP7gccfABms-X6GMz0TFoA@mail.gmail.com>
 <5064672.lGSt0B6DOn@bentobox>
In-Reply-To: <5064672.lGSt0B6DOn@bentobox>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Fri, 17 May 2019 11:16:49 +0300
Message-ID: <CAEdN=pHZ14ja2Gpiart6wwCrTfcvG3+iE=2ptcpOcsXvS-KxYA@mail.gmail.com>
To: Sven Eckelmann <sven@narfation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_011703_323500_B976040A 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ipq40xx: fix sleep clock
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
Cc: Christian Lamparter <chunkeey@gmail.com>, linux-arm-msm@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Gopinath Sekar <gsekar@codeaurora.org>,
 Andy Gross <agross@kernel.org>, =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Varadarajan Narayanan <varada@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============0991802585046575313=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0991802585046575313==
Content-Type: multipart/alternative; boundary="000000000000d0d7950589110136"

--000000000000d0d7950589110136
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=87=D1=82, 16 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 15:22 Sven Eckelmann <sve=
n@narfation.org>:

> On Tuesday, 14 May 2019 15:42:18 CEST Pavel Kubelun wrote:
> > +--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > ++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> > +@@ -141,9 +141,9 @@
> > +       };
> > +
> > +       clocks {
> > +-              sleep_clk: sleep_clk {
> > ++              sleep_clk: gcc_sleep_clk_src {
> > +                       compatible =3D "fixed-clock";
> > +-                      clock-frequency =3D <32768>;
> > ++                      clock-frequency =3D <32000>;
> > +                       #clock-cells =3D <0>;
> > +               };
>
> On Thursday, 16 May 2019 13:18:14 CEST =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB wro=
te:
> [...]
> > > And maybe some of these guys also know how to find the ipq40xx clock
> > > controller reference or hardware reference. Because I was only able t=
o
> > > verify
> > > for IPQ8072 that it had a 32.768 KHz sleep clock. But the
> > >
> >
> > If you are completely sure about that, then I guess that they have
> > (un)intentionally messed with the clock in QSDK, because they state tha=
t
> > ipq807x has the same 32000 khz crystal.
> >
> https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/tree/arch/ar=
m64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=3Deggplant#n2055
>
> Confidence is the wrong word. I can only state that this is written in
> 80-YA727-13 Rev. D (IPQ8072.AP.HK07). Same for other devices like
> IPQ8078 AP.HK02, IPQ8074 AP.HK01, ...
>
> But I found in the same document that they call it the "32 KHz sleep cloc=
k
> in"
> in one section and and in another table "32.768 KHz sleep clock input to
> the
> IPQ8072" (next to the name "...32K..."). So it is now to the reader to
> find
> out what they meant here in which reference document. So maybe they also
> meant
> 32.768 KHz when in the IPQ4019 Watchdog document when they wrote 32 Khz
> sleep
> clock... who knows.
>

Okay, here what I've found in oem firmware (Zyxel nbg6617)

There are 2 clocks related to timer in oem firmware:
1. gcc_sleep_clk_src - 32.000
 ^---USB3 sleep clock
 ^---USB2 sleep clock
2. wifi_rtc_clk_src - 32.768
 ^---wcnssN sleep clock
 ^---wcnssN sleep clock

In upstream we don't have wifi_rtc clk and all mentioned childs are
connected to sleep clk.

So sleep clock at 32000 rate looks like some kind of a workaround and not
to break wifi they introduced a separate clock for that, the one that
really represents the hardware.

I'll drop the sleep clock rate change in the next version of patchset since
we don't need that kind of workaround for now.


> My gut feeling (sorry, not an HW guy) tell me that they are just using a
> 32.768 KHz clock (from a standard 32.768 KHz oscillator) in all these
> products
> and just shortened it to 32K at some point in the document. And now
> Gopinath
> Sekar wrote 32000 instead of 32768. But I absolutely don't know what
> actually
> is there in HW.
>
> Kind regards,
>         Sven
>
> [1]
> https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/commit/?id=
=3Dd92ec59973484acc86dd24b67f10f8911b4b4b7d

--000000000000d0d7950589110136
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br></div><div dir=3D"auto"><br><div class=3D"gmail_=
quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">=D1=87=D1=82, 16 =
=D0=BC=D0=B0=D1=8F 2019 =D0=B3., 15:22 Sven Eckelmann &lt;<a href=3D"mailto=
:sven@narfation.org">sven@narfation.org</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Tuesday, 14 May 2019 15:42:18 CEST Pavel Kubelun wrote:<br=
>
&gt; +--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; ++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi<br>
&gt; +@@ -141,9 +141,9 @@<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt; + <br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0clocks {<br>
&gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sleep_clk: sleep_cl=
k {<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sleep_clk: gcc_slee=
p_clk_src {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0compatible =3D &quot;fixed-clock&quot;;<br>
&gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clock-frequency =3D &lt;32768&gt;;<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clock-frequency =3D &lt;32000&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0#clock-cells =3D &lt;0&gt;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
<br>
On Thursday, 16 May 2019 13:18:14 CEST =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB wrote=
:<br>
[...]<br>
&gt; &gt; And maybe some of these guys also know how to find the ipq40xx cl=
ock<br>
&gt; &gt; controller reference or hardware reference. Because I was only ab=
le to<br>
&gt; &gt; verify<br>
&gt; &gt; for IPQ8072 that it had a 32.768 KHz sleep clock. But the<br>
&gt; &gt;<br>
&gt; <br>
&gt; If you are completely sure about that, then I guess that they have<br>
&gt; (un)intentionally messed with the clock in QSDK, because they state th=
at<br>
&gt; ipq807x has the same 32000 khz crystal.<br>
&gt; <a href=3D"https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-ms=
m/tree/arch/arm64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=3Deggplant#n2055" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://source.codeaurora.or=
g/quic/qsdk/oss/kernel/linux-msm/tree/arch/arm64/boot/dts/qcom/qcom-ipq807x=
-soc.dtsi?h=3Deggplant#n2055</a><br>
<br>
Confidence is the wrong word. I can only state that this is written in <br>
80-YA727-13 Rev. D (IPQ8072.AP.HK07). Same for other devices like <br>
IPQ8078 AP.HK02, IPQ8074 AP.HK01, ...<br>
<br>
But I found in the same document that they call it the &quot;32 KHz sleep c=
lock in&quot; <br>
in one section and and in another table &quot;32.768 KHz sleep clock input =
to the <br>
IPQ8072&quot; (next to the name &quot;...32K...&quot;). So it is now to the=
 reader to find <br>
out what they meant here in which reference document. So maybe they also me=
ant <br>
32.768 KHz when in the IPQ4019 Watchdog document when they wrote 32 Khz sle=
ep <br>
clock... who knows.<br></blockquote></div></div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><div style=3D"font-family:sans-serif" dir=3D"auto">Okay,=
 here what I&#39;ve found in oem firmware (Zyxel nbg6617)</div><div dir=3D"=
auto" style=3D"font-family:sans-serif"><br></div><div dir=3D"auto" style=3D=
"font-family:sans-serif">There are 2 clocks related to timer in oem firmwar=
e:</div><div dir=3D"auto" style=3D"font-family:sans-serif">1. gcc_sleep_clk=
_src - 32.000</div><div dir=3D"auto" style=3D"font-family:sans-serif">=C2=
=A0^---USB3 sleep clock</div><div dir=3D"auto" style=3D"font-family:sans-se=
rif">=C2=A0^---USB2 sleep clock</div><div dir=3D"auto" style=3D"font-family=
:sans-serif">2. wifi_rtc_clk_src - 32.768</div><div dir=3D"auto" style=3D"f=
ont-family:sans-serif">=C2=A0^---wcnssN sleep clock<br></div><div dir=3D"au=
to" style=3D"font-family:sans-serif">=C2=A0^---wcnssN sleep clock<br></div>=
<div dir=3D"auto" style=3D"font-family:sans-serif"><br></div><div dir=3D"au=
to" style=3D"font-family:sans-serif">In upstream we don&#39;t have wifi_rtc=
 clk and all mentioned childs are connected to sleep clk.</div><div dir=3D"=
auto" style=3D"font-family:sans-serif"><br></div><div dir=3D"auto" style=3D=
"font-family:sans-serif">So sleep clock at 32000 rate looks like some kind =
of a workaround and not to break wifi they introduced a separate clock for =
that, the one that really represents the hardware.</div><div dir=3D"auto" s=
tyle=3D"font-family:sans-serif"><br></div><div dir=3D"auto" style=3D"font-f=
amily:sans-serif">I&#39;ll drop the sleep clock rate change in the next ver=
sion of patchset since we don&#39;t need that kind of workaround for now.</=
div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
<br>
My gut feeling (sorry, not an HW guy) tell me that they are just using a <b=
r>
32.768 KHz clock (from a standard 32.768 KHz oscillator) in all these produ=
cts <br>
and just shortened it to 32K at some point in the document. And now Gopinat=
h <br>
Sekar wrote 32000 instead of 32768. But I absolutely don&#39;t know what ac=
tually <br>
is there in HW.<br>
<br>
Kind regards,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sven<br>
<br>
[1] <a href=3D"https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm=
/commit/?id=3Dd92ec59973484acc86dd24b67f10f8911b4b4b7d" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">https://source.codeaurora.org/quic/qsdk/oss/ke=
rnel/linux-msm/commit/?id=3Dd92ec59973484acc86dd24b67f10f8911b4b4b7d</a></b=
lockquote></div></div></div>

--000000000000d0d7950589110136--


--===============0991802585046575313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0991802585046575313==--

