Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F121A3266
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 12:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5prpG2AsB7FblktMl/kPgeUGBIyqcCVSYe5KO94+HTg=; b=iWctQzzGxrTEOj+aEOynW8piw
	AJcpqVMeZ9vO3WAcFxCHrPSrdM0fbaY6wNW9jJ/ua60uZ+YU+furEmBvGuQh4Zffp1fsS7LQ/YDtG
	T5Xul9p1HlOoMtJ7xL3C9cnNHkCizo1U0VGBY+o1/YVT689mw9sElf2xKSzziQ0GYDimucY0bbwNc
	WPWU1S6f8PS2t9W33QpIu81DF1tKRrwvRxlxFDSTD2kGrHoveCiMm9Jiu9J6IZGOkZfv6H0uHm2Wg
	lUZCoSq5H3+M6DglpOJhq3PcQ6/DQzdowLb83KWdXNV25UYdGjTA8h04c7+G6VWVSnofxc26T3Loy
	SHrfOzhiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMUHW-00075T-0x; Thu, 09 Apr 2020 10:19:34 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMUHN-00074y-6H
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 10:19:28 +0000
Received: from [192.168.180.1] (port=36186 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jMUHD-0007CT-0A; Thu, 09 Apr 2020 12:19:15 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id 9A6FE2803AC;
 Thu,  9 Apr 2020 12:19:14 +0200 (CEST)
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
 <CAMhs-H_VWuxyFF7v9YaJaF1FJ-C-HSD9nS93mTd58RwrRMEtbA@mail.gmail.com>
 <74f5cecc-4fa3-92e9-bd40-193f6c939536@marcant.net>
 <CAMhs-H9Q75v15sXQq_-p=9u6SoH5dmSk9sFaMceCa3ggXSREdg@mail.gmail.com>
 <1a6773cf-681d-be6d-3fbe-ff3f84ef39a9@marcant.net>
 <CAMhs-H9vp4kS_JG5WA_L+A4xbMFMF-vvzM0=MWVvp7E+qmVe+A@mail.gmail.com>
 <CAMhs-H_7xp8c1Qno3KpghnZxTF3v4thqXdjvRXKFj+jDvXk_bw@mail.gmail.com>
 <CAMhs-H8V2LPQqz-gyq6RuPtL8VOtT=ZXShx6o9O_fOPdBJga8g@mail.gmail.com>
 <CAMhs-H9qJwf1-Rp+z0Sgkmv_gANOspsF6qheG5M4u7Gy5o=vMw@mail.gmail.com>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <80e7f567-60b1-940f-2e6a-51df7fba77ec@marcant.net>
Date: Thu, 9 Apr 2020 12:19:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAMhs-H9qJwf1-Rp+z0Sgkmv_gANOspsF6qheG5M4u7Gy5o=vMw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_031925_819137_24841A84 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: multipart/mixed; boundary="===============6474072178634647073=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============6474072178634647073==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms000406090308040300090006"

This is a cryptographically signed message in MIME format.

--------------ms000406090308040300090006
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 09.04.20 um 06:48 schrieb Sergio Paracuellos:
> On Thu, Apr 9, 2020 at 6:36 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
>>
>> Hi again,
>>
>> On Thu, Apr 9, 2020 at 5:57 AM Sergio Paracuellos
>> <sergio.paracuellos@gmail.com> wrote:
>>>
>>> Hi Andre,
>>>
>>> On Wed, Apr 8, 2020 at 9:30 AM Sergio Paracuellos
>>> <sergio.paracuellos@gmail.com> wrote:
>>>>
>>>> Hi Andr=C3=A9,
>>>>
>>>>
>>>> On Wed, Apr 8, 2020 at 9:13 AM Andre Valentin <avalentin@marcant.net=
> wrote:
>>>>>
>>>>> Hi Sergio!
>>>>>
>>>>> Am 08.04.20 um 06:28 schrieb Sergio Paracuellos:
>>>>>> Hi Andre,
>>>>>>
>>>>>> On Tue, Apr 7, 2020 at 9:28 PM Andre Valentin <avalentin@marcant.n=
et> wrote:
>>>>>>>
>>>>>>> Am 07.04.20 um 20:05 schrieb Sergio Paracuellos:
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> On Tue, Apr 7, 2020 at 12:16 PM Chuanhong Guo <gch981213@gmail.c=
om> wrote:
>>>>>>>>>
>>>>>>>>> [CC Sergio who worked on upstream PCIE driver]
>>>>>>>>>
>>>>>>>>> On Tue, Apr 7, 2020 at 4:45 PM Andre Valentin <avalentin@marcan=
t.net> wrote:
>>>>>>>>>>
>>>>>>>>>> Hi!
>>>>>>>>>>
>>>>>>>>>> Currently I'm having some serious problems with the new 5.4 po=
rt.
>>>>>>>>>> 1) PCIe
>>>>>>>>>> I'm developing on the ZyXEL LTE3301-PLUS. It has PCIe and a mt=
7615e connected to second bus on the first phy.
>>>>>>>>>> If booting the device, kernel hangs with a RST message, tellin=
g the device is not detected. It seems the PCIe bus 1
>>>>>>>>>> cannot be reseted because nothing is connected to bus 0.
>>>>>>>>>> An upport of the old PCI driver reenables the function. I can =
provide more logs on this if needed.
>>>>>>>>
>>>>>>>> Logs and dmesg traces are always welcome and would be helpful. B=
oth
>>>>>>>> working and not working traces.
>>>>>>>
>>>>>>> Of course, here we go with the old PCIe driver taken from 4.14 op=
enwrt kernel:
>>>>>>> [    0.485729] pinctrl core: add 0 pinctrl maps
>>>>>>> [    0.485865] pull PCIe RST: RALINK_RSTCTRL =3D 4000000
>>>>>>> [    0.796015] release PCIe RST: RALINK_RSTCTRL =3D 7000000
>>>>>>> [    0.806088] ***** Xtal 40MHz *****
>>>>>>> [    0.812829] release PCIe RST: RALINK_RSTCTRL =3D 7000000
>>>>>>> [    0.823025] Port 0 N_FTS =3D 1b102800
>>>>>>> [    0.829933] Port 1 N_FTS =3D 1b105000
>>>>>>> [    0.836849] Port 2 N_FTS =3D 1b102800
>>>>>>> [    1.995991] PCIE0 no card, disable it(RST&CLK)
>>>>>>> [    2.004682] PCIE2 no card, disable it(RST&CLK)
>>>>>>> [    2.013495]  -> 20107f2
>>>>>>> [    2.018328] PCIE1 enabled
>>>>>>> [    2.023532] PCI host bridge /pcie@1e140000 ranges:
>>>>>>> [    2.033045]  MEM 0x0000000060000000..0x000000006fffffff
>>>>>>> [    2.043401]   IO 0x000000001e160000..0x000000001e16ffff
>>>>>>> [    2.053762] PCI coherence region base: 0xbfbf8000, mask/settin=
gs: 0x60000000
>>>>>>> [    2.091056] PCI host bridge to bus 0000:00
>>>>>>> [    2.099131] pci_bus 0000:00: root bus resource [mem 0x60000000=
-0x6fffffff]
>>>>>>> [    2.112734] pci_bus 0000:00: root bus resource [io  0xffffffff=
]
>>>>>>> [    2.124486] pci_bus 0000:00: root bus resource [??? 0x00000000=
 flags 0x0]
