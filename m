Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE051CA951
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 May 2020 13:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wC2CQZZ7x+MQp9qcwoRhaMzn7YY4Frkm0phhgNdrb8c=; b=g73PG1gFqCaPvsSloouG8BI99
	n2sRXI8waJZnRF0/Dz02upDK0VQb2V039R/p8CxD+tbcleBwh6GR0fke1diDHzTpxXlVysGbU+B6z
	rio+/mEOlkaW1zsBo2YF7rKg0TymKyNcLAORSqJuXBS1v/yQNpWodckx3xSQXt3hcn6q9cW3aqjlw
	dlU6MgoTfCT2d5KuimPMt+f3I7JSLH/Zqv44GkgfQWjsJZOST83Vnb4sqLcCCmQGdLmc+F90Q1C8m
	eYj1vS73jokQXAbCCi5IdJrNXsn1BSQNz5baT24NnW0tG4bhVCK+OY2dZ3klKZ1BPWC0Letc7jGW2
	mdtFMW8dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX0wD-0007pl-Fj; Fri, 08 May 2020 11:13:05 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX0w7-0007p8-9G
 for openwrt-devel@lists.openwrt.org; Fri, 08 May 2020 11:13:01 +0000
Received: by mail-ed1-x529.google.com with SMTP id k22so966928eds.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 May 2020 04:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GffM/I5m717l74VgTxLlsx7k3En4HdNhCREP8DeYy40=;
 b=jVjq55j9MY+EgNgfiuxXdN40fLBjsJlVaZnMKNWTrH/F7jimZuZWtva0dsvaebF5sF
 o34W+ANoEDmVzHAZSh5pz/MutqPKF++hZIU1RX1nS5zoK3D7azCtn9cGPRl7bZBqelfc
 Qs7u3qJv2u9qApB01mLm/SZVuyDQJE2wYbQ9WYmIody3hIY3JVysPXh82/NBKiKmD/Jc
 2Fl+J/buFuaK2OSlOgbFk6vn4zabyy8gmcWpzueYMvQ34F406qre9QTDp19MuRko1SXq
 PAXfzAYANWM08yRFFtwcbySgiHE0aCQoKYiGJPS7YLRnlzBQgwC5dPHstaFGIBMUSZWB
 M52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GffM/I5m717l74VgTxLlsx7k3En4HdNhCREP8DeYy40=;
 b=Qb8jyuq6B519Qmta9IQbANuFwmEKcFKinijavph/4EDBN8+4NiIicbNGUwwG99JGLq
 SFEcYv4r7W7GM8fM7wPMY8thc0OL42XTW2C/ZfyeOq1+0VayRm6ncI4vYSYZWDBhFbrr
 jWKJQ5tQf9GJxA42528RYpP5P/r4ySgUBgW330DD1SVIjYTYJzb11L8pDMcPxh+wLnCS
 4PJzSUdpLZyLDpCdrd2AOeSJCAOvpHGgyRfmmoYnQuprpAocoEE9G6QteIn26U9OtTJi
 f20GL15Ing3qGBNgOr2EQf6lizDrq+xnzso2ajWHzWykpdTb+hIwXPl2ZmpBUJ74GItg
 5JQA==
X-Gm-Message-State: AGi0Pubb4fdk8c2j/OUhPLT+i62KHleHYVH8NZg4RhTp44ODzlMQGw8Z
 q9avzNA+4w9DhlXfJFjsVJ1S3+5H7UPlr5uI4a8=
X-Google-Smtp-Source: APiQypIJyqP8TsvwMjc/0lSEK2Y9OaGuO6/Sgg6zgXFahZItOZDXaZZBNXsh1RdaxdQngbij5ExSyJVYqaprKSa8+hw=
X-Received: by 2002:a05:6402:3056:: with SMTP id
 bu22mr1694025edb.192.1588936376820; 
 Fri, 08 May 2020 04:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
In-Reply-To: <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Fri, 8 May 2020 20:12:45 +0900
Message-ID: <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_041259_350687_F2EA9752 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============6181760014923495633=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6181760014923495633==
Content-Type: multipart/alternative; boundary="0000000000004fa9ab05a5211415"

--0000000000004fa9ab05a5211415
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Aleksander,

Thank you very much for your answers and kind reactions.
I also wish to let you connect to our device so that you can look at it
directly but I think to let you do this level of favor I think I at least
need to check and make sure as much as possible myself first.

With your answers I learned that our modem might not work with ModemManager
well because it uses not-yet open usbnet driver from the linux kernel
mainline.

Hucom provided us usebnet adapter driver code and usb serial driver code.
They are GPL but they didn't apply it to linux mainline kernel.

