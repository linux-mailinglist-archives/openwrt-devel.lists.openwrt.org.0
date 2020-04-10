Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431F51A45C3
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 13:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b7mvaEPnFcRzESM/C4Jsyg+zvnI99tBkB88gWHPXo+4=; b=ntuZKt/EMvBSeyGzXsSuQoK+U
	9TF8BvrmBxCi8EzyUzSGcMBrLqL08QzKzoTRCjmzchlzthpcmaMry8imh/SgeKkQbh1lcXne3Px9/
	ZLtGTBAw1VavCnmiFs/M2LKHjUkbzUmXPLjgWsOJ9Rc4yMQ+3LDwyLYJpeqmIL4MfviyhQRrKAhvi
	vpqMf0tyH9y2AfQn9FL0UU5PtxuRtHEgT1suwRU+Ph1fz1OUpkDA+Yppx2OFroNRHP/gntbOC9CZz
	cI1DMggvgCBKnvC6iiNwXJ3APISBBK/vtYuOsDkIMKAwmsBfBk2LuUP/sMDLCoZ47xufrHXW6CUOz
	kYHPLu/XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMs0E-0001Xs-9K; Fri, 10 Apr 2020 11:39:18 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMs04-0001XH-Ta
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 11:39:11 +0000
Received: by mail-oi1-x243.google.com with SMTP id q204so1145967oia.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 04:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7XGkfL0ceeZz4PQdVwyyh7G+sN1Qh2E0yekBtkF1c+g=;
 b=TYgHGKZ1VYMWOTsNN4JhW6qi10jKGOC6s3DLJPIwHEA0+d2K9L2RbqmFYJjHVesyX7
 6z8hKMph+HQXAdQsseEYi1tagn2QvuprftQDhI6+08miy/fxWgjiqA6IuUCtNTtCdSu5
 8ngMGdw8HX+Nk9zPuvRAR0x30j5KUSgnhasfvPISnSzRp9uc5K8ftmqLFSXt1ZajA94Y
 3aIM67u0rR1wSbiWl8c5OHYXoe7F4NJBNDwXMS2KWILGDVSIpe5/ef46PtbF7VT6S6Dm
 2A4pctL556HFfNH2l6kKTopHlWnm6umTjDei9pvFUGyOG7vH3e7p2U+pXQTR5F9NP341
 FpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7XGkfL0ceeZz4PQdVwyyh7G+sN1Qh2E0yekBtkF1c+g=;
 b=OZJL8VHsNxaCyG6jqvsnKYBs4wZaKNRiyOYMmfbHQ/AnLtKXLrGt7d8iOQz/KBErQS
 97o5CbnMtUza5V0WoLmGi6RBsFm02XEDQyK+uNdIerCqkGfSX08M8O4OMOx+PaUhJhGi
 8SZrvZsCq8WqJ6gnzjB4/OfWoOse3k8M5afHpz4aWpergR/XcLg0ghec2poyDD9HL2fC
 aMhaIIU5PvmbL8IxTMhqRVTr2t1VuBsn3oH2yta0QK44Y6QDZirYoXJ3qeGPCeoXDQZI
 411iwz6FbJlevbY46q1Bj2cNxifKTpR4baGvn96ZtXfTKdPMsDm9TfzDQa4OSXQ+3NEl
 e+1A==
X-Gm-Message-State: AGi0Pua6R/EJBOTKV8NPkqWe9dIWF3XB7rgeMr+2swUzINuV0N0lkq9U
 ljx7QuQynfGyiUJUeo4kF0GZUnO2gL7X1Us1pVZzWw==
X-Google-Smtp-Source: APiQypJzHMpLwgjUXDoA9ZZMd1R2/fx6cqyCBRahFshgxz5iTxyoXrDoLyv8NG+2ybvyju6Gg6fJA04TfqsmDQIAwus=
X-Received: by 2002:a54:4181:: with SMTP id 1mr3059938oiy.158.1586518746889;
 Fri, 10 Apr 2020 04:39:06 -0700 (PDT)
