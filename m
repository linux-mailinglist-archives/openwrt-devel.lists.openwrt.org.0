Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447F52046A
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 13:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ow9xOzwPH9gdsUb2+U50+RyyPr2w5O+oowA87hBTb04=; b=swfd/l54a+MrnSozdYf2DoSyN
	BPp34Zk9Cn9jU3OiwS0GWGmkTq2n41qbTCxWLdXrFIw5ikKuUn555ydyqRNoX21v2iFfT4YkqXqV7
	BoDc9AVllDUCcHuk5c4UEz4wjKuqA9stZLOwYYYgQktB7MoVWU9P1GsGZ+rqNcrX23nKP2QdiKNFV
	UrMif9Roio/Mh5DDi2ef1C3FYuj2b7VdSpi4ei8I776zAtooZ8yEDPpMxNWMX82oztnOVolh+lgfH
	RbMOYs7PsUxP441B8jBDJTAGOrEbkZ12EuK8kXRHVzovX04+/yyJdMy61UoefZ5l9SXN69tN+IC9N
	vrl+PCDJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREPD-0000Ne-DQ; Thu, 16 May 2019 11:18:35 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREP6-0000NE-Cx
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 11:18:30 +0000
Received: by mail-vs1-xe41.google.com with SMTP id o10so2022009vsp.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 04:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hw1WgnSGRcHBBmJzBbAB94rY1f6gERgP2oia3H/JHuo=;
 b=Z4I3Iwpyo8+4XIyGsEfEtMQ6Imhxa9DAnJ6NbzKGI1ykYJAnlP3Zjgvl3hioPIqEOm
 Ig5yRd2x1/C9ickaraQe4vPqUS2qktmgWPXDYARxN0URUiU+i+ZmYs+2/TQFXly7SumB
 0hkQGfQt1RL5ZOnXWsWnTlF7Fh1zqSlFOvz4aVRwIqU6tGBJpfASFrtPz6Dp17czyfrv
 W2vLmi5pCmby7yMOVGgEpLu3qKX5acpaNICSflKYwXTupkCCwW69pYlxAGw+8yKlUhE6
 M4v4ypra9DoIRgNu/vp8eYy8Y6rb8vR3OpYxAyxnZWGjE1+L5qDHfPqOaEdPkwsjW/Nj
 CtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hw1WgnSGRcHBBmJzBbAB94rY1f6gERgP2oia3H/JHuo=;
 b=InCLS5SESLciZgjHdwZaZ0ultTjX2v/fZVdRG3Ap1sCEVzVM8dxlISSBjbQpNM/xnz
 TXU5VrmV/gafAZnuNx0akuw8ar8RXKOm/5Eu+hPxA1K5tiqit9neidq4r20QI+64rXC9
 Rei+VDqMKytsEQ1Lwj0TFm3liSGgy66qNs+ZIP2zjgiJirCT4OAiIk1HO1Y4pAhFYeLz
 inFGRnn/5pYtsF15E/IkovUrH93xHhcAnZYWP25RxskDCiF+s8yLa/QRUwC+rgP5w5yI
 EZ3Xysf3IeZLqJi1m+nQWJcbM7Wy3gEZ3ZjB1Lrs7tZ9SpBpxr4SDl8gwjmI23ITus5g
 HSlg==
X-Gm-Message-State: APjAAAUOoQpjq5O9RJaZuqFXeyMoCN8N2k97I5CQ1f7ofl48fKkOO2OQ
 aYHLVW2q+nkv26irT2DIDL0xTfbSy2Ktet9ofmo=
X-Google-Smtp-Source: APXvYqwi5beDfyP1oVbYTNaWlttxwC+8KRE5NFUthDDXy2mHT3bk9XEhIhtNZQxos1YUWS6F7zdwLFzObBl+V4/pVYM=
X-Received: by 2002:a67:ff08:: with SMTP id v8mr9119229vsp.81.1558005506945;
 Thu, 16 May 2019 04:18:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190515155529.GA4938@meh.true.cz>
 <CAEdN=pF=kv5T=Fkui9f2fehsCB6wy1hHiyzZ=kqhOANJG002-A@mail.gmail.com>
 <2125930.tk2zk5hxM4@bentobox>
