Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35F310F04
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 00:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZC2zi32v03AoRdQNVhVRf79c5QYwxUVlOuQKqPvwX7E=; b=VagqYKVKRmgPotQIn32z5+nqw
	VBusFMP140PHTEEjR+yX1V6TH12ldgC6xxu2suMESN8B7iWHowhNv/UoJLJLK1YIcM3DZdqcRmOuu
	FkU6+2ujuRCura6KPiCK73m84XLxCQfO+Vsgds0XM6Mz4H0or0Tnz9MYwizDasmvq6fmwFVQF2rXO
	K7iHOj6PbgVus/0WlhBcvIUJg/3KlPe4r83kO/tyeOmIFD+Z3PGG+B7gC2oP+WJLzkiGCfpqrsmWe
	D2xS/SUmdPCxeVR/CbmyC3N3qCuMmPF91j3j2zOq+0FFTe35MFE52pv0g9XAu3jIusEOKixCadcC6
	FycbYRX1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLxkZ-0000qK-DP; Wed, 01 May 2019 22:30:51 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLxkS-0000q1-OB
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 22:30:46 +0000
Received: by mail-qk1-x736.google.com with SMTP id c1so357307qkk.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 15:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :mime-version; bh=OltiTrVmnaoZOo2/kKnkP+p7pJGf4I0LVNsFhPCY7+o=;
 b=RqWo/zCJVxi6H1Z49aaeKKXDUsMLur/tO3vNJpvmPvXspUWtg2nef2z4oXWfOlDfBc
 0Hb6MKhpMVa6V7rKNCqJIOwnxejunGLZ9VYAJ6sYIahhtbRybv64189hk/9SKSYTz1A7
 3KmjLouYeyePmyr9FBktnxMp+I9KNp9TdF1qkvaAReNMS8KIJYlmU5FzDycsZyQM7g/P
 CgQZdR8cPUNcga598V1043HI9QlOIQpYqASZjUrgImhOl/FP4tM0418hXkmZ/moL4Enh
 I+vUwWTvPGG/GPa6SW82lkJD6jn3NI0nU2vGv/d6At6P5gItHm9/5St+dJja2GE1vc04
 wDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
 :message-id:references:in-reply-to:accept-language:content-language
 :mime-version;
 bh=OltiTrVmnaoZOo2/kKnkP+p7pJGf4I0LVNsFhPCY7+o=;
 b=efS/yrgHAiM97AhhHvnWY4st3x1XHQUBu+AS9CF+LtHMRFYOj0TpPNtcQ926l44eCI
 7oww99KLCxf8MhxvPLfuI3m3NC8HhRV/kwiup8nezIYu4Xj53aVU2o6xsnx+vc33vk36
 EkGX/aWyaRe943y0ZUGl2f7rHD8RzpEHnciqi90sExFQ/3HaF0zkEQVaUM3Lj4ty4VtP
 zLBu8KzOgS/xAu5Kox0qLKFU9MX8ibXCa4R9t6iJtU4a8nQpAooMTmxgz1YtBoRsWuRZ
 rmuPDDDAv0kfxhrIRBWl0t11kyNtamYeRVcxREEhPhx3uFOap0cFCggtc2B2xbcpOlH0
 nsXQ==
X-Gm-Message-State: APjAAAXEuKxApdAs5ycedWhWzpnPGZUMqdZ79bhlenO77wlmpCtlByLS
 8tvMd58RB389uZnTzkQaI2E=
X-Google-Smtp-Source: APXvYqzQpTlPiIKq3wC/EDfLdeo2arsk+rkm239luRFsThZSefmf+RXJdrvBMIZ0L8USC9kna7MDCw==
X-Received: by 2002:a37:4b03:: with SMTP id y3mr486541qka.260.1556749843077;
 Wed, 01 May 2019 15:30:43 -0700 (PDT)
Received: from BN7PR08MB6003.namprd08.prod.outlook.com ([40.97.229.253])
 by smtp.gmail.com with ESMTPSA id 17sm16776723qty.79.2019.05.01.15.30.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 15:30:42 -0700 (PDT)
From: Boris Krasnovskiy <borkra@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>, OpenWrt Development List
 <openwrt-devel@lists.openwrt.org>
