Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BCD19D584
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 13:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9vg4OC/Ws2zs9qcJWnXBTEQ5nG49mq/+CyCN+aq1nhE=; b=hr58sYVJZkgscnS5k3asKSZIP
	4xS6peT4VRuhu2O6v5Qx4LTZgDkNDWKFQuhjz8MuFrJBmO1pDeRWbc5K9kU/dBfh/ZefSr3hHdHbS
	PhXUAMDrFyuo6tI0KG79u0khWH0po4CWkPyG8C/EXYvPN8TrowT8ginWTA0lBg6P7+DwS1+2sUQCX
	l817S6wgGZQajbbCiQ+liXHNonum+SS+81DHGew/3bwAG1hSSMs/wsHqPWYNJDJzVLqbtF2U0LAbN
	Z+qshkeKTpOVoQcmJEF/odFiWvUyfky0j5SrNb0CiJYmcd9kCEF+DmfqZAfq4VDnJqI4Kf1Fmn1Zl
	jQ+LnSwaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKBc-0001Cc-Hu; Fri, 03 Apr 2020 11:08:32 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKBV-0001C6-GV
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 11:08:27 +0000
Received: by mail-vs1-xe41.google.com with SMTP id a63so4634022vsa.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Apr 2020 04:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=US5UrpsHFDYIkDvwu3hraw7qB0EcoKa7QVRFxQ+zLIA=;
 b=UzuVAPYomJ9G/l304YLglSd2wexBgnfHwlPJdTVzb4ZDXs37DbkFQ7hkQk9KvCRLjk
 vjEGMO1fN5D3nvtIgXAkFMV52ChuurL9d4QjoxiUxspeOoRsmq3dSj824hIPpW0TFs6g
 cbjxK/b2GUG6r15UlnpKN6DNsO8aPhc6qVUkU7eR0IkpuynWUx7YVH8+VBGFm6abavyy
 0oy68ZEr9CkaxEp+rkLLIFNZR3Fv/3oaazPhBO6A/ZsBfV5i/zqh3o5jAVz8Btd1bt7k
 G5tdlZ8C/SF5fEeGdmbXkX7xCkS9RqDe2cp6K/Olib0DIio61xn8iw0OI/moYROsvKwC
 LTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=US5UrpsHFDYIkDvwu3hraw7qB0EcoKa7QVRFxQ+zLIA=;
 b=dqNk96UOtbI4g96UOxigbT5qtD5E9eH1iYehOM6PvRQILQYr1a2Vy2RgAjfq/uHjtM
 HFCFZOKlb7Cq1Z8jk69YvcN43j7hhFTd6GqzPotDjiZPyOalMqgspclaZ7jrtkk9k3nR
 knYbt4yXXspBjxXt/BPOs47+TjIfYCvvLMjpYcMzNAKspbwdPKu836zlntXz7J6NhJxT
 DghcmF8l1FCnknJ+7b+5LTnDtPlrEpcSRAPMGLoTDGhIHvd6hTjfxYPHwFpXxQ0s5RXZ
 w6BtW8qk63LuRPgy1Gr/epkGjYRR03fLUEMOKiw5nmIWZ9QIrdFxuYsFBhEKrLvDN0T9
 EI8g==
X-Gm-Message-State: AGi0PubK5RzQG0JgACuZ2gULbejkdNPHqjif8FeoF/1IP31s+q0ReXr6
 zj2fwRFHM9KI+xbQuh1PmOpK++L7wLgPLmryN2NdxA==
X-Google-Smtp-Source: APiQypIwwr57D6zZThZhYZs/jstdpwUvgPUeIuFSVYsAFfwgX4JVajLNfK+ubgoh/3J2O2w1+/FpfMS/zHh2Wl4ozwM=
X-Received: by 2002:a67:7082:: with SMTP id l124mr5632734vsc.211.1585912103851; 
 Fri, 03 Apr 2020 04:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200402195359.51545-1-mail@david-bauer.net>
 <87k12wx6tm.fsf@miraculix.mork.no>
 <e74d668d-d2ad-8312-b5c0-7e8e2e9bbf02@gmail.com>
 <332d6de9-97e7-2afb-20f9-18aa66e2a0aa@david-bauer.net>
In-Reply-To: <332d6de9-97e7-2afb-20f9-18aa66e2a0aa@david-bauer.net>
From: Russell Senior <russell@personaltelco.net>
Date: Fri, 3 Apr 2020 04:08:12 -0700
Message-ID: <CAHP3WfMQmF+rmm2iaTJPakKHDUAKpYoWDh=o_4tE+3LBQjhMbQ@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_040825_745385_3DBBBA7A 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, Magnus Kroken <mkroken@gmail.com>
Content-Type: multipart/mixed; boundary="===============8960172959056641105=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8960172959056641105==
Content-Type: multipart/alternative; boundary="000000000000987d3505a260efa1"

--000000000000987d3505a260efa1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FYI: https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2928

On Fri, Apr 3, 2020 at 3:13 AM David Bauer <mail@david-bauer.net> wrote:

