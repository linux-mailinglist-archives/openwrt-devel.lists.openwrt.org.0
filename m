Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB7961D5C
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 13:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9huU/oYkWCGlOUlvkQ+QFswQbpcNYT4VNkNjjO6jPc0=; b=DTkxuf25Un5YcJ+DOOe8EQkpO
	HvD5vl0qxfZwMMprvGwCC4eaF/+LSWKG6Y39/JTEbAhl7ANZy8fJDjSfAnXmOQCgsHEi8TgxzAESs
	u/peMjk/zcLgLrPVyTQQfYl7Fw4yrAO7xQftFupcVLknyGN2UYPgLVYeTP/XsVPni/TdpjezsIQ4j
	Qn3UqWXZqxHgbbZfQHA51eRo6k3n0vZReNJtOR83jnpmlW7X6bflnp6kUIoznwReEx5FJwkmb8mZ4
	QC6lw/9SxU3avndtwh4LEgiK5Eb0rTBkePTW+V/RcmtikXuWzd16Q3RrXWZqVv2J6lfxUDKT3P5u0
	xckiSinfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkRNl-0008IV-Ty; Mon, 08 Jul 2019 11:00:30 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkRNI-0007le-Q8
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 11:00:02 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m23so7896854vso.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jul 2019 03:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rKwn4/5OceMiBy+/aepXhOdREN80h+0byFex/xEIB4k=;
 b=pMNcUfny3sJi0AMYOV87wRn1ffBRLPKUmRDXAqCDer1fjkLMcK+9NhA4fCn8qjrB0J
 BDkzBjPfS05D8RsaJtVphhAyyXLSjAZiudqz7yfKb7ilqpW8H9ks+s8ETBnQn7Mgxivp
 1fSer7jhN519YvBKZz8q2kBV25R1ddspUhVhU2u3JboS207Z+LMChiJ/W89I0rQNC8pM
 F2pbLC6U+GBDxLrT5EBvZVJr59gSwTPw/ZwecovDS8DF04uPC2IyM9vTbZMDLy3u5Udf
 wBMGHUpnr0m2UwUYujDPk1Ym4FFIYzn2cLf9njHjnS8C/KQCWwGG2yWabvsDJDa8tFNS
 xPNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rKwn4/5OceMiBy+/aepXhOdREN80h+0byFex/xEIB4k=;
 b=NNLSKCn8riprMQ2UOERSLgOiS01f56nSNfHd203eQVeBexQdU/oys5r6FMxiWGzh+c
 zw12ji6L1judvSjxxJcRlOIx8juDYhXz6cQ04OdkiobDgR+VMzL3XLlHKgABDB4TuM1E
 CVt0h3URoNkLVbYzDXlsKXl9UXXfOGNSjkd6YH746dgO+N8LFjyXfoLn9/I92DGli8n9
 aEtuO0S0di5x/AIklGvSaVaoVLSdPIPLOJu7pK1Jhk/IlBh/DSwlJGiphkVjOMOGo3ye
 qyJMY2AsThrmrRySz4Fn/jgZn8I4iKAbqDtSR0bByRuE4PUtRotY3Mamm+fZXxQIgVPf
 pkjQ==
X-Gm-Message-State: APjAAAXhaKm0iGOrr0nhBXoMy1ZvFNgbDx3RZcjQbIfUIsREc4NmufQw
 0iAb4fLIHcDLybDyIIFVz5PzbAJS0sYEJZEw88tpCg==
X-Google-Smtp-Source: APXvYqyXEkPfaM26sAW13bgBWzRU//59kEXQuJFcj0yU9fHYf0kUgMnnZsr5wAv3PiudWuHsshIxRJ42H+V5PZdi11c=
X-Received: by 2002:a67:8907:: with SMTP id l7mr9537117vsd.194.1562583598114; 
 Mon, 08 Jul 2019 03:59:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <2125930.tk2zk5hxM4@bentobox>
 <CAEdN=pFJ_AoNftsHySvZU6Vsf+L8tP7gccfABms-X6GMz0TFoA@mail.gmail.com>
 <5064672.lGSt0B6DOn@bentobox>
 <CAEdN=pHZ14ja2Gpiart6wwCrTfcvG3+iE=2ptcpOcsXvS-KxYA@mail.gmail.com>
In-Reply-To: <CAEdN=pHZ14ja2Gpiart6wwCrTfcvG3+iE=2ptcpOcsXvS-KxYA@mail.gmail.com>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Mon, 8 Jul 2019 13:59:44 +0300
Message-ID: <CAEdN=pEa5g9_FrLE2KZ-Gdxbf6HW1ysqF-vM9CJxYoRe1Nc2mg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_040000_876177_6E3A8660 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ipq40xx: fix sleep clock
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, sven@narfation.org,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============1190798857164114496=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1190798857164114496==
Content-Type: multipart/alternative; boundary="0000000000004c2ea7058d295898"

--0000000000004c2ea7058d295898
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey,
I believe this patch can be merged as is. According to Sricharan R. [1]:
"It is [sleep clk] derived from a 48M wifi refclk

48M wifi ref clk -> [/2 divider] -> [/750 divider] -> sleep_clk (32000)"


[1] https://patchwork.kernel.org/comment/22721613/

=D0=BF=D1=82, 17 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 11:16 =D0=9F=D0=B0=D0=B2=
=D0=B5=D0=BB <be.dissent@gmail.com>:

