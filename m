Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0021D9537
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 13:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UXXxLG+kcLv/qVIfU2eYoBvQBE8miWW25rHizqbL61Q=; b=m3PXKVwS0o6Ltebk6c3RxpZJ6
	Cx20C1YbQT9x3WipVXqpcbKokF5JAMsAelKpwjOmGOX1WDiEkQ7xZkUab+BjrZUWzstBWNm5yucll
	gyyZHiWUCvA3XreHgK9UGdvXSFO648rvkR8qhTFOcx6WSoVcdnREmTbe6yBhsV28OUX5OH1T1zN2z
	ufdMLdNjPb2z2FxEJEx3FBacw+H2xyRLd+AsBht6eTbb09a3gPtHh78HCsFzYWPlro3s4nuwb9JdT
	1BUcoRGzFlzZ47ouU3NQYFIYnJsXRZKv93c7x7YakIlCyL0N1L88hufREQiCKp68CT76ChaQSM13i
	7XJml/vmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0Le-0004pY-EK; Tue, 19 May 2020 11:23:50 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0LW-0004p8-U0
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 11:23:44 +0000
Received: by mail-ej1-x62a.google.com with SMTP id h21so11443587ejq.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 May 2020 04:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2+vUXrvTA9ZbdcrWzSzEx6WpwkGtb2S1kX/edCDJXIA=;
 b=Ns1sOS5Os3FPKiXabWFk2AabXs64OJJ+69NVGn7GS9ecBZA4F1VJCZvv7itUye4/0I
 7Vpd69Div0YQcWyIqnsQ0vYkuAKyzmfEr5R5NOw73uzmYVdzNn+D8TnuA06fT1SBplKB
 v/UnMfg5HYYLRkCfQxT58N3+L8CQH4jTCI0yHyUHAmA/cStziSVfoztUuMmvdYQRlTaO
 gG/ARyzKB+6XXK+XBirHxLeUk2M1uiTfGEBwTLfC5/XcuBKbUUzfaeBNPZw3Az78Wk/j
 DIxhwpGfD7cQRVgNefGxXFr9Tr3gdLu9+GSC+X1s+Kq17devCtVBRtBSPIiHtVdeOhNV
 8V2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2+vUXrvTA9ZbdcrWzSzEx6WpwkGtb2S1kX/edCDJXIA=;
 b=cvLqIPRSp16LVZaUWHyV3nz1m2WE4qUte1zXkO2gawcAAWgAtO1/UH4jYggGOwcLjW
 V/ru6xuT++Jjv2e6NjrHqa0ZgBtCYxESo/+qg6OSj106wYm5noyKRsyWM9jO3K7aS5cf
 ugeY4s2VBBq3b1JpEUR0e2OO22RE4+kfPziic0bKGEYQ06uTJYkWyfJOERTDPXaqnD6z
 UMxXoNF9kpVsQmwTQC/g0SZ2MMd6xlL94P/p4nSx9h1DgIx8OFPgEyfFwQkDSFjw0td5
 A5JRCUfX2+DbO1K+rEeA0v6DnbHGxFgAsaW2s6dZ0WuRiRi1AdEJ1wSnUbyO3pTWIUWi
 BnJw==
X-Gm-Message-State: AOAM533DJ4faAG6XQUMTHN6+I81tBJoVJ94Hm9WKT68r8dCnzFPs4V99
 Gf9Q/bairpzCQuDxN5isb+MR17b6AHbEF6TjmMM=
X-Google-Smtp-Source: ABdhPJwDR2/1dj6p7pnUkdst2/u5YtkWM6tlFReoQx+Hdpthj7zfFVGJtjI2t3ngce1f8PiSuwzPj+hAjj91Ldy/U5A=
X-Received: by 2002:a17:907:724e:: with SMTP id
 ds14mr12870859ejc.260.1589887420983; 
 Tue, 19 May 2020 04:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
 <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
 <CALYKT1hqiBvcEQ+tqDdMh3tHznSt2NamLcVqzneU5TFJZxX1Ow@mail.gmail.com>
 <CALYKT1hAPtXGuKu5gGd5B6VccuEY1g6COyFK6T0FsaoG43Tt8Q@mail.gmail.com>
 <bb6a2cc5-b991-9c7f-3308-79932fd70c56@gmail.com>
In-Reply-To: <bb6a2cc5-b991-9c7f-3308-79932fd70c56@gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 19 May 2020 20:23:27 +0900
Message-ID: <CALYKT1j_YqguM=JWWh97S9HMJ-Kjt_BQecQFh5T_G-+hdfmXtw@mail.gmail.com>
To: Magnus Kroken <mkroken@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_042342_973277_D312BFA3 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62a listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Content-Type: multipart/mixed; boundary="===============5600985517691912457=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5600985517691912457==
Content-Type: multipart/alternative; boundary="000000000000f5ee7705a5fe8245"

--000000000000f5ee7705a5fe8245
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Magnus Kroken and Adrianschmutzler,

Thank you! I made it work!

Magnus Kroken's second method works!

Thank you!

But I have another question :

  config zone
          option name       wan
          list   network          'wan'
          list   network          'wan6'
+        list   network          'wwan'
          option input            REJECT
          option output           ACCEPT
          option forward          REJECT

Above is part of /etc/config/firewall.
And as you see, I'd like to add new interface wwan into zone wan.
How can I write uci command script for this?

Thank you very much!
Jeonghum

