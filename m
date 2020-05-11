Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76D71CD1D2
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 08:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mBAk1Eif6Owf2pG5xPoTHtWxfDTyvZ7u5xqCVzQoXVw=; b=elQAirKVEp3b7xadA2EEephJo
	CybWppDM9T86IOIlOKbaS7aGW8JaMN6mmZ577pxF4DoXfjVDXtEKzTubkcN00NtedNzpyq7YPf0GQ
	SDipHjzaL+D8/iUcylHkbSVD9mumkQPSYrjRfo0VW9d+Jx2sP76xuJwTxhUEHE2l1gNcK3G9mBuXj
	e2rpWUcRirr+fKllKerfMBa6tFe1rXOlvZqaYASfP7el67yutFOZNQf4nyLQ4spjiYiyvhDGyM/k6
	NiJsWEPbBQDHE1ftg7AIYpFJXryZcxZL9qeg4foGTI4lanqL+Dzeb8B9K1ewHiqJ8TcnY8fzVGowI
	ViLRnZNOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY1vN-00071w-F8; Mon, 11 May 2020 06:28:25 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1vF-000715-CN
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 06:28:20 +0000
Received: by mail-ed1-x533.google.com with SMTP id f12so6915940edn.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 10 May 2020 23:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jM06ZUu/huUQvOnsrZPXuAEgIxm8XMVBz8uAC4rRQHQ=;
 b=O2eru67zz13BkIx341/xmWxzSaFAcn6FIIdsaPLJQyOz9vaM1pbus+5q7X9KBtfopz
 7peOA3urLhATAqejk4KtWbjmAx/5O9K5ZnR/W28vSXgmyn+J4rFn3QneC95pBIznAmqg
 sX0yBblpc7rilHIj6KYZ+/4eaDnlc9fOdllvNu95m+3Ol9x7pXN+OJIqUS49X6C939Xk
 5tGrfDHD5muxTFVfBMkvJr/1olChi9S4EBp1HkNjL5ZscdclV3QAXoTGgEe2vQmuC6du
 rjmmsSlKwK25KTNlZ/94jmPGnij012vOUxoOzf3XAlq+DC+dVFHeC0pM0xHacpS2Ed/v
 dSWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jM06ZUu/huUQvOnsrZPXuAEgIxm8XMVBz8uAC4rRQHQ=;
 b=Ek8nqlO2jHDQJF63mSAbkfvNdUw3YkyLZKcb0QjV5IUbaou9YU6YAGJO38kIInYiu3
 1bPG+nLG0PCwDRlDI4AzpADURUJeGKcWOHPg1LA4EfBJ0CKKdXdK785LvBMvC0sOkXn2
 SU/gnqozjk8iVqiCtf42mAug/BlOH9A7hrfoF93n7r401lNvg+d/7k1MTWf+a/iHZD0+
 hwFnU/AKiD+fWNu8zav6a04YAg1Kh4JjW4XLlMUm/9K/JWA8BQFbjK5mREwZfw7meOKq
 GZ6/3rqWxBYWHMxP688sC4fyFT2wGtbpfAxeBd+UklgA596OxxwjqhBODnn3+qCBozsP
 dstw==
X-Gm-Message-State: AOAM531oUDhDeGp+Hfz9G2FtmiblU30hsB3itRfUTiPpWkpxDPh0Yo3n
 6Jqe5GGL4pQBERMGOvLnJh67A76pRByxaCk6hJA=
X-Google-Smtp-Source: ABdhPJytYy9bal7Il43scTk4lIKMAhmaRtKsz3kkkUYvQxPuCeR4EFy1b+DiBFx72veYKOZms+2aLqIcgiQEK1ecgDI=
X-Received: by 2002:a05:6402:1d81:: with SMTP id
 dk1mr493673edb.143.1589178493674; 
 Sun, 10 May 2020 23:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