>
>
> =D1=87=D1=82, 16 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 15:22 Sven Eckelmann <s=
ven@narfation.org>:
>
>> On Tuesday, 14 May 2019 15:42:18 CEST Pavel Kubelun wrote:
>> > +--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
>> > ++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
>> > +@@ -141,9 +141,9 @@
>> > +       };
>> > +
>> > +       clocks {
>> > +-              sleep_clk: sleep_clk {
>> > ++              sleep_clk: gcc_sleep_clk_src {
>> > +                       compatible =3D "fixed-clock";
>> > +-                      clock-frequency =3D <32768>;
>> > ++                      clock-frequency =3D <32000>;
>> > +                       #clock-cells =3D <0>;
>> > +               };
>>
>> On Thursday, 16 May 2019 13:18:14 CEST =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB wr=
ote:
>> [...]
>> > > And maybe some of these guys also know how to find the ipq40xx clock
>> > > controller reference or hardware reference. Because I was only able =
to
>> > > verify
>> > > for IPQ8072 that it had a 32.768 KHz sleep clock. But the
>> > >
>> >
>> > If you are completely sure about that, then I guess that they have
>> > (un)intentionally messed with the clock in QSDK, because they state th=
at
>> > ipq807x has the same 32000 khz crystal.
>> >
>> https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/tree/arch/a=
rm64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=3Deggplant#n2055
>>
>> Confidence is the wrong word. I can only state that this is written in
>> 80-YA727-13 Rev. D (IPQ8072.AP.HK07). Same for other devices like
>> IPQ8078 AP.HK02, IPQ8074 AP.HK01, ...
>>
>> But I found in the same document that they call it the "32 KHz sleep
>> clock in"
>> in one section and and in another table "32.768 KHz sleep clock input to
>> the
>> IPQ8072" (next to the name "...32K..."). So it is now to the reader to
>> find
>> out what they meant here in which reference document. So maybe they also
>> meant
>> 32.768 KHz when in the IPQ4019 Watchdog document when they wrote 32 Khz
>> sleep
>> clock... who knows.
>>
>
> Okay, here what I've found in oem firmware (Zyxel nbg6617)
>
> There are 2 clocks related to timer in oem firmware:
> 1. gcc_sleep_clk_src - 32.000
>  ^---USB3 sleep clock
>  ^---USB2 sleep clock
> 2. wifi_rtc_clk_src - 32.768
>  ^---wcnssN sleep clock
>  ^---wcnssN sleep clock
>
> In upstream we don't have wifi_rtc clk and all mentioned childs are
> connected to sleep clk.
>
> So sleep clock at 32000 rate looks like some kind of a workaround and not
> to break wifi they introduced a separate clock for that, the one that
> really represents the hardware.
>
> I'll drop the sleep clock rate change in the next version of patchset
> since we don't need that kind of workaround for now.
>
>
>> My gut feeling (sorry, not an HW guy) tell me that they are just using a
>> 32.768 KHz clock (from a standard 32.768 KHz oscillator) in all these
>> products
>> and just shortened it to 32K at some point in the document. And now
>> Gopinath
>> Sekar wrote 32000 instead of 32768. But I absolutely don't know what
>> actually
>> is there in HW.
>>
>> Kind regards,
>>         Sven
>>
>> [1]
>> https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/commit/?id=
=3Dd92ec59973484acc86dd24b67f10f8911b4b4b7d
>
>

--0000000000004c2ea7058d295898
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto">Hey,</div><div dir=3D=
"auto">I believe this patch can be merged as is. According to Sricharan R. =
[1]:</div><div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size=
:12.8px">&quot;</span><span style=3D"font-family:sans-serif;font-size:12.8p=
x">It is [sleep clk] derived from a 48M wifi refclk</span><br style=3D"font=
-family:sans-serif;font-size:12.8px"><br style=3D"font-family:sans-serif;fo=
nt-size:12.8px"><span style=3D"font-family:sans-serif;font-size:12.8px">48M=
 wifi ref clk -&gt; [/2 divider] -&gt; [/750 divider] -&gt; sleep_clk (3200=
0)&quot;</span></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">[1] <a href=3D"https://patchwork.kernel.org/comme=
nt/22721613/">https://patchwork.kernel.org/comment/22721613/</a><br></div><=
div dir=3D"auto"><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">=D0=BF=D1=82, 17 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 11:16 =
=D0=9F=D0=B0=D0=B2=D0=B5=D0=BB &lt;<a href=3D"mailto:be.dissent@gmail.com" =
rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">be.dissent@gmail=
.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><di=
v><br></div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><=
div dir=3D"ltr" class=3D"gmail_attr">=D1=87=D1=82, 16 =D0=BC=D0=B0=D1=8F 20=
19 =D0=B3., 15:22 Sven Eckelmann &lt;<a href=3D"mailto:sven@narfation.org" =
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">sven@=
narfation.org</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tuesday, =
14 May 2019 15:42:18 CEST Pavel Kubelun wrote:<br>
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
el=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noreferrer" ta=
rget=3D"_blank">https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-ms=
m/tree/arch/arm64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=3Deggplant#n2055</a=
><br>
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
oreferrer noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">ht=
tps://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/commit/?id=3Dd92=
ec59973484acc86dd24b67f10f8911b4b4b7d</a></blockquote></div></div></div>
</blockquote></div></div>

--0000000000004c2ea7058d295898--


--===============1190798857164114496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1190798857164114496==--

