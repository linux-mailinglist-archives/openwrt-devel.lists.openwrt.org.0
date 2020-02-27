Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98E31718A0
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 14:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Y5+SVYdpocOKNMJx6AgmJPG49KIezhtc3dWgVXUvjA=; b=uzrC4D8+avYlRlzOLtvU0jb5q
	o1Y/lPmOWrY0uwSw6EL1l5pDY6oPaS+9LJUsO5Z1FViapBjBwLBLRnxCNIaqEF6MBm0bqllOlF9e8
	WhVnBmEe1evBKZ57gxOKBsxO3P/FnDWUF/MOqPLnYZEKRFZFG68oF0hOkovT1aECdXLnNqcbtif4R
	X79IYwwBddnatcbYo++3Ptz1L+ZNoA62WpN7cBt3M9ABnsKFqpog0UO2JVCD1/0nuviyf9TCvx/gB
	ng2x59StzqmJSy9y6VBMiOVKCRfJZyXcUQ6Y+UyOiOIXTwupR0Itijol/Gj1m31RBWY2Clr07gPiZ
	F17dgTVkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JCH-00034d-TV; Thu, 27 Feb 2020 13:27:25 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JCB-00034K-9t
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 13:27:21 +0000
Received: by mail-vk1-xa41.google.com with SMTP id o2so393874vka.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 27 Feb 2020 05:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1v6Oxjto/jpRxn2IQbJsH80HdMGsLqmg0pNd4ogD+4s=;
 b=YwDWhaUccboDDVd7EqYpXoHnb+Ivlph7TJ0SES9ILhJRey5m1/Ch7qKm+/keY14HEt
 47eCGD8NzJUVys/3TTsQ3IAyBwbDd9orkAOcLg46Pqa5wRwOMkmHNqjjNTUPjqw7MGEx
 DUWKqlrwFI2Y/Ot95UUGW5wnIL8wSv7Wu6gL+et1ABiuffwzJ22diuF52N1hJgRgBeeG
 DDwwB6BD3oo3r1Y5TEV04RHJzJMmlG4jLYg06A4vG+wVagN/9lBWnD/sY+K8VXcQXGBk
 ZAhIAKndio+j6ya7uELGi3dbQ7qXss4jpp/hcFIt1r9hQdP08FBrAnTkU86fXcHeNG38
 YvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1v6Oxjto/jpRxn2IQbJsH80HdMGsLqmg0pNd4ogD+4s=;
 b=t6ebCt+eHUGnSJJvoW3lZsFUS9urhHL5H2LQ1C/NabC4OZWWnxtYRxR/PQRXFSD0ZZ
 dl49AHn//riCDK18O8vBcEIezBU0RPke3qHSMrNn8XL4s4qLl9WWDr8Cv6QDJl9KDSrG
 jTQC5StEQWOqHl1pS0e8az+aS9cX0iCKBvNH5e/nYo5JmyYjk2p7GSlF4imsGrGX2W4u
 nJgjNI3ByyTvmeqZyDt+8TDaKp924ScPeLL842+JdxVcTl5zJZGtDDvQ/W5yBTE/jtwm
 gNo4FhQoMuN+geov1Ww2IYvE+SkHk11XD2Ww1BHeAzwZCgN0K6raGcirl4Sl+r3sg92B
 vYsg==
X-Gm-Message-State: APjAAAUvosrgsvYIhXIIzh5e84F/DZU23C5k1LyKcM3/RkTAIqt+DxIc
 SV9tuNvguQO7tTXXRb7UYyPr4dXYAMhaJwO1edK+aA==
X-Google-Smtp-Source: APXvYqy0RW2DhrzDmGeVbfbIER4bN407/0314+77UAbFqbQ88F1pqoovaUlwQLZ5+6gab0F03YYRkDfQ40x2bSbjasc=
X-Received: by 2002:a1f:938a:: with SMTP id v132mr2437838vkd.99.1582810037102; 
 Thu, 27 Feb 2020 05:27:17 -0800 (PST)
MIME-Version: 1.0
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <000701d5eca7$6ae4f0e0$40aed2a0$@adrianschmutzler.de>
 <CAHP3WfN9-r86VfqQ1VWjGywnxuO2EoPWD54PweaqDvbAT6r3Qw@mail.gmail.com>
 <00a901d5ed61$beb98ea0$3c2cabe0$@adrianschmutzler.de>
 <CAHP3WfN1CEBj66nxrv2hYWB4B9t+dTePNr4cTg27q5t6dcLWYQ@mail.gmail.com>
 <00bc01d5ed70$210651c0$6312f540$@adrianschmutzler.de>
