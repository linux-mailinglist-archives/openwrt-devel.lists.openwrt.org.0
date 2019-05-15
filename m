Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346AD1F4EC
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 15:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xe4TKZ5xPOJqIrvXlbRuQUxBA1duTa6FUzPBDt+eOTU=; b=hl46rzHjEzcosh5GbGBFYiRe3
	60c4Cn7QNozQzuJCSyVOBSW2OBFOZzXGh+W3sEOKgiMy55+D/VPY6CqH84n6wWaYwQli4zCB18dwY
	MQ5CxSFCyY0JnwOp8V1EjDGciBHpk4g7tJuK7UrPI2PhRQTsBGa1EOl4T7Dk2W73mErX50REmdMfA
	k1WBC9aBzRuxoO24wAfOISEYio+AUXx2X5/lYJxH0BGv4ZSb4lmHkvc5n2g/g1t9T5CK4gSIFWVbd
	kCwUBa6i4BY4nmpdQ6R/KcLgXpS3hyY4CdFfcsKWKiNxu0LKPZc7wJkbfzYPrg6lyzBp7Lcsu8Ro2
	1LCg8/u6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtWa-0005ol-SI; Wed, 15 May 2019 13:00:48 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtWT-0005oH-Eu
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 13:00:43 +0000
Received: by mail-it1-x143.google.com with SMTP id m140so2932440itg.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 06:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SXW44IvaMNe2YXEsHfnSwt9mCIVA/Zkf27MJDzPTv1o=;
 b=jS6Q/PIBToNn+19ZcqaWNDvJz7tonpllK4ptBnk7auHjHhcBqyi7/v5zk1q09ua1Qt
 pMf3dfaaWcT0CNCEgeLzCPCOKeT+jWzkqJ4/fce5NVnIj4YEitazJDc8OFaQVYRedE/z
 BOnMC+3D2H0KJhHFUHINQTPGeaifFftN5P4RubT92w65rF7thDgABncqOEoWNuvf+aQ9
 BL1DviVC8CiD7nfn+Vb2dpeLXkE05G+OVdaYzgFaxK9wNgwhKkHKldD1RqTLxJl3zPes
 jI3FiEjKDmTEMLcrExyif61bbpeiGv66yXDfKTeQzbv2EjqCQwvbsiGpd1gLftfeuHl/
 AN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SXW44IvaMNe2YXEsHfnSwt9mCIVA/Zkf27MJDzPTv1o=;
 b=Lawrl3vdFWVYdSIjllfoegmN4HxRz+NU5HHLWVPSePBaEqCYjEM6vQf4/U0zELgcFP
 NCXkgAslJk3EscWSVHG20F98rZVsuLwQ0YwRRx7/RQIVBlLpRcvrKiHsgb4eNIzYZx+3
 67r/wYBXzd+W5NYo6vB3bey1uoqRD7IimK9tDy4sn6xcWLH8K8sXKU5zfP37gHvI4hm6
 XKcI6P3YaLgVqYdIz/kkoHHdLXNgN34WkYtwJrunv2c7OtycEqVJtns2tKmbJ1oUhXsA
 nbeJF68UUKErsSnPnDAIF4tYlGpD3/SrALkDu5gbg1zM1FjaTHFpiSLirMyWqzdeUv4V
 3JpQ==
X-Gm-Message-State: APjAAAUKogX7wEEufSbatn9pgG0qotp4OET9jPVr7tAzuprxnpFWdbdg
 ur7lGlfBBiwsf077i64S+Ot//rm9atr90E/m4EgNTw==
X-Google-Smtp-Source: APXvYqzW3WAT54HVxTnlbGDoAO5o8w/3LjWmk3Ve5qADsFjA/hxUqj7NvHHYW7f0cfCCshBfFOmQyudvoxKG8G71IVw=
X-Received: by 2002:a24:598e:: with SMTP id p136mr1543224itb.32.1557925240478; 
 Wed, 15 May 2019 06:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190502164706.31453-1-jeffery.to@gmail.com>
 <20190503093230.GF346@meh.true.cz>
In-Reply-To: <20190503093230.GF346@meh.true.cz>
From: Jeffery To <jeffery.to@gmail.com>
Date: Wed, 15 May 2019 21:00:28 +0800
Message-ID: <CAJXyS=i6OLmO-9nxOEqVgonHggXk5iAHAT-DHJRVO3vhCzpfxg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_060041_496025_5851DAA2 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] zlib: Use relative paths in pkg-config
 metadata file
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============3485475415548996762=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3485475415548996762==
Content-Type: multipart/alternative; boundary="0000000000008ba5140588ecbcb2"

--0000000000008ba5140588ecbcb2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2019 at 5:32 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Jeffery To <jeffery.to@gmail.com> [2019-05-03 00:47:06]:
>
> > The default zlib.pc file generated by cmake contains absolute paths.
> > This patches the file to use relative paths (relative to ${prefix} and
> > ${exec_prefix}).
>
> I can see that from the diff already, but I miss the information, why do
> you
> need this change. Could this perhaps be upstreamed first as well?
>
> -- ynezz
>

The buildroot pkg-config (in staging_dir/host/bin) overrides the prefix and
exec_prefix variables in *.pc files, to supply the correct (buildroot)
paths for callers. If other variables are not defined relative to prefix
and exec_prefix, then the returned values will be incorrect.

A similar change was merged for xz[1] in the packages repo.

I'm not sure upstream will want this change, since what is there currently
isn't "wrong"; it only affects our cross-compilation.


1. https://github.com/openwrt/packages/pull/8880

--0000000000008ba5140588ecbcb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, May 3, 2019 at 5=
:32 PM Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz" target=3D"_bl=
ank">ynezz@true.cz</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Jeffery To &lt;<a href=3D"mail=
to:jeffery.to@gmail.com" target=3D"_blank">jeffery.to@gmail.com</a>&gt; [20=
19-05-03 00:47:06]:<br>
<br>
&gt; The default zlib.pc file generated by cmake contains absolute paths.<b=
r>
&gt; This patches the file to use relative paths (relative to ${prefix} and=
<br>
&gt; ${exec_prefix}).<br>
<br>
I can see that from the diff already, but I miss the information, why do yo=
u<br>
need this change. Could this perhaps be upstreamed first as well?<br>
<br>
-- ynezz<br></blockquote><div><br></div><div>The buildroot pkg-config (in s=
taging_dir/host/bin) overrides the prefix and exec_prefix variables in *.pc=
 files, to supply the correct (buildroot) paths for callers. If other varia=
bles are not defined relative to prefix and exec_prefix, then the returned =
values will be incorrect.<br></div><div><br></div><div>A similar change was=
 merged for xz[1] in the packages repo.</div><div><br></div><div>I&#39;m no=
t sure upstream will want this change, since what is there currently isn&#3=
9;t &quot;wrong&quot;; it only affects our cross-compilation.<br></div><div=
><br></div><div><br></div><div>1. <a href=3D"https://github.com/openwrt/pac=
kages/pull/8880" target=3D"_blank">https://github.com/openwrt/packages/pull=
/8880</a></div><div><br></div></div></div></div>

--0000000000008ba5140588ecbcb2--


--===============3485475415548996762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3485475415548996762==--

