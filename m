Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C2811A8A1
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 11:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dR4JYI34Yy3KjTEv+97QkDxIFivAkUIlwDI8ciIoqYU=; b=mHRPkvpPc/jwYxEEHUiEqDcUj
	e6WGynbR832VjS0FYaH7wGLBvXiCXwnIqkO81CDVbpKiohZvMmco7N3xXO+f9lTqQsI1uZYB5AAoD
	HnvYRkMyL36yr0KxSBR3CQyMd+L2Tohqp0cgMoe1o9ypJrTtMTG0Xb+MQVbJ2oWVHwSm8ltRWBIUP
	UrXxuKysoDiZrL+xyMQUOlaIXL7kHI6itUTUg7Hx2EzRQGfzn0R1WE+55F//m51hP9jc5SObLqOE/
	5H3VBCoz+39afCc+nZKj2zIZYTkdyd7zy5/xZH8jCvgzbzdGphDfXKHRbjz+U4aGiK/hfK6vNFQnC
	3EyjoXRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyws-0000RI-BI; Wed, 11 Dec 2019 10:10:26 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieywj-0000PR-NJ
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 10:10:19 +0000
Received: by mail-ua1-x943.google.com with SMTP id f9so8227657ual.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 02:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j8ETR0OoWOnCjuXKg4dscLLhUISVrsJobH/ItXRrmac=;
 b=ixR0PeFKysrkwfbMm+aLP5uQl75v1wA0e9dhpGFVoDeQ5JdIOdvVIDPFHFf2gf1yQu
 HdpoxNxQYlduYk4CdhlN8iibvs8cMTFNsAvHPyNdEDWmdcEvfQ6UaiVNzcLvKxOEXIw/
 fT5iUu3YI9lhSIdf1/ctUf0w8EhO454wNVmIxN55QnxQV1bcSd0zIkdeoS8EZUM3NGoZ
 Jhvg01Pc+3KaROD+3/3r3idpLr8T2r3nODY0rzfgr8vw9LtCJgoQRILLSjHAgCFXLutq
 gfGPxIz2h0ghv3jQhbFdjCpHyyq7VB0D8ls3QHKI2+6Fi/3M1evFVZXYPzChvcAE+B6/
 vAnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j8ETR0OoWOnCjuXKg4dscLLhUISVrsJobH/ItXRrmac=;
 b=j8YXW5lO4eT60zNRgF3LZwc0xFcRGlRV0LvhXwtmDKYPvFMr1P6/5i+tF+2GTShik/
 +5IzhbQ8IEbo7YhF+yt5m/pdTfTVtvA7CndFy0rFcBrcGp986u5Nf8f+YMSu8p/klwXp
 jIiTxrzrPoRYwmo/8LRIgk0pfH7h0062mkWTBCQ3Yv+lYYLhm4F9FO5bgkzaPiAeTZ44
 M4ry2xU1FrRPRrOZjJ0ptS0lGFhNPdWvZHACyHtZvg8oWSJtKZ34yiyfYEoUszSdgE58
 xUINcxWsfsbVF1va1vviRzgXR6VQvLyi9PFeYvd8Jr5ZVJJJy4NEAiUCnDB93G/rbA3Q
 obwQ==
X-Gm-Message-State: APjAAAWFdn+fE6ozyxnm+Vqd/kG/H30gPOBxmJfLE2UjIRrCTottSf3D
 wvLb8FQad8ox1VWSQaQqpzfZ7AmHzIpQuCHjGjeylA==
X-Google-Smtp-Source: APXvYqzPAJsauf2U2kX+HrKCvf/hDZDvjujRZtVktw3Kk+aTLjw+CoNwrVowV02n8EQ9nRSAVGi+orqbowxee+S1zqM=
X-Received: by 2002:ab0:6494:: with SMTP id p20mr2082412uam.38.1576059015829; 
 Wed, 11 Dec 2019 02:10:15 -0800 (PST)
MIME-Version: 1.0
References: <20191117014442.1427795-1-chunkeey@gmail.com>
 <32e80bbe-3365-c1ef-0358-ac0a4e60fd6c@hauke-m.de>
 <2725101.T8L288SS5r@debian64>
