Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3B51A0FF1
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 17:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=93BNbpiPdHgdQTC7saoQdTzZRul9fO6jIoTrQEEq+qA=; b=Nm2C9sx37kg9JXWbLuy+MzDt/
	9pQx4hC6UFagGGcSdvOTgbIGZA3rst3KumINVLE4Ci2OR8qIf/t3gNcJZ9J6DnfjfxjMDiZRFRriI
	7okYJvxhkFModYLUqDZYnuxQDlJYnUVhDB1AfighSI2uiv0S7csArivG9D6bOvSWSsW1c+21HhsLm
	5yiROuyeG9FllmMtGqWNTouasCkIElEc3onIKSD3YVNucgBAx4AccimgceD6n5FaaOd8h7ZcUcPQl
	nITLiQu6RSW1twL+QzpYa5yxjI+iQfS95T+vkE/kJlk0fBI2hb8JsQl+dGYgIaIEE422vhW8YjMAM
	nZFG/iGCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpv8-0006Z9-Rf; Tue, 07 Apr 2020 15:13:46 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpux-0006Yf-Ic
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 15:13:39 +0000
Received: from [192.168.180.1] (port=42014 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jLpuo-0000x1-2e; Tue, 07 Apr 2020 17:13:26 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id 8EAC7282CDB;
 Tue,  7 Apr 2020 17:13:26 +0200 (CEST)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <878sj7s6uj.fsf@miraculix.mork.no>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <a466a608-b27f-9b56-1a40-9b11866d08e1@marcant.net>
Date: Tue, 7 Apr 2020 17:13:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <878sj7s6uj.fsf@miraculix.mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_081336_071038_B193DD66 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] ramips/mt7621 after 5.4 switch
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============8644903439476418925=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============8644903439476418925==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms080006020706020204090605"

This is a cryptographically signed message in MIME format.

--------------ms080006020706020204090605
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi!

Am 07.04.20 um 16:33 schrieb Bj=C3=B8rn Mork:
> Andre Valentin <avalentin@marcant.net> writes:
>=20
>> 3) Problems with QMI Interfaces
>> QMI is used for mobile phones and interact with the qmi_wwan driver in=
 the kernel. I had transmit issues,
>> switched the driver back to the 4.14 while still on 5.4. But the same =
problem happens again.
>> Under 4.14 this was not a problem. So it seems 5.4 or the SOC patches =
somehow are the root cause.
>> Here's the kernel message:
>>
>>
>> [ 4199.444191] ------------[ cut here ]------------
>> [ 4199.453534] WARNING: CPU: 0 PID: 0 at net/sched/sch_generic.c:447 d=
ev_watchdog+0x2f8/0x300
>> [ 4199.470074] NETDEV WATCHDOG: wwan0 (qmi_wwan): transmit queue 0 tim=
ed out
>=20
> And this is not just an occasional timeout?  The driver hangs completel=
y
> there?

It hangs, no more packets are transmitted over network,
>=20
> I don't think there were many qmi_wwan changes between v4.14 and v5.4,
> except for device additions and some fixes which mostly have been
> backported to v4.14-stable. But maybe this is related to your specific
> modem?  Do you have a device ID for that?

The funny thing is, that if I remove all changes from 5.4 qmi_wwan.c and =
set it back to the
4.14 driver, the same happens again. Perhaps the problem is in the muxing=
 code? Is that outside
of qmi_wwan.c ?

Only if I disable qmap and use the wwan0 device with only one PDF, it see=
ms to be stable over days.
The device is a:
Bus 002 Device 002: ID 2c7c:0306 Quectel Wireless Solutions Co., Ltd. EG0=
6/EP06/EM06 LTE-A modem

> Do we know that USB is working on v5.4 BTW?  The MT7621 device I am
> using doesn't have any USB ports, so I can't check that myself.
>=20
> Is your modem connected by USB3 or USB2?  Any of
The modem is an integrated USB3 LTE modem. As said, without qmap it works=
 stable.
