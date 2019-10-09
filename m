Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E020D0A56
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 10:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=viCxcDEL/k/iFJ6WQrI28wFGnKVmg98M0MCld1PjLj8=; b=IYz
	ubqn4sM4xz0iQwFvBUMYuI7WnLMbmK4YPbAxj9aXbxcAxEL5wrNY+jFIUmZc4HeAmmOPeY75SueQ4
	jIBz1um7bjHEfsX75j00V4x6GJU/pSn+zV2/u2vRWWGdjqTN3DwnpBgCgaqlrz7X8aLI7xRmcQ0Yh
	XwNpIpdOhx1MJZT6N8PAcXbC/I06RletbZzX5wlYM1r59bbmu1sd/4BqSk2XKN49HCN91B9kmKPYM
	TUK0aSrvDPXee5OcF0mW8UE1rp1B2TR++D2KrF0ml4JRQ5r+z4acWm6uhiH3LzkUN/01PGf9zhA0N
	Y5JxHRNeDywoqh/8tS2l2iTEkiNm+WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7l3-0002TD-NO; Wed, 09 Oct 2019 08:55:45 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7kx-0002Sk-1p
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 08:55:41 +0000
Received: by mail-ed1-x533.google.com with SMTP id v8so1311917eds.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 09 Oct 2019 01:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kindows-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=w/fniTUMEgFcr4jWiNDRYyPUBbWrrJaojIhTOTCN694=;
 b=Hhuq7EWmbUaWYOy1NdOM9REGz6wLlW9dg33X+WJD4QX0hl8ZD1/VN/CEbUBoxsrrpC
 BCMHw8RKlWRBBlRVj9s5NomsKYXyIeaJlKamQ5iJcPA2UjtqUSMrchxPYchm33Bb/gHS
 +uDoItDy/fnGUkMKgZIIoo1EJIxlEBdFluRbuv0ZOp1dBCYSkLQJFcTx26C5HIhoN9xq
 WqtM+hspzGUz1SA36ZGkNL1eFUeQO5km3vd4ML9wLieu2oxH2nA3uAY23m8ZaDCfUXps
 Ks75v7yuSHkkrniCREa4OAqLlKYy7+Gx0NdJIzjnOF7XAEqzzBAyhAkIqMoJxIL/brgN
 Rdcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=w/fniTUMEgFcr4jWiNDRYyPUBbWrrJaojIhTOTCN694=;
 b=lTYkPJveIo/x/GBRHySPZJXa+xLGE02vUq0MxV7+LrpVu20CfmmMyqYwN3rLellVkW
 hEEr7fbiJCI6dJbfrjxp9AmNU7CiWoWdU4jyS5qfLJDPhB9MCd5+aYAWZ+Dh25myKcZB
 7r3lDf96Jjh/EAAqX32EvXWKDiwwyIaAF7pVE+sMQRN1wnQVWZZRzBrKER7eBzdcnyb8
 skNE6ygCG4i6HSaTy+DVyd2YC6JkCNDkzzGF7yrO30xlKZi6HlJSIbkwROjA1eZX13p4
 xOabi9yi6uHUD1bYsQoHoFU13T7p20rXody+R6gWnFuY8gR92em4oMSxScxZTO1lm3q3
 zWFg==
X-Gm-Message-State: APjAAAXvL7EzKTG8Du7NS5JdpL8/t819Yk7b1TF0do0R2KXqL6KZcEry
 2NY+buBXq4Ra4krRbhMHVHp/f3Ml2zy6L893xC/DlzBgTg1jVA==
X-Google-Smtp-Source: APXvYqxi9SxGmB6WJ0VEo4ExJlEomgTmVY+1hDj/QHMErZSi3bhnH+b9QM7SBMmMXCmprDX1aVRoJeAz3BLvPoJ5ULY=
X-Received: by 2002:a05:6402:8cf:: with SMTP id
 d15mr1803935edz.225.1570611332262; 
 Wed, 09 Oct 2019 01:55:32 -0700 (PDT)