In-Reply-To: <2125930.tk2zk5hxM4@bentobox>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Thu, 16 May 2019 14:18:14 +0300
Message-ID: <CAEdN=pFJ_AoNftsHySvZU6Vsf+L8tP7gccfABms-X6GMz0TFoA@mail.gmail.com>
To: Sven Eckelmann <sven@narfation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_041828_438442_8E170AD3 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============5842112785546578143=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5842112785546578143==
Content-Type: multipart/alternative; boundary="000000000000ccb7570588ff6c46"

--000000000000ccb7570588ff6c46
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=87=D1=82, 16 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 13:05 Sven Eckelmann <sve=
n@narfation.org>:

> On Wednesday, 15 May 2019 19:16:51 CEST =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB wr=
ote:
> [...]
> > > Is there any particular reason why
> > > this
> > > shouldn't be sent upstream and then backported to OpenWrt?
> > >
> >
> > There are no reasons why it shouldn't be sent upstream along with other
> > patches. I hope to find someone with datasheet beforehand to verify the
> > correct sleep clock rate.
>
> But you will most likely find the persons with the datasheet when you try
> to
> upstream it via
>
> * Andy Gross <agross@kernel.org> (maintainer:ARM/QUALCOMM SUPPORT)
> * David Brown <david.brown@linaro.org> (maintainer:ARM/QUALCOMM SUPPORT)
> * linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM SUPPORT)
>
> And maybe some of these guys also know how to find the ipq40xx clock
> controller reference or hardware reference. Because I was only able to
> verify
> for IPQ8072 that it had a 32.768 KHz sleep clock. But the
>

If you are completely sure about that, then I guess that they have
(un)intentionally messed with the clock in QSDK, because they state that
ipq807x has the same 32000 khz crystal.
https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/tree/arch/arm6=
4/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=3Deggplant#n2055

Furthermore, it has been upstreamed...

So I'm confused actually what path to choose now. Probably it depends on
your level of confidence that ipq8072 definitely has a 32.768 khz rate - it
will mean that qsdk is not trustworthy on this matter.


"IPQ4018/IPQ4028/IPQ4019/IPQ4029 Watchdog" document states that the
> watchdog
> runs on a 32 KHz sleep clock. And according to the device tree, the clock
> you
> modified here is connected to the watchdog.
>
> And for the device tree bindings:
>
> * devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
> DEVICE TREE BINDINGS)
> * Rob Herring <robh+dt@kernel.org> (maintainer:OPEN FIRMWARE AND
> FLATTENED DEVICE TREE BINDINGS)
> * Mark Rutland <mark.rutland@arm.com> (maintainer:OPEN FIRMWARE AND
> FLATTENED DEVICE TREE BINDINGS)
>
> > Besides upstreaming a patch takes time while the next openwrt release
> > should be out soon I suppose.
>
> Good reason to try to upstream it at the same time to OpenWrt and upstrea=
m
> :)
> At least then we could get some feedback from upstream before OpenWrt
> ships
> something which potentially has negative effects.
>
> Kind regards,
>         Sven