>=20
>  lsusb -v
----------------------

Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.00
  bDeviceClass            9 Hub
  bDeviceSubClass         0 Unused
  bDeviceProtocol         3
  bMaxPacketSize0         9
  idVendor           0x1d6b Linux Foundation
  idProduct          0x0003 3.0 root hub
  bcdDevice            5.04
  iManufacturer           3 Linux 5.4.28 vhci_hcd
  iProduct                2 USB/IP Virtual Host Controller
  iSerial                 1 vhci_hcd.0
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength           31
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0xe0
      Self Powered
      Remote Wakeup
    MaxPower                0mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass         9 Hub
      bInterfaceSubClass      0 Unused
      bInterfaceProtocol      0 Full speed (or root) hub
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0004  1x 4 bytes
        bInterval              12
        bMaxBurst               0
Hub Descriptor:
  bLength              12
  bDescriptorType      42
  nNbrPorts             8
  wHubCharacteristic 0x0001
    Per-port power switching
    Ganged overcurrent protection
  bPwrOn2PwrGood        0 * 2 milli seconds
  bHubContrCurrent      0 milli Ampere
  bHubDecLat          0.4 micro seconds
  wHubDelay             4 nano seconds
  DeviceRemovable    0xff 0xff
 Hub Port Status:
   Port 1: 0000.0200 5Gbps power U0
   Port 2: 0000.0200 5Gbps power U0
   Port 3: 0000.0200 5Gbps power U0
   Port 4: 0000.0200 5Gbps power U0
   Port 5: 0000.0200 5Gbps power U0
   Port 6: 0000.0200 5Gbps power U0
   Port 7: 0000.0200 5Gbps power U0
   Port 8: 0000.0200 5Gbps power U0
Binary Object Store Descriptor:
  bLength                 5
  bDescriptorType        15
  wTotalLength           15
  bNumDeviceCaps          1
  SuperSpeed USB Device Capability:
    bLength                10
    bDescriptorType        16
    bDevCapabilityType      3
    bmAttributes         0x00
    wSpeedsSupported   0x0008
      Device can operate at SuperSpeed (5Gbps)
    bFunctionalitySupport   3
      Lowest fully-functional device speed is SuperSpeed (5Gbps)
    bU1DevExitLat           0 micro seconds
    bU2DevExitLat           0 micro seconds
Device Status:     0x0001
  Self Powered

Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass            9 Hub
  bDeviceSubClass         0 Unused
  bDeviceProtocol         1 Single TT
  bMaxPacketSize0        64
  idVendor           0x1d6b Linux Foundation
  idProduct          0x0002 2.0 root hub
  bcdDevice            5.04
  iManufacturer           3 Linux 5.4.28 xhci-hcd
  iProduct                2 xHCI Host Controller
  iSerial                 1 1e1c0000.xhci
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength           25
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0xe0
      Self Powered
      Remote Wakeup
    MaxPower                0mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass         9 Hub
      bInterfaceSubClass      0 Unused
      bInterfaceProtocol      0 Full speed (or root) hub
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0004  1x 4 bytes
        bInterval              12
Hub Descriptor:
  bLength               9
  bDescriptorType      41
  nNbrPorts             2
  wHubCharacteristic 0x0009
    Per-port power switching
    Per-port overcurrent protection
    TT think time 8 FS bits
  bPwrOn2PwrGood       10 * 2 milli seconds
  bHubContrCurrent      0 milli Ampere
  DeviceRemovable    0x00
  PortPwrCtrlMask    0xff
 Hub Port Status:
   Port 1: 0000.0100 power
   Port 2: 0000.0100 power
Device Status:     0x0001
  Self Powered

