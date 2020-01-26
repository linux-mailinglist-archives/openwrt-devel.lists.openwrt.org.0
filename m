Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A36B149DD5
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 00:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5E7uIMGdWzR+kdtWHxXRhXndjjsoli2wtPCF+OI4TsU=; b=NmShfbeUSbJEC7BDJfswa3Ly6
	Sppmc3odTdvBXOhwd5qPKqsD31IzNnMNaDROBp7NLzMEY3uGRrTbLphKR6uGNE7Y+G+6kHLYjh29Y
	X/uqssy3IlyCETkS87g4d9F0Cq4nd0iRZ1JMBN24MceqmQAI8C2II0EcJ/A7gPEnz6m5im0+EjdR7
	Adb4n9OwJDy4fstJGSZ8kYb1CG687Dcss7mX0xu+YqkzSBPyr2yVufoDjg90y4hyBO8wdfuKcxRwr
	+zMbqCwVPbHVeO4V10+lV2G04hVNzCL1vNWwppl82eI2pY3CZ0K5QIJqq2DJNtIPOUGDcLRdjuUu4
	Qm5wdqzSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivrRH-0006J3-NO; Sun, 26 Jan 2020 23:35:35 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivrR4-0006B0-F1
 for openwrt-devel@lists.openwrt.org; Sun, 26 Jan 2020 23:35:25 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MF39M-1ipFih1HOi-00FS2I; Mon, 27 Jan 2020 00:35:11 +0100
From: <mail@adrianschmutzler.de>
To: "'Baptiste Jonglez'" <baptiste@bitsofnetworks.org>,
 "'Joe Ayers'" <joe@ayerscasa.com>
References: <CAALvt2OkLzFj_xhfDXY9WObeV48RkZGLZ83z0jfoNtG9tNQS1A@mail.gmail.com>
 <20200126230936.GH1525457@lud.localdomain>
In-Reply-To: <20200126230936.GH1525457@lud.localdomain>
Date: Mon, 27 Jan 2020 00:35:10 +0100
Message-ID: <00cc01d5d4a1$40715510$c153ff30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJXbXnwgRPbt5f/aK0Jui7TMUx9mgESlzMGpvHSfoA=
Content-Language: de
X-Provags-ID: V03:K1:QTqiz9MxWfdvlTtwohfJphgNCBgZLKgi3tUbeF/VfmPklrAnwRi
 sLgJ3CR9GwhrcKlvFG1quzNxWYw1yg8RPDFu4/PFpYT53nnU/W65rcOVn8S1+gZddanbv5U
 ZwD/4UBwus8Z5RwaXUtEpQ+9adGGhhi58BznkoTHphRJSMdkrlGQjXIm3PqTLsV3jvbrl7k
 xxugeq2bTT/8sldB4lWbA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1RvV39Qoq4o=:MtWA4bSLPYIuEmarn0DzLd
 abKKKkcbCMASQNKeVvHjcZlGhauPOEjQbsdjRPt65AwRVLVeMLOLqpI5qZnRMI1A1oJcaJ2pC
 Pob6H3wqhdXNYpGj7fXUZ4NT8L36Fjcev0tOgPFQapf10Ef2KHzqyZvyjzf9byXZixVxVIgOF
 aU0Ym9CUFSdCkQCp/zZrCg4BBwF39CvaMvvfcJ9mvqEo8ySmVi/ces7x1TyTydUzGzWis61Tx
 GpD4OnRZHxwoPpLR/mOXn6ZD9t1uUIQG8YqhRCKCPtqXzwkqbQ9jfiXR4eAdfri+Rm4ZfXSYW
 Y8NS3284JX39jVKDzr+Mm1rJJ3DFx9+7aA3s8lcFotDQ4qND5smod2yNQgV1tFm3/b83NMJRU
 grc9/ScWlCWk+2Mgfki5w62vLt4QbDgRxP6bMVWfYsGmBbs5bIdu4J2XCTZlv0iTBKxNUgN63
 Gk2++VMj6wnCT8ecaOAAA+ROuwpN28FKrdCGHrs5x+ZjFvRRk9Ou19VuLJi9m7zeccdecYK9/
 HuMUbj4nUVDYBlN/mMlXVh5KCvw9GQcqbuWV1GDdQ/trw2hfTiwiznUPw1gCxHodsIzZDAW1n
 ynqO8K3r8BamlYo4ymgL5CLZn0OPAfXf8xv+OavI0SZHD0Dju02+PnWN3Kqgx/0ayzb+Hue4r
 froa4cHXTZp7GuDc4906uqYfMAh1/xS4VNjkfjgTvKykD8GtcR0l/aUfsZSVzeL+MlkGqFX9j
 QPBuVdi3fRO+wGTYjttFis2WHOPlioMvSzaGpUPSFdAPYOapA9yPssNaQ4GYiAQFAbgQpFD2V
 E4omdZkreqVnqU6l6K9ZEdQ9WKn+ZxSmGxjuTRD+pmtFliikJWYFdDA3mKZhfVoA/lisJMv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_153522_837628_DA233501 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] 19.07.0 boot hang on Mikrotik device
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
Content-Type: multipart/mixed; boundary="===============4798136214425459208=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4798136214425459208==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=rWWDhDZVYYrsuL=-="

