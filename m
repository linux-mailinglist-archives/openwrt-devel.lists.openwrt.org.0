Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B90217129F
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 09:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U5vBCHz6f8IF6DPSYvUJKl1aF5VekhWzwiZbOnEZVtI=; b=XOtv9CtLKMP2Gju6hK6BC1feK
	ayBr2BSP2zW3I/vcFpT5CpT3xZCF2sNT76tofvWYff6Mhr9DwDURSu2QsQ4cgCDfqv6aJoJRx1TGH
	yyoSY7ggolo6uCjPjL++x4/Fx/mN4v4T8RM/jnx8t/g+vQCXkcR8VFIlB7dNiV2n04onwllnOlk9Z
	MOERna+Nbr8qXeblk9TooZ4T/60OeTEAT7ox7N+bLwxLtkLDvp2W9BitnHwoaK096FpawqaDeDXZM
	Vlkncr0vSw35u45Niw2Mx3kwb6z6hLB8Xf0TRa0RuqmChDr5FGasLiqYQdhnyEhaZ3XySyIH0mx74
	y3z2XJC0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7EeF-00080K-32; Thu, 27 Feb 2020 08:35:59 +0000
Received: from mail-vk1-xa2d.google.com ([2607:f8b0:4864:20::a2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ee6-000800-7b
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 08:35:52 +0000
Received: by mail-vk1-xa2d.google.com with SMTP id g7so491864vkl.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 27 Feb 2020 00:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vaevJpNuF+AuW3kj/CKjczW8laQ8Qo4R4sb7ju7u8x8=;
 b=SPc5yhL7uuGVcRRUkdOQ2Cr/ab3DVGSlfWZpi6fyyJroEoxVzlbvszeESbzmd+1Scm
 7Tv+KM6TKr6mUddXYsBo99oeCucGMPdZsdtNcpLK3gyBNRdDB3Ullt+R1SViqwjazplz
 Qa2w1E2razUITo0RGuNSSZg99d/GTxz6CK+p0yAWJed4z337YSN9KEPDPRBm0p6WdNjy
 /0WqIh5dZ2lh+w+XrED5UWJKwBOvHkQ3xL86dtUMCyVhRIse5uQR84HM+j2+Cjbntoaa
 /13Pr32G1L6NhWfblUknK4VxZWE4ZuVMjj6VL0CF526kBxtTtIqxsxeY3AcdCHRdlqtL
 6i7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vaevJpNuF+AuW3kj/CKjczW8laQ8Qo4R4sb7ju7u8x8=;
 b=TZ+L50DpwxRuvW+ura5hIipGW/N2rw7UOKP94DaSPbJzW91nwRn7qoNPGSwFZ/9JiI
 ViXWptjYcRqK1/KznuicVqIsSuDQ/bKeTK4WSb+6FU+y2vFT8WIGY3AMeIb9/Kf5Ei0d
 ThjUWB5UK/VK6OEPL/uLPy19wmHseCTQT2zDSWR+c9DfpDql0dyHUo+2PgV/EuxChQGV
 dBFrCsYWsfg+0wiTO/b5+kfboAt7d70N221ULsLhQZhk2ragePpTUTj9oC83KV3ySt/h
 Ww6zljZL7Fwpozxx3MX6A5K3V4YLZHGyFvi3l7hXT6HHvIuOvjzVKsyYBukwpwkRD9NY
 L0Qw==
X-Gm-Message-State: APjAAAW2RplIFz9eASqc8E5caoChB+5ML8NBAvyvqTLdw0IiXPWFK7zY
 1HdM/6wqicU9X7E9RgiCjFF9kOQVFeCmTXDdzyhqfiytotI=
X-Google-Smtp-Source: APXvYqyUBl4KhmjV0KWhwOP6x1RV8/QABhj8sow1QFP4FeZuqIz4jlYJnBXE4z6j52QYeayiefL0L3Vxnar484zAWog=
X-Received: by 2002:a1f:2f4c:: with SMTP id v73mr688061vkv.12.1582792548189;
 Thu, 27 Feb 2020 00:35:48 -0800 (PST)
MIME-Version: 1.0
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <000701d5eca7$6ae4f0e0$40aed2a0$@adrianschmutzler.de>
In-Reply-To: <000701d5eca7$6ae4f0e0$40aed2a0$@adrianschmutzler.de>
From: Russell Senior <russell@personaltelco.net>
Date: Thu, 27 Feb 2020 00:35:36 -0800
Message-ID: <CAHP3WfN9-r86VfqQ1VWjGywnxuO2EoPWD54PweaqDvbAT6r3Qw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_003550_348883_300464D7 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============8007769438149841461=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8007769438149841461==
Content-Type: multipart/alternative; boundary="00000000000096b959059f8a9b0c"

--00000000000096b959059f8a9b0c
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 26, 2020 at 5:19 AM Adrian Schmutzler <mail@adrianschmutzler.de>
wrote:

> Hi,
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> > Behalf Of Russell Senior
> > Sent: Mittwoch, 26. Februar 2020 11:20
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCH RFC] ath79: add support for the ar7240
> version
> > of the ubiquiti bullet
> >
> >
> > The Ubiquiti Bullet M2HP come in two flavors, based on ar7240 and
> > ar7241. Both are supported by ar71xx, despite the different SoCs. The
> > ath79 target, however, currently supports only the ar7241. The ar7240
> > version apparently has a differently wired ethernet interface and the
> > ar7241-based image comes up on the ar7240-based versions without a
> > working ethernet interface.
> >
> > This is an attempt to support both flavors of ubnt-bullet-m,
> > separately. Some of the choices I made may be considered dubious and/or
> > harmful.
>
> Interesting. Do you have any indications whether this will also affect the
> Loco
> M and Picostation XM devices?
>

I have some Loco's deployed (all of them are AR7241) but no picostations,
so I don't know about the latter.


>
> What's the base for the v0/v1 distinction? Is that visible to the user
> somehow?
> I fear that meaningful naming will be the biggest problem here...
>

v0 and v1 mostly come from the need to distinguish between them. You could
think of the digit as the least significant digit of the SoC. We could make
them -7240 and -7241 instead of -v0 and -v1 to be slightly clearer what the
names mean, but that seemed ugly. And, no, as far as I know, the SoC is not
indicated on the exterior of the device at all. The user will have to
figure out the right version to use somehow.


>
> Best
>
> Adrian
>
>

--00000000000096b959059f8a9b0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 26, 2020 at 5:19 AM Adria=
n Schmutzler &lt;<a href=3D"mailto:mail@adrianschmutzler.de">mail@adriansch=
mutzler.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi,<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: openwrt-devel [mailto:<a href=3D"mailto:openwrt-devel-bounces@li=
sts.openwrt.org" target=3D"_blank">openwrt-devel-bounces@lists.openwrt.org<=
/a>] On<br>
&gt; Behalf Of Russell Senior<br>
&gt; Sent: Mittwoch, 26. Februar 2020 11:20<br>
&gt; To: <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k">openwrt-devel@lists.openwrt.org</a><br>
&gt; Subject: [OpenWrt-Devel] [PATCH RFC] ath79: add support for the ar7240=
 version<br>
&gt; of the ubiquiti bullet<br>
&gt; <br>
&gt; <br>
&gt; The Ubiquiti Bullet M2HP come in two flavors, based on ar7240 and<br>
&gt; ar7241. Both are supported by ar71xx, despite the different SoCs. The<=
br>
&gt; ath79 target, however, currently supports only the ar7241. The ar7240<=
br>
&gt; version apparently has a differently wired ethernet interface and the<=
br>
&gt; ar7241-based image comes up on the ar7240-based versions without a<br>
&gt; working ethernet interface.<br>
&gt; <br>
&gt; This is an attempt to support both flavors of ubnt-bullet-m,<br>
&gt; separately. Some of the choices I made may be considered dubious and/o=
r<br>
&gt; harmful.<br>
<br>
Interesting. Do you have any indications whether this will also affect the =
Loco<br>
M and Picostation XM devices?<br></blockquote><div><br></div><div>I have so=
me Loco&#39;s deployed (all of them are AR7241) but no picostations, so I d=
on&#39;t know about the latter.<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
What&#39;s the base for the v0/v1 distinction? Is that visible to the user =
somehow?<br>
I fear that meaningful naming will be the biggest problem here...<br></bloc=
kquote><div><br></div><div>v0 and v1 mostly come from the need to distingui=
sh between them. You could think of the digit as the least significant digi=
t of the SoC. We could make them -7240 and -7241 instead of -v0 and -v1 to =
be slightly clearer what the names mean, but that seemed ugly. And, no, as =
far as I know, the SoC is not indicated on the exterior of the device at al=
l. The user will have to figure out the right version to use somehow.<br></=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Best<br>
<br>
Adrian <br>
<br>
</blockquote></div></div>

--00000000000096b959059f8a9b0c--


--===============8007769438149841461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8007769438149841461==--

