Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1051B1A1C68
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 09:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SQqr5y8l4lCDeCFup9aimltLKtfs0ITTBxuiSeXknpY=; b=EyD/WGOjgLTX8iiMohl2Jm6rk
	kC7EMBl5a5lg6vQUMrkBarQPZhgY/NYTUOAF2YwBcIg6AQLZ5q4sn9vyoAkLv8Rrc5ZCYmHJ42nvs
	VTsW99rxgq1NXVidQTtuK4QP+EzjTehLPdOh4sfoafjWQajKx9bSAEVC2mopyxFW1n/h4Djyy5UXK
	enwTD64y6+7CDG5M38fouOd6jUx0SW1FrPDE69nUDMbr96H9sX1zoU6sq2gOh1mNv8+YAk7RRMI/e
	jmhpnRSLMvk+GyYckosmzi+K2HCXE0K5RONKEuFINUQFfudPoZrKDNfS7Q8bGZYifkfduMASHhbuW
	a5wMDMkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM4tn-0003Hm-CV; Wed, 08 Apr 2020 07:13:23 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM4td-0003Gm-95
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 07:13:16 +0000
Received: from [192.168.180.1] (port=52502 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jM4tU-0006sF-0q; Wed, 08 Apr 2020 09:13:04 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id E8CB4282D40;
 Wed,  8 Apr 2020 09:13:03 +0200 (CEST)
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
 <CAMhs-H_VWuxyFF7v9YaJaF1FJ-C-HSD9nS93mTd58RwrRMEtbA@mail.gmail.com>
 <74f5cecc-4fa3-92e9-bd40-193f6c939536@marcant.net>
 <CAMhs-H9Q75v15sXQq_-p=9u6SoH5dmSk9sFaMceCa3ggXSREdg@mail.gmail.com>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <1a6773cf-681d-be6d-3fbe-ff3f84ef39a9@marcant.net>
Date: Wed, 8 Apr 2020 09:13:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAMhs-H9Q75v15sXQq_-p=9u6SoH5dmSk9sFaMceCa3ggXSREdg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_001313_624819_F7971844 
X-CRM114-Status: GOOD (  20.09  )
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: multipart/mixed; boundary="===============6595747272798261432=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============6595747272798261432==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms030408020701020706010000"

This is a cryptographically signed message in MIME format.

--------------ms030408020701020706010000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sergio!

Am 08.04.20 um 06:28 schrieb Sergio Paracuellos:
> Hi Andre,
>=20
> On Tue, Apr 7, 2020 at 9:28 PM Andre Valentin <avalentin@marcant.net> w=
rote:
>>
>> Am 07.04.20 um 20:05 schrieb Sergio Paracuellos:
>>> Hi,
>>>
>>> On Tue, Apr 7, 2020 at 12:16 PM Chuanhong Guo <gch981213@gmail.com> w=
rote:
>>>>
>>>> [CC Sergio who worked on upstream PCIE driver]
>>>>
>>>> On Tue, Apr 7, 2020 at 4:45 PM Andre Valentin <avalentin@marcant.net=
> wrote:
>>>>>
>>>>> Hi!
>>>>>
>>>>> Currently I'm having some serious problems with the new 5.4 port.
>>>>> 1) PCIe
>>>>> I'm developing on the ZyXEL LTE3301-PLUS. It has PCIe and a mt7615e=
 connected to second bus on the first phy.
>>>>> If booting the device, kernel hangs with a RST message, telling the=
 device is not detected. It seems the PCIe bus 1
>>>>> cannot be reseted because nothing is connected to bus 0.
>>>>> An upport of the old PCI driver reenables the function. I can provi=
de more logs on this if needed.
>>>
>>> Logs and dmesg traces are always welcome and would be helpful. Both
>>> working and not working traces.
>>
>> Of course, here we go with the old PCIe driver taken from 4.14 openwrt=
 kernel:
>> [    0.485729] pinctrl core: add 0 pinctrl maps
>> [    0.485865] pull PCIe RST: RALINK_RSTCTRL =3D 4000000
>> [    0.796015] release PCIe RST: RALINK_RSTCTRL =3D 7000000
>> [    0.806088] ***** Xtal 40MHz *****
>> [    0.812829] release PCIe RST: RALINK_RSTCTRL =3D 7000000
>> [    0.823025] Port 0 N_FTS =3D 1b102800
>> [    0.829933] Port 1 N_FTS =3D 1b105000
>> [    0.836849] Port 2 N_FTS =3D 1b102800
>> [    1.995991] PCIE0 no card, disable it(RST&CLK)
>> [    2.004682] PCIE2 no card, disable it(RST&CLK)
>> [    2.013495]  -> 20107f2
>> [    2.018328] PCIE1 enabled
>> [    2.023532] PCI host bridge /pcie@1e140000 ranges:
>> [    2.033045]  MEM 0x0000000060000000..0x000000006fffffff
>> [    2.043401]   IO 0x000000001e160000..0x000000001e16ffff
>> [    2.053762] PCI coherence region base: 0xbfbf8000, mask/settings: 0=
x60000000
>> [    2.091056] PCI host bridge to bus 0000:00
>> [    2.099131] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6f=
ffffff]
>> [    2.112734] pci_bus 0000:00: root bus resource [io  0xffffffff]
>> [    2.124486] pci_bus 0000:00: root bus resource [??? 0x00000000 flag=
s 0x0]
>> [    2.137962] pci_bus 0000:00: No busn resource found for root bus, w=
ill use [bus 00-ff]
>> [    2.153766] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
>> [    2.165651] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]=

