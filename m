Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FF0173E52
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 18:22:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tl+lxLcu8tSfT5za8GRG3l9aJhviCVH++xjDoN5An0Y=; b=DE43d7QgGsrHaRTHvv1/tqHTW
	bygdsqdzl+zD9tanwfFRfSpBeQkZbVwucf+LqnQtViLsnCfGcu2Ls/7z5dDc/v14gCQtbItC9XS1L
	gHp8I8/ZkK6KYYWWZT3CIGYUQS/ezmmgdY4d/mewdU7lEV4IbJYsEIooRPYTEKNt09+yjEk3EKhdH
	fzqNiyMCnTFPg1159mYYQtEmfND5aa4JTCIgLgSZMMSByIk6vA3YAcfu1d2MyS1uzT04rqr/4y7jP
	Cy/FGwVFx7d6OKzEd/pHt2a0NvWrCXrEZjf8pXwhkW9F58BuazMaitWrfxZ80clDBGaOc92LHASHY
	Rlt/sKbew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7jLU-0006m2-Aq; Fri, 28 Feb 2020 17:22:40 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7jLL-0006gH-2N
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 17:22:32 +0000
Received: by mail-il1-x130.google.com with SMTP id r4so1995129iln.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Feb 2020 09:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pEm79YCI3P1llrq/HW37S+/kib/QTDboUlc3fLSIpIA=;
 b=LQZ7cTAGcOzPksvx39TO4I3fdYt7t5VJI6qWG87gOghbAU/6EaIjIhD9oKdtvR1aKR
 OCFvHOCWi8dRstMBywK1GZ11G+e/mHYMtGneW+p82yJczLgOKpjxCztgu4qV+M32PfUB
 ubzk0bCU7rkhy9CK/AbO71WX36QWHiN0+BPtfchKS88dyg0G9IGNVZCwhUZPniJ3h3gZ
 OzePN+kHoCall/ngBlz/Py+l6jgF1dSKj3ksMCvRjM7nPYpxIyNl5J4Scbxw6nOrcqgU
 UcMjJvvef8nNCRa/c6+8uwX1DbwypofRl7oW803pgqGPxXdQ2aPqk5/bXQQ5FvoZ3953
 Fa6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pEm79YCI3P1llrq/HW37S+/kib/QTDboUlc3fLSIpIA=;
 b=maIXOkBlD4p6QUEiPBju8yOJHYaKmlSQsWHOQMOqBgKVKrUFQC6uKPgxUK9wfJzVVK
 zuRfX2i21bSRcZKwP8Sz9PpeYpi8oOGy7JaHiswb1LqAvD6K78vSRb8AuxuGR0zJin96
 R60KkFwhGT4wLjirIRlaEUNbRXGcL9eWkZW8HpFJxBCAl22lxQRWaXtBldBb+yfLXTtS
 gf/Jf9WVOaWIdnIu10lBI9DLS4GBsnzEUKvSU0Wy+Hofcj89ut98HbHtb+1RwZfItCGo
 pkyej2E46CyJB/u05oSKJ1KQG009uh6fwjxYC8ccnlKpfSIOWvSKOfjeqkemwEdYFUI1
 Inig==
X-Gm-Message-State: APjAAAUBFXQd8E/a8QUMulql7Aoek9CK77tYl8W8Alqq87i5hyUemfVd
 5E8CUIQaCCkVL7uWSFTTiC338SUWH4gctja4pD4zLePk
X-Google-Smtp-Source: APXvYqwCuj/yKxujk6z9EUvn0BzOnnNz9mwy8H6qMVjKlZwRITL2D4UhwvSR+aPPIEw68YoFUKxByH/EAyM3r4ufdKo=
X-Received: by 2002:a92:860f:: with SMTP id g15mr5172597ild.297.1582910549405; 
 Fri, 28 Feb 2020 09:22:29 -0800 (PST)
