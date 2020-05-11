Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2411CD2A3
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 09:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQSxFvvPX1Qqn5KMbRYcokTkbLADGpzPp4K18YUIGS8=; b=Fsy/zH92fvOtMw
	twoFNojp/HI9n2NfpdlgqrWRrGtYCYa/jmzI6rA2kylddu76BITJhMytXUE8Xlv3yURPLoj3evdxH
	HQoW2pkGdyy7B54MeCjW4+lN7BaNVZztgDRwSxNyHyOSyfkdafSqUaOpZJuTTu50ahokb+ZNugaWb
	se5+JvYY55LEY2GoiPhue4i2icCnfuComj8tMSpkRKTXicfX7THD/qe7i3PJW242G1cXCkOp+FLnP
	EY356kcuUv7ZCiQ5JxYI+Kh2DlaeaeG74Be4ekG0vsd46jCW52P7ISStYoGnX72NFisSfHulv1Qel
	XaWH0uM8ikFMfXDrPdnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY2ws-0007TD-Np; Mon, 11 May 2020 07:34:02 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2wl-0007Sg-ER
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 07:33:57 +0000
Received: by mail-io1-xd2b.google.com with SMTP id i19so8489016ioh.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 May 2020 00:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yCQ3iqgSFNudEwlDS4X4fsv4wL8hX54J16Qk/I4DiM4=;
 b=kGKsvRdDWd7iB5yalGDF8++TMsF3qf8oNeaz2yFB61snujEy4AGffmK1Z2ql4Unmp7
 XsfEYHZ1ku/D+z7r3e+uD9xn4fq4oXcxTqL7X5eY1X3DLSmPa8/G9kYutG4b4lijiJek
 cExk5DmDe9opWEm0eCLJoC1SYTeIguz3Bys1Iwq6I7RrqigRycIeJqR4wAJTu44ugf+i
 B5eOd1xzzWlTwkOMgZckphaYRP+8q3UcRqwBeEbSQg4wIYCnv2rv9FjIiLgSbiGO9wa3
 jbKwUm0s8SkRrJrkrxXzJ6aZxWAav8TEo5rJKjTwcXrZnZ9+eavbJmVvUvwOTyIa8Xmi
 dXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yCQ3iqgSFNudEwlDS4X4fsv4wL8hX54J16Qk/I4DiM4=;
 b=aG5JAcBUGGbWaa8xNAQUZkW2C5bvOSVDxN4/lp5aPFwnOqe7Rxn88wAkD8O2ynz2rV
 AT+jcy6SOC5z4drZQNjIceP3iBVSTldZwPY0HOkebNYdGajCJEZFCs5W/WHyzy/X5WlH
 Xe0RgTE7J+yxeZyx2m40j3RTSjOlWT7TzTM+Qup95lOJ1fLTP0+vYf+yYhqwKRBs0wpX
 Gua8tpMWAMEMk6qPq+o+95IPl2AxveRSzYSPMsAH2g4048LWAjTb7vbRpxvDvc4NlnHw
 ayduTve7jyHgxR0fUqlV4/anPWsD5j+l5SIRNfSxzxhd6D1Q3GyhK+3htX+3yRuFP53j
 sdKA==
X-Gm-Message-State: AGi0PuYeMA3Zi7WNmAao3WDcpNhN8pS+pze/7u3PEsW6ALY8kR5uYQnf
 TWrifDln27w69RFTR3p7wJmk+BcfYsxfPc7uBejKIw==
X-Google-Smtp-Source: APiQypK21l11H8MmIMzxPDM3OY0VBgWkXnDtSmRfiooGwGeC6RJ7EpnTaWmRWNI1z3caEeGyNSxytagqIsC8OVtetfk=
X-Received: by 2002:a6b:5008:: with SMTP id e8mr1037082iob.161.1589182433156; 
 Mon, 11 May 2020 00:33:53 -0700 (PDT)
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
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Mon, 11 May 2020 09:33:42 +0200
Message-ID: <CAAP7uc+w_dmNr9RQaDbbsmycKBj0QO_EeydKVABR_o4mfm77sw@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_003355_545394_3B61D0EA 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2b listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey,

> I checked the vid:pid. It is "1519:0443". I found this via lsusb -v:
>
> SIERRA WIRELESS HL7528
> root@LEDE:~# lsusb -v
> Bus 001 Device 002: ID 1519:0443   <<<<<<<<<
> Bus 001 Device 001: ID 1d6b:0002
> Bus 002 Device 001: ID 1d6b:0003
>
> But I changed modem to new one because you said Sierra HL7528 would only work with ppp method and it's not supposed to be.
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
>   General    |            dbus path: /org/freedesktop/ModemManager1/Modem/0
>                 |            device id: 97ffc2eeb6d3ad975d9089850aa3b9b494529919
>   --------------------------------
>   Hardware |         manufacturer: Quectel
>                |                model: EC25
>                |    firmware revision: EC25EFAR04A02M4G_SKT
>                |            supported: gsm-umts, lte
>                |              current: gsm-umts, lte
>                |         equipment id: 356673040475612
>   --------------------------------
>   System    |               device: /sys/devices/platform/1a0c0000.usb/usb1/1-2
>                 |              drivers: option
>                 |               plugin: Quectel
>                 |         primary port: ttyUSB2
>                 |                ports: ttyUSB0 (qcdm), ttyUSB2 (at), ttyUSB3 (at)

Unfortunately, this device is not yet using QMI. If you attempt to
connect it, it would be connected via PPP. This is not a problem of
the device, your system is lacking proper QMI support.

>
> I only enabled QMI via make menuconfig of openwrt.

You probably didn't do this right.

> I didn't enable MBIM via make menuconfig of openwrt.
> I didn't look at the make kernel_menuconfig of openwrt.
>
> The state of Status is "enabled" and the registration of 3GPP is "idle". Does this mean the modem is connected to the bearer/operator network and the data usage is enabled?
>

No. Status "enabled" means that your modem is not even registered in
the network!

> I found a documentation:
> https://docs.ubuntu.com/core/en/stacks/network/network-manager/docs/configure-cellular-connections
>
> This document shows using of "nmcli" to setup network interface like wwan.
> Do I need this also? I guess though.
> Do I need NetworkManager? If so, where can I get it? I searched from the place ( https://github.com/openwrt/packages.git ) where ModemManager for openwrt exist, but NetworkManager is not found there.
>

I've never seen an openwrt system using NetworkManager instead of
netifd, so not sure if that exists at all.

>
> And from the prints above, there are errors for "mmcli -b 0" and "mmcli -m 0 --list-bearers" I don't guess these errors are important but are they?
>

Those errors just mean that no bearer object was created. There was no
bearer object created because the modem isn't even registered in the
network.

> F.Y.I. Let me show you entry for /etc/config/network
>
> config interface 'broadband'
>         option device '/sys/devices/platform/1a0c0000.usb/usb1/1-2'
>         option proto 'modemmanager'
>         option apn 'lte-internet.sktelecom.com'
>
> With this prints can I judge that the ModemManager is ported and working well?
>

No, not at all, a lot of work is still missing to integrate that
correctly I'm afraid.

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