>>>>>>> [    2.137962] pci_bus 0000:00: No busn resource found for root b=
us, will use [bus 00-ff]
>>>>>>> [    2.153766] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x0604=
00
>>>>>>> [    2.165651] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fff=
ffff]
>>>>>>> [    2.178057] pci 0000:00:00.0: reg 0x14: [mem 0x60100000-0x6010=
ffff]
>>>>>>> [    2.190585] pci 0000:00:00.0: supports D1
>>>>>>> [    2.198439] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>>>>>>> [    2.211463] random: fast init done
>>>>>>> [    2.211838] pci 0000:01:00.0: [14c3:7615] type 00 class 0x0002=
80
>>>>>>> [    2.230071] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x000f=
ffff 64bit]
>>>>>>> [    2.243675] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwi=
dth, limited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s w=
ith 5 GT/s x1 link)
>>>>>>> [    2.272296] pci_bus 0000:01: busn_res: [bus 01-ff] end is upda=
ted to 01
>>>>>>> [    2.285339] pci_bus 0000:00: busn_res: [bus 00-ff] end is upda=
ted to 01
>>>>>>> [    2.298493] pci 0000:00:00.0: BAR 0: no space for [mem size 0x=
80000000]
>>>>>>> [    2.311581] pci 0000:00:00.0: BAR 0: failed to assign [mem siz=
e 0x80000000]
>>>>>>> [    2.325410] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-=
0x600fffff]
>>>>>>> [    2.338888] pci 0000:00:00.0: BAR 1: assigned [mem 0x60100000-=
0x6010ffff]
>>>>>>> [    2.352376] pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-=
0x600fffff 64bit]
>>>>>>> [    2.366887] pci 0000:00:00.0: PCI bridge to [bus 01]
>>>>>>> [    2.376728] pci 0000:00:00.0:   bridge window [mem 0x60000000-=
0x600fffff]
>>>>>>>
>>>>>>>
>>>>>>> And this is on 5.4 with the new driver with pcie0 status=3Ddisabl=
ed:
>>>>>>> [   30.464407] mt7621-pci 1e140000.pcie: GPIO lookup for consumer=
 reset
