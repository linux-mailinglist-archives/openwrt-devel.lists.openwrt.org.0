Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FE01DFABA
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 21:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HjyC0T38vFb2u3WWXEAzDRG/Xwb1bhDVJfGXQdQV/Lw=; b=ORyBwycC8aKHpsS5UPSjaBUmw
	EXiJoiKXud3jCyHnu1UOkPNWy3bUoyVRDfQIdxl0+RjYQryTG2DcYpnMZjDOrCY98nE/dAaWiwPr0
	j7SUoUPyOIWmSGcMuCePC3jcJZCDlQs/8hKN87EgUX6Kwgy9TfEWnLAK+Ah4IOBCS1Q8OZxsu1CM4
	Qo9Xlx53BzwLCcoMnWYkDBiAb3pgUDlk5XjlSM+P/WbJZ5SV/Nde03tc7Y6xOg69G4pHhcz1OE9Ux
	srPwZqC0P8hem3nS0IwIqqX5nt0DWW9EfqXH7gBOj26wnCM93gVQb9zK3A/US/YQ/qtPwIWvPXbJh
	j7bw+6L9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcZwQ-0002XB-8x; Sat, 23 May 2020 19:36:18 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcZwF-0002Wp-Gi
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 19:36:10 +0000
Received: by mail-lj1-x235.google.com with SMTP id k5so16586319lji.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 May 2020 12:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wYafuApwz0S+xMWNq8bhFQDW25y0A74wkBUBxPIPqU4=;
 b=2FEmiPWKzhNjS7gmu1ISoMjkSZqEuitknCbO+jXYWfoYGXfaufOn0xbeHn1JLZ43l0
 Vrh+25uE7YiCW+yNiu0tgV70bR6Ah6in51jooMZIHLEp3/K/F/LH7e6ckzb7akjQJtLO
 LVu4h//v3wOX2X5IPEvnirIiu5goe9lqsb51JbXMAp4qymXyqaWKFADKptHN8AAVniJ/
 ssBBzxM2y/xzGASYB2Du6HnV5fPFp8H0FndQpUmIvVQXzBgL7CGrjanrZwVSOT5QB6Ht
 3kxUqTdk9LQSEij9ShrFymXtkJ1cuiss3SDF9soCGiPV77J0gnI3Q/JZCdK3YrKIQuGl
 rOsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wYafuApwz0S+xMWNq8bhFQDW25y0A74wkBUBxPIPqU4=;
 b=r8VxgB1G6aBK7HI0Ua2rFGlJ/iiMQrfAVMIzkpCULTpY8LlBpNfvE9vJdF5e6RSNQ2
 XmcSnd5hUcS42WBICfGIQ0I6yo2ZEYfPtgs2r5aJKlLlhCYaTluuvXARMWb6t0io2MRX
 QYmKGvPQ+RZiqd97RIKH3fMjV/Qba0r995E4vCkJYDW8TTZdD6/GihCy6RcqmscAu+FN
 aGWJ91Jvz4jwq2hCyit8OQp+580sht4HDsiI/omM/79ij1rspZBk49I4rb5Czp+HqzAH
 cD5og50SvANm868OWTb3tBzSXcZHBP03eMYpHk97+Pqosrk/boOCEPSEFKKkgLCe6o2t
 ry9A==
X-Gm-Message-State: AOAM5337AXAZfousWiwK97v0MjihCDzHM3KxdeSpuC/TNi9v7ID0KK7E
 W3w0Q3d/P7frwQsboFUpQ/qNA0hd9q8yROTtSac+kmcq
X-Google-Smtp-Source: ABdhPJzIKO1JRtB5W2STCK6lAhJv6WgAK9d47tDNtWn7DCOFIfyPRuoiYwCdb+E2dGxa2kbayVDE7xWsaXOIxgOwVnY=
X-Received: by 2002:a05:651c:120d:: with SMTP id
 i13mr7803252lja.381.1590262563559; 
 Sat, 23 May 2020 12:36:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAAP7ucKJ78gCg1y+60afcL1rYw4XpHxwwdZv97DweGLesaNfCg@mail.gmail.com>
In-Reply-To: <CAAP7ucKJ78gCg1y+60afcL1rYw4XpHxwwdZv97DweGLesaNfCg@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Sat, 23 May 2020 14:35:42 -0500
Message-ID: <CAJQUmm6vjAkiGA+u_CRUG40=r_TBpJJJwUfP5uKdoOpjuN56Kg@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_123607_556964_A3028557 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] netifd: per-interface MTU settings vs per-route
 MTU settings?
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
Content-Type: multipart/mixed; boundary="===============1680339491767106494=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1680339491767106494==
Content-Type: multipart/alternative; boundary="000000000000336f6805a655db57"

--000000000000336f6805a655db57
Content-Type: text/plain; charset="UTF-8"

On Thu, May 21, 2020, 07:44 Aleksander Morgado <aleksander@aleksander.es>
wrote:

> Hey!
>
> There's an ongoing discussion in the ModemManager package in github
> related to how the MTU may be configured in the network interface
> based on what the MM bearer object reports:
> https://github.com/openwrt/packages/issues/11383
>
> E.g.:
>
> $ ip route show
> default via 25.225.105.222 dev wwan0 proto static src 25.225.105.221 mtu
> 1430
>
> Looks like the protocol handler implementation for netifd may allow
> setting the MTU to the routes associated with the network interface,
> instead of assigning the MTU value to the interface itself. Are both
> methods completely equivalent? Is there any reason to avoid setting
> the MTU in the interface when using netifd, or just not implemented
> yet?
>
> Cheers!
>
> --
> Aleksander
> https://aleksander.es




I'm actually not aware of any method to set the interface MTU via netifd
that isn't a UCI setting.

There's very little documentation about the supported ubus methods and
parameter formats.

Does anyone have information on this?

>
>

--000000000000336f6805a655db57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, May 21, 2020, 07:44 Aleksander Morgado &lt;<a =
href=3D"mailto:aleksander@aleksander.es">aleksander@aleksander.es</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">Hey!<br>
<br>
There&#39;s an ongoing discussion in the ModemManager package in github<br>
related to how the MTU may be configured in the network interface<br>
based on what the MM bearer object reports:<br>
<a href=3D"https://github.com/openwrt/packages/issues/11383" rel=3D"norefer=
rer noreferrer" target=3D"_blank">https://github.com/openwrt/packages/issue=
s/11383</a><br>
<br>
E.g.:<br>
<br>
$ ip route show<br>
default via 25.225.105.222 dev wwan0 proto static src 25.225.105.221 mtu 14=
30<br>
<br>
Looks like the protocol handler implementation for netifd may allow<br>
setting the MTU to the routes associated with the network interface,<br>
instead of assigning the MTU value to the interface itself. Are both<br>
methods completely equivalent? Is there any reason to avoid setting<br>
the MTU in the interface when using netifd, or just not implemented<br>
yet?<br>
<br>
Cheers!<br>
<br>
-- <br>
Aleksander<br>
<a href=3D"https://aleksander.es" rel=3D"noreferrer noreferrer" target=3D"_=
blank">https://aleksander.es</a></blockquote></div></div><div dir=3D"auto">=
<br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I&#39;m actually not aware of any method to set the interface MTU=
 via netifd that isn&#39;t a UCI setting.</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">There&#39;s very little documentation about the supported=
 ubus methods and parameter formats.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Does anyone have information on this?</div><div dir=3D"auto"><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br></blockquote><=
/div></div></div>

--000000000000336f6805a655db57--


--===============1680339491767106494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1680339491767106494==--

