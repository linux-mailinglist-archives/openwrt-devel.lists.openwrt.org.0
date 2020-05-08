Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BC91CABE7
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 May 2020 14:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rh5Tp8ZsIzD0LvW9QUQeJIkNDOea41lvP6DYiNYcrxQ=; b=RRmClapIFKYHyF
	z64mC83V39e/Mat2/7IxIBnECNx6aSlBKmSKAQNbBjagTeAWPo+xSFy/CG24i4mYKEr6BfuT/lSeW
	yg2OGStuxC2JBqWp1t+uoFMTuZTBQ/+SFYSZf5cJcLzTExLcu3DGFeZu55775UCkAHZkGbj50LuH9
	VPob4mc+xwA7tqN2dYB9yRk6piLw8aqAG42LpaMNlyyNsLGH0NYc2N9S3pNCvBcNuBsa/XZc9IRkz
	E3jbolDNwUtyHUtE22szoC/eNENA7T2KJMjfTe63JPAKPtTi28f3Ciy+x3qeU2sjO+F3Codu5T74k
	+OI9oI4YKvVh7LwA8OkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2Q6-0004OJ-33; Fri, 08 May 2020 12:48:02 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2Px-0004Ls-Q3
 for openwrt-devel@lists.openwrt.org; Fri, 08 May 2020 12:47:55 +0000
Received: by mail-io1-xd30.google.com with SMTP id w11so1642478iov.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 May 2020 05:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S980/u/cKGeTX4+u06W2f2hsHufV/Td6KsdZoXNvDuc=;
 b=YCIAGCC9DGIr6Pzn3/F9vhSUg90dLDdN8agqb0u9pMwAer0GQzVCb5xcC4SPISnDuh
 Mb0Qq4t3legqxHLcToyPJC1dEDHnT9CNp/tIAuuMJn2nl1Jy3lDFXC8u2mL6rlVunF07
 pn8Teoi0x492iar+EevhiOCmnXjroK0YZHoh94aUVWe0ljXYcOgE9gCf1XyOaI1DxUO1
 JRU6KrA2fWUOm+om0jinJAQzuXWekqhjdmbCpZDKHb5qMK5OdXO3q+IGpwtc0bcynbZk
 BprKj2dl8NOBc8FKWlXKEWP1Kc0cIoIMPHhyJ5SxRe6zIVDraBLSLj1yoWetSEvQQzxi
 +FbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S980/u/cKGeTX4+u06W2f2hsHufV/Td6KsdZoXNvDuc=;
 b=Zm/Z0J3DxxG3U7lzz1CxbIaAUdarmGTUdy29JBB3oh28p0y+1EbX7jB2voCH4is72S
 +Y6zZdQmjcfxRWC1TEPkWcV/IoyNzJyym/M4yeoS2iy0+Dj6px5ixrw9Y41PdqIWlVa+
 AjhBDZQsT8M/T6NI8/lLT10bGOfgWHa67VOdhJFi/ltovGONmjAKY8c6PuwB28voJIw0
 hcLJ887JoWpcIrmTlqgOxBJZLPaQUlwIJePs+MX9ve/DDuQOIfm8LMw4/hA16Vh/LK+i
 AfKz4lmxkD6e3BYePy+ot5i2wKB86NDkNYtVcwikTvXyZLTQCUNfty/zsP5ofD2UpE6I
 2qhw==
X-Gm-Message-State: AGi0PuZXmaO25Y/V5FNA6uqqIvoerxOWFGv+rBE61659h8Qd1BgPDl9Z
 ZSr2JEASLYx7w8Jto+Y/CIq2PAWIbLMfiRxYHdwawQ==
X-Google-Smtp-Source: APiQypKn1Vopnfmq7M1MISsXRq/oiO0ZDQKYqgKxJPJlpaHyg8C23BNrlxQFICKa/M1N6/TRqT44YjWQ0HLsXvN4B1U=
X-Received: by 2002:a02:ccad:: with SMTP id t13mr2442534jap.64.1588942072374; 
 Fri, 08 May 2020 05:47:52 -0700 (PDT)
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
In-Reply-To: <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri, 8 May 2020 14:47:40 +0200
Message-ID: <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_054753_890056_A65DD4CD 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d30 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

