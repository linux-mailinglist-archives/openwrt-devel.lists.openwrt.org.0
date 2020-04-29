Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76B71BD535
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 08:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UFDhVgDJk5oTYZHnlrSB7rtOu2RnD/L+OeTZZwnDddc=; b=rUys3oOAp34wnlIE7LhxLdqsT
	4dhQval8a065psAwMoFofCKgyYtOFkG/VDwco5Te2v1Yu3i7FttplTIiYf0/cAKxnbCzk3gAZOda0
	6v2eytoA61pwQx4PiJ9+9lvKDdB7DrTmludDH4qztWFo0NhnLOuEwORzjn1dybu79gvV9jLS6YkCZ
	+XlM4V7NnUs4AS7xixnmsxDjRklZtobwztwy2ZGXSS1cyKL+8h6f9kGVufx0lchaxZ177MVSZ025y
	jr1PNT18IcNIQoHo0qE+gMNI54Ldwymd2PSVyVBU/pmBZ1p61Jts/+lu3WaEmXp6VYMc3B49RyhTC
	i9RLPwCSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTgfm-0005rJ-Hr; Wed, 29 Apr 2020 06:58:22 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgfe-0005qb-Vw
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 06:58:16 +0000
Received: by mail-lj1-x230.google.com with SMTP id h4so1380011ljg.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 23:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0mRqHblgjRqa3G0giL7F7FZiY0po9UXuAAHqoc1OJeM=;
 b=bN1wPSNqoDD4ROWH4Oskx6+ko/5b6QbQz8NXb7lVjTcNiTWCeo1JQUCS8PYmwGOSnF
 hxuAHOFpVdcExTYHXmsZOcNffdyZ//r86KKLqgP9jZ5XzZDpaJ/9KIvAUZFI/4j+k/5X
 YVdsaktCML5zIsWT7IBoJMK558MpGm3xhZcz3OysFy87oPzdSdn/Ps5e2QSm3Gpt1dk2
 5wJv+W5WAy+n6tMUsyNul8V66jCGsPFi+4PdM8g8afBe6sRHSIfipc+F8JjNnc+nJsKT
 H3iWfVt7UOVbmyrWhWvbFR0N+Vn8Zzehg38QF6xzietRS60GwWP55eJD3/oCCroqnXOY
 uSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0mRqHblgjRqa3G0giL7F7FZiY0po9UXuAAHqoc1OJeM=;
 b=lwHCht+uGtUa7NC6ZTZhk9MWEz72oVN4pDKVXShxtX/C/koN7vvkS+dK3nPssrcoxQ
 kheGus5HIEJSUdskrtS4bZ4ihl9ZXIQHiJVtDBgOE6m2t6IhDXnO61ugEIu7dsgxmBTz
 5YIcS1lPNDxT0JC6Lj28OEXkvGji7hTbUgBP72R324zAxYvXFEb65A2QdsbxHkQGj4V9
 oha758D8aCU9CvamgO12mzmnKn6EUM+GjTvStq3cUQGWohtrQPSY9YUy2vLFVz3r4A4u
 yMZM8JAbfHuxhklPhfd8UQ6p+8HmwIrxVdKXszYYy4PRnZasLwnNKwaRc3Kud8AvX55f
 Y/DQ==
X-Gm-Message-State: AGi0PuZUzB8A18M83958Wsh22GGAUWyilS+wBbCbSJ9DHcNwydWaRhok
 SSvwGY6uAh8ZVHlHqE5IywzSs7omsQYc7dMbiPSrbQ==
X-Google-Smtp-Source: APiQypKmwd+eoBstAnqY/xOa93gEUoC5jcqsaQersSdgSKUbow+1dfZ2gZZKRM/u+PVW/fVcKquImYHgMi/KONs+LTc=
X-Received: by 2002:a2e:96d1:: with SMTP id d17mr20044669ljj.239.1588143492169; 
 Tue, 28 Apr 2020 23:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
In-Reply-To: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 29 Apr 2020 01:58:01 -0500
Message-ID: <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_235815_100656_7C8DAD52 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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
Content-Type: multipart/mixed; boundary="===============6947628620853279287=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6947628620853279287==
Content-Type: multipart/alternative; boundary="000000000000b4146505a468786c"

--000000000000b4146505a468786c
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 29, 2020 at 1:30 AM Jeonghum Joh <oosaprogrammer@gmail.com>
wrote:

