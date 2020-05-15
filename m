Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E651D581B
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 19:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sc1mwsNEAvsCYkASLKeMJkXsENzQFHO255do3jMvKPg=; b=UsFXE4P3wIL7E45eLxnLdvSDs
	/dUHd7bio+PnkBvWpy0oPibCWeE0pZceIn3X8EdGpQINeB9d+R3BPTRgJpAENXRQ1hMfUfAt4UwkR
	TwNXPM/AmVnv++yt7QlYP5Dh0yXvVsy2MvEY3ktO4xLOtUMKRaTrEgfbDfJtWqpDTlakvYe4puRMo
	x7LQnIJ4y0DvWnAZXen06doi5NtXYegbRzGn43EdQAHips3fuVO4/p0bSF7OO8sG0kjkCTqdJ0hy9
	yyf/fcHDjAj5SAeJIuobJXQ2Iu6yPgeTrKxI6ISnnhc0llWNCyflks1rvmuIjBNDh4LXQWWD6cJ9x
	QPpjChasQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZeHt-0007WP-AJ; Fri, 15 May 2020 17:38:21 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZeHj-0007Vy-6u
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 17:38:12 +0000
Received: by mail-lj1-x22d.google.com with SMTP id b6so3144016ljj.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 10:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L+c8lY/BDCDFkUrY0hBK50fvzzvrYm5GmnEebwGDy/s=;
 b=ObkgOAb3/h/NyfDr/t3ndZYp4xigtFCZF2g17r7lo14UNBXlWC8SDJAWlBdUExkzHA
 AwuYIhg3QReYaFJx/GRBoua/gr7UOgPqN5b7gCjH1nb77PxoJuxpDl/8xWu36IXgEvD9
 0FlfTo1yxpRPsujVVpMznzLpnuC/V/WJ5DMlTFLOSHF7IMmszltE5lq8508cbb0jTqME
 vOv2JMqMSpG2xv8/SNPK2Ue4pPyLX1+PIHeW3yhFzU9jV0VphWWcdV66SJm6OPRu4FlZ
 ZtMtGhYsTVEg8tQ8irjHkA0yhpkY2TLcPHz+qn8C9kEfwJPyxIOTuD/+/8Be4dCIOr6x
 CYnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L+c8lY/BDCDFkUrY0hBK50fvzzvrYm5GmnEebwGDy/s=;
 b=XeqCBes4j4kYTdNF2cPWjD5sP+s1uKlQ9ediCH5K8Lh5vjthMG7R2FX90NJZkdVqcU
 +6ygD1S3hup+cFhMRYtyVZj21y/Ek8JDzvBusVqLWF44MDP0hEpN2In1J3Bdbqr4IqpY
 TDd8Z7AKCwmruLi4lVn0g36aMquKsDBIbueBPQ62hY6DnMC1CnA72loDQZLSLLghp9RI
 Ala52aKT/IMZ4TvMf5eeHMrrGPuFTJuceHkmn9wJfRsLsveD9Pk9rRi0NWBukNGX6FxX
 BGmr8BEiC2rFjJtI4kh3PsaqMp7Nescm1lBC1DXFt7IjqkAxq5hilOtycgUgOK7cIcac
 jPcg==
X-Gm-Message-State: AOAM533polYVkNhX134mEoeTK6J3XMWShbFuWg08n2dlMgfNuDPclZ7T
 K5ZVc9GAs/T4VhUNBTjh6arxH5pW1tuOP3iJknpdkA==
X-Google-Smtp-Source: ABdhPJyuaE6MZm+PXHBk/GKXhtGyhVLyeKaavp1JAElLZ7+R4xMswQ7ShiyFp6+sarmL0JItCRkwdSKcJIZEuCv8ctY=
X-Received: by 2002:a2e:96d1:: with SMTP id d17mr2907780ljj.239.1589564289245; 
 Fri, 15 May 2020 10:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <20200515065807.GE69771@meh.true.cz>
 <8399572d-49ba-0eaa-b4c8-5bc1771ec78c@nic.br>
In-Reply-To: <8399572d-49ba-0eaa-b4c8-5bc1771ec78c@nic.br>
From: Michael Jones <mike@meshplusplus.com>
Date: Fri, 15 May 2020 12:37:57 -0500
Message-ID: <CAJQUmm6d-08Uhng4tdqrk=Hyj5Wxs_S-9V7nX07yA=dF49xLCg@mail.gmail.com>
To: Henrique de Moraes Holschuh <henrique@nic.br>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_103811_255668_220ACC65 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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
Content-Type: multipart/mixed; boundary="===============6595006285537828540=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6595006285537828540==
Content-Type: multipart/alternative; boundary="000000000000cef5d305a5b34619"

--000000000000cef5d305a5b34619
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 15, 2020 at 9:57 AM Henrique de Moraes Holschuh <henrique@nic.b=
r>
wrote:

> On 15/05/2020 03:58, Petr =C5=A0tetiar wrote:
> > In other words I think, that one can solve this use case with current
> > solutions, no need to bloat procd.
>
> And if you're going to bloat procd, it pays to look at what the
> equivalent systemd functionality provides (it has a per-service
> application-aware watchdog and a
> please-wait-a-bit-more-I-am-doing-a-clean-shutdown API), to better know
> the problem space.
>
>
I have a mild objection to the quick jump to the word "bloat", which I've
observed used on this list frequently

That being said, yes, I'm a heavy user of the systemd watchdog
functionality, and is part of the reason why I want to add this to procd.

Thank you for making sure this aspect of service management was brought to
the list's attention though.

--000000000000cef5d305a5b34619
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 15, 2020 at 9:57 AM Henri=
que de Moraes Holschuh &lt;<a href=3D"mailto:henrique@nic.br">henrique@nic.=
br</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 15/05/2020 03:58, Petr =C5=A0tetiar wrote:<br>
&gt; In other words I think, that one can solve this use case with current<=
br>
&gt; solutions, no need to bloat procd.<br>
<br>
And if you&#39;re going to bloat procd, it pays to look at what the <br>
equivalent systemd functionality provides (it has a per-service <br>
application-aware watchdog and a <br>
please-wait-a-bit-more-I-am-doing-a-clean-shutdown API), to better know <br=
>
the problem space.<br>
<br></blockquote><div><br></div><div>I have a mild objection to the quick j=
ump to the word &quot;bloat&quot;, which I&#39;ve observed used on this lis=
t frequently</div><div><br></div><div>That being said, yes, I&#39;m a heavy=
 user of the systemd watchdog functionality, and is part of the reason why =
I want to add this to procd.</div><div><br></div><div>Thank you for making =
sure this aspect of service management was brought to the list&#39;s attent=
ion though.</div><div><br></div><div><br></div></div></div>

--000000000000cef5d305a5b34619--


--===============6595006285537828540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6595006285537828540==--

