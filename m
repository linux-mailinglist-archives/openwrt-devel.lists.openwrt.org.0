Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033911D9031
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 08:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fRW5AIeMXOYQGhkhfmUKAa2teaYQDjhiicDGt3RBJDY=; b=FT1kVugpBCaC76o9rh70uZ5af
	SlL3qvynwYABInTxz7JlMi6CmuweKdFKkILxmX5CYcqqr8gYU4Po9jYzBZpo/OjrZqdtAsCmzZfRV
	ol2h26XCnX94gJY2A/brW5QNGiNCCjevLDUpS31m2rgiLPdJlM8EQspY46ynm0V5laSqaUBFvG4Ci
	PjEvuEiV1OycHVUnKM5RHvQzcQxf6NkfGGKPsS7SfUnTGzNfHz8vU5qYQD1ndQDVBHIptLteUepDF
	IS/S7jKCTUmDe379d80IIZt0HwUSXluzqCNozLqQDv5JrqANnqxXmrQ5vAgBoRmRUNTYwH6D8A4rT
	QKM8P+58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1javv9-0003lF-UE; Tue, 19 May 2020 06:40:11 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1javut-0003kP-74
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 06:39:57 +0000
Received: by mail-ed1-x52e.google.com with SMTP id d24so2804485eds.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 23:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z919MT3t4e3WWYDM5qzXIPWqe4Oekh4HhfzfRYTg5ZQ=;
 b=hW1Gk/nPCmW9N+mlkAtt/1BS6TVdTceJubdOCBBsH7TG6UEsKxDdTSDk2eJ4vaxBRW
 qHtDBfb4Ev80ySFRNrG7grdi593P90loi0Vgns5uSCaxd4oGcld5HKlK8XYA29LTGaMN
 vEkrtv+pes3qHh0kGMry2RrcMl0IPky8A6wBFVAJvW6nCaArOJhfk1nd5zPQbQ8facq7
 B1Nf/Oqaudhk/c3CtdgrEAlWHl/xDDDcyD2xujg4I2AA1oiZemcz6OZDpsva3QLS5Idg
 7gYcQMrm22OAXpI34m3IO6DikdT/gyIvcxntO1+BDhXN0p5Ch1j+aA/SAjUcyI2n23ZV
 q9mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z919MT3t4e3WWYDM5qzXIPWqe4Oekh4HhfzfRYTg5ZQ=;
 b=ebbhFQ/AB41uWsi4M3lg0jEpJrAbemV0qDjI8PF8PmUT2DVD0DkrYtS/whYXbx2ERP
 Iv3m56WlMt1GlE0KCcl0O9v21ebsPxS8Pl7RdA9TIdhftoG+KcSMGK7u+sjWb3imSkeq
 oeuaJU778648qqb10gQpB054t3zTA4AHn9sOP3baxzC6Eh8L2kQtHisnKj0YAc2VKWfd
 mpoez6g+q3zEqCC0h3n37HRuEibqQncuQjpkdmC2gjtIDnZeabDFSSQFt8AOsbso6y23
 GAddWieq2gUPDJwlTJNLW8eW7HBlTp2kXNJqnGJ+7qAA+4aaD64vVJrqZyM84xZ1zq9n
 hr1Q==
X-Gm-Message-State: AOAM530FC4sVp4OypbgXfOOcW+O7M6WhD1K8S3J3ue+KyQ0L36lcMvQT
 lYz7K/lfTvGcII1BalHZQmJsL9EAwmMrO218Lyw=
