Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1921C714E
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 15:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=72ORhaYsAItecdgQiqtb3OJj2L0cZVS2bU0FSyq6guw=; b=MLOkSOM3yxaHyaP/SXoijGbM7
	BxopU6gIb2/TsPcltBepwHjfM7/VTXmPedBfGsM4oi8B+tjQSfYbHkCvQTCsLGpvS0Meh6MiyIBf1
	2nP2B+PasD9cfhQ4oxLvxWNnWAeZyQk+upHm8ZODLOreEFdI5rHK/PXApoWDtPqrQdqqw4MupmsKN
	YCRGHsSdmgE2pokZElYrML3hzAAEV+M3WqzPg08Zt43fY5lM/xD8+Qmejz1im7AsiEbXIcS5qAXPv
	u2JUCTVm+Rev+W+7Ik8JNrW69/qVQIEs1Daqxm9b817TM/CrQ9HQ7OQa0hjU4a6LIEH/91hJX67fX
	8wVwLti2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJiU-0007qq-0Z; Wed, 06 May 2020 13:04:02 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJiH-0007js-Lq
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 13:03:52 +0000
Received: by mail-ed1-x530.google.com with SMTP id a8so1845414edv.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 May 2020 06:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hZUUgpVzmZjQAaLhaDlgNl6kYSZT10IPbA98TJGXuuY=;
 b=Cipdu9/ohuknY+uYhWjWuXR8uEtii3GWyshQamDp8f3rNSrmQpoG4BrPXEUbob0JRJ
 xYSrcew4GvWGXx9NJg302O5PnN5aPNtVHQHr/ohEu8DcUOHbUkf64uigT5S/eUgKOa8g
 iGeAQXuBXinH6dgpMLd0BojYy4T4w2Vm0C4zNYIinBbd886+p6AZdA6nfDaf68PcA4Dh
 PYySmCm/yCtHC5OnZjiON9Gdw7uEDJy5dEjO5f74YEO4yhGyXa9LOCYpmJeHoD72zfk7
 u8HQm8umycWJreCZGUFYcM9ROKKtlNJqinErrRMTnVZDbdvpZTXrij8UknHv517FMcnm
 S6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hZUUgpVzmZjQAaLhaDlgNl6kYSZT10IPbA98TJGXuuY=;
 b=o7ZjEgUgPbaZZhOs0kh0wjJ7YBEqZUA5FIndEVpg8Xr4wlt0fCEZd57avMIWeKaf6a
 gIWIIBOIs2fP9YmpEitvYZX2h1Jjqq/rJuMCj3/BAZptdSIYydb5USjwiCV/WSyKlp/2
 QF0pt1FBTDAoSscgBvpNoQ8XCuzemgh7ARsMJuRDji7oGHhO6U5PgluBj1v8O+yGsCO9
 N2/haT47C6pe2BGz6X3twpOHDZrzM2W4sAiLm+5F0qCWl+Qx0VbOU3NXLbTNY2O9P7ks
 KFJSHIShh4+zQtaxCyJtFY0rmKwUBKtRUWE62oPr3QWAcMqqX/kadAKS/FHlEtWrw/SL
 Rz4A==
X-Gm-Message-State: AGi0PuZvOg0GvdD47uLY1+SdVpxB3M/hhcYdfBo11x18iEeNQfLABJd0
 JMKnOiC+pkbMBOgUxMSFigFKHRK5y5RoreZ+Nug=
X-Google-Smtp-Source: APiQypKAhJ29pPbSmuE9O0brk4RqQIDz7z8gqPlfLJ0TIGzN5YhGasT42cjd+nNRkn8HxNno23/XsG2o3Jdz32foTC0=
X-Received: by 2002:a05:6402:310b:: with SMTP id
 dc11mr6506732edb.143.1588770227677; 
 Wed, 06 May 2020 06:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
