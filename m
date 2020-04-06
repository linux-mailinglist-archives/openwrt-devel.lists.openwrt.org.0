Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B3419FAFD
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 19:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UzmQV3YyUBWSK+7oLkAV6JL4WD6xPxG0r+eGXaDbo04=; b=ea+
	lAuSkAugEn9zW/zP1K6nebVL6M5E4qImftt8giiDSvOuYeeBKGGCcUeu1YwnDzJS8ErlUephD+3KD
	mHbhgEgnWqitkhbMSpXiG4l3i8rIFjSqioYTbze316V43zniZgBCe2XyWqc5CVkNGeyBzr4E9tPss
	01aoDbxAG8dApilSc+GRcRRYDjWQ8ZKQkL3VJEqifNW5fO4cg3QG45esQ3PEQf1S03Qu/UCvexEFt
	8UmwPyFDIIk24YWKV0+pOO0XTRT6awYwADX4zbrNX8YPfMa3bjJFVr740sjvD//0zTHKv/Sqffi2P
	6hCzCMKigpHErXiDWVKA6oVXvMZaeAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVCG-0000dC-7r; Mon, 06 Apr 2020 17:06:04 +0000
Date: Mon, 6 Apr 2020 19:05:44 +0200
To: mrkiko.rs@gmail.com, openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.1349.1586192759.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Heck via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Heck <princegerman@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] Openwrt TpLink Archer D2
Content-Type: multipart/mixed; boundary="===============6706556065675562271=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6706556065675562271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6706556065675562271==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVC8-0000cG-Bd
	for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 17:05:58 +0000
Received: by mail-wr1-x436.google.com with SMTP id v5so279635wrp.12
        for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 10:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=fWbISu+PrR+kkt7Zc7cSrt02odUJchKHk3nwC3fBOoY=;
        b=JDWvjIYiPcOYctKn0T0c72KiekDm8M0qfK7bxyTOpuMRxaW0Yw3ah1Tf0jlatdQET5
         1yMLoNPU4AUmh/M8/bUGGTjq3/JYLKcGZbPBXD2VZkkF7Ql85bhYWfR+lmU1IYuyGASi
         XRQUxGjtQvd/K2VpVxkYRUTOXe7w7uKd+zRA04QCMDKgXvanbJIyy52HgrB24aYTeHkb
         EOQ4zACwwmHT/LEPz9+zEX5FinA8Ga6VdHDVryPvRZcFb39001hE15UCO0q8R0GBBit1
         eCv7Gqfn4q+NgIt+ovIZvw2jcjo0f95q4EWYa/odlbtxvmnGBoLeQQlbc2fQvP+erXWY
         LV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fWbISu+PrR+kkt7Zc7cSrt02odUJchKHk3nwC3fBOoY=;
        b=ZpgOHdXdjC0hk19eXZbcfTn3RVWAAehpfbLdOiRoBjoVpI2gBIOnMs+V2uxFTg88bD
         0XdKZaEasyjiBKsBvYagm4HrTuKRoj/Vy3AHtpz5BVfPxt8SvPKznnJuv3aKH1iWmD3a
         zpLC+DxOZ0roqS3sx/DBDgw3csp5RHSmVIWxVL8CjM1ylzdBmUT894TfXsJ8CSd2RMeX
         63JlGjyyBt2Oxwr2UaRirvKfYkbjR+fgb/6M8DVpycoA0VKeR3ASa8N7IXVLCueZmLq2
         aZFDvyasXzUEiUNbHlrtM2tEVqnCFiFladzJMHfiouG8/M3MiJQ4oUXRS1VEiQaAe9/h
         hE5A==
X-Gm-Message-State: AGi0PuYusQOspXXR4LGJx0hMGBp4Owj+rGKe8c0eQDDh4LEoEVboyYql
	pE6njGHxC/hoNPFKJ8PHXOJQS+ZLEaFy5Lqubrw=