X-Google-Smtp-Source: ABdhPJyZ4aCxYF/yZZ5mERRbr3WAbPFj1URqvF0lza6FxthhDq6qBBYO6Qt9pXrta3tDiyC+L50y1Q90Ck8rgAOz4bQ=
X-Received: by 2002:a50:fb10:: with SMTP id d16mr5607680edq.46.1589870393795; 
 Mon, 18 May 2020 23:39:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
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
In-Reply-To: <CALYKT1hAPtXGuKu5gGd5B6VccuEY1g6COyFK6T0FsaoG43Tt8Q@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 19 May 2020 15:39:41 +0900
Message-ID: <CALYKT1j9ehPrpmBxb_u5Zz6gPmvzOgiJWoC+_JYM_YrpGoo0zQ@mail.gmail.com>
To: Moritz Warning <moritzwarning@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_233955_260823_CD5D2B39 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============8273660731081030507=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8273660731081030507==
Content-Type: multipart/alternative; boundary="0000000000000fa88d05a5fa8c7e"

--0000000000000fa88d05a5fa8c7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello list,

Let me clarify my test environment:
Hostname LEDE
Model MediaTek MT7622 AC4300rfb1 board
Firmware Version LEDE Reboot 17.01-SNAPSHOT unknown / LuCI (svn-r75)
Kernel Version 4.4.124

Thank you
Jeonghum

2020=EB=85=84 5=EC=9B=94 19=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 3:30, J=
eonghum Joh <oosaprogrammer@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1=
:

> Hello  Moritz Warning and people,
>
> I found a script which looks like something that generate
> /etc/config/network. It is "99-default_network"
> under package/base-files/files/etc/board.d.
>
> Let me post the content of it here :
>
> #!/bin/sh
>> #
>> # Copyright (C) 2013-2015 OpenWrt.org
>> #
>> . /lib/functions/uci-defaults.sh
>> board_config_update
>> json_is_a network object && exit 0
>> ucidef_set_interface_lan 'eth0'
>> [ -d /sys/class/net/eth1 ] && ucidef_set_interface_wan 'eth1'
>> board_config_flush
>> exit 0
>
>
>
> The content of /etc/config/network is shown below :
>
> config interface 'lan'
>         option type 'bridge'
>         option ifname 'eth0'
>         option proto 'static'
>         option ipaddr '192.168.1.1'
>         option netmask '255.255.255.0'
>         option ip6assign '60'
>
> config interface 'wan'
>         option ifname 'eth1'
>         option proto 'dhcp'
>
> config interface 'wan6'
>         option ifname 'eth1'
>         option proto 'dhcpv6'
>
> So I guessed  above of 99-default_network generates above of
> /etc/config/network
>
> I need to add something like below to /etc/config/network :
>
> config interface 'wwan'
>         option ifname 'usb0'
>         option proto 'dhcp'
>
> So I added something like below to
> package/base-files/files/etc/board.d/99-default_network :
>
>   ucidef_set_interface_lan 'eth0'
>   [ -d /sys/class/net/eth1 ] && ucidef_set_interface_wan 'eth1'
> +[ -d /sys/class/net/usb0 ] && ucidef_set_interface_wan 'usb0'
>
> But this didn't resolve my problem.
>
> I think I can just make some commands into startup script.
> Isn't there more grace approach for me to automatically add usb0 interfac=
e
> into /etc/config/network?
>
> Thank you in advance.
> Jeonghum
>
>
>
> 2020=EB=85=84 5=EC=9B=94 19=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 12:57=
, Jeonghum Joh <oosaprogrammer@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=
=B1:
>
>> Hello Moritz Warning
>>
>> Thank you very much!
>> I can continue investigating by your hints.
>>
>> Thank you.
>> Jeonghum
>>
>> 2020=EB=85=84 5=EC=9B=94 19=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 11:3=
7, Moritz Warning <moritzwarning@web.de>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=
=B1:
>>
>>> On 5/19/20 3:49 AM, Jeonghum Joh wrote:
>>> > I know how to do this for /etc/config/firewall.
>>> > It is package/network/config/firewall/files/firewall.config
>>> >
>>> > But I cannot find /etc/config/network for default root file system.
>>> >
>>> > Where can I find it?
>>> > How am I supposed to change settings in /etc/config/network of defaul=
t
>>> root
>>> > file system of OpenWRT?
>>> >
>>> > Thank you in advance!
>>> >
>>> > Jeonghum
>>> >
>>> >
>>> > _______________________________________________
>>> > openwrt-devel mailing list
>>> > openwrt-devel@lists.openwrt.org
>>> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>> >
>>>
>>> In your OpenWrt build root, create a file "files/etc/config/firewall".
>>> When you build OpenWrt, the file will be included in the image (and not
>>> overwritten).
>>>
>>> Btw., /etc/config/network is generated by a script on first boot and
>>> that is then deleted.
>>> But it is still accessible in /rom/etc/uci_defaults/02_network (not
>>> quite sure on the script name).
>>>
>>> - mwarning
>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>
>>

