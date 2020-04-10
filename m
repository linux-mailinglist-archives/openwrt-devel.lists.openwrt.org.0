Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B773A1A47F5
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 17:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lMcy6yOGsQjK0MqdpNtZk6DT0oUOma6SKh2tmEYEOXM=; b=oeGFluiBHQXL7NlEVjdbnKHhv
	cVi9CZhcGUHMql5LGQRqX1OXgPIv5WQZ8aLfjbCjE0+j7QG3Y3PKJ0DbLkWfA38F/2fm/Y4u3wPOV
	W7y6RmcotCm/HOsZrbtYDWckPhe5r3y9f0DzHH1kI3dXrkYk/R6yn7/xo5XqsCXggVgJgPazaZyIs
	4Kz6pfXeyME3s59f4xEBpJMaSpUKKy3xroPdqeEESAeL+5iSUpBfvJ8A+OfNyv/CDRjBsapaHxDoC
	iY6+sfA9uyNXbW7s5AKGllb1QSx0h0/5O4FPNl6g557xMjsof4ZwQXhZE4D5eABqwXywBvrA+xQaL
	x6cF8nQxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMvsp-0004Lh-Jc; Fri, 10 Apr 2020 15:47:55 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMvsi-0004LF-EI
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 15:47:51 +0000
Received: by mail-ot1-x335.google.com with SMTP id 103so2238997otv.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 08:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tyskPcjKN7Kd6RPAc+rKUy/i5wGpKeic98sTqF5vjMY=;
 b=r4eCDHUZXo9Tg1C1xVXZiiErp2Sk/sOgr6GujMqcOrPqnM80e5EHESzNgeAHNQKlBW
 YDkIgVy6hqy3suKwcbv2AAQGbXSYsKkJo2lcZa6Q1t3SC6IdHdeK8CY8NCTogpbN0ZZU
 59o29EZOWWXg+u9AWK1dezZXZaI7tQ3C6J6t/ckFurPklK7qa0htdpEvRUab/3n5vXiR
 UBJVWFYAAm0LLn0vALZZYVuCP7qNtjwGCLAxp822cfwT3hg18IaT0/DQsJ2Hxj+5Xxbw
 BNgzfouUox/zD8aokvEBb72Ftcic7nmrm+sjBZOMFwjnTgyjQdvcVL3rLY/KOsCvrnyD
 YpxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tyskPcjKN7Kd6RPAc+rKUy/i5wGpKeic98sTqF5vjMY=;
 b=O6+p1fT0k30vphTuMSry965//zK2BSgjpcTCfc+2Ue2+lkOssAxt2qS1w4zLwU/qDo
 OsuUqsaQilXp+5tqLPN5bun//6HoZErS6v7Wv0rCsgsPk6iN9sZYiJhCwvAq8DNXUY9l
 mF+aYuxBLDgDZSADWe9Lz5XWwOjbOItL/5GDDn70hc/a6hpEbj0+mIHTemULII438VXY
 Rec/WSOv4cWpyk3DJzWvhODcJlr9Ehx4OiEapp/phCfKuTqS/JkRnvG8HghrkZe0aTDi
 hdQa/UBxzDjUczYfVkGe6dTmbg7E7U/1ZVpHuFnTKdKJrdD6f+P8JBduZXkBZxqWCRMP
 KKWw==
X-Gm-Message-State: AGi0Publs0BkE37Xtqlt1sTNJxwH3eyp1kM5O05sYWxEt26VdM8ZbGVy
 O865M9HFyUBZWgwF1v7yg8ogqCPrZOalcYfnF6g=
X-Google-Smtp-Source: APiQypKkOlbnxLdxqD41uJct6T9jPhzNClHnJUYSa/9FYq0HomI5k0QWBz0HE7TC3F+49c4SkxwQDI25Yg4bbU735oI=
X-Received: by 2002:a05:6830:1d67:: with SMTP id
 l7mr4530789oti.72.1586533666870; 
 Fri, 10 Apr 2020 08:47:46 -0700 (PDT)
MIME-Version: 1.0
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
 <1b47e10f-d681-97fc-7700-31233aa364dc@marcant.net>
In-Reply-To: <1b47e10f-d681-97fc-7700-31233aa364dc@marcant.net>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 10 Apr 2020 17:47:35 +0200
Message-ID: <CAMhs-H9XtKQ+KZH=Cd_Aoav4+HYeEE+BFax96BZDGQvawY8AOA@mail.gmail.com>
To: Andre Valentin <avalentin@marcant.net>
Content-Type: multipart/mixed; boundary="000000000000a379ed05a2f1a77e"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_084748_486494_72FB5B30 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
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