MIME-Version: 1.0
From: Dost Muhammad Shah <dost.mhd@kindows.net>
Date: Wed, 9 Oct 2019 12:55:06 +0400
Message-ID: <CAMug1CFU04SqRGC6oeyRMDR01hEV5drhJuPHN2GLF8woX5a=nw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_015539_244184_7B7A13CE 
X-CRM114-Status: UNSURE (   5.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Olimex Micro A20 Certain GPIO wont function on
 18.0.06 but they worked on 17.0.1
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
Content-Type: multipart/mixed; boundary="===============8985769465184331962=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8985769465184331962==
Content-Type: multipart/alternative; boundary="0000000000008a439d05947672bb"

--0000000000008a439d05947672bb
Content-Type: text/plain; charset="UTF-8"

I am using a A20 based *Olimex Micro A20* as a development board with *openwrt
18.0.6*. I face a strange issue that some of GPIO works perfectly others
will accept the commands to set as out put and set value *High* or *Low* but
physically the output will not change. I have a previous built image based
on lede17.0.1 and in that all these GPIOs work fine.

when I issue cat /sys/kernel/debug/gpio

This is the result

gpiochip0: GPIOs 0-287, parent: platform/1c20800.pinctrl, 1c20800.pinctrl:
 gpio-35  (                    |sysfs               ) in  lo
 gpio-36  (                    |sysfs               ) in  lo
 gpio-40  (                    |ahci-5v             ) out lo
 gpio-41  (                    |usb0-vbus           ) out hi
 gpio-80  (                    |sysfs               ) out lo
 gpio-81  (                    |sysfs               ) out lo
 gpio-82  (                    |sysfs               ) out lo
 gpio-87  (                    |sysfs               ) out lo
 gpio-96  (                    |sysfs               ) in  hi
 gpio-97  (                    |sysfs               ) in  hi
 gpio-98  (                    |sysfs               ) in  hi
 gpio-99  (                    |sysfs               ) in  hi
 gpio-100 (                    |sysfs               ) in  hi
 gpio-101 (                    |sysfs               ) in  hi
 gpio-102 (                    |sysfs               ) in  hi
 gpio-103 (                    |sysfs               ) in  hi
 gpio-104 (                    |sysfs               ) in  hi
 gpio-105 (                    |sysfs               ) in  hi
 gpio-106 (                    |sysfs               ) in  hi
 gpio-107 (                    |sysfs               ) in  hi
 gpio-108 (                    |sysfs               ) in  hi
 gpio-109 (                    |sysfs               ) in  hi
 gpio-110 (                    |sysfs               ) in  hi
 gpio-111 (                    |sysfs               ) in  hi
 gpio-113 (                    |sysfs               ) out hi
 gpio-114 (                    |sysfs               ) out lo
 gpio-115 (                    |sysfs               ) out hi
 gpio-117 (                    |sysfs               ) out lo
 gpio-128 (                    |sysfs               ) out lo
 gpio-129 (                    |sysfs               ) out hi
 gpio-130 (                    |sysfs               ) out lo
 gpio-132 (                    |sysfs               ) out lo
 gpio-133 (                    |sysfs               ) out lo
 gpio-134 (                    |sysfs               ) out lo
 gpio-135 (                    |sysfs               ) out lo
 gpio-136 (                    |sysfs               ) out lo
 gpio-137 (                    |sysfs               ) out lo
 gpio-138 (                    |sysfs               ) out lo
 gpio-139 (                    |sysfs               ) out lo
 gpio-202 (                    |sysfs               ) in  hi
 gpio-203 (                    |sysfs               ) in  hi
 gpio-225 (                    |cd                  ) in  lo IRQ
 gpio-226 (                    |a20-olinuxino-micro:) out lo
 gpio-227 (                    |usb2-vbus           ) out hi
 gpio-230 (                    |usb1-vbus           ) out hi
 gpio-231 (                    |sysfs               ) out lo
 gpio-235 (                    |cd                  ) in  hi IRQ
 gpio-256 (                    |sysfs               ) out hi
 gpio-257 (                    |sysfs               ) out lo
 gpio-258 (                    |sysfs               ) out hi
 gpio-259 (                    |sysfs               ) out hi
 gpio-266 (                    |sysfs               ) out lo
 gpio-267 (                    |sysfs               ) out lo
 gpio-270 (                    |sysfs               ) out hi
 gpio-271 (                    |sysfs               ) out hi
 gpio-273 (                    |sysfs               ) out hi
 gpio-275 (                    |sysfs               ) out hi

In this case *gpio257* for example would work properly while *gpio138* will
accept all the commands but physically the output will be same

ls /sys/class/gpio/
export        gpio109/      gpio128/      gpio139/      gpio270/      gpio96/
gpio100/      gpio110/      gpio129/      gpio202/      gpio271/      gpio97/
gpio101/      gpio111/      gpio130/      gpio203/      gpio273/      gpio98/
gpio102/      gpio113/      gpio132/      gpio231/      gpio275/      gpio99/
gpio103/      gpio114/      gpio133/      gpio256/      gpio35/       gpiochip0/
gpio104/      gpio115/      gpio134/      gpio257/      gpio36/
gpiochip413/
gpio105/      gpio116/      gpio135/      gpio258/      gpio80/       unexport
gpio106/      gpio117/      gpio136/      gpio259/      gpio81/
gpio107/      gpio118/      gpio137/      gpio266/      gpio82/
gpio108/      gpio119/      gpio138/      gpio267/      gpio87/

How can I solve this issue .

There are several such GPIO at least 8 -9 that I have encountered
I see that all the pins that have 130 -139 numbers wont work . Those with
250+ will work

The following are the pins I am interested in and all the pins in 200
series work as expected. The ones in 130-139 range wont work in the new
image but they were working in previous image

/bin/echo 0 > /sys/class/gpio/gpio257/value
/bin/echo 0 > /sys/class/gpio/gpio258/value
/bin/echo 0 > /sys/class/gpio/gpio259/value
/bin/echo 0 > /sys/class/gpio/gpio271/value
/bin/echo 0 > /sys/class/gpio/gpio270/value
/bin/echo 0 > /sys/class/gpio/gpio256/value
/bin/echo 0 > /sys/class/gpio/gpio138/value
/bin/echo 0 > /sys/class/gpio/gpio139/value
/bin/echo 0 > /sys/class/gpio/gpio135/value
/bin/echo 0 > /sys/class/gpio/gpio137/value
/bin/echo 0 > /sys/class/gpio/gpio134/value
/bin/echo 0 > /sys/class/gpio/gpio136/value
/bin/echo 0 > /sys/class/gpio/gpio133/value
/bin/echo 0 > /sys/class/gpio/gpio266/value
/bin/echo 0 > /sys/class/gpio/gpio267/value

/bin/echo 0 > /sys/class/gpio/gpio132/value

BEST REGARDS,


              <http://kindows.net/>

Dost Muhammad Shah /
dost.mhd@kindows.net /

--0000000000008a439d05947672bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif"><p style=3D"margin-top:0px;font-family:Helvetica,Arial,sans-seri=
f;font-size:15px">I am using a A20 based=C2=A0<strong>Olimex Micro A20</str=
ong>=C2=A0as a development board with=C2=A0<strong>openwrt 18.0.6</strong>.=
 I face a strange issue that some of GPIO works perfectly others will accep=
t the commands to set as out put and set value=C2=A0<strong>High</strong>=
=C2=A0or=C2=A0<strong>Low</strong>=C2=A0but physically the output will not =
change. I have a previous built image based on lede17.0.1 and in that all t=
hese GPIOs work fine.</p><p style=3D"font-family:Helvetica,Arial,sans-serif=
;font-size:15px">when I issue=C2=A0<code style=3D"font-family:Consolas,Menl=
o,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaV=
u Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&qu=
ot;,monospace;font-size:1em;color:rgb(51,51,51);background:rgb(248,248,248)=
">cat /sys/kernel/debug/gpio</code></p><p style=3D"font-family:Helvetica,Ar=
ial,sans-serif;font-size:15px">This is the result</p><pre style=3D"overflow=
:auto;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Li=
beration Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans =
Mono&quot;,&quot;Courier New&quot;,monospace;font-size:15px"><code style=3D=
"font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberat=
ion Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&=
quot;,&quot;Courier New&quot;,monospace;font-size:1em;overflow:auto;display=
:block;padding:0.5em;color:rgb(51,51,51);background:rgb(248,248,248);max-he=
ight:500px">gpiochip0: GPIOs 0-287, parent: platform/1c20800.pinctrl, 1c208=
00.pinctrl:
 gpio-35  (                    |sysfs               ) in  lo
 gpio-36  (                    |sysfs               ) in  lo
 gpio-40  (                    |ahci-5v             ) out lo
 gpio-41  (                    |usb0-vbus           ) out hi
 gpio-80  (                    |sysfs               ) out lo
 gpio-81  (                    |sysfs               ) out lo
 gpio-82  (                    |sysfs               ) out lo
 gpio-87  (                    |sysfs               ) out lo
 gpio-96  (                    |sysfs               ) in  hi
 gpio-97  (                    |sysfs               ) in  hi
 gpio-98  (                    |sysfs               ) in  hi
 gpio-99  (                    |sysfs               ) in  hi
 gpio-100 (                    |sysfs               ) in  hi
 gpio-101 (                    |sysfs               ) in  hi
 gpio-102 (                    |sysfs               ) in  hi
 gpio-103 (                    |sysfs               ) in  hi
 gpio-104 (                    |sysfs               ) in  hi
 gpio-105 (                    |sysfs               ) in  hi
 gpio-106 (                    |sysfs               ) in  hi
 gpio-107 (                    |sysfs               ) in  hi
 gpio-108 (                    |sysfs               ) in  hi
 gpio-109 (                    |sysfs               ) in  hi
 gpio-110 (                    |sysfs               ) in  hi
 gpio-111 (                    |sysfs               ) in  hi
 gpio-113 (                    |sysfs               ) out hi
 gpio-114 (                    |sysfs               ) out lo
 gpio-115 (                    |sysfs               ) out hi
 gpio-117 (                    |sysfs               ) out lo
 gpio-128 (                    |sysfs               ) out lo
 gpio-129 (                    |sysfs               ) out hi
 gpio-130 (                    |sysfs               ) out lo
 gpio-132 (                    |sysfs               ) out lo
 gpio-133 (                    |sysfs               ) out lo
 gpio-134 (                    |sysfs               ) out lo
 gpio-135 (                    |sysfs               ) out lo
 gpio-136 (                    |sysfs               ) out lo
 gpio-137 (                    |sysfs               ) out lo
 gpio-138 (                    |sysfs               ) out lo
 gpio-139 (                    |sysfs               ) out lo
 gpio-202 (                    |sysfs               ) in  hi
 gpio-203 (                    |sysfs               ) in  hi
 gpio-225 (                    |cd                  ) in  lo IRQ
 gpio-226 (                    |a20-olinuxino-micro:) out lo
 gpio-227 (                    |usb2-vbus           ) out hi
 gpio-230 (                    |usb1-vbus           ) out hi
 gpio-231 (                    |sysfs               ) out lo
 gpio-235 (                    |cd                  ) in  hi IRQ
 gpio-256 (                    |sysfs               ) out hi
 gpio-257 (                    |sysfs               ) out lo
 gpio-258 (                    |sysfs               ) out hi
 gpio-259 (                    |sysfs               ) out hi
 gpio-266 (                    |sysfs               ) out lo
 gpio-267 (                    |sysfs               ) out lo
 gpio-270 (                    |sysfs               ) out hi
 gpio-271 (                    |sysfs               ) out hi
 gpio-273 (                    |sysfs               ) out hi
 gpio-275 (                    |sysfs               ) out hi
</code></pre><p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:1=
5px">In this case=C2=A0<strong>gpio257</strong>=C2=A0for example would work=
 properly while=C2=A0<strong>gpio138</strong>=C2=A0will accept all the comm=
ands but physically the output will be same</p><pre style=3D"overflow:auto;=
font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberati=
on Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&q=
uot;,&quot;Courier New&quot;,monospace;font-size:15px"><code style=3D"font-=
family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mo=
no&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,=
&quot;Courier New&quot;,monospace;font-size:1em;overflow:auto;display:block=
;padding:0.5em;color:rgb(51,51,51);background:rgb(248,248,248);max-height:5=
00px">ls /sys/class/gpio/
export        gpio109/      gpio128/      gpio139/      gpio270/      gpio9=
6/
gpio100/      gpio110/      gpio129/      gpio202/      gpio271/      gpio9=
7/
gpio101/      gpio111/      gpio130/      gpio203/      gpio273/      gpio9=
8/
gpio102/      gpio113/      gpio132/      gpio231/      gpio275/      gpio9=
9/
gpio103/      gpio114/      gpio133/      gpio256/      gpio35/       gpioc=
hip0/
gpio104/      gpio115/      gpio134/      gpio257/      gpio36/       gpioc=
hip413/      =20
gpio105/      gpio116/      gpio135/      gpio258/      gpio80/       unexp=
ort
gpio106/      gpio117/      gpio136/      gpio259/      gpio81/
gpio107/      gpio118/      gpio137/      gpio266/      gpio82/
gpio108/      gpio119/      gpio138/      gpio267/      gpio87/
</code></pre><p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:1=
5px">How can I solve this issue .</p><p style=3D"font-family:Helvetica,Aria=
l,sans-serif;font-size:15px">There are several such GPIO at least 8 -9 that=
 I have encountered</p></div><div><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"=
 style=3D"font-family:tahoma,sans-serif"><span style=3D"font-family:Helveti=
ca,Arial,sans-serif;font-size:15px">I see that all the pins that have 130 -=
139 numbers wont work . Those with 250+ will work</span></div><p style=3D"f=
ont-family:Helvetica,Arial,sans-serif;font-size:15px">The following are the=
 pins I am interested in and all the pins in 200 series work as expected. T=
he ones in 130-139 range wont work in the new image but they were working i=
n previous image</p><pre style=3D"overflow:auto;font-family:Consolas,Menlo,=
Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu =
Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot=
;,monospace;font-size:15px"><code style=3D"font-family:Consolas,Menlo,Monac=
o,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans =
Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,mon=
ospace;font-size:1em;overflow:auto;display:block;padding:0.5em;color:rgb(51=
,51,51);background:rgb(248,248,248);max-height:500px">/bin/echo 0 &gt; /sys=
/class/gpio/gpio257/value
/bin/echo 0 &gt; /sys/class/gpio/gpio258/value
/bin/echo 0 &gt; /sys/class/gpio/gpio259/value
/bin/echo 0 &gt; /sys/class/gpio/gpio271/value
/bin/echo 0 &gt; /sys/class/gpio/gpio270/value
/bin/echo 0 &gt; /sys/class/gpio/gpio256/value
/bin/echo 0 &gt; /sys/class/gpio/gpio138/value
/bin/echo 0 &gt; /sys/class/gpio/gpio139/value
/bin/echo 0 &gt; /sys/class/gpio/gpio135/value
/bin/echo 0 &gt; /sys/class/gpio/gpio137/value
/bin/echo 0 &gt; /sys/class/gpio/gpio134/value
/bin/echo 0 &gt; /sys/class/gpio/gpio136/value
/bin/echo 0 &gt; /sys/class/gpio/gpio133/value
/bin/echo 0 &gt; /sys/class/gpio/gpio266/value
/bin/echo 0 &gt; /sys/class/gpio/gpio267/value=C2=A0</code></pre><div class=
=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><span style=3D"b=
ackground-color:rgb(248,248,248);color:rgb(51,51,51);font-family:Consolas,M=
enlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;De=
jaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New=
&quot;,monospace;font-size:1em">/bin/echo 0 &gt; /sys/class/gpio/gpio132/va=
lue</span></div><br><font size=3D"2" face=3D"tahoma, sans-serif">BEST REGAR=
DS,</font></div><div dir=3D"ltr"><font size=3D"2" face=3D"tahoma, sans-seri=
f"><br></font></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><table widt=
h=3D"450" style=3D"table-layout:fixed" border=3D"0" cellpadding=3D"0"><tbod=
y><tr><td width=3D"90" align=3D"left" valign=3D"top"><p style=3D"margin-rig=
ht:10px;font-family:Helvetica,Arial,sans-serif;font-size:12px;line-height:1=
4px;margin-bottom:10px"><a style=3D"text-decoration:none" href=3D"http://ki=
ndows.net/" target=3D"_blank">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</a>           </p></td><td width=3D"370" align=3D"left" nowrap><p style=
=3D"font-family:Helvetica,Arial,sans-serif;font-size:12px;line-height:14px;=
color:rgb(33,33,33);margin-bottom:10px"><span style=3D"font-weight:bold;dis=
play:inline">Dost Muhammad Shah</span>     <span style=3D"display:inline">/=
</span><span style=3D"display:inline"><br></span>       <a style=3D"color:r=
gb(71,124,204);text-decoration:none;display:inline" href=3D"mailto:dost.mhd=
@kindows.net" target=3D"_blank">dost.mhd@kindows.net</a><span style=3D"disp=
lay:inline"> /<br></span></p></td></tr></tbody></table></div><div dir=3D"lt=
r"><br></div><div dir=3D"ltr"><div><div><br><br></div></div></div></div></d=
iv></div></div></div></div></div>

--0000000000008a439d05947672bb--


--===============8985769465184331962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8985769465184331962==--