> We have Sierra modem. HL7528
> So I tested my linux box with this modem and I received first prints below:
>
> root@LEDE:/lib/udev/rules.d# mmcli -L
>     /org/freedesktop/ModemManager1/Modem/0 [Sierra Wireless] HL7528
> root@LEDE:/lib/udev/rules.d# mmcli -m 0
>   -----------------------------
>   General  |         dbus path: /org/freedesktop/ModemManager1/Modem/0
>            |         device id: a643b0bb58dac30a2cd4ff6b486e826b483d298b
>   -----------------------------
>   Hardware |      manufacturer: Sierra Wireless
>            |             model: HL7528
>            | firmware revision: THL7528_778_tb3_utp426.0.0.152000.202004221951.x7160_1
>            |         supported: gsm-umts, lte
>            |           current: gsm-umts, lte
>            |      equipment id: 356170062941712
>   -----------------------------
>   System   |            device: /sys/devices/platform/1a0c0000.usb/usb1/1-2
>            |           drivers: cdc_acm, cdc_ncm
>            |            plugin: Generic
>            |      primary port: ttyACM0
>            |             ports: wwan3 (net), ttyACM0 (at), wwan0 (net), wwan1 (net),
>            |                    wwan2 (net), ttyACM2 (at)
>   -----------------------------
>   Status   |             state: failed
>            |     failed reason: sim-missing
>            |       power state: on
>            |    signal quality: 0% (cached)
>   -----------------------------
>   Modes    |         supported: allowed: 2g, 3g, 4g; preferred: none
>            |           current: allowed: any; preferred: none
>
> I did this test to verify if my applying ModemManager have any issue. With this print result, can I judge that ModemManager is ported well?
>

Is this device relatively new? What is the "vid:pid" of the device?
Could you get a full "lsusb -v" output of the device?

I see the modem is exposing multiple AT and net ports, but
unfortunately ModemManager doesn't know how to handle those net ports,
so if you get that modem connected it will be using PPP over a TTY,
which is not optimal. The connection and management will work, but it
won't be as good as it can be,

> I from now on will test with this modem. I think I need rule file for this modem and I found one:
> /lib/udev/rules.d/77-mm-sierra.rules
>
> The content of this rule file:
>
> # do not edit this file, it will be overwritten on update
> ACTION!="add|change|move|bind", GOTO="mm_sierra_end"
> SUBSYSTEMS=="usb", ATTRS{idVendor}=="1199", GOTO="mm_sierra"
> GOTO="mm_sierra_end"
>
> LABEL="mm_sierra"
> SUBSYSTEMS=="usb", ATTRS{bInterfaceNumber}=="?*", ENV{.MM_USBIFNUM}="$attr{bInterfaceNumber}"
>
> # Netgear AC341U: enable connection status polling explicitly
> ATTRS{idVendor}=="1199", ATTRS{idProduct}=="9057", ENV{ID_MM_QMI_CONNECTION_STATUS_POLLING_ENABLE}="1"
>
> # MC74XX: Add port hints
> #  if 03: primary port
> #  if 02: raw NMEA port
> #  if 00: diag/qcdm port
> ATTRS{idVendor}=="1199", ATTRS{idProduct}=="9071", ENV{.MM_USBIFNUM}=="03", ENV{ID_MM_PORT_TYPE_AT_PRIMARY}="1"
> ATTRS{idVendor}=="1199", ATTRS{idProduct}=="9071", ENV{.MM_USBIFNUM}=="02", ENV{ID_MM_PORT_TYPE_GPS}="1"
> ATTRS{idVendor}=="1199", ATTRS{idProduct}=="9071", ENV{.MM_USBIFNUM}=="00", ENV{ID_MM_PORT_TYPE_QCDM}="1"
>
> # EM7565: Add port hints
> #  if 03: primary port
> #  if 02: raw NMEA port
> #  if 00: diag/qcdm port
> ATTRS{idVendor}=="1199", ATTRS{idProduct}=="9091", ENV{.MM_USBIFNUM}=="03", ENV{ID_MM_PORT_TYPE_AT_PRIMARY}="1"
> ATTRS{idVendor}=="1199", ATTRS{idProduct}=="9091", ENV{.MM_USBIFNUM}=="02", ENV{ID_MM_PORT_TYPE_GPS}="1"
> ATTRS{idVendor}=="1199", ATTRS{idProduct}=="9091", ENV{.MM_USBIFNUM}=="00", ENV{ID_MM_PORT_TYPE_QCDM}="1"
>
> LABEL="mm_sierra_end"
>
>
> Is this rule file fit to my modem?
> Or do I need new rule file for this modem?
>

The rule files are "helpers" really, there is no need for the rule
files usually. In your case, I believe the modem isn't using any of
the rule files that ModemManager provides.

> And do I need special settings in /etc/config/network ? I know basic settings for this:
> config interface 'broadband'
>         option device '/sys/devices/platform/1a0c0000.usb/usb1/1-2'
>         option proto 'modemmanager'
>         option apn 'whatever corect apn here'
>         option username ''
>         option password ''
>         option pincode ''
>         option lowpower '1'
>

As in the previous email, you probably don't need username, password,
and lowpower. And you only need pincode if your SIM card is
PIN-locked, which may not be.

Cheers!

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
