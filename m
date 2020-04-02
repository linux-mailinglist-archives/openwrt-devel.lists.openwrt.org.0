Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25B419C5A6
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 17:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jpX3/l7M9IMpQcNXTaETmnCrDI7oMsv7hzZmaXm+wA0=; b=FC6
	pgRD72wWh9yuyBQyI7Cpn2GORZN5kWsx8wqLbd2fef2vlu+MYkRSci1VDZK1goO1XZNLQrZio77k9
	o75mKoxOk73g+0NF9ttdfZn/zZ/mHYsw6eJqCb3JMKCRNDlS58OngiJYh2Lb+dQiuTgYr4eFB8iwX
	yzmzyo45JwlIgs48I+Pcux4R/nJBylKwB2gA/jLFMGpGTMg2r+735YLUHzBq4TGNaga7XvG1JcLNm
	MleS1vYTtZsbY/hHeiSWj7rsjJnqRDspyYfDIM04JHKeVurquOdprBsQsnUWxmLpWJFWBodZomtqx
	U9nmMOdzSiRgX7semJdIeGYzjrDAVWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK1cP-00052R-8a; Thu, 02 Apr 2020 15:18:57 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK1cI-00051w-PN
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 15:18:52 +0000
Received: from desktop ([188.192.134.31]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MtwMc-1j3kHg11v2-00uIwn; Thu, 02 Apr 2020 17:18:44 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 2 Apr 2020 17:18:43 +0200
Message-ID: <015b01d60901$ffa72650$fef572f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdYJAWtf03TVX4AHSUehkzbUudQnuw==
Content-Language: de
X-Provags-ID: V03:K1:dWufe0aR60C39xw6U1pM+gieAZjbdCBxTNThnVHUYbRu9wUI2GZ
 PwbV12va+rVnOS5aFqXhQymPT9YQCUtYKVRonfKuDoLrk67CQijAsBS4hWg052ezJIFG2NX
 g/gCJuInSPrW+3qotehGXeeKep+Lr7YKhOhxEDPAL2ScwRRsm9XK9bZPk+cYFI3i8nEGdNb
 IYTAjHUFwOeQ72w0R3cJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BS/Pyhtcc04=:dDfiEBduocXIKA16sPDcZ/
 wzmM3+ThE4bW8PTlP/up9a8uAgUnwbpib37zc1kiw7afsvOSLAujhX+phVeQAetNYKFnzPpoj
 4dyd5EddRXpyz7XkoqekvWNKHx0kdeW9KJlCdpMn4b4LjFoPGeVbShwnRANDPILyy60rqyOnF
 LgzL8/OHB8Dj46AfMvJDQH/AQAgJ+1udTrP6mYDC9CMjf8XQ4wwvWCilyE2OssFV/yb7KCkK8
 8Mvh9MskRpa3+6TSxh0hu/wFhQssKII4dYsF0+gXfM7uZ7mp5S9yFrtwahSI7MeQLOmuDV871
 DntCyfB5b9qR6SIuzY7Mgjp+gr4i4MUt5g++/CK4cXnPzA55DMn9RxxUdF7snCQDKnjUrKfEY
 l3lEp3XccV7vQ/vot+COTTzb7QXUETL7UKYCvhJF+pwPM1XSGXLxNjNpnr4guBbuTOcyeUG74
 h9RRsydmF2WH0fARA50uX0GzeKOQmQE1TNvLuh/zDhl0A9PlbEd3GQDGsgmXdqn2lbYVKSMCH
 2MbpGonPlMzR2tBJexzuQyIM99xkcyNmG7TmE0D2ddHXmOZuOkdUhhCf1vBzcbscuKJTAqDN2
 cRIFISV+joO74pRR1KjhMpy2hF5q5a7asrzUNm6IG26XwjvUsSgcPK4UHPLwndTdvLgJ3iROg
 zdM8X0woxMfeAiKvuYKBWiD7lWcLIGS6dD2Y2bMwR/ID+aSwYNim2k3M4TX7NZKPYwyJf14Ql
 g1Abxy+h5GNyyGxI0m/kBKPIlj8C0FKstu4HbAAmfpqnNfrRuL8DWs79z0JrSP5gDPV9DU3sH
 DzRMa9BqFgAIBpSzXasKo2+exLjgMA4qYxvABamc7hXpSM8lDi5SIC05V3WP1EUlVQm95sV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_081851_115501_EDF918A4 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] broadcom-wl @ bcm63xx fails on kernel 4.19
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
Cc: noltari@gmail.com
Content-Type: multipart/mixed; boundary="===============5665490453261392260=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5665490453261392260==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=k/Y/oApLB/Z9kk=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=k/Y/oApLB/Z9kk=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