> Hello,
> Thanks to many people in this list, I was able to find ModemManager and
> I've tried applying it.
>
> ==== Testing environment ====
>
> Target Model        : MediaTek MT7622 AC4300rfb1 board
> Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI
> Kernel Version      : 4.4.124
> Modem                 : HUCOM HM-900
> ModemManager
> Version                 : 1.12.8
> menuconfig          : (QMI on, MBIM off)
> git clone URL        :
> https://github.com/openwrt/packages/tree/master/net/modemmanager
>
> Noted Device Files : Those files and paths are noted/watched
> qmichannel                                            : /dev/cdc-wdm0
> usbnet_adapter                                      : /sys/class/net/wwan0
> /sys/bus/usb/devices/2-1/manufacturer : QCOM
> /sys/bus/usb/devices/2-1/idVendor        :05C6
> /sys/bus/usb/devices/2-1/idProduct       :90db
> /sys/bus/usb/devices/2-1/speed             :5000
> /sys/bus/usb/devices/2-1/product          :SDXPRAIRIE-MTP _SN:B02CE51B
> /sys/bus/usb/devices/2-1/version           :3.20
> /sys/bus/usb/devices/2-1:1.2/net/wwan0
> /sys/bus/usb/devices/2-1:1.2/net/wwan0/device/driver
> /sys/bus/usb/devices/2-1:1.2/net/wwan0/device
> /sys/bus/usb/devices/2-1:1.2/usbmisc/cdc-wdm0
> /sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2
>
> Kernel modules watched via lsmod
> cdc_wdm                 8821  1 qmi_wwan
> qmi_wwan                6252  0
> usbcore               153512 20
> option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,cdc_wdm,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hcd,ohci_platform,ohci_hcd,ehci_platform,ehci_hcd
> usbnet                 19027  3 qmi_wwan,cdc_ncm,cdc_ether
>
> Above is original environment.
> On this circumstances, I disabled CM provided from modem provider :
> hucom-cm
> And I added one configuration section into the bottom of
> /etc/config/network :
> config interface 'broadband'
>         option device '/sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2'
>         option proto 'modemmanager'
>         option apn '5g-internet.sktelecom.com'
>         option username ''
>         option password ''
>         option pincode ''
>         option lowpower '1'
>
> Under these settings, I confirmed that
> - hucom-cm is disabled
> - ModemManager is alive
>  4430 root      229m D    /usr/sbin/ModemManager
>
> The wwan0 is not shown from ifconfig and ping 8.8.8.8 fails saying Network
> is unreachable.
> So, My first trying to utilize MM seemed to be failed.
>
> Originally hucom-cm sets bridge mode like shown below:
> BRIDGE_MODE_FILE : /sys/module/qmi_wwan/parameters/bridge_mode
> BRIDGE_IPV4_FILE    : /sys/module/qmi_wwan/parameters/bridge_ipv4
> But under ModemManager these files are not shown.
>
> And I've found many plugin libraries under /usr/lib/ModemManager:
> libmm-plugin-altair-lte.so     libmm-plugin-mtk.so
>  libmm-plugin-thuraya.so
>
> Could someone help me?
>
> Do I need to look deeper into ModemManager?
> Do I need to implement new plugin library for our product?
> Or do I need to forget about ModemManager?
>
> My already given hucom-cm anyway works. It brings data via wwan0 and
> establish network interface wwan0.
> Problem is that hucom-cm sets up firewall rules and routing settings
> redundantly and unnecessarily. So I can make it not to do these unneeded
> settings. This way would be good approach I believe.
> But we'd like to make our product indepecntant from specific modem. I
> guessed that opensource ModemManager infrastructure would give us some sort
> of independence from specific modem and in other words it would give some
> abstraction..
>
> I am not sure of anything. Could someone give me some light so that I can
> find the best way to go?
>
> Additional question : If I write our own logic as a plugin library of
> ModemManager, wouldn't it necessarily have to stick to GPL? Can we apply
> commercial license for the plugin?
>
> Thank you very much in advance.
> Jeonghum
>
>
>
Is it practical for you to upgrade to a newer version of OpenWRT? 17.01 is
pretty old

But  since I've been dealing with modem manager related problems in my own
work, I can try to give you some advice.

First, I recommend *not* trying to start with the OpenWRT Netifd
integration. It's a massive pain to work with. Lots of undocumented parts
of the protocol that netifd scripts use to communicate with the netifd c
language binary that I gave up on trying to understand, and just built
work-arounds for.

Instead, before using netifd, try talking directly to modemmanager using
"mmcli".