In-Reply-To: <00bc01d5ed70$210651c0$6312f540$@adrianschmutzler.de>
From: Russell Senior <russell@personaltelco.net>
Date: Thu, 27 Feb 2020 05:27:05 -0800
Message-ID: <CAHP3WfP1XYjq=KaPNhHNKm6EnkAEEuigyHB5L1XYroG0DXfb4w@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_052719_417081_0177E6F5 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH RFC] ath79: add support for the ar7240
 version of the ubiquiti bullet
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4313845814581871306=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4313845814581871306==
Content-Type: multipart/alternative; boundary="00000000000002402f059f8eaedd"

--00000000000002402f059f8eaedd
Content-Type: text/plain; charset="UTF-8"

Sorry for the accidental sidetrack to private mail. Returning the thread to
the mailing list.

On Thu, Feb 27, 2020 at 5:16 AM Adrian Schmutzler <mail@adrianschmutzler.de>
wrote:

> Hi,
> > What happens if you flash the "wrong" image? Do you see any chance to
> have one of the images as "default" without suffix or would this make
> things worse?
> >
> > Currently only the ar7241 is supported in ath79. If you flash an ar7241
> image on an ar7240 device, the wireless works but the ethernet does not. I
> have not tried the other way around, but I'd expect the same thing. I >
> don't actually have ready access to an ar7241-based ubnt-bullet-m to try an
> ar7240 image on to confirm that expectation.
>
> I have a Picostation M2HP (XM) where I could technically try an ar7240
> bullet-m image. However, I do not think we will learn much from that, as
> essentially the difference between ar7240.dtsi and ar7241.dtsi are a few
> compatibles and that mdio1 is used instead of mdio0, so I'd expect similar
> results to what you described for the opposite case.
> My main reason for the question was damage assessment, but with Wifi
> disabled by default and Ethernet broken one would still need TFTP for
> recovery as this sounds to me.
>
> I also briefly considered providing a mixed ar7240/ar7241 support as for
> ar71xx, but I quickly quit on that as it's hard to achieve and terribly
> ugly.
>
> So, I still do not have a better idea than the different names/variants at
> the moment.
>

Yeah. I am not seeing a particularly better path either, although I dislike
the duplication of the dtsi's.


>
> Best
>
> Adrian
>
>

--00000000000002402f059f8eaedd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry for the accidental sidetrack to private mail. R=
eturning the thread to the mailing list.<br></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 27, 2020 at 5:16 AM=
 Adrian Schmutzler &lt;<a href=3D"mailto:mail@adrianschmutzler.de">mail@adr=
ianschmutzler.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
&gt; What happens if you flash the &quot;wrong&quot; image? Do you see any =
chance to have one of the images as &quot;default&quot; without suffix or w=
ould this make things worse? <br>
&gt; <br>
&gt; Currently only the ar7241 is supported in ath79. If you flash an ar724=
1 image on an ar7240 device, the wireless works but the ethernet does not. =
I have not tried the other way around, but I&#39;d expect the same thing. I=
 &gt; don&#39;t actually have ready access to an ar7241-based ubnt-bullet-m=
 to try an ar7240 image on to confirm that expectation.<br>
<br>
I have a Picostation M2HP (XM) where I could technically try an ar7240 bull=
et-m image. However, I do not think we will learn much from that, as essent=
ially the difference between ar7240.dtsi and ar7241.dtsi are a few compatib=
les and that mdio1 is used instead of mdio0, so I&#39;d expect similar resu=
lts to what you described for the opposite case.<br>
My main reason for the question was damage assessment, but with Wifi disabl=
ed by default and Ethernet broken one would still need TFTP for recovery as=
 this sounds to me.<br>
<br>
I also briefly considered providing a mixed ar7240/ar7241 support as for ar=
71xx, but I quickly quit on that as it&#39;s hard to achieve and terribly u=
gly.<br>
<br>
So, I still do not have a better idea than the different names/variants at =
the moment.<br></blockquote><div><br></div><div>Yeah. I am not seeing a par=
ticularly better path either, although I dislike the duplication of the dts=
i&#39;s.<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
Best<br>
<br>
Adrian <br>
<br>
</blockquote></div></div>

--00000000000002402f059f8eaedd--


--===============4313845814581871306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4313845814581871306==--