In-Reply-To: <2725101.T8L288SS5r@debian64>
From: Russell Senior <russell@personaltelco.net>
Date: Wed, 11 Dec 2019 02:10:04 -0800
Message-ID: <CAHP3WfOOHbn6tMoSTvYsfJ9CRYGrPYtLcnjXKjqEPAPWUQ6nww@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_021017_836140_3604AFF1 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] mac80211: switch to upstream owl-loader
 driver
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4317726629986990712=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4317726629986990712==
Content-Type: multipart/alternative; boundary="000000000000c8af7305996ad5dd"

--000000000000c8af7305996ad5dd
Content-Type: text/plain; charset="UTF-8"

This commit broke wifi on the Buffalo WZR600DHP.  See:
https://bugs.openwrt.org/index.php?do=details&task_id=2668

On Fri, Nov 22, 2019 at 12:00 PM Christian Lamparter <chunkeey@gmail.com>
wrote:

> On Monday, 18 November 2019 00:34:01 CET Hauke Mehrtens wrote:
> > > +--- a/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
> > > ++++ b/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
> > > +@@ -84,6 +84,10 @@
> > > +                   val = swahb32(val);
> > > +           }
> > > +
> > > ++#ifdef CONFIG_LANTIQ
> > > ++          val = swab32(val);
> > > ++#endif
> >
> > Lantiq is big endian, are there other big endian system which do not
> > need this byte swap?
>
> From what I vaguely remember (I know that Mathias explained it to me
> once.),
> that special hack was necessary due to Lantiq's pci(e?)-host silicon doing
> byteswaps just for 32-bit writes. The only other system that uses the
> owl-loader
> is ath79/ar71xx. This is a big-endian MIPS as well that didn't need the
> swap.
>
> (That said, I don't remember what was the reason for going with
> __raw_writel
> rather than "iowrite32" though. At least ath9k is using it for the pci
> access
> just fine everywhere.)
>
> Anyone fancy checking out lantiq and ath79 devices with a AR92XX without
> the
> swap above and the __raw_writel replaced by iowrite32?
>
> > > ++
> > > +           __raw_writel(val, mem + reg);
> > > +           usleep_range(100, 120);
> > > +   }
>
> Regards,
> Christian
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000c8af7305996ad5dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This commit broke wifi on the Buffalo WZR600DHP.=C2=A0 See=
: <a href=3D"https://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D=
2668">https://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2668</a=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Nov 22, 2019 at 12:00 PM Christian Lamparter &lt;<a href=3D"mailto=
:chunkeey@gmail.com">chunkeey@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">On Monday, 18 November 2019 00:34:01=
 CET Hauke Mehrtens wrote:<br>
&gt; &gt; +--- a/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c<br>
&gt; &gt; ++++ b/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c<br>
&gt; &gt; +@@ -84,6 +84,10 @@<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0val =3D swahb32(val);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; + <br>
&gt; &gt; ++#ifdef CONFIG_LANTIQ<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D swab32(val);<br>
&gt; &gt; ++#endif<br>
&gt; <br>
&gt; Lantiq is big endian, are there other big endian system which do not<b=
r>
&gt; need this byte swap?<br>
<br>
From what I vaguely remember (I know that Mathias explained it to me once.)=
,<br>
that special hack was necessary due to Lantiq&#39;s pci(e?)-host silicon do=
ing<br>
byteswaps just for 32-bit writes. The only other system that uses the owl-l=
oader<br>
is ath79/ar71xx. This is a big-endian MIPS as well that didn&#39;t need the=
 swap.<br>
<br>
(That said, I don&#39;t remember what was the reason for going with __raw_w=
ritel<br>
rather than &quot;iowrite32&quot; though. At least ath9k is using it for th=
e pci access<br>
just fine everywhere.)<br>
<br>
Anyone fancy checking out lantiq and ath79 devices with a AR92XX without th=
e<br>
swap above and the __raw_writel replaced by iowrite32?<br>
<br>
&gt; &gt; ++<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__raw_writel(val, mem +=
 reg);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range(100, 120);=
<br>
&gt; &gt; +=C2=A0 =C2=A0} <br>
<br>
Regards,<br>
Christian<br>
<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000c8af7305996ad5dd--


--===============4317726629986990712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4317726629986990712==--