This is a multipart message in MIME format.

--=-=rWWDhDZVYYrsuL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Baptiste Jonglez
> Sent: Montag, 27. Januar 2020 00:10
> To: Joe Ayers <joe@ayerscasa.com>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] 19.07.0 boot hang on Mikrotik device
>=20
> Hi,
>=20
> You should report this bug under "openwrt-19.07":
> https://bugs.openwrt.org/
>=20
> You are apparently using ar71xx, did you try an ath79 19.07 image?

the first mikrotik device in ath79 was merged to master last week, so ath79=
 is not an option here ATM.

Best

Adrian

>=20
> Regards,
> Baptiste
>=20
> On 25-01-20, Joe Ayers wrote:
> > At http:\\arednmesh.org, we've had several mikrotik devices working,
> > all with "LHG" motherboards.   One of the devices, RB LHG 2nD-XL no
> > longer boots with upgrade from 18.06.2 to 19.07.0.  Other devices with
> > same "LHG" mother board continue to work fine, e.g. RB LHG 5nD-XL, LHG
> > 5nDHP.
> >
> > I'm stuck on getting this working, if you have any pointers, please
> > let me know.    Here's dmesg where it hangs:
> >
> > [    0.000000] Linux version 4.14.162 (joe@AE6XE-VM) (gcc version
> > 7.5.0 (OpenWrt GCC 7.5.0 r10860-a3ffeb413b)) #0 Mon Jan 6 16:47:09
> > 2020
> > [    0.000000] bootconsole [early0] enabled
> > [    0.000000] CPU0 revision is: 00019374 (MIPS 24Kc)
> > [    0.000000] SoC: Qualcomm Atheros QCA9533 ver 2 rev 0
> > [    0.000000] Determined physical RAM map:
> > [    0.000000]  memory: 04000000 @ 00000000 (usable)
> > [    0.000000] User-defined physical RAM map:
> > [    0.000000]  memory: 04000000 @ 00000000 (usable)
> > [    0.000000] Initrd not found or empty - disabling initrd
> > [    0.000000] Primary instruction cache 64kB, VIPT, 4-way, linesize 32=
 bytes.