So I think hucom modem is now not a trustworthy thing.

We have Sierra modem. HL7528
So I tested my linux box with this modem and I received first prints below:

root@LEDE:/lib/udev/rules.d# mmcli -L
    /org/freedesktop/ModemManager1/Modem/0 [Sierra Wireless] HL7528
root@LEDE:/lib/udev/rules.d# mmcli -m 0
  -----------------------------
  General  |         dbus path: /org/freedesktop/ModemManager1/Modem/0
           |         device id: a643b0bb58dac30a2cd4ff6b486e826b483d298b
  -----------------------------
  Hardware |      manufacturer: Sierra Wireless
           |             model: HL7528
           | firmware revision:
THL7528_778_tb3_utp426.0.0.152000.202004221951.x7160_1
           |         supported: gsm-umts, lte
           |           current: gsm-umts, lte
           |      equipment id: 356170062941712
  -----------------------------
  System   |            device: /sys/devices/platform/1a0c0000.usb/usb1/1-2
           |           drivers: cdc_acm, cdc_ncm
           |            plugin: Generic
           |      primary port: ttyACM0
           |             ports: wwan3 (net), ttyACM0 (at), wwan0 (net),
wwan1 (net),
           |                    wwan2 (net), ttyACM2 (at)
  -----------------------------
  Status   |             state: failed
           |     failed reason: sim-missing
           |       power state: on
           |    signal quality: 0% (cached)
  -----------------------------
  Modes    |         supported: allowed: 2g, 3g, 4g; preferred: none
           |           current: allowed: any; preferred: none

I did this test to verify if my applying ModemManager have any issue. With
this print result, can I judge that ModemManager is ported well?

I from now on will test with this modem. I think I need rule file for this
modem and I found one:
/lib/udev/rules.d/77-mm-sierra.rules

The content of this rule file:

# do not edit this file, it will be overwritten on update
ACTION!=3D"add|change|move|bind", GOTO=3D"mm_sierra_end"
SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"1199", GOTO=3D"mm_sierra"
GOTO=3D"mm_sierra_end"

LABEL=3D"mm_sierra"
SUBSYSTEMS=3D=3D"usb", ATTRS{bInterfaceNumber}=3D=3D"?*",
ENV{.MM_USBIFNUM}=3D"$attr{bInterfaceNumber}"

# Netgear AC341U: enable connection status polling explicitly
ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9057",
ENV{ID_MM_QMI_CONNECTION_STATUS_POLLING_ENABLE}=3D"1"

# MC74XX: Add port hints
#  if 03: primary port
#  if 02: raw NMEA port
#  if 00: diag/qcdm port
ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9071", ENV{.MM_USBIFNUM=
}=3D=3D"03",
ENV{ID_MM_PORT_TYPE_AT_PRIMARY}=3D"1"
ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9071", ENV{.MM_USBIFNUM=
}=3D=3D"02",
ENV{ID_MM_PORT_TYPE_GPS}=3D"1"
ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9071", ENV{.MM_USBIFNUM=
}=3D=3D"00",
ENV{ID_MM_PORT_TYPE_QCDM}=3D"1"

# EM7565: Add port hints
#  if 03: primary port
#  if 02: raw NMEA port
#  if 00: diag/qcdm port
ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9091", ENV{.MM_USBIFNUM=
}=3D=3D"03",
ENV{ID_MM_PORT_TYPE_AT_PRIMARY}=3D"1"
ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9091", ENV{.MM_USBIFNUM=
}=3D=3D"02",
ENV{ID_MM_PORT_TYPE_GPS}=3D"1"
ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9091", ENV{.MM_USBIFNUM=
}=3D=3D"00",
ENV{ID_MM_PORT_TYPE_QCDM}=3D"1"

LABEL=3D"mm_sierra_end"


Is this rule file fit to my modem?
Or do I need new rule file for this modem?

And do I need special settings in /etc/config/network ? I know basic
settings for this:
config interface 'broadband'
        option device '/sys/devices/platform/1a0c0000.usb/usb1/1-2'
        option proto 'modemmanager'
        option apn 'w <http://5g-internet.sktelecom.com/>hatever corect apn
here'
        option username ''
        option password ''
        option pincode ''
        option lowpower '1'

Thank you very much!
I am writing this late we had holidays.

Thank you very much!

Jeonghum


2020=EB=85=84 5=EC=9B=94 7=EC=9D=BC (=EB=AA=A9) =EC=98=A4=EC=A0=84 3:56, Al=
eksander Morgado <aleksander@aleksander.es>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=
=84=B1:

> Hey,
>
> > I guess I could try other LTE/5G modem.
> > I'd like to know what is best supported by ModemManager or OpenWRT/LEDE=
.
> >
>
> Puff, lots of different devices. If you try anything from e.g. Sierra
> Wireless, Quectel, Telit... they will probably work. BUT, the issues
> seen in your setup may not be directly related to the modem in use.
>
> > Could you please name them. Let me know some please.
> >
> > Thank you very much.
> >
> > Hucom wireless told me they don't support ModemManager.
> >
>
> They probably don't even know what ModemManager is; but that is not a
> reason not to support this device ourselves without the vendor's help.
> Could you set up a public ssh connection to your system so that I can
> take a look at it myself? If so, send details privately.
>
> --
> Aleksander
> https://aleksander.es
>

--0000000000004fa9ab05a5211415
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Aleksander,<div><br></div><div>Thank you very much f=
or your answers and kind reactions.</div><div>I also wish to=C2=A0let you c=
onnect to our device so that you can look at it directly but I think to let=
 you do this level of favor I think I at least need to check and make sure =
as much as possible myself first.</div><div><br></div><div>With your answer=
s I learned that our modem might not work with ModemManager well because it=
 uses not-yet open usbnet driver from the linux kernel mainline.</div><div>=
<br></div><div>Hucom provided us usebnet adapter driver code and usb serial=
 driver code. They are GPL but they didn&#39;t apply it to linux mainline k=
ernel.</div><div><br></div><div>So I think hucom modem is now not a trustwo=
rthy thing.</div><div><br></div><div>We have Sierra modem. HL7528</div><div=
>So I tested my linux box with this modem and I received first prints below=
:</div><div><br></div><div>root@LEDE:/lib/udev/rules.d# mmcli -L<br>=C2=A0 =
=C2=A0 /org/freedesktop/ModemManager1/Modem/0 [Sierra Wireless] HL7528<br>r=
oot@LEDE:/lib/udev/rules.d# mmcli -m 0<br>=C2=A0 --------------------------=
---<br>=C2=A0 General =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 dbus path: /org/f=
reedesktop/ModemManager1/Modem/0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 device id: a643b0bb58dac30a2cd4ff6b486e826=
b483d298b<br>=C2=A0 -----------------------------<br>=C2=A0 Hardware | =C2=
=A0 =C2=A0 =C2=A0manufacturer: Sierra Wireless<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 model: HL7528<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| firmware revision: THL7528_77=
8_tb3_utp426.0.0.152000.202004221951.x7160_1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 supported: gsm-umts, lte<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
current: gsm-umts, lte<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0=
 =C2=A0 =C2=A0equipment id: 356170062941712<br>=C2=A0 ---------------------=
--------<br>=C2=A0 System =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0device: /sys/devices/platform/1a0c0000.usb/usb1/1-2<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 drivers: cdc_a=
cm, cdc_ncm<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0plugin: Generic<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0primary port: ttyACM0<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ports: =
wwan3 (net), ttyACM0 (at), wwan0 (net), wwan1 (net),<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0wwan2 (net), ttyACM2 (at)<br>=C2=A0 -------------------=
----------<br>=C2=A0 Status =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 state: failed<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A0 failed reason: sim-missing<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
| =C2=A0 =C2=A0 =C2=A0 power state: on<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| =C2=A0 =C2=A0signal quality: 0% (cached)<br>=C2=A0 ------------=
-----------------<br>=C2=A0 Modes =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 supported: allowed: 2g, 3g, 4g; preferred: none<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current: allowed:=
 any; preferred: none<br></div><div><br></div><div>I did this test to verif=
y if my applying ModemManager have any issue. With this print result, can I=
 judge that ModemManager is ported well?</div><div><br></div><div>I from no=
w on will test with this modem. I think I need rule file for this modem and=
 I found one:</div><div>/lib/udev/rules.d/77-mm-sierra.rules<br></div><div>=
<br></div><div>The content of this rule file:</div><div><br></div><div># do=
 not edit this file, it will be overwritten on update<br>ACTION!=3D&quot;ad=
d|change|move|bind&quot;, GOTO=3D&quot;mm_sierra_end&quot;<br>SUBSYSTEMS=3D=
=3D&quot;usb&quot;, ATTRS{idVendor}=3D=3D&quot;1199&quot;, GOTO=3D&quot;mm_=
sierra&quot;<br>GOTO=3D&quot;mm_sierra_end&quot;<br><br>LABEL=3D&quot;mm_si=
erra&quot;<br>SUBSYSTEMS=3D=3D&quot;usb&quot;, ATTRS{bInterfaceNumber}=3D=
=3D&quot;?*&quot;, ENV{.MM_USBIFNUM}=3D&quot;$attr{bInterfaceNumber}&quot;<=
br><br># Netgear AC341U: enable connection status polling explicitly<br>ATT=
RS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;9057&quot;,=
 ENV{ID_MM_QMI_CONNECTION_STATUS_POLLING_ENABLE}=3D&quot;1&quot;<br><br># M=
