Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E561BD6A4
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 09:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Kh/7qfCG/GVPb8JnMYru4k76znQUcs06cqRLDi0xiQ=; b=eFzQEjZbNyb1EWfy4/7bjdzLK
	oRP6ChYzrkK+OxQ0CYr4hplasjF863QPAfe5jaeCxkEGW7DxTsSgtYalyyG2Gn2TxVXgEihQX16YM
	JNVZUYohNPRvGajr5/noR1chAv8EGqbot6aPbiHbfph83BP6eOzT/kr2hDLqhDD5Or5mBsjRavqfo
	rhbTEwFbJicIfo/OoyMACDsomGC3M4Hy1LdwbbJ/bSr+mYIHUip6SbipTEHJKUNm1fu/cwNUqnDHQ
	MX5kjvrQH9eF3MK9iNuBtpAXiosa70dlE7Roz2sQUZ3W8TRcTrwdcQc7cBKmnfkt14wcrD8oI5HhW
	Upo8yBVOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThZP-0006P7-8V; Wed, 29 Apr 2020 07:55:51 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThZE-0006OI-9c
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 07:55:42 +0000
Received: by mail-ej1-x629.google.com with SMTP id a2so807891ejx.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Apr 2020 00:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G0vdW1WNFhUXv1Hqy3mw12tjERX4hj6E8q8ySo+CayU=;
 b=bjdESO0GM9pPI6jOEUvXcdwNbHS9wDGKKkj7RdaZZXKx5nZ3UaB7YdJf+zOdRKc/5C
 PNq4ALS2wXGnXeX7DbtscddAmYeqZYOxLpsYGV1ePC2hlTGHnViz2cVxngkHJq5Ig3x0
 Ni654AeNI0MZ2xsfn5qXnuiTwAxJrRTLbM9dqDd2PE3NfQJbGTkTGQ/Gnp576Gy9owOz
 /apT17wjlBC7xyJSUkEef7OdaffE7aMsRKUoYcCGcd6wx6gsRlZmuaNcMatCgjmD5NhI
 as/y75jNEXNSGI4M2/UIVJsrBuGfDFWMQTuIUyZNc4aq1yakwN0S7D7cuY3RLaEBzPhH
 8xHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G0vdW1WNFhUXv1Hqy3mw12tjERX4hj6E8q8ySo+CayU=;
 b=RPCCVaBqAua/K/3zpKiQjXpsnNLRMIhJwp6SHE1tQJbtmD2WtBsuRSbjHe8HbXf27K
 EXoxvoPf959ulWMDswAmmBBWRbTL5v68mPd3TEZRDiDqcoAhoOTtSiXNft35thQfsprO
 GgXs+BPanRMPw70dpV6aewQR9SIHP4zO/sFDCd5rUCKCW2elZ41JOYDLzngr/JTzcNQj
 sTu7EDm2n0k+SzqyEHiX5BpN/vqNmFyrnyWZFd/OC6TwCFM6i14cVovG9FPkgdBos2HD
 Pzs1hNaW2+gGhrnjZp65U5zOwrfrUGQS72Dnzsy3l5IlBTc2XV8L+yh0An/G8fKO3fvY
 0prw==
X-Gm-Message-State: AGi0Pubvc6FtpxP6utfaYyPcjsS4Tp9gvOG8CdE4MvXn8msvLB+ldWKr
 QiWHKheXmR5bZgHpuI8YHCenzkCPo+/l49BIirU=
X-Google-Smtp-Source: APiQypIyS+lWaduYELxjv7sAEoGY67ZCgsSWZEnDRgIlW8nt87/r2hdB7mqzQwNmNhGLOsLnQOpc1J198sA/92466dU=
X-Received: by 2002:a17:906:704c:: with SMTP id
 r12mr1381959ejj.105.1588146938599; 
 Wed, 29 Apr 2020 00:55:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <d618aa4a-1fd8-9016-c39e-01e4a4a46ea4@gmail.com>
In-Reply-To: <d618aa4a-1fd8-9016-c39e-01e4a4a46ea4@gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Wed, 29 Apr 2020 16:55:26 +0900
Message-ID: <CALYKT1h9j7jiOxP-2Q4T2hprer9=H4F2=XEVdQ4dhQ_eB+HoVQ@mail.gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_005540_343663_B0D7A316 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:629 listed in]
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
Content-Type: multipart/mixed; boundary="===============7044579939414410452=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7044579939414410452==
Content-Type: multipart/alternative; boundary="000000000000205c9b05a46946e7"