since bcm63xx still has 4.19 as testing kernel for five months already, I t=
oday tried to build it.

Interestingly, the build fails for package/kernel/broadcom-wl, and this iss=
ue persists even when I go back to the initial commit introducing 4.19 supp=
ort (so, the problem is no regression).

For some reason, the problem seems to not affect bcm47xx, which uses kernel=
 4.19 as default ATM.

Since I have no idea what broadcom-wl does, I cannot provide much more than=
 the build errors below.

Best

Adrian

---

# Compile the kernel part
make -C "/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_gen=
eric/linux-4.19.81" KCFLAGS=3D"-ffile-prefix-map=3D/data/openwrt/build_dir/=
target-mips_mips32_musl=3Dtarget-mips_mips32_musl" HOSTCFLAGS=3D"-O2 -I/dat=
a/openwrt/staging_dir/host/include -I/data/openwrt/staging_dir/hostpkg/incl=
ude -I/data/openwrt/staging_dir/target-mips_mips32_musl/host/include -Wall =
-Wmissing-prototypes -Wstrict-prototypes" CROSS_COMPILE=3D"mips-openwrt-lin=
ux-musl-" ARCH=3D"mips" KBUILD_HAVE_NLS=3Dno KBUILD_BUILD_USER=3D"" KBUILD_=
BUILD_HOST=3D"" KBUILD_BUILD_TIMESTAMP=3D"Thu Apr  2 12:41:37 2020" KBUILD_=
BUILD_VERSION=3D"0" HOST_LOADLIBES=3D"-L/data/openwrt/staging_dir/host/lib"=
 CONFIG_SHELL=3D"bash" V=3D''  cmd_syscalls=3D KERNELRELEASE=3D4.19.81 PATH=
=3D"/data/openwrt/staging_dir/toolchain-mips_mips32_gcc-8.3.0_musl/bin:/dat=
a/openwrt/staging_dir/toolchain-mips_mips32_gcc-8.3.0_musl/bin:/data/openwr=
t/staging_dir/host/bin:/data/openwrt/staging_dir/toolchain-mips_mips32_gcc-=
8.3.0_musl/bin:/data/openwrt/staging_dir/host/bin:/data/openwrt/staging_dir=
/host/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games" SUBDIRS=
=3D"/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/=
broadcom-wl-5.10.56.27.3/kmod"  SUBDIRS=3D"/data/openwrt/build_dir/target-m=
ips_mips32_musl/linux-brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver" MOD=
FLAGS=3D"-DMODULE -mlong-calls" KBUILD_EXTRA_SYMBOLS=3D"/data/openwrt/build=
_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broadcom-wl-5.10.56.27.=
3/glue/Module.symvers" modules
make[4]: Entering directory '/data/openwrt/build_dir/target-mips_mips32_mus=
l/linux-brcm63xx_generic/linux-4.19.81'
  CC [M]  /data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_ge=
neric/broadcom-wl-5.10.56.27.3/driver/wl_iw.o
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_iw.c: In function 'wl_iw_set_freq':
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_iw.c:389:2: warning: this 'if' clause does n=
ot guard... [-Wmisleading-indentation]
  if (fwrq->m > 4000 && fwrq->m < 5000)
  ^~
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_iw.c:392:3: note: ...this statement, but the=
 latter is misleadingly indented as if it were guarded by the 'if'
   chan =3D wf_mhz2channel(fwrq->m, sf);
   ^~~~
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_iw.c: In function 'wl_iw_get_range':
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_iw.c:622:1: warning: the frame size of 1168 =
bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
 }
 ^
  CC [M]  /data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_ge=