MIME-Version: 1.0
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
 <80e7f567-60b1-940f-2e6a-51df7fba77ec@marcant.net>
 <CAMhs-H82f_2GQyk3mvdEtbh7NHT8+joyUZU1cy-5w3+vuqYAvw@mail.gmail.com>
 <c230b4c4-5efc-78f5-0598-feb531bb106b@marcant.net>
 <CAMhs-H8fHQgbRoxSym3stNydTbDbdH1GcSVW4Q4Ahws=wWkg5Q@mail.gmail.com>
 <fabde001-3006-7bff-3c5f-e3ddd6dbcad9@marcant.net>
 <CAMhs-H9D4YpfHWW_wJN618Jy9bzZhfA2s5cLJM_L3fmFzpt+Vw@mail.gmail.com>
In-Reply-To: <CAMhs-H9D4YpfHWW_wJN618Jy9bzZhfA2s5cLJM_L3fmFzpt+Vw@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 10 Apr 2020 13:38:55 +0200
Message-ID: <CAMhs-H-8Sc1wDKPypCwsptxUG6AduZ2P_Zwsoba1cT-XUbatWw@mail.gmail.com>
To: Andre Valentin <avalentin@marcant.net>
Content-Type: multipart/mixed; boundary="000000000000569bfd05a2ee2e5f"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_043908_963051_828CF470 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergio.paracuellos[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--000000000000569bfd05a2ee2e5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 1:36 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Andr=C3=A9,
>
> On Fri, Apr 10, 2020 at 11:36 AM Andre Valentin <avalentin@marcant.net> w=
rote:
> >
> > Hi Sergio,
> >
> > the device has an onboard LTE modem. Tonight I noticed that the origini=
al pci driver
> > must have changed some additional GPIO pins.
> > After more testing, I found the GPIO and the LTE device now operates ag=
ain.
>
> Good!
>
> >
> > But after more testing, I found out that the wifi chip does not fully i=
nitialize.
> > new PCI driver:
> > [    0.641632] PCI: CLS 0 bytes, default 32
> > [    1.242280] rt2880-pinmux pinctrl: found group selector 6 for pcie
> > [    1.242302] rt2880-pinmux pinctrl: request pin 19 (io19) for 1e14000=
0.pcie
> > [    1.242447] mt7621-pci 1e140000.pcie: Parsing DT failed
> > [    2.898143] rt2880-pinmux pinctrl: found group selector 6 for pcie
> > [    2.898166] rt2880-pinmux pinctrl: request pin 19 (io19) for 1e14000=
0.pcie
> > [    2.898180] rt2880-pinmux pinctrl: pcie is already enabled
> > [    2.909148] mt7621-pci 1e140000.pcie: Error applying setting, revers=
e things back
> > [    2.924231] mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (du=
al port =3D 1)
> > [    2.938973] mt7621-pci 1e140000.pcie: GPIO lookup for consumer reset
> > [    2.938982] mt7621-pci 1e140000.pcie: using device tree for GPIO loo=
kup
> > [    2.939032] of_get_named_gpiod_flags: parsed 'reset-gpios' property =
of node '/pcie@1e140000[0]' - status (0)
> > [    2.939094] mt7621-pci 1e140000.pcie: GPIO lookup for consumer reset
> > [    2.939102] mt7621-pci 1e140000.pcie: using device tree for GPIO loo=
kup
> > [    2.939120] of_get_named_gpiod_flags: can't parse 'reset-gpios' prop=
erty of node '/pcie@1e140000[1]'
> > [    2.939136] of_get_named_gpiod_flags: can't parse 'reset-gpio' prope=
rty of node '/pcie@1e140000[1]'
> > [    2.939147] mt7621-pci 1e140000.pcie: using lookup tables for GPIO l=
ookup
> > [    2.939157] mt7621-pci 1e140000.pcie: No GPIO consumer reset found
> > [    2.939211] mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (du=
al port =3D 0)
> > [    2.953954] mt7621-pci 1e140000.pcie: GPIO lookup for consumer reset
> > [    2.953962] mt7621-pci 1e140000.pcie: using device tree for GPIO loo=
kup
> > [    2.953985] of_get_named_gpiod_flags: can't parse 'reset-gpios' prop=
erty of node '/pcie@1e140000[2]'
> > [    2.954000] of_get_named_gpiod_flags: can't parse 'reset-gpio' prope=
rty of node '/pcie@1e140000[2]'
> > [    2.954011] mt7621-pci 1e140000.pcie: using lookup tables for GPIO l=
ookup
> > [    2.954019] mt7621-pci 1e140000.pcie: No GPIO consumer reset found
> > [    3.053867] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > [    3.064992] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> > [    3.175896] mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST=
 & CLK)