Bus 002 Device 002: ID 2c7c:0306 Quectel Wireless Solutions Co., Ltd. EG0=
6/EP06/EM06 LTE-A modem
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 ?
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0         9
  idVendor           0x2c7c Quectel Wireless Solutions Co., Ltd.
  idProduct          0x0306 EG06/EP06/EM06 LTE-A modem
  bcdDevice            3.10
  iManufacturer           1 Quectel
  iProduct                2 EG06-E
  iSerial                 3 0123456789ABCDEF
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength          293
    bNumInterfaces          5
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0xa0
      (Bus Powered)
      Remote Wakeup
    MaxPower              126mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           2
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass    255 Vendor Specific Subclass
      bInterfaceProtocol    255 Vendor Specific Protocol
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x01  EP 1 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       0
      bNumEndpoints           3
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass      0
      bInterfaceProtocol      0
      iInterface              0
      ** UNRECOGNIZED:  05 24 00 10 01
      ** UNRECOGNIZED:  05 24 01 00 00
      ** UNRECOGNIZED:  04 24 02 02
      ** UNRECOGNIZED:  05 24 06 00 00
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x83  EP 3 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x000a  1x 10 bytes
        bInterval               9
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x82  EP 2 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x02  EP 2 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        2
      bAlternateSetting       0
      bNumEndpoints           3
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass      0
      bInterfaceProtocol      0
      iInterface              0
      ** UNRECOGNIZED:  05 24 00 10 01
      ** UNRECOGNIZED:  05 24 01 00 00
      ** UNRECOGNIZED:  04 24 02 02
      ** UNRECOGNIZED:  05 24 06 00 00
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x85  EP 5 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x000a  1x 10 bytes
        bInterval               9
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x84  EP 4 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x03  EP 3 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       0
      bNumEndpoints           3
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass      0
      bInterfaceProtocol      0
      iInterface              0
      ** UNRECOGNIZED:  05 24 00 10 01
      ** UNRECOGNIZED:  05 24 01 00 00
      ** UNRECOGNIZED:  04 24 02 02
      ** UNRECOGNIZED:  05 24 06 00 00
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x87  EP 7 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x000a  1x 10 bytes
        bInterval               9
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x04  EP 4 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        4
      bAlternateSetting       0
      bNumEndpoints           3
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass    255 Vendor Specific Subclass
      bInterfaceProtocol    255 Vendor Specific Protocol
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x89  EP 9 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0008  1x 8 bytes
        bInterval               9
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x88  EP 8 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x05  EP 5 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
Binary Object Store Descriptor:
  bLength                 5
  bDescriptorType        15
  wTotalLength           22
  bNumDeviceCaps          2
  USB 2.0 Extension Device Capability:
    bLength                 7
    bDescriptorType        16
    bDevCapabilityType      2
    bmAttributes   0x00000002
      Link Power Management (LPM) Supported
  SuperSpeed USB Device Capability:
    bLength                10
    bDescriptorType        16
    bDevCapabilityType      3
    bmAttributes         0x00
    wSpeedsSupported   0x000f
      Device can operate at Low Speed (1Mbps)
      Device can operate at Full Speed (12Mbps)
      Device can operate at High Speed (480Mbps)
      Device can operate at SuperSpeed (5Gbps)
    bFunctionalitySupport   1
      Lowest fully-functional device speed is Full Speed (12Mbps)
    bU1DevExitLat           1 micro seconds
    bU2DevExitLat         500 micro seconds
Device Status:     0x0000
  (Bus Powered)

Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.00
  bDeviceClass            9 Hub
  bDeviceSubClass         0 Unused
  bDeviceProtocol         3
  bMaxPacketSize0         9
  idVendor           0x1d6b Linux Foundation
  idProduct          0x0003 3.0 root hub
  bcdDevice            5.04
  iManufacturer           3 Linux 5.4.28 xhci-hcd
  iProduct                2 xHCI Host Controller
  iSerial                 1 1e1c0000.xhci
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength           31
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0xe0
      Self Powered
      Remote Wakeup
    MaxPower                0mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass         9 Hub
      bInterfaceSubClass      0 Unused
      bInterfaceProtocol      0 Full speed (or root) hub
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0004  1x 4 bytes
        bInterval              12
        bMaxBurst               0
