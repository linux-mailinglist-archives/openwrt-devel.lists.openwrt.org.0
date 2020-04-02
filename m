Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA99719C6A0
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 17:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hw/om8wE9JFG9+WB4jO5MrP+N5Oz3bF2exVAraJGJiQ=; b=V76bmmfLWMlmP5usonigVZHqw
	MbbHyXTCjahypQ2q1nhtDTuZq3KfnvYeAlPvkT6NTfO45tc+VLlByv32jI5orN5srAfq2fywEm9UD
	JHgGxCWqqMf2PTtUJBCLPGkKk3s9S4fFUElebmcWK+DVS2ytRGMnIP0SR9iZ2YEz3r3MwHj72TMVp
	0hZUAYXE3NnQciOngCwwNQcJ58L1nEYX9PipD84NRQSRZEx97FoJ292oQ3L7wnXsDEKs77G+FYz78
	LaBNf2C02CHB7GTECO4iP9pJ5A+ge+atvzX2UNMDHkgSU0G3H8O6h7zphQvA7UofJbmuxuEErQdFN
	ylvalrA7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2Fv-0005oH-O1; Thu, 02 Apr 2020 15:59:47 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2Fo-0005ml-CP
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 15:59:42 +0000
Received: from desktop ([188.192.134.31]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MxUjv-1j9WYC1PdB-00xtTX; Thu, 02 Apr 2020 17:59:37 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <015b01d60901$ffa72650$fef572f0$@adrianschmutzler.de>
In-Reply-To: <015b01d60901$ffa72650$fef572f0$@adrianschmutzler.de>
Date: Thu, 2 Apr 2020 17:59:36 +0200
Message-ID: <017601d60907$b5ceac50$216c04f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIXDPwA1JN4YRyjBWHuxtOhDqBEm6fj9M7A
Content-Language: de
X-Provags-ID: V03:K1:uJfU3mlIqpeWsb6/vx04rvdD110vseNqJ9DFRZkmhd0GcG1jkRN
 GH7opgzuM0/cuC7sIlU9GF6WJOl3iv/dJK7ti23SNrV0wPfpEiKVnwgHVaAj0vRRZYxGBKS
 sD01g6EJyRNt/HHg5nYyOzXPS8cXefaFRRx5ss8Qk3bWN1zu677t3f7Xbyrvf9eGzWWo9To
 7FhEO8znWc9POh1TJAIdg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zqi7RP6TaV0=:Gfu4Dt+9K1TQpTGUmGW7re
 Sht889+ONU6HQbMsAjZTNmBVhm0pYkBEB/BgGRgHUjHZ2nSXblUEtRrf27nNUMdg8NLSmu+KN
 nCKWSgfOFN29sx3uUXrjL78EyydjOEdXHSwdlINYOqNh+biIF+Abr2CaTOo4L2an+slf7r98R
 UCmwYdYxqXMNCjNjYJc+rfWB43j3ybzZJJTL7b1Y7zEgrcMaMivP/rC1XNPLU6g77PTNWboUO
 Z6S9KcqrF596S7XET7Vw3OxGKqUZtE9N5G7tBXOUZ5pyRg+VAZjshVChipAK23jjgJSa6uZBN
 e75+6kkqQ77jx6JMO/vugXloMMVNOAhpNE+YTJN60JF+vzbSgNtKoNQOwuM2N/+XQwI2hASdd
 BkozaJ1SpbYcpFHTpaJb7RgjhLNAAA83IZVdWq2pbxSQLs0Id+lMxoh+dr7BvvsscLycT8YCd
 35UhfYY4ouB50K7nVaH2DZO89snwb/U8oPdVmN1eRef1a+IAeulxx5t/nVck8nJTo3y0KW+jH
 p1UIQVS8uduETnT1aH1as2a16FCVVPzW4b4A8D5kqr66oa9IfG1//DBjBdCIiYZdiSELTVucH
 sMqsIyBbqaP/78lMErL0d4wMEeuG+oQ01JdzD03irh8JjFhSEo7xupcwwrq5pLyzSkMBGve+O
 VCcWjiIE8miNyRx5Ym/gevkIR39dS+W83xjPL4PEDLG3imr/EB+uW99mmaDik9ATlBxu5f0yD
 n79LMWJXrVDn0wZatj8ChvnxcsBmRSN+7F4c7BoP3HjKXQPoLFwpz2pghbKYFjN9TxN1dbdka
 x2h+S8zdPQfm7AoABqM85SGCPvb2AhSiY7RnSQ91LdD1zhTIBSEM2UbWTSRNm+FQZ2SjzXd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_085940_715290_01528943 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] broadcom-wl @ bcm63xx fails on kernel 4.19
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
Content-Type: multipart/mixed; boundary="===============5800073573678304428=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5800073573678304428==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=8+CLi5O3xRz2kp=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=8+CLi5O3xRz2kp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