2020=EB=85=84 5=EC=9B=94 19=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 6:38, M=
agnus Kroken <mkroken@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Hi
>
> On 19.05.2020 08:30, Jeonghum Joh wrote:
>  > config interface 'wwan'
> >          option ifname 'usb0'
> >          option proto 'dhcp'
> >
> > So I added something like below to
> > package/base-files/files/etc/board.d/99-default_network :
> >
> >    ucidef_set_interface_lan 'eth0'
> >    [ -d /sys/class/net/eth1 ] && ucidef_set_interface_wan 'eth1'
> > +[ -d /sys/class/net/usb0 ] && ucidef_set_interface_wan 'usb0'
> >
> > But this didn't resolve my problem.
> >
> > I think I can just make some commands into startup script.
> > Isn't there more grace approach for me to automatically add usb0
> > interface into /etc/config/network?
>
> As already suggested, use the files/ directory to include files.
>
> $ cd openwrt # change to the root of your OpenWrt build environment
> $ mkdir -p files/etc/uci-defaults
> $ mkdir -p files/etc/config
>
> Now you have two options.
>
> 1. Put your complete working /etc/config/network file in the files/
> tree, so it resides at files/etc/config/network.
>
> 2. Write a script with the UCI commands needed to change your config,
> and put it in files/etc/uci-defaults. I name mine e.g.
> zzz_33_device_config, so that they are executed as late as possible.
>
> The commands you would need for option 2 is probably:
>
> uci -q set network.wwan=3Dinterface
> uci -q set network.wwan.proto=3D'dhcp'
> uci -q set network.wwan.ifname=3D'usb0'
> exit 0
>
> This is very simple, you may want to script checks to ensure the script
> is running on correct device (e.g. by checking for a MAC address), and
> if the usb0 device exists.
>
> Regards
> Magnus Kroken
>
> > Thank you in advance.
> > Jeonghum
>
>

--000000000000f5ee7705a5fe8245
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Magnus Kroken and Adrianschmutzler,<div><br></div><d=
iv>Thank you! I made it work!</div><div><br></div><div>Magnus Kroken&#39;s =
second method works!</div><div><br></div><div>Thank you!</div><div><br></di=
v><div>But I have another question :</div><div><br></div><div>=C2=A0 config=
 zone<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option name=C2=A0 =C2=A0 =C2=A0=
 =C2=A0wan<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 list =C2=A0 network =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;wan&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 list =C2=A0 network =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;wan6&#39;=
<br>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 list =C2=A0 network =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&#39;wwan&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option in=
put =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0REJECT<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 option output =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ACCEPT<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option forward =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0REJECT<br></div><div><br></div><div>Above is part of /etc/config/=
firewall.</div><div>And as you see, I&#39;d like to add new interface wwan =
into zone wan.</div><div>How can I write uci command script for this?</div>=
<div><br></div><div>Thank you very much!</div><div>Jeonghum=C2=A0</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=
=EB=85=84 5=EC=9B=94 19=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 6:38, Magnu=
s Kroken &lt;<a href=3D"mailto:mkroken@gmail.com">mkroken@gmail.com</a>&gt;=
=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Hi<br>
<br>
On 19.05.2020 08:30, Jeonghum Joh wrote:<br>
=C2=A0&gt; config interface &#39;wwan&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option ifname &#39;usb0&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option proto &#39;dhcp&#39;<br>
&gt; <br>
&gt; So I added something like below to <br>
&gt; package/base-files/files/etc/board.d/99-default_network :<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 ucidef_set_interface_lan &#39;eth0&#39;<br>
&gt;=C2=A0 =C2=A0 [ -d /sys/class/net/eth1 ] &amp;&amp; ucidef_set_interfac=
e_wan &#39;eth1&#39;<br>
&gt; +[ -d /sys/class/net/usb0 ] &amp;&amp; ucidef_set_interface_wan &#39;u=
sb0&#39;<br>
&gt; <br>
&gt; But this didn&#39;t resolve my problem.<br>
&gt; <br>
&gt; I think I can just make some commands into startup script.<br>
&gt; Isn&#39;t there more grace approach for me to automatically add usb0 <=
br>
&gt; interface into /etc/config/network?<br>
<br>
As already suggested, use the files/ directory to include files.<br>
<br>
$ cd openwrt # change to the root of your OpenWrt build environment<br>
$ mkdir -p files/etc/uci-defaults<br>
$ mkdir -p files/etc/config<br>
<br>
Now you have two options.<br>
<br>
1. Put your complete working /etc/config/network file in the files/ <br>
tree, so it resides at files/etc/config/network.<br>
<br>
2. Write a script with the UCI commands needed to change your config, <br>
and put it in files/etc/uci-defaults. I name mine e.g. <br>
zzz_33_device_config, so that they are executed as late as possible.<br>
<br>
The commands you would need for option 2 is probably:<br>
<br>
uci -q set network.wwan=3Dinterface<br>
uci -q set network.wwan.proto=3D&#39;dhcp&#39;<br>
uci -q set network.wwan.ifname=3D&#39;usb0&#39;<br>
exit 0<br>
<br>
This is very simple, you may want to script checks to ensure the script <br=
>
is running on correct device (e.g. by checking for a MAC address), and <br>
if the usb0 device exists.<br>
<br>
Regards<br>
Magnus Kroken<br>
<br>
&gt; Thank you in advance.<br>
&gt; Jeonghum<br>
<br>
</blockquote></div>

--000000000000f5ee7705a5fe8245--


--===============5600985517691912457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5600985517691912457==--