--000000000000a379ed05a2f1a77e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andre,

On Fri, Apr 10, 2020 at 2:29 PM Andre Valentin <avalentin@marcant.net> wrot=
e:
>
[snip]

> > Does these changes makes the job for you?

Attached new patch. This hopefully works.

> No, it does not work. Again I get this:
> root@OpenWrt:/# cat /proc/interrupts
>            CPU0       CPU1       CPU2       CPU3
>   8:      10317      10061      10366      10342  MIPS GIC Local   1  tim=
er
>   9:      10946          0          0          0  MIPS GIC  63  IPI call
>  10:          0       1973          0          0  MIPS GIC  64  IPI call
>  11:          0          0      24992          0  MIPS GIC  65  IPI call
>  12:          0          0          0       2087  MIPS GIC  66  IPI call
>  13:       1795          0          0          0  MIPS GIC  67  IPI resch=
ed
>  14:          0       2072          0          0  MIPS GIC  68  IPI resch=
ed
>  15:          0          0       1883          0  MIPS GIC  69  IPI resch=
ed
>  16:          0          0          0       1920  MIPS GIC  70  IPI resch=
ed
>  17:          0          0          0          0  MIPS GIC  19  1e000600.=
gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
>  19:        149          0          0          0  MIPS GIC  33  ttyS0
>  20:          0          0          0          0  MIPS GIC  29  xhci-hcd:=
usb1
>  21:         10          0          0          0  MIPS GIC  10  1e100000.=
ethernet
>  23:          0          0          0          0  MIPS GIC  11  mt7615e
> ERR:          1
>
> Shouldn't at least be something about pci interrupts here?

Depending of the number of pcie buses your hardware is using you see
here if it has associated irq. So for you only one bus (bus 0) and one
slot (slot 1).
This means your link status should be '0x2' and the irq to map for
this bus should be the number 24 instead of 23.

For me with this patch applied I got (not changes here because I am
using the three buses):

# cat /proc/interrupts
           CPU0       CPU1       CPU2       CPU3
  7:          0          0          0          0      MIPS   7  timer
  8:      13231      12986      12973      12982  MIPS GIC Local   1  timer
  9:       3261          0          0          0  MIPS GIC  63  IPI call
 10:          0       1025          0          0  MIPS GIC  64  IPI call
 11:          0          0       2196          0  MIPS GIC  65  IPI call
 12:          0          0          0       1498  MIPS GIC  66  IPI call
 13:        488          0          0          0  MIPS GIC  67  IPI resched
 14:          0        815          0          0  MIPS GIC  68  IPI resched
 15:          0          0       2284          0  MIPS GIC  69  IPI resched
 16:          0          0          0       3671  MIPS GIC  70  IPI resched
 17:          0          0          0          0  MIPS GIC  19
1e000600.gpio-bank0, 1e000600.gpio-bank1, 1e000600.gpio-bank2
 18:        114          0          0          0  MIPS GIC  33  ttyS0
 19:          0          0          0          0  MIPS GIC  27  1e130000.sd=
hci
 20:         26          0          0          0  MIPS GIC  29  xhci-hcd:us=
b1
 21:         10          0          0          0  MIPS GIC  10
1e100000.ethernet
 23:          0          0          0          0  MIPS GIC  11
ahci[0000:01:00.0]
 24:          0          0          0          0  MIPS GIC  31
ahci[0000:02:00.0]
 25:        279          0          0          0  MIPS GIC  32
ahci[0000:03:00.0]
 26:          0          0          0          0  1e000600.gpio  18  reset
ERR:          0

And a trace:

[   16.547082] mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000
(dual port =3D 1)
[   16.561981] mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000
(dual port =3D 0)
[   16.676717] mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
[   16.687833] mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
[   16.798874] mt7621-pci 1e140000.pcie: PCIE0 enabled
[   16.808591] mt7621-pci 1e140000.pcie: PCIE1 enabled
[   16.818313] mt7621-pci 1e140000.pcie: PCIE2 enabled
[   16.828039] mt7621-pci 1e140000.pcie: PCI coherence region base:
0x60000000, mask/settings: 0xf0000002
[   16.846783] mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
[   16.859473] pci_bus 0000:00: root bus resource [io  0x1e160000-0x1e16fff=
f]
[   16.873171] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6ffffff=
f]
[   16.886880] pci_bus 0000:00: root bus resource [bus 00-ff]
[   16.897862] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
[   16.909864] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   16.922358] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   16.934928] pci 0000:00:00.0: supports D1
[   16.942894] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[   16.954762] pci 0000:00:01.0: [0e8d:0801] type 01 class 0x060400
[   16.966779] pci 0000:00:01.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   16.979275] pci 0000:00:01.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   16.991835] pci 0000:00:01.0: supports D1
[   16.999826] pci 0000:00:01.0: PME# supported from D0 D1 D3hot
[   17.011649] pci 0000:00:02.0: [0e8d:0801] type 01 class 0x060400
[   17.023660] pci 0000:00:02.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[   17.036153] pci 0000:00:02.0: reg 0x14: [mem 0x00000000-0x0000ffff]
[   17.048715] pci 0000:00:02.0: supports D1
[   17.056708] pci 0000:00:02.0: PME# supported from D0 D1 D3hot
[   17.069380] pci 0000:00:00.0: bridge configuration invalid ([bus
00-00]), reconfiguring
[   17.085345] pci 0000:00:01.0: bridge configuration invalid ([bus
00-00]), reconfiguring
[   17.101296] pci 0000:00:02.0: bridge configuration invalid ([bus
00-00]), reconfiguring
[   17.117493] pci 0000:01:00.0: [1b21:0611] type 00 class 0x010185
[   17.129520] pci 0000:01:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.140632] pci 0000:01:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.151753] pci 0000:01:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.162864] pci 0000:01:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.173976] pci 0000:01:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.185098] pci 0000:01:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.197734] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidth,
limited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 4.000 Gb/s
with 5 GT/s x1 link)
[   17.226501] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
[   17.236939] pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
[   17.249092] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff=
]
[   17.262623] pci 0000:00:00.0:   bridge window [mem
0x00000000-0x000fffff pref]
[   17.277016] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
[   17.290448] pci 0000:02:00.0: [1b21:0611] type 00 class 0x010185
[   17.302471] pci 0000:02:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.313589] pci 0000:02:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.324701] pci 0000:02:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.335818] pci 0000:02:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.346929] pci 0000:02:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.358046] pci 0000:02:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.370679] pci 0000:02:00.0: 2.000 Gb/s available PCIe bandwidth,
limited by 2.5 GT/s x1 link at 0000:00:01.0 (capable of 4.000 Gb/s
with 5 GT/s x1 link)
[   17.399455] pci 0000:00:01.0: PCI bridge to [bus 02-ff]
[   17.409893] pci 0000:00:01.0:   bridge window [io  0x0000-0x0fff]
[   17.422035] pci 0000:00:01.0:   bridge window [mem 0x00000000-0x000fffff=
]
[   17.435560] pci 0000:00:01.0:   bridge window [mem
0x00000000-0x000fffff pref]
[   17.449958] pci_bus 0000:02: busn_res: [bus 02-ff] end is updated to 02
[   17.463364] pci 0000:03:00.0: [1b21:0611] type 00 class 0x010185
[   17.475387] pci 0000:03:00.0: reg 0x10: [io  0x0000-0x0007]
[   17.486510] pci 0000:03:00.0: reg 0x14: [io  0x0000-0x0003]
[   17.497622] pci 0000:03:00.0: reg 0x18: [io  0x0000-0x0007]
[   17.508737] pci 0000:03:00.0: reg 0x1c: [io  0x0000-0x0003]
[   17.519848] pci 0000:03:00.0: reg 0x20: [io  0x0000-0x000f]
[   17.530970] pci 0000:03:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[   17.543603] pci 0000:03:00.0: 2.000 Gb/s available PCIe bandwidth,
limited by 2.5 GT/s x1 link at 0000:00:02.0 (capable of 4.000 Gb/s
with 5 GT/s x1 link)
[   17.572374] pci 0000:00:02.0: PCI bridge to [bus 03-ff]
[   17.582810] pci 0000:00:02.0:   bridge window [io  0x0000-0x0fff]
[   17.594952] pci 0000:00:02.0:   bridge window [mem 0x00000000-0x000fffff=
]
[   17.608482] pci 0000:00:02.0:   bridge window [mem
0x00000000-0x000fffff pref]
[   17.622874] pci_bus 0000:03: busn_res: [bus 03-ff] end is updated to 03
[   17.636128] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
[   17.649311] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x800000=
00]
[   17.663189] pci 0000:00:01.0: BAR 0: no space for [mem size 0x80000000]
[   17.676367] pci 0000:00:01.0: BAR 0: failed to assign [mem size 0x800000=
00]
[   17.690243] pci 0000:00:02.0: BAR 0: no space for [mem size 0x80000000]
[   17.703420] pci 0000:00:02.0: BAR 0: failed to assign [mem size 0x800000=
00]
[   17.717295] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x600fffff=
]
[   17.730828] pci 0000:00:00.0: BAR 9: assigned [mem
0x60100000-0x601fffff pref]
[   17.745222] pci 0000:00:01.0: BAR 8: assigned [mem 0x60200000-0x602fffff=
]
[   17.758754] pci 0000:00:01.0: BAR 9: assigned [mem
0x60300000-0x603fffff pref]
[   17.773146] pci 0000:00:02.0: BAR 8: assigned [mem 0x60400000-0x604fffff=
]
[   17.786681] pci 0000:00:02.0: BAR 9: assigned [mem
0x60500000-0x605fffff pref]
[   17.801077] pci 0000:00:00.0: BAR 1: assigned [mem 0x60600000-0x6060ffff=
]
[   17.814609] pci 0000:00:01.0: BAR 1: assigned [mem 0x60610000-0x6061ffff=
]
[   17.828144] pci 0000:00:02.0: BAR 1: assigned [mem 0x60620000-0x6062ffff=
]
[   17.841673] pci 0000:00:00.0: BAR 7: assigned [io  0x1e160000-0x1e160fff=
]
[   17.855200] pci 0000:00:01.0: BAR 7: assigned [io  0x1e161000-0x1e161fff=
]
[   17.868732] pci 0000:00:02.0: BAR 7: assigned [io  0x1e162000-0x1e162fff=
]
[   17.882275] pci 0000:01:00.0: BAR 5: assigned [mem 0x60000000-0x600001ff=
]
[   17.895807] pci 0000:01:00.0: BAR 4: assigned [io  0x1e160000-0x1e16000f=
]
[   17.909343] pci 0000:01:00.0: BAR 0: assigned [io  0x1e160010-0x1e160017=
]
[   17.922880] pci 0000:01:00.0: BAR 2: assigned [io  0x1e160018-0x1e16001f=
]
[   17.936412] pci 0000:01:00.0: BAR 1: assigned [io  0x1e160020-0x1e160023=
]
[   17.949947] pci 0000:01:00.0: BAR 3: assigned [io  0x1e160024-0x1e160027=
]
[   17.963477] pci 0000:00:00.0: PCI bridge to [bus 01]
[   17.973378] pci 0000:00:00.0:   bridge window [io  0x1e160000-0x1e160fff=
]
[   17.986903] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600fffff=
]
[   18.000433] pci 0000:00:00.0:   bridge window [mem
0x60100000-0x601fffff pref]
[   18.014836] pci 0000:02:00.0: BAR 5: assigned [mem 0x60200000-0x602001ff=
]
[   18.028370] pci 0000:02:00.0: BAR 4: assigned [io  0x1e161000-0x1e16100f=
]
[   18.041901] pci 0000:02:00.0: BAR 0: assigned [io  0x1e161010-0x1e161017=
]
[   18.055440] pci 0000:02:00.0: BAR 2: assigned [io  0x1e161018-0x1e16101f=
]
[   18.068976] pci 0000:02:00.0: BAR 1: assigned [io  0x1e161020-0x1e161023=
]
[   18.082507] pci 0000:02:00.0: BAR 3: assigned [io  0x1e161024-0x1e161027=
]
[   18.096037] pci 0000:00:01.0: PCI bridge to [bus 02]
[   18.105938] pci 0000:00:01.0:   bridge window [io  0x1e161000-0x1e161fff=
]
[   18.119461] pci 0000:00:01.0:   bridge window [mem 0x60200000-0x602fffff=
]
[   18.132990] pci 0000:00:01.0:   bridge window [mem
0x60300000-0x603fffff pref]
[   18.147394] pci 0000:03:00.0: BAR 5: assigned [mem 0x60400000-0x604001ff=
]
[   18.160929] pci 0000:03:00.0: BAR 4: assigned [io  0x1e162000-0x1e16200f=
]
[   18.174460] pci 0000:03:00.0: BAR 0: assigned [io  0x1e162010-0x1e162017=
]
[   18.188002] pci 0000:03:00.0: BAR 2: assigned [io  0x1e162018-0x1e16201f=
]
[   18.201533] pci 0000:03:00.0: BAR 1: assigned [io  0x1e162020-0x1e162023=
]
[   18.215065] pci 0000:03:00.0: BAR 3: assigned [io  0x1e162024-0x1e162027=
]
[   18.228603] pci 0000:00:02.0: PCI bridge to [bus 03]
[   18.238498] pci 0000:00:02.0:   bridge window [io  0x1e162000-0x1e162fff=
]
[   18.252027] pci 0000:00:02.0:   bridge window [mem 0x60400000-0x604fffff=
]
[   18.265550] pci 0000:00:02.0:   bridge window [mem
0x60500000-0x605fffff pref]
[   18.280377] mt7621-pci 1e140000.pcie: Bus=3D1 slot=3D0 irq=3D23
[   18.291182] pci 0000:00:00.0: enabling device (0004 -> 0007)
[   18.302470] ahci 0000:01:00.0: enabling device (0000 -> 0003)
[   18.314088] ahci 0000:01:00.0: SSS flag set, parallel bus scan disabled
[   18.327334] ahci 0000:01:00.0: AHCI 0001.0200 32 slots 2 ports 6
Gbps 0x3 impl IDE mode
[   18.343283] ahci 0000:01:00.0: flags: 64bit ncq sntf stag led clo
pmp pio slum part ccc sxs
[   18.362065] scsi host0: ahci
[   18.368768] scsi host1: ahci
[   18.374927] ata1: SATA max UDMA/133 abar m512@0x60000000 port
0x60000100 irq 23
[   18.389520] ata2: SATA max UDMA/133 abar m512@0x60000000 port
0x60000180 irq 23
[   18.404548] mt7621-pci 1e140000.pcie: Bus=3D2 slot=3D1 irq=3D24
[   18.415373] pci 0000:00:01.0: enabling device (0004 -> 0007)
[   18.426661] ahci 0000:02:00.0: enabling device (0000 -> 0003)
[   18.438290] ahci 0000:02:00.0: SSS flag set, parallel bus scan disabled
[   18.451539] ahci 0000:02:00.0: AHCI 0001.0200 32 slots 2 ports 6
Gbps 0x3 impl IDE mode
[   18.467490] ahci 0000:02:00.0: flags: 64bit ncq sntf stag led clo
pmp pio slum part ccc sxs
[   18.486116] scsi host2: ahci
[   18.492648] scsi host3: ahci
[   18.498893] ata3: SATA max UDMA/133 abar m512@0x60200000 port
0x60200100 irq 24
[   18.513485] ata4: SATA max UDMA/133 abar m512@0x60200000 port
0x60200180 irq 24
[   18.528565] mt7621-pci 1e140000.pcie: Bus=3D3 slot=3D2 irq=3D25
[   18.539407] pci 0000:00:02.0: enabling device (0004 -> 0007)
[   18.550695] ahci 0000:03:00.0: enabling device (0000 -> 0003)