mmcli can be used to determine if modemmanager understands how to talk to
your modem, and if it does it can be used to issue the connect command
(e.g. mmcli --simple-connect) and then display the connection parameters
that the modem reports are to be used for internet connectivity.

Once you've verified that your modem and modemmanager are able to talk to
each other, then you can investigate getting netifd to work.

You can, and should, reach out to the ModemManager project here:
https://gitlab.freedesktop.org/mobile-broadband/ModemManager, or on their
mailing list
https://lists.freedesktop.org/mailman/listinfo/modemmanager-devel

--000000000000b4146505a468786c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 29, 2020 at 1:30 AM Jeong=
hum Joh &lt;<a href=3D"mailto:oosaprogrammer@gmail.com">oosaprogrammer@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hello,<div>Thanks to many people in this list, I was =
able to find ModemManager and I&#39;ve tried applying it.</div><div><br></d=
iv><div>=3D=3D=3D=3D Testing environment =3D=3D=3D=3D</div><div><br></div><=
div>Target Model=C2=A0 =C2=A0 =C2=A0 =C2=A0 : MediaTek MT7622 AC4300rfb1 bo=
ard<br></div><div>Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / L=
uCI</div><div>Kernel Version=C2=A0 =C2=A0 =C2=A0 : 4.4.124</div><div>Modem=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: HUCOM HM-90=
0<br></div><div>ModemManager<br></div><div>Version=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 1.12.8<br></div><div>menuconfig=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : (QMI on, MBIM off)</div><div>git clone UR=
L=C2=A0 =C2=A0 =C2=A0 =C2=A0 :=C2=A0<a href=3D"https://github.com/openwrt/p=
ackages/tree/master/net/modemmanager" target=3D"_blank">https://github.com/=
openwrt/packages/tree/master/net/modemmanager</a><br></div><div><br></div><=
div>Noted Device Files : Those files and paths are noted/watched</div><div>=
qmichannel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 : /dev/cdc-wdm0</div><div>usbnet_adapter=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /sys/class/net/wwan0</div><div>=
/sys/bus/usb/devices/2-1/manufacturer : QCOM<br></div><div>/sys/bus/usb/dev=
ices/2-1/idVendor=C2=A0 =C2=A0 =C2=A0 =C2=A0 :05C6</div><div>

/sys/bus/usb/devices/2-1/idProduct=C2=A0 =C2=A0 =C2=A0 =C2=A0:90db</div><di=
v>

/sys/bus/usb/devices/2-1/speed=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0:5000</div><div>