it looks like the problem is only the broadcom-wl package, which is pulled =
via DEVICE_PACKAGES on the following devices:
actiontec_r1000h
tecom_gw6000
tecom_gw6200

If the package is removed, target seems to build fine on 4.19.

So, how to proceed here?=20

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of mail@adrianschmutzler.de
> Sent: Donnerstag, 2. April 2020 17:19
> To: openwrt-devel@lists.openwrt.org
> Cc: noltari@gmail.com
> Subject: [OpenWrt-Devel] broadcom-wl @ bcm63xx fails on kernel 4.19
>=20
> Hi all,
>=20
> since bcm63xx still has 4.19 as testing kernel for five months already, I=
 today
> tried to build it.
>=20
> Interestingly, the build fails for package/kernel/broadcom-wl, and this i=
ssue
> persists even when I go back to the initial commit introducing 4.19 suppo=
rt
> (so, the problem is no regression).
>=20
> For some reason, the problem seems to not affect bcm47xx, which uses
> kernel 4.19 as default ATM.
>=20
> Since I have no idea what broadcom-wl does, I cannot provide much more
> than the build errors below.
>=20
> Best
>=20
> Adrian
>=20
> ---
>=20
> # Compile the kernel part
> make -C "/data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/linux-4.19.81" KCFLAGS=3D"-ffile-prefix-
> map=3D/data/openwrt/build_dir/target-mips_mips32_musl=3Dtarget-
> mips_mips32_musl" HOSTCFLAGS=3D"-O2 -
> I/data/openwrt/staging_dir/host/include -
> I/data/openwrt/staging_dir/hostpkg/include -
> I/data/openwrt/staging_dir/target-mips_mips32_musl/host/include -Wall -
> Wmissing-prototypes -Wstrict-prototypes" CROSS_COMPILE=3D"mips-
> openwrt-linux-musl-" ARCH=3D"mips" KBUILD_HAVE_NLS=3Dno
> KBUILD_BUILD_USER=3D"" KBUILD_BUILD_HOST=3D""
> KBUILD_BUILD_TIMESTAMP=3D"Thu Apr  2 12:41:37 2020"
> KBUILD_BUILD_VERSION=3D"0" HOST_LOADLIBES=3D"-
> L/data/openwrt/staging_dir/host/lib" CONFIG_SHELL=3D"bash" V=3D''
> cmd_syscalls=3D KERNELRELEASE=3D4.19.81
> PATH=3D"/data/openwrt/staging_dir/toolchain-mips_mips32_gcc-
> 8.3.0_musl/bin:/data/openwrt/staging_dir/toolchain-mips_mips32_gcc-
> 8.3.0_musl/bin:/data/openwrt/staging_dir/host/bin:/data/openwrt/staging
> _dir/toolchain-mips_mips32_gcc-
> 8.3.0_musl/bin:/data/openwrt/staging_dir/host/bin:/data/openwrt/staging
> _dir/host/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
> SUBDIRS=3D"/data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/kmod"
> SUBDIRS=3D"/data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver" MODFLAGS=3D"-
> DMODULE -mlong-calls"
> KBUILD_EXTRA_SYMBOLS=3D"/data/openwrt/build_dir/target-
> mips_mips32_musl/linux-brcm63xx_generic/broadcom-wl-
> 5.10.56.27.3/glue/Module.symvers" modules
> make[4]: Entering directory '/data/openwrt/build_dir/target-
> mips_mips32_musl/linux-brcm63xx_generic/linux-4.19.81'
>   CC [M]  /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_iw.o
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_iw.c: In function
> 'wl_iw_set_freq':
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_iw.c:389:2: warning:
> this 'if' clause does not guard... [-Wmisleading-indentation]
>   if (fwrq->m > 4000 && fwrq->m < 5000)
>   ^~
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_iw.c:392:3: note:
> ...this statement, but the latter is misleadingly indented as if it were =
guarded
> by the 'if'
>    chan =3D wf_mhz2channel(fwrq->m, sf);
>    ^~~~
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_iw.c: In function
> 'wl_iw_get_range':
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_iw.c:622:1: warning:
> the frame size of 1168 bytes is larger than 1024 bytes [-Wframe-larger-th=
an=3D]
> }  ^
>   CC [M]  /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_linux.o
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_linux.c: In function
> 'wl_init_timer':
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_linux.c:2576:2: error:
> implicit declaration of function 'init_timer'; did you mean 'init_timers'=
? [-
> Werror=3Dimplicit-function-declaration]
>   init_timer(&t->timer);
>   ^~~~~~~~~~
>   init_timers
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_linux.c:2577:10:
> error: 'struct timer_list' has no member named 'data'
>   t->timer.data =3D (ulong) t;
>           ^
> /data/openwrt/build_dir/target-mips_mips32_musl/linux-
> brcm63xx_generic/broadcom-wl-5.10.56.27.3/driver/wl_linux.c:2578:20:
> error: assignment to 'void (*)(struct timer_list *)' from incompatible po=
inter
> type 'void (*)(ulong)' {aka 'void (*)(long unsigned int)'} [-
> Werror=3Dincompatible-pointer-types]
>   t->timer.function =3D wl_timer;
>                     ^
> cc1: some warnings being treated as errors
> make[5]: *** [scripts/Makefile.build:304: /data/openwrt/build_dir/target-
> mips_mips32_musl/linux-brcm63xx_generic/broadcom-wl-
> 5.10.56.27.3/driver/wl_linux.o] Error 1
> make[4]: *** [Makefile:1517: _module_/data/openwrt/build_dir/target-
> mips_mips32_musl/linux-brcm63xx_generic/broadcom-wl-
> 5.10.56.27.3/driver] Error 2
> make[4]: Leaving directory '/data/openwrt/build_dir/target-
> mips_mips32_musl/linux-brcm63xx_generic/linux-4.19.81'
> make[3]: *** [Makefile:187: /data/openwrt/build_dir/target-
> mips_mips32_musl/linux-brcm63xx_generic/broadcom-wl-
> 5.10.56.27.3/.built] Error 2
> make[3]: Leaving directory '/data/openwrt/package/kernel/broadcom-wl'
> time: package/kernel/broadcom-wl/compile#3.53#0.86#4.27
> make[2]: *** [package/Makefile:113: package/kernel/broadcom-
> wl/compile] Error 2
> make[2]: Leaving directory '/data/openwrt'
> make[1]: *** [package/Makefile:107: /data/openwrt/staging_dir/target-
> mips_mips32_musl/stamp/.package_compile] Error 2
> make[1]: Leaving directory '/data/openwrt'
> make: *** [/data/openwrt/include/toplevel.mk:227: world] Error 2