> root@OpenWrt:/sys/kernel/debug/pinctrl/pinctrl-rt2880-pinmux# cat *
> GPIO ranges handled:
> registered pin groups:
> group: uart1
> pin 1 (io1)
> pin 2 (io2)
>
> group: i2c
> pin 3 (io3)
> pin 4 (io4)
>
> group: uart3
> pin 5 (io5)
> pin 6 (io6)
> pin 7 (io7)
> pin 8 (io8)
>
> group: uart2
> pin 9 (io9)
> pin 10 (io10)
> pin 11 (io11)
> pin 12 (io12)
>
> group: jtag
> pin 13 (io13)
> pin 14 (io14)
> pin 15 (io15)
> pin 16 (io16)
> pin 17 (io17)
>
> group: wdt
> pin 18 (io18)
>
> group: pcie
> pin 19 (io19)
>
> group: mdio
> pin 20 (io20)
> pin 21 (io21)
>
> group: rgmii2
> pin 22 (io22)
> pin 23 (io23)
> pin 24 (io24)
> pin 25 (io25)
> pin 26 (io26)
> pin 27 (io27)
> pin 28 (io28)
> pin 29 (io29)
> pin 30 (io30)
> pin 31 (io31)
> pin 32 (io32)
> pin 33 (io33)
>
> group: spi
> pin 34 (io34)
> pin 35 (io35)
> pin 36 (io36)
> pin 37 (io37)
> pin 38 (io38)
> pin 39 (io39)
> pin 40 (io40)
>
> group: sdhci
> pin 41 (io41)
> pin 42 (io42)
> pin 43 (io43)
> pin 44 (io44)
> pin 45 (io45)
> pin 46 (io46)
> pin 47 (io47)
> pin 48 (io48)
>
> group: rgmii1
> pin 49 (io49)
> pin 50 (io50)
> pin 51 (io51)
> pin 52 (io52)
> pin 53 (io53)
> pin 54 (io54)
> pin 55 (io55)
> pin 56 (io56)
> pin 57 (io57)
> pin 58 (io58)
> pin 59 (io59)
> pin 60 (io60)
>
> function: gpio, groups =3D [ uart1 i2c uart3 uart2 jtag wdt pcie mdio rgm=
ii2 spi sdhci rgmii1 ]
> function: uart1, groups =3D [ uart1 ]
> function: i2c, groups =3D [ i2c ]
> function: uart3, groups =3D [ uart3 ]
> function: i2s, groups =3D [ uart3 ]
> function: spdif3, groups =3D [ uart3 ]
> function: uart2, groups =3D [ uart2 ]
> function: pcm, groups =3D [ uart2 ]
> function: spdif2, groups =3D [ uart2 ]
> function: jtag, groups =3D [ jtag ]
> function: wdt rst, groups =3D [ wdt ]
> function: wdt refclk, groups =3D [ wdt ]
> function: pcie rst, groups =3D [ pcie ]
> function: pcie refclk, groups =3D [ pcie ]
> function: mdio, groups =3D [ mdio ]
> function: rgmii2, groups =3D [ rgmii2 ]
> function: spi, groups =3D [ spi ]
> function: nand1, groups =3D [ spi ]
> function: sdhci, groups =3D [ sdhci ]
> function: nand2, groups =3D [ sdhci ]
> function: rgmii1, groups =3D [ rgmii1 ]
> Pinmux settings per pin
> Format: pin (name): mux_owner gpio_owner hog?
> pin 0 (io0): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 1 (io1): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 2 (io2): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 3 (io3): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 4 (io4): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 5 (io5): pinctrl (GPIO UNCLAIMED) function gpio group uart3
> pin 6 (io6): pinctrl (GPIO UNCLAIMED) function gpio group uart3
> pin 7 (io7): pinctrl (GPIO UNCLAIMED) function gpio group uart3
> pin 8 (io8): pinctrl (GPIO UNCLAIMED) function gpio group uart3
> pin 9 (io9): pinctrl (GPIO UNCLAIMED) function gpio group uart2
> pin 10 (io10): pinctrl (GPIO UNCLAIMED) function gpio group uart2
> pin 11 (io11): pinctrl (GPIO UNCLAIMED) function gpio group uart2
> pin 12 (io12): pinctrl (GPIO UNCLAIMED) function gpio group uart2
> pin 13 (io13): pinctrl (GPIO UNCLAIMED) function gpio group jtag
> pin 14 (io14): pinctrl (GPIO UNCLAIMED) function gpio group jtag
> pin 15 (io15): pinctrl (GPIO UNCLAIMED) function gpio group jtag
> pin 16 (io16): pinctrl (GPIO UNCLAIMED) function gpio group jtag
> pin 17 (io17): pinctrl (GPIO UNCLAIMED) function gpio group jtag
> pin 18 (io18): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 19 (io19): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 20 (io20): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 21 (io21): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 22 (io22): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 23 (io23): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 24 (io24): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 25 (io25): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 26 (io26): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 27 (io27): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 28 (io28): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 29 (io29): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 30 (io30): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 31 (io31): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 32 (io32): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 33 (io33): pinctrl (GPIO UNCLAIMED) function gpio group rgmii2
> pin 34 (io34): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 35 (io35): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 36 (io36): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 37 (io37): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 38 (io38): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 39 (io39): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 40 (io40): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 41 (io41): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 42 (io42): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 43 (io43): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 44 (io44): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 45 (io45): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 46 (io46): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 47 (io47): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 48 (io48): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 49 (io49): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 50 (io50): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 51 (io51): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 52 (io52): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 53 (io53): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 54 (io54): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 55 (io55): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 56 (io56): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 57 (io57): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 58 (io58): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 59 (io59): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 60 (io60): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> registered pins: 61
> pin 0 (io0)
> pin 1 (io1)
> pin 2 (io2)
> pin 3 (io3)
> pin 4 (io4)
> pin 5 (io5)
> pin 6 (io6)
> pin 7 (io7)
> pin 8 (io8)
> pin 9 (io9)
> pin 10 (io10)
> pin 11 (io11)
> pin 12 (io12)
> pin 13 (io13)
> pin 14 (io14)
> pin 15 (io15)
> pin 16 (io16)
> pin 17 (io17)
> pin 18 (io18)
> pin 19 (io19)
> pin 20 (io20)
> pin 21 (io21)
> pin 22 (io22)
> pin 23 (io23)
> pin 24 (io24)
> pin 25 (io25)
> pin 26 (io26)
> pin 27 (io27)
> pin 28 (io28)
> pin 29 (io29)
> pin 30 (io30)
> pin 31 (io31)
> pin 32 (io32)
> pin 33 (io33)
> pin 34 (io34)
> pin 35 (io35)
> pin 36 (io36)
> pin 37 (io37)
> pin 38 (io38)
> pin 39 (io39)
> pin 40 (io40)
> pin 41 (io41)
> pin 42 (io42)
> pin 43 (io43)
> pin 44 (io44)
> pin 45 (io45)
> pin 46 (io46)
> pin 47 (io47)
> pin 48 (io48)
> pin 49 (io49)
> pin 50 (io50)
> pin 51 (io51)
> pin 52 (io52)
> pin 53 (io53)
> pin 54 (io54)
> pin 55 (io55)
> pin 56 (io56)
> pin 57 (io57)
> pin 58 (io58)
> pin 59 (io59)
> pin 60 (io60)
>
>
> Puh, not easy.
> I do not know how to thank you four your effort!
>
> Kind regards,
>
> Andr=C3=A9
>
>