/sys/bus/usb/devices/2-1/product=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :SDXPRAI=
RIE-MTP=C2=A0_SN:B02CE51B</div><div>/sys/bus/usb/devices/2-1/version=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:3.20</div><div>/sys/bus/usb/devices/2-1:=
1.2/net/wwan0<br></div><div><div>/sys/bus/usb/devices/2-1:1.2/net/wwan0/dev=
ice/driver<br></div><div><div>/sys/bus/usb/devices/2-1:1.2/net/wwan0/device=
</div></div><div></div></div><div><div><div>/sys/bus/usb/devices/2-1:1.2/us=
bmisc/cdc-wdm0<br></div><div><div></div></div></div><div>/sys/devices/platf=
orm/1a0c0000.usb/usb2/2-1/2-1:1.2<br></div><div></div></div><div><br></div>=
<div>Kernel modules watched via lsmod</div><div>cdc_wdm =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 8821 =C2=A01 qmi_wwan<br></div><div>=
qmi_wwan =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06252 =C2=A0=
0<br></div><div>usbcore =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 15=
3512 20 option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,c=
dc_wdm,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hc=
d,ohci_platform,ohci_hcd,ehci_platform,ehci_hcd<br></div><div>usbnet =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 19027 =C2=A03 qmi_wwan,cd=
c_ncm,cdc_ether<br></div><div><br></div><div>Above=C2=A0is original environ=
ment.</div><div>On this circumstances, I disabled CM provided from modem pr=
ovider : hucom-cm</div><div>And I added one configuration section into the =
bottom of /etc/config/network :</div><div>config interface &#39;broadband&#=
39;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option device &#39;/sys/devices/p=
latform/1a0c0000.usb/usb2/2-1/2-1:1.2&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 o=
ption proto &#39;modemmanager&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option ap=
n &#39;<a href=3D"http://5g-internet.sktelecom.com" target=3D"_blank">5g-in=
ternet.sktelecom.com</a>&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option usernam=
e &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option password &#39;&#39;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 option pincode &#39;&#39;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 option lowpower &#39;1&#39;<br></div><div><br></div><div>Under t=
hese settings, I confirmed that</div><div>- hucom-cm is disabled</div><div>=
- ModemManager is alive</div><div>=C2=A04430 root =C2=A0 =C2=A0 =C2=A0229m =
D =C2=A0 =C2=A0/usr/sbin/ModemManager<br></div><div><br></div><div>The wwan=
0 is not shown from ifconfig and ping 8.8.8.8 fails saying Network is unrea=
chable.</div><div>So, My first trying to utilize MM seemed to be failed.</d=
iv><div><br></div><div>Originally hucom-cm sets bridge mode like shown belo=
w:</div><div><div>BRIDGE_MODE_FILE : /sys/module/qmi_wwan/parameters/bridge=
_mode</div><div>BRIDGE_IPV4_FILE=C2=A0 =C2=A0 : /sys/module/qmi_wwan/parame=
ters/bridge_ipv4</div><div>But under ModemManager these files are not shown=
.<br></div><div><br></div><div>And I&#39;ve found many plugin libraries und=
er /usr/lib/ModemManager:</div><div>libmm-plugin-altair-lte.so =C2=A0 =C2=
=A0 libmm-plugin-mtk.so =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libmm-plug=
in-thuraya.so<br></div><div><br></div><div>Could someone help me?</div><div=
><br></div><div>Do I need to look deeper into ModemManager?</div><div>Do I =
need to implement new plugin library for our product?</div><div>Or do I nee=
d to forget about ModemManager?</div><div><br></div><div>My already given h=
ucom-cm anyway works. It brings data via wwan0 and establish network interf=
ace wwan0.</div><div>Problem is that hucom-cm sets up firewall rules and ro=
uting settings redundantly and unnecessarily. So I can make it not to do th=
ese unneeded settings. This way would be good approach I believe.</div><div=
>But we&#39;d like to make our product indepecntant=C2=A0from specific mode=
m. I guessed that opensource ModemManager infrastructure would give us some=
 sort of independence from specific modem and in other words it would give =
some abstraction..</div><div><br></div><div>I am not sure of anything. Coul=
d someone give me some light so=C2=A0that I can find the best way=C2=A0to g=
o?</div><div><br></div><div>Additional question : If I write our own logic =
as a plugin library of ModemManager, wouldn&#39;t it necessarily have to st=
ick to GPL? Can we apply commercial license for the plugin?</div><div><br><=
/div><div>Thank you very much in advance.</div><div>Jeonghum</div><div><br>=
</div><div><br></div></div></div></blockquote><div><div><br></div><div>Is i=
t practical for you to upgrade to a newer version of OpenWRT? 17.01 is pret=
ty old=C2=A0</div></div><div><br></div><div>But=C2=A0 since I&#39;ve been d=
ealing with modem manager related problems in my own work, I can try to giv=
e you some advice.</div><div><br></div><div>First, I recommend *not* trying=
 to start with the OpenWRT Netifd integration. It&#39;s a massive pain to w=
ork with. Lots of undocumented parts of the protocol that netifd scripts us=
e to communicate with the netifd c language binary that I gave up on trying=
 to understand, and just built work-arounds for.</div><div><br></div><div>I=
nstead, before using netifd, try talking directly to modemmanager using &qu=
ot;mmcli&quot;.</div><div><br></div><div>mmcli can be used to determine if =
modemmanager understands how to talk to your modem, and if it does it can b=
e used to issue the connect command (e.g. mmcli --simple-connect) and then =
display the connection parameters that the modem reports are to be used for=
 internet connectivity.</div><div><br></div><div>Once you&#39;ve verified t=
hat your modem and modemmanager are able to talk to each other, then you ca=
n investigate getting netifd to work.</div><div><br></div><div>You can, and=
 should, reach out to the ModemManager project here:=C2=A0<a href=3D"https:=
//gitlab.freedesktop.org/mobile-broadband/ModemManager">https://gitlab.free=
desktop.org/mobile-broadband/ModemManager</a>, or on their mailing list=C2=
=A0<a href=3D"https://lists.freedesktop.org/mailman/listinfo/modemmanager-d=
evel">https://lists.freedesktop.org/mailman/listinfo/modemmanager-devel</a>=
</div><div><br></div><div><br></div></div></div>

--000000000000b4146505a468786c--


--===============6947628620853279287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6947628620853279287==--