>>>>>>> [   30.464415] mt7621-pci 1e140000.pcie: using device tree for GP=
IO lookup
>>>>>>> [   30.464474] mt7621-pci 1e140000.pcie: using lookup tables for =
GPIO lookup
>>>>>>> [   30.464484] mt7621-pci 1e140000.pcie: No GPIO consumer reset f=
ound
>>>>>>> [   30.664239] mt7621-pci 1e140000.pcie: pcie1 no card, disable i=
t (RST & CLK)
>>>>>>> [   30.678128] mt7621-pci 1e140000.pcie: Nothing is connected in =
virtual bridges. Exiting...
>>>>>>> booting goes on.
>>>>>>>
>>>>>>> And with pcie status=3Denabled:
>>>>>>> [   32.415863] rt2880-pinmux pinctrl: pcie is already enabled
>>>>>>> [   32.426821] mt7621-pci 1e140000.pcie: Error applying setting, =
reverse things back
>>>>>>> [   32.441900] mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe1490=
00 (dual port =3D 1)
>>>>>>> [   32.456880] mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a0=
00 (dual port =3D 0)
>>>>>>> [   32.571556] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>>>> [   32.582680] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>>>>> [   32.693592] mt7621-pci 1e140000.pcie: pcie0 no card, disable i=
t (RST & CLK)
>>>>>>> hangs.
>>>>>>
>>>>>> I think the problem here is that upstream driver use two phy's nod=
es
>>>>>> with pcie-phy0 being a dual ported one.
>>>>>> Because there is nothing connected in pcie0 the phy is just stoppe=
d
>>>>>> assuming nothing will be connected also in pcie1.
>>>>>> Just to see if that is the problem, can you please patch the
>>>>>> 'mt7621_pcie_init_ports' function and comment the following piece =
of
>>>>>> code:
>>>>>>
>>>>>> if (slot !=3D 1)
>>>>>>      phy_power_off(port->phy);
>>>>>>
>>>>>> Let's see what happens.
>>>>>
>>>>> Hmm, that did the trick:
>>>>> [   30.444228] rt2880-pinmux pinctrl: found group selector 6 for pc=
ie
>>>>> [   30.444249] rt2880-pinmux pinctrl: request pin 19 (io19) for 1e1=
40000.pcie
>>>>> [   30.444396] mt7621-pci 1e140000.pcie: Parsing DT failed
>>>>> [   32.403940] rt2880-pinmux pinctrl: found group selector 6 for pc=
ie
>>>>> [   32.403963] rt2880-pinmux pinctrl: request pin 19 (io19) for 1e1=
40000.pcie
>>>>> [   32.403977] rt2880-pinmux pinctrl: pcie is already enabled
>>>>> [   32.414931] mt7621-pci 1e140000.pcie: Error applying setting, re=
verse things back
>>>>> [   32.430012] mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000=
 (dual port =3D 1)
>>>>> [   32.444754] mt7621-pci 1e140000.pcie: GPIO lookup for consumer r=
eset
>>>>> [   32.444763] mt7621-pci 1e140000.pcie: using device tree for GPIO=
 lookup
