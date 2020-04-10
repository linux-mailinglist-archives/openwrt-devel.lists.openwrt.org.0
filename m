Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 255961A463D
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 14:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4IldSGgCShoARFiHituwqwq8LyXXV0LcrY9XF53BC1c=; b=W3ZIgj1G+svwxYiMqEzK2gD6a
	rimiktEmaipVX3Bsq7It2wmH5P+X/zckcpFNNvgCw9t4V6ZHaU9aEDf7YdbuhNSMLuHkr0h2OWKix
	1xaqt04pMSPLGfmeEBd+aZLCVE0JEZi5J/Yq7DvmENInmJvkXpTLraQDrX8k8vuqBgL8UBkubTuA8
	PWHolSq6aO7HDFqciynsygk0981tWmoUM4fOXfReM8bAO64cwU9AhXPixgAXJ3IAWijgiRSZX6GvD
	giS7io8Qh2wLd5maTMOjpTrIlMAtoTLCe5+IVMDZG0XF4YoCvUmrmGgwbXBm5VnO3dLRq3tSqh0y7
	rZXZW226A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsmX-0005jR-Jl; Fri, 10 Apr 2020 12:29:13 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsmP-0005ip-8v
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 12:29:08 +0000
Received: from [192.168.180.1] (port=57942 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jMsmA-0003ax-1h; Fri, 10 Apr 2020 14:28:50 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id 8AB3F282094;
 Fri, 10 Apr 2020 14:28:49 +0200 (CEST)
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <CAMhs-H_VWuxyFF7v9YaJaF1FJ-C-HSD9nS93mTd58RwrRMEtbA@mail.gmail.com>
 <74f5cecc-4fa3-92e9-bd40-193f6c939536@marcant.net>
 <CAMhs-H9Q75v15sXQq_-p=9u6SoH5dmSk9sFaMceCa3ggXSREdg@mail.gmail.com>
 <1a6773cf-681d-be6d-3fbe-ff3f84ef39a9@marcant.net>
 <CAMhs-H9vp4kS_JG5WA_L+A4xbMFMF-vvzM0=MWVvp7E+qmVe+A@mail.gmail.com>
 <CAMhs-H_7xp8c1Qno3KpghnZxTF3v4thqXdjvRXKFj+jDvXk_bw@mail.gmail.com>
 <CAMhs-H8V2LPQqz-gyq6RuPtL8VOtT=ZXShx6o9O_fOPdBJga8g@mail.gmail.com>
 <CAMhs-H9qJwf1-Rp+z0Sgkmv_gANOspsF6qheG5M4u7Gy5o=vMw@mail.gmail.com>
 <80e7f567-60b1-940f-2e6a-51df7fba77ec@marcant.net>
 <CAMhs-H82f_2GQyk3mvdEtbh7NHT8+joyUZU1cy-5w3+vuqYAvw@mail.gmail.com>
 <c230b4c4-5efc-78f5-0598-feb531bb106b@marcant.net>
 <CAMhs-H8fHQgbRoxSym3stNydTbDbdH1GcSVW4Q4Ahws=wWkg5Q@mail.gmail.com>
 <fabde001-3006-7bff-3c5f-e3ddd6dbcad9@marcant.net>
 <CAMhs-H9D4YpfHWW_wJN618Jy9bzZhfA2s5cLJM_L3fmFzpt+Vw@mail.gmail.com>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <1b47e10f-d681-97fc-7700-31233aa364dc@marcant.net>
Date: Fri, 10 Apr 2020 14:28:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAMhs-H9D4YpfHWW_wJN618Jy9bzZhfA2s5cLJM_L3fmFzpt+Vw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_052905_769306_5CC38224 
X-CRM114-Status: GOOD (  12.25  )
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6777712995837616138=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============6777712995837616138==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms070004060109030005010602"

This is a cryptographically signed message in MIME format.

--------------ms070004060109030005010602
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sergio

Am 10.04.20 um 13:36 schrieb Sergio Paracuellos:
>> cat /proc/interrupts new:
>>            CPU0       CPU1       CPU2       CPU3
>>   8:      75188      75268      75341      75246  MIPS GIC Local   1  =
timer
>>   9:      24413          0          0          0  MIPS GIC  63  IPI ca=
ll
>>  10:          0       4442          0          0  MIPS GIC  64  IPI ca=
ll
>>  11:          0          0      33324          0  MIPS GIC  65  IPI ca=
ll
>>  12:          0          0          0       4574  MIPS GIC  66  IPI ca=
ll
>>  13:       3424          0          0          0  MIPS GIC  67  IPI re=
sched
>>  14:          0       4124          0          0  MIPS GIC  68  IPI re=
sched
>>  15:          0          0       3974          0  MIPS GIC  69  IPI re=
sched
>>  16:          0          0          0       4150  MIPS GIC  70  IPI re=
sched
>>  17:          0          0          0          0  MIPS GIC  19  1e0006=
00.gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
>>  19:        829          0          0          0  MIPS GIC  33  ttyS0
>>  20:          0          0          0          0  MIPS GIC  29  xhci-h=
cd:usb1
>>  21:        817          0          0          0  MIPS GIC  10  1e1000=
00.ethernet
>>  23:          0          0          0          0  MIPS GIC  11  mt7615=
e
>> ERR:          1
>>
>>
>> cat /proc/interrupts old:
>>
>>            CPU0       CPU1       CPU2       CPU3
>>   8:      25513      25556      25674      25681  MIPS GIC Local   1  =
timer
>>   9:      23603          0          0          0  MIPS GIC  63  IPI ca=
ll
>>  10:          0       4383          0          0  MIPS GIC  64  IPI ca=
ll
>>  11:          0          0      32117          0  MIPS GIC  65  IPI ca=
ll
>>  12:          0          0          0       4189  MIPS GIC  66  IPI ca=
ll
>>  13:       3428          0          0          0  MIPS GIC  67  IPI re=
sched
>>  14:          0       4144          0          0  MIPS GIC  68  IPI re=
sched
>>  15:          0          0       3812          0  MIPS GIC  69  IPI re=
sched
>>  16:          0          0          0       3769  MIPS GIC  70  IPI re=
sched
>>  17:          0          0          0          0  MIPS GIC  19  1e0006=
00.gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
>>  19:       1022          0          0          0  MIPS GIC  33  ttyS0
>>  20:          0          0          0          0  MIPS GIC  29  xhci-h=
cd:usb1
>>  21:        269          0          0          0  MIPS GIC  10  1e1000=
00.ethernet
>>  24:       1131          0          0          0  MIPS GIC  31  mt7615=
e
>> ERR:          0
>> =3D> Interesting, different interrupts.
>=20
> That's weird. Should be the same, AFAICT.
> Needs some investigation but looks like you are not getting interrupts
> at all according to these traces...
>=20
> Looking into my gnubee I got also 23, 24 and 25.
>=20
> # cat /proc/interrupts
>            CPU0       CPU1       CPU2       CPU3
>   7:          0          0          0          0      MIPS   7  timer
>   8:       3537       3346       3296       3351  MIPS GIC Local   1  t=
imer
>   9:       3025          0          0          0  MIPS GIC  63  IPI cal=
l
>  10:          0       1209          0          0  MIPS GIC  64  IPI cal=
l
>  11:          0          0       2805          0  MIPS GIC  65  IPI cal=
l
>  12:          0          0          0       1200  MIPS GIC  66  IPI cal=
l
>  13:       1428          0          0          0  MIPS GIC  67  IPI res=
ched
>  14:          0       4136          0          0  MIPS GIC  68  IPI res=
ched
>  15:          0          0        872          0  MIPS GIC  69  IPI res=
ched
>  16:          0          0          0        666  MIPS GIC  70  IPI res=
ched
>  17:          0          0          0          0  MIPS GIC  19
> 1e000600.gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
>  18:        138          0          0          0  MIPS GIC  33  ttyS0
>  19:          0          0          0          0  MIPS GIC  27  1e13000=
0.sdhci
>  20:         26          0          0          0  MIPS GIC  29  xhci-hc=
d:usb1
>  21:          7          0          0          0  MIPS GIC  10
> 1e100000.ethernet
>  23:          0          0          0          0  MIPS GIC  11
> ahci[0000:01:00.0]
>  24:          0          0          0          0  MIPS GIC  31
> ahci[0000:02:00.0]
>  25:        279          0          0          0  MIPS GIC  32
> ahci[0000:03:00.0]
>  26:          0          0          0          0  1e000600.gpio  18  re=
set
> ERR:          0
>=20
>=20
>>
>> Diff DTS old to new driver:
>> diff --git b/target/linux/ramips/dts/mt7621.dtsi a/target/linux/ramips=
/dts/mt7621.dtsi
>> index 0bf1069b5c..63befa1fdc 100644
>> --- b/target/linux/ramips/dts/mt7621.dtsi
>> +++ a/target/linux/ramips/dts/mt7621.dtsi
>> @@ -557,9 +550,10 @@
>>
>>         pcie: pcie@1e140000 {
>>                 compatible =3D "mediatek,mt7621-pci";
>> -               reg =3D <0x1e140000 0x100
>> -                       0x1e142000 0x100>;
>> -
>> +               reg =3D <0x1e140000 0x100     /* host-pci bridge regis=
ters */
>> +                       0x1e142000 0x100    /* pcie port 0 RC control =
registers */
>> +                       0x1e143000 0x100    /* pcie port 1 RC control =
registers */
>> +                       0x1e144000 0x100>;  /* pcie port 2 RC control =
registers */
>>                 #address-cells =3D <3>;
>>                 #size-cells =3D <2>;
>>
>> @@ -574,10 +568,11 @@
>>                         0x01000000 0 0x00000000 0x1e160000 0 0x0001000=
0 /* io space */
>>                 >;
>>
>> -               interrupt-parent =3D <&gic>;
>> -               interrupts =3D <GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH
>> -                               GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
>> -                               GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
>> +               #interrupt-cells =3D <1>;
>> +               interrupt-map-mask =3D <0xF0000 0 0 1>;
>> +               interrupt-map =3D <0x10000 0 0 1 &gic GIC_SHARED 4 IRQ=
_TYPE_LEVEL_HIGH>,
>> +                               <0x20000 0 0 1 &gic GIC_SHARED 24 IRQ_=
TYPE_LEVEL_HIGH>,
>> +                               <0x30000 0 0 1 &gic GIC_SHARED 25 IRQ_=
TYPE_LEVEL_HIGH>;
>>
>>                 status =3D "disabled";
>=20
> New driver uses common:
>=20
> host->map_irq =3D of_irq_parse_and_map_pci;
> host->swizzle_irq =3D pci_common_swizzle;
>=20
> instead of pcibios_map_irq stuff... Because you are only using slot 1
> maybe if slot 0 is not in use we have to map the irq in slot 0 into
> the slot 1...
>=20
> Does these changes makes the job for you?=20
No, it does not work. Again I get this:
root@OpenWrt:/# cat /proc/interrupts
           CPU0       CPU1       CPU2       CPU3
  8:      10317      10061      10366      10342  MIPS GIC Local   1  tim=
er
  9:      10946          0          0          0  MIPS GIC  63  IPI call
 10:          0       1973          0          0  MIPS GIC  64  IPI call
 11:          0          0      24992          0  MIPS GIC  65  IPI call
 12:          0          0          0       2087  MIPS GIC  66  IPI call
 13:       1795          0          0          0  MIPS GIC  67  IPI resch=
ed
 14:          0       2072          0          0  MIPS GIC  68  IPI resch=
ed
 15:          0          0       1883          0  MIPS GIC  69  IPI resch=
ed
 16:          0          0          0       1920  MIPS GIC  70  IPI resch=
ed
 17:          0          0          0          0  MIPS GIC  19  1e000600.=
gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
 19:        149          0          0          0  MIPS GIC  33  ttyS0
 20:          0          0          0          0  MIPS GIC  29  xhci-hcd:=
usb1
 21:         10          0          0          0  MIPS GIC  10  1e100000.=
ethernet
 23:          0          0          0          0  MIPS GIC  11  mt7615e
ERR:          1

Shouldn't at least be something about pci interrupts here?
root@OpenWrt:/sys/kernel/debug/pinctrl/pinctrl-rt2880-pinmux# cat *
GPIO ranges handled:
registered pin groups:
group: uart1
pin 1 (io1)
pin 2 (io2)

group: i2c
pin 3 (io3)
pin 4 (io4)

group: uart3
pin 5 (io5)
pin 6 (io6)
pin 7 (io7)
pin 8 (io8)

group: uart2
pin 9 (io9)
pin 10 (io10)
pin 11 (io11)
pin 12 (io12)

group: jtag
pin 13 (io13)
pin 14 (io14)
pin 15 (io15)
pin 16 (io16)
pin 17 (io17)

group: wdt
pin 18 (io18)

group: pcie
pin 19 (io19)

group: mdio
pin 20 (io20)
pin 21 (io21)

group: rgmii2
pin 22 (io22)
pin 23 (io23)
pin 24 (io24)
pin 25 (io25)
pin 26 (io26)
pin 27 (io27)
pin 28 (io28)
pin 29 (io29)
pin 30 (io30)
pin 31 (io31)
pin 32 (io32)
pin 33 (io33)

group: spi
pin 34 (io34)
pin 35 (io35)
pin 36 (io36)
pin 37 (io37)
pin 38 (io38)
pin 39 (io39)
pin 40 (io40)

group: sdhci
pin 41 (io41)
pin 42 (io42)
pin 43 (io43)
pin 44 (io44)
pin 45 (io45)
pin 46 (io46)
pin 47 (io47)
pin 48 (io48)

group: rgmii1
pin 49 (io49)
pin 50 (io50)
pin 51 (io51)
pin 52 (io52)
pin 53 (io53)
pin 54 (io54)
pin 55 (io55)
pin 56 (io56)
pin 57 (io57)
pin 58 (io58)
pin 59 (io59)
pin 60 (io60)

function: gpio, groups =3D [ uart1 i2c uart3 uart2 jtag wdt pcie mdio rgm=
ii2 spi sdhci rgmii1 ]
function: uart1, groups =3D [ uart1 ]
function: i2c, groups =3D [ i2c ]
function: uart3, groups =3D [ uart3 ]
function: i2s, groups =3D [ uart3 ]
function: spdif3, groups =3D [ uart3 ]
function: uart2, groups =3D [ uart2 ]
function: pcm, groups =3D [ uart2 ]
function: spdif2, groups =3D [ uart2 ]
function: jtag, groups =3D [ jtag ]
function: wdt rst, groups =3D [ wdt ]
function: wdt refclk, groups =3D [ wdt ]
function: pcie rst, groups =3D [ pcie ]
function: pcie refclk, groups =3D [ pcie ]
function: mdio, groups =3D [ mdio ]
function: rgmii2, groups =3D [ rgmii2 ]
function: spi, groups =3D [ spi ]
function: nand1, groups =3D [ spi ]
function: sdhci, groups =3D [ sdhci ]
function: nand2, groups =3D [ sdhci ]
function: rgmii1, groups =3D [ rgmii1 ]
Pinmux settings per pin
Format: pin (name): mux_owner gpio_owner hog?
pin 0 (io0): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 1 (io1): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 2 (io2): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 3 (io3): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 4 (io4): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 5 (io5): pinctrl (GPIO UNCLAIMED) function gpio group uart3
pin 6 (io6): pinctrl (GPIO UNCLAIMED) function gpio group uart3
pin 7 (io7): pinctrl (GPIO UNCLAIMED) function gpio group uart3
pin 8 (io8): pinctrl (GPIO UNCLAIMED) function gpio group uart3
pin 9 (io9): pinctrl (GPIO UNCLAIMED) function gpio group uart2
pin 10 (io10): pinctrl (GPIO UNCLAIMED) function gpio group uart2
pin 11 (io11): pinctrl (GPIO UNCLAIMED) function gpio group uart2
pin 12 (io12): pinctrl (GPIO UNCLAIMED) function gpio group uart2
pin 13 (io13): pinctrl (GPIO UNCLAIMED) function gpio group jtag
pin 14 (io14): pinctrl (GPIO UNCLAIMED) function gpio group jtag
pin 15 (io15): pinctrl (GPIO UNCLAIMED) function gpio group jtag
pin 16 (io16): pinctrl (GPIO UNCLAIMED) function gpio group jtag
pin 17 (io17): pinctrl (GPIO UNCLAIMED) function gpio group jtag
pin 18 (io18): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 19 (io19): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 20 (io20): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 21 (io21): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 22 (io22): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 23 (io23): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 24 (io24): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 25 (io25): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 26 (io26): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 27 (io27): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 28 (io28): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 29 (io29): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 30 (io30): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 31 (io31): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 32 (io32): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 33 (io33): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
pin 34 (io34): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 35 (io35): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 36 (io36): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 37 (io37): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 38 (io38): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 39 (io39): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 40 (io40): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 41 (io41): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 42 (io42): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 43 (io43): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 44 (io44): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 45 (io45): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 46 (io46): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 47 (io47): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 48 (io48): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 49 (io49): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 50 (io50): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 51 (io51): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 52 (io52): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 53 (io53): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 54 (io54): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 55 (io55): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 56 (io56): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 57 (io57): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 58 (io58): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 59 (io59): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 60 (io60): (MUX UNCLAIMED) (GPIO UNCLAIMED)
registered pins: 61
pin 0 (io0)
pin 1 (io1)
pin 2 (io2)
pin 3 (io3)
pin 4 (io4)
pin 5 (io5)
pin 6 (io6)
pin 7 (io7)
pin 8 (io8)
pin 9 (io9)
pin 10 (io10)
pin 11 (io11)
pin 12 (io12)
pin 13 (io13)
pin 14 (io14)
pin 15 (io15)
pin 16 (io16)
pin 17 (io17)
pin 18 (io18)
pin 19 (io19)
pin 20 (io20)
pin 21 (io21)
pin 22 (io22)
pin 23 (io23)
pin 24 (io24)
pin 25 (io25)
pin 26 (io26)
pin 27 (io27)
pin 28 (io28)
pin 29 (io29)
pin 30 (io30)
pin 31 (io31)
pin 32 (io32)
pin 33 (io33)
pin 34 (io34)
pin 35 (io35)
pin 36 (io36)
pin 37 (io37)
pin 38 (io38)
pin 39 (io39)
pin 40 (io40)
pin 41 (io41)
pin 42 (io42)
pin 43 (io43)
pin 44 (io44)
pin 45 (io45)
pin 46 (io46)
pin 47 (io47)
pin 48 (io48)
pin 49 (io49)
pin 50 (io50)
pin 51 (io51)
pin 52 (io52)
pin 53 (io53)
pin 54 (io54)
pin 55 (io55)
pin 56 (io56)
pin 57 (io57)
pin 58 (io58)
pin 59 (io59)
pin 60 (io60)


Puh, not easy.
I do not know how to thank you four your effort!

Kind regards,

Andr=C3=A9



>diff --git
> a/drivers/staging/mt7621-pci/pci-mt7621.c
> b/drivers/staging/mt7621-pci/pci-mt7621.c
> index b9d460a9c041..11c46f955745 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -122,6 +122,7 @@ struct mt7621_pcie_port {
>   * @ports: pointer to PCIe port information
>   * @resets_inverted: depends on chip revision
>   * reset lines are inverted.
> + * @link_status: link status of pcie device.
>   */
>  struct mt7621_pcie {
>         void __iomem *base;
> @@ -136,6 +137,7 @@ struct mt7621_pcie {
>         unsigned long io_map_base;
>         struct list_head ports;
>         bool resets_inverted;
> +       u32 link_status;
>  };
>=20
>  static inline u32 pcie_read(struct mt7621_pcie *pcie, u32 reg)
> @@ -279,6 +281,24 @@ static void setup_cm_memory_region(struct
> mt7621_pcie *pcie)
>         }
>  }
>=20
> +static int mt7621_map_irq(const struct pci_dev *pdev, u8 slot, u8 pin)=

> +{
> +       struct mt7621_pcie *pcie =3D pdev->bus->sysdata;
> +       int irq_map[PCIE_P2P_MAX];
> +       int n, i;
> +
> +       /* Assign IRQs */
> +       n =3D 0;
> +       for (i =3D 0; i < PCIE_P2P_MAX; i++)
> +               if (pcie->link_status & BIT(i))
> +                       irq_map[n++] =3D of_irq_parse_and_map_pci(pdev,=

> slot, pin);
> +
> +       for (i =3D n; i < PCIE_P2P_MAX; i++)
> +               irq_map[i] =3D -1;
> +
> +       return irq_map[slot];
> +}
> +
>  static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *=
pcie)
>  {
>         struct device *dev =3D pcie->dev;
> @@ -583,29 +603,29 @@ static void mt7621_pcie_enable_ports(struct
> mt7621_pcie *pcie)
>=20
>  static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
>  {
> -       u32 pcie_link_status =3D 0;
>         u32 n;
>         int i;
>         u32 p2p_br_devnum[PCIE_P2P_MAX];
>         struct mt7621_pcie_port *port;
>=20
> +       pcie->link_status =3D 0;
>         list_for_each_entry(port, &pcie->ports, list) {
>                 u32 slot =3D port->slot;
>=20
>                 if (port->enabled)
> -                       pcie_link_status |=3D BIT(slot);
> +                       pcie->link_status |=3D BIT(slot);
>         }
>=20
> -       if (pcie_link_status =3D=3D 0)
> +       if (pcie->link_status =3D=3D 0)
>                 return -1;
>=20
>         n =3D 0;
>=20
>=20
>=20
>>
>> @@ -585,32 +580,45 @@
>>                 reset-names =3D "pcie0", "pcie1", "pcie2";
>>                 clocks =3D <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
>>                 clock-names =3D "pcie0", "pcie1", "pcie2";
>> +               phys =3D <&pcie0_phy 1>, <&pcie2_phy 0>;
>> +               phy-names =3D "pcie-phy0", "pcie-phy2";
>> +
>> +               reset-gpios =3D <&gpio 19 GPIO_ACTIVE_LOW>;
>>
>>                 pcie0: pcie@0,0 {
>>                         reg =3D <0x0000 0 0 0 0>;
>> -
>>                         #address-cells =3D <3>;
>>                         #size-cells =3D <2>;
>> -
>>                         ranges;
>> +                       bus-range =3D <0x00 0xff>;
>>                 };
>>
>>                 pcie1: pcie@1,0 {
>>                         reg =3D <0x0800 0 0 0 0>;
>> -
>>                         #address-cells =3D <3>;
>>                         #size-cells =3D <2>;
>> -
>>                         ranges;
>> +                       bus-range =3D <0x00 0xff>;
>>                 };
>>
>>                 pcie2: pcie@2,0 {
>>                         reg =3D <0x1000 0 0 0 0>;
>> -
>>                         #address-cells =3D <3>;
>>                         #size-cells =3D <2>;
>> -
>>                         ranges;
>> +                       bus-range =3D <0x00 0xff>;
>>                 };
>>         };
>> +
>> +       pcie0_phy: pcie-phy@1e149000 {
>> +               compatible =3D "mediatek,mt7621-pci-phy";
>> +               reg =3D <0x1e149000 0x0700>;
>> +               #phy-cells =3D <1>;
>> +       };
>> +
>> +       pcie2_phy: pcie-phy@1e14a000 {
>> +               compatible =3D "mediatek,mt7621-pci-phy";
>> +               reg =3D <0x1e14a000 0x0700>;
>> +               #phy-cells =3D <1>;
>> +       };
>>  };
>>
>> Why are the interupts mapped a different way? I do not understand that=
=2E
>>
>> Kind regards,
>>
>> Andr=C3=A9
>=20
> Best regards,
>     Sergio Paracuellos
>=20

=C2=A0



--------------ms070004060109030005010602
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
oIICRTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA0MTAx
MjI4NDlaMC8GCSqGSIb3DQEJBDEiBCBiolAr0xM7pGaUruzFzDGsajd4wuUUWZQS6gaNfD7E
GDBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMC
AgEoMIGzBgkrBgEEAYI3EAQxgaUwgaIwgY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJn
YW1vMRkwFwYDVQQHDBBQb250ZSBTYW4gUGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5B
Li8wMzM1ODUyMDk2NzEsMCoGA1UEAwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24g
Q0EgRzICEHUXc/pcZ5UbYhNI1ws2ljYwgbUGCyqGSIb3DQEJEAILMYGloIGiMIGNMQswCQYD
VQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEj
MCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMg
Q2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3
DQEBAQUABIIBAGsQMEfLfD71tes3xzrZXe5Y/KW0iyd8NZMqSziqpPqVYeujJ+qD0BZ420He
a0KOPO4Rak8Y1pQbYeDr2nvaZ4IHEJxSjYPUODcntuX2AnNpDpfDYYjYZiQECGnzOLGY6rsP
6Gc5pME0fQ4OeV7Ytf5XcWnTk7+/er29NvG0xwVJfPGEPdd7h3Sv/rrcApwjq3tpRh4ewXit
FWZ9matb0gpGntDtcMg4aqQFlOOVqpBWqxFvZJ1lMTeZWD+jFX755FxCEGx6+VJmUSP6kS9N
LIgf5fADzteTEt2iQ9TQCEda1Infh4FqgOT93y5l5mor56pjgrbQM/bKrEciDY6msDcAAAAA
AAA=
--------------ms070004060109030005010602--


--===============6777712995837616138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6777712995837616138==--