C74XX: Add port hints<br># =C2=A0if 03: primary port<br># =C2=A0if 02: raw =
NMEA port<br># =C2=A0if 00: diag/qcdm port<br>ATTRS{idVendor}=3D=3D&quot;11=
99&quot;, ATTRS{idProduct}=3D=3D&quot;9071&quot;, ENV{.MM_USBIFNUM}=3D=3D&q=
uot;03&quot;, ENV{ID_MM_PORT_TYPE_AT_PRIMARY}=3D&quot;1&quot;<br>ATTRS{idVe=
ndor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;9071&quot;, ENV{.M=
M_USBIFNUM}=3D=3D&quot;02&quot;, ENV{ID_MM_PORT_TYPE_GPS}=3D&quot;1&quot;<b=
r>ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;9071&q=
uot;, ENV{.MM_USBIFNUM}=3D=3D&quot;00&quot;, ENV{ID_MM_PORT_TYPE_QCDM}=3D&q=
uot;1&quot;<br><br># EM7565: Add port hints<br># =C2=A0if 03: primary port<=
br># =C2=A0if 02: raw NMEA port<br># =C2=A0if 00: diag/qcdm port<br>ATTRS{i=
dVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;9091&quot;, ENV=
{.MM_USBIFNUM}=3D=3D&quot;03&quot;, ENV{ID_MM_PORT_TYPE_AT_PRIMARY}=3D&quot=
;1&quot;<br>ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&q=
uot;9091&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;02&quot;, ENV{ID_MM_PORT_TYPE_=
GPS}=3D&quot;1&quot;<br>ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProd=
uct}=3D=3D&quot;9091&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;00&quot;, ENV{ID_M=
M_PORT_TYPE_QCDM}=3D&quot;1&quot;<br><br>LABEL=3D&quot;mm_sierra_end&quot;<=
br></div><div><br></div><div><br></div><div>Is this rule file fit to my mod=
em?</div><div>Or do I need new rule file for this modem?</div><div><br></di=
v><div>And do I need special settings in /etc/config/network ? I know basic=
 settings for this:</div><div>config interface &#39;broadband&#39;<br></div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option device &#39;/sys/devices/platform/=
1a0c0000.usb/usb1/1-2&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option proto &#39=
;modemmanager&#39;<span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option apn &#39;<a href=3D"http://5g-internet.=
sktelecom.com/" target=3D"_blank">w</a>hatever corect apn here&#39;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 option username &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 option password &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option pi=
ncode &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option lowpower &#39;1&#39;=
</span>=C2=A0=C2=A0<br></div><div><br></div><div>Thank you very much!</div>=
<div>I am writing this late we had holidays.</div><div><br></div><div>Thank=
 you very much!</div><div><br></div><div>Jeonghum</div><div><br></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=
=84 5=EC=9B=94 7=EC=9D=BC (=EB=AA=A9) =EC=98=A4=EC=A0=84 3:56, Aleksander M=
orgado &lt;<a href=3D"mailto:aleksander@aleksander.es" target=3D"_blank">al=
eksander@aleksander.es</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Hey,<br>
<br>
&gt; I guess I could try other LTE/5G modem.<br>
&gt; I&#39;d like to know what is best supported by ModemManager or OpenWRT=
/LEDE.<br>
&gt;<br>
<br>
Puff, lots of different devices. If you try anything from e.g. Sierra<br>
Wireless, Quectel, Telit... they will probably work. BUT, the issues<br>
seen in your setup may not be directly related to the modem in use.<br>
<br>
&gt; Could you please name them. Let me know some please.<br>
&gt;<br>
&gt; Thank you very much.<br>
&gt;<br>
&gt; Hucom wireless told me they don&#39;t support ModemManager.<br>
&gt;<br>
<br>
They probably don&#39;t even know what ModemManager is; but that is not a<b=
r>
reason not to support this device ourselves without the vendor&#39;s help.<=
br>
Could you set up a public ssh connection to your system so that I can<br>
take a look at it myself? If so, send details privately.<br>
<br>
-- <br>
Aleksander<br>
<a href=3D"https://aleksander.es" rel=3D"noreferrer" target=3D"_blank">http=
s://aleksander.es</a><br>
</blockquote></div></div>

--0000000000004fa9ab05a5211415--


--===============6181760014923495633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6181760014923495633==--