--0000000000000fa88d05a5fa8c7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello list,<div><br></div><div>Let me cla=
rify my test environment:</div><div><table width=3D"100%" cellspacing=3D"10=
" style=3D"margin:0px;padding:0px;color:rgb(0,0,0);font-family:&quot;Micros=
oft Yahei&quot;,&quot;WenQuanYi Micro Hei&quot;,sans-serif,&quot;Helvetica =
Neue&quot;,Helvetica,&quot;Hiragino Sans GB&quot;;font-size:12.8px"><tbody =
style=3D"margin:0px;padding:0px;box-sizing:border-box"><tr style=3D"margin:=
0px;padding:0px;box-sizing:border-box"><td width=3D"33%" style=3D"padding:0=
px;box-sizing:border-box">Hostname</td><td style=3D"padding:0px;box-sizing:=
border-box">LEDE</td></tr><tr style=3D"margin:0px;padding:0px;box-sizing:bo=
rder-box"><td width=3D"33%" style=3D"padding:0px;box-sizing:border-box">Mod=
el</td><td style=3D"padding:0px;box-sizing:border-box">MediaTek MT7622 AC43=
00rfb1 board</td></tr><tr style=3D"margin:0px;padding:0px;box-sizing:border=
-box"><td width=3D"33%" style=3D"padding:0px;box-sizing:border-box">Firmwar=
e Version</td><td style=3D"padding:0px;box-sizing:border-box">LEDE Reboot 1=
7.01-SNAPSHOT unknown / LuCI (svn-r75)</td></tr><tr style=3D"margin:0px;pad=
ding:0px;box-sizing:border-box"><td width=3D"33%" style=3D"padding:0px;box-=
sizing:border-box">Kernel Version</td><td style=3D"padding:0px;box-sizing:b=
order-box">4.4.124</td></tr></tbody></table></div><div><br></div><div>Thank=
 you</div><div>Jeonghum<br></div></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 5=EC=9B=94 19=EC=9D=BC=
 (=ED=99=94) =EC=98=A4=ED=9B=84 3:30, Jeonghum Joh &lt;<a href=3D"mailto:oo=
saprogrammer@gmail.com">oosaprogrammer@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =
=EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div dir=3D"ltr">Hello=C2=A0

Moritz Warning and people,<div><br></div><div>I found a script which looks =
like something that generate /etc/config/network. It is &quot;99-default_ne=
twork&quot; under=C2=A0package/base-files/files/etc/board.d.</div><div><br>=
</div><div>Let me post the content of it here :</div><div><br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">#!/bin/sh<br>#<br># Copyright (C=
) 2013-2015 OpenWrt.org<br>#<br>. /lib/functions/uci-defaults.sh<br>board_c=
onfig_update<br>json_is_a network object &amp;&amp; exit 0<br>ucidef_set_in=
terface_lan &#39;eth0&#39;<br>[ -d /sys/class/net/eth1 ] &amp;&amp; ucidef_=
set_interface_wan &#39;eth1&#39;<br>board_config_flush<br>exit 0</blockquot=
e><div><br></div><div><br></div><div>The content of /etc/config/network is =
shown below :</div><div><br></div><div>config interface &#39;lan&#39;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 option type &#39;bridge&#39;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 option ifname &#39;eth0&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 o=
ption proto &#39;static&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option ipaddr &=
#39;192.168.1.1&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option netmask &#39;255=
.255.255.0&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option ip6assign &#39;60&#39=
;<br><br>config interface &#39;wan&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 opti=
on ifname &#39;eth1&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option proto &#39;d=
hcp&#39;<br><br>config interface &#39;wan6&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 option ifname &#39;eth1&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option prot=
o &#39;dhcpv6&#39;<br></div><div><br></div><div>So I guessed=C2=A0 above of=
 99-default_network generates=20