Thread-Topic: Commit 8dcc1087602e breaks FA526 (Gemini) compile
Thread-Index: AXdqcDcrC5lwSuN2drfSUtABu0Cmlrsr9TP4
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Wed, 1 May 2019 22:30:41 +0000
Message-ID: <BN7PR08MB6003771629BC366B9F3D8FFAAE3B0@BN7PR08MB6003.namprd08.prod.outlook.com>
References: <CACRpkdZiK+CVwMjE9Vh70Pn_FNMbVpd95sj7CWxj9FNVDGWbvw@mail.gmail.com>
In-Reply-To: <CACRpkdZiK+CVwMjE9Vh70Pn_FNMbVpd95sj7CWxj9FNVDGWbvw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_153044_823046_AFD9FED3 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:736 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (borkra[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Commit 8dcc1087602e breaks FA526 (Gemini)
 compile
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
Content-Type: multipart/mixed; boundary="===============5958380205513031766=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5958380205513031766==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR08MB6003771629BC366B9F3D8FFAAE3B0BN7PR08MB6003namp_"

--_000_BN7PR08MB6003771629BC366B9F3D8FFAAE3B0BN7PR08MB6003namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Linus,



I do not see anything wrong for your target. And I do not have any Gemini d=
evices.



Crash during init that you can see, is pretty far along in the boot process=
, so toolchain likely correct.



Maybe an issue with some packages=85



You can run =93 gcc -Q --help=3Dtarget=94 on the compiled cross toolchain a=
nd check if default settings are correct, or post the output.



Can you send us the crash log?



Thank you,
Boris Krasnovskiy



________________________________
From: Linus Walleij <linus.walleij@linaro.org>
Sent: Wednesday, May 1, 2019 6:08:11 PM
To: Boris Krasnovskiy; OpenWrt Development List
Subject: Commit 8dcc1087602e breaks FA526 (Gemini) compile

Hi Boris & friends,

commit 8dcc1087602e2dd606e4f6e81a06aee62cfd4f4c
"toolchain: ARM: Fix toolchain compilation for gcc 8.x"
regresses the Gemini (FA526-based).

I cannot quite see how. I noticed init crashed with the latest
OpenWrt codebase and bisected it down to this commit.

Before the commit include/target.mk has:

ifneq ($(findstring arm,$(ARCH)),)
 ....
 CPU_CFLAGS_fa526 =3D -mcpu=3Dfa526
 ....
 ifeq ($(CONFIG_SOFT_FLOAT),)
    ....

After in toolchain/gcc/common.mk we have:

ifeq ($(CONFIG_arm),y)
CC_CONFIGURE+=3D \
       --with-cpu=3D$(word 1, $(subst +," ,$(CONFIG_CPU_TYPE)))
 ....
 ifneq ($(CONFIG_SOFT_FLOAT),y)
    GCC_CONFIGURE+=3D \
               --with-fpu=3D$(word 2, $(subst +, ",$(CONFIG_CPU_TYPE)))
               --with-float=3Dhard

It's a bit terse so I cannot really make this out :/

Relevant stuff from my .config is:
CONFIG_CPU_TYPE=3D"fa526"
CONFIG_arm=3Dy
CONFIG_ARCH=3D"arm"
CONFIG_SOFT_FLOAT=3Dy

Any hints?

Yours,
Linus Walleij

--_000_BN7PR08MB6003771629BC366B9F3D8FFAAE3B0BN7PR08MB6003namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Consolas}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.x_MsoHyperlinkFollowed
	{color:#954F72;
	text-decoration:underline}
.x_MsoChpDefault
	{font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">Hi Linus,</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I do not see anything wrong for your target. And I=
 do not have any Gemini devices.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Crash during init that you can see, is pretty far =
along in the boot process, so toolchain likely correct.
</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Maybe an issue with some packages=85</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">You can run =93 <span style=3D"font-size:10.0pt; f=
ont-family:Consolas; color:#444444; background:#F7F7F7">
gcc -Q --help=3Dtarget=94 on the compiled cross toolchain and check if defa=
ult settings are correct, or post the output.</span></p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Can you send us the crash log?</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Thank you,<br>
Boris Krasnovskiy</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Linus Walleij &lt;l=
inus.walleij@linaro.org&gt;<br>
<b>Sent:</b> Wednesday, May 1, 2019 6:08:11 PM<br>
<b>To:</b> Boris Krasnovskiy; OpenWrt Development List<br>
<b>Subject:</b> Commit 8dcc1087602e breaks FA526 (Gemini) compile</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">Hi Boris &amp; friends,<br>
<br>
commit 8dcc1087602e2dd606e4f6e81a06aee62cfd4f4c<br>
&quot;toolchain: ARM: Fix toolchain compilation for gcc 8.x&quot;<br>
regresses the Gemini (FA526-based).<br>
<br>
I cannot quite see how. I noticed init crashed with the latest<br>
OpenWrt codebase and bisected it down to this commit.<br>
<br>
Before the commit include/target.mk has:<br>
<br>
ifneq ($(findstring arm,$(ARCH)),)<br>
&nbsp;....<br>
&nbsp;CPU_CFLAGS_fa526 =3D -mcpu=3Dfa526<br>
&nbsp;....<br>
&nbsp;ifeq ($(CONFIG_SOFT_FLOAT),)<br>
&nbsp;&nbsp;&nbsp; ....<br>
<br>
After in toolchain/gcc/common.mk we have:<br>
<br>
ifeq ($(CONFIG_arm),y)<br>
CC_CONFIGURE&#43;=3D \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-cpu=3D$(word 1, $(subst &#43;,&=
quot; ,$(CONFIG_CPU_TYPE)))<br>
&nbsp;....<br>
&nbsp;ifneq ($(CONFIG_SOFT_FLOAT),y)<br>
&nbsp;&nbsp;&nbsp; GCC_CONFIGURE&#43;=3D \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; --with-fpu=3D$(word 2, $(subst &#43;, &quot;,$(CONFIG_CPU_TYPE)))=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; --with-float=3Dhard<br>
<br>
It's a bit terse so I cannot really make this out :/<br>
<br>
Relevant stuff from my .config is:<br>
CONFIG_CPU_TYPE=3D&quot;fa526&quot;<br>
CONFIG_arm=3Dy<br>
CONFIG_ARCH=3D&quot;arm&quot;<br>
CONFIG_SOFT_FLOAT=3Dy<br>
<br>
Any hints?<br>
<br>
Yours,<br>
Linus Walleij<br>
</div>
</span></font>
</body>
</html>

--_000_BN7PR08MB6003771629BC366B9F3D8FFAAE3B0BN7PR08MB6003namp_--


--===============5958380205513031766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5958380205513031766==--

