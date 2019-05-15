Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5561F668
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 16:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S/HnxJwkaIMgS+V5CG+3LvRVUC8U0pSuetEcrfKRG2c=; b=Upy8p+LJY9JUiq3h7HdHm2iBd
	tgu8kYDbKvind3A0GwbMilCgFbYdjRUkvxVxfVNrhKjb8R3/NjvE5PSfFVWztf+8GP2k3adzyD/kw
	MzZo2CBoQUoRNsM+O5QLGrMyZy+sSBWRPvRgDlStKhnpkARG3tx+Llqbf/nu/a2S/CDxWsHS8KVWX
	17oLaAf9zWab1HYlj+jfhG0tzTGjNOXviMI56vYURblTJxON075EUKlmf6Bp30BxQ/sXzyy4+6+EQ
	W+Qk8lUV3LLQ9Z0GswuqyfOaQEaRp6rEyoGRTbYrfiNSPlCJPhXLA6K0q4zKnzzieLOGzzHAdSh7D
	zR/hCl32g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQukZ-0004k8-F7; Wed, 15 May 2019 14:19:19 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQukT-0004jq-0Z
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 14:19:14 +0000
Received: by mail-it1-x141.google.com with SMTP id u16so5622761itc.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 07:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rqtJ9eJg8CzDnz8kmsX/Iwh4+QLMJeYMyeZgJX1wNJI=;
 b=Zjzc9hcR3JZFiVhje+neO9nTXGkeBoOmC/dZq4sGkMVv80V+im/osDbyyjOtQnBdmc
 HAKEkwx0BzJtYd5S8p8E9EUeqVRT4yJU+62CpBIOfPyzMYZzQNh5Vxg64eAE8f12ATJy
 WyXCS3EJ/oszCYNYCMV9zQwBJbMqAxjyWBi/rfhp55WK5ydzHU+tqdL4NYSPvFecj2cn
 SwqowlZe6CvGnRbHO7fENFdQouqjFrNfv8VulUijdH2CvicM1o/tCZMtU3f5Ib0QXfI1
 zw8FMJ3eUw6L/RIdHru4hrZ2ERcTWvXP0CMSZ95/LOOCKPOH2kYsu+Cm2ZDnaVsWCVzv
 P7vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rqtJ9eJg8CzDnz8kmsX/Iwh4+QLMJeYMyeZgJX1wNJI=;
 b=SGpKziYoScHT3cOn76EMMLwCgMmwaaL3jxXnUgwDRYmpSvwzjEl5Y8p7Nr/OtNCIsS
 cjitChQcM6qR2LGwqFqeW0+5Husf3xmqySfeg/7wa0ooUMsYHf1vGL270YLW3bd9nwZQ
 /xYlC0z1MCh4h/K2Tjb6uW9s3h41szeC7uKZxX9UKDdoJOWSlr9G9ulfMhwB+DlTsa72
 P/rIFH6OlYmw3ZUGq5rGqsaqwr3ntxalv/Bp88e5/z0qaHQjtmpC9oyWhMvR+vfza6ub
 F77vVy3fmgoHU9fQ8CTlWgzgkhTGmzRO4u9LOUGcZ6n9ihEUHEm2eNg/BVae0GNemkX1
 r3YA==
X-Gm-Message-State: APjAAAV/FAoJUgxJnJKH19xWkfKRdCm0YK24byB+6MHXUGMA2De8/vTJ
 PbAM1yF3kDEkYZxZpnWHxXUkaJGAoiX6AcrDsz8=
X-Google-Smtp-Source: APXvYqzPK9yVA+pqM33RD24ROht8mPplVDCUMFkiwVYeRfbvVsJnK38IAtBGi16zVBtQrJrUQpdscVZtQ4g/SI1o9mY=
X-Received: by 2002:a02:1142:: with SMTP id 63mr26901702jaf.19.1557929952094; 
 Wed, 15 May 2019 07:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190502173327.23285-1-jeffery.to@gmail.com>
 <20190503093959.GG346@meh.true.cz>
 <CAJXyS=gLNzkQ4aMavWd6adrS0OiKWU-uwTMxu3bEoUztRWD2PQ@mail.gmail.com>
 <20190515132409.GB30259@meh.true.cz>
In-Reply-To: <20190515132409.GB30259@meh.true.cz>
From: Jeffery To <jeffery.to@gmail.com>
Date: Wed, 15 May 2019 22:19:00 +0800
Message-ID: <CAJXyS=hPMNfBOTdad48Hgw5-kSMnni4vDh-ERN+7i5DcJXdazg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_071913_057953_280CB883 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH] build: fix STAGING_DIR cleaning when
 filenames contain spaces
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
Content-Type: multipart/mixed; boundary="===============3999751673003909967=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3999751673003909967==
Content-Type: multipart/alternative; boundary="0000000000006135950588edd5eb"

--0000000000006135950588edd5eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2019 at 9:24 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Jeffery To <jeffery.to@gmail.com> [2019-05-15 19:03:16]:
>
> > If you prefer, I can change this to use ksh93 syntax[5]:
> >
> > IFS=3D$'\n'
>
> indeed, I like this a lot more, and
>
>  IFS=3D"$(printf '\n\t')"
>
> from that TLDP page you've linked looks good as well, seems even more
> readable
> to me. Anyway, I'll leave the decision up to you, both are fine with me.
>

 Sure, I'll change it to IFS=3D$'\n'.

--0000000000006135950588edd5eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 15, 2019 at =
9:24 PM Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.c=
z</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Jeffery To &lt;<a href=3D"mailto:jeffery.to@gma=
il.com" target=3D"_blank">jeffery.to@gmail.com</a>&gt; [2019-05-15 19:03:16=
]:<br>
<br>&gt; If you prefer, I can change this to use ksh93 syntax[5]:<br>
&gt; <br>
&gt; IFS=3D$&#39;\n&#39;<br>
<br>
indeed, I like this a lot more, and <br>
<br>
=C2=A0IFS=3D&quot;$(printf &#39;\n\t&#39;)&quot;<br>
<br>
from that TLDP page you&#39;ve linked looks good as well, seems even more r=
eadable<br>
to me. Anyway, I&#39;ll leave the decision up to you, both are fine with me=
.<br></blockquote><div><br></div><div>=C2=A0Sure, I&#39;ll change it to IFS=
=3D$&#39;\n&#39;.</div><div><br></div></div></div></div>

--0000000000006135950588edd5eb--


--===============3999751673003909967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3999751673003909967==--