--000000000000205c9b05a46946e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alberto,

Thank you for letting me know the url of ModemManager mailing list.
I posted this question there too.

Thank you.
Jeonghum

2020=EB=85=84 4=EC=9B=94 29=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 3:50, A=
lberto Bursi <bobafetthotmail@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=
=B1:

>
>
> On 29/04/20 08:29, Jeonghum Joh wrote:
> > Hello,
> > Thanks to many people in this list, I was able to find ModemManager and
> > I've tried applying it.
> >
> > =3D=3D=3D=3D Testing environment =3D=3D=3D=3D
> >
> > Target Model        : MediaTek MT7622 AC4300rfb1 board
> > Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI
> > Kernel Version      : 4.4.124
> > Modem                 : HUCOM HM-900
> > ModemManager
> > Version                 : 1.12.8
> > menuconfig          : (QMI on, MBIM off)
> > git clone URL        :
> > https://github.com/openwrt/packages/tree/master/net/modemmanager
> >
> > Noted Device Files : Those files and paths are noted/watched
> > qmichannel                                            : /dev/cdc-wdm0
> > usbnet_adapter                                      :
> /sys/class/net/wwan0
> > /sys/bus/usb/devices/2-1/manufacturer : QCOM
> > /sys/bus/usb/devices/2-1/idVendor        :05C6
> > /sys/bus/usb/devices/2-1/idProduct       :90db
> > /sys/bus/usb/devices/2-1/speed             :5000
> > /sys/bus/usb/devices/2-1/product          :SDXPRAIRIE-MTP _SN:B02CE51B
> > /sys/bus/usb/devices/2-1/version           :3.20
> > /sys/bus/usb/devices/2-1:1.2/net/wwan0
> > /sys/bus/usb/devices/2-1:1.2/net/wwan0/device/driver
> > /sys/bus/usb/devices/2-1:1.2/net/wwan0/device
> > /sys/bus/usb/devices/2-1:1.2/usbmisc/cdc-wdm0
> > /sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2
> >
> > Kernel modules watched via lsmod
> > cdc_wdm                 8821  1 qmi_wwan
> > qmi_wwan                6252  0
> > usbcore               153512 20
> >
> option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,cdc_wdm=
,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hcd,ohci=
_platform,ohci_hcd,ehci_platform,ehci_hcd
> > usbnet                 19027  3 qmi_wwan,cdc_ncm,cdc_ether
> >
> > Above is original environment.
> > On this circumstances, I disabled CM provided from modem provider :
> hucom-cm
> > And I added one configuration section into the bottom of
> > /etc/config/network :
> > config interface 'broadband'
> >          option device
> '/sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2'
> >          option proto 'modemmanager'
> >          option apn '5g-internet.sktelecom.com
> > <http://5g-internet.sktelecom.com>'
> >          option username ''
> >          option password ''
> >          option pincode ''
> >          option lowpower '1'
> >
> > Under these settings, I confirmed that
> > - hucom-cm is disabled
> > - ModemManager is alive
> >   4430 root      229m D    /usr/sbin/ModemManager
> >
> > The wwan0 is not shown from ifconfig and ping 8.8.8.8 fails saying
> > Network is unreachable.
> > So, My first trying to utilize MM seemed to be failed.
> >
> > Originally hucom-cm sets bridge mode like shown below:
> > BRIDGE_MODE_FILE : /sys/module/qmi_wwan/parameters/bridge_mode
> > BRIDGE_IPV4_FILE    : /sys/module/qmi_wwan/parameters/bridge_ipv4
> > But under ModemManager these files are not shown.
> >
> > And I've found many plugin libraries under /usr/lib/ModemManager:
> > libmm-plugin-altair-lte.so     libmm-plugin-mtk.so
> >   libmm-plugin-thuraya.so
> >
> > Could someone help me?
> >
> > Do I need to look deeper into ModemManager?
> > Do I need to implement new plugin library for our product?
> > Or do I need to forget about ModemManager?
> >
> > My already given hucom-cm anyway works. It brings data via wwan0 and
> > establish network interface wwan0.
> > Problem is that hucom-cm sets up firewall rules and routing settings
> > redundantly and unnecessarily. So I can make it not to do these unneede=
d
> > settings. This way would be good approach I believe.
> > But we'd like to make our product indepecntant from specific modem. I
> > guessed that opensource ModemManager infrastructure would give us some
> > sort of independence from specific modem and in other words it would
> > give some abstraction..
> >
> > I am not sure of anything. Could someone give me some light so that I
> > can find the best way to go?
> >
> > Additional question : If I write our own logic as a plugin library of
> > ModemManager, wouldn't it necessarily have to stick to GPL? Can we appl=
y
> > commercial license for the plugin?
> >
> > Thank you very much in advance.
> > Jeonghum
>
> If none answers better in this mailing list, development and licensing
> questions about ModemManager should probably be asked in its own mailing
> list https://lists.freedesktop.org/mailman/listinfo/modemmanager-devel
>
> As it is not a package developed by OpenWrt, it is used by desktop Linux
> distributions too (Ubuntu, RHEL, SUSE and most others), Openwrt only
> provides the package and integrates its config with uci.
>
> -Alberto
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000205c9b05a46946e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alberto,<div><br></div><div>Thank you for letting me=
 know the url of ModemManager mailing list.</div><div>I posted this questio=