--000000000000ccb7570588ff6c46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D1=87=D1=82, 16 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 13:0=
5 Sven Eckelmann &lt;<a href=3D"mailto:sven@narfation.org">sven@narfation.o=
rg</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wednesday, 15 May 20=
19 19:16:51 CEST =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB wrote:<br>
[...]<br>
&gt; &gt; Is there any particular reason why<br>
&gt; &gt; this<br>
&gt; &gt; shouldn&#39;t be sent upstream and then backported to OpenWrt?<br=
>
&gt; &gt;<br>
&gt; <br>
&gt; There are no reasons why it shouldn&#39;t be sent upstream along with =
other<br>
&gt; patches. I hope to find someone with datasheet beforehand to verify th=
e<br>
&gt; correct sleep clock rate.<br>
<br>
But you will most likely find the persons with the datasheet when you try t=
o <br>
upstream it via <br>
<br>
* Andy Gross &lt;<a href=3D"mailto:agross@kernel.org" target=3D"_blank" rel=
=3D"noreferrer">agross@kernel.org</a>&gt; (maintainer:ARM/QUALCOMM SUPPORT)=
<br>
* David Brown &lt;<a href=3D"mailto:david.brown@linaro.org" target=3D"_blan=
k" rel=3D"noreferrer">david.brown@linaro.org</a>&gt; (maintainer:ARM/QUALCO=
MM SUPPORT)<br>
* <a href=3D"mailto:linux-arm-msm@vger.kernel.org" target=3D"_blank" rel=3D=
"noreferrer">linux-arm-msm@vger.kernel.org</a> (open list:ARM/QUALCOMM SUPP=
ORT)<br>
<br>
And maybe some of these guys also know how to find the ipq40xx clock <br>
controller reference or hardware reference. Because I was only able to veri=
fy <br>
for IPQ8072 that it had a 32.768 KHz sleep clock. But the <br></blockquote>=
</div></div><div dir=3D"auto"><br></div><div dir=3D"auto">If you are comple=
tely sure about that, then I guess that they have (un)intentionally messed =
with the clock in QSDK, because they state that ipq807x has the same 32000 =
khz crystal.=C2=A0</div><div dir=3D"auto"><a href=3D"https://source.codeaur=
ora.org/quic/qsdk/oss/kernel/linux-msm/tree/arch/arm64/boot/dts/qcom/qcom-i=
pq807x-soc.dtsi?h=3Deggplant#n2055">https://source.codeaurora.org/quic/qsdk=
/oss/kernel/linux-msm/tree/arch/arm64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=
=3Deggplant#n2055</a><br></div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Furthermore, it has been upstreamed...</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">So I&#39;m confused actually what path to choose now. Prob=
ably it depends on your level of confidence that ipq8072 definitely has a 3=
2.768 khz rate - it will mean that qsdk is not trustworthy on this matter.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&quot;IPQ4018/IPQ4028/IPQ4019/IPQ4029 Watchdog&quot; document states that t=
he watchdog <br>
runs on a 32 KHz sleep clock. And according to the device tree, the clock y=
ou <br>
modified here is connected to the watchdog.<br>
<br>
And for the device tree bindings:<br>
<br>
* <a href=3D"mailto:devicetree@vger.kernel.org" target=3D"_blank" rel=3D"no=
referrer">devicetree@vger.kernel.org</a> (open list:OPEN FIRMWARE AND FLATT=
ENED DEVICE TREE BINDINGS)<br>
* Rob Herring &lt;<a href=3D"mailto:robh%2Bdt@kernel.org" target=3D"_blank"=
 rel=3D"noreferrer">robh+dt@kernel.org</a>&gt; (maintainer:OPEN FIRMWARE AN=
D FLATTENED DEVICE TREE BINDINGS)<br>
* Mark Rutland &lt;<a href=3D"mailto:mark.rutland@arm.com" target=3D"_blank=
" rel=3D"noreferrer">mark.rutland@arm.com</a>&gt; (maintainer:OPEN FIRMWARE=
 AND FLATTENED DEVICE TREE BINDINGS)<br>
<br>
&gt; Besides upstreaming a patch takes time while the next openwrt release<=
br>
&gt; should be out soon I suppose.<br>
<br>
Good reason to try to upstream it at the same time to OpenWrt and upstream =
:)<br>
At least then we could get some feedback from upstream before OpenWrt ships=
 <br>
something which potentially has negative effects.<br>
<br>
Kind regards,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sven</blockquote></div></div></div>

--000000000000ccb7570588ff6c46--


--===============5842112785546578143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5842112785546578143==--