neric/broadcom-wl-5.10.56.27.3/driver/wl_linux.o
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_linux.c: In function 'wl_init_timer':
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_linux.c:2576:2: error: implicit declaration =
of function 'init_timer'; did you mean 'init_timers'? [-Werror=3Dimplicit-f=
unction-declaration]
  init_timer(&t->timer);
  ^~~~~~~~~~
  init_timers
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_linux.c:2577:10: error: 'struct timer_list' =
has no member named 'data'
  t->timer.data =3D (ulong) t;
          ^
/data/openwrt/build_dir/target-mips_mips32_musl/linux-brcm63xx_generic/broa=
dcom-wl-5.10.56.27.3/driver/wl_linux.c:2578:20: error: assignment to 'void =
(*)(struct timer_list *)' from incompatible pointer type 'void (*)(ulong)' =
{aka 'void (*)(long unsigned int)'} [-Werror=3Dincompatible-pointer-types]
  t->timer.function =3D wl_timer;
                    ^
cc1: some warnings being treated as errors
make[5]: *** [scripts/Makefile.build:304: /data/openwrt/build_dir/target-mi=
ps_mips32_musl/linux-brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_li=
nux.o] Error 1
make[4]: *** [Makefile:1517: _module_/data/openwrt/build_dir/target-mips_mi=
ps32_musl/linux-brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver] Error 2
make[4]: Leaving directory '/data/openwrt/build_dir/target-mips_mips32_musl=
/linux-brcm63xx_generic/linux-4.19.81'
make[3]: *** [Makefile:187: /data/openwrt/build_dir/target-mips_mips32_musl=
/linux-brcm63xx_generic/broadcom-wl-5.10.56.27.3/.built] Error 2
make[3]: Leaving directory '/data/openwrt/package/kernel/broadcom-wl'
time: package/kernel/broadcom-wl/compile#3.53#0.86#4.27
make[2]: *** [package/Makefile:113: package/kernel/broadcom-wl/compile] Err=
or 2
make[2]: Leaving directory '/data/openwrt'
make[1]: *** [package/Makefile:107: /data/openwrt/staging_dir/target-mips_m=
ips32_musl/stamp/.package_compile] Error 2
make[1]: Leaving directory '/data/openwrt'
make: *** [/data/openwrt/include/toplevel.mk:227: world] Error 2

--=-=k/Y/oApLB/Z9kk=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6GAkoACgkQoNyKO7qx
AnBUkA//bQaX1hvKgC09WlviXK9Q6DwijSKXuWHyVb6hAIiWEJftirB0PFu8LmPM
RBuLtPGX66BYB8SHtZzjmSydKdn3oPchhH9keWdO3iDS2rNM0roRY+GzEDa7ib0Y
rJoGmOivWNfIc/PBcopic1sUAX/FHgCVEAm4WWQirhHeYJpuSo8D2uLU/CZ7uSsV
Lg1H4hlFucnr8Rnie1Bu1MIRGYM5P1zt9uHzpXN8DESPrtErk3bdhftFuWxKDrJE
gpMZ1833ID4KoXNEkWXHUjxtnoweqDfAYrCos5TDrFozPqSasdywOtJNEkyx8hk1
JdkWLBhT41tS3D6GynF4Rpn3rSl1VgzKilzFfVSdKBtAA9EovaQIfBF8w9C9T0v8
YyOo/YIcuzk7qQiO/1JD789RDv6uRBzq9hO8g9CqBMOfQz9OqL8AxRoy96I2Jzbc
zcVDnwFb08Ox8I7Kamt1ey5xBuWdjvfjKkLYO4kSCSaScSuI4R8iwYOC9PHxc22n
rviZ37ivHnq3xLVG9A+tsC3s/Bn9ojCIKXQvL410WJWzIejx+CaU62vkyDSMGRTS
TaJ/Wzx02S5TwdOimEmeebfgqiw0mOg+V+GFelMacVvjW4Ue/B1fL24lejvIiNNi
2KCKWr1h63hKVbJkS8w4FZgTByIBbEyazQFADkWYi+NdQbeyxq4=
=Ssd7
-----END PGP SIGNATURE-----


--=-=k/Y/oApLB/Z9kk=-=--



--===============5665490453261392260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5665490453261392260==--


