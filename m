Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8831C4898
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 22:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0jDbP/h641MCSwtADE1V3zVLXqaQI4+IAeirFEtQSLs=; b=m5ZstUUCuV9JVkSHKToLB3ihE
	PAKL+BVfDQ3VZh1bZa4h24OnsCZvuCrHbs0rxYgqUXxiqMGSzdJ+cB+JDQHar/C5qZz6uCf2SqvyN
	Kfjq3gaKbTB5v/ak0/DVGh2PgFktc9lHCSGP2rYO6jtG1mXBVx6hghxXQGID2bRvGc/O6uE+UN43G
	d336DMcu7aJUkkVt4TmeRgQoOe404lMnYmLUh/623ryGkRlMW8p4J8ekFrbtnp0jFbN161fKuyiTm
	I1kGqNKWl0XNYrJH7gvbcu+vTRLhaN1IidPUuL1Wof378SHazjF3ATxdETkoz2bdXKn9+KDuM8VH4
	IY79Mi8AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVi57-0001uy-RN; Mon, 04 May 2020 20:52:53 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVi4x-0001sP-2O
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 20:52:49 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id 1so553459vsl.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 13:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cfvdEz5ukyiwEjxUYV4xz8uxFC4aLXcteJ3LB/wF5+0=;
 b=f7sa+EXgJhwseipH5e+/pksQMDT9l1gmcE1YvmI0feT2ZhzN0iAM23XleqSpanXUh0
 c8tievBR5cyljkpqkHxiCWpaYE8ytFc08GBhRnxePpPCX+c0hqpWvy0BhgkfjqZMzVpN
 J9YiWqhRzOER9xq5GxTgv9D3XvZllAIj7iNT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cfvdEz5ukyiwEjxUYV4xz8uxFC4aLXcteJ3LB/wF5+0=;
 b=HNMBCuaXh+SOVvZPBkzS9kRalmYq0WzDREP2qjZy5/o2bRt9ZQyogJWPNBnPyFY5TJ
 hxRh/b55HwqyaQ9/tA/Oy9i3GRA0/Mf9yl9h5hG/mqUlP+7BRJI4CQLPySFE8HSfi13m
 yRd/b2fCRSD2wkXnpT1GarCq4C+oR0CVOYzadRqcgGoNDTgbYxaIHgkF9aACrD0x1ItP
 Z+8+nsJ7u0X5A0IF+0lsy5nU9lvQCx+yA96hQK9a70IDI4hrNDEv5PTtxYDvn41FWyod
 yHSpB6g2AZq1xsYOVvSClkEKp/U8UuVZJY2Lb9GjUQ3SadXY+0eVvJPGEYfIZhRwW/gi
 X9VQ==
X-Gm-Message-State: AGi0PuYXLxy68wWqnIEQ0khWETOWyJNU5arGCfvyP4JtYo08wIrtvJba
 hhUA5svZZXXWXVItcCu2kWVOfGx3WSLxUWTbMNq8Bw==
X-Google-Smtp-Source: APiQypI8x+/uuLrQhdHVOqtFiS0lo20BbiXDBbZU/fBc9nuxWWDNvXg08i27SIUxAwi/s5wtdEoY6rNrNC95vGlEE6E=
X-Received: by 2002:a67:3315:: with SMTP id z21mr126665vsz.82.1588625558620;
 Mon, 04 May 2020 13:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
In-Reply-To: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Tue, 5 May 2020 08:52:27 +1200
Message-ID: <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
To: Gracias Amigou <puchapapa01@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_135243_274191_65D2FE36 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] FULL CONE NAT in OpenWrt
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
Content-Type: multipart/mixed; boundary="===============6041208238359763320=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6041208238359763320==
Content-Type: multipart/alternative; boundary="0000000000001cc68c05a4d8b647"

--0000000000001cc68c05a4d8b647
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am all for exposing Cone Nat in UCI / Firewall zones as an option to the
masquerading configuration in a zone.

Also as much as I hate it nat66 for IPv6 needs to be exposed in the same
place - specifically for mapping routable PD which change often to ULA's.

-Joel

On Tue, 5 May 2020 at 07:25, Gracias Amigou <puchapapa01@gmail.com> wrote:

> Please add this package as official:
>
> *Posts:*
>
>    1. xt_FULLCONENAT -- Implementing RFC 3489 full cone SNAT in OpenWrt
>    <https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-full=
-cone-snat-in-openwrt/14816>
>    2. [12/8=E6=9B=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (F=
ull cone NAT) =E7=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/UP=
nP - OPENWRT=E4=B8=93=E7=89=88
>    <https://www.right.com.cn/forum/thread-319827-1-1.html>
>    3. =E4=BB=8EDNAT=E5=88=B0netfilter=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=BB=
=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88Linux=E7=9A=84Full Cone NAT=E5=AE=9E=E7=
=8E=B0 | ChionLab
>    <https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/>
>
>
> *Git:*
> =E2=80=A2 GitHub - LGA1150/openwrt-fullconenat: Netfilter and iptables ex=
tension
> for full cone NAT ported to OpenWrt.
> <https://github.com/LGA1150/openwrt-fullconenat>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000001cc68c05a4d8b647
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">I am all for exposing Cone Nat in UCI / Firewall zones as an op=
tion to the masquerading configuration in a zone.</div><div class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:verdana,sans-serif">Also as much as I ha=
te it nat66 for IPv6 needs to be exposed in the same place - specifically f=
or mapping routable PD which change often to ULA&#39;s. <br></div><div clas=
s=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">-Joel<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, 5 May 2020 at 07:25, Gracias Amigou &lt;<a href=3D"mailto:puc=
hapapa01@gmail.com">puchapapa01@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Please add this p=
ackage as official:<br><div><br></div><div><b>Posts:</b></div><div><ol><li>=
<a href=3D"https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489=
-full-cone-snat-in-openwrt/14816" target=3D"_blank">xt_FULLCONENAT -- Imple=
menting RFC 3489 full cone SNAT in OpenWrt</a></li><li><a href=3D"https://w=
ww.right.com.cn/forum/thread-319827-1-1.html" target=3D"_blank">[12/8=E6=9B=
=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (Full cone NAT) =E7=
=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/UPnP - OPENWRT=E4=
=B8=93=E7=89=88</a></li><li><a href=3D"https://blog.chionlab.moe/2018/02/09=
/full-cone-nat-with-linux/" target=3D"_blank">=E4=BB=8EDNAT=E5=88=B0netfilt=
er=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88L=
inux=E7=9A=84Full Cone NAT=E5=AE=9E=E7=8E=B0 | ChionLab</a></li></ol></div>=
<div><b><br></b></div><div><b>Git:</b><br></div><div>=E2=80=A2=C2=A0<a href=
=3D"https://github.com/LGA1150/openwrt-fullconenat" target=3D"_blank">GitHu=
b - LGA1150/openwrt-fullconenat: Netfilter and iptables extension for full =
cone NAT ported to OpenWrt.</a><br></div></div>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000001cc68c05a4d8b647--


--===============6041208238359763320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6041208238359763320==--