above of /etc/config/network

</div><div><br></div><div>I need to add something like below to /etc/config=
/network :</div><div><br></div><div>config interface &#39;wwan&#39;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 option ifname &#39;usb0&#39;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 option proto &#39;dhcp&#39;<br><br></div><div>So I added somethi=
ng like below to=C2=A0

package/base-files/files/etc/board.d/99-default_network :</div><div><br></d=
iv><div>=C2=A0 ucidef_set_interface_lan &#39;eth0&#39;<br>=C2=A0 [ -d /sys/=
class/net/eth1 ] &amp;&amp; ucidef_set_interface_wan &#39;eth1&#39;<br></di=
v><div>+[ -d /sys/class/net/usb0 ] &amp;&amp; ucidef_set_interface_wan &#39=
;usb0&#39;=C2=A0<br></div><div><br></div><div>But this didn&#39;t resolve m=
y problem.</div><div><br></div><div>I think I can just make some commands i=
nto startup script.</div><div>Isn&#39;t there more grace approach for me to=
 automatically add usb0 interface into /etc/config/network?</div><div><br><=
/div><div>Thank you in advance.</div><div>Jeonghum</div><div>=C2=A0<br></di=
v><div><br></div><div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 5=EC=9B=94 19=EC=9D=BC (=ED=99=
=94) =EC=98=A4=ED=9B=84 12:57, Jeonghum Joh &lt;<a href=3D"mailto:oosaprogr=
ammer@gmail.com" target=3D"_blank">oosaprogrammer@gmail.com</a>&gt;=EB=8B=
=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hello Moritz Warning<div><br></div><div>T=
hank you very much!</div><div>I can continue investigating by your hints.</=
div><div><br></div><div>Thank you.</div><div>Jeonghum</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 5=
=EC=9B=94 19=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 11:37, Moritz Warning =
&lt;<a href=3D"mailto:moritzwarning@web.de" target=3D"_blank">moritzwarning=
@web.de</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">On 5/19/20 3:49 AM, Jeonghum Joh wrot=
e:<br>
&gt; I know how to do this for /etc/config/firewall.<br>
&gt; It is package/network/config/firewall/files/firewall.config<br>
&gt;<br>
&gt; But I cannot find /etc/config/network for default root file system.<br=
>
&gt;<br>
&gt; Where can I find it?<br>
&gt; How am I supposed to change settings in /etc/config/network of default=
 root<br>
&gt; file system of OpenWRT?<br>
&gt;<br>
&gt; Thank you in advance!<br>
&gt;<br>
&gt; Jeonghum<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
&gt;<br>
<br>
In your OpenWrt build root, create a file &quot;files/etc/config/firewall&q=
uot;.<br>
When you build OpenWrt, the file will be included in the image (and not ove=
rwritten).<br>
<br>
Btw., /etc/config/network is generated by a script on first boot and that i=
s then deleted.<br>
But it is still accessible in /rom/etc/uci_defaults/02_network (not quite s=
ure on the script name).<br>
<br>
- mwarning<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--0000000000000fa88d05a5fa8c7e--


--===============8273660731081030507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8273660731081030507==--