> > [    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases,
> > linesize 32 bytes
> > [    0.000000] Zone ranges:
> > [    0.000000]   Normal   [mem 0x0000000000000000-0x0000000003ffffff]
> > [    0.000000] Movable zone start for each node
> > [    0.000000] Early memory node ranges
> > [    0.000000]   node   0: [mem 0x0000000000000000-0x0000000003ffffff]
> > [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-
> 0x0000000003ffffff]
> > [    0.000000] random: get_random_bytes called from 0x80477740 with
> crng_init=3D0
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 1=
6256
> > [    0.000000] Kernel command line: no-uart no-buzzer no-nand parts=3D1
> > boot_part_size=3D16777216 gpio=3D0 HZ=3D325000000 mem=3D64M
> > kmac=3DB8:69:F4:79:52:22 board=3Dlhg-hb board=3Dlhg-hb ver=3D6.42
> > hw_opt=3D00284001 boot=3D1 mlc=3D11 console=3DttyS0,115200
> rootfstype=3Dsquashfs
> > noinitrd
> > [    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
> > [    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 b=
ytes)
> > [    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 by=
tes)
> > [    0.000000] Writing ErrCtl register=3D00000000
> > [    0.000000] Readback ErrCtl register=3D00000000
> > [    0.000000] Memory: 59928K/65536K available (3634K kernel code,
> > 162K rwdata, 384K rodata, 228K init, 198K bss, 5608K reserved, 0K
> > cma-reserved)
> > [    0.000000] SLUB: HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D=
1,
> Nodes=3D1
> > [    0.000000] NR_IRQS: 51
> > [    0.000000] Clocks: CPU:650.000MHz, DDR:600.000MHz, AHB:300.000MHz,
> > Ref:25.000MHz
> > [    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles:
> > 0xffffffff, max_idle_ns: 5880801374 ns
> > [    0.000009] sched_clock: 32 bits at 325MHz, resolution 3ns, wraps
> > every 6607641598ns
> > [    0.008858] Calibrating delay loop... 432.53 BogoMIPS (lpj=3D2162688)
> > [    0.075986] pid_max: default: 32768 minimum: 301
> > [    0.081432] Mount-cache hash table entries: 1024 (order: 0, 4096 byt=
es)
> > [    0.088943] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
> bytes)
> > [    0.099268] clocksource: jiffies: mask: 0xffffffff max_cycles:
> > 0xffffffff, max_idle_ns: 19112604462750000 ns
> > [    0.110476] futex hash table entries: 256 (order: -1, 3072 bytes)
> > [    0.117873] NET: Registered protocol family 16
> > [    0.126436] MIPS: machine is MikroTik RouterBOARD LHG 2nD-XL
> > [    0.133043] ar71xx: invalid MDIO id 1
> > [    0.385180] clocksource: Switched to clocksource MIPS
> > [    0.391886] NET: Registered protocol family 2
> > [    0.397634] TCP established hash table entries: 1024 (order: 0, 4096=
 bytes)
> > [    0.405608] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
> > [    0.412831] TCP: Hash tables configured (established 1024 bind 1024)
> > [    0.420200] UDP hash table entries: 256 (order: 0, 4096 bytes)
> > [    0.426879] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> > [    0.434266] NET: Registered protocol family 1
> > [    0.444824] workingset: timestamp_bits=3D30 max_order=3D14
> bucket_order=3D0
> > [    0.457143] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> > [    0.463756] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME)
> > (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
> > [    0.484675] io scheduler noop registered
> > [    0.489176] io scheduler deadline registered (default)
> > [    0.495371] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
> > [    0.502913] console [ttyS0] disabled
> > [    0.527117] serial8250.0: ttyS0 at MMIO 0x18020000 (irq =3D 11,
> > base_baud =3D 1562500) is a 16550A
> > [    0.536918] console [ttyS0] enabled
> > [    0.536918] console [ttyS0] enabled
> > [    0.544460] bootconsole [early0] disabled
> > [    0.544460] bootconsole [early0] disabled
> > [    0.556787] m25p80 spi0.0: found w25q128jv, expected m25p80
> > [    0.572223] m25p80 spi0.0: w25q128jv (16384 Kbytes)
> > [    0.577745] Creating 6 MTD partitions on "spi0.0":
> > [    0.582708] 0x000000000000-0x00000000e000 : "routerboot"
> > [    0.589854] 0x00000000e000-0x00000000f000 : "hard_config"
> > [    0.596836] 0x00000000f000-0x000000010000 : "bios"
> > [    0.603684] 0x000000010000-0x00000001f000 : "routerboot2"
> > [    0.610655] 0x00000001f000-0x000000020000 : "soft_config"
> > [    0.618205] 0x000000020000-0x000001000000 : "firmware"
> > [    0.624569] 2 minor-fw partitions found on MTD device firmware
> > [    0.630670] 0x000000020000-0x000000190000 : "kernel"
> > [    0.636507] 0x000000190000-0x000001000000 : "rootfs"
> > [    0.642258] mtd: device 7 (rootfs) set to be root filesystem
> > [    0.648186] 1 squashfs-split partitions found on MTD device rootfs
> > [    0.654578] 0x0000006f0000-0x000001000000 : "rootfs_data"
> > [    0.664200] libphy: Fixed MDIO Bus: probed
> > [    0.690987] libphy: ag71xx_mdio: probed
> > [    1.327500] ag71xx-mdio.1: Found an AR934X built-in switch
> > [    1.380907] eth0: Atheros AG71xx at 0xba000000, irq 5, mode: gmii
> > [    1.388695] NET: Registered protocol family 17
> > [    1.393352] 8021q: 802.1Q VLAN Support v1.8
> > [    1.410019] VFS: Mounted root (squashfs filesystem) readonly on devi=
ce
> 31:7.
> > [    1.418636] Freeing unused kernel memory: 228K
> > [    1.423222] This architecture does not have kernel memory protection.
> > [    2.026942] init: Console is alive
> > [    2.030709] init: - watchdog -
> > [    2.445217] random: fast init done
> > [    3.102742] kmodloader: loading kernel modules from /etc/modules-
> boot.d/*
> > [    3.154160] usbcore: registered new interface driver usbfs
> > [    3.159975] usbcore: registered new interface driver hub
> > [    3.165584] usbcore: registered new device driver usb
> > [    3.176012] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driv=
er
> > [    3.183571] kmodloader: done loading kernel modules from
> > /etc/modules-boot.d/*
> > [    3.193344] init: - preinit -
> > [    3.630728] random: procd: uninitialized urandom read (4 bytes read)
> > Press the [f] key and hit [enter] to enter failsafe mode Press the
> > [1], [2], [3] or [4] key and hit [enter] to select the debug level
> > [    6.266613] eth0: link up (1000Mbps/Full duplex)
> >
> > It hangs at this point.   What should occur, but does not (from 18.06.2=
):
> >
> > [    7.632244] jffs2: notice: (354) jffs2_build_xattr_subsystem:
> > complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan)
> > and 0 of xref (0 dead, 0 orphan) found.
> > [    7.649615] mount_root: switching to jffs2 overlay
> > [    7.687438] urandom-seed: Seeding with /etc/urandom.seed
> > [    7.841353] eth0: link down
> > [    7.855127] procd: - early -
> > [    7.858915] procd: - watchdog -
> > [    8.436062] procd: - watchdog -
> > [    8.440039] procd: - ubus -
> > [    8.632931] random: ubusd: uninitialized urandom read (4 bytes read)
> > [    8.643930] random: ubusd: uninitialized urandom read (4 bytes read)
> > [    8.651001] random: ubusd: uninitialized urandom read (4 bytes read)
> > [    8.658593] procd: - init -
> > Please press Enter to activate this console.
> > [    9.049497] kmodloader: loading kernel modules from /etc/modules.d/*
> > [    9.061251] ipip: IPv4 and MPLS over IPv4 tunneling driver
> > [    9.089565] Loading modules backported from Linux version
> > wt-2017-11-01-0-gfe248fc2c180
> > [    9.097904] Backport generated by backports.git v4.14-rc2-1-31-g86cf=
0e5d
> > [    9.119572] nf_conntrack version 0.5.0 (1024 buckets, 4096 max)
> > [    9.293129] xt_time: kernel timezone is -0000
> > [    9.447984] ip_tables: (C) 2000-2006 Netfilter Core Team
> > [    9.629677] ieee80211 phy0: Atheros AR9531 Rev:2 mem=3D0xb8100000,
> irq=3D47
> > [    9.722604] kmodloader: done loading kernel modules from
> /etc/modules.d/*
> > [   10.709017] urandom_read: 5 callbacks suppressed
> > [   10.709024] random: jshn: uninitialized urandom read (4 bytes read)
> > [   17.996749] br-lan: port 1(eth0) entered blocking state
> > [   18.002220] br-lan: port 1(eth0) entered disabled state
> > [   18.007947] device eth0 entered promiscuous mode
> > [   19.628494] eth0: link up (1000Mbps/Full duplex)
> > [   19.633311] br-lan: port 1(eth0) entered blocking state
> > [   19.638743] br-lan: port 1(eth0) entered forwarding state
> > [   25.137046] wlan0: Trigger new scan to find an IBSS to join
> > [   29.136992] wlan0: Trigger new scan to find an IBSS to join
> > [   29.177032] wlan0: Creating new IBSS network, BSSID 0a:9e:06:dd:57:f0
> > [   73.657038] random: crng init done
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=rWWDhDZVYYrsuL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4uIicACgkQoNyKO7qx
AnAyJQ//bCu4Th9OjtzxTfl/wU9TwlM6AazojlWplq75sw170nyeLpflLhLAfobt
P6HeyYg+iGN+wGGPJ3VVBLRtV5NEQvXx0l8R6xsD7mj1akl0KFEj7O67d1eJkwH2
8jwQt9ZnKG/5pjVpilkh0sqtWsbn9aGQkFsVI8F0qU+E6zRIZYOKdTznC/ftn7BQ
C9HscSrN+3S2M/JuTX40HipaHiRcDzKQuvH53lVbCOuTLG/c/GjEd7mKVqfD4xVD
xu+LQHtSge0BCtMjAUxFe1fy3jeb0U+6AkNIPVmvD8ibucfT2/gawM9u/2fzLUOZ
GsrLy7cxI3um4Mc4PECzI++N1g837sen/imP1sYuY59gvPn1F+KCPcnMg8kXWTKo
WIRzHdLYT9+yrLs5R5w2gEmHTtOrqK9wSXwrU7LVfQ0Wpcx5UstUQpu222GtsUDq
377fbMKYHhE1toOtS6YhrnLRD4bgp73chdd5dZvm0f86KI1FEvSJTlKgiQWRBdSv
hT6qMxQ5Jx3pvMdCx8Ii5nbT8/gIErd/Jen20ETexk6+wKCwuGIaznSkS+Rrl1RQ
YveEuii80XhXVLz4mn9qJSGWHDbf828SbO+S16T+m9jBvlNOJTRts5dThtzxypFd
15Z92CtcdJttmReiJNH+1Vr2ga5nKRiJrK2DK0lTB9g4UMWfU/g=
=zffk
-----END PGP SIGNATURE-----


--=-=rWWDhDZVYYrsuL=-=--



--===============4798136214425459208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4798136214425459208==--