--=-=8+CLi5O3xRz2kp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6GC+UACgkQoNyKO7qx
AnDhihAAwpQhMQ+etohyslmje2eW5wAe1RS1keHZPjiO6ST76D3roOiOgm9dXbtO
FjtUDLDXp5A23PfpB63kXjRSm+PTpC411HPvd+7RYED4Lv9DaoWW0RS2Ck9/5i4j
AfJCVO3bcY4vJtMin+BvGklrpn+9JAe9EPI74oM3DJLDhF1jghIiBufk2ZaG7wn9
ktVE2wUUU/vCj+d4FX7HVXUm9nPqauE87gIKTD3MQS5+Ct48DOHwBxb8QbxxgSeE
p/PZ7/TnRmN1Ce0+1Lsv0Hj5FqqxmvO6+aY+VpD4rRvw6gy/bp/8LHjw9PrWS242
cCD+vayN1g/M4A2qVIN6BY/zlrcDnHeYvSZoj5D7iJvu+mEcZpmk9c7GCg148dg2
nxRR2T7lFIrsFYuuG33VAmeCzkXV/oGlcjwmT900G/5nvh2qzonTG1HAkUluerIH
+q7iZj2VO+FtUPIpBxgpG9HumTsFWFemS1w1TKDgfZqGIwxXA99OEsXMWYVwTHDn
12TEnp0mezi1xDLmyBXeZGJi4wzlatN9t8SGiqOdiMemfOOtJjhnS9+ilsqWkh63
2/nKOciDKDQ+KXY15RWb5HVBnkfJsKR8WwyQOiW8aLd9HucyGXEzITizwLrdwk4G
jvJBJDgTN2qd7VKhangl5Sxr71alxxN2VHFQpwUH8BwlyxJNx+g=
=KbIc
-----END PGP SIGNATURE-----


--=-=8+CLi5O3xRz2kp=-=--



--===============5800073573678304428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5800073573678304428==--