> > [    3.189768] mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST=
 & CLK)
> > [    3.203643] mt7621-pci 1e140000.pcie: PCIE1 enabled
> > [    3.213373] mt7621-pci 1e140000.pcie: PCI coherence region base: 0x6=
0000000, mask/settings: 0xf0000002
> > [    3.232132] mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> > [    3.244820] pci_bus 0000:00: root bus resource [io  0x1e160000-0x1e1=
6ffff]
> > [    3.258527] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6ff=
fffff]
> > [    3.272233] pci_bus 0000:00: root bus resource [bus 00-ff]
> > [    3.283209] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
> > [    3.295226] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
> > [    3.307723] pci 0000:00:00.0: reg 0x14: [mem 0x60200000-0x6020ffff]
> > [    3.320294] pci 0000:00:00.0: supports D1
> > [    3.328287] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > [    3.341226] pci 0000:01:00.0: [14c3:7615] type 00 class 0x000280
> > [    3.353293] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x000fffff 6=
4bit]
> > [    3.366998] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidth, l=
imited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s with 5 GT=
/s x1 link)
> > [    3.395633] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > [    3.406073] pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
> > [    3.418220] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600f=
ffff]
> > [    3.431784] pci 0000:00:00.0:   bridge window [mem 0x60100000-0x601f=
ffff pref]
> > [    3.446184] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to=
 01