n there too.</div><div><br></div><div>Thank you.</div><div>Jeonghum</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">20=
20=EB=85=84 4=EC=9B=94 29=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 3:50, Alb=
erto Bursi &lt;<a href=3D"mailto:bobafetthotmail@gmail.com">bobafetthotmail=
@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 29/04/20 08:29, Jeonghum Joh wrote:<br>
&gt; Hello,<br>
&gt; Thanks to many people in this list, I was able to find ModemManager an=
d <br>
&gt; I&#39;ve tried applying it.<br>
&gt; <br>
&gt; =3D=3D=3D=3D Testing environment =3D=3D=3D=3D<br>
&gt; <br>
&gt; Target Model=C2=A0 =C2=A0 =C2=A0 =C2=A0 : MediaTek MT7622 AC4300rfb1 b=
oard<br>
&gt; Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI<br>
&gt; Kernel Version=C2=A0 =C2=A0 =C2=A0 : 4.4.124<br>
&gt; Modem=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: H=
UCOM HM-900<br>
&gt; ModemManager<br>
&gt; Version=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:=
 1.12.8<br>
&gt; menuconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : (QMI on, MBIM off)<br>
&gt; git clone URL=C2=A0 =C2=A0 =C2=A0 =C2=A0 : <br>
&gt; <a href=3D"https://github.com/openwrt/packages/tree/master/net/modemma=
nager" rel=3D"noreferrer" target=3D"_blank">https://github.com/openwrt/pack=
ages/tree/master/net/modemmanager</a><br>
&gt; <br>
&gt; Noted Device Files : Those files and paths are noted/watched<br>
&gt; qmichannel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 : /dev/cdc-wdm0<br>
&gt; usbnet_adapter=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 : /sys/class/net/wwan0<br>
&gt; /sys/bus/usb/devices/2-1/manufacturer : QCOM<br>
&gt; /sys/bus/usb/devices/2-1/idVendor=C2=A0 =C2=A0 =C2=A0 =C2=A0 :05C6<br>
&gt; /sys/bus/usb/devices/2-1/idProduct=C2=A0 =C2=A0 =C2=A0 =C2=A0:90db<br>
&gt; /sys/bus/usb/devices/2-1/speed=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0:5000<br>
&gt; /sys/bus/usb/devices/2-1/product=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :SD=
XPRAIRIE-MTP=C2=A0_SN:B02CE51B<br>
&gt; /sys/bus/usb/devices/2-1/version=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0:3.20<br>
&gt; /sys/bus/usb/devices/2-1:1.2/net/wwan0<br>
&gt; /sys/bus/usb/devices/2-1:1.2/net/wwan0/device/driver<br>
&gt; /sys/bus/usb/devices/2-1:1.2/net/wwan0/device<br>
&gt; /sys/bus/usb/devices/2-1:1.2/usbmisc/cdc-wdm0<br>
&gt; /sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2<br>
&gt; <br>
&gt; Kernel modules watched via lsmod<br>
&gt; cdc_wdm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 8821 =
=C2=A01 qmi_wwan<br>
&gt; qmi_wwan =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06252 =
=C2=A00<br>
&gt; usbcore =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 153512 20 <br=
>
&gt; option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,cdc_=
wdm,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hcd,o=
hci_platform,ohci_hcd,ehci_platform,ehci_hcd<br>
&gt; usbnet =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 19027 =
=C2=A03 qmi_wwan,cdc_ncm,cdc_ether<br>
&gt; <br>
&gt; Above=C2=A0is original environment.<br>
&gt; On this circumstances, I disabled CM provided from modem provider : hu=
com-cm<br>
&gt; And I added one configuration section into the bottom of <br>
&gt; /etc/config/network :<br>
&gt; config interface &#39;broadband&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option device &#39;/sys/devices/plat=
form/1a0c0000.usb/usb2/2-1/2-1:1.2&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option proto &#39;modemmanager&#39;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option apn &#39;<a href=3D"http://5g=
-internet.sktelecom.com" rel=3D"noreferrer" target=3D"_blank">5g-internet.s=
ktelecom.com</a> <br>
&gt; &lt;<a href=3D"http://5g-internet.sktelecom.com" rel=3D"noreferrer" ta=
rget=3D"_blank">http://5g-internet.sktelecom.com</a>&gt;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option username &#39;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option password &#39;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option pincode &#39;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 option lowpower &#39;1&#39;<br>
&gt; <br>
&gt; Under these settings, I confirmed that<br>
&gt; - hucom-cm is disabled<br>
&gt; - ModemManager is alive<br>
&gt;=C2=A0 =C2=A04430 root =C2=A0 =C2=A0 =C2=A0229m D =C2=A0 =C2=A0/usr/sbi=
n/ModemManager<br>
&gt; <br>
&gt; The wwan0 is not shown from ifconfig and ping 8.8.8.8 fails saying <br=
>
&gt; Network is unreachable.<br>
&gt; So, My first trying to utilize MM seemed to be failed.<br>
&gt; <br>
&gt; Originally hucom-cm sets bridge mode like shown below:<br>
&gt; BRIDGE_MODE_FILE : /sys/module/qmi_wwan/parameters/bridge_mode<br>
&gt; BRIDGE_IPV4_FILE=C2=A0 =C2=A0 : /sys/module/qmi_wwan/parameters/bridge=
_ipv4<br>
&gt; But under ModemManager these files are not shown.<br>
&gt; <br>
&gt; And I&#39;ve found many plugin libraries under /usr/lib/ModemManager:<=
br>
&gt; libmm-plugin-altair-lte.so =C2=A0 =C2=A0 libmm-plugin-mtk.so=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0libmm-plugin-thuraya.so<br>
&gt; <br>
&gt; Could someone help me?<br>
&gt; <br>
&gt; Do I need to look deeper into ModemManager?<br>
&gt; Do I need to implement new plugin library for our product?<br>
&gt; Or do I need to forget about ModemManager?<br>
&gt; <br>
&gt; My already given hucom-cm anyway works. It brings data via wwan0 and <=
br>
&gt; establish network interface wwan0.<br>
&gt; Problem is that hucom-cm sets up firewall rules and routing settings <=
br>
&gt; redundantly and unnecessarily. So I can make it not to do these unneed=
ed <br>
&gt; settings. This way would be good approach I believe.<br>
&gt; But we&#39;d like to make our product indepecntant=C2=A0from specific =
modem. I <br>
&gt; guessed that opensource ModemManager infrastructure would give us some=
 <br>
&gt; sort of independence from specific modem and in other words it would <=
br>
&gt; give some abstraction..<br>
&gt; <br>
&gt; I am not sure of anything. Could someone give me some light so=C2=A0th=
at I <br>
&gt; can find the best way=C2=A0to go?<br>
&gt; <br>
&gt; Additional question : If I write our own logic as a plugin library of =
<br>
&gt; ModemManager, wouldn&#39;t it necessarily have to stick to GPL? Can we=
 apply <br>
&gt; commercial license for the plugin?<br>
&gt; <br>
&gt; Thank you very much in advance.<br>
&gt; Jeonghum<br>
<br>
If none answers better in this mailing list, development and licensing <br>
questions about ModemManager should probably be asked in its own mailing <b=
r>
list <a href=3D"https://lists.freedesktop.org/mailman/listinfo/modemmanager=
-devel" rel=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/=
mailman/listinfo/modemmanager-devel</a><br>
<br>
As it is not a package developed by OpenWrt, it is used by desktop Linux <b=
r>
distributions too (Ubuntu, RHEL, SUSE and most others), Openwrt only <br>
provides the package and integrates its config with uci.<br>
<br>
-Alberto<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000205c9b05a46946e7--


--===============7044579939414410452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7044579939414410452==--