[snip]

Let me know if something changes.

Best regards,
    Sergio Paracuellos
>

--000000000000a379ed05a2f1a77e
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_k8ucwgg60>
X-Attachment-Id: f_k8ucwgg60

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYwppbmRleCBiOWQ0NjBhOWMwNDEu
Ljc5M2JhZTBhYmJhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNp
LW10NzYyMS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYwpA
QCAtMTIyLDYgKzEyMiw3IEBAIHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0IHsKICAqIEBwb3J0czog
cG9pbnRlciB0byBQQ0llIHBvcnQgaW5mb3JtYXRpb24KICAqIEByZXNldHNfaW52ZXJ0ZWQ6IGRl
cGVuZHMgb24gY2hpcCByZXZpc2lvbgogICogcmVzZXQgbGluZXMgYXJlIGludmVydGVkLgorICog
QGxpbmtfc3RhdHVzOiBsaW5rIHN0YXR1cyBvZiBwY2llIGRldmljZS4KICAqLwogc3RydWN0IG10
NzYyMV9wY2llIHsKIAl2b2lkIF9faW9tZW0gKmJhc2U7CkBAIC0xMzYsNiArMTM3LDcgQEAgc3Ry
dWN0IG10NzYyMV9wY2llIHsKIAl1bnNpZ25lZCBsb25nIGlvX21hcF9iYXNlOwogCXN0cnVjdCBs
aXN0X2hlYWQgcG9ydHM7CiAJYm9vbCByZXNldHNfaW52ZXJ0ZWQ7CisJdTMyIGxpbmtfc3RhdHVz
OwogfTsKIAogc3RhdGljIGlubGluZSB1MzIgcGNpZV9yZWFkKHN0cnVjdCBtdDc2MjFfcGNpZSAq
cGNpZSwgdTMyIHJlZykKQEAgLTI3OSw2ICsyODEsMjkgQEAgc3RhdGljIHZvaWQgc2V0dXBfY21f
bWVtb3J5X3JlZ2lvbihzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCiAJfQogfQogCitzdGF0aWMg
aW50IG10NzYyMV9tYXBfaXJxKGNvbnN0IHN0cnVjdCBwY2lfZGV2ICpwZGV2LCB1OCBzbG90LCB1
OCBwaW4pCit7CisJc3RydWN0IG10NzYyMV9wY2llICpwY2llID0gcGRldi0+YnVzLT5zeXNkYXRh
OworCXN0cnVjdCBkZXZpY2UgKmRldiA9IHBjaWUtPmRldjsKKwlpbnQgaXJxX21hcFtQQ0lFX1Ay
UF9NQVhdOworCWludCBpcnE7CisJaW50IG4sIGk7CisKKwkvKiBBc3NpZ24gSVJRcyAqLworCW4g
PSAwOworCWZvciAoaSA9IDA7IGkgPCBQQ0lFX1AyUF9NQVg7IGkrKykKKwkJaWYgKHBjaWUtPmxp
bmtfc3RhdHVzICYgQklUKGkpKQorCQkJaXJxX21hcFtuKytdID0gb2ZfaXJxX3BhcnNlX2FuZF9t
YXBfcGNpKHBkZXYsIGksIHBpbik7CisKKwlmb3IgKGkgPSBuOyBpIDwgUENJRV9QMlBfTUFYOyBp
KyspCisJCWlycV9tYXBbaV0gPSAtMTsKKworCWlycSA9IGlycV9tYXBbc2xvdF07CisKKwlkZXZf
aW5mbyhkZXYsICJCdXM9JWQgc2xvdD0lZCBpcnE9JWRcbiIsIHBkZXYtPmJ1cy0+bnVtYmVyLCBz
bG90LCBpcnEpOworCXJldHVybiBpcnE7Cit9CisKIHN0YXRpYyBpbnQgbXQ3NjIxX3BjaV9wYXJz
ZV9yZXF1ZXN0X29mX3BjaV9yYW5nZXMoc3RydWN0IG10NzYyMV9wY2llICpwY2llKQogewogCXN0
cnVjdCBkZXZpY2UgKmRldiA9IHBjaWUtPmRldjsKQEAgLTU4MywyOSArNjA4LDI5IEBAIHN0YXRp
YyB2b2lkIG10NzYyMV9wY2llX2VuYWJsZV9wb3J0cyhzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUp
CiAKIHN0YXRpYyBpbnQgbXQ3NjIxX3BjaWVfaW5pdF92aXJ0dWFsX2JyaWRnZXMoc3RydWN0IG10
NzYyMV9wY2llICpwY2llKQogewotCXUzMiBwY2llX2xpbmtfc3RhdHVzID0gMDsKIAl1MzIgbjsK
IAlpbnQgaTsKIAl1MzIgcDJwX2JyX2Rldm51bVtQQ0lFX1AyUF9NQVhdOwogCXN0cnVjdCBtdDc2
MjFfcGNpZV9wb3J0ICpwb3J0OwogCisJcGNpZS0+bGlua19zdGF0dXMgPSAwOwogCWxpc3RfZm9y
X2VhY2hfZW50cnkocG9ydCwgJnBjaWUtPnBvcnRzLCBsaXN0KSB7CiAJCXUzMiBzbG90ID0gcG9y
dC0+c2xvdDsKIAogCQlpZiAocG9ydC0+ZW5hYmxlZCkKLQkJCXBjaWVfbGlua19zdGF0dXMgfD0g
QklUKHNsb3QpOworCQkJcGNpZS0+bGlua19zdGF0dXMgfD0gQklUKHNsb3QpOwogCX0KIAotCWlm
IChwY2llX2xpbmtfc3RhdHVzID09IDApCisJaWYgKHBjaWUtPmxpbmtfc3RhdHVzID09IDApCiAJ
CXJldHVybiAtMTsKIAogCW4gPSAwOwogCWZvciAoaSA9IDA7IGkgPCBQQ0lFX1AyUF9NQVg7IGkr
KykKLQkJaWYgKHBjaWVfbGlua19zdGF0dXMgJiBCSVQoaSkpCisJCWlmIChwY2llLT5saW5rX3N0
YXR1cyAmIEJJVChpKSkKIAkJCXAycF9icl9kZXZudW1baV0gPSBuKys7CiAKIAlmb3IgKGkgPSAw
OyBpIDwgUENJRV9QMlBfTUFYOyBpKyspCi0JCWlmICgocGNpZV9saW5rX3N0YXR1cyAmIEJJVChp
KSkgPT0gMCkKKwkJaWYgKChwY2llLT5saW5rX3N0YXR1cyAmIEJJVChpKSkgPT0gMCkKIAkJCXAy
cF9icl9kZXZudW1baV0gPSBuKys7CiAKIAlwY2llX3JtdyhwY2llLCBSQUxJTktfUENJX1BDSUNG
R19BRERSLApAQCAtNjM4LDcgKzY2Myw3IEBAIHN0YXRpYyBpbnQgbXQ3NjIxX3BjaWVfcmVnaXN0
ZXJfaG9zdChzdHJ1Y3QgcGNpX2hvc3RfYnJpZGdlICpob3N0LAogCWhvc3QtPmJ1c25yID0gcGNp
ZS0+YnVzbi5zdGFydDsKIAlob3N0LT5kZXYucGFyZW50ID0gcGNpZS0+ZGV2OwogCWhvc3QtPm9w
cyA9ICZtdDc2MjFfcGNpX29wczsKLQlob3N0LT5tYXBfaXJxID0gb2ZfaXJxX3BhcnNlX2FuZF9t
YXBfcGNpOworCWhvc3QtPm1hcF9pcnEgPSBtdDc2MjFfbWFwX2lycTsKIAlob3N0LT5zd2l6emxl
X2lycSA9IHBjaV9jb21tb25fc3dpenpsZTsKIAlob3N0LT5zeXNkYXRhID0gcGNpZTsKIAo=
--000000000000a379ed05a2f1a77e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--000000000000a379ed05a2f1a77e--

