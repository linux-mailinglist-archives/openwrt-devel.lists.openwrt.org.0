Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D401D1C45
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 19:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GlM34Swt7opQoPvIBlTrlpCXjTYAn2JyrRTzXh/o+Q4=; b=TPOJRfH58TDXQIoJz7BDqKf1p
	Qi9T+wGsBzigg0AlxzA79w37mjNUJ97yMVAfmbNEtsfTWjfNFh1Y/bxJ1r+OaSknqdcMrW09521Kd
	9kOBzUJRcX9C6MR17dwibtSEoFetgUsA/xqwlYh5ssQFS+zolNSeYTy5E81T4TkRI+xPjp792aqN7
	u+ZqBqqDx6VBN2NMPkO2vQeL9AYclj2/8mb0MBSHyuDVI1eDWmAZZ/QjgJuKPOBZMaQHK1+6ddeHD
	1piAG5Wl8epYiDST+kasBL+XEo+C+ymCk/GqOnZw+4OeB2lT7HQkZHyOty0NQbJGvZZSeSxZk+Xyp
	p8eRfaRuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvCP-0005pC-9K; Wed, 13 May 2020 17:29:41 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvCE-0005oB-Ql
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 17:29:32 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 188so178544lfa.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 10:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=am2wGwuoVTCMsUXJgmjp4OtBz6N543Ud3p1ilriuXDg=;
 b=gLBjDm/Xy9asDQBF7QdqGyvtCEu3WU16HvtPQIenlH27rSgBq7rEiGy06BW+MBqDDm
 a0XMM49VWn5KR9rBAnnH4ZJ3wgQwyEOf6qkMwMI+/yqeV0J1zvh7cHtpH5evueuNTM6u
 q0v7xEwxSHIsj/exVboIi5PS/ZCfnKDAiTaRz2bChgUB7aknmIEZX4MoXVLTZOH0NxFT
 nMZoWXAoB5VhQAcY0xoSQTf1ct91xaYZi0S42SCZK//MELQsSSnchh8xKOWxZZ765mUz
 /Up1DkUk2BVYlK+++l4WrVzDJdWJD91YMsUr8Lv1pMbAzHuc3ogxOSOvMb5KxTwrxH8u
 VS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=am2wGwuoVTCMsUXJgmjp4OtBz6N543Ud3p1ilriuXDg=;
 b=RFBP90p9TVyT8pmzfe5AaklJ+9ihds2orB3zXCa/Ir60rsynvMgDXDLp6rCRvxAv+3
 5nbfrSQmR5vcsXAIzX0KzyjHoqsB4JzSmTuTbMTCpKueOuh4yDQpZrhbN+U7C/S+X3Ac
 9RG+ghH/ftQyr7QmM6rxaBou7g4yYSBSnrgzsSHnwoGenN+WUzd5JsyB1FhAmKJZuH95
 wXzomOe8ITiIvfadPLnP6cL5BPfbYnKkRpxZi10S7Rt6r8TbF57KM5hfiLQQneVlw1gE
 DAs8iN+CBXBTHYjnsyhhVqw0kTb7LiHj5wbr8kEp9TkB28r4OCH8EHjwaCoRTCJfOFlK
 IkIQ==
X-Gm-Message-State: AOAM531YbNXPECCMvj4xGstVG0fKiqgkDZEMxwBmqiZiV3ElzB/C015d
 +mwDp5ocXq+cpVEl87zEbp6blio0FBTZHPOQDtTzKw==
X-Google-Smtp-Source: ABdhPJwm3P3LhbsdGmj0KytA65NwKr/7nM+3JfY2MoNVFmlK+eWH1+mnRYMYSyYkSLIfgC2g1dCEeeWCQGHlsIDnTIk=
X-Received: by 2002:a19:cb57:: with SMTP id b84mr385615lfg.112.1589390969099; 
 Wed, 13 May 2020 10:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <86daec20-93b3-f5bb-8b38-98c0e2160d80@wwsnet.net>
 <CAJQUmm7tProVh=+JPp6owcEKQL5W4vUBwmiBNV7KLVMz4TNwqg@mail.gmail.com>
 <c3e4850c-ab4d-7770-7831-be479e8d7bea@wwsnet.net>
In-Reply-To: <c3e4850c-ab4d-7770-7831-be479e8d7bea@wwsnet.net>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 12:29:18 -0500
Message-ID: <CAJQUmm5fXkdA+GLZmF=RuusK-Ws16_M=FtKa0HdZfHzsFLaO-w@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_102930_875059_00A9A947 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6866497650933567028=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6866497650933567028==
Content-Type: multipart/alternative; boundary="0000000000001f6cc605a58aecbe"

--0000000000001f6cc605a58aecbe
Content-Type: text/plain; charset="UTF-8"

On Wed, May 13, 2020 at 3:58 AM Jo-Philipp Wich <jo@mein.io> wrote:

> Hi,
>
> >
> >     That loop-kill-all thing should be a kind of last resort really,
> what's
> >     actually needed is some kind of "init 1" procd equivalent which
> shuts down all
> >     services in a more or less clean manner.
> >
> >
> > Oddly enough, the /lib/upgrade/stage2 script has some aspect of this. It
> > explicitly shuts down (kill -9) telnet, dropbear, and ash before looping
> with
> > sigTERM, and then again with sigKILL.
> >
> > I find it very odd that it's explicitly singling out telnet, dropbear,
> and
> > ash. My OpenWRT build doesn't have any of these installed in the first
> place.
> > E.g. I have OpenSSH, and it's jumping straight to kill -9 instead of
> sending
> > sigTERM first like it should.
>
> These are (in the case of telnet, were) the default services offering shell
> access in standard images the sysupgrade script was tailored for.
>
> The intention is to kill all user shell sessions to prevent interference
> with
> the subsequent upgrade process. An openssh case simply hasn't been added
> since
> it is uncommon, especially on lower end devices.
>
> The subsequent TERM / KILL loops are a poor mans attempt to cleanly shut
> down
> services. It obviously won't work for things having expensive teardown
> procedures (databases, squid proxy, etc.) - those really should be handled
> manually by the user before invoking sysupgrade. I mean obviously one can
> extend the grace period, but I guess there will always be unhandled cases.
>
>
I merely meant that i thought it odd that instead of using sigTERM on the
user-interactable processes, we jump straight to sigKILL.

I don't really see why singling out the user interactable processes does
any good, if they'd be sigTERM and then sigKILL-ed like everything else.




> Uhm, yeah sure, we could try writing the image again I guess. But
> eventually
> you have to give up if the storage device simply cannot be written cleanly.
>
>
Of course. Eventually we know it won't succeed, but a flaky storage doesn't
necessarily mean a second attempt won't succeed. Or an attempt to write the
data in smaller pieces.

My concern is that one error and giving up will lead to more soft-bricks
than two errors and giving up.

We could bikeshed on this forever though. I merely meant that one retry
isn't unreasonable. 50 probably is.



> Stuff like umounting external disks, fsync / swapoff etc. come to mind as
> well
> which should be doable at this point.
>
>
>
Right, that's also feasible.

In fact I don't see any code at all for unmounting existing filesystem
mounts. Thanks for pointing that out.

--0000000000001f6cc605a58aecbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 3:58 AM Jo-Ph=
ilipp Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.io</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0That loop-kill-all thing should be a kind of last r=
esort really, what&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0actually needed is some kind of &quot;init 1&quot; =
procd equivalent which shuts down all<br>
&gt;=C2=A0 =C2=A0 =C2=A0services in a more or less clean manner.<br>
&gt; <br>
&gt; <br>
&gt; Oddly enough, the /lib/upgrade/stage2 script has some aspect of this. =
It<br>
&gt; explicitly shuts down (kill -9) telnet, dropbear, and ash before loopi=
ng with<br>
&gt; sigTERM, and then again with sigKILL.<br>
&gt; <br>
&gt; I find it very odd that it&#39;s explicitly singling out telnet, dropb=
ear, and<br>
&gt; ash. My OpenWRT build doesn&#39;t have any of these installed in the f=
irst place.<br>
&gt; E.g. I have OpenSSH, and it&#39;s jumping straight to kill -9 instead =
of sending<br>
&gt; sigTERM first like it should.<br>
<br>
These are (in the case of telnet, were) the default services offering shell=
<br>
access in standard images the sysupgrade script was tailored for.<br>
<br>
The intention is to kill all user shell sessions to prevent interference wi=
th<br>
the subsequent upgrade process. An openssh case simply hasn&#39;t been adde=
d since<br>
it is uncommon, especially on lower end devices.<br>
<br>
The subsequent TERM / KILL loops are a poor mans attempt to cleanly shut do=
wn<br>
services. It obviously won&#39;t work for things having expensive teardown<=
br>
procedures (databases, squid proxy, etc.) - those really should be handled<=
br>
manually by the user before invoking sysupgrade. I mean obviously one can<b=
r>
extend the grace period, but I guess there will always be unhandled cases.<=
br>
<br></blockquote><div><br></div><div>I merely meant that i thought it odd t=
hat instead of using sigTERM on the user-interactable processes, we jump st=
raight to sigKILL.</div><div><br></div><div>I don&#39;t really see why sing=
ling out the user interactable processes does any good, if they&#39;d be si=
gTERM and then sigKILL-ed like everything else.</div><div><br></div><div><b=
r></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Uhm, yeah sure, we could try writing the image again I guess. But eventuall=
y<br>
you have to give up if the storage device simply cannot be written cleanly.=
<br>
<br></blockquote><div><br></div><div>Of course. Eventually we know it won&#=
39;t succeed, but a flaky storage doesn&#39;t necessarily mean a second att=
empt won&#39;t succeed. Or an attempt to write the data in smaller pieces.<=
/div><div><br></div><div>My concern is that one error and giving up will le=
ad to more soft-bricks than two errors and giving up.=C2=A0</div><div><br><=
/div><div>We could bikeshed on this forever though. I merely meant that one=
 retry isn&#39;t unreasonable. 50 probably is.</div><div><br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Stuff like umounting external disks, fsync / swapoff etc. come to mind as w=
ell<br>
which should be doable at this point.<br>
<br><br></blockquote><div><br></div><div>Right, that&#39;s also feasible.</=
div><div><br></div><div>In fact I don&#39;t see any code at all for unmount=
ing existing filesystem mounts. Thanks for pointing that out.</div></div></=
div>

--0000000000001f6cc605a58aecbe--


--===============6866497650933567028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6866497650933567028==--