>> [    2.178057] pci 0000:00:00.0: reg 0x14: [mem 0x60100000-0x6010ffff]=

>> [    2.190585] pci 0000:00:00.0: supports D1
>> [    2.198439] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>> [    2.211463] random: fast init done
>> [    2.211838] pci 0000:01:00.0: [14c3:7615] type 00 class 0x000280
>> [    2.230071] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x000fffff =
64bit]
>> [    2.243675] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidth, =
limited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s with 5=
 GT/s x1 link)
>> [    2.272296] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated t=
o 01
>> [    2.285339] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated t=
o 01
>> [    2.298493] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000=
000]
>> [    2.311581] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x8=
0000000]
>> [    2.325410] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x600=
fffff]
>> [    2.338888] pci 0000:00:00.0: BAR 1: assigned [mem 0x60100000-0x601=
0ffff]
>> [    2.352376] pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x600=
fffff 64bit]
>> [    2.366887] pci 0000:00:00.0: PCI bridge to [bus 01]
>> [    2.376728] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600=
fffff]
>>
>>
>> And this is on 5.4 with the new driver with pcie0 status=3Ddisabled:
>> [   30.464407] mt7621-pci 1e140000.pcie: GPIO lookup for consumer rese=
t
>> [   30.464415] mt7621-pci 1e140000.pcie: using device tree for GPIO lo=
okup
>> [   30.464474] mt7621-pci 1e140000.pcie: using lookup tables for GPIO =
lookup
>> [   30.464484] mt7621-pci 1e140000.pcie: No GPIO consumer reset found
>> [   30.664239] mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RS=
T & CLK)
>> [   30.678128] mt7621-pci 1e140000.pcie: Nothing is connected in virtu=
al bridges. Exiting...
>> booting goes on.
>>
>> And with pcie status=3Denabled:
>> [   32.415863] rt2880-pinmux pinctrl: pcie is already enabled
>> [   32.426821] mt7621-pci 1e140000.pcie: Error applying setting, rever=
se things back
>> [   32.441900] mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (d=
ual port =3D 1)
>> [   32.456880] mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (d=
ual port =3D 0)
>> [   32.571556] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>> [   32.582680] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>> [   32.693592] mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RS=
T & CLK)
>> hangs.
>=20
> I think the problem here is that upstream driver use two phy's nodes
> with pcie-phy0 being a dual ported one.
> Because there is nothing connected in pcie0 the phy is just stopped
> assuming nothing will be connected also in pcie1.
> Just to see if that is the problem, can you please patch the
> 'mt7621_pcie_init_ports' function and comment the following piece of
> code:
>=20
> if (slot !=3D 1)
>      phy_power_off(port->phy);
>=20
> Let's see what happens.

Hmm, that did the trick:
[   30.444228] rt2880-pinmux pinctrl: found group selector 6 for pcie
[   30.444249] rt2880-pinmux pinctrl: request pin 19 (io19) for 1e140000.=
pcie
[   30.444396] mt7621-pci 1e140000.pcie: Parsing DT failed
[   32.403940] rt2880-pinmux pinctrl: found group selector 6 for pcie
[   32.403963] rt2880-pinmux pinctrl: request pin 19 (io19) for 1e140000.=
pcie
[   32.403977] rt2880-pinmux pinctrl: pcie is already enabled
[   32.414931] mt7621-pci 1e140000.pcie: Error applying setting, reverse =
things back
[   32.430012] mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (dual=
 port =3D 1)
[   32.444754] mt7621-pci 1e140000.pcie: GPIO lookup for consumer reset
[   32.444763] mt7621-pci 1e140000.pcie: using device tree for GPIO looku=
p
[   32.444811] of_get_named_gpiod_flags: parsed 'reset-gpios' property of=
 node '/pcie@1e140000[0]' - status (0)
[   32.444875] mt7621-pci 1e140000.pcie: GPIO lookup for consumer reset
[   32.444883] mt7621-pci 1e140000.pcie: using device tree for GPIO looku=
p
[   32.444906] of_get_named_gpiod_flags: can't parse 'reset-gpios' proper=
ty of node '/pcie@1e140000[1]'
[   32.444924] of_get_named_gpiod_flags: can't parse 'reset-gpio' propert=
y of node '/pcie@1e140000[1]'
[   32.444935] mt7621-pci 1e140000.pcie: using lookup tables for GPIO loo=
kup
[   32.444945] mt7621-pci 1e140000.pcie: No GPIO consumer reset found
[   32.445011] mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (dual=
 port =3D 0)