>>>>> [   32.444811] of_get_named_gpiod_flags: parsed 'reset-gpios' prope=
rty of node '/pcie@1e140000[0]' - status (0)
>>>>> [   32.444875] mt7621-pci 1e140000.pcie: GPIO lookup for consumer r=
eset
>>>>> [   32.444883] mt7621-pci 1e140000.pcie: using device tree for GPIO=
 lookup
>>>>> [   32.444906] of_get_named_gpiod_flags: can't parse 'reset-gpios' =
property of node '/pcie@1e140000[1]'
>>>>> [   32.444924] of_get_named_gpiod_flags: can't parse 'reset-gpio' p=
roperty of node '/pcie@1e140000[1]'
>>>>> [   32.444935] mt7621-pci 1e140000.pcie: using lookup tables for GP=
IO lookup
>>>>> [   32.444945] mt7621-pci 1e140000.pcie: No GPIO consumer reset fou=
nd
>>>>> [   32.445011] mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000=
 (dual port =3D 0)
>>>>> [   32.459753] mt7621-pci 1e140000.pcie: GPIO lookup for consumer r=
eset
>>>>> [   32.459761] mt7621-pci 1e140000.pcie: using device tree for GPIO=
 lookup
>>>>> [   32.459791] of_get_named_gpiod_flags: can't parse 'reset-gpios' =
property of node '/pcie@1e140000[2]'
>>>>> [   32.459808] of_get_named_gpiod_flags: can't parse 'reset-gpio' p=
roperty of node '/pcie@1e140000[2]'
>>>>> [   32.459818] mt7621-pci 1e140000.pcie: using lookup tables for GP=
IO lookup
>>>>> [   32.459826] mt7621-pci 1e140000.pcie: No GPIO consumer reset fou=
nd
>>>>> [   32.559695] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>> [   32.570819] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>>> [   32.681732] mt7621-pci 1e140000.pcie: pcie0 no card, disable it =
(RST & CLK)
>>>>> [   32.695603] mt7621-pci 1e140000.pcie: pcie2 no card, disable it =
(RST & CLK)
>>>>> [   32.709477] mt7621-pci 1e140000.pcie: PCIE1 enabled
>>>>> [   32.719207] mt7621-pci 1e140000.pcie: PCI coherence region base:=
 0x60000000, mask/settings: 0xf0000002
>>>>> [   32.737964] mt7621-pci 1e140000.pcie: PCI host bridge to bus 000=
0:00
>>>>> [   32.750653] pci_bus 0000:00: root bus resource [io  0x1e160000-0=
x1e16ffff]
>>>>> [   32.764358] pci_bus 0000:00: root bus resource [mem 0x60000000-0=
x6fffffff]
>>>>> [   32.778073] pci_bus 0000:00: root bus resource [bus 00-ff]
>>>>> [   32.789053] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400=

>>>>> [   32.801064] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffff=
ff]
>>>>> [   32.813561] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ff=
ff]
>>>>> [   32.826152] pci 0000:00:00.0: supports D1
>>>>> [   32.834144] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>>>>> [   32.846953] pci 0000:00:00.0: bridge configuration invalid ([bus=
 00-00]), reconfiguring
>>>>> [   32.863173] pci 0000:01:00.0: [14c3:7615] type 00 class 0x000280=