> > [    3.459414] pci 0000:00:00.0: BAR 0: no space for [mem size 0x800000=
00]
> > [    3.472600] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80=
000000]
> > [    3.486479] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x600f=
ffff]
> > [    3.500016] pci 0000:00:00.0: BAR 9: assigned [mem 0x60100000-0x601f=
ffff pref]
> > [    3.514411] pci 0000:00:00.0: BAR 1: assigned [mem 0x60200000-0x6020=
ffff]
> > [    3.527951] pci 0000:00:00.0: BAR 7: assigned [io  0x1e160000-0x1e16=
0fff]
> > [    3.541489] pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x600f=
ffff 64bit]
> > [    3.556077] pci 0000:00:00.0: PCI bridge to [bus 01]
> > [    3.565975] pci 0000:00:00.0:   bridge window [io  0x1e160000-0x1e16=
0fff]
> > [    3.579504] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600f=
ffff]
> > [    3.593037] pci 0000:00:00.0:   bridge window [mem 0x60100000-0x601f=
ffff pref]
> > [   27.217458] pci 0000:00:00.0: enabling device (0006 -> 0007)
> > [   27.217158] mt7615e 0000:01:00.0: no of_node; not parsing pinctrl DT
> > [   27.228879] mt7615e 0000:01:00.0: enabling device (0000 -> 0002)
>
> This trace looks good and correct. Resources are being properly
> assigned and devices
> seems to be properly enabled.
>
> > [   48.339930] mt7615e 0000:01:00.0: Message -16 (seq 1) timeout
> > [   48.351648] mt7615e 0000:01:00.0: Failed to get patch semaphore
>
> This two are obviously wrong....
>
> >
> >
> > Old one:
> >
>
> [snip]
>
> >
> > cat /proc/interrupts new:
> >            CPU0       CPU1       CPU2       CPU3
> >   8:      75188      75268      75341      75246  MIPS GIC Local   1  t=
imer
> >   9:      24413          0          0          0  MIPS GIC  63  IPI cal=
l
> >  10:          0       4442          0          0  MIPS GIC  64  IPI cal=
l
> >  11:          0          0      33324          0  MIPS GIC  65  IPI cal=
l
> >  12:          0          0          0       4574  MIPS GIC  66  IPI cal=
l
> >  13:       3424          0          0          0  MIPS GIC  67  IPI res=
ched
> >  14:          0       4124          0          0  MIPS GIC  68  IPI res=
ched
> >  15:          0          0       3974          0  MIPS GIC  69  IPI res=
ched
> >  16:          0          0          0       4150  MIPS GIC  70  IPI res=
ched
> >  17:          0          0          0          0  MIPS GIC  19  1e00060=
0.gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
> >  19:        829          0          0          0  MIPS GIC  33  ttyS0
> >  20:          0          0          0          0  MIPS GIC  29  xhci-hc=
d:usb1
> >  21:        817          0          0          0  MIPS GIC  10  1e10000=
0.ethernet
> >  23:          0          0          0          0  MIPS GIC  11  mt7615e
> > ERR:          1
> >
> >
> > cat /proc/interrupts old:
> >
> >            CPU0       CPU1       CPU2       CPU3
> >   8:      25513      25556      25674      25681  MIPS GIC Local   1  t=
imer
> >   9:      23603          0          0          0  MIPS GIC  63  IPI cal=
l
> >  10:          0       4383          0          0  MIPS GIC  64  IPI cal=
l
> >  11:          0          0      32117          0  MIPS GIC  65  IPI cal=
l
> >  12:          0          0          0       4189  MIPS GIC  66  IPI cal=
l
> >  13:       3428          0          0          0  MIPS GIC  67  IPI res=
ched
> >  14:          0       4144          0          0  MIPS GIC  68  IPI res=
ched
> >  15:          0          0       3812          0  MIPS GIC  69  IPI res=
ched
> >  16:          0          0          0       3769  MIPS GIC  70  IPI res=
ched
> >  17:          0          0          0          0  MIPS GIC  19  1e00060=
0.gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
> >  19:       1022          0          0          0  MIPS GIC  33  ttyS0
> >  20:          0          0          0          0  MIPS GIC  29  xhci-hc=
d:usb1
> >  21:        269          0          0          0  MIPS GIC  10  1e10000=
0.ethernet
> >  24:       1131          0          0          0  MIPS GIC  31  mt7615e
> > ERR:          0
> > =3D> Interesting, different interrupts.
>
> That's weird. Should be the same, AFAICT.
> Needs some investigation but looks like you are not getting interrupts
> at all according to these traces...
>
> Looking into my gnubee I got also 23, 24 and 25.
>
> # cat /proc/interrupts
>            CPU0       CPU1       CPU2       CPU3
>   7:          0          0          0          0      MIPS   7  timer
>   8:       3537       3346       3296       3351  MIPS GIC Local   1  tim=
er
>   9:       3025          0          0          0  MIPS GIC  63  IPI call
>  10:          0       1209          0          0  MIPS GIC  64  IPI call
>  11:          0          0       2805          0  MIPS GIC  65  IPI call
>  12:          0          0          0       1200  MIPS GIC  66  IPI call
>  13:       1428          0          0          0  MIPS GIC  67  IPI resch=
ed
>  14:          0       4136          0          0  MIPS GIC  68  IPI resch=
ed
>  15:          0          0        872          0  MIPS GIC  69  IPI resch=
ed
>  16:          0          0          0        666  MIPS GIC  70  IPI resch=
ed
>  17:          0          0          0          0  MIPS GIC  19
> 1e000600.gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
>  18:        138          0          0          0  MIPS GIC  33  ttyS0
>  19:          0          0          0          0  MIPS GIC  27  1e130000.=
sdhci
>  20:         26          0          0          0  MIPS GIC  29  xhci-hcd:=
usb1
>  21:          7          0          0          0  MIPS GIC  10
> 1e100000.ethernet
>  23:          0          0          0          0  MIPS GIC  11
> ahci[0000:01:00.0]
>  24:          0          0          0          0  MIPS GIC  31
> ahci[0000:02:00.0]
>  25:        279          0          0          0  MIPS GIC  32
> ahci[0000:03:00.0]
>  26:          0          0          0          0  1e000600.gpio  18  rese=
t
> ERR:          0
>
>
> >
> > Diff DTS old to new driver:
> > diff --git b/target/linux/ramips/dts/mt7621.dtsi a/target/linux/ramips/=
dts/mt7621.dtsi
> > index 0bf1069b5c..63befa1fdc 100644
> > --- b/target/linux/ramips/dts/mt7621.dtsi
> > +++ a/target/linux/ramips/dts/mt7621.dtsi
> > @@ -557,9 +550,10 @@
> >
> >         pcie: pcie@1e140000 {
> >                 compatible =3D "mediatek,mt7621-pci";
> > -               reg =3D <0x1e140000 0x100
> > -                       0x1e142000 0x100>;
> > -
> > +               reg =3D <0x1e140000 0x100     /* host-pci bridge regist=
ers */
> > +                       0x1e142000 0x100    /* pcie port 0 RC control r=
egisters */
> > +                       0x1e143000 0x100    /* pcie port 1 RC control r=
egisters */
> > +                       0x1e144000 0x100>;  /* pcie port 2 RC control r=
egisters */
> >                 #address-cells =3D <3>;
> >                 #size-cells =3D <2>;
> >
> > @@ -574,10 +568,11 @@
> >                         0x01000000 0 0x00000000 0x1e160000 0 0x00010000=
 /* io space */
> >                 >;
> >
> > -               interrupt-parent =3D <&gic>;
> > -               interrupts =3D <GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH
> > -                               GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
> > -                               GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
> > +               #interrupt-cells =3D <1>;
> > +               interrupt-map-mask =3D <0xF0000 0 0 1>;
> > +               interrupt-map =3D <0x10000 0 0 1 &gic GIC_SHARED 4 IRQ_=
TYPE_LEVEL_HIGH>,
> > +                               <0x20000 0 0 1 &gic GIC_SHARED 24 IRQ_T=
YPE_LEVEL_HIGH>,
> > +                               <0x30000 0 0 1 &gic GIC_SHARED 25 IRQ_T=
YPE_LEVEL_HIGH>;
> >
> >                 status =3D "disabled";
>
> New driver uses common:
>
> host->map_irq =3D of_irq_parse_and_map_pci;
> host->swizzle_irq =3D pci_common_swizzle;
>
> instead of pcibios_map_irq stuff... Because you are only using slot 1
> maybe if slot 0 is not in use we have to map the irq in slot 0 into
> the slot 1...
>
> Does these changes makes the job for you? diff --git
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
>
>  static inline u32 pcie_read(struct mt7621_pcie *pcie, u32 reg)
> @@ -279,6 +281,24 @@ static void setup_cm_memory_region(struct
> mt7621_pcie *pcie)
>         }
>  }
>
> +static int mt7621_map_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
> +{
> +       struct mt7621_pcie *pcie =3D pdev->bus->sysdata;
> +       int irq_map[PCIE_P2P_MAX];
> +       int n, i;
> +
> +       /* Assign IRQs */
> +       n =3D 0;
> +       for (i =3D 0; i < PCIE_P2P_MAX; i++)
> +               if (pcie->link_status & BIT(i))
> +                       irq_map[n++] =3D of_irq_parse_and_map_pci(pdev,
> slot, pin);
> +
> +       for (i =3D n; i < PCIE_P2P_MAX; i++)
> +               irq_map[i] =3D -1;
> +
> +       return irq_map[slot];
> +}
> +
>  static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pc=
ie)
>  {
>         struct device *dev =3D pcie->dev;
> @@ -583,29 +603,29 @@ static void mt7621_pcie_enable_ports(struct
> mt7621_pcie *pcie)
>
>  static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
>  {
> -       u32 pcie_link_status =3D 0;
>         u32 n;
>         int i;
>         u32 p2p_br_devnum[PCIE_P2P_MAX];
>         struct mt7621_pcie_port *port;
>
> +       pcie->link_status =3D 0;
>         list_for_each_entry(port, &pcie->ports, list) {
>                 u32 slot =3D port->slot;
>
>                 if (port->enabled)
> -                       pcie_link_status |=3D BIT(slot);
> +                       pcie->link_status |=3D BIT(slot);
>         }
>
> -       if (pcie_link_status =3D=3D 0)
> +       if (pcie->link_status =3D=3D 0)
>                 return -1;
>
>         n =3D 0;
>
>

Sorry, gets wrong copy. Attach patch instead.

>
> >
> > @@ -585,32 +580,45 @@
> >                 reset-names =3D "pcie0", "pcie1", "pcie2";
> >                 clocks =3D <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
> >                 clock-names =3D "pcie0", "pcie1", "pcie2";
> > +               phys =3D <&pcie0_phy 1>, <&pcie2_phy 0>;
> > +               phy-names =3D "pcie-phy0", "pcie-phy2";
> > +
> > +               reset-gpios =3D <&gpio 19 GPIO_ACTIVE_LOW>;
> >
> >                 pcie0: pcie@0,0 {
> >                         reg =3D <0x0000 0 0 0 0>;
> > -
> >                         #address-cells =3D <3>;
> >                         #size-cells =3D <2>;
> > -
> >                         ranges;
> > +                       bus-range =3D <0x00 0xff>;
> >                 };
> >
> >                 pcie1: pcie@1,0 {
> >                         reg =3D <0x0800 0 0 0 0>;
> > -
> >                         #address-cells =3D <3>;
> >                         #size-cells =3D <2>;
> > -
> >                         ranges;
> > +                       bus-range =3D <0x00 0xff>;
> >                 };
> >
> >                 pcie2: pcie@2,0 {
> >                         reg =3D <0x1000 0 0 0 0>;
> > -
> >                         #address-cells =3D <3>;
> >                         #size-cells =3D <2>;
> > -
> >                         ranges;
> > +                       bus-range =3D <0x00 0xff>;
> >                 };
> >         };
> > +
> > +       pcie0_phy: pcie-phy@1e149000 {
> > +               compatible =3D "mediatek,mt7621-pci-phy";
> > +               reg =3D <0x1e149000 0x0700>;
> > +               #phy-cells =3D <1>;
> > +       };
> > +
> > +       pcie2_phy: pcie-phy@1e14a000 {
> > +               compatible =3D "mediatek,mt7621-pci-phy";
> > +               reg =3D <0x1e14a000 0x0700>;
> > +               #phy-cells =3D <1>;
> > +       };
> >  };
> >
> > Why are the interupts mapped a different way? I do not understand that.
> >
> > Kind regards,
> >
> > Andr=C3=A9
>
> Best regards,
>     Sergio Paracuellos

