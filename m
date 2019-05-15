Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B921F937
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 19:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KSZSKgE851Y9yFGwVlTsW3JU/PesZzj88mTmwQDGLuY=; b=obOgd9GUhq9FLvtKyJFl+nYjR
	c3K9y+gS1IOfiTarub7a2FFLnbVLW0TWdbk5GujcilZ6OXrsnDpgmU4VT+Zrm7gwhPKjuKbxJzByl
	NIT2PC43dFpP1AHogsv4jOFhNidcP4evPkhsxVL1R+jy/66LfqtnBgXS6lI65yAFBp4GYNSor4Hwz
	hQ4xRONuMXHim/h+HTEIWZ9Afhm/6G209JictwCJ3LmlXm2jNMqPCJqjS2pYslVK5QMhgTzAuMOM4
	tAO+SihGzah1BK9Q0/T4SKSmMwFH1urb+WMbyqjZSNGksxAEa2yIdpZl6HjT6ydpcxJpVoNBPJdiV
	S9+zQ9COw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxWh-0004qY-KW; Wed, 15 May 2019 17:17:11 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxWa-0004qH-VP
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 17:17:06 +0000
Received: by mail-vs1-xe43.google.com with SMTP id q64so453215vsd.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 10:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bkUmfFxAuA6EStu773Cg9ts4KiBgon2ZTaXRMbBHy1k=;
 b=fzjlmEnTktDyiQAzOwLmKKuY1170jBx23VoY1OjgX0fXhePa4W9BuU677KXBc+9Tx7
 3O6Qf3y7RfkmRXN3y02DO0/KepSFvT3dVok6EE9kC8+Q/6+xRDm5swZuODlfnYfYdXlA
 sPbYtRHctCEkX9xxJpicd9kkH69sQy54eumd3UjZWKei/mngglqDGoxZJfFQ7pzAKARc
 ke7AJW9PHc7uK4Ow8fnUp+l0bxL6eL6OwR9roEa3FqOaY9lev4mDQw1y9jXeCEiHrhz3
 l37ZjyP0qmHC7N+5rYA/yLSb2mCXpcKY8mqc7GkQFm61fkeOl4xQ7mRVukElddOuedRw
 Zk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bkUmfFxAuA6EStu773Cg9ts4KiBgon2ZTaXRMbBHy1k=;
 b=Ohx8M5lAbZi0aMrIkP6mQ9rISANiE269xIv0k2fZNBpnOX5HvW4+AXhGX0vnB8ZL9l
 Yu+FZZp/DZM3Q/nGUB+okcroj55u2+6AcrOLDDK3oEmp+bv49tGeFjtAKJiPo6lcP8Wx
 uDSb2szKGme2m59lBjfXxIit3E5RqmK4odriBTZb+4ENcO3oORexUWMyGecBuatWs6xs
 XW6o4OevswIoyL0tiG/XRkn42RwepoKfN9jvA8vkH5J/uANQirmrnRaW8TmRm0Ugga8/
 fbYvs192XYOvr7o9t9jfhsGWimIWM9fN82KrM0pcRL7FNsFbYZc9fb9TIzphqjRamr9Y
 wzug==
X-Gm-Message-State: APjAAAVKCBmthy0BfiHM8gu6mX31uhMMGjtngvlHhtyIgM2lfP6sJOs3
 AfHW/dd+09w5XZd3XZ8iuHMF5S92HNnpz7e/rPE=
X-Google-Smtp-Source: APXvYqxMIYHgEV9Z5II4oUvTKy8whjADSdzXXxDgm6a0D/NlJeIs9f1dclP/zceqyhfyhzvIW/py42VpVqLDYHA32tE=
X-Received: by 2002:a67:e8c8:: with SMTP id y8mr10230838vsn.124.1557940623259; 
 Wed, 15 May 2019 10:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190514134220.3626-2-be.dissent@gmail.com>
 <20190515155529.GA4938@meh.true.cz>
In-Reply-To: <20190515155529.GA4938@meh.true.cz>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Wed, 15 May 2019 20:16:51 +0300
Message-ID: <CAEdN=pF=kv5T=Fkui9f2fehsCB6wy1hHiyzZ=kqhOANJG002-A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_101705_037190_1DE12E83 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============0573538187872468200=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0573538187872468200==
Content-Type: multipart/alternative; boundary="0000000000006e3ef40588f051af"

--0000000000006e3ef40588f051af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 18:55 Petr =C5=A0tetiar <=
ynezz@true.cz>:

> Pavel Kubelun <be.dissent@gmail.com> [2019-05-14 16:42:18]:
>
> Hi,
>
> > It seems like sleep_clk was copied from ipq806x.
> > Fix ipq40xx sleep_clk to the value QSDK defines.
> >
> > Hope someone with datasheet could clarify the correct
> > value.
>
> what problem does this exactly fixes? Is there any particular reason why
> this
> shouldn't be sent upstream and then backported to OpenWrt?
>

There are no reasons why it shouldn't be sent upstream along with other
patches. I hope to find someone with datasheet beforehand to verify the
correct sleep clock rate.

Besides upstreaming a patch takes time while the next openwrt release
should be out soon I suppose.

This patch also contains a fix (node name) that allows the GCC driver to
correctly initialize the clock and its children (USB sleep clock in fact)


-- ynezz
>

--0000000000006e3ef40588f051af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D1=81=D1=80, 15 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 18:5=
5 Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz" target=3D"_blank" =
rel=3D"noreferrer">ynezz@true.cz</a>&gt;:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Pavel Kubelun &lt;<a href=3D"mailto:be.dissent@gmail.com" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">be.dissent@gmail.com</a>&gt; [2019-05=
-14 16:42:18]:<br>
<br>
Hi,<br>
<br>
&gt; It seems like sleep_clk was copied from ipq806x.<br>
&gt; Fix ipq40xx sleep_clk to the value QSDK defines.<br>
&gt; <br>
&gt; Hope someone with datasheet could clarify the correct<br>
&gt; value.<br>
<br>
what problem does this exactly fixes? Is there any particular reason why th=
is<br>
shouldn&#39;t be sent upstream and then backported to OpenWrt?<br></blockqu=
ote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">There are no =
reasons why it shouldn&#39;t be sent upstream along with other patches. I h=
ope to find someone with datasheet beforehand to verify the correct sleep c=
lock rate.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Besides=
 upstreaming a patch takes time while the next openwrt release should be ou=
t soon I suppose.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div d=
ir=3D"auto" style=3D"font-family:sans-serif">This patch also contains a fix=
 (node name) that allows the GCC driver to correctly initialize the clock a=
nd its children (USB sleep clock in fact)</div><br></div><div dir=3D"auto">=
<br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
-- ynezz<br>
</blockquote></div></div></div>

--0000000000006e3ef40588f051af--


--===============0573538187872468200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0573538187872468200==--