>>>>> [   32.875209] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x000fff=
ff 64bit]
>>>>> [   32.888911] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidt=
h, limited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s wit=
h 5 GT/s x1 link)
>>>>> [   32.917782] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
>>>>> [   32.928208] pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff=
]
>>>>> [   32.940355] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x=
000fffff]
>>>>> [   32.953890] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x=
000fffff pref]
>>>>> [   32.968289] pci_bus 0000:01: busn_res: [bus 01-ff] end is update=
d to 01
>>>>> [   32.981535] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80=
000000]
>>>>> [   32.994721] pci 0000:00:00.0: BAR 0: failed to assign [mem size =
0x80000000]
>>>>> [   33.008598] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x=
600fffff]
>>>>> [   33.022134] pci 0000:00:00.0: BAR 9: assigned [mem 0x60100000-0x=
601fffff pref]
>>>>> [   33.036535] pci 0000:00:00.0: BAR 1: assigned [mem 0x60200000-0x=
6020ffff]
>>>>> [   33.050082] pci 0000:00:00.0: BAR 7: assigned [io  0x1e160000-0x=
1e160fff]
>>>>> [   33.063622] pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x=
600fffff 64bit]
>>>>> [   33.078208] pci 0000:00:00.0: PCI bridge to [bus 01]
>>>>> [   33.088106] pci 0000:00:00.0:   bridge window [io  0x1e160000-0x=
1e160fff]
>>>>> [   33.101640] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x=
600fffff]
>>>>> [   33.115169] pci 0000:00:00.0:   bridge window [mem 0x60100000-0x=
601fffff pref]
>>>>> [   45.990931] pci 0000:00:00.0: enabling device (0004 -> 0007)
>>>>>
>>>>>
>>>>> It works, yeah! But what now? Do you fix the driver? When I can hel=
p/test ..
>>>
>>> Does something like this working also for you?
>=20
> Update. This should be hopefully the good one.
>=20
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
> b/drivers/staging/mt7621-pci/pci-mt7621.c
> index f58e3a51fc71..b9d460a9c041 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -502,17 +502,25 @@ static void mt7621_pcie_init_ports(struct
> mt7621_pcie *pcie)
>=20
>         mt7621_pcie_reset_ep_deassert(pcie);
>=20
> +       tmp =3D NULL;
>         list_for_each_entry(port, &pcie->ports, list) {
>                 u32 slot =3D port->slot;
>=20
>                 if (!mt7621_pcie_port_is_linkup(port)) {
>                         dev_err(dev, "pcie%d no card, disable it (RST &=
 CLK)\n",
>                                 slot);
> -                       if (slot !=3D 1)
> -                               phy_power_off(port->phy);
>                         mt7621_control_assert(port);
>                         mt7621_pcie_port_clk_disable(port);
>                         port->enabled =3D false;
> +
> +                       if (slot =3D=3D 0) {
> +                               tmp =3D port;
> +                               continue;
> +                       }
> +
> +                       if (slot =3D=3D 1 && tmp && !tmp->enabled)
> +                               phy_power_off(tmp->phy);
> +
>                 }
>         }
>  }
>=20
> Sorry for the spam. A long night around here :-)

Here too :-)
This patch does the job also, pci device is availabe.

Thank you very much, Sergio.

Kind regards,

Andr=C3=A9


--------------ms000406090308040300090006
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
oIICRTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA0MDkx
MDE5MTRaMC8GCSqGSIb3DQEJBDEiBCDWI7Y31Ydd40DsfA1QWv6vVdzmps83eF/PLzwddBje
njBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMC
AgEoMIGzBgkrBgEEAYI3EAQxgaUwgaIwgY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJn
YW1vMRkwFwYDVQQHDBBQb250ZSBTYW4gUGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5B
Li8wMzM1ODUyMDk2NzEsMCoGA1UEAwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24g
Q0EgRzICEHUXc/pcZ5UbYhNI1ws2ljYwgbUGCyqGSIb3DQEJEAILMYGloIGiMIGNMQswCQYD
VQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEj
MCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMg
Q2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3
DQEBAQUABIIBACRwnJqTmEV0R0CRRR1a7k6Dcfly87LavIFekXx7eMwwFGZY3OlZZlsXtzh9
ZMlcLTNi2VmmP6dqWhFt3mvNKqL9rIpwY/uRzSbpIQbrvFKxDzTUfQSvV59vm0XrFk/v+f9p
NN2hX3C41gOCTX8xPhIr/LE04zkpajmK6whl6FZS8EnK2dj4ifJnT4Q4+RlOMWdox/BR0jbR
3nro4Rtk6/sGrVPebfsc2qNA5j58eoWkTmsQnOPVvBEzG6ebwKIGFYrQcpfpQGbk58144NLm
uYMP/d0VtclGwRll5B19NLFLlNtjP1mtHqbleV6mqCGmhdOYiH8ZQVjECLWQv7Rvhg0AAAAA
AAA=
--------------ms000406090308040300090006--


--===============6474072178634647073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6474072178634647073==--