--000000000000569bfd05a2ee2e5f
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_k8u4a8ec0>
X-Attachment-Id: f_k8u4a8ec0

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYwppbmRleCBiOWQ0NjBhOWMwNDEu
LjExYzQ2Zjk1NTc0NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNp
LW10NzYyMS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYwpA
QCAtMTIyLDYgKzEyMiw3IEBAIHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0IHsKICAqIEBwb3J0czog
cG9pbnRlciB0byBQQ0llIHBvcnQgaW5mb3JtYXRpb24KICAqIEByZXNldHNfaW52ZXJ0ZWQ6IGRl
cGVuZHMgb24gY2hpcCByZXZpc2lvbgogICogcmVzZXQgbGluZXMgYXJlIGludmVydGVkLgorICog
QGxpbmtfc3RhdHVzOiBsaW5rIHN0YXR1cyBvZiBwY2llIGRldmljZS4KICAqLwogc3RydWN0IG10
NzYyMV9wY2llIHsKIAl2b2lkIF9faW9tZW0gKmJhc2U7CkBAIC0xMzYsNiArMTM3LDcgQEAgc3Ry
dWN0IG10NzYyMV9wY2llIHsKIAl1bnNpZ25lZCBsb25nIGlvX21hcF9iYXNlOwogCXN0cnVjdCBs
aXN0X2hlYWQgcG9ydHM7CiAJYm9vbCByZXNldHNfaW52ZXJ0ZWQ7CisJdTMyIGxpbmtfc3RhdHVz
OwogfTsKIAogc3RhdGljIGlubGluZSB1MzIgcGNpZV9yZWFkKHN0cnVjdCBtdDc2MjFfcGNpZSAq
cGNpZSwgdTMyIHJlZykKQEAgLTI3OSw2ICsyODEsMjQgQEAgc3RhdGljIHZvaWQgc2V0dXBfY21f
bWVtb3J5X3JlZ2lvbihzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCiAJfQogfQogCitzdGF0aWMg
aW50IG10NzYyMV9tYXBfaXJxKGNvbnN0IHN0cnVjdCBwY2lfZGV2ICpwZGV2LCB1OCBzbG90LCB1
OCBwaW4pCit7CisJc3RydWN0IG10NzYyMV9wY2llICpwY2llID0gcGRldi0+YnVzLT5zeXNkYXRh
OworCWludCBpcnFfbWFwW1BDSUVfUDJQX01BWF07CisJaW50IG4sIGk7CisKKwkvKiBBc3NpZ24g
SVJRcyAqLworCW4gPSAwOworCWZvciAoaSA9IDA7IGkgPCBQQ0lFX1AyUF9NQVg7IGkrKykKKwkJ
aWYgKHBjaWUtPmxpbmtfc3RhdHVzICYgQklUKGkpKQorCQkJaXJxX21hcFtuKytdID0gb2ZfaXJx
X3BhcnNlX2FuZF9tYXBfcGNpKHBkZXYsIHNsb3QsIHBpbik7CisKKwlmb3IgKGkgPSBuOyBpIDwg
UENJRV9QMlBfTUFYOyBpKyspCisJCWlycV9tYXBbaV0gPSAtMTsKKworCXJldHVybiBpcnFfbWFw
W3Nsb3RdOworfQorCiBzdGF0aWMgaW50IG10NzYyMV9wY2lfcGFyc2VfcmVxdWVzdF9vZl9wY2lf
cmFuZ2VzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSBwY2llLT5kZXY7CkBAIC01ODMsMjkgKzYwMywyOSBAQCBzdGF0aWMgdm9pZCBtdDc2MjFfcGNp
ZV9lbmFibGVfcG9ydHMoc3RydWN0IG10NzYyMV9wY2llICpwY2llKQogCiBzdGF0aWMgaW50IG10
NzYyMV9wY2llX2luaXRfdmlydHVhbF9icmlkZ2VzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkK
IHsKLQl1MzIgcGNpZV9saW5rX3N0YXR1cyA9IDA7CiAJdTMyIG47CiAJaW50IGk7CiAJdTMyIHAy
cF9icl9kZXZudW1bUENJRV9QMlBfTUFYXTsKIAlzdHJ1Y3QgbXQ3NjIxX3BjaWVfcG9ydCAqcG9y
dDsKIAorCXBjaWUtPmxpbmtfc3RhdHVzID0gMDsKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KHBvcnQs
ICZwY2llLT5wb3J0cywgbGlzdCkgewogCQl1MzIgc2xvdCA9IHBvcnQtPnNsb3Q7CiAKIAkJaWYg
KHBvcnQtPmVuYWJsZWQpCi0JCQlwY2llX2xpbmtfc3RhdHVzIHw9IEJJVChzbG90KTsKKwkJCXBj
aWUtPmxpbmtfc3RhdHVzIHw9IEJJVChzbG90KTsKIAl9CiAKLQlpZiAocGNpZV9saW5rX3N0YXR1
cyA9PSAwKQorCWlmIChwY2llLT5saW5rX3N0YXR1cyA9PSAwKQogCQlyZXR1cm4gLTE7CiAKIAlu
ID0gMDsKIAlmb3IgKGkgPSAwOyBpIDwgUENJRV9QMlBfTUFYOyBpKyspCi0JCWlmIChwY2llX2xp
bmtfc3RhdHVzICYgQklUKGkpKQorCQlpZiAocGNpZS0+bGlua19zdGF0dXMgJiBCSVQoaSkpCiAJ
CQlwMnBfYnJfZGV2bnVtW2ldID0gbisrOwogCiAJZm9yIChpID0gMDsgaSA8IFBDSUVfUDJQX01B
WDsgaSsrKQotCQlpZiAoKHBjaWVfbGlua19zdGF0dXMgJiBCSVQoaSkpID09IDApCisJCWlmICgo
cGNpZS0+bGlua19zdGF0dXMgJiBCSVQoaSkpID09IDApCiAJCQlwMnBfYnJfZGV2bnVtW2ldID0g
bisrOwogCiAJcGNpZV9ybXcocGNpZSwgUkFMSU5LX1BDSV9QQ0lDRkdfQUREUiwKQEAgLTYzOCw3
ICs2NTgsNyBAQCBzdGF0aWMgaW50IG10NzYyMV9wY2llX3JlZ2lzdGVyX2hvc3Qoc3RydWN0IHBj
aV9ob3N0X2JyaWRnZSAqaG9zdCwKIAlob3N0LT5idXNuciA9IHBjaWUtPmJ1c24uc3RhcnQ7CiAJ
aG9zdC0+ZGV2LnBhcmVudCA9IHBjaWUtPmRldjsKIAlob3N0LT5vcHMgPSAmbXQ3NjIxX3BjaV9v
cHM7Ci0JaG9zdC0+bWFwX2lycSA9IG9mX2lycV9wYXJzZV9hbmRfbWFwX3BjaTsKKwlob3N0LT5t
YXBfaXJxID0gbXQ3NjIxX21hcF9pcnE7CiAJaG9zdC0+c3dpenpsZV9pcnEgPSBwY2lfY29tbW9u
X3N3aXp6bGU7CiAJaG9zdC0+c3lzZGF0YSA9IHBjaWU7CiAK
--000000000000569bfd05a2ee2e5f
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--000000000000569bfd05a2ee2e5f--

