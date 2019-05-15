Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE62F1F681
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 16:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gTTwGK3++x/UbfMfQfb1V4prTi26R8uKSq8d4bPzfnc=; b=avfIc663XFlLd1yfLHSIjgbaK
	sg/xXTeZqF9+gHICHP4X7cuY2IA4fky4zh0wMMK9WP+aHB1lWRV28xa45fAV1tdz9ByEtCWWqiap0
	wuJKKvpkbhVe9Tuu/3Y95hrQ+Q6uXNDgpw3EkbDw1pgZsPWMhEc5isUTg0G7r3uPWLBGOwCoZTsCD
	2ic0tnfZyyCj6DiivAhgnGuvNL9wiztKWGiyXTWA6yrjDOcqCLk/UIqAYi7BpcAX/vdxq7P5RGppy
	AIGE9MyNQv8hnre3wwGdnTWZJFYmtxlSvHRXf28Ptub9H03bCScw0hBVx4MK2u/zX5+kAEPFvOZ2+
	OmCsEOqcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQurX-0008Gs-60; Wed, 15 May 2019 14:26:31 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQurP-0008GX-4j
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 14:26:24 +0000
Received: by mail-io1-xd35.google.com with SMTP id q21so2337375iog.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 07:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yUn2mSIXYZFRBMlafVDicErZ6wkOIPwPF8+i+4Kjxy0=;
 b=Xm6imLOS7TSwbvzmSekrtf8rOZ7QTrdUEOFnl0+R8Qtz5SjmpKOpJpqYNF5ALSMfQw
 YoGHCmzH1935EQiatHTwB9iUmlLPjsUjU3uFbfQ1p69akfvjSmKT7CdCucbWYXq+YFft
 SuUCdMVRS4bAxf1j2V2TSCmhYGPOSz3pqRfg6TCMA8PJXdDozFTM/ZiG0umwN6aSIl6E
 YNSXi6pAZ9XdEjlyS45gxKhv5Xq3WuSSUFe5HedkinE0RQfbQKf+udpn7gJSTN4VqKsZ
 K+O9td2QZ5O3y9SZxLvC7MBYFabw2ewahnEvVk0g67/UxoV36Naq4G4/WyW9jUe31Z6d
 I+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yUn2mSIXYZFRBMlafVDicErZ6wkOIPwPF8+i+4Kjxy0=;
 b=PF6SsPlMdh9XZS15YvCr2NlDrakzhFiVtQ9gFiY6iRhC/QskJ5+QSZJXhqRSPvURX5
 TP0uYgdXJWkmvHYOscXX4QOpMg9oCeZsa7I+YEqUJHi2kT/1vNsUGHcZvD4NbK/majF3
 +0DL1PfaBGCyizJJVxyHEYouueBgCRIHmq7o1Hiq5fETm3nbAHozzlSk62qKDVPcUddm
 n9I1SiO26jPoc4WVuRPt9YaATX6h3iattVieVUWTAPA2I3GiU4//r3gMTqFvI/c7bvqQ
 I1BMWhNSKARhb+4CQOMgpiND+e+gM7FrN1l9rnjYWdu9cdOeQBf4j8dmYCl2RchQgdPL
 lyEQ==
X-Gm-Message-State: APjAAAUuyfWD8KSEbLgs8zBy0MERRk9qtmJPjgi0zpqojC5AAY6vSoVr
 zh7bpVwrxU9OQjINdeUpSAfandl3GgMoqKNszWU=
X-Google-Smtp-Source: APXvYqwYczEfLfJIjZaBcAJNkPhLCpma4kk16ejYh8ddngHEzxvsaDVwbI9XxiIBIj8/RCrSgQ0QPdl/VcfcvykFy3k=
X-Received: by 2002:a6b:7006:: with SMTP id l6mr18027754ioc.161.1557930382190; 
 Wed, 15 May 2019 07:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190502164706.31453-1-jeffery.to@gmail.com>
 <20190503093230.GF346@meh.true.cz>
 <CAJXyS=i6OLmO-9nxOEqVgonHggXk5iAHAT-DHJRVO3vhCzpfxg@mail.gmail.com>
 <20190515133330.GC30259@meh.true.cz>
In-Reply-To: <20190515133330.GC30259@meh.true.cz>
From: Jeffery To <jeffery.to@gmail.com>
Date: Wed, 15 May 2019 22:26:10 +0800
Message-ID: <CAJXyS=hTdGUVkbe9q_-FV=_G9y_J3g4MR3u7dt9K=OS4a85bng@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_072623_186282_DA87F842 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d35 listed in]
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
Content-Type: multipart/mixed; boundary="===============5007515061984652982=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5007515061984652982==
Content-Type: multipart/alternative; boundary="00000000000003efbb0588edef6d"

--00000000000003efbb0588edef6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2019 at 9:33 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Jeffery To <jeffery.to@gmail.com> [2019-05-15 21:00:28]:
>
> > The buildroot pkg-config (in staging_dir/host/bin) overrides the prefix
> and
> > exec_prefix variables in *.pc files, to supply the correct (buildroot)
> > paths for callers. If other variables are not defined relative to prefi=
x
> > and exec_prefix, then the returned values will be incorrect.
>
> Ok, makes sense, so can you add this explanation to the commit message
> please?
>

Sure, will do.

--00000000000003efbb0588edef6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 15, 2019 at 9:33 PM Petr =C5=
=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Jeffery To &lt;<a href=3D"mailto:jeffery.to@gmail.com" target=
=3D"_blank">jeffery.to@gmail.com</a>&gt; [2019-05-15 21:00:28]:<br>
<br>
&gt; The buildroot pkg-config (in staging_dir/host/bin) overrides the prefi=
x and<br>
&gt; exec_prefix variables in *.pc files, to supply the correct (buildroot)=
<br>
&gt; paths for callers. If other variables are not defined relative to pref=
ix<br>
&gt; and exec_prefix, then the returned values will be incorrect.<br>
<br>
Ok, makes sense, so can you add this explanation to the commit message plea=
se?<br></blockquote><div><br></div><div>Sure, will do.<br></div></div></div=
>

--00000000000003efbb0588edef6d--


--===============5007515061984652982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5007515061984652982==--