In-Reply-To: <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Mon, 11 May 2020 15:28:02 +0900
Message-ID: <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_232817_456426_BAE081DD 
X-CRM114-Status: GOOD (  28.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============4981187496841558990=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4981187496841558990==
Content-Type: multipart/alternative; boundary="00000000000099a8bb05a559730a"

--00000000000099a8bb05a559730a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander and people,

I found one :
https://github.com/lkundrak/openwrt-network-manager

I wonder if this is righty and worthy to try.
I am now trying porting it anyway.

Thank you in advance.
Jeonghum

2020=EB=85=84 5=EC=9B=94 11=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 2:56, J=
eonghum Joh <oosaprogrammer@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1=
:

> Hello Alexander and people who might concern,
>
> >>> In short, I'd like to know where I can find NetworkManager for
> openwrt. <<<
>
>
> I checked the vid:pid. It is "1519:0443". I found this via lsusb -v:
>
> SIERRA WIRELESS HL7528
> root@LEDE:~# lsusb -v
> Bus 001 Device 002: ID 1519:0443   <<<<<<<<<
> Bus 001 Device 001: ID 1d6b:0002
> Bus 002 Device 001: ID 1d6b:0003
>
> But I changed modem to new one because you said Sierra HL7528 would only
> work with ppp method and it's not supposed to be.
> Now I am testing with QUECTEL EC25-E MINIPCIE / EC25EFA MINIPCIE.
>
> It's vid:pid is shown:
>
> root@LEDE:~# lsusb -v
> Bus 001 Device 002: ID 2c7c:0125   <<<<<<<<<
> Bus 001 Device 001: ID 1d6b:0002
> Bus 002 Device 001: ID 1d6b:0003
>
> And now with this modem most prints look good:
>
> root@LEDE:~# mmcli -m 0
>   --------------------------------
>   General    |            dbus path: /org/freedesktop/ModemManager1/Modem=
/0
>                 |            device id:
> 97ffc2eeb6d3ad975d9089850aa3b9b494529919
>   --------------------------------
>   Hardware |         manufacturer: Quectel
>                |                model: EC25
>                |    firmware revision: EC25EFAR04A02M4G_SKT
>                |            supported: gsm-umts, lte
>                |              current: gsm-umts, lte
>                |         equipment id: 356673040475612
>   --------------------------------
>   System    |               device:
> /sys/devices/platform/1a0c0000.usb/usb1/1-2
>                 |              drivers: option
>                 |               plugin: Quectel
>                 |         primary port: ttyUSB2
>                 |                ports: ttyUSB0 (qcdm), ttyUSB2 (at),
> ttyUSB3 (at)
>   --------------------------------
>   Numbers  |                  own: 01224316205
>   --------------------------------
>   Status      |       unlock retries: sim-pin (3), sim-puk (10)
>                 |                state: enabled   <<<<<<<<<<<<<<<<<<<<<<<=
<
>                 |          power state: on
>                 |       signal quality: 0% (cached)
>   --------------------------------
>   Modes     |            supported: allowed: 2g, 3g, 4g; preferred: none
>                 |              current: allowed: 2g, 3g, 4g; preferred:
> none
>   --------------------------------
>   IP            |            supported: ipv4, ipv6, ipv4v6
>   --------------------------------
>   3GPP       |                 imei: 356673040475612
>                 |         registration: idle    <<<<<<<<<<<<<<<<<<<<<<<<
>   --------------------------------
>   3GPP EPS  | ue mode of operation: csps-1
>   --------------------------------
>   SIM         |            dbus path: /org/freedesktop/ModemManager1/SIM/=
0
>
> But some are not sure:
>
> root@LEDE:~# mmcli -b 0
> error: couldn't find bearer at '/org/freedesktop/ModemManager1/Bearer/0':
> 'not found in any modem'
>
> root@LEDE:~# mmcli -m 0 --list-bearers
> error: no actions specified
>
> I only enabled QMI via make menuconfig of openwrt.
> I didn't enable MBIM via make menuconfig of openwrt.
> I didn't look at the make kernel_menuconfig of openwrt.
>
> The state of Status is "enabled" and the registration of 3GPP is "idle".
> Does this mean the modem is connected to the bearer/operator network and
> the data usage is enabled?
>
> I found a documentation:
>
> https://docs.ubuntu.com/core/en/stacks/network/network-manager/docs/confi=
gure-cellular-connections
>
>
> This document shows using of "nmcli" to setup network interface like wwan=
.
> Do I need this also? I guess though.
> Do I need NetworkManager? If so, where can I get it? I searched from the
> place ( https://github.com/openwrt/packages.git ) where ModemManager for
> openwrt exist, but NetworkManager is not found there.
>
>
> And from the prints above, there are errors for "mmcli -b 0" and "mmcli -=
m
> 0 --list-bearers" I don't guess these errors are important but are they?
>
> F.Y.I. Let me show you entry for /etc/config/network
>
> config interface 'broadband'
>         option device '/sys/devices/platform/1a0c0000.usb/usb1/1-2'
>         option proto 'modemmanager'
>         option apn 'lte-internet.sktelecom.com'
>
> With this prints can I judge that the ModemManager is ported and working
> well?
>
> Thank you very much in advance.
> Jeonghum
>
> 2020=EB=85=84 5=EC=9B=94 8=EC=9D=BC (=EA=B8=88) =EC=98=A4=ED=9B=84 9:47, =
Aleksander Morgado <aleksander@aleksander.es>=EB=8B=98=EC=9D=B4
> =EC=9E=91=EC=84=B1:
>
>> Hey,
>>
>> > We have Sierra modem. HL7528
>> > So I tested my linux box with this modem and I received first prints
>> below:
>> >
>> > root@LEDE:/lib/udev/rules.d# mmcli -L
>> >     /org/freedesktop/ModemManager1/Modem/0 [Sierra Wireless] HL7528
>> > root@LEDE:/lib/udev/rules.d# mmcli -m 0
>> >   -----------------------------
>> >   General  |         dbus path: /org/freedesktop/ModemManager1/Modem/0
>> >            |         device id: a643b0bb58dac30a2cd4ff6b486e826b483d29=
8b
>> >   -----------------------------
>> >   Hardware |      manufacturer: Sierra Wireless
>> >            |             model: HL7528
>> >            | firmware revision:
>> THL7528_778_tb3_utp426.0.0.152000.202004221951.x7160_1
>> >            |         supported: gsm-umts, lte
>> >            |           current: gsm-umts, lte
>> >            |      equipment id: 356170062941712
>> >   -----------------------------
>> >   System   |            device:
>> /sys/devices/platform/1a0c0000.usb/usb1/1-2
>> >            |           drivers: cdc_acm, cdc_ncm
>> >            |            plugin: Generic
>> >            |      primary port: ttyACM0
>> >            |             ports: wwan3 (net), ttyACM0 (at), wwan0 (net)=
,
>> wwan1 (net),
>> >            |                    wwan2 (net), ttyACM2 (at)
>> >   -----------------------------
>> >   Status   |             state: failed
>> >            |     failed reason: sim-missing
>> >            |       power state: on
>> >            |    signal quality: 0% (cached)
>> >   -----------------------------
>> >   Modes    |         supported: allowed: 2g, 3g, 4g; preferred: none
>> >            |           current: allowed: any; preferred: none
>> >
>> > I did this test to verify if my applying ModemManager have any issue.
>> With this print result, can I judge that ModemManager is ported well?
>> >
>>
>> Is this device relatively new? What is the "vid:pid" of the device?
>> Could you get a full "lsusb -v" output of the device?
>>
>> I see the modem is exposing multiple AT and net ports, but
>> unfortunately ModemManager doesn't know how to handle those net ports,
>> so if you get that modem connected it will be using PPP over a TTY,
>> which is not optimal. The connection and management will work, but it
>> won't be as good as it can be,
>>
>> > I from now on will test with this modem. I think I need rule file for
>> this modem and I found one:
>> > /lib/udev/rules.d/77-mm-sierra.rules
>> >
>> > The content of this rule file:
>> >
>> > # do not edit this file, it will be overwritten on update
>> > ACTION!=3D"add|change|move|bind", GOTO=3D"mm_sierra_end"
>> > SUBSYSTEMS=3D=3D"usb", ATTRS{idVendor}=3D=3D"1199", GOTO=3D"mm_sierra"
>> > GOTO=3D"mm_sierra_end"
>> >
>> > LABEL=3D"mm_sierra"
>> > SUBSYSTEMS=3D=3D"usb", ATTRS{bInterfaceNumber}=3D=3D"?*",
>> ENV{.MM_USBIFNUM}=3D"$attr{bInterfaceNumber}"
>> >
>> > # Netgear AC341U: enable connection status polling explicitly
>> > ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9057",
>> ENV{ID_MM_QMI_CONNECTION_STATUS_POLLING_ENABLE}=3D"1"
>> >
>> > # MC74XX: Add port hints
>> > #  if 03: primary port
>> > #  if 02: raw NMEA port
>> > #  if 00: diag/qcdm port
>> > ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9071",
>> ENV{.MM_USBIFNUM}=3D=3D"03", ENV{ID_MM_PORT_TYPE_AT_PRIMARY}=3D"1"
>> > ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9071",
>> ENV{.MM_USBIFNUM}=3D=3D"02", ENV{ID_MM_PORT_TYPE_GPS}=3D"1"
>> > ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9071",
>> ENV{.MM_USBIFNUM}=3D=3D"00", ENV{ID_MM_PORT_TYPE_QCDM}=3D"1"
>> >
>> > # EM7565: Add port hints
>> > #  if 03: primary port
>> > #  if 02: raw NMEA port
>> > #  if 00: diag/qcdm port
>> > ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9091",
>> ENV{.MM_USBIFNUM}=3D=3D"03", ENV{ID_MM_PORT_TYPE_AT_PRIMARY}=3D"1"
>> > ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9091",
>> ENV{.MM_USBIFNUM}=3D=3D"02", ENV{ID_MM_PORT_TYPE_GPS}=3D"1"
>> > ATTRS{idVendor}=3D=3D"1199", ATTRS{idProduct}=3D=3D"9091",
>> ENV{.MM_USBIFNUM}=3D=3D"00", ENV{ID_MM_PORT_TYPE_QCDM}=3D"1"
>> >
>> > LABEL=3D"mm_sierra_end"
>> >
>> >
>> > Is this rule file fit to my modem?
>> > Or do I need new rule file for this modem?
>> >
>>
>> The rule files are "helpers" really, there is no need for the rule
>> files usually. In your case, I believe the modem isn't using any of
>> the rule files that ModemManager provides.
>>
>> > And do I need special settings in /etc/config/network ? I know basic
>> settings for this:
>> > config interface 'broadband'
>> >         option device '/sys/devices/platform/1a0c0000.usb/usb1/1-2'
>> >         option proto 'modemmanager'
>> >         option apn 'whatever corect apn here'
>> >         option username ''
>> >         option password ''
>> >         option pincode ''
>> >         option lowpower '1'
>> >
>>
>> As in the previous email, you probably don't need username, password,
>> and lowpower. And you only need pincode if your SIM card is
>> PIN-locked, which may not be.
>>
>> Cheers!
>>
>> --
>> Aleksander
>> https://aleksander.es
>>
>

--00000000000099a8bb05a559730a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alexander and people,<div><br></div><div>I found one=
 :</div><div><a href=3D"https://github.com/lkundrak/openwrt-network-manager=
">https://github.com/lkundrak/openwrt-network-manager</a>=C2=A0</div><div><=
br></div><div>I wonder if this is righty and worthy to try.</div><div>I am =
now trying porting it anyway.</div><div><br></div><div>Thank you in advance=
.</div><div>Jeonghum=C2=A0<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 5=EC=9B=94 11=EC=9D=BC (=
=EC=9B=94) =EC=98=A4=ED=9B=84 2:56, Jeonghum Joh &lt;<a href=3D"mailto:oosa=
programmer@gmail.com">oosaprogrammer@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =
=EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Hello Alexander and people who might concern,<div><br>=
</div><div>&gt;&gt;&gt; In short, I&#39;d like to know where I can find Net=
workManager for openwrt. &lt;&lt;&lt;</div><div><br></div><div><br></div><d=
iv>I checked the vid:pid. It is &quot;1519:0443&quot;. I found this via lsu=
sb -v:</div><div><br></div><div>SIERRA WIRELESS HL7528<br>root@LEDE:~# lsus=
b -v<br>Bus 001 Device 002: ID 1519:0443 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;<br>Bus 001 Device 001: ID 1d6b:0002<br>Bus 002 Device 001: ID 1d6=
b:0003</div><div><br></div><div>But I changed modem to new one because you =
said Sierra HL7528 would only work with ppp method and it&#39;s not suppose=
d to be.</div><div>Now I am testing=C2=A0with=C2=A0QUECTEL EC25-E MINIPCIE =
/ EC25EFA MINIPCIE.</div><div><br></div><div>It&#39;s vid:pid is shown:</di=
v><div><br></div><div>root@LEDE:~# lsusb -v<br>Bus 001 Device 002: ID 2c7c:=
0125 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;<br>Bus 001 Device 001: ID =
1d6b:0002<br>Bus 002 Device 001: ID 1d6b:0003<br></div><div><br></div><div>=
And now with this modem most prints look good:</div><div><br></div><div>roo=
t@LEDE:~# mmcli -m 0<br>=C2=A0 --------------------------------<br>=C2=A0 G=
eneral =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbus path: /=
org/freedesktop/ModemManager1/Modem/0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0device id:=
 97ffc2eeb6d3ad975d9089850aa3b9b494529919<br>=C2=A0 -----------------------=
---------<br>=C2=A0 Hardware | =C2=A0 =C2=A0 =C2=A0 =C2=A0 manufacturer: Qu=
ectel<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0model: EC25<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0firmware revisi=
on: EC25EFAR04A02M4G_SKT<span style=3D"color:rgb(80,0,80)"><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0supported: gsm-umts, lte<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0curr=
ent: gsm-umts, lte<br></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 equipment id: 356673040475612<br>=
=C2=A0 --------------------------------<br>=C2=A0 System =C2=A0 =C2=A0| =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 device: /sys/devices/platform=
/1a0c0000.usb/usb1/1-2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drivers: option<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 plugin: Quectel<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 primary po=
rt: ttyUSB2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ports: ttyUSB0 (qcdm=
), ttyUSB2 (at), ttyUSB3 (at)<br>=C2=A0 --------------------------------<br=
>=C2=A0 Numbers =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0own: 01224316205<br>=C2=A0 --------------------------------<br=
>=C2=A0 Status =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 unlock retries: s=
im-pin (3), sim-puk (10)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0state: =
enabled=C2=A0 =C2=A0&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;<span style=3D"color:rgb(80,0,80)"=
><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0power state: on<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 signal quality: 0% (cached)=
<br></span>=C2=A0 --------------------------------<span style=3D"color:rgb(=
80,0,80)"><br>=C2=A0 Modes =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0supported: allowed: 2g, 3g, 4g; preferred: none<br></span>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0current: allowed: 2g, 3g, 4g; preferred: none<span =
style=3D"color:rgb(80,0,80)"><br>=C2=A0 --------------------------------<br=
>=C2=A0 IP =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0supported: ipv4, ipv6, ipv4v6<br>=C2=A0 ---------------=
-----------------<br></span>=C2=A0 3GPP =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 imei: 356673040475612<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 registration: idle =C2=A0 =C2=A0&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;<br>=C2=A0 ---=
-----------------------------<br>=C2=A0 3GPP EPS =C2=A0| ue mode of operati=
on: csps-1<span style=3D"color:rgb(80,0,80)"><br>=C2=A0 -------------------=
-------------<br>=C2=A0 SIM =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0dbus path: /org/freedesktop/ModemManager1/SIM/0<br>=
</span></div><div><br><div>But some are not sure:</div><div><br></div><div>=
root@LEDE:~# mmcli -b 0<br>error: couldn&#39;t find bearer at &#39;/org/fre=
edesktop/ModemManager1/Bearer/0&#39;: &#39;not found in any modem&#39;<br><=
br>root@LEDE:~# mmcli -m 0 --list-bearers<br>error: no actions specified<br=
></div><div><br></div></div><div>I only enabled QMI via make menuconfig of =
openwrt.</div><div>I didn&#39;t enable MBIM via make menuconfig of openwrt.=
</div><div>I didn&#39;t look at the make kernel_menuconfig=C2=A0of openwrt.=
</div><div><br></div><div>The state of Status is &quot;enabled&quot; and th=
e registration of 3GPP is &quot;idle&quot;. Does this mean the modem is con=
nected to the bearer/operator network and the data usage is enabled?<br></d=
iv><div><br></div><div>I found a documentation:</div><div><a href=3D"https:=
//docs.ubuntu.com/core/en/stacks/network/network-manager/docs/configure-cel=
lular-connections" target=3D"_blank">https://docs.ubuntu.com/core/en/stacks=
/network/network-manager/docs/configure-cellular-connections</a>=C2=A0</div=
><div><br></div><div>This document shows using of &quot;nmcli&quot; to setu=
p network interface like wwan.</div><div>Do I need this also? I guess thoug=
h.</div><div>Do I need NetworkManager? If so, where can I get it? I searche=
d from the place (=C2=A0<a href=3D"https://github.com/openwrt/packages.git"=
 target=3D"_blank">https://github.com/openwrt/packages.git</a>=C2=A0) where=
 ModemManager for openwrt exist, but NetworkManager is not found there.</di=
v><div><br></div><div><br></div><div>And from the prints above, there are e=
rrors for &quot;mmcli -b 0&quot; and &quot;mmcli -m 0 --list-bearers&quot; =
I don&#39;t guess these errors are important but are they?</div><div><br></=
div><div><div>F.Y.I. Let me show you entry for /etc/config/network</div><di=
v><br></div><div>config interface &#39;broadband&#39;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 option device &#39;/sys/devices/platform/1a0c0000.usb/usb1/1-2&#=
39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 option proto &#39;modemmanager&#39;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 option apn &#39;<a href=3D"http://lte-internet.=
sktelecom.com" target=3D"_blank">lte-internet.sktelecom.com</a>&#39;<br></d=
iv><div></div></div><div><br></div><div>With this prints can I judge that t=
he ModemManager is ported and working well?</div><div><br></div><div>Thank =
you very much in advance.</div><div>Jeonghum</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 5=EC=9B=94 =
8=EC=9D=BC (=EA=B8=88) =EC=98=A4=ED=9B=84 9:47, Aleksander Morgado &lt;<a h=
ref=3D"mailto:aleksander@aleksander.es" target=3D"_blank">aleksander@aleksa=
nder.es</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hey,<br>
<br>
&gt; We have Sierra modem. HL7528<br>
&gt; So I tested my linux box with this modem and I received first prints b=
elow:<br>
&gt;<br>
&gt; root@LEDE:/lib/udev/rules.d# mmcli -L<br>
&gt;=C2=A0 =C2=A0 =C2=A0/org/freedesktop/ModemManager1/Modem/0 [Sierra Wire=
less] HL7528<br>
&gt; root@LEDE:/lib/udev/rules.d# mmcli -m 0<br>
&gt;=C2=A0 =C2=A0-----------------------------<br>
&gt;=C2=A0 =C2=A0General=C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbus path=
: /org/freedesktop/ModemManager1/Modem/0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0device id: a643b0bb58dac30a2cd4ff6b486e826b483d298b<br>
&gt;=C2=A0 =C2=A0-----------------------------<br>
&gt;=C2=A0 =C2=A0Hardware |=C2=A0 =C2=A0 =C2=A0 manufacturer: Sierra Wirele=
ss<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0model: HL7528<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | firmware revision: THL7528_=
778_tb3_utp426.0.0.152000.202004221951.x7160_1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0supported: gsm-umts, lte<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0current: gsm-umts, lte<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 equipme=
nt id: 356170062941712<br>
&gt;=C2=A0 =C2=A0-----------------------------<br>
&gt;=C2=A0 =C2=A0System=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 device: /sys/devices/platform/1a0c0000.usb/usb1/1-2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0drivers: cdc_acm, cdc_ncm<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 plugin: Generic<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 primary=
 port: ttyACM0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0ports: wwan3 (net), ttyACM0 (at), wwan0 (net), wwan1 (n=
et),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wwan2 (net), ttyACM2 (at)<br>
&gt;=C2=A0 =C2=A0-----------------------------<br>
&gt;=C2=A0 =C2=A0Status=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0state: failed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0failed r=
eason: sim-missing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0p=
ower state: on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 signal quality=
: 0% (cached)<br>
&gt;=C2=A0 =C2=A0-----------------------------<br>
&gt;=C2=A0 =C2=A0Modes=C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0supp=
orted: allowed: 2g, 3g, 4g; preferred: none<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0current: allowed: any; preferred: none<br>
&gt;<br>
&gt; I did this test to verify if my applying ModemManager have any issue. =
With this print result, can I judge that ModemManager is ported well?<br>
&gt;<br>
<br>
Is this device relatively new? What is the &quot;vid:pid&quot; of the devic=
e?<br>
Could you get a full &quot;lsusb -v&quot; output of the device?<br>
<br>
I see the modem is exposing multiple AT and net ports, but<br>
unfortunately ModemManager doesn&#39;t know how to handle those net ports,<=
br>
so if you get that modem connected it will be using PPP over a TTY,<br>
which is not optimal. The connection and management will work, but it<br>
won&#39;t be as good as it can be,<br>
<br>
&gt; I from now on will test with this modem. I think I need rule file for =
this modem and I found one:<br>
&gt; /lib/udev/rules.d/77-mm-sierra.rules<br>
&gt;<br>
&gt; The content of this rule file:<br>
&gt;<br>
&gt; # do not edit this file, it will be overwritten on update<br>
&gt; ACTION!=3D&quot;add|change|move|bind&quot;, GOTO=3D&quot;mm_sierra_end=
&quot;<br>
&gt; SUBSYSTEMS=3D=3D&quot;usb&quot;, ATTRS{idVendor}=3D=3D&quot;1199&quot;=
, GOTO=3D&quot;mm_sierra&quot;<br>
&gt; GOTO=3D&quot;mm_sierra_end&quot;<br>
&gt;<br>
&gt; LABEL=3D&quot;mm_sierra&quot;<br>
&gt; SUBSYSTEMS=3D=3D&quot;usb&quot;, ATTRS{bInterfaceNumber}=3D=3D&quot;?*=
&quot;, ENV{.MM_USBIFNUM}=3D&quot;$attr{bInterfaceNumber}&quot;<br>
&gt;<br>
&gt; # Netgear AC341U: enable connection status polling explicitly<br>
&gt; ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;905=
7&quot;, ENV{ID_MM_QMI_CONNECTION_STATUS_POLLING_ENABLE}=3D&quot;1&quot;<br=
>
&gt;<br>
&gt; # MC74XX: Add port hints<br>
&gt; #=C2=A0 if 03: primary port<br>
&gt; #=C2=A0 if 02: raw NMEA port<br>
&gt; #=C2=A0 if 00: diag/qcdm port<br>
&gt; ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;907=
1&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;03&quot;, ENV{ID_MM_PORT_TYPE_AT_PRIM=
ARY}=3D&quot;1&quot;<br>
&gt; ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;907=
1&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;02&quot;, ENV{ID_MM_PORT_TYPE_GPS}=3D=
&quot;1&quot;<br>
&gt; ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;907=
1&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;00&quot;, ENV{ID_MM_PORT_TYPE_QCDM}=
=3D&quot;1&quot;<br>
&gt;<br>
&gt; # EM7565: Add port hints<br>
&gt; #=C2=A0 if 03: primary port<br>
&gt; #=C2=A0 if 02: raw NMEA port<br>
&gt; #=C2=A0 if 00: diag/qcdm port<br>
&gt; ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;909=
1&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;03&quot;, ENV{ID_MM_PORT_TYPE_AT_PRIM=
ARY}=3D&quot;1&quot;<br>
&gt; ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;909=
1&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;02&quot;, ENV{ID_MM_PORT_TYPE_GPS}=3D=
&quot;1&quot;<br>
&gt; ATTRS{idVendor}=3D=3D&quot;1199&quot;, ATTRS{idProduct}=3D=3D&quot;909=
1&quot;, ENV{.MM_USBIFNUM}=3D=3D&quot;00&quot;, ENV{ID_MM_PORT_TYPE_QCDM}=
=3D&quot;1&quot;<br>
&gt;<br>
&gt; LABEL=3D&quot;mm_sierra_end&quot;<br>
&gt;<br>
&gt;<br>
&gt; Is this rule file fit to my modem?<br>
&gt; Or do I need new rule file for this modem?<br>
&gt;<br>
<br>
The rule files are &quot;helpers&quot; really, there is no need for the rul=
e<br>
files usually. In your case, I believe the modem isn&#39;t using any of<br>
the rule files that ModemManager provides.<br>
<br>
&gt; And do I need special settings in /etc/config/network ? I know basic s=
ettings for this:<br>
&gt; config interface &#39;broadband&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option device &#39;/sys/devices/platf=
orm/1a0c0000.usb/usb1/1-2&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option proto &#39;modemmanager&#39;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option apn &#39;whatever corect apn h=
ere&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option username &#39;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option password &#39;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option pincode &#39;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0option lowpower &#39;1&#39;<br>
&gt;<br>
<br>
As in the previous email, you probably don&#39;t need username, password,<b=
r>
and lowpower. And you only need pincode if your SIM card is<br>
PIN-locked, which may not be.<br>
<br>
Cheers!<br>
<br>
-- <br>
Aleksander<br>
<a href=3D"https://aleksander.es" rel=3D"noreferrer" target=3D"_blank">http=
s://aleksander.es</a><br>
</blockquote></div>
</blockquote></div>

--00000000000099a8bb05a559730a--


--===============4981187496841558990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4981187496841558990==--