> Hello Magnus,
>
> On 4/3/20 12:07 PM, Magnus Kroken wrote:
> > Hi all
> >
> > On 03.04.2020 11:21, Bj=C3=B8rn Mork wrote:
> >> David Bauer <mail@david-bauer.net> writes:
> >>
> >>> As the reported major bugs are ironed out, switch to the new kernel t=
o
> >>> begin testing with a broader audience.
> >>
> >>
> >> Hmm... I wonder if you might want to hold back on that for a while.
> >>
> >> I have no useful info yet since I don't have console access on this
> >> device, but I just lost network access to a UniFi AP AC PRO after tryi=
ng
> >> out current master (fcd14017007d).
> >
> > I held back and planned to report when I have a log from serial, but I'=
m
> sending this now since this sounds similar to my experience.
> >
> > I've tested 5.4 on my tl-wdr4300v1, and it got stuck in reboot loop
> recently. I plan to get a serial connection on it this weekend to see
> exactly what happens, but with the easy TFTP recovery I've bisected it to
> the GCC 8.4 update. Doing a dirclean between each test,
> https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Ddb7007766=
8e757a27f41d9cb3c84f28ea7d4c22e
> is the first bad commit. This is the simple config I've used for testing:
> >
> > CONFIG_TARGET_ath79=3Dy
> > CONFIG_TARGET_ath79_generic=3Dy
> > CONFIG_TARGET_ath79_generic_DEVICE_tplink_tl-wdr4300-v1=3Dy
> > CONFIG_LINUX_5_4=3Dy
> > CONFIG_TESTING_KERNEL=3Dy
> >
> > Testing is on hold as the device is in service right now, but I'd
> appreciate any ideas for further testing.
>
> Thanks for this report. I'm not in the posession of an AC-Pro but i
> have a WDR3600 around, which is mostly identical to the WDR4300.
>
> I've not tested 5.4 there, but i will see if i can reproduce any
> network-related
> issue there.
>
> Best wishes
> David
>
> >
> > /Magnus
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000987d3505a260efa1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FYI: <a href=3D"https://bugs.openwrt.org/index.php?do=3Dde=
tails&amp;task_id=3D2928">https://bugs.openwrt.org/index.php?do=3Ddetails&a=
mp;task_id=3D2928</a></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Apr 3, 2020 at 3:13 AM David Bauer &lt;<a href=
=3D"mailto:mail@david-bauer.net">mail@david-bauer.net</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Hello Magnus,<br>
<br>
On 4/3/20 12:07 PM, Magnus Kroken wrote:<br>
&gt; Hi all<br>
&gt; <br>
&gt; On 03.04.2020 11:21, Bj=C3=B8rn Mork wrote:<br>
&gt;&gt; David Bauer &lt;<a href=3D"mailto:mail@david-bauer.net" target=3D"=
_blank">mail@david-bauer.net</a>&gt; writes:<br>
&gt;&gt;<br>
&gt;&gt;&gt; As the reported major bugs are ironed out, switch to the new k=
ernel to<br>
&gt;&gt;&gt; begin testing with a broader audience.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Hmm... I wonder if you might want to hold back on that for a while=
.<br>
&gt;&gt;<br>
&gt;&gt; I have no useful info yet since I don&#39;t have console access on=
 this<br>
&gt;&gt; device, but I just lost network access to a UniFi AP AC PRO after =
trying<br>
&gt;&gt; out current master (fcd14017007d).<br>
&gt; <br>
&gt; I held back and planned to report when I have a log from serial, but I=
&#39;m sending this now since this sounds similar to my experience.<br>
&gt; <br>
&gt; I&#39;ve tested 5.4 on my tl-wdr4300v1, and it got stuck in reboot loo=
p recently. I plan to get a serial connection on it this weekend to see exa=
ctly what happens, but with the easy TFTP recovery I&#39;ve bisected it to =
the GCC 8.4 update. Doing a dirclean between each test, <a href=3D"https://=
git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Ddb70077668e757a27f4=
1d9cb3c84f28ea7d4c22e" rel=3D"noreferrer" target=3D"_blank">https://git.ope=
nwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Ddb70077668e757a27f41d9cb3c=
84f28ea7d4c22e</a> is the first bad commit. This is the simple config I&#39=
;ve used for testing:<br>
&gt; <br>
&gt; CONFIG_TARGET_ath79=3Dy<br>
&gt; CONFIG_TARGET_ath79_generic=3Dy<br>
&gt; CONFIG_TARGET_ath79_generic_DEVICE_tplink_tl-wdr4300-v1=3Dy<br>
&gt; CONFIG_LINUX_5_4=3Dy<br>
&gt; CONFIG_TESTING_KERNEL=3Dy<br>
&gt; <br>
&gt; Testing is on hold as the device is in service right now, but I&#39;d =
appreciate any ideas for further testing.<br>
<br>
Thanks for this report. I&#39;m not in the posession of an AC-Pro but i<br>
have a WDR3600 around, which is mostly identical to the WDR4300.<br>
<br>
I&#39;ve not tested 5.4 there, but i will see if i can reproduce any networ=
k-related<br>
issue there.<br>
<br>
Best wishes<br>
David<br>
<br>
&gt; <br>
&gt; /Magnus<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000987d3505a260efa1--


--===============8960172959056641105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8960172959056641105==--

