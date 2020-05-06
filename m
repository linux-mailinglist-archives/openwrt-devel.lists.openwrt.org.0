Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920F61C6785
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 07:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=21bhyrHlYeP6m5k2x9qipMBwUqgcyzJ8m706zXEyO40=; b=aVqlOjVt7D+MYPCUhKNTQxlac
	0SWpsWyr5Fn064UpbpB0OITpoU8qqwUjiRaN6nX1Mii3cucYxqkDxSGqZt051SsR2D6YBIbCl2YlW
	AZc2duZ8tf/Zj6oDpLxkHZ/HJvUtLkzirjs6n4shQSutDFea76Wfz2ROU5Ji6QkO/rz2aCzH8gLkI
	Sj1xGgruk7XEQQW5vkONFQ01Jg0lznX0NfDE7RPl2oCPwFXVeubSRVfx7gvtprj2huI2niqB90KlT
	Pj9i+fLIcCUEanWK72vvuHmDdbBMEC7rdk626pGhtxJRVa3hnJyH7M/Itmn4O52+P3iJR6JtFxobl
	fBO17DJiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCkf-00055m-Gi; Wed, 06 May 2020 05:37:49 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCkX-00055G-J5
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 05:37:43 +0000
Received: by mail-ej1-x630.google.com with SMTP id n17so286438ejh.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 May 2020 22:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3wbQcZoAKUtV2RmWCyQ1TRy1UozVF0IvMp8cpydnjwo=;
 b=pC64ltfj0yP5nTLwO+IR934vIdzZU50r7lkytotKso3pOTZtaSbiC3SsXBrG/l16Ho
 1DKVjdd1NLB+miY+CrowJWZ7ZLb2b5ZDiRUVJG44ZyvnCy6AuV2CUOYhDPKzxyfM9DoW
 uJ6RkzrmusFyXRhfGAu4ntolNoupeumjzKiOQH0ept6lDefdPU/nRrYfWTZT77STcIJQ
 tT5kktVeD+Hht8gCkj3cuW7GcXd9YkOMh9+vYBcHfzSVG4h30HjZM1CexHyNTS0hnt9G
 zusAa8KwNtZqGc7X8SuWW8PvHrnXhVcH086OzZWDOzAJFmxQkCe8yIx+Rpxrw9twWEw+
 vEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3wbQcZoAKUtV2RmWCyQ1TRy1UozVF0IvMp8cpydnjwo=;
 b=AzS6vQmLbJB6c8qunDlGZtyeW4Z1+gnILglcEht7BHHoXIw/xJcGUdnyEoeYwz7v47
 PzInlAfr0hxhu2IPrpCzzMMShmqOrQhcl6LiGsg6WFF7bGVwU4z4xM0JykRSfj2bNRxV
 CnZ5rgthPHsGAGnT1TCyyi8TbPwiOiok7MIT1aystXlXQSdfR66N8eh7kcpduD8Ug/Uo
 iuGW9xObigjx3PDEMywVHxwzrO/ZqrgPCWRUsytE/fQf+2fPbDpXsyRv0Df/Ho0+LGWQ
 gwTW03gUuH32eBdYWL1u3YNafsNBItBVbl6xKIO/lZHmi6bdN8S5PJ+ZZkp9QjVtO74h
 5Dzw==
X-Gm-Message-State: AGi0Pub8TykwgR996YGp5BcZSXQSOH7r9E+GK24HxQh5h+91WohFp28U
 4w2dfZHvcyN3VYB61AA1UlqEgadHG+eH/KiQmCY=
X-Google-Smtp-Source: APiQypJE9ODX/XG/AgtWEqqLLGuA5SVrlOJgA9LtyaG/wpUT3oWM4SPz9jFdXeL5jtE8vH70Aa/9xy2Ns7Lv3KqgHys=
X-Received: by 2002:a17:907:214f:: with SMTP id
 rk15mr5966625ejb.301.1588743458855; 
 Tue, 05 May 2020 22:37:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
In-Reply-To: <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Wed, 6 May 2020 14:37:26 +0900
Message-ID: <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
Content-Type: multipart/mixed; boundary="00000000000082cf8c05a4f429d2"
X-Spam-Note: CRM114 run bypassed due to message size (112998 bytes)
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--00000000000082cf8c05a4f429d2
Content-Type: multipart/alternative; boundary="00000000000082cf8b05a4f429d0"

--00000000000082cf8b05a4f429d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander and people in the list,

Let me provide some additional information and new test log messages.

The problem I reported is improved one setp. Originally it was like:
   root at LEDE:~# mmcli -L
   error: couldn't create manager: Timeout was reached

Now it is like:
   root@LEDE:~# mmcli -L
   No modems were found

I had to enable "dbus-utils" under "Utilities" of openwrt make menuconfig.
So it seems that now mmcli talks with ModemManager at last. The problem now
belongs to ModemManager not in the mmcli.


And I created the rule file you provided:

# vim /lib/udev/rules.d/78-mm-custom.rules to fit to my modem:
ACTION!=3D"add|change|move", GOTO=3D"mm_custom_end"
DEVPATH=3D=3D"/sys/devices/platform/1a0c0000.usb/usb2/2-1",
ENV{ID_MM_TTY_BAUDRATE}=3D"115200"
DEVPATH=3D=3D"/sys/devices/platform/1a0c0000.usb/usb2/2-1",
ENV{ID_MM_TTY_FLOW_CONTROL}=3D"xon-xoff"
LABEL=3D"mm_custom_end"

I wonder if these rule files are supposed to be provided from the modem
provider. In my case, it is Hucom wireless.
Can I ask them to provide this file?

My modem is supposed to operate with this configs:

device      : /dev/ttyUSB1
baudrate  : 115200,
parity        : none,
data         : 8,
stop          : 1,
flow          : xon_xoff

And I added config section like shown below in the /etc/config/network:

config interface 'broadband'
        option device '/sys/devices/platform/1a0c0000.usb/usb2/2-1'
        option proto 'modemmanager'
        option apn '5g-internet.sktelecom.com'
        option username ''
        option password ''
        option pincode ''
        option lowpower '1'

I don't know the username and password, but maybe it wouldn't be needed at
all. the pincode... I have no idea with this..

And also I added "--debug" in the start script /etc/rc.d/S70modemmanager:

procd_set_param command /usr/sbin/ModemManager --debug

And with these conditions, I rebooted my linux box and after the reboot is
done, maybe 5 minutes later I captured log message:
logread > logread_last.log

And I attached it in this email. Please find the log message and see it
through.

And you wanted to know what modem is mine:
The modem is HUCOM HM-900

