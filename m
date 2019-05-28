Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E9D2D0E5
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 23:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yqwpcKeHcttIP9NMnqQ/v1Eed7wUQyqjEZtjWIDPB5E=; b=FoLZOJFuk+lFUnusAZo/uNU1z
	W05ZEKQ1M3UUJ6Krwvl5+gyB6i3wR7tp4/W9SephE2cTVIe/ppXkFSUAA0jHUw848WXCmOhIY9efA
	eprAJ6I4iYUk5gZZ8j1KspRavXaKeLVIKXczOXWANUN2qIXVmVt3tWd9CJoF0YfrTn2Lf+Mn1PIYK
	VD180Sca99XhnZpD79yNonEIdFPt3EG2DWk/G9f9TQ7KyHbfjK7yCd/62FzhmwMPrN26z56RouWWS
	JniYeGGZOZoSXwDwdPiDExN26ZOHULexcg2Ee0cL+oy1S6eV+0Nd6pA2YiPZRSiluE6kiyR7q2iQ8
	ay8mKVvHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVjTG-0000m4-Ad; Tue, 28 May 2019 21:17:22 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVjT8-0000lb-EK
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 21:17:16 +0000
Received: by mail-oi1-x244.google.com with SMTP id w9so255093oic.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 May 2019 14:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rbeBeZUJAlfYFcRkV2crTjq1cb9292Yb65VKxeskmiE=;
 b=n/etwEA4/PqH3qnJ3H6pcKeUUggaiB9LMbqkeftuoJvLNGY9hDrlXary5e3VAwrsKl
 U+vm0fAIsgvqb0KDzjGlmqpkPf3YLiSHzJi7ffWINv/vBWA7bBUgD4sfq7YeO/HRcexY
 /My6eI6K8q7Z3ygHdSTfbTLzMj3JT1Qb6/CCLdh9aCbDbqAHxJxAHdTluYDXKNq/6RNs
 z8nG9NMYuRX+K/Czda+J3gpJIet91VSMfSU1jF+CShLFIWXJphUHjcIg1a3V7PFXaw7a
 KCunkDvUKbvI6Tmm80vyWPGeZpFFwUjKJ6v7nq+5w9XG/rxDzV3deKZHCZCDtW+kEHoO
 u8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rbeBeZUJAlfYFcRkV2crTjq1cb9292Yb65VKxeskmiE=;
 b=BcpNc1VcNkquhYyR9Y1gETs6PbMdPV76EIjiHJ0rT1Emq5gxserVoWmSujyKYej3jE
 pw1TVxG2Z8fyPj62pCPOMfG10tFwp7DXcFDu0Lz5uz+xuBBo04G/hvHll0hEMYI/6pjZ
 EvLQgEtrXdgLuwxFcbehTg9XMNM4q27W7q6k6h+W9ZHa8Wrqofv8T79bqJF9QUqP07Vt
 HYxk/7aIl2TcNLxyRrgRqlTXOoT23cmxSWOH0y5e7DnXKt1QZEW+doM98ymnypf7BbrR
 wjJ8NtQDUsyr8uU1wHK0VeD4bWR6TCwZVV6DbGyiuip2720JiwOF0c3VIMkjo8zjHMPG
 k3Cg==
X-Gm-Message-State: APjAAAX7BznlVvfA4S8OEXnsw8AI1JQLjDazWlkHIe5K+s/tjROeBmXT
 RXZd4M9VB68dbD4+AzWRhTgZqHuFoL0xlk9hFwY=
X-Google-Smtp-Source: APXvYqyDZGNsfe0wHpu7EJmUut6+epxWnzks1GagUl7m7WbKV9lMiti/FKmAzyrR3GRFgN0X6xjsqntuz5ggP1ffq6M=
X-Received: by 2002:aca:d757:: with SMTP id o84mr420472oig.90.1559078232798;
 Tue, 28 May 2019 14:17:12 -0700 (PDT)
MIME-Version: 1.0
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
 <1558992584-11997-4-git-send-email-ynezz@true.cz>
 <CAECwjAjknY85+YOn07o6ixHkODkkE+85GrMn016ZUESq3EAfMg@mail.gmail.com>
In-Reply-To: <CAECwjAjknY85+YOn07o6ixHkODkkE+85GrMn016ZUESq3EAfMg@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Tue, 28 May 2019 18:17:01 -0300
Message-ID: <CAOdf3gob-vWdvHNiQfEcGOem0D68rGZXNe53nZc7WqH8vJxUkQ@mail.gmail.com>
To: Yousong Zhou <yszhou4tech@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_141714_503164_7BB54081 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] base-files: move urandom seed bits
 into separate package
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
Cc: Stephan Mueller <smueller@chronox.de>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6072168139172768511=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6072168139172768511==
Content-Type: multipart/alternative; boundary="0000000000003e3c480589f9308b"

--0000000000003e3c480589f9308b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yousong,

Le mar. 28 mai 2019 =C3=A0 09:01, Yousong Zhou <yszhou4tech@gmail.com> a =
=C3=A9crit :

> On Tue, 28 May 2019 at 05:30, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>
> ...
>
> > +
> > +save() {
> > +    touch "$1.tmp"
> > +    chown root:root "$1.tmp"
> > +    chmod 600 "$1.tmp"
> > +    getrandom 512 > "$1.tmp"
> > +    mv "$1.tmp" "$1"
> > +    echo "Seed saved ($1)"
> > +}
>
> Maybe we could prepare the .tmp file in /tmp of tmpfs type, to save a
> few rounds of nor flash writes.
>

The idea was to be able to do atomic mv


>                 yousong
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000003e3c480589f9308b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto"><div>Hi Yousong,<br><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le mar. 28 mai 2019 =C3=A0=
 09:01, Yousong Zhou &lt;<a href=3D"mailto:yszhou4tech@gmail.com" target=3D=
"_blank">yszhou4tech@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">On Tue, 28 May 2019 at 05:30, Petr =C5=A0tetiar &lt=
;<a href=3D"mailto:ynezz@true.cz" rel=3D"noreferrer" target=3D"_blank">ynez=
z@true.cz</a>&gt; wrote:<br>
<br>
...<br>
<br>
&gt; +<br>
&gt; +save() {<br>
&gt; +=C2=A0 =C2=A0 touch &quot;$1.tmp&quot;<br>
&gt; +=C2=A0 =C2=A0 chown root:root &quot;$1.tmp&quot;<br>
&gt; +=C2=A0 =C2=A0 chmod 600 &quot;$1.tmp&quot;<br>
&gt; +=C2=A0 =C2=A0 getrandom 512 &gt; &quot;$1.tmp&quot;<br>
&gt; +=C2=A0 =C2=A0 mv &quot;$1.tmp&quot; &quot;$1&quot;<br>
&gt; +=C2=A0 =C2=A0 echo &quot;Seed saved ($1)&quot;<br>
&gt; +}<br>
<br>
Maybe we could prepare the .tmp file in /tmp of tmpfs type, to save a<br>
few rounds of nor flash writes.<br></blockquote></div></div></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">The idea was to be able to do atomic =
mv<br><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yousong<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer" targe=
t=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div></div></div>
</div>

--0000000000003e3c480589f9308b--


--===============6072168139172768511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6072168139172768511==--