In-Reply-To: <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Wed, 6 May 2020 22:03:36 +0900
Message-ID: <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_060349_829879_02F0B316 
X-CRM114-Status: GOOD (  29.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============8815004474842371946=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8815004474842371946==
Content-Type: multipart/alternative; boundary="0000000000000cf14305a4fa65d5"

--0000000000000cf14305a4fa65d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander and people,

I guess I could try other LTE/5G modem.
I'd like to know what is best supported by ModemManager or OpenWRT/LEDE.

Could you please name them. Let me know some please.

Thank you very much.

Hucom wireless told me they don't support ModemManager.

Jeonghum

2020=EB=85=84 5=EC=9B=94 6=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 2:37, Je=
onghum Joh <oosaprogrammer@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Hello Alexander and people in the list,
>
> Let me provide some additional information and new test log messages.
>
> The problem I reported is improved one setp. Originally it was like:
>    root at LEDE:~# mmcli -L
>    error: couldn't create manager: Timeout was reached
>
> Now it is like:
>    root@LEDE:~# mmcli -L
>    No modems were found
>
> I had to enable "dbus-utils" under "Utilities" of openwrt make menuconfig=
.
> So it seems that now mmcli talks with ModemManager at last. The problem n=
ow
> belongs to ModemManager not in the mmcli.
>
>
> And I created the rule file you provided:
>
> # vim /lib/udev/rules.d/78-mm-custom.rules to fit to my modem:
> ACTION!=3D"add|change|move", GOTO=3D"mm_custom_end"
> DEVPATH=3D=3D"/sys/devices/platform/1a0c0000.usb/usb2/2-1",
> ENV{ID_MM_TTY_BAUDRATE}=3D"115200"
> DEVPATH=3D=3D"/sys/devices/platform/1a0c0000.usb/usb2/2-1",
> ENV{ID_MM_TTY_FLOW_CONTROL}=3D"xon-xoff"
> LABEL=3D"mm_custom_end"
>
> I wonder if these rule files are supposed to be provided from the modem
> provider. In my case, it is Hucom wireless.
> Can I ask them to provide this file?
>
> My modem is supposed to operate with this configs:
>
> device      : /dev/ttyUSB1
> baudrate  : 115200,
> parity        : none,
> data         : 8,
> stop          : 1,
> flow          : xon_xoff
>
> And I added config section like shown below in the /etc/config/network:
>
> config interface 'broadband'
>         option device '/sys/devices/platform/1a0c0000.usb/usb2/2-1'
>         option proto 'modemmanager'
>         option apn '5g-internet.sktelecom.com'
>         option username ''
>         option password ''
>         option pincode ''
>         option lowpower '1'
>
> I don't know the username and password, but maybe it wouldn't be needed a=
t
> all. the pincode... I have no idea with this..
>
> And also I added "--debug" in the start script /etc/rc.d/S70modemmanager:
>
> procd_set_param command /usr/sbin/ModemManager --debug
>
> And with these conditions, I rebooted my linux box and after the reboot i=
s
> done, maybe 5 minutes later I captured log message:
> logread > logread_last.log
>
> And I attached it in this email. Please find the log message and see it
> through.
>
> And you wanted to know what modem is mine:
> The modem is HUCOM HM-900
>
> Kernel message related to the hucom modem:
> =3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D
> qmi_wwan_hucom 2-1:1.2: cdc-wdm0: USB WDM device
> HUCOM usbnet bind here
> qmi_wwan_hucom 2-1:1.2 wwan0: register 'qmi_wwan_hucom' at
> usb-1a0c0000.usb-1, HUCOM wwan/QMI device, a2:25:55:58:dd:dd
> =3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D
> ahci 1a200000.sata: couldn't get PHY in node sata: -517
> qmi_wwan_hucom: probe of 2-1:1.3 failed with error -22
> =3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D
> qmi_wwan_hucom: probe of 2-1:1.4 failed with error -22
> usbcore: registered new interface driver qmi_wwan_hucom
> l2tp_ppp: PPPoL2TP kernel driver, V2.0
> usbcore: registered new interface driver option
> usbserial: USB Serial support registered for GSM modem (1-port)
> option 2-1:1.0: GSM modem (1-port) converter detected
> usb 2-1: GSM modem (1-port) converter now attached to ttyUSB0
> option 2-1:1.1: GSM modem (1-port) converter detected
> ahci 1a200000.sata: couldn't get PHY in node sata: -517
> usb 2-1: GSM modem (1-port) converter now attached to ttyUSB1
> option 2-1:1.3: GSM modem (1-port) converter detected
> ahci 1a200000.sata: couldn't get PHY in node sata: -517
> option 2-1:1.4: GSM modem (1-port) converter detected
> ahci 1a200000.sata: couldn't get PHY in node sata: -517
> option 2-1:1.5: GSM modem (1-port) converter detected
> ahci 1a200000.sata: couldn't get PHY in node sata: -517
> usb 2-1: GSM modem (1-port) converter now attached to ttyUSB4
> ahci 1a200000.sata: couldn't get PHY in node sata: -517
> kmodloader: done loading kernel modules from /etc/modules.d/*
>
>
> My system environement(HW/SW) :
>
> Target Model        : MediaTek MT7622 AC4300rfb1 board
> Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI
> Kernel Version      : 4.4.124
> Modem                 : HUCOM HM-900
> ModemManager
> Version                 : 1.12.8
> menuconfig          : (QMI on, MBIM off)
>
> It is QMI device.
> qmichannel                                            : /dev/cdc-wdm0
> usbnet_adapter                                      : /sys/class/net/wwan=
0
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
> option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,cdc_wdm=
,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hcd,ohci=
_platform,ohci_hcd,ehci_platform,ehci_hcd
> usbnet                 19027  3 qmi_wwan,cdc_ncm,cdc_ether
>
> And usbnet adapter kernel module : qmi_wwan.c  written by Bj=C3=B8rn Mork
> USB serial driver option.c written by Matthias Urlichs
>
> Do I miss anything?
>
> F.Y.I. the modemmanager was not included in my OpenWRT source code. I
> copied it from https://github.com/openwrt/packages and I just enabled it
> via openwrt make menuconfig.
>
> Thank you very much in advance!
>
> Jeonghum
>
>
> 2020=EB=85=84 5=EC=9B=94 6=EC=9D=BC (=EC=88=98) =EC=98=A4=EC=A0=84 12:22,=
 Aleksander Morgado <aleksander@aleksander.es>=EB=8B=98=EC=9D=B4
> =EC=9E=91=EC=84=B1:
>
>> Hey Jeonghum,
>>
>> > Thank you for the very kind message!
>> > I tried "mmcli -L" and received an error message:
>> >   root at LEDE:~# mmcli -L
>> >   error: couldn't create manager: Timeout was reached
>> >
>>
>> This is extremely weird, and it would show some issue with your setup,
>> maybe with how DBus is installed/running in the system. mmcli should
>> never fail in that way; if the ModemManager daemon owns the
>> well-known-name in DBus, a manager object should be created; and if
>> there is no MM daemon running, mmcli would just return with a
>> different error (couldn't find the ModemManager process in the bus).
>> The fact that you're getting a timeout when trying to talk to the DBus
>> server is not expected at all.
>>
>> > I added "--debug" option into the ModemManager start command.
>> > I used device path: "/sys/devices/platform/1a0c0000.usb/usb2/2-1" in
>> the /etc/config/network.
>> >
>> > And I got an logread output file.
>> > I will attach it to this email.
>> >
>> > I already posted this question to the ModemManager maillist also:
>> >
>> https://lists.freedesktop.org/archives/modemmanager-devel/2020-May/00779=
8.html
>> >
>> > So now I'm waiting Alexander's reply message about my problem.
>>
>> I'm also in this mailing list :D
>>
>> > But, If you have any idea, please let me know.
>> >
>>
>> Did you try with the suggestion to configure baudrate and flow control
>> settings? Looking at the kind of modem you're working with, I highly
>> doubt those port settings will have any effect at the end, as you're
>> really a device that exposes the TTY via USB port, and it also looks
>> like you have a cdc-wdm+wwan pair (QMI? MBIM?). What modem
>> manufacturer/model is this?
>>
>> --
>> Aleksander
>> https://aleksander.es
>>
>

--0000000000000cf14305a4fa65d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Alexander and people,<div dir=3D"auto"><br></div><d=
iv dir=3D"auto">I guess I could try other LTE/5G modem.</div><div dir=3D"au=
to">I&#39;d like to know what is best supported by ModemManager or OpenWRT/=
LEDE.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Could you please n=
ame them. Let me know some please.</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">Thank you very much.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Hucom wireless told me they don&#39;t support ModemManager.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Jeonghum</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 5=
=EC=9B=94 6=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 2:37, Jeonghum Joh &lt;=
<a href=3D"mailto:oosaprogrammer@gmail.com">oosaprogrammer@gmail.com</a>&gt=
;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr"><div>Hello Alexander and people in the list,</div><di=
v><br></div><div>Let me provide some additional information and new test lo=
g messages.</div><div><br></div><div>The problem I reported is improved one=
 setp. Originally it was like:</div><div>=C2=A0 =C2=A0root at LEDE:~# mmcli=
 -L<br>=C2=A0 =C2=A0error: couldn&#39;t create manager: Timeout was reached=
<br></div><div><br></div><div>Now it is like:</div><div>=C2=A0 =C2=A0root@L=
EDE:~# mmcli -L<br>=C2=A0 =C2=A0No modems were found<br></div><div><br></di=
v><div>I had to enable &quot;dbus-utils&quot; under &quot;Utilities&quot; o=
f openwrt make menuconfig. So it seems that now mmcli talks with ModemManag=
er at last. The problem now belongs to ModemManager not in the mmcli.</div>=
<div><br></div><div><br></div><div>And I created the rule file you provided=
:</div><div><br></div><div># vim /lib/udev/rules.d/78-mm-custom.rules to fi=
t to my modem:<br>ACTION!=3D&quot;add|change|move&quot;, GOTO=3D&quot;mm_cu=
stom_end&quot;<br>DEVPATH=3D=3D&quot;/sys/devices/platform/1a0c0000.usb/usb=
2/2-1&quot;,<br>ENV{ID_MM_TTY_BAUDRATE}=3D&quot;115200&quot;<br>DEVPATH=3D=
=3D&quot;/sys/devices/platform/1a0c0000.usb/usb2/2-1&quot;,<br>ENV{ID_MM_TT=
Y_FLOW_CONTROL}=3D&quot;xon-xoff&quot;<br>LABEL=3D&quot;mm_custom_end&quot;=
=C2=A0=C2=A0<br></div><div><br></div><div>I wonder if these rule files are =
supposed to be provided from the modem provider. In my case, it is Hucom wi=
reless.</div><div>Can I ask them to provide this file?</div><div><br></div>=
<div>My modem is supposed to operate with this configs:</div><div><br></div=
><div>device=C2=A0 =C2=A0 =C2=A0 : /dev/ttyUSB1</div><div>baudrate=C2=A0 : =
115200,</div><div>parity=C2=A0 =C2=A0 =C2=A0 =C2=A0 : none,</div><div>data=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 8,</div><div>stop=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 : 1,</div><div>flow=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : xon_x=
off</div><div><br></div><div>And I added config=C2=A0section like shown bel=
ow in the /etc/config/network:</div><div><br></div><div>config interface &#=
39;broadband&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option device &#39;/sys/de=
vices/platform/1a0c0000.usb/usb2/2-1&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 op=
tion proto &#39;modemmanager&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option apn=
 &#39;<a href=3D"http://5g-internet.sktelecom.com" target=3D"_blank" rel=3D=
"noreferrer">5g-internet.sktelecom.com</a>&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 option username &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option passwo=
rd &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option pincode &#39;&#39;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 option lowpower &#39;1&#39;<br></div><div><br><=
/div><div>I don&#39;t know the username and password, but maybe it wouldn&#=
39;t be needed at all. the pincode... I have no idea with this..</div><div>=
<br></div><div>And also I added &quot;--debug&quot; in the start script /et=
c/rc.d/S70modemmanager:</div><div><br></div><div>procd_set_param command /u=
sr/sbin/ModemManager --debug<br></div><div><br></div><div>And with these co=
nditions, I rebooted my linux box and after the reboot is done, maybe 5 min=
utes later I captured log message:</div><div>logread &gt; logread_last.log<=
/div><div><br></div><div>And I attached it in this email. Please find the l=
og message and see it through.</div><div><br></div><div>And you wanted to k=
now what modem is mine:</div><div>The modem is HUCOM HM-900

</div><div><br></div><div>Kernel message related to the hucom modem:</div><=
div><div>=3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D<br>qmi_w=
wan_hucom 2-1:1.2: cdc-wdm0: USB WDM device<br>HUCOM usbnet bind here<br>qm=
i_wwan_hucom 2-1:1.2 wwan0: register &#39;qmi_wwan_hucom&#39; at usb-1a0c00=
00.usb-1, HUCOM wwan/QMI device, a2:25:55:58:dd:dd<br>=3D=3D=3D=3D [hucom_w=
wan_bind] : HUCOM HM9xx =3D=3D=3D=3D<br>ahci 1a200000.sata: couldn&#39;t ge=
t PHY in node sata: -517<br>qmi_wwan_hucom: probe of 2-1:1.3 failed with er=
ror -22<br>=3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D<br>qmi=
_wwan_hucom: probe of 2-1:1.4 failed with error -22<br>usbcore: registered =
new interface driver qmi_wwan_hucom<br>l2tp_ppp: PPPoL2TP kernel driver, V2=
.0<br>usbcore: registered new interface driver option<br>usbserial: USB Ser=
ial support registered for GSM modem (1-port)<br>option 2-1:1.0: GSM modem =
(1-port) converter detected<br>usb 2-1: GSM modem (1-port) converter now at=
tached to ttyUSB0<br>option 2-1:1.1: GSM modem (1-port) converter detected<=
br>ahci 1a200000.sata: couldn&#39;t get PHY in node sata: -517<br>usb 2-1: =
GSM modem (1-port) converter now attached to ttyUSB1<br>option 2-1:1.3: GSM=
 modem (1-port) converter detected<br>ahci 1a200000.sata: couldn&#39;t get =
PHY in node sata: -517<br>option 2-1:1.4: GSM modem (1-port) converter dete=
cted<br>ahci 1a200000.sata: couldn&#39;t get PHY in node sata: -517<br>opti=
on 2-1:1.5: GSM modem (1-port) converter detected<br>ahci 1a200000.sata: co=
uldn&#39;t get PHY in node sata: -517<br>usb 2-1: GSM modem (1-port) conver=
ter now attached to ttyUSB4<br>ahci 1a200000.sata: couldn&#39;t get PHY in =
node sata: -517<br>kmodloader: done loading kernel modules from /etc/module=
s.d/*<br></div><div></div></div><div><br></div><div><br></div><div>My syste=
m environement(HW/SW) :</div><div><br></div><div><div>Target Model=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 : MediaTek MT7622 AC4300rfb1 board<br></div><div>Firmw=
are Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI</div><div>Kernel Ve=
rsion=C2=A0 =C2=A0 =C2=A0 : 4.4.124</div><div>Modem=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: HUCOM HM-900<br></div><div>ModemMan=
ager<br></div><div>Version=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0: 1.12.8<br></div><div>menuconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 : (QMI on, MBIM off)</div></div><div><br></div><div>It is QMI device=
.</div><div><div>qmichannel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /dev/cdc-wdm0</div><div>usbnet_adapter=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /sys/class/net/ww=
an0</div><div>/sys/bus/usb/devices/2-1/manufacturer : QCOM<br></div><div>/s=
ys/bus/usb/devices/2-1/idVendor=C2=A0 =C2=A0 =C2=A0 =C2=A0 :05C6</div><div>=
/sys/bus/usb/devices/2-1/idProduct=C2=A0 =C2=A0 =C2=A0 =C2=A0:90db</div><di=
v>/sys/bus/usb/devices/2-1/speed=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0:5000</div><div>/sys/bus/usb/devices/2-1/product=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 :SDXPRAIRIE-MTP=C2=A0_SN:B02CE51B</div><div>/sys/bus/usb/devi=
ces/2-1/version=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:3.20</div><div>/sy=
s/bus/usb/devices/2-1:1.2/net/wwan0<br></div><div><div>/sys/bus/usb/devices=
/2-1:1.2/net/wwan0/device/driver<br></div><div><div>/sys/bus/usb/devices/2-=
1:1.2/net/wwan0/device</div></div><div></div></div><div><div><div>/sys/bus/=
usb/devices/2-1:1.2/usbmisc/cdc-wdm0<br></div><div><div></div></div></div><=
div>/sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2<br></div><div></div=
></div><div><br></div><div>Kernel modules watched via lsmod</div><div>cdc_w=
dm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 8821 =C2=A01 qmi=
_wwan<br></div><div>qmi_wwan =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A06252 =C2=A00<br></div><div>usbcore =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 153512 20 option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,u=
sbserial,usbnet,usblp,cdc_wdm,cdc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xh=
ci_pci,xhci_hcd,uhci_hcd,ohci_platform,ohci_hcd,ehci_platform,ehci_hcd<br><=
/div><div>usbnet =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 19=
027 =C2=A03 qmi_wwan,cdc_ncm,cdc_ether</div></div><div><br></div><div>And u=
sbnet adapter kernel module : qmi_wwan.c=C2=A0

written by Bj=C3=B8rn Mork

</div><div>USB serial driver option.c written by Matthias Urlichs</div><div=
><br></div><div>Do I miss anything?</div><div><br></div><div>F.Y.I. the mod=
emmanager was not included in my OpenWRT source code. I copied it from=C2=
=A0<a href=3D"https://github.com/openwrt/packages" target=3D"_blank" rel=3D=
"noreferrer">https://github.com/openwrt/packages</a>=C2=A0and I just enable=
d it via openwrt make menuconfig.</div><div><br></div><div>Thank you very m=
uch in advance!</div><div><br></div><div>Jeonghum</div><div><br></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=
=84 5=EC=9B=94 6=EC=9D=BC (=EC=88=98) =EC=98=A4=EC=A0=84 12:22, Aleksander =
Morgado &lt;<a href=3D"mailto:aleksander@aleksander.es" target=3D"_blank" r=
el=3D"noreferrer">aleksander@aleksander.es</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=
=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">He=
y Jeonghum,<br>
<br>
&gt; Thank you for the very kind message!<br>
&gt; I tried &quot;mmcli -L&quot; and received an error message:<br>
&gt;=C2=A0 =C2=A0root at LEDE:~# mmcli -L<br>
&gt;=C2=A0 =C2=A0error: couldn&#39;t create manager: Timeout was reached<br=
>
&gt;<br>
<br>
This is extremely weird, and it would show some issue with your setup,<br>
maybe with how DBus is installed/running in the system. mmcli should<br>
never fail in that way; if the ModemManager daemon owns the<br>
well-known-name in DBus, a manager object should be created; and if<br>
there is no MM daemon running, mmcli would just return with a<br>
different error (couldn&#39;t find the ModemManager process in the bus).<br=
>
The fact that you&#39;re getting a timeout when trying to talk to the DBus<=
br>
server is not expected at all.<br>
<br>
&gt; I added &quot;--debug&quot; option into the ModemManager start command=
.<br>
&gt; I used device path: &quot;/sys/devices/platform/1a0c0000.usb/usb2/2-1&=
quot; in the /etc/config/network.<br>
&gt;<br>
&gt; And I got an logread output file.<br>
&gt; I will attach it to this email.<br>
&gt;<br>
&gt; I already posted this question to the ModemManager maillist also:<br>
&gt; <a href=3D"https://lists.freedesktop.org/archives/modemmanager-devel/2=
020-May/007798.html" rel=3D"noreferrer noreferrer" target=3D"_blank">https:=
//lists.freedesktop.org/archives/modemmanager-devel/2020-May/007798.html</a=
><br>
&gt;<br>
&gt; So now I&#39;m waiting Alexander&#39;s reply message about my problem.=
<br>
<br>
I&#39;m also in this mailing list :D<br>
<br>
&gt; But, If you have any idea, please let me know.<br>
&gt;<br>
<br>
Did you try with the suggestion to configure baudrate and flow control<br>
settings? Looking at the kind of modem you&#39;re working with, I highly<br=
>
doubt those port settings will have any effect at the end, as you&#39;re<br=
>
really a device that exposes the TTY via USB port, and it also looks<br>
like you have a cdc-wdm+wwan pair (QMI? MBIM?). What modem<br>
manufacturer/model is this?<br>
<br>
--<br>
Aleksander<br>
<a href=3D"https://aleksander.es" rel=3D"noreferrer noreferrer" target=3D"_=
blank">https://aleksander.es</a><br>
</blockquote></div></div>
</blockquote></div>

--0000000000000cf14305a4fa65d5--


--===============8815004474842371946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8815004474842371946==--