Hub Descriptor:
  bLength              12
  bDescriptorType      42
  nNbrPorts             1
  wHubCharacteristic 0x0009
    Per-port power switching
    Per-port overcurrent protection
  bPwrOn2PwrGood       10 * 2 milli seconds
  bHubContrCurrent      0 milli Ampere
  bHubDecLat          0.0 micro seconds
  wHubDelay             0 nano seconds
  DeviceRemovable    0x00
 Hub Port Status:
   Port 1: 0000.0203 5Gbps power U0 enable connect
Binary Object Store Descriptor:
  bLength                 5
  bDescriptorType        15
  wTotalLength           15
  bNumDeviceCaps          1
  SuperSpeed USB Device Capability:
    bLength                10
    bDescriptorType        16
    bDevCapabilityType      3
    bmAttributes         0x00
    wSpeedsSupported   0x0008
      Device can operate at SuperSpeed (5Gbps)
    bFunctionalitySupport   3
      Lowest fully-functional device speed is SuperSpeed (5Gbps)
    bU1DevExitLat           0 micro seconds
    bU2DevExitLat           0 micro seconds
Device Status:     0x0001
  Self Powered

Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass            9 Hub
  bDeviceSubClass         0 Unused
  bDeviceProtocol         1 Single TT
  bMaxPacketSize0        64
  idVendor           0x1d6b Linux Foundation
  idProduct          0x0002 2.0 root hub
  bcdDevice            5.04
  iManufacturer           3 Linux 5.4.28 vhci_hcd
  iProduct                2 USB/IP Virtual Host Controller
  iSerial                 1 vhci_hcd.0
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength           25
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0xe0
      Self Powered
      Remote Wakeup
    MaxPower                0mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass         9 Hub
      bInterfaceSubClass      0 Unused
      bInterfaceProtocol      0 Full speed (or root) hub
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0004  1x 4 bytes
        bInterval              12
Hub Descriptor:
  bLength              11
  bDescriptorType      41
  nNbrPorts             8
  wHubCharacteristic 0x0001
    Per-port power switching
    Ganged overcurrent protection
    TT think time 8 FS bits
  bPwrOn2PwrGood        0 * 2 milli seconds
  bHubContrCurrent      0 milli Ampere
  DeviceRemovable    0x00 0x00
  PortPwrCtrlMask    0xff 0xff
 Hub Port Status:
   Port 1: 0000.0100 power
   Port 2: 0000.0100 power
   Port 3: 0000.0100 power
   Port 4: 0000.0100 power
   Port 5: 0000.0100 power
   Port 6: 0000.0100 power
   Port 7: 0000.0100 power
   Port 8: 0000.0100 power
Device Status:     0x0001
  Self Powered

-------------------------


>  cat /sys/kernel/debug/usb/devices
T:  Bus=3D01 Lev=3D00 Prnt=3D00 Port=3D00 Cnt=3D00 Dev#=3D  1 Spd=3D480  =
MxCh=3D 2
B:  Alloc=3D  0/800 us ( 0%), #Int=3D  0, #Iso=3D  0
D:  Ver=3D 2.00 Cls=3D09(hub  ) Sub=3D00 Prot=3D01 MxPS=3D64 #Cfgs=3D  1
P:  Vendor=3D1d6b ProdID=3D0002 Rev=3D 5.04
S:  Manufacturer=3DLinux 5.4.28 xhci-hcd
S:  Product=3DxHCI Host Controller
S:  SerialNumber=3D1e1c0000.xhci
C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3De0 MxPwr=3D  0mA
I:* If#=3D 0 Alt=3D 0 #EPs=3D 1 Cls=3D09(hub  ) Sub=3D00 Prot=3D00 Driver=
=3Dhub
E:  Ad=3D81(I) Atr=3D03(Int.) MxPS=3D   4 Ivl=3D256ms