X-Google-Smtp-Source: APiQypKJ2OTLXdipNSE6ji47dr16A62i4+0vAb9Oqs9T51Dpym3Q1WCJIbJSEhUVduuk1lXeb/z+v8ic63aIeJlvyLg=
X-Received: by 2002:adf:de8b:: with SMTP id w11mr136043wrl.397.1586192753702;
 Mon, 06 Apr 2020 10:05:53 -0700 (PDT)
MIME-Version: 1.0
From: Martin Heck <princegerman@googlemail.com>
Date: Mon, 6 Apr 2020 19:05:44 +0200
Message-ID: <CANVREGi6S8z6UN6cYPSgQG5Z0U4OZhoUagW8qS151K9Z28grVg@mail.gmail.com>
Subject: Openwrt TpLink Archer D2
To: mrkiko.rs@gmail.com, openwrt-devel@lists.openwrt.org
Content-Type: multipart/alternative; boundary="000000000000a13bd605a2a2472b"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_100556_402484_7D4D69B3 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:436 listed in]
                             [list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [princegerman[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

--000000000000a13bd605a2a2472b
Content-Type: text/plain; charset="UTF-8"

Hello there,

i have a Tp Link Archer D2 Router and ive managed to get the bin file from
the vr200v installed on the device but after this i stuck with the
following U-Boot Code. I know its not supported yet but maybe this could
help you with developing. I hope that you can fix that easily so i can use
this puppy :)
Have a nice day and stay healthy.
Martin Heck



ROM VER: 1.1.0
CFG 05

ROM VER: 1.1.0
CFG 05

DDR autotuning Rev 1.0
DDR size from 0xa0000000 - 0xa3ffffff
DDR check ok... start booting...



U-Boot 2010.06-svn14778-LANTIQ-v-2.2.67 (Jan 15 2016 - 15:05:13)

CLOCK CPU 500M RAM 250M
16 Bit RAM
DRAM:  64 MiB
Using default environment

In:    serial
Out:   serial
Err:   serial
Net:   internal phy using 25Mhz clock
Internal phy firmware version: 0x8435
ar10 Switch16384 KiB S25FL128P_UNI_64K at 0:0 is now current device
MAC: ec-08-6b-91-b8-b0


Type "run flash_nfs" to mount root filesystem over NFS

Hit any key to stop autoboot:  0
16384 KiB S25FL128P_UNI_64K at 0:0 is now current device
        Uncompressing ...
Starting kernel ...

[    0.000000] Linux version 4.14.171 (builder@buildhost) (gcc version
7.5.0 (OpenWrt GCC 7.5.0 r10947-65030d81f3)) #0 SMP Thu Feb 27 21:05:12 2020
[    0.000000] SoC: xRX300 rev 1.2
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019556 (MIPS 34Kc)
[    0.000000] MIPS: machine is TP-LINK Archer VR200v
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 07f00000 @ 00000000 (usable)
[    0.000000] User-defined physical RAM map:
[    0.000000]  memory: 07e00000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Detected 1 available secondary CPU(s)
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32
bytes.
[    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases,
linesize 32 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000007dfffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000007dfffff]
[    0.000000] Initmem setup node 0 [mem
0x0000000000000000-0x0000000007dfffff]
[    0.000000] random: get_random_bytes called from 0x80632740 with
crng_init=0
[    0.000000] percpu: Embedded 14 pages/cpu s25968 r8192 d23184 u57344
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 32004
[    0.000000] Kernel command line: console=ttyLTQ0,115200 mem=126M
vpe1_load_addr=0x87e00000 vpe1_mem=2M maxvpes=1 maxtcs=1 nosmp
[    0.000000] PID hash table entries: 512 (order: -1, 2048 bytes)
[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536
bytes)
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Writing ErrCtl register=00000010
[    0.000000] Readback ErrCtl register=00000010
[    0.000000] Memory: 119840K/129024K available (5222K kernel code, 197K
rwdata, 908K rodata, 1272K init, 230K bss, 9184K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 256
[    0.000000] Data bus error, epc == 806352b0, ra == 80635278
[    0.000000] Oops[#1]:
[    0.000000] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.14.171 #0
[    0.000000] task: 80614840 task.stack: 80602000
[    0.000000] $ 0   : 00000000 00000001 ffffffff 80770000
[    0.000000] $ 4   : bf103000 e0000000 00000400 00000001
[    0.000000] $ 8   : 80618168 805119d0 00000000 00000000
[    0.000000] $12   : 00000000 00000000 00000000 3d090000
[    0.000000] $16   : 00000000 80770000 80770000 80770000
[    0.000000] $20   : 00000001 80770000 83fa0000 80002000
[    0.000000] $24   : 00000000 00000000
[    0.000000] $28   : 80602000 80603dd8 81003cf0 80635278
[    0.000000] Hi    : 00000000
[    0.000000] Lo    : 00000000
[    0.000000] epc   : 806352b0 0x806352b0
[    0.000000] ra    : 80635278 0x80635278
[    0.000000] Status: 11007c02 KERNEL EXL
[    0.000000] Cause : 5080801c (ExcCode 07)
[    0.000000] PrId  : 00019556 (MIPS 34Kc)
[    0.000000] Modules linked in:
[    0.000000] Process swapper/0 (pid: 0, threadinfo=80602000,
task=80614840, tls=00000000)
[    0.000000] *HwTLS: 00000100
[    0.000000] Stack : 1e105300 805960dc 80772090 8061814c 00000000
80634b6c 1f101000 803914dc
[    0.000000]         81002b20 80390c0c 00000000 00000000 1f101000
1f101fff 80798d28 00000006
[    0.000000]         1f102000 1f102fff 81003c34 00000200 00000000
00000000 00000000 00000000
[    0.000000]         1f103000 1f103fff 81003d48 00000200 00000000
00000000 00000000 00000000
[    0.000000]         1e105300 1e1053ff 81007c64 00000200 00000000
00000000 00000000 00000000
[    0.000000]         ...
[    0.000000] Call Trace:
[    0.000000] [<80634b6c>] 0x80634b6c
[    0.000000] [<803914dc>] 0x803914dc
[    0.000000] [<80390c0c>] 0x80390c0c
[    0.000000] [<80634bd4>] 0x80634bd4
[    0.000000] [<80637fe0>] 0x80637fe0
[    0.000000] [<806329b8>] 0x806329b8
[    0.000000] [<80632380>] 0x80632380
[    0.000000]
[    0.000000] Code: 248463ac  8c420060  0000000f <7c42f000> 8c6322f0
 3c048059  ac620060  24024000  00003825
[    0.000000]
[    0.000000] ---[ end trace 6daa6ea0f6bf3f22 ]---
[    0.000000] Kernel panic - not syncing: Fatal exception
[    0.000000] Rebooting in 1 seconds..
[    0.000000] Reboot failed -- System halted



<https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail>
Virenfrei.
www.avast.com
<https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail>
<#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>

--000000000000a13bd605a2a2472b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello there,=C2=A0<div><br></div><div>i have a Tp Link Arc=
her D2 Router and ive managed to get the bin file from the vr200v installed=
 on the device but after this i stuck with the following U-Boot Code. I kno=
w its not supported=C2=A0yet but maybe=C2=A0this could help you with develo=
ping. I hope that you can fix that easily so i can use this puppy :)<br>Hav=
e a nice day and stay healthy.=C2=A0<br>Martin Heck=C2=A0<br><br><br><br>RO=
M VER: 1.1.0<br>CFG 05<br><br>ROM VER: 1.1.0<br>CFG 05<br><br>DDR autotunin=
g Rev 1.0<br>DDR size from 0xa0000000 - 0xa3ffffff<br>DDR check ok... start=
 booting...<br><br><br><br>U-Boot 2010.06-svn14778-LANTIQ-v-2.2.67 (Jan 15 =
2016 - 15:05:13)<br><br>CLOCK CPU 500M RAM 250M<br>16 Bit RAM<br>DRAM: =C2=
=A064 MiB<br>Using default environment<br><br>In: =C2=A0 =C2=A0serial<br>Ou=
t: =C2=A0 serial<br>Err: =C2=A0 serial<br>Net: =C2=A0 internal phy using 25=
Mhz clock<br>Internal phy firmware version: 0x8435<br>ar10 Switch16384 KiB =
S25FL128P_UNI_64K at 0:0 is now current device<br>MAC: ec-08-6b-91-b8-b0<br=
><br><br>Type &quot;run flash_nfs&quot; to mount root filesystem over NFS<b=
r><br>Hit any key to stop autoboot: =C2=A00<br>16384 KiB S25FL128P_UNI_64K =
at 0:0 is now current device<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Uncompressing .=
..<br>Starting kernel ...<br><br>[ =C2=A0 =C2=A00.000000] Linux version 4.1=
4.171 (builder@buildhost) (gcc version 7.5.0 (OpenWrt GCC 7.5.0 r10947-6503=
0d81f3)) #0 SMP Thu Feb 27 21:05:12 2020<br>[ =C2=A0 =C2=A00.000000] SoC: x=
RX300 rev 1.2<br>[ =C2=A0 =C2=A00.000000] bootconsole [early0] enabled<br>[=
 =C2=A0 =C2=A00.000000] CPU0 revision is: 00019556 (MIPS 34Kc)<br>[ =C2=A0 =
=C2=A00.000000] MIPS: machine is TP-LINK Archer VR200v<br>[ =C2=A0 =C2=A00.=
000000] Determined physical RAM map:<br>[ =C2=A0 =C2=A00.000000] =C2=A0memo=
ry: 07f00000 @ 00000000 (usable)<br>[ =C2=A0 =C2=A00.000000] User-defined p=
hysical RAM map:<br>[ =C2=A0 =C2=A00.000000] =C2=A0memory: 07e00000 @ 00000=
000 (usable)<br>[ =C2=A0 =C2=A00.000000] Initrd not found or empty - disabl=
ing initrd<br>[ =C2=A0 =C2=A00.000000] Detected 1 available secondary CPU(s=
)<br>[ =C2=A0 =C2=A00.000000] Primary instruction cache 32kB, VIPT, 4-way, =
linesize 32 bytes.<br>[ =C2=A0 =C2=A00.000000] Primary data cache 32kB, 4-w=
ay, VIPT, cache aliases, linesize 32 bytes<br>[ =C2=A0 =C2=A00.000000] Zone=
 ranges:<br>[ =C2=A0 =C2=A00.000000] =C2=A0 Normal =C2=A0 [mem 0x0000000000=
000000-0x0000000007dfffff]<br>[ =C2=A0 =C2=A00.000000] Movable zone start f=
or each node<br>[ =C2=A0 =C2=A00.000000] Early memory node ranges<br>[ =C2=
=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x0000000000000000-0x0000000=
007dfffff]<br>[ =C2=A0 =C2=A00.000000] Initmem setup node 0 [mem 0x00000000=
00000000-0x0000000007dfffff]<br>[ =C2=A0 =C2=A00.000000] random: get_random=
_bytes called from 0x80632740 with crng_init=3D0<br>[ =C2=A0 =C2=A00.000000=
] percpu: Embedded 14 pages/cpu s25968 r8192 d23184 u57344<br>[ =C2=A0 =C2=
=A00.000000] Built 1 zonelists, mobility grouping on.=C2=A0 Total pages: 32=
004<br>[ =C2=A0 =C2=A00.000000] Kernel command line: console=3DttyLTQ0,1152=
00 mem=3D126M vpe1_load_addr=3D0x87e00000 vpe1_mem=3D2M maxvpes=3D1 maxtcs=
=3D1 nosmp<br>[ =C2=A0 =C2=A00.000000] PID hash table entries: 512 (order: =
-1, 2048 bytes)<br>[ =C2=A0 =C2=A00.000000] Dentry cache hash table entries=
: 16384 (order: 4, 65536 bytes)<br>[ =C2=A0 =C2=A00.000000] Inode-cache has=
h table entries: 8192 (order: 3, 32768 bytes)<br>[ =C2=A0 =C2=A00.000000] W=
riting ErrCtl register=3D00000010<br>[ =C2=A0 =C2=A00.000000] Readback ErrC=
tl register=3D00000010<br>[ =C2=A0 =C2=A00.000000] Memory: 119840K/129024K =
available (5222K kernel code, 197K rwdata, 908K rodata, 1272K init, 230K bs=
s, 9184K reserved, 0K cma-reserved)<br>[ =C2=A0 =C2=A00.000000] SLUB: HWali=
gn=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D2, Nodes=3D1<br>[ =C2=A0 =C2=
=A00.000000] Hierarchical RCU implementation.<br>[ =C2=A0 =C2=A00.000000] N=
R_IRQS: 256<br>[ =C2=A0 =C2=A00.000000] Data bus error, epc =3D=3D 806352b0=
, ra =3D=3D 80635278<br>[ =C2=A0 =C2=A00.000000] Oops[#1]:<br>[ =C2=A0 =C2=
=A00.000000] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.14.171 #0<br>[ =C2=
=A0 =C2=A00.000000] task: 80614840 task.stack: 80602000<br>[ =C2=A0 =C2=A00=
.000000] $ 0 =C2=A0 : 00000000 00000001 ffffffff 80770000<br>[ =C2=A0 =C2=
=A00.000000] $ 4 =C2=A0 : bf103000 e0000000 00000400 00000001<br>[ =C2=A0 =
=C2=A00.000000] $ 8 =C2=A0 : 80618168 805119d0 00000000 00000000<br>[ =C2=
=A0 =C2=A00.000000] $12 =C2=A0 : 00000000 00000000 00000000 3d090000<br>[ =
=C2=A0 =C2=A00.000000] $16 =C2=A0 : 00000000 80770000 80770000 80770000<br>=
[ =C2=A0 =C2=A00.000000] $20 =C2=A0 : 00000001 80770000 83fa0000 80002000<b=
r>[ =C2=A0 =C2=A00.000000] $24 =C2=A0 : 00000000 00000000<br>[ =C2=A0 =C2=
=A00.000000] $28 =C2=A0 : 80602000 80603dd8 81003cf0 80635278<br>[ =C2=A0 =
=C2=A00.000000] Hi =C2=A0 =C2=A0: 00000000<br>[ =C2=A0 =C2=A00.000000] Lo =
=C2=A0 =C2=A0: 00000000<br>[ =C2=A0 =C2=A00.000000] epc =C2=A0 : 806352b0 0=
x806352b0<br>[ =C2=A0 =C2=A00.000000] ra =C2=A0 =C2=A0: 80635278 0x80635278=
<br>[ =C2=A0 =C2=A00.000000] Status: 11007c02 KERNEL EXL<br>[ =C2=A0 =C2=A0=
0.000000] Cause : 5080801c (ExcCode 07)<br>[ =C2=A0 =C2=A00.000000] PrId =
=C2=A0: 00019556 (MIPS 34Kc)<br>[ =C2=A0 =C2=A00.000000] Modules linked in:=
<br>[ =C2=A0 =C2=A00.000000] Process swapper/0 (pid: 0, threadinfo=3D806020=
00, task=3D80614840, tls=3D00000000)<br>[ =C2=A0 =C2=A00.000000] *HwTLS: 00=
000100<br>[ =C2=A0 =C2=A00.000000] Stack : 1e105300 805960dc 80772090 80618=
14c 00000000 80634b6c 1f101000 803914dc<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 81002b20 80390c0c 00000000 00000000 1f101000 1f101fff =
80798d28 00000006<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 =C2=A0 1=
f102000 1f102fff 81003c34 00000200 00000000 00000000 00000000 00000000<br>[=
 =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 =C2=A0 1f103000 1f103fff 81003=
d48 00000200 00000000 00000000 00000000 00000000<br>[ =C2=A0 =C2=A00.000000=
] =C2=A0 =C2=A0 =C2=A0 =C2=A0 1e105300 1e1053ff 81007c64 00000200 00000000 =
00000000 00000000 00000000<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 ...<br>[ =C2=A0 =C2=A00.000000] Call Trace:<br>[ =C2=A0 =C2=A00.000=
000] [&lt;80634b6c&gt;] 0x80634b6c<br>[ =C2=A0 =C2=A00.000000] [&lt;803914d=
c&gt;] 0x803914dc<br>[ =C2=A0 =C2=A00.000000] [&lt;80390c0c&gt;] 0x80390c0c=
<br>[ =C2=A0 =C2=A00.000000] [&lt;80634bd4&gt;] 0x80634bd4<br>[ =C2=A0 =C2=
=A00.000000] [&lt;80637fe0&gt;] 0x80637fe0<br>[ =C2=A0 =C2=A00.000000] [&lt=
;806329b8&gt;] 0x806329b8<br>[ =C2=A0 =C2=A00.000000] [&lt;80632380&gt;] 0x=
80632380<br>[ =C2=A0 =C2=A00.000000]<br>[ =C2=A0 =C2=A00.000000] Code: 2484=
63ac =C2=A08c420060 =C2=A00000000f &lt;7c42f000&gt; 8c6322f0 =C2=A03c048059=
 =C2=A0ac620060 =C2=A024024000 =C2=A000003825<br>[ =C2=A0 =C2=A00.000000]<b=
r>[ =C2=A0 =C2=A00.000000] ---[ end trace 6daa6ea0f6bf3f22 ]---<br>[ =C2=A0=
 =C2=A00.000000] Kernel panic - not syncing: Fatal exception<br>[ =C2=A0 =
=C2=A00.000000] Rebooting in 1 seconds..<br>[ =C2=A0 =C2=A00.000000] Reboot=
 failed -- System halted<br>=C2=A0</div><div>=C2=A0</div></div><div id=3D"D=
AB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br> <table style=3D"border-top:1px so=
lid #d3d4de">
	<tr>
      <td style=3D"width:55px;padding-top:18px"><a href=3D"https://www.avas=
t.com/sig-email?utm_medium=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=
=3Dsig-email&amp;utm_content=3Dwebmail" target=3D"_blank"><img src=3D"https=
://ipmcdn.avast.com/images/icons/icon-envelope-tick-round-orange-animated-n=
o-repeat-v1.gif" alt=3D"" width=3D"46" height=3D"29" style=3D"width: 46px; =
height: 29px;"></a></td>
		<td style=3D"width:470px;padding-top:17px;color:#41424e;font-size:13px;fo=
nt-family:Arial,Helvetica,sans-serif;line-height:18px">Virenfrei. <a href=
=3D"https://www.avast.com/sig-email?utm_medium=3Demail&amp;utm_source=3Dlin=
k&amp;utm_campaign=3Dsig-email&amp;utm_content=3Dwebmail" target=3D"_blank"=
 style=3D"color:#4453ea">www.avast.com</a> 		</td>
	</tr>
</table>
<a href=3D"#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width=3D"1" height=3D"1">=
</a></div>

--000000000000a13bd605a2a2472b--


--===============6706556065675562271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6706556065675562271==--