MIME-Version: 1.0
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
In-Reply-To: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Fri, 28 Feb 2020 18:22:16 +0100
Message-ID: <CA+_ehUwLrf539FPz8iWbb-k6An1b0YNd6HW1zpR86waiX=00NA@mail.gmail.com>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_092231_113446_823D868E 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7451993312249210597=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7451993312249210597==
Content-Type: multipart/alternative; boundary="0000000000000259af059fa61517"

--0000000000000259af059fa61517
Content-Type: text/plain; charset="UTF-8"

> Hi All,
>
> After a lot of hard work from many people involved, I'm very pleased to
> announce
> initial support for kernel 5.4 has been pushed to master with already a
> nice amount
> of available targets.
>
> If you are interested, feel free to test, send fixes or send patches for
> supporting 5.4 on other targets besides the ones mentioned below.
>
> All supported targets have been provided with kernel 5.4 as the "Testing
> kernel".
> This means you can enable 5.4 by selecting "Global --> use the testing
> kernel version" within menuconfig.
>
>
> *Big fat warning*
>
> While a ton of effort has been conducted, trying to prevent mayhem and
> fixing as many bugs as possible,
> support for 5.4 is still considered to be experimental at this point
> until extended testing has been conducted.
>
> If you would like to try it, please make sure you are able to debrick
> your device if required.
> If you still try it without any way of debricking it, you are doing so
> *at your own risk*
>
>
> Following targets are currently available and have been runtime tested:
>
> - apm821xx
> - ath79
> - bcm53xx
> - imx6
> - ipq40xx
> - mediatek
> - mpc85xx
> - x86_64
>
> Completely untested but provided as a baseline:
>
> - ipq807x
>
>
> Following targets are near completion and should be added hopefully next
> week:
>
> - cns3xxx
> - octeontx
>
>
> Kind Regards,
>
> Koen
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


Ipq806x is pretty much done and I think can be pushed as a testing kernel,
should I create a PR on GitHub?

>

--0000000000000259af059fa61517
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi All,<br>
<br>
After a lot of hard work from many people involved, I&#39;m very pleased to=
 <br>
announce<br>
initial support for kernel 5.4 has been pushed to master with already a <br=
>
nice amount<br>
of available targets.<br>
<br>
If you are interested, feel free to test, send fixes or send patches for <b=
r>
supporting 5.4 on other targets besides the ones mentioned below.<br>
<br>
All supported targets have been provided with kernel 5.4 as the &quot;Testi=
ng <br>
kernel&quot;.<br>
This means you can enable 5.4 by selecting &quot;Global --&gt; use the test=
ing <br>
kernel version&quot; within menuconfig.<br>
<br>
<br>
*Big fat warning*<br>
<br>
While a ton of effort has been conducted, trying to prevent mayhem and <br>
fixing as many bugs as possible,<br>
support for 5.4 is still considered to be experimental at this point <br>
until extended testing has been conducted.<br>
<br>
If you would like to try it, please make sure you are able to debrick <br>
your device if required.<br>
If you still try it without any way of debricking it, you are doing so <br>
*at your own risk*<br>
<br>
<br>
Following targets are currently available and have been runtime tested:<br>
<br>
- apm821xx<br>
- ath79<br>
- bcm53xx<br>
- imx6<br>
- ipq40xx<br>
- mediatek<br>
- mpc85xx<br>
- x86_64<br>
<br>
Completely untested but provided as a baseline:<br>
<br>
- ipq807x<br>
<br>
<br>
Following targets are near completion and should be added hopefully next <b=
r>
week:<br>
<br>
- cns3xxx<br>
- octeontx<br>
<br>
<br>
Kind Regards,<br>
<br>
Koen<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Ipq806x is pretty much done and I think can be pushe=
d as a testing kernel, should I create a PR on GitHub?=C2=A0</div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></block=
quote></div></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"></blockquote></div></div></div>

--0000000000000259af059fa61517--


--===============7451993312249210597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7451993312249210597==--