T:  Bus=3D02 Lev=3D00 Prnt=3D00 Port=3D00 Cnt=3D00 Dev#=3D  1 Spd=3D5000 =
MxCh=3D 1
B:  Alloc=3D  0/800 us ( 0%), #Int=3D  0, #Iso=3D  0
D:  Ver=3D 3.00 Cls=3D09(hub  ) Sub=3D00 Prot=3D03 MxPS=3D 9 #Cfgs=3D  1
P:  Vendor=3D1d6b ProdID=3D0003 Rev=3D 5.04
S:  Manufacturer=3DLinux 5.4.28 xhci-hcd
S:  Product=3DxHCI Host Controller
S:  SerialNumber=3D1e1c0000.xhci
C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3De0 MxPwr=3D  0mA
I:* If#=3D 0 Alt=3D 0 #EPs=3D 1 Cls=3D09(hub  ) Sub=3D00 Prot=3D00 Driver=
=3Dhub
E:  Ad=3D81(I) Atr=3D03(Int.) MxPS=3D   4 Ivl=3D256ms

T:  Bus=3D02 Lev=3D01 Prnt=3D01 Port=3D00 Cnt=3D01 Dev#=3D  2 Spd=3D5000 =
MxCh=3D 0
D:  Ver=3D 3.00 Cls=3Def(misc ) Sub=3D02 Prot=3D01 MxPS=3D 9 #Cfgs=3D  1
P:  Vendor=3D2c7c ProdID=3D0306 Rev=3D 3.10
S:  Manufacturer=3DQuectel
S:  Product=3DEG06-E
S:  SerialNumber=3D0123456789ABCDEF
C:* #Ifs=3D 5 Cfg#=3D 1 Atr=3Da0 MxPwr=3D504mA
I:* If#=3D 0 Alt=3D 0 #EPs=3D 2 Cls=3Dff(vend.) Sub=3Dff Prot=3Dff Driver=
=3Doption
E:  Ad=3D81(I) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
E:  Ad=3D01(O) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
I:* If#=3D 1 Alt=3D 0 #EPs=3D 3 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Driver=
=3Doption
E:  Ad=3D83(I) Atr=3D03(Int.) MxPS=3D  10 Ivl=3D32ms
E:  Ad=3D82(I) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
E:  Ad=3D02(O) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
I:* If#=3D 2 Alt=3D 0 #EPs=3D 3 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Driver=
=3Doption
E:  Ad=3D85(I) Atr=3D03(Int.) MxPS=3D  10 Ivl=3D32ms
E:  Ad=3D84(I) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
E:  Ad=3D03(O) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
I:* If#=3D 3 Alt=3D 0 #EPs=3D 3 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Driver=
=3Doption
E:  Ad=3D87(I) Atr=3D03(Int.) MxPS=3D  10 Ivl=3D32ms
E:  Ad=3D86(I) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
E:  Ad=3D04(O) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
I:* If#=3D 4 Alt=3D 0 #EPs=3D 3 Cls=3Dff(vend.) Sub=3Dff Prot=3Dff Driver=
=3Dqmi_wwan
E:  Ad=3D89(I) Atr=3D03(Int.) MxPS=3D   8 Ivl=3D32ms
E:  Ad=3D88(I) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
E:  Ad=3D05(O) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms

T:  Bus=3D03 Lev=3D00 Prnt=3D00 Port=3D00 Cnt=3D00 Dev#=3D  1 Spd=3D480  =
MxCh=3D 8
B:  Alloc=3D  0/800 us ( 0%), #Int=3D  0, #Iso=3D  0
D:  Ver=3D 2.00 Cls=3D09(hub  ) Sub=3D00 Prot=3D01 MxPS=3D64 #Cfgs=3D  1
P:  Vendor=3D1d6b ProdID=3D0002 Rev=3D 5.04
S:  Manufacturer=3DLinux 5.4.28 vhci_hcd
S:  Product=3DUSB/IP Virtual Host Controller
S:  SerialNumber=3Dvhci_hcd.0
C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3De0 MxPwr=3D  0mA
I:* If#=3D 0 Alt=3D 0 #EPs=3D 1 Cls=3D09(hub  ) Sub=3D00 Prot=3D00 Driver=
=3Dhub
E:  Ad=3D81(I) Atr=3D03(Int.) MxPS=3D   4 Ivl=3D256ms