[   32.459753] mt7621-pci 1e140000.pcie: GPIO lookup for consumer reset
[   32.459761] mt7621-pci 1e140000.pcie: using device tree for GPIO looku=
p
[   32.459791] of_get_named_gpiod_flags: can't parse 'reset-gpios' proper=
ty of node '/pcie@1e140000[2]'
[   32.459808] of_get_named_gpiod_flags: can't parse 'reset-gpio' propert=
y of node '/pcie@1e140000[2]'
[   32.459818] mt7621-pci 1e140000.pcie: using lookup tables for GPIO loo=
kup
[   32.459826] mt7621-pci 1e140000.pcie: No GPIO consumer reset found
[   32.559695] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
[   32.570819] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
[   32.681732] mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST &=
 CLK)
[   32.695603] mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST &=
 CLK)
[   32.709477] mt7621-pci 1e140000.pcie: PCIE1 enabled
[   32.719207] mt7621-pci 1e140000.pcie: PCI coherence region base: 0x600=
00000, mask/settings: 0xf0000002
[   32.737964] mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
[   32.750653] pci_bus 0000:00: root bus resource [io  0x1e160000-0x1e16f=
fff]
[   32.764358] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6ffff=
fff]
[   32.778073] pci_bus 0000:00: root bus resource [bus 00-ff]
[   32.789053] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
[   32.801064] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   32.813561] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   32.826152] pci 0000:00:00.0: supports D1
[   32.834144] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[   32.846953] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00=
]), reconfiguring
[   32.863173] pci 0000:01:00.0: [14c3:7615] type 00 class 0x000280
[   32.875209] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x000fffff 64b=
it]
[   32.888911] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidth, lim=
ited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s with 5 GT=
/s x1 link)
[   32.917782] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
[   32.928208] pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
[   32.940355] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fff=
ff]
[   32.953890] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fff=
ff pref]
[   32.968289] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 0=
1
[   32.981535] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000=
]
[   32.994721] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x8000=
0000]
[   33.008598] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x600fff=
ff]
[   33.022134] pci 0000:00:00.0: BAR 9: assigned [mem 0x60100000-0x601fff=
ff pref]
[   33.036535] pci 0000:00:00.0: BAR 1: assigned [mem 0x60200000-0x6020ff=
ff]
[   33.050082] pci 0000:00:00.0: BAR 7: assigned [io  0x1e160000-0x1e160f=
ff]
[   33.063622] pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x600fff=
ff 64bit]
[   33.078208] pci 0000:00:00.0: PCI bridge to [bus 01]
[   33.088106] pci 0000:00:00.0:   bridge window [io  0x1e160000-0x1e160f=
ff]
[   33.101640] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600fff=
ff]
[   33.115169] pci 0000:00:00.0:   bridge window [mem 0x60100000-0x601fff=
ff pref]
[   45.990931] pci 0000:00:00.0: enabling device (0004 -> 0007)


It works, yeah! But what now? Do you fix the driver? When I can help/test=
 ..

Thanks,

Andr=C3=A9


--------------ms030408020701020706010000
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
oIICRTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA0MDgw
NzEzMDNaMC8GCSqGSIb3DQEJBDEiBCCxCkUYhzhC+zp8LYy1FJiLEoYq+PMXs3W4HZvf5tBY
kzBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMC
AgEoMIGzBgkrBgEEAYI3EAQxgaUwgaIwgY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJn
YW1vMRkwFwYDVQQHDBBQb250ZSBTYW4gUGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5B
Li8wMzM1ODUyMDk2NzEsMCoGA1UEAwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24g
Q0EgRzICEHUXc/pcZ5UbYhNI1ws2ljYwgbUGCyqGSIb3DQEJEAILMYGloIGiMIGNMQswCQYD
VQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEj
MCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMg
Q2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3
DQEBAQUABIIBAEsYJtZuYU4DI3t0qFuq5xC/GS7S/nKYRys3CytYngARwFvQnLFxIdmL3SEH
dSQ77DQcYLeid2ycUv7GitdZqytAwzYnoJrNBwALIbDOZqUH6Evb0o+twjHudyJ2WaVOGJdH
t4Jm/FX4+okUcjt/vv2IjTHBHhEPt4lNmz2Vs0KApEF8snjMvyZcShc4LmbjvFEoMrHulvEC
sAYO6MyDUtzfx845/EeFM45evpeZ0J3pK4wRtjkhHGFZ0E8Qbbf5xATeNsECqEGMbVEUE23r
359MUn8EpFDKzHaHqY+c27INOfOJO/26uiELZIdtr4KVn4vIEWCJ0wyuAQb9revlZMIAAAAA
AAA=
--------------ms030408020701020706010000--


--===============6595747272798261432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6595747272798261432==--