Kernel message related to the hucom modem:
=3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D
qmi_wwan_hucom 2-1:1.2: cdc-wdm0: USB WDM device
HUCOM usbnet bind here
qmi_wwan_hucom 2-1:1.2 wwan0: register 'qmi_wwan_hucom' at
usb-1a0c0000.usb-1, HUCOM wwan/QMI device, a2:25:55:58:dd:dd
=3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D
ahci 1a200000.sata: couldn't get PHY in node sata: -517
qmi_wwan_hucom: probe of 2-1:1.3 failed with error -22
=3D=3D=3D=3D [hucom_wwan_bind] : HUCOM HM9xx =3D=3D=3D=3D
qmi_wwan_hucom: probe of 2-1:1.4 failed with error -22
usbcore: registered new interface driver qmi_wwan_hucom
l2tp_ppp: PPPoL2TP kernel driver, V2.0
usbcore: registered new interface driver option
usbserial: USB Serial support registered for GSM modem (1-port)
option 2-1:1.0: GSM modem (1-port) converter detected
usb 2-1: GSM modem (1-port) converter now attached to ttyUSB0
option 2-1:1.1: GSM modem (1-port) converter detected
ahci 1a200000.sata: couldn't get PHY in node sata: -517
usb 2-1: GSM modem (1-port) converter now attached to ttyUSB1
option 2-1:1.3: GSM modem (1-port) converter detected
ahci 1a200000.sata: couldn't get PHY in node sata: -517
option 2-1:1.4: GSM modem (1-port) converter detected
ahci 1a200000.sata: couldn't get PHY in node sata: -517
option 2-1:1.5: GSM modem (1-port) converter detected
ahci 1a200000.sata: couldn't get PHY in node sata: -517
usb 2-1: GSM modem (1-port) converter now attached to ttyUSB4
ahci 1a200000.sata: couldn't get PHY in node sata: -517
kmodloader: done loading kernel modules from /etc/modules.d/*


My system environement(HW/SW) :

Target Model        : MediaTek MT7622 AC4300rfb1 board
Firmware Version : LEDE Reboot 17.01-SNAPSHOT unknown / LuCI
Kernel Version      : 4.4.124
Modem                 : HUCOM HM-900
ModemManager
Version                 : 1.12.8
menuconfig          : (QMI on, MBIM off)

It is QMI device.
qmichannel                                            : /dev/cdc-wdm0
usbnet_adapter                                      : /sys/class/net/wwan0
/sys/bus/usb/devices/2-1/manufacturer : QCOM
/sys/bus/usb/devices/2-1/idVendor        :05C6
/sys/bus/usb/devices/2-1/idProduct       :90db
/sys/bus/usb/devices/2-1/speed             :5000
/sys/bus/usb/devices/2-1/product          :SDXPRAIRIE-MTP _SN:B02CE51B
/sys/bus/usb/devices/2-1/version           :3.20
/sys/bus/usb/devices/2-1:1.2/net/wwan0
/sys/bus/usb/devices/2-1:1.2/net/wwan0/device/driver
/sys/bus/usb/devices/2-1:1.2/net/wwan0/device
/sys/bus/usb/devices/2-1:1.2/usbmisc/cdc-wdm0
/sys/devices/platform/1a0c0000.usb/usb2/2-1/2-1:1.2

Kernel modules watched via lsmod
cdc_wdm                 8821  1 qmi_wwan
qmi_wwan                6252  0
usbcore               153512 20
option,usb_wwan,qmi_wwan,cdc_ncm,cdc_ether,usbserial,usbnet,usblp,cdc_wdm,c=
dc_acm,usb_storage,xhci_mtk,xhci_plat_hcd,xhci_pci,xhci_hcd,uhci_hcd,ohci_p=
latform,ohci_hcd,ehci_platform,ehci_hcd
usbnet                 19027  3 qmi_wwan,cdc_ncm,cdc_ether

And usbnet adapter kernel module : qmi_wwan.c  written by Bj=C3=B8rn Mork
USB serial driver option.c written by Matthias Urlichs

Do I miss anything?

F.Y.I. the modemmanager was not included in my OpenWRT source code. I
copied it from https://github.com/openwrt/packages and I just enabled it
via openwrt make menuconfig.

Thank you very much in advance!

Jeonghum


2020=EB=85=84 5=EC=9B=94 6=EC=9D=BC (=EC=88=98) =EC=98=A4=EC=A0=84 12:22, A=
leksander Morgado <aleksander@aleksander.es>=EB=8B=98=EC=9D=B4
=EC=9E=91=EC=84=B1:

> Hey Jeonghum,
>
> > Thank you for the very kind message!
> > I tried "mmcli -L" and received an error message:
> >   root at LEDE:~# mmcli -L
> >   error: couldn't create manager: Timeout was reached
> >
>
> This is extremely weird, and it would show some issue with your setup,
> maybe with how DBus is installed/running in the system. mmcli should
> never fail in that way; if the ModemManager daemon owns the
> well-known-name in DBus, a manager object should be created; and if
> there is no MM daemon running, mmcli would just return with a
> different error (couldn't find the ModemManager process in the bus).
> The fact that you're getting a timeout when trying to talk to the DBus
> server is not expected at all.
>
> > I added "--debug" option into the ModemManager start command.
> > I used device path: "/sys/devices/platform/1a0c0000.usb/usb2/2-1" in th=
e
> /etc/config/network.
> >
> > And I got an logread output file.
> > I will attach it to this email.
> >
> > I already posted this question to the ModemManager maillist also:
> >
> https://lists.freedesktop.org/archives/modemmanager-devel/2020-May/007798=
.html
> >
> > So now I'm waiting Alexander's reply message about my problem.
>
> I'm also in this mailing list :D
>
> > But, If you have any idea, please let me know.
> >
>
> Did you try with the suggestion to configure baudrate and flow control
> settings? Looking at the kind of modem you're working with, I highly
> doubt those port settings will have any effect at the end, as you're
> really a device that exposes the TTY via USB port, and it also looks
> like you have a cdc-wdm+wwan pair (QMI? MBIM?). What modem
> manufacturer/model is this?
>
> --
> Aleksander
> https://aleksander.es
>

--00000000000082cf8b05a4f429d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Alexander and people in the list,</div><div><br=
></div><div>Let me provide some additional information and new test log mes=
sages.</div><div><br></div><div>The problem I reported is improved one setp=
. Originally it was like:</div><div>=C2=A0 =C2=A0root at LEDE:~# mmcli -L<b=
r>=C2=A0 =C2=A0error: couldn&#39;t create manager: Timeout was reached<br><=
/div><div><br></div><div>Now it is like:</div><div>=C2=A0 =C2=A0root@LEDE:~=
# mmcli -L<br>=C2=A0 =C2=A0No modems were found<br></div><div><br></div><di=
v>I had to enable &quot;dbus-utils&quot; under &quot;Utilities&quot; of ope=
nwrt make menuconfig. So it seems that now mmcli talks with ModemManager at=
 last. The problem now belongs to ModemManager not in the mmcli.</div><div>=
<br></div><div><br></div><div>And I created the rule file you provided:</di=
v><div><br></div><div># vim /lib/udev/rules.d/78-mm-custom.rules to fit to =
my modem:<br>ACTION!=3D&quot;add|change|move&quot;, GOTO=3D&quot;mm_custom_=
end&quot;<br>DEVPATH=3D=3D&quot;/sys/devices/platform/1a0c0000.usb/usb2/2-1=
&quot;,<br>ENV{ID_MM_TTY_BAUDRATE}=3D&quot;115200&quot;<br>DEVPATH=3D=3D&qu=
ot;/sys/devices/platform/1a0c0000.usb/usb2/2-1&quot;,<br>ENV{ID_MM_TTY_FLOW=
_CONTROL}=3D&quot;xon-xoff&quot;<br>LABEL=3D&quot;mm_custom_end&quot;=C2=A0=
=C2=A0<br></div><div><br></div><div>I wonder if these rule files are suppos=
ed to be provided from the modem provider. In my case, it is Hucom wireless=
.</div><div>Can I ask them to provide this file?</div><div><br></div><div>M=
y modem is supposed to operate with this configs:</div><div><br></div><div>=
device=C2=A0 =C2=A0 =C2=A0 : /dev/ttyUSB1</div><div>baudrate=C2=A0 : 115200=
,</div><div>parity=C2=A0 =C2=A0 =C2=A0 =C2=A0 : none,</div><div>data=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0: 8,</div><div>stop=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 : 1,</div><div>flow=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : xon_xoff</di=
v><div><br></div><div>And I added config=C2=A0section like shown below in t=
he /etc/config/network:</div><div><br></div><div>config interface &#39;broa=
dband&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option device &#39;/sys/devices/p=
latform/1a0c0000.usb/usb2/2-1&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option pr=
oto &#39;modemmanager&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option apn &#39;<=
a href=3D"http://5g-internet.sktelecom.com">5g-internet.sktelecom.com</a>&#=
39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option username &#39;&#39;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 option password &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 option pincode &#39;&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option lowpower &=
#39;1&#39;<br></div><div><br></div><div>I don&#39;t know the username and p=
assword, but maybe it wouldn&#39;t be needed at all. the pincode... I have =
no idea with this..</div><div><br></div><div>And also I added &quot;--debug=
&quot; in the start script /etc/rc.d/S70modemmanager:</div><div><br></div><=
div>procd_set_param command /usr/sbin/ModemManager --debug<br></div><div><b=
r></div><div>And with these conditions, I rebooted my linux box and after t=
he reboot is done, maybe 5 minutes later I captured log message:</div><div>=
logread &gt; logread_last.log</div><div><br></div><div>And I attached it in=
 this email. Please find the log message and see it through.</div><div><br>=
</div><div>And you wanted to know what modem is mine:</div><div>The modem i=
s HUCOM HM-900

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
=A0<a href=3D"https://github.com/openwrt/packages">https://github.com/openw=
rt/packages</a>=C2=A0and I just enabled it via openwrt make menuconfig.</di=
v><div><br></div><div>Thank you very much in advance!</div><div><br></div><=
div>Jeonghum</div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">2020=EB=85=84 5=EC=9B=94 6=EC=9D=BC (=EC=88=98) =
=EC=98=A4=EC=A0=84 12:22, Aleksander Morgado &lt;<a href=3D"mailto:aleksand=
er@aleksander.es" target=3D"_blank">aleksander@aleksander.es</a>&gt;=EB=8B=
=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hey Jeonghum,<br>
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
020-May/007798.html" rel=3D"noreferrer" target=3D"_blank">https://lists.fre=
edesktop.org/archives/modemmanager-devel/2020-May/007798.html</a><br>
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
<a href=3D"https://aleksander.es" rel=3D"noreferrer" target=3D"_blank">http=
s://aleksander.es</a><br>
</blockquote></div></div>

--00000000000082cf8b05a4f429d0--

--00000000000082cf8c05a4f429d2
Content-Type: application/octet-stream; name="logread_last.log"
Content-Disposition: attachment; filename="logread_last.log"
Content-Transfer-Encoding: base64
Content-ID: <f_k9urn4fz0>
X-Attachment-Id: f_k9urn4fz0

VHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDguNzI2OTk2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tc2ltdGVjaC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIg
MjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA4LjcyNzM5OV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRl
di9ydWxlcy5kLzc3LW1tLXRlbGl0LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0Mzoy
OCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDguNzI3OTI0XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0tdHBsaW5rLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRh
ZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguNzI4MTQ2
XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdWJs
b3gtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVn
IE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC43Mjg2MDFdIFtydWxlc10g
bG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS11c2ItZGV2aWNlLWJs
YWNrbGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC43Mjk3MDVdIFtydWxlc10gbG9hZGlu
ZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS11c2Itc2VyaWFsLWFkYXB0ZXJz
LWdyZXlsaXN0LnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9k
ZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjczMDEwM10gW3J1bGVzXSBsb2Fk
aW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXgyMngtcG9ydC10eXBlcy5y
dWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0
MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC43MzA3MjRdIFtydWxlc10gbG9hZGluZyBydWxlcyBm
cm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS16dGUtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXBy
IDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLm5vdGljZSBycGMuc3RhdGRbNDY3Nl06IEluaXRpYWxp
emluZyBOU00gc3RhdGUKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi53YXJuIHJwYy5z
dGF0ZFs0Njc2XTogUnVubmluZyBhcyByb290LiAgY2hvd24gL3Zhci9saWIvbmZzIHRvIGNob29z
ZSBkaWZmZXJlbnQgdXNlcgpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1v
ZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC43MzkxMjRdIFtydWxlc10gbG9h
ZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83OC1tbS1jdXN0b20ucnVsZXMKVHVl
IEFwciAyOCAwNzo0MzoyOCAyMDIwIHVzZXIuZGVidWcgbHVhOiBhZGQgcmEwIGludG8gbGFuClR1
ZSBBcHIgMjggMDc6NDM6MjggMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6IGhvdHBsdWc6
IGV2ZW50IHJlcG9ydGVkOiBhY3Rpb249YWRkLCBuYW1lPXR0eVVTQjEsIHN1YnN5c3RlbT10dHkK
VHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1
ZzogYWxyZWFkeSB3YWl0aW5nIGZvciBtb2RlbSBhdCBzeXNmcyBwYXRoIC9zeXMvZGV2aWNlcy9w
bGF0Zm9ybS8xYTBjMDAwMC51c2IvdXNiMi8yLTEKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRh
ZW1vbi5ub3RpY2UgcHJvY2Q6IC9ldGMvcmMuZC9TOTl3YXBwZDoga2lsbGFsbDogd2FwcDogbm8g
cHJvY2VzcyBraWxsZWQKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguODA2OTIwXSBLZXJuZWwgZXZlbnQg
cmVwb3J0ZWQ6ClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjgwNzcyMl0gICBhY3Rpb246ICAgIGFkZApU
dWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTog
PGRlYnVnPiBbMTU4ODA1OTgwOC44MDc3NTJdICAgc3Vic3lzdGVtOiB0dHkKVHVlIEFwciAyOCAw
Nzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1
ODgwNTk4MDguODA3Nzc1XSAgIG5hbWU6ICAgICAgdHR5VVNCMQpUdWUgQXByIDI4IDA3OjQzOjI4
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OC44MDc3OTVdICAgdWlkOiAgICAgICBuL2EKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1v
bi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguODA3ODE4XSBb
cnVsZXNdIHJ1bGVzIGRpcmVjdG9yeSBzZXQgdG8gJy9saWIvdWRldi9ydWxlcy5kJy4uLgpUdWUg
QXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRl
YnVnPiBbMTU4ODA1OTgwOC44MDgzMjNdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGli
L3VkZXYvcnVsZXMuZC83Ny1tbS1jaW50ZXJpb24tcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4
IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOC44MDg1OTJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYv
cnVsZXMuZC83Ny1tbS1kZWxsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDgu
ODA4ODgyXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzct
bW0tZGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9u
LmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC44MDkwODJdIFty
dWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1lcmljc3Nv
bi1tYm0ucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1h
bmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguODEwMjM3XSBbcnVsZXNdIGxvYWRpbmcg
cnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tZmlib2NvbS1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjgxMDUyNF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWhhaWVyLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFw
ciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1
Zz4gWzE1ODgwNTk4MDguODEwNjkzXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91
ZGV2L3J1bGVzLmQvNzctbW0taHVhd2VpLW5ldC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA4LjgxMDk5NV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLWxvbmdjaGVlci1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6
MjggMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6IGhvdHBsdWc6IGNhY2hlZCBldmVudCBm
b3VuZDogYWN0aW9uPWFkZCwgbmFtZT10dHlVU0I0LCBzdWJzeXN0ZW09dHR5LCBzeXNmc3BhdGg9
L3N5cy9kZXZpY2VzL3BsYXRmb3JtLzFhMGMwMDAwLnVzYi91c2IyLzItMS8yLTE6MS41L3R0eVVT
QjQvdHR5L3R0eVVTQjQKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguODEzMDI5XSBbcnVsZXNdIGxvYWRp
bmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbXRrLXBvcnQtdHlwZXMucnVs
ZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMz
NF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguODEzNjU1XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJv
bTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbm9raWEtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXBy
IDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVn
PiBbMTU4ODA1OTgwOC44MTQwNDFdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3Vk
ZXYvcnVsZXMuZC83Ny1tbS1wY21jaWEtZGV2aWNlLWJsYWNrbGlzdC5ydWxlcwpUdWUgQXByIDI4
IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOC44MTQyNzNdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYv
cnVsZXMuZC83Ny1tbS1xdWVjdGVsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0Mzoy
OCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDguODE0NjA2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0tc2llcnJhLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcg
TW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjgxNDg2Ml0gW3J1bGVzXSBs
b2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpbXRlY2gtcG9ydC10
eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFu
YWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC44MTUyODRdIFtydWxlc10gbG9hZGluZyBy
dWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10ZWxpdC1wb3J0LXR5cGVzLnJ1bGVz
ClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRd
OiA8ZGVidWc+IFsxNTg4MDU5ODA4LjgxNTgxNl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206
IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXRwbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIg
MjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA4LjgxNjAwNl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRl
di9ydWxlcy5kLzc3LW1tLXVibG94LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0Mzoy
OCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDguODE2NDU3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0tdXNiLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguODE3
NTgyXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
dXNiLXNlcmlhbC1hZGFwdGVycy1ncmV5bGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIw
MjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC44
MTgwMzRdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1t
bS14MjJ4LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5k
ZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguODE4Njc1XSBbcnVs
ZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tenRlLXBvcnQt
dHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFu
YWdlcjogaG90cGx1ZzogZXZlbnQgcmVwb3J0ZWQ6IGFjdGlvbj1hZGQsIG5hbWU9dHR5VVNCNCwg
c3Vic3lzdGVtPXR0eQpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC44Mjg4ODVdIFtydWxlc10gbG9hZGlu
ZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83OC1tbS1jdXN0b20ucnVsZXMKVHVlIEFw
ciAyOCAwNzo0MzoyOCAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1ZzogYWxy
ZWFkeSB3YWl0aW5nIGZvciBtb2RlbSBhdCBzeXNmcyBwYXRoIC9zeXMvZGV2aWNlcy9wbGF0Zm9y
bS8xYTBjMDAwMC51c2IvdXNiMi8yLTEKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5u
b3RpY2UgcHJvY2Q6IC9ldGMvcmMuZC9TOTl3YXBwZDogW3Byb2Nlc3Nfb3B0aW9uc11EZWZhdWx0
IGludGVyZmFjZTogcmEwClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24ubm90aWNlIHBy
b2NkOiAvZXRjL3JjLmQvUzk5d2FwcGQ6IBtbMTszMW0gbWFwX3JlYWRfY29uZmlnX2ZpbGUsIDEy
NSAbWzBtClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24ubm90aWNlIHByb2NkOiAvZXRj
L3JjLmQvUzk5d2FwcGQ6IFttYXBfcmVhZF9jb25maWdfZmlsZV1vcGVuIE1BUCBjZmcgZmlsZSAo
L2V0Y19yby9tYXBfY2ZnLnR4dCkgZmFpbApUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9u
Lm5vdGljZSBwcm9jZDogL2V0Yy9yYy5kL1M5OXdhcHBkOiAbWzE7MzFtIG1hcF9pbml0LCAyMjUg
G1swbQpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmluZm8gcHJvY2Q6IC0gaW5pdCBj
b21wbGV0ZSAtClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24ubm90aWNlIHByb2NkOiAv
ZXRjL2luaXQuZC9uZXR3b3JrOiBpcHRhYmxlczogQ2hhaW4gYWxyZWFkeSBleGlzdHMuClR1ZSBB
cHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA4LjkwNjA1NF0gS2VybmVsIGV2ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4
IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOC45MDY2ODldICAgYWN0aW9uOiAgICBhZGQKVHVlIEFwciAyOCAwNzo0MzoyOCAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDgu
OTA2NzE3XSAgIHN1YnN5c3RlbTogdHR5ClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjkwNjczOV0gICBu
YW1lOiAgICAgIHR0eVVTQjQKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTA2NzYxXSAgIHVpZDogICAg
ICAgbi9hClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2Vy
WzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjkwNjc4NF0gW3J1bGVzXSBydWxlcyBkaXJlY3Rv
cnkgc2V0IHRvICcvbGliL3VkZXYvcnVsZXMuZCcuLi4KVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTA5
NTM4XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
Y2ludGVyaW9uLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1v
bi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTA5ODYyXSBb
cnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tZGVsbC1w
b3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9k
ZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjkxMDE0Nl0gW3J1bGVzXSBsb2Fk
aW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWRsaW5rLXBvcnQtdHlwZXMu
cnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJb
NDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTEwMzM4XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMg
ZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tZXJpY3Nzb24tbWJtLnJ1bGVzClR1ZSBBcHIg
MjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA4LjkxMTUxMF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRl
di9ydWxlcy5kLzc3LW1tLWZpYm9jb20tcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQz
OjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOC45MTE2NjldIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMu
ZC83Ny1tbS1oYWllci1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjkxMTgy
MV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWh1
YXdlaS1uZXQtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9u
LmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45MTIxMTJdIFty
dWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1sb25nY2hl
ZXItcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVn
IE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45MTM4MDldIFtydWxlc10g
bG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1tdGstcG9ydC10eXBl
cy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdl
cls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45MTQyNzZdIFtydWxlc10gbG9hZGluZyBydWxl
cyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1ub2tpYS1wb3J0LXR5cGVzLnJ1bGVzClR1
ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8
ZGVidWc+IFsxNTg4MDU5ODA4LjkxNDU5Nl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9s
aWIvdWRldi9ydWxlcy5kLzc3LW1tLXBjbWNpYS1kZXZpY2UtYmxhY2tsaXN0LnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA4LjkxNDcxNl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLXF1ZWN0ZWwtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3
OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4
ODA1OTgwOC45MjIzMDldIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVs
ZXMuZC83Ny1tbS1zaWVycmEucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5k
ZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTIyNTg5XSBbcnVs
ZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tc2ltdGVjaC1w
b3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9k
ZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4LjkyMjkwNl0gW3J1bGVzXSBsb2Fk
aW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXRlbGl0LXBvcnQtdHlwZXMu
cnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJb
NDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTIzNDU5XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMg
ZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdHBsaW5rLXBvcnQtdHlwZXMucnVsZXMKVHVl
IEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxk
ZWJ1Zz4gWzE1ODgwNTk4MDguOTIzNjQ1XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xp
Yi91ZGV2L3J1bGVzLmQvNzctbW0tdWJsb3gtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3
OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4
ODA1OTgwOC45MjQwOThdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVs
ZXMuZC83Ny1tbS11c2ItZGV2aWNlLWJsYWNrbGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4
IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBjYWNoZWQgZXZlbnQgZm91
bmQ6IGFjdGlvbj1hZGQsIG5hbWU9d2RzaTAsIHN1YnN5c3RlbT1uZXQsIHN5c2ZzcGF0aD0vc3lz
L2RldmljZXMvdmlydHVhbC9uZXQvd2RzaTAKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1v
bi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTI1MjI3XSBb
cnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdXNiLXNl
cmlhbC1hZGFwdGVycy1ncmV5bGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFl
bW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45MjU2NzVd
IFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS14MjJ4
LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTI2MzE5XSBbcnVsZXNdIGxv
YWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tenRlLXBvcnQtdHlwZXMu
cnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJb
NDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTI4Mzk3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMg
ZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzgtbW0tY3VzdG9tLnJ1bGVzClR1ZSBBcHIgMjggMDc6
NDM6MjggMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6IGhvdHBsdWc6IGV2ZW50IHJlcG9y
dGVkOiBhY3Rpb249YWRkLCBuYW1lPXdkc2kwLCBzdWJzeXN0ZW09bmV0ClR1ZSBBcHIgMjggMDc6
NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4
MDU5ODA4Ljk2MzQ5MF0gS2VybmVsIGV2ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4IDA3OjQzOjI4
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OC45NjQyMjZdICAgYWN0aW9uOiAgICBhZGQKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1v
bi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTY0MjYwXSAg
IHN1YnN5c3RlbTogbmV0ClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9k
ZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4Ljk2NDI4NF0gICBuYW1lOiAgICAg
IHdkc2kwClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2Vy
WzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4Ljk2NDMwNF0gICB1aWQ6ICAgICAgIG4vYQpUdWUg
QXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRl
YnVnPiBbMTU4ODA1OTgwOC45NjQzMjhdIFtydWxlc10gcnVsZXMgZGlyZWN0b3J5IHNldCB0byAn
L2xpYi91ZGV2L3J1bGVzLmQnLi4uClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVi
dWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4Ljk2NDgxOF0gW3J1bGVz
XSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWNpbnRlcmlvbi1w
b3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9k
ZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4Ljk2NTA5Ml0gW3J1bGVzXSBsb2Fk
aW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWRlbGwtcG9ydC10eXBlcy5y
dWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0
MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45NjUzOTFdIFtydWxlc10gbG9hZGluZyBydWxlcyBm
cm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1kbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA4Ljk2NTU5NV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLWVyaWNzc29uLW1ibS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OC45NjY3NTJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83
Ny1tbS1maWJvY29tLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRh
ZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTY3MDIw
XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0taGFp
ZXItcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVn
IE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45NjcyMzJdIFtydWxlc10g
bG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1odWF3ZWktbmV0LXBv
cnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTY3NTMzXSBbcnVsZXNdIGxvYWRp
bmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbG9uZ2NoZWVyLXBvcnQtdHlw
ZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFn
ZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTY5MzA4XSBbcnVsZXNdIGxvYWRpbmcgcnVs
ZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbXRrLXBvcnQtdHlwZXMucnVsZXMKVHVl
IEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxk
ZWJ1Zz4gWzE1ODgwNTk4MDguOTY5OTQ1XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xp
Yi91ZGV2L3J1bGVzLmQvNzctbW0tbm9raWEtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3
OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4
ODA1OTgwOC45NzAzNDRdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVs
ZXMuZC83Ny1tbS1wY21jaWEtZGV2aWNlLWJsYWNrbGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQz
OjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOC45NzA0OTFdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMu
ZC83Ny1tbS1xdWVjdGVsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTcw
ODE3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
c2llcnJhLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA4Ljk3MTIyM10gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpbXRlY2gtcG9ydC10eXBlcy5y
dWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0
MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45NzE1ODRdIFtydWxlc10gbG9hZGluZyBydWxlcyBm
cm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10ZWxpdC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA4Ljk3MjA5M10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLXRwbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6
NDM6MjggMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4
MDU5ODA4Ljk3MjI4NF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxl
cy5kLzc3LW1tLXVibG94LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTcy
NzQyXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
dXNiLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1v
bi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTczODUxXSBb
cnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdXNiLXNl
cmlhbC1hZGFwdGVycy1ncmV5bGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgZGFl
bW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOC45NzQyMzdd
IFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS14MjJ4
LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDguOTc0ODU2XSBbcnVsZXNdIGxv
YWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tenRlLXBvcnQtdHlwZXMu
cnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIHVzZXIud2FybiBsdWE6IHNraXAgbGluZSB3
aXRob3V0ICc9JyBEZWZhdWx0ClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCB1c2VyLndhcm4gbHVh
OiBza2lwIGxpbmUgd2l0aG91dCAnPScgClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCB1c2VyLmRl
YnVnIGx1YTogc2VhcmNoX2Rldl9hbmRfcHJvZmlsZV9sMTogTVQ3NjE1LjE9L2V0Yy93aXJlbGVz
cy9tZWRpYXRlay9tdDc2MTVlLjEuZGF0ClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCB1c2VyLmRl
YnVnIGx1YTogc2VhcmNoX2Rldl9hbmRfcHJvZmlsZV9sMTogTVQ3NjE1LjI9L2V0Yy93aXJlbGVz
cy9tZWRpYXRlay9tdDc2MTVlLjIuZGF0ClR1ZSBBcHIgMjggMDc6NDM6MjggMjAyMCB1c2VyLmRl
YnVnIGx1YTogc2VhcmNoX2Rldl9hbmRfcHJvZmlsZV9sMTogTVQ3NjIyLjE9L2V0Yy93aXJlbGVz
cy9tZWRpYXRlay9tdDc2MjIuMS5kYXQKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIHVzZXIud2Fy
biBsdWE6IHNraXAgY29tbWVudCBsaW5lICNUaGUgd29yZCBvZiAiRGVmYXVsdCIgbXVzdCBub3Qg
YmUgcmVtb3ZlZApUdWUgQXByIDI4IDA3OjQzOjI4IDIwMjAgdXNlci53YXJuIGx1YTogc2tpcCBs
aW5lIHdpdGhvdXQgJz0nIERlZmF1bHQKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIHVzZXIud2Fy
biBsdWE6IHNraXAgbGluZSB3aXRob3V0ICc9JyAKVHVlIEFwciAyOCAwNzo0MzoyOCAyMDIwIHVz
ZXIud2FybiBsdWE6IHNraXAgbGluZSB3aXRob3V0ICc9JyAKVHVlIEFwciAyOCAwNzo0MzoyOCAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDgu
OTg5MDAwXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzgt
bW0tY3VzdG9tLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTog
bXQ3NjE1ZV91cDogaWZjb25maWcgYXBjbGkwMCB1cApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
dXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRldmljZSBz
eXNmc3BhdGggbm90IGZvdW5kClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLm5vdGljZSBN
b2RlbU1hbmFnZXI6IGhvdHBsdWc6IGNhY2hlZCBldmVudCBmb3VuZDogYWN0aW9uPWFkZCwgbmFt
ZT13ZHNpMSwgc3Vic3lzdGVtPW5ldCwgc3lzZnNwYXRoPS9zeXMvZGV2aWNlcy92aXJ0dWFsL25l
dC93ZHNpMQpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2Vy
OiBob3RwbHVnOiBldmVudCByZXBvcnRlZDogYWN0aW9uPWFkZCwgbmFtZT13ZHNpMSwgc3Vic3lz
dGVtPW5ldApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2Vy
OiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRldmljZSBzeXNmc3BhdGggbm90IGZvdW5kClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjA4NzQyMF0gS2VybmVsIGV2ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4
IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOS4wODc5OTldICAgYWN0aW9uOiAgICBhZGQKVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDku
MDg4MDI1XSAgIHN1YnN5c3RlbTogbmV0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjA4ODA0N10gICBu
YW1lOiAgICAgIHdkc2kxClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9k
ZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjA4ODA2N10gICB1aWQ6ICAgICAg
IG4vYQpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0
MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4wODgwODhdIFtydWxlc10gcnVsZXMgZGlyZWN0b3J5
IHNldCB0byAnL2xpYi91ZGV2L3J1bGVzLmQnLi4uClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjA5MDU5
Nl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWNp
bnRlcmlvbi1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjA5MDg2OV0gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWRlbGwtcG9y
dC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4wOTE4OTRdIFtydWxlc10gbG9hZGlu
ZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1kbGluay1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjA5MjIxMV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWVyaWNzc29uLW1ibS5ydWxlcwpUdWUgQXByIDI4
IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOS4wOTM0MzVdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYv
cnVsZXMuZC83Ny1tbS1maWJvY29tLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0Mzoy
OSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDkuMDkzNzAyXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0taGFpZXItcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFl
bW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4wOTM5NjFd
IFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1odWF3
ZWktbmV0LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5k
ZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMDk0MzY5XSBbcnVs
ZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbG9uZ2NoZWVy
LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMDk2MjkxXSBbcnVsZXNdIGxv
YWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbXRrLXBvcnQtdHlwZXMu
cnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJb
NDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMDk3MTcxXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMg
ZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbm9raWEtcG9ydC10eXBlcy5ydWxlcwpUdWUg
QXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRl
YnVnPiBbMTU4ODA1OTgwOS4wOTc4MTFdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGli
L3VkZXYvcnVsZXMuZC83Ny1tbS1wY21jaWEtZGV2aWNlLWJsYWNrbGlzdC5ydWxlcwpUdWUgQXBy
IDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVn
PiBbMTU4ODA1OTgwOS4wOTgxNzJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3Vk
ZXYvcnVsZXMuZC83Ny1tbS1xdWVjdGVsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuMDk4NzExXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVz
LmQvNzctbW0tc2llcnJhLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVi
dWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjA5OTE4Ml0gW3J1bGVz
XSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpbXRlY2gtcG9y
dC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4wOTk1MzJdIFtydWxlc10gbG9hZGlu
ZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10ZWxpdC1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjEwMDA2MF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXRwbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjEwMDMwNF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLXVibG94LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuMTAwNzY3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVz
LmQvNzctbW0tdXNiLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDku
MTAxODkxXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzct
bW0tdXNiLXNlcmlhbC1hZGFwdGVycy1ncmV5bGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OS4xMDIzMDhdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83
Ny1tbS14MjJ4LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIu
ZGVidWcgbHVhOiBhZGQgYXBjbGkwIGludG8gbGFuClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjEwMjkz
MF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXp0
ZS1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcg
TW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjEwNDk5OV0gW3J1bGVzXSBs
b2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc4LW1tLWN1c3RvbS5ydWxlcwpU
dWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVn
OiBjYWNoZWQgZXZlbnQgZm91bmQ6IGFjdGlvbj1hZGQsIG5hbWU9d2RzaTIsIHN1YnN5c3RlbT1u
ZXQsIHN5c2ZzcGF0aD0vc3lzL2RldmljZXMvdmlydHVhbC9uZXQvd2RzaTIKVHVlIEFwciAyOCAw
Nzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1ZzogZXZlbnQgcmVw
b3J0ZWQ6IGFjdGlvbj1hZGQsIG5hbWU9d2RzaTIsIHN1YnN5c3RlbT1uZXQKVHVlIEFwciAyOCAw
Nzo0MzoyOSAyMDIwIHVzZXIuZGVidWcgbHVhOiBtdDc2MTVlX3VwOiBpZmNvbmZpZyB3ZHMwMCB1
cApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3Rw
bHVnOiBlcnJvcjogcGFyZW50IGRldmljZSBzeXNmc3BhdGggbm90IGZvdW5kClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjE2NzQ2OV0gS2VybmVsIGV2ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS4xNjgxODFdICAgYWN0aW9uOiAgICBhZGQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRh
ZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMTY4MjE2
XSAgIHN1YnN5c3RlbTogbmV0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcg
TW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE2ODI0MV0gICBuYW1lOiAg
ICAgIHdkc2kyClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE2ODI2M10gICB1aWQ6ICAgICAgIG4vYQpU
dWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTog
PGRlYnVnPiBbMTU4ODA1OTgwOS4xNjgyODddIFtydWxlc10gcnVsZXMgZGlyZWN0b3J5IHNldCB0
byAnL2xpYi91ZGV2L3J1bGVzLmQnLi4uClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE2ODgwNF0gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWNpbnRlcmlv
bi1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcg
TW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE2OTA4NF0gW3J1bGVzXSBs
b2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWRlbGwtcG9ydC10eXBl
cy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdl
cls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4xNjkzODFdIFtydWxlc10gbG9hZGluZyBydWxl
cyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1kbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1
ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8
ZGVidWc+IFsxNTg4MDU5ODA5LjE2OTU3OV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9s
aWIvdWRldi9ydWxlcy5kLzc3LW1tLWVyaWNzc29uLW1ibS5ydWxlcwpUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS4xNzA3MzRdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMu
ZC83Ny1tbS1maWJvY29tLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMTcx
MDI2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
aGFpZXItcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4xNzEyNDNdIFtydWxl
c10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1odWF3ZWktbmV0
LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMTcxNTQzXSBbcnVsZXNdIGxv
YWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbG9uZ2NoZWVyLXBvcnQt
dHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFu
YWdlcjogaG90cGx1ZzogY2FjaGVkIGV2ZW50IGZvdW5kOiBhY3Rpb249YWRkLCBuYW1lPXdkc2kz
LCBzdWJzeXN0ZW09bmV0LCBzeXNmc3BhdGg9L3N5cy9kZXZpY2VzL3ZpcnR1YWwvbmV0L3dkc2kz
ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRd
OiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE3MzI5NV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206
IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLW10ay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjE3MzkwOF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLW5va2lhLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDku
MTc0Mjk5XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzct
bW0tcGNtY2lhLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMTc0
NDU1XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
cXVlY3RlbC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE3NDc4MV0gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpZXJyYS5y
dWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0
MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4xNzUwMjRdIFtydWxlc10gbG9hZGluZyBydWxlcyBm
cm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1zaW10ZWNoLXBvcnQtdHlwZXMucnVsZXMKVHVl
IEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1Zzog
ZXZlbnQgcmVwb3J0ZWQ6IGFjdGlvbj1hZGQsIG5hbWU9d2RzaTMsIHN1YnN5c3RlbT1uZXQKVHVl
IEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxk
ZWJ1Zz4gWzE1ODgwNTk4MDkuMTg1NzQ5XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xp
Yi91ZGV2L3J1bGVzLmQvNzctbW0tdGVsaXQtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3
OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4
ODA1OTgwOS4xODYzMjhdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVs
ZXMuZC83Ny1tbS10cGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIw
MjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4x
ODY1NDNdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1t
bS11YmxveC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE4Njk5N10gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1kZXZp
Y2UtYmxhY2tsaXN0LnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcg
TW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE4ODI2N10gW3J1bGVzXSBs
b2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1zZXJpYWwtYWRh
cHRlcnMtZ3JleWxpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1
ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMTg4NzE1XSBbcnVsZXNd
IGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0teDIyeC1wb3J0LXR5
cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjE4OTMyM10gW3J1bGVzXSBsb2FkaW5nIHJ1
bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXp0ZS1wb3J0LXR5cGVzLnJ1bGVzClR1
ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8
ZGVidWc+IFsxNTg4MDU5ODA5LjE5MTM1Ml0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9s
aWIvdWRldi9ydWxlcy5kLzc4LW1tLWN1c3RvbS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIw
MjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRldmlj
ZSBzeXNmc3BhdGggbm90IGZvdW5kClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVi
dWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjIyOTkxNV0gS2VybmVs
IGV2ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1v
ZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4yMzA1NzldICAgYWN0aW9uOiAg
ICBhZGQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJb
NDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMjMwNjEwXSAgIHN1YnN5c3RlbTogbmV0ClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjIzMDYzM10gICBuYW1lOiAgICAgIHdkc2kzClR1ZSBBcHIgMjggMDc6
NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4
MDU5ODA5LjIzMDY1NF0gICB1aWQ6ICAgICAgIG4vYQpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
ZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4yMzA2
NzddIFtydWxlc10gcnVsZXMgZGlyZWN0b3J5IHNldCB0byAnL2xpYi91ZGV2L3J1bGVzLmQnLi4u
ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRd
OiA8ZGVidWc+IFsxNTg4MDU5ODA5LjIzMTM0MF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206
IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWNpbnRlcmlvbi1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjIzMTY1MV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLWRlbGwtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS4yMzE5NTddIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMu
ZC83Ny1tbS1kbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjIzMjE3
Ml0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWVy
aWNzc29uLW1ibS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1v
ZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4yMzMzNTNdIFtydWxlc10gbG9h
ZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1maWJvY29tLXBvcnQtdHlw
ZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFn
ZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMjMzNjQ0XSBbcnVsZXNdIGxvYWRpbmcgcnVs
ZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0taGFpZXItcG9ydC10eXBlcy5ydWxlcwpU
dWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTog
PGRlYnVnPiBbMTU4ODA1OTgwOS4yMzM4MjFdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAv
bGliL3VkZXYvcnVsZXMuZC83Ny1tbS1odWF3ZWktbmV0LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFw
ciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1
Zz4gWzE1ODgwNTk4MDkuMjM0MTI0XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91
ZGV2L3J1bGVzLmQvNzctbW0tbG9uZ2NoZWVyLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAw
Nzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1
ODgwNTk4MDkuMjM1OTUzXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1
bGVzLmQvNzctbW0tbXRrLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMjM2
NTg2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
bm9raWEtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4yMzcwMDRdIFtydWxl
c10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1wY21jaWEtZGV2
aWNlLWJsYWNrbGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVn
IE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4yMzcxNjNdIFtydWxlc10g
bG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1xdWVjdGVsLXBvcnQt
dHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1h
bmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMjM3NDg3XSBbcnVsZXNdIGxvYWRpbmcg
cnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tc2llcnJhLnJ1bGVzClR1ZSBBcHIg
MjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA5LjIzNzczNl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRl
di9ydWxlcy5kLzc3LW1tLXNpbXRlY2gtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS4yMzgwNjhdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMu
ZC83Ny1tbS10ZWxpdC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjIzODU3
OF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXRw
bGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVi
dWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjIzODc2OV0gW3J1bGVz
XSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVibG94LXBvcnQt
dHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1h
bmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMjM5MjkyXSBbcnVsZXNdIGxvYWRpbmcg
cnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdXNiLWRldmljZS1ibGFja2xpc3Qu
cnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJb
NDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMjQwNDQwXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMg
ZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdXNiLXNlcmlhbC1hZGFwdGVycy1ncmV5bGlz
dC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdl
cls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4yNDA5MTFdIFtydWxlc10gbG9hZGluZyBydWxl
cyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS14MjJ4LXBvcnQtdHlwZXMucnVsZXMKVHVl
IEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1Zzog
Y2FjaGVkIGV2ZW50IGZvdW5kOiBhY3Rpb249YWRkLCBuYW1lPWFwY2xpaTAsIHN1YnN5c3RlbT1u
ZXQsIHN5c2ZzcGF0aD0vc3lzL2RldmljZXMvdmlydHVhbC9uZXQvYXBjbGlpMApUdWUgQXByIDI4
IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOS4yNDE1MzhdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYv
cnVsZXMuZC83Ny1tbS16dGUtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIw
MjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4y
NDM4MDldIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83OC1t
bS1jdXN0b20ucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIuZGVidWcgbHVhOiBh
ZGQgd2RzMCBpbnRvIGxhbgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9k
ZW1NYW5hZ2VyOiBob3RwbHVnOiBldmVudCByZXBvcnRlZDogYWN0aW9uPWFkZCwgbmFtZT1hcGNs
aWkwLCBzdWJzeXN0ZW09bmV0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1
YTogbXQ3NjE1ZV91cDogaWZjb25maWcgd2RzMTAgdXAKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1ZzogZXJyb3I6IHBhcmVudCBkZXZpY2Ug
c3lzZnNwYXRoIG5vdCBmb3VuZApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVn
IE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zMDExMDBdIEtlcm5lbCBl
dmVudCByZXBvcnRlZDoKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzAxODE2XSAgIGFjdGlvbjogICAg
YWRkClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjMwMTg0OV0gICBzdWJzeXN0ZW06IG5ldApUdWUgQXBy
IDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVn
PiBbMTU4ODA1OTgwOS4zMDE4NzFdICAgbmFtZTogICAgICBhcGNsaWkwClR1ZSBBcHIgMjggMDc6
NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4
MDU5ODA5LjMwMTg5Ml0gICB1aWQ6ICAgICAgIG4vYQpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
ZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zMDE5
MTRdIFtydWxlc10gcnVsZXMgZGlyZWN0b3J5IHNldCB0byAnL2xpYi91ZGV2L3J1bGVzLmQnLi4u
ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRd
OiA8ZGVidWc+IFsxNTg4MDU5ODA5LjMwMjQyM10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206
IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWNpbnRlcmlvbi1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjMwMjcwOF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLWRlbGwtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS4zMDMwMDZdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMu
ZC83Ny1tbS1kbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjMwMzI2
M10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWVy
aWNzc29uLW1ibS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1v
ZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zMDQ0NDJdIFtydWxlc10gbG9h
ZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1maWJvY29tLXBvcnQtdHlw
ZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFn
ZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzA0NzU2XSBbcnVsZXNdIGxvYWRpbmcgcnVs
ZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0taGFpZXItcG9ydC10eXBlcy5ydWxlcwpU
dWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTog
PGRlYnVnPiBbMTU4ODA1OTgwOS4zMDQ5NDJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAv
bGliL3VkZXYvcnVsZXMuZC83Ny1tbS1odWF3ZWktbmV0LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFw
ciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1
Zz4gWzE1ODgwNTk4MDkuMzA1MjQwXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91
ZGV2L3J1bGVzLmQvNzctbW0tbG9uZ2NoZWVyLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAw
Nzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1ZzogY2FjaGVkIGV2
ZW50IGZvdW5kOiBhY3Rpb249YWRkLCBuYW1lPWJyLWxhbiwgc3Vic3lzdGVtPW5ldCwgc3lzZnNw
YXRoPS9zeXMvZGV2aWNlcy92aXJ0dWFsL25ldC9ici1sYW4KVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1ZzogZXZlbnQgcmVwb3J0ZWQ6IGFj
dGlvbj1hZGQsIG5hbWU9YnItbGFuLCBzdWJzeXN0ZW09bmV0ClR1ZSBBcHIgMjggMDc6NDM6Mjkg
MjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5
LjMwNzAwNF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3
LW1tLW10ay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjMxNzk3MF0gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLW5va2lhLXBv
cnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzE4MzgwXSBbcnVsZXNdIGxvYWRp
bmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tcGNtY2lhLWRldmljZS1ibGFj
a2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1h
bmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzE4NTQyXSBbcnVsZXNdIGxvYWRpbmcg
cnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tcXVlY3RlbC1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjMxODg2NV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpZXJyYS5ydWxlcwpUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS4zMTkxNTZdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMu
ZC83Ny1tbS1zaW10ZWNoLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzE5
NDgzXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
dGVsaXQtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zMTk5OTJdIFtydWxl
c10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10cGxpbmstcG9y
dC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zMjAyMDNdIFtydWxlc10gbG9hZGlu
ZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS11YmxveC1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjMyMDY2MF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1kZXZpY2UtYmxhY2tsaXN0LnJ1bGVzClR1
ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8
ZGVidWc+IFsxNTg4MDU5ODA5LjMyMTc4NF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9s
aWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1zZXJpYWwtYWRhcHRlcnMtZ3JleWxpc3QucnVsZXMK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzIyMjI0XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0teDIyeC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjMyMjgzOV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLXp0ZS1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAy
MCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjMy
NDg1NV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc4LW1t
LWN1c3RvbS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1N
YW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRldmljZSBzeXNmc3BhdGggbm90IGZvdW5k
ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRd
OiA8ZGVidWc+IFsxNTg4MDU5ODA5LjM2NDgxOF0gS2VybmVsIGV2ZW50IHJlcG9ydGVkOgpUdWUg
QXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRl
YnVnPiBbMTU4ODA1OTgwOS4zNjU1NDldICAgYWN0aW9uOiAgICBhZGQKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuMzY1NTgyXSAgIHN1YnN5c3RlbTogbmV0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjM2NTYw
NV0gICBuYW1lOiAgICAgIGJyLWxhbgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zNjU2MjddICAgdWlk
OiAgICAgICBuL2EKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1h
bmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzY1NjUwXSBbcnVsZXNdIHJ1bGVzIGRp
cmVjdG9yeSBzZXQgdG8gJy9saWIvdWRldi9ydWxlcy5kJy4uLgpUdWUgQXByIDI4IDA3OjQzOjI5
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OS4zNjYxNTJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83
Ny1tbS1jaW50ZXJpb24tcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
ZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zNjY0
MzddIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1k
ZWxsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1
ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzY2NzQ0XSBbcnVsZXNd
IGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tZGxpbmstcG9ydC10
eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFu
YWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zNjY5NTldIFtydWxlc10gbG9hZGluZyBy
dWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1lcmljc3Nvbi1tYm0ucnVsZXMKVHVl
IEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxk
ZWJ1Zz4gWzE1ODgwNTk4MDkuMzY4MTc2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xp
Yi91ZGV2L3J1bGVzLmQvNzctbW0tZmlib2NvbS1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjM2ODQ1N10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLWhhaWVyLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDku
MzY4NjIyXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzct
bW0taHVhd2VpLW5ldC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjM2ODky
Ml0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWxv
bmdjaGVlci1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjM3MDY5Nl0gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLW10ay1wb3J0
LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjM3MzE5NV0gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLW5va2lhLXBvcnQtdHlwZXMucnVs
ZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90
cGx1ZzogY2FjaGVkIGV2ZW50IGZvdW5kOiBhY3Rpb249YWRkLCBuYW1lPXdsYW4td2RzMCwgc3Vi
c3lzdGVtPW5ldCwgc3lzZnNwYXRoPS9zeXMvZGV2aWNlcy92aXJ0dWFsL25ldC93bGFuLXdkczAK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzczNjM4XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tcGNtY2lhLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVl
IEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxk
ZWJ1Zz4gWzE1ODgwNTk4MDkuMzczNzgzXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xp
Yi91ZGV2L3J1bGVzLmQvNzctbW0tcXVlY3RlbC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjM3NDExMF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLXNpZXJyYS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9u
LmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zNzQzNTVdIFty
dWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1zaW10ZWNo
LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzc0Njg0XSBbcnVsZXNdIGxv
YWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdGVsaXQtcG9ydC10eXBl
cy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdl
cls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS4zNzUyOTRdIFtydWxlc10gbG9hZGluZyBydWxl
cyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10cGxpbmstcG9ydC10eXBlcy5ydWxlcwpU
dWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTog
PGRlYnVnPiBbMTU4ODA1OTgwOS4zNzU1MzhdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAv
bGliL3VkZXYvcnVsZXMuZC83Ny1tbS11YmxveC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjM3NTk5Nl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLXVzYi1kZXZpY2UtYmxhY2tsaXN0LnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6
MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5
ODA5LjM3NzExOV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5k
Lzc3LW1tLXVzYi1zZXJpYWwtYWRhcHRlcnMtZ3JleWxpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuMzc3NTY2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVz
LmQvNzctbW0teDIyeC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1
c2VyLmRlYnVnIGx1YTogYWRkIHdkczEgaW50byBsYW4KVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzc5
Mjc0XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
enRlLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1
ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuMzgxMzczXSBbcnVsZXNd
IGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzgtbW0tY3VzdG9tLnJ1bGVz
ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6IGhvdHBs
dWc6IGV2ZW50IHJlcG9ydGVkOiBhY3Rpb249YWRkLCBuYW1lPXdsYW4td2RzMCwgc3Vic3lzdGVt
PW5ldApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5kZWJ1ZyBsdWE6IG10NzYxNWVfdXA6
IGlmY29uZmlnIHdkczIwIHVwClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcg
TW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjQxNDM1MF0gS2VybmVsIGV2
ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS40MTUxNDZdICAgYWN0aW9uOiAgICBh
ZGQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMz
NF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNDE1MTg2XSAgIHN1YnN5c3RlbTogbmV0ClR1ZSBBcHIg
MjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA5LjQxNTIwOV0gICBuYW1lOiAgICAgIHdsYW4td2RzMApUdWUgQXByIDI4IDA3
OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4
ODA1OTgwOS40MTUyMzBdICAgdWlkOiAgICAgICBuL2EKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNDE1
MjUzXSBbcnVsZXNdIHJ1bGVzIGRpcmVjdG9yeSBzZXQgdG8gJy9saWIvdWRldi9ydWxlcy5kJy4u
LgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0
XTogPGRlYnVnPiBbMTU4ODA1OTgwOS40MTU3MzRdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9t
OiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1jaW50ZXJpb24tcG9ydC10eXBlcy5ydWxlcwpUdWUg
QXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRl
YnVnPiBbMTU4ODA1OTgwOS40MTYwMDddIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGli
L3VkZXYvcnVsZXMuZC83Ny1tbS1kZWxsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuNDE2MzE2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVz
LmQvNzctbW0tZGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
ZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS40MTY1
MjJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1l
cmljc3Nvbi1tYm0ucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNDE3NjU0XSBbcnVsZXNdIGxv
YWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tZmlib2NvbS1wb3J0LXR5
cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjQxNzgyOF0gW3J1bGVzXSBsb2FkaW5nIHJ1
bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWhhaWVyLXBvcnQtdHlwZXMucnVsZXMK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNDE3OTc2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0taHVhd2VpLW5ldC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjQxODI3MF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLWxvbmdjaGVlci1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjQyMDEwM10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLW10ay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAy
MCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjQy
MDU3Nl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1t
LW5va2lhLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5k
ZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNDIwODk2XSBbcnVs
ZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tcGNtY2lhLWRl
dmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1
ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNDIxMDE5XSBbcnVsZXNd
IGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tcXVlY3RlbC1wb3J0
LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjQyMTMzNl0gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpZXJyYS5ydWxlcwpUdWUgQXBy
IDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVn
PiBbMTU4ODA1OTgwOS40MjE1NjddIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3Vk
ZXYvcnVsZXMuZC83Ny1tbS1zaW10ZWNoLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuNDIxODgwXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVz
LmQvNzctbW0tdGVsaXQtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
ZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS40MjIz
NjldIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10
cGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS40MjI1NDhdIFtydWxl
c10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS11YmxveC1wb3J0
LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjQyMjk5Ml0gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1kZXZpY2UtYmxhY2tsaXN0
LnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2Vy
WzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjQyNDExNl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVz
IGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1zZXJpYWwtYWRhcHRlcnMtZ3JleWxp
c3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFn
ZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNDI0NDUwXSBbcnVsZXNdIGxvYWRpbmcgcnVs
ZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0teDIyeC1wb3J0LXR5cGVzLnJ1bGVzClR1
ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8
ZGVidWc+IFsxNTg4MDU5ODA5LjQyNTAzMl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9s
aWIvdWRldi9ydWxlcy5kLzc3LW1tLXp0ZS1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6
NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4
MDU5ODA5LjQyNjkxOV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxl
cy5kLzc4LW1tLWN1c3RvbS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3Rp
Y2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRldmljZSBzeXNmc3BhdGgg
bm90IGZvdW5kClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFn
ZXI6IGhvdHBsdWc6IGNhY2hlZCBldmVudCBmb3VuZDogYWN0aW9uPWFkZCwgbmFtZT13bGFuLXdk
czEsIHN1YnN5c3RlbT1uZXQsIHN5c2ZzcGF0aD0vc3lzL2RldmljZXMvdmlydHVhbC9uZXQvd2xh
bi13ZHMxClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6
IGhvdHBsdWc6IGV2ZW50IHJlcG9ydGVkOiBhY3Rpb249YWRkLCBuYW1lPXdsYW4td2RzMSwgc3Vi
c3lzdGVtPW5ldApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5h
Z2VyOiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRldmljZSBzeXNmc3BhdGggbm90IGZvdW5kClR1
ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogYWRkIHdkczIgaW50byBsYW4K
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTAwNjQ5XSBLZXJuZWwgZXZlbnQgcmVwb3J0ZWQ6ClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjUwMTI1Ml0gICBhY3Rpb246ICAgIGFkZApUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS41MDEyNzZdICAgc3Vic3lzdGVtOiBuZXQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRh
ZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTAxMjk3
XSAgIG5hbWU6ICAgICAgd2xhbi13ZHMxClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjUwMTMxN10gICB1
aWQ6ICAgICAgIG4vYQpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41MDEzNDBdIFtydWxlc10gcnVsZXMg
ZGlyZWN0b3J5IHNldCB0byAnL2xpYi91ZGV2L3J1bGVzLmQnLi4uClR1ZSBBcHIgMjggMDc6NDM6
MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5
ODA5LjUwMTgwNV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5k
Lzc3LW1tLWNpbnRlcmlvbi1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAy
MCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjUw
MjA1MF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1t
LWRlbGwtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41MDIzMjhdIFtydWxl
c10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1kbGluay1wb3J0
LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjUwMjUxNF0gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWVyaWNzc29uLW1ibS5ydWxlcwpU
dWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTog
PGRlYnVnPiBbMTU4ODA1OTgwOS41MDM2NTJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAv
bGliL3VkZXYvcnVsZXMuZC83Ny1tbS1maWJvY29tLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAy
OCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4g
WzE1ODgwNTk4MDkuNTAzODA1XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2
L3J1bGVzLmQvNzctbW0taGFpZXItcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OS41MDU2NTFdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83
Ny1tbS1odWF3ZWktbmV0LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTA1
OTgwXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
bG9uZ2NoZWVyLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1v
bi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTA3OTQ3XSBb
cnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbXRrLXBv
cnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTA4NTE1XSBbcnVsZXNdIGxvYWRp
bmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tbm9raWEtcG9ydC10eXBlcy5y
dWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0
MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41MDg4MzldIFtydWxlc10gbG9hZGluZyBydWxlcyBm
cm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1wY21jaWEtZGV2aWNlLWJsYWNrbGlzdC5ydWxl
cwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0
XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41MDg5NjNdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9t
OiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1xdWVjdGVsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFw
ciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1
Zz4gWzE1ODgwNTk4MDkuNTA5MjgxXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91
ZGV2L3J1bGVzLmQvNzctbW0tc2llcnJhLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBk
YWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjUwOTUx
MV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNp
bXRlY2gtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41MDk4MjRdIFtydWxl
c10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10ZWxpdC1wb3J0
LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjUxMDMxNl0gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXRwbGluay1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjUxMDQ5MV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVibG94LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFw
ciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1
Zz4gWzE1ODgwNTk4MDkuNTEwOTMzXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91
ZGV2L3J1bGVzLmQvNzctbW0tdXNiLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAw
Nzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1
ODgwNTk4MDkuNTEyMDI3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1
bGVzLmQvNzctbW0tdXNiLXNlcmlhbC1hZGFwdGVycy1ncmV5bGlzdC5ydWxlcwpUdWUgQXByIDI4
IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOS41MTIzNTldIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYv
cnVsZXMuZC83Ny1tbS14MjJ4LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDku
NTE5NTczXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzct
bW0tenRlLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIuZGVi
dWcgbHVhOiBtdDc2MTVlX3VwOiBpZmNvbmZpZyB3ZHMzMCB1cApUdWUgQXByIDI4IDA3OjQzOjI5
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OS41MjIwODNdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83
OC1tbS1jdXN0b20ucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1v
ZGVtTWFuYWdlcjogaG90cGx1ZzogY2FjaGVkIGV2ZW50IGZvdW5kOiBhY3Rpb249YWRkLCBuYW1l
PXdsYW4td2RzMiwgc3Vic3lzdGVtPW5ldCwgc3lzZnNwYXRoPS9zeXMvZGV2aWNlcy92aXJ0dWFs
L25ldC93bGFuLXdkczIKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVt
TWFuYWdlcjogaG90cGx1ZzogZXZlbnQgcmVwb3J0ZWQ6IGFjdGlvbj1hZGQsIG5hbWU9d2xhbi13
ZHMyLCBzdWJzeXN0ZW09bmV0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcg
TW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjU2MjQ5Nl0gS2VybmVsIGV2
ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVt
TWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41NjMyNjBdICAgYWN0aW9uOiAgICBh
ZGQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMz
NF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTYzMjkyXSAgIHN1YnN5c3RlbTogbmV0ClR1ZSBBcHIg
MjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA5LjU2MzMxNV0gICBuYW1lOiAgICAgIHdsYW4td2RzMgpUdWUgQXByIDI4IDA3
OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4
ODA1OTgwOS41NjMzMzZdICAgdWlkOiAgICAgICBuL2EKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTYz
MzU4XSBbcnVsZXNdIHJ1bGVzIGRpcmVjdG9yeSBzZXQgdG8gJy9saWIvdWRldi9ydWxlcy5kJy4u
LgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0
XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41NjM4NTJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9t
OiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1jaW50ZXJpb24tcG9ydC10eXBlcy5ydWxlcwpUdWUg
QXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRl
YnVnPiBbMTU4ODA1OTgwOS41NjQxMzJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGli
L3VkZXYvcnVsZXMuZC83Ny1tbS1kZWxsLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuNTY0NDI3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVz
LmQvNzctbW0tZGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
ZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41NjQ2
MjldIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1l
cmljc3Nvbi1tYm0ucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTY1ODAzXSBbcnVsZXNdIGxv
YWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tZmlib2NvbS1wb3J0LXR5
cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjU2NjA3NF0gW3J1bGVzXSBsb2FkaW5nIHJ1
bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWhhaWVyLXBvcnQtdHlwZXMucnVsZXMK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTY2MjM4XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0taHVhd2VpLW5ldC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjU2NjUzMl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIv
dWRldi9ydWxlcy5kLzc3LW1tLWxvbmdjaGVlci1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjgg
MDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsx
NTg4MDU5ODA5LjU2ODI2Ml0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9y
dWxlcy5kLzc3LW1tLW10ay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAy
MCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjU2
ODczMF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1t
LW5va2lhLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5k
ZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTY5MDUyXSBbcnVs
ZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tcGNtY2lhLWRl
dmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1
ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTY5MTc1XSBbcnVsZXNd
IGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tcXVlY3RlbC1wb3J0
LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjU2OTQ5MF0gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpZXJyYS5ydWxlcwpUdWUgQXBy
IDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVn
PiBbMTU4ODA1OTgwOS41Njk3MjFdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3Vk
ZXYvcnVsZXMuZC83Ny1tbS1zaW10ZWNoLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0
MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgw
NTk4MDkuNTcwMDM2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVz
LmQvNzctbW0tdGVsaXQtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAg
ZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41NzA1
MjZdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS10
cGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRl
YnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS41NzA2OTZdIFtydWxl
c10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS11YmxveC1wb3J0
LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1N
YW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjU3NzU4Ml0gW3J1bGVzXSBsb2FkaW5n
IHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1kZXZpY2UtYmxhY2tsaXN0
LnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2Vy
WzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjU3ODk3M10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVz
IGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1zZXJpYWwtYWRhcHRlcnMtZ3JleWxp
c3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFn
ZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNTc5Nzc1XSBbcnVsZXNdIGxvYWRpbmcgcnVs
ZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0teDIyeC1wb3J0LXR5cGVzLnJ1bGVzClR1
ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8
ZGVidWc+IFsxNTg4MDU5ODA5LjU4MDYyNV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9s
aWIvdWRldi9ydWxlcy5kLzc3LW1tLXp0ZS1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6
NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4
MDU5ODA5LjU4MjgyN10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxl
cy5kLzc4LW1tLWN1c3RvbS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3Rp
Y2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRldmljZSBzeXNmc3BhdGgg
bm90IGZvdW5kClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogYWRkIHdk
czMgaW50byBsYW4KVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFu
YWdlcjogaG90cGx1ZzogY2FjaGVkIGV2ZW50IGZvdW5kOiBhY3Rpb249YWRkLCBuYW1lPXdsYW4t
d2RzMywgc3Vic3lzdGVtPW5ldCwgc3lzZnNwYXRoPS9zeXMvZGV2aWNlcy92aXJ0dWFsL25ldC93
bGFuLXdkczMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdl
cjogaG90cGx1ZzogZXZlbnQgcmVwb3J0ZWQ6IGFjdGlvbj1hZGQsIG5hbWU9d2xhbi13ZHMzLCBz
dWJzeXN0ZW09bmV0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogbXQ3
NjE1ZV91cDogaWZjb25maWcgd2xhbi1hcGNsaTAwIHVwClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAy
MCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjY0
MDg3N10gS2VybmVsIGV2ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFl
bW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS42NDE1OTFd
ICAgYWN0aW9uOiAgICBhZGQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBN
b2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNjQxNjI2XSAgIHN1YnN5c3Rl
bTogbmV0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2Vy
WzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjY0MTY0OV0gICBuYW1lOiAgICAgIHdsYW4td2Rz
MwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0
XTogPGRlYnVnPiBbMTU4ODA1OTgwOS42NDE2NzBdICAgdWlkOiAgICAgICBuL2EKVHVlIEFwciAy
OCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4g
WzE1ODgwNTk4MDkuNjQxNjkyXSBbcnVsZXNdIHJ1bGVzIGRpcmVjdG9yeSBzZXQgdG8gJy9saWIv
dWRldi9ydWxlcy5kJy4uLgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1v
ZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS42NDIxNzNdIFtydWxlc10gbG9h
ZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1jaW50ZXJpb24tcG9ydC10
eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFu
YWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS42NDI0NDddIFtydWxlc10gbG9hZGluZyBy
dWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1kZWxsLXBvcnQtdHlwZXMucnVsZXMK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNjQyNzQ0XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tZGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4
IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOS42NDI5NTBdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYv
cnVsZXMuZC83Ny1tbS1lcmljc3Nvbi1tYm0ucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNjQ0
MTgzXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
Zmlib2NvbS1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjY0NDQ2MV0gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWhhaWVyLXBv
cnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNjQ0NjI5XSBbcnVsZXNdIGxvYWRp
bmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0taHVhd2VpLW5ldC1wb3J0LXR5
cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjY0NDkyOV0gW3J1bGVzXSBsb2FkaW5nIHJ1
bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWxvbmdjaGVlci1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjY0NjY5MV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLW10ay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIg
MjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA5LjY0ODM5MV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRl
di9ydWxlcy5kLzc3LW1tLW5va2lhLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0Mzoy
OSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDkuNjQ4ODgwXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0tcGNtY2lhLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDku
NjQ5MDY5XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzct
bW0tcXVlY3RlbC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVt
b24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjY0OTM5OV0g
W3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpZXJy
YS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdl
cls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS42NDk2NDVdIFtydWxlc10gbG9hZGluZyBydWxl
cyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1zaW10ZWNoLXBvcnQtdHlwZXMucnVsZXMK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNjQ5OTc0XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdGVsaXQtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4
IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBb
MTU4ODA1OTgwOS42NTA0ODldIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYv
cnVsZXMuZC83Ny1tbS10cGxpbmstcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5
IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgw
OS42NTA2OTJdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83
Ny1tbS11YmxveC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVt
b24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjY1MTIxNV0g
W3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXVzYi1k
ZXZpY2UtYmxhY2tsaXN0LnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLm5vdGlj
ZSBNb2RlbU1hbmFnZXI6IGhvdHBsdWc6IGVycm9yOiBwYXJlbnQgZGV2aWNlIHN5c2ZzcGF0aCBu
b3QgZm91bmQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFn
ZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNjUyMzYxXSBbcnVsZXNdIGxvYWRpbmcgcnVs
ZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdXNiLXNlcmlhbC1hZGFwdGVycy1ncmV5
bGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFu
YWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS42NTI4MTJdIFtydWxlc10gbG9hZGluZyBy
dWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS14MjJ4LXBvcnQtdHlwZXMucnVsZXMK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNjUzNDQwXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tenRlLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAw
Nzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1
ODgwNTk4MDkuNjU1NTI3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1
bGVzLmQvNzgtbW0tY3VzdG9tLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRl
YnVnIGx1YTogYWRkIHdsYW4tYXBjbGkwIGludG8gbGFuClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAy
MCBkYWVtb24ubm90aWNlIHByb2NkOiAvZXRjL2luaXQuZC9uZXR3b3JrOiBicmN0bDogYnJpZGdl
IGJyLWxhbjogRGV2aWNlIG9yIHJlc291cmNlIGJ1c3kKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IHVzZXIuZGVidWcgbHVhOiBtdDc2MTVlX3VwOiBpZmNvbmZpZyB3bGFuLXdkczAwIHVwClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogYWRkIHdsYW4td2RzMCBpbnRvIGxh
bgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3Rw
bHVnOiBjYWNoZWQgZXZlbnQgZm91bmQ6IGFjdGlvbj1hZGQsIG5hbWU9d2xhbi1hcGNsaTAsIHN1
YnN5c3RlbT1uZXQsIHN5c2ZzcGF0aD0vc3lzL2RldmljZXMvdmlydHVhbC9uZXQvd2xhbi1hcGNs
aTAKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5ub3RpY2UgcHJvY2Q6IC9ldGMvaW5p
dC5kL25ldHdvcms6IGJyY3RsOiBicmlkZ2UgYnItbGFuOiBJbnZhbGlkIGFyZ3VtZW50ClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogbXQ3NjE1ZV91cDogaWZjb25maWcg
d2xhbi13ZHMxMCB1cApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1N
YW5hZ2VyOiBob3RwbHVnOiBldmVudCByZXBvcnRlZDogYWN0aW9uPWFkZCwgbmFtZT13bGFuLWFw
Y2xpMCwgc3Vic3lzdGVtPW5ldApUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5kZWJ1ZyBs
dWE6IGFkZCB3bGFuLXdkczEgaW50byBsYW4KVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1v
bi5ub3RpY2UgcHJvY2Q6IC9ldGMvaW5pdC5kL25ldHdvcms6IGJyY3RsOiBicmlkZ2UgYnItbGFu
OiBJbnZhbGlkIGFyZ3VtZW50ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1
YTogbXQ3NjE1ZV91cDogaWZjb25maWcgd2xhbi13ZHMyMCB1cApUdWUgQXByIDI4IDA3OjQzOjI5
IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogcGFyZW50IGRl
dmljZSBzeXNmc3BhdGggbm90IGZvdW5kClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjcxNjg0OF0gS2Vy
bmVsIGV2ZW50IHJlcG9ydGVkOgpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVn
IE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS43MTc0ODZdICAgYWN0aW9u
OiAgICBhZGQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFn
ZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzE3NTE2XSAgIHN1YnN5c3RlbTogbmV0ClR1
ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8
ZGVidWc+IFsxNTg4MDU5ODA5LjcxNzUzOV0gICBuYW1lOiAgICAgIHdsYW4tYXBjbGkwClR1ZSBB
cHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVi
dWc+IFsxNTg4MDU5ODA5LjcxNzU2MF0gICB1aWQ6ICAgICAgIG4vYQpUdWUgQXByIDI4IDA3OjQz
OjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1
OTgwOS43MTc1ODJdIFtydWxlc10gcnVsZXMgZGlyZWN0b3J5IHNldCB0byAnL2xpYi91ZGV2L3J1
bGVzLmQnLi4uClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjcxODA3NV0gW3J1bGVzXSBsb2FkaW5nIHJ1
bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWNpbnRlcmlvbi1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjcxODM2MF0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWRlbGwtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXBy
IDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVn
PiBbMTU4ODA1OTgwOS43MTg2NTBdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3Vk
ZXYvcnVsZXMuZC83Ny1tbS1kbGluay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6
MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5
ODA5LjcxODg1MV0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5k
Lzc3LW1tLWVyaWNzc29uLW1ibS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5k
ZWJ1ZyBsdWE6IGFkZCB3bGFuLXdkczIgaW50byBsYW4KVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzIw
MDg3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
Zmlib2NvbS1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24u
ZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjcyMDMyNV0gW3J1
bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWhhaWVyLXBv
cnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2Rl
bU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzIwNDg1XSBbcnVsZXNdIGxvYWRp
bmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0taHVhd2VpLW5ldC1wb3J0LXR5
cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5h
Z2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjcyMDc4NF0gW3J1bGVzXSBsb2FkaW5nIHJ1
bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLWxvbmdjaGVlci1wb3J0LXR5cGVzLnJ1
bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQz
MzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjcyMjU0M10gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZy
b206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLW10ay1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIg
MjggMDc6NDM6MjkgMjAyMCBkYWVtb24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+
IFsxNTg4MDU5ODA5LjcyMzI3Nl0gW3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRl
di9ydWxlcy5kLzc3LW1tLW5va2lhLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0Mzoy
OSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDkuNzIzNjk2XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0tcGNtY2lhLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAy
MDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDku
NzIzODU3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzct
bW0tcXVlY3RlbC1wb3J0LXR5cGVzLnJ1bGVzClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCBkYWVt
b24uZGVidWcgTW9kZW1NYW5hZ2VyWzQzMzRdOiA8ZGVidWc+IFsxNTg4MDU5ODA5LjcyNDE4MF0g
W3J1bGVzXSBsb2FkaW5nIHJ1bGVzIGZyb206IC9saWIvdWRldi9ydWxlcy5kLzc3LW1tLXNpZXJy
YS5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdl
cls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS43MjQ0MjNdIFtydWxlc10gbG9hZGluZyBydWxl
cyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1tbS1zaW10ZWNoLXBvcnQtdHlwZXMucnVsZXMK
VHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06
IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzI0NzQ3XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTog
L2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdGVsaXQtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4
IDA3OjQzOjI5IDIwMjAgZGFlbW9uLm5vdGljZSBwcm9jZDogL2V0Yy9pbml0LmQvbmV0d29yazog
YnJjdGw6IGJyaWRnZSBici1sYW46IEludmFsaWQgYXJndW1lbnQKVHVlIEFwciAyOCAwNzo0Mzoy
OSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDkuNzI1MzI5XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0tdHBsaW5rLXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRh
ZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzI1NTQy
XSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tdWJs
b3gtcG9ydC10eXBlcy5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci5kZWJ1ZyBs
dWE6IG10NzYxNWVfdXA6IGlmY29uZmlnIHdsYW4td2RzMzAgdXAKVHVlIEFwciAyOCAwNzo0Mzoy
OSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4
MDkuNzI1OTkzXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQv
NzctbW0tdXNiLWRldmljZS1ibGFja2xpc3QucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIw
IGRhZW1vbi5kZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzI3
MjAyXSBbcnVsZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0t
dXNiLXNlcmlhbC1hZGFwdGVycy1ncmV5bGlzdC5ydWxlcwpUdWUgQXByIDI4IDA3OjQzOjI5IDIw
MjAgZGFlbW9uLmRlYnVnIE1vZGVtTWFuYWdlcls0MzM0XTogPGRlYnVnPiBbMTU4ODA1OTgwOS43
Mjc2NTBdIFtydWxlc10gbG9hZGluZyBydWxlcyBmcm9tOiAvbGliL3VkZXYvcnVsZXMuZC83Ny1t
bS14MjJ4LXBvcnQtdHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5k
ZWJ1ZyBNb2RlbU1hbmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzI4Mjg3XSBbcnVs
ZXNdIGxvYWRpbmcgcnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzctbW0tenRlLXBvcnQt
dHlwZXMucnVsZXMKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIGRhZW1vbi5kZWJ1ZyBNb2RlbU1h
bmFnZXJbNDMzNF06IDxkZWJ1Zz4gWzE1ODgwNTk4MDkuNzMwMjk1XSBbcnVsZXNdIGxvYWRpbmcg
cnVsZXMgZnJvbTogL2xpYi91ZGV2L3J1bGVzLmQvNzgtbW0tY3VzdG9tLnJ1bGVzClR1ZSBBcHIg
MjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogYWRkIHdsYW4td2RzMyBpbnRvIGxhbgpU
dWUgQXByIDI4IDA3OjQzOjI5IDIwMjAgZGFlbW9uLm5vdGljZSBwcm9jZDogL2V0Yy9pbml0LmQv
bmV0d29yazogYnJjdGw6IGJyaWRnZSBici1sYW46IEludmFsaWQgYXJndW1lbnQKVHVlIEFwciAy
OCAwNzo0MzoyOSAyMDIwIHVzZXIud2FybiBsdWE6IHNraXAgbGluZSB3aXRob3V0ICc9JyBEZWZh
dWx0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLndhcm4gbHVhOiBza2lwIGxpbmUgd2l0
aG91dCAnPScgClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogc2VhcmNo
X2Rldl9hbmRfcHJvZmlsZV9sMTogTVQ3NjE1LjE9L2V0Yy93aXJlbGVzcy9tZWRpYXRlay9tdDc2
MTVlLjEuZGF0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogc2VhcmNo
X2Rldl9hbmRfcHJvZmlsZV9sMTogTVQ3NjE1LjI9L2V0Yy93aXJlbGVzcy9tZWRpYXRlay9tdDc2
MTVlLjIuZGF0ClR1ZSBBcHIgMjggMDc6NDM6MjkgMjAyMCB1c2VyLmRlYnVnIGx1YTogc2VhcmNo
X2Rldl9hbmRfcHJvZmlsZV9sMTogTVQ3NjIyLjE9L2V0Yy93aXJlbGVzcy9tZWRpYXRlay9tdDc2
MjIuMS5kYXQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIud2FybiBsdWE6IHNraXAgY29t
bWVudCBsaW5lICNUaGUgd29yZCBvZiAiRGVmYXVsdCIgbXVzdCBub3QgYmUgcmVtb3ZlZApUdWUg
QXByIDI4IDA3OjQzOjI5IDIwMjAgdXNlci53YXJuIGx1YTogc2tpcCBsaW5lIHdpdGhvdXQgJz0n
IERlZmF1bHQKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIud2FybiBsdWE6IHNraXAgbGlu
ZSB3aXRob3V0ICc9JyAKVHVlIEFwciAyOCAwNzo0MzoyOSAyMDIwIHVzZXIud2FybiBsdWE6IHNr
aXAgbGluZSB3aXRob3V0ICc9JyAKVHVlIEFwciAyOCAwNzo0MzozMCAyMDIwIHVzZXIubm90aWNl
IE1vZGVtTWFuYWdlcjogaG90cGx1ZzogZXJyb3I6IG1vZGVtIG5vdCBkZXRlY3RlZCBhdCBzeXNm
cyBwYXRoClR1ZSBBcHIgMjggMDc6NDM6MzMgMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6
IGhvdHBsdWc6IGVycm9yOiBtb2RlbSBub3QgZGV0ZWN0ZWQgYXQgc3lzZnMgcGF0aApUdWUgQXBy
IDI4IDA3OjQzOjM1IDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJv
cjogbW9kZW0gbm90IGRldGVjdGVkIGF0IHN5c2ZzIHBhdGgKVHVlIEFwciAyOCAwNzo0MzozOCAy
MDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1ZzogZXJyb3I6IG1vZGVtIG5vdCBk
ZXRlY3RlZCBhdCBzeXNmcyBwYXRoClR1ZSBBcHIgMjggMDc6NDM6NDAgMjAyMCB1c2VyLm5vdGlj
ZSBNb2RlbU1hbmFnZXI6IGhvdHBsdWc6IGVycm9yOiBtb2RlbSBub3QgZGV0ZWN0ZWQgYXQgc3lz
ZnMgcGF0aApUdWUgQXByIDI4IDA3OjQzOjQzIDIwMjAgdXNlci5ub3RpY2UgTW9kZW1NYW5hZ2Vy
OiBob3RwbHVnOiBlcnJvcjogbW9kZW0gbm90IGRldGVjdGVkIGF0IHN5c2ZzIHBhdGgKVHVlIEFw
ciAyOCAwNzo0Mzo0NSAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1ZzogZXJy
b3I6IG1vZGVtIG5vdCBkZXRlY3RlZCBhdCBzeXNmcyBwYXRoClR1ZSBBcHIgMjggMDc6NDM6NDgg
MjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6IGhvdHBsdWc6IGVycm9yOiBtb2RlbSBub3Qg
ZGV0ZWN0ZWQgYXQgc3lzZnMgcGF0aApUdWUgQXByIDI4IDA3OjQzOjUwIDIwMjAgdXNlci5ub3Rp
Y2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogdGltZWQgb3V0IHdhaXRpbmcgZm9yIHRo
ZSBtb2RlbSB0byBnZXQgZXhwb3J0ZWQgYXQgL3N5cy9kZXZpY2VzL3BsYXRmb3JtLzFhMGMwMDAw
LnVzYi91c2IyLzItMQpUdWUgQXByIDI4IDA3OjQzOjUzIDIwMjAgdXNlci5ub3RpY2UgTW9kZW1N
YW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogbW9kZW0gbm90IGRldGVjdGVkIGF0IHN5c2ZzIHBhdGgK
VHVlIEFwciAyOCAwNzo0Mzo1OCAyMDIwIHVzZXIubm90aWNlIE1vZGVtTWFuYWdlcjogaG90cGx1
ZzogZXJyb3I6IG1vZGVtIG5vdCBkZXRlY3RlZCBhdCBzeXNmcyBwYXRoClR1ZSBBcHIgMjggMDc6
NDQ6MDMgMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6IGhvdHBsdWc6IGVycm9yOiBtb2Rl
bSBub3QgZGV0ZWN0ZWQgYXQgc3lzZnMgcGF0aApUdWUgQXByIDI4IDA3OjQ0OjA4IDIwMjAgdXNl
ci5ub3RpY2UgTW9kZW1NYW5hZ2VyOiBob3RwbHVnOiBlcnJvcjogbW9kZW0gbm90IGRldGVjdGVk
IGF0IHN5c2ZzIHBhdGgKVHVlIEFwciAyOCAwNzo0NDoxMyAyMDIwIHVzZXIubm90aWNlIE1vZGVt
TWFuYWdlcjogaG90cGx1ZzogZXJyb3I6IG1vZGVtIG5vdCBkZXRlY3RlZCBhdCBzeXNmcyBwYXRo
ClR1ZSBBcHIgMjggMDc6NDQ6MTggMjAyMCB1c2VyLm5vdGljZSBNb2RlbU1hbmFnZXI6IGhvdHBs
dWc6IGVycm9yOiB0aW1lZCBvdXQgd2FpdGluZyBmb3IgdGhlIG1vZGVtIHRvIGdldCBleHBvcnRl
ZCBhdCAvc3lzL2RldmljZXMvcGxhdGZvcm0vMWEwYzAwMDAudXNiL3VzYjIvMi0xClR1ZSBBcHIg
MjggMDc6NDQ6MjYgMjAyMCBhdXRocHJpdi5pbmZvIGRyb3BiZWFyWzg0MTldOiBDaGlsZCBjb25u
ZWN0aW9uIGZyb20gMTkyLjE2OC4xLjExMTo2NTA4MApUdWUgQXByIDI4IDA3OjQ0OjMyIDIwMjAg
YXV0aHByaXYubm90aWNlIGRyb3BiZWFyWzg0MTldOiBQYXNzd29yZCBhdXRoIHN1Y2NlZWRlZCBm
b3IgJ3Jvb3QnIGZyb20gMTkyLjE2OC4xLjExMTo2NTA4MAo=
--00000000000082cf8c05a4f429d2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--00000000000082cf8c05a4f429d2--