T:  Bus=3D04 Lev=3D00 Prnt=3D00 Port=3D00 Cnt=3D00 Dev#=3D  1 Spd=3D5000 =
MxCh=3D 8
B:  Alloc=3D  0/800 us ( 0%), #Int=3D  0, #Iso=3D  0
D:  Ver=3D 3.00 Cls=3D09(hub  ) Sub=3D00 Prot=3D03 MxPS=3D 9 #Cfgs=3D  1
P:  Vendor=3D1d6b ProdID=3D0003 Rev=3D 5.04
S:  Manufacturer=3DLinux 5.4.28 vhci_hcd
S:  Product=3DUSB/IP Virtual Host Controller
S:  SerialNumber=3Dvhci_hcd.0
C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3De0 MxPwr=3D  0mA
I:* If#=3D 0 Alt=3D 0 #EPs=3D 1 Cls=3D09(hub  ) Sub=3D00 Prot=3D00 Driver=
=3Dhub
E:  Ad=3D81(I) Atr=3D03(Int.) MxPS=3D   4 Ivl=3D256ms


>  grep . /sys/bus/usb/devices/*/version
/sys/bus/usb/devices/2-1/version: 3.00
/sys/bus/usb/devices/usb1/version: 2.00
/sys/bus/usb/devices/usb2/version: 3.00
/sys/bus/usb/devices/usb3/version: 2.00
/sys/bus/usb/devices/usb4/version: 3.00

> will tell.  You'll have to match up the latter with the device if you
> have more than one USB device connected.
>=20
>=20
>=20
> Bj=C3=B8rn
>=20
Thanks!

Andr=C3=A9


--------------ms080006020706020204090605
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
C3swggTwMIID2KADAgECAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRy
bzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFs
aXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyMB4XDTIwMDQwMzExMjkyOFoXDTIxMDQw
MzExMjkyOFowIDEeMBwGA1UEAwwVYXZhbGVudGluQG1hcmNhbnQubmV0MIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlybRZ/OtSRqXftAS3r9d+hMfULJ3AIsTG7l1m3ataDk6
e7uMqx3jJCnWtW6pDmF8oQeNeWU5TCgS3ewkN6Tqv8ndx8IgZzSDbnsSv9a+FGtWJImt+SCD
gSlUM5KSklnf9oYfCp6QYmbZ0Qb5zoQ3wUcBSYNnNrvjRHg45fgoQJxXyQ4scNbdtF5nwjkT
lN/ImARprPWMeX8Asa0ftZ7wlK8snfYso+4OU9lGrxUtDPwKwQPfc/Hol1/uRlceKeO/Nqrb
hwEMV+03pL8o/9y6jIQ6gYdjwXgTOivJ8f0/nuA/aYfqjfaIeFZs5q9lA5mpOr9rsM2w88sP
B2FDLBg2BQIDAQABo4IBtjCCAbIwDAYDVR0TAQH/BAIwADAfBgNVHSMEGDAWgBRr8o2eaMEl
BB9RNFf2FlyU6k1pGjB+BggrBgEFBQcBAQRyMHAwOwYIKwYBBQUHMAKGL2h0dHA6Ly9jYWNl
cnQuYWN0YWxpcy5pdC9jZXJ0cy9hY3RhbGlzLWF1dGNsaWcyMDEGCCsGAQUFBzABhiVodHRw
Oi8vb2NzcDA5LmFjdGFsaXMuaXQvVkEvQVVUSENMLUcyMCAGA1UdEQQZMBeBFWF2YWxlbnRp
bkBtYXJjYW50Lm5ldDBHBgNVHSAEQDA+MDwGBiuBHwEYATAyMDAGCCsGAQUFBwIBFiRodHRw
czovL3d3dy5hY3RhbGlzLml0L2FyZWEtZG93bmxvYWQwHQYDVR0lBBYwFAYIKwYBBQUHAwIG
CCsGAQUFBwMEMEgGA1UdHwRBMD8wPaA7oDmGN2h0dHA6Ly9jcmwwOS5hY3RhbGlzLml0L1Jl
cG9zaXRvcnkvQVVUSENMLUcyL2dldExhc3RDUkwwHQYDVR0OBBYEFImeFFJEHqtLlPJrjCuY
OxjU8gw2MA4GA1UdDwEB/wQEAwIFoDANBgkqhkiG9w0BAQsFAAOCAQEAr9jVry5tlkghgWGp
BA1nEFH15gyb3bpGsvy0xGi324regn7RfcYZ0Xhn4rKcpKYC6CjGR9aEcQan5xNVAM/kgW4Y
/LZMqWqdyYpPEKFkGXof7G0AoD8jLRwaMgKiYIFfEGI5j4rp5V1gw/iP3kiaK5OjUTQeGdpt
rGuPES2xq1uDBO2a86G1g6hFRMNojV6hF4V6A+nFucnGG9YqjyIZ1ioZc9gv957T0ti8LTeM
EkNW6QEOfj8WoDRJLPw1DnvvY1GNPtSfm0XBVWFrCtGHLuM3lgeffDpMb8DsIWAndpWkw3xf
y4qSus5fTjZYCjp0APX3oU2kagiTpvTJlpORTzCCBoMwggRroAMCAQICEE/eEEvtlVvei61l
h8xBXuMwDQYJKoZIhvcNAQELBQAwazELMAkGA1UEBhMCSVQxDjAMBgNVBAcMBU1pbGFuMSMw
IQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEnMCUGA1UEAwweQWN0YWxpcyBB
dXRoZW50aWNhdGlvbiBSb290IENBMB4XDTE5MDkyMDA3MTIwNVoXDTMwMDkyMjExMjIwMlow
gY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJnYW1vMRkwFwYDVQQHDBBQb250ZSBTYW4g
UGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEsMCoGA1UEAwwj
QWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24gQ0EgRzIwggEiMA0GCSqGSIb3DQEBAQUA
A4IBDwAwggEKAoIBAQC3aHN62TzUL/vcZ8o9zpR8/4kZztoaY/MZR5AnWCjcJ0WmwE+idEQN
dQN2ZEIhGRMOugffREuxM7/SEQWJiMLK+9tJVKbTmxeS98lc5d582orbV8FrKvgkKAxHItXC
pFheUojttvjadhKbthxcZMOZ1zJ2Ym66pwuoVBrBaIEw1FFUSLi5bm5cFmBYaarw2gof/7nE
YEVt/q01NZwaE9Vx5F6y7ArXnn46IfqNNbTU1rxouPtzsgAYnRj17qGIe1G2F9btLBtTvKzv
drec1e/wq/1c2vRG8koeg6wqrGN997DcYpCsxcgcHm2b+N7dcScjFRPwkbewSyTsh8XdWKtL
AgMBAAGjggH+MIIB+jAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFFLYiDrIn3hm7Ynz
ezhwlMkCAjbQMEEGCCsGAQUFBwEBBDUwMzAxBggrBgEFBQcwAYYlaHR0cDovL29jc3AwNS5h
Y3RhbGlzLml0L1ZBL0FVVEgtUk9PVDBFBgNVHSAEPjA8MDoGBFUdIAAwMjAwBggrBgEFBQcC
ARYkaHR0cHM6Ly93d3cuYWN0YWxpcy5pdC9hcmVhLWRvd25sb2FkMCcGA1UdJQQgMB4GCCsG
AQUFBwMCBggrBgEFBQcDBAYIKwYBBQUHAwkwgeMGA1UdHwSB2zCB2DCBlqCBk6CBkIaBjWxk
YXA6Ly9sZGFwMDUuYWN0YWxpcy5pdC9jbiUzZEFjdGFsaXMlMjBBdXRoZW50aWNhdGlvbiUy
MFJvb3QlMjBDQSxvJTNkQWN0YWxpcyUyMFMucC5BLiUyZjAzMzU4NTIwOTY3LGMlM2RJVD9j
ZXJ0aWZpY2F0ZVJldm9jYXRpb25MaXN0O2JpbmFyeTA9oDugOYY3aHR0cDovL2NybDA1LmFj
dGFsaXMuaXQvUmVwb3NpdG9yeS9BVVRILVJPT1QvZ2V0TGFzdENSTDAdBgNVHQ4EFgQUa/KN
nmjBJQQfUTRX9hZclOpNaRowDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3DQEBCwUAA4ICAQBg
RLoZoqty+w5BmkTBuhU5vZ2uL98mtylvsZIRb0mYD4p6ngYuan1fnQi/wQrjvyTB/ZoCOc+e
w52Ii0AtwiB5xLWpXE34Rj5XkYI0TLhUCwHmDOVAGYoj0/g/Eu32mdAmd4JUS8OdUExkCWUg
vmze5oKIgRvx5hmoby1o5ZIzWeqOgJlQtxyFdZhqMGpomDRFQ5np/kgHSVvbocD/sRRWaHWd
JWCUOhR4Pt6Ug1cemHTPeJ/XvbZTJ1ygfgmPdlpj121DjAlI2FJk7MRLvZSRLrB7/nnoU4az
uh4la5B7xGrYR55IaYaWJkpRtijiMH8LaiYyfQvhDAjnAw2tZ3YVE1RTDEwGZsli0RoNFNDv
Yc8DwOdtGS9ENImSOxOipTpmkGUF/izkTCuFeoVVvasz2YYI8NkmLsfDfLwFgP93eJMvo9bl
SM5NKkVydIg/gdbk8joxMdeX5pvpqMKe8nDoTVMYuHfMnKm/kJDwW2bTPswou3lmvYTiOiNl
d5mfWxSlKqJ1nKn2Yb8tgxGYcyS2ENGcOc7a0e/n5g47hxQRtO3kHDATlE+Oqi+yd53J3lKK
Mgr6TUwJcUsxN8RHPepQ3eL9/C55dwbLiMR/af8W9iwRjcYEddkIxVY998F9uX8hOOz1D00b
ftsASb+aDbI2rTY0uMNtAgqC31bRoFT1KzGCBBcwggQTAgEBMIGiMIGNMQswCQYDVQQGEwJJ
VDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEjMCEGA1UE
CgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMgQ2xpZW50
IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCWCGSAFlAwQCAQUA
oIICRTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA0MDcx
NTEzMjZaMC8GCSqGSIb3DQEJBDEiBCA2QMISfYVGe0qBw3/vzTX7wmeYWY01gYxVQ1LYnKAb
cTBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMC
AgEoMIGzBgkrBgEEAYI3EAQxgaUwgaIwgY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJn
YW1vMRkwFwYDVQQHDBBQb250ZSBTYW4gUGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5B
Li8wMzM1ODUyMDk2NzEsMCoGA1UEAwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24g
Q0EgRzICEHUXc/pcZ5UbYhNI1ws2ljYwgbUGCyqGSIb3DQEJEAILMYGloIGiMIGNMQswCQYD
VQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEj
MCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMg
Q2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3
DQEBAQUABIIBAI0gtHPjO+NmOBJuRhTSM+4eAheQAbhbTrGSGcxwM4GBcj5fdoE2PY7q2VxR
6UVbP6ekGiM5LKnTEnF0ETBc4NwwlHg9J0o5vUuTJ9F7p+1iOJvWnehJNYsMtmpVH59UD9dg
CIrnICzNdGWhiHJqk7E3HfoI+jJpS0bW+oCJBouXwz36xs152i5vDpwPIAkO8E0FodXK8353
Q4sr5KKU/iAcAF+0q0ml/4NDnKNCqED7xrND4Oi+quCkKQ+lwuRjk6R1ntRutJvc8cO1VY8E
1Za3MWLT5S9XevAd5x2xZ0vOi2axfpmDS9K2xevcCRGzoOFxKGRRh1y5BKcDSnr83xMAAAAA
AAA=
--------------ms080006020706020204090605--


--===============8644903439476418925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8644903439476418925==--

