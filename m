Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199E21DFEEC
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 14:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ppcx4Pix/rWeww30k8PdNW+MrSMoiAhWXDwlERm/k+o=; b=Njy0FY2ZnEdK8hXX8/kPDGc6j
	gQDM0pKtHYQ/aybIkHk8Yb4xxk8WjDdlab1ny0B+svq3jyjcltR1tJzyj5LoXPBB5JYpcUgtWYBfE
	sil0rXvm90hDl39PsADGaJpV91vhQ8TrjA6Vw4Ri/sBwJjnhKkGDSeN8BAW0/+YR2EF2OWnxrYzft
	CoGMBJJJYCsLb+YtpplHKY3xrWhiSDrl3MnljFOh0SQyCYi8CpmFHFVVKuUs4coU4AmxiPnK38NuW
	Vo04VrwtMmyJqWlnVI4TDwFAAxM1CMnhih+byOwxAh4NO4TV8ZjDiGvleF/7bJLCl7DavSe3NJ1fE
	k8VZEE0Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcpoH-0001sl-44; Sun, 24 May 2020 12:32:57 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcpo8-0001sA-Qz
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 12:32:51 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 49VKPP0cYtzKmZ2;
 Sun, 24 May 2020 14:32:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id rYkS-VN9cHUL; Sun, 24 May 2020 14:32:37 +0200 (CEST)
To: Ian Cooper <iancooper@hotmail.com>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <KU1PR01MB2022F88F8DD228B43250EAE7ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <7b754279-3239-ea27-b321-4c7f8037e7d9@hauke-m.de>
Date: Sun, 24 May 2020 14:32:33 +0200
MIME-Version: 1.0
In-Reply-To: <KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
X-Rspamd-Queue-Id: E88A717EF
X-Rspamd-Score: -7.22 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_053249_178666_9FEBF340 
X-CRM114-Status: GOOD (  35.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Fix for missing kernel stack-protector in
 x86_64 glibc builds
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
Content-Type: multipart/mixed; boundary="===============8505688875436865642=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8505688875436865642==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="mZlGjKespOUEYlqFDlL9SwQy6XriVHb5j"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--mZlGjKespOUEYlqFDlL9SwQy6XriVHb5j
Content-Type: multipart/mixed; boundary="v4Pap0CP5h93n3A175i61n1I7oOc9S8N1"

--v4Pap0CP5h93n3A175i61n1I7oOc9S8N1
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 5/24/20 2:04 PM, Ian Cooper wrote:
> Patch attached as my email client seems to have mangled it a bit when i=
nserted inline
>=20
> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On=
 Behalf Of Ian Cooper
> Sent: 24 May 2020 12:35
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] Fix for missing kernel stack-protector in x86_=
64 glibc builds
>=20
> Hi all,
>=20
> Forgive such a long post on my first posting to this list.
>=20
> I have a change to propose that, while trivial in the actual patch to t=
he build system, affects the toolchain, kernel and every package, so I do=
n't want to just create a PR for it without some discussion and agreement=
 beforehand that it's the right thing to do, even if it seems obvious to =
me that it is. Perhaps I'm missing something here...
>=20
> I run a x86_64 build with glibc. I noticed that my build (based on mast=
er) did not have kernel stack smashing protection enabled. Since most dis=
tros ship with it enabled by default, I got to questioning why. My Ubuntu=
 20.04 has CONFIG_STACKPROTECTOR_STRONG enabled in the kernel, so there's=
 no technical reason why it can't be used on a x86_64 platform.
>=20
> It turns out after looking at `config/Config-build.in` that there is ex=
plicit code to disable it in the kernel config if we're not using musl an=
d we're on a x86* platform. Moreover, there is also code to enforce use o=
f gcc's standalone libssp for userspace stack protection:
>=20
> 	choice
> 		prompt "User space Stack-Smashing Protection"
> 		depends on USE_MUSL
> 		default PKG_CC_STACKPROTECTOR_REGULAR
> 		help
> 		  Enable GCC Stack Smashing Protection (SSP) for userspace applicatio=
ns
> 		config PKG_CC_STACKPROTECTOR_NONE
> 			bool "None"
> 		config PKG_CC_STACKPROTECTOR_REGULAR
> 			bool "Regular"
> 			select GCC_LIBSSP if !USE_MUSL
> 			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
> 		config PKG_CC_STACKPROTECTOR_STRONG
> 			bool "Strong"
> 			select GCC_LIBSSP if !USE_MUSL
> 			depends on KERNEL_CC_STACKPROTECTOR_STRONG
> 	endchoice
>=20
> 	choice
> 		prompt "Kernel space Stack-Smashing Protection"
> 		default KERNEL_CC_STACKPROTECTOR_REGULAR
> 		depends on USE_MUSL || !(x86_64 || i386)
> 		help
> 		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
> 		config KERNEL_CC_STACKPROTECTOR_NONE
> 			bool "None"
> 		config KERNEL_CC_STACKPROTECTOR_REGULAR
> 			bool "Regular"
> 		config KERNEL_CC_STACKPROTECTOR_STRONG
> 			bool "Strong"
> 	endchoice
>=20
>=20
> The commit messages that accompany this code are respectively 5 years o=
ld and 2.5 years old. A lot has changed since then and the reasons these =
exclusions were put in place are no longer valid.
>=20
> commit bf82deff7069599c9f130f5bb0222acd171fd19d
> Author: Felix Fietkau <nbd@openwrt.org>
> Date:   Sun Aug 2 07:40:12 2015 +0000
>=20
>     build: disable kernel stack protector support for i386/x86_64
>    =20
>     When stack protector support is disabled in libc (always the case f=
or
>     !musl), gcc assumes that it needs to use __stack_chk_guard for the =
stack
>     canary.
>     This causes kernel build errors, because the kernel is only set up =
to
>     handle TLS stack canaries.
>    =20
>     Signed-off-by: Felix Fietkau <nbd@openwrt.org>
>    =20
>     SVN-Revision: 46543
>=20
>=20
> commit 241e6dd3e92c4f215b8ac75379a4b5aeaeb92171
> Author: Julien Dusser <julien.dusser@free.fr>
> Date:   Sun Jan 7 18:47:21 2018 +0100
>=20
>     build: cleanup SSP_SUPPORT configure option
>    =20
>     Configure variable SSP_SUPPORT is ambiguous for packages (tor, open=
ssh,
>     avahi, freeswitch). It means 'toolchain supporting SSP', but for to=
olchain
>     and depends it means 'build gcc with libssp'.
>    =20
>     Musl no longer uses libssp (1877bc9d8f), it has internal support, s=
o
>     SSP_SUPPORT was disabled leading some package to not use SSP.
>    =20
>     No information why Glibc and uClibc use libssp, but they may also p=
rovide
>     their own SSP support. uClibc used it own with commit 933b588e25 bu=
t it was
>     reverted in f3cacb9e84 without details.
>    =20
>     Create an new configure GCC_LIBSSP and automatically enable SSP_SUP=
PORT
>     if either USE_MUSL or GCC_LIBSSP.
>    =20
>     Signed-off-by: Julien Dusser <julien.dusser@free.fr>
>=20
>=20
> I started to modify the build system to see if I could get kernel stack=
 protection enabled and working.  Just removing the line "depends on USE_=
MUSL || !(x86_64 || i386)" didn't work. The kernel config itself disables=
 the stack protection at configure time.
>=20
> After a bit of digging, the reason for this is that the script in the k=
ernel source directory `scripts/gcc-x86_64-has-stack-protector.sh` fails =
its check. This script does the following check
>=20
>         #!/bin/sh
>         # SPDX-License-Identifier: GPL-2.0
>=20
>         echo "int foo(void) { char X[200]; return 3; }" | $* -S -x c -c=
 -m32 -O0 -fstack-protector - -o - 2> /dev/null | grep -q "%gs"
>=20
> The code produced by the default openwrt x86_64_glibc toolchain from th=
is command is as follows:
>=20
> 	.file	""
> 	.text
> 	.globl	foo
> 	.type	foo, @function
> foo:
> .LFB0:
> 	.cfi_startproc
> 	pushq	%rbp
> 	.cfi_def_cfa_offset 16
> 	.cfi_offset 6, -16
> 	movq	%rsp, %rbp
> 	.cfi_def_cfa_register 6
> 	subq	$208, %rsp
> 	movq	__stack_chk_guard(%rip), %rax
> 	movq	%rax, -8(%rbp)
> 	xorl	%eax, %eax
> 	movl	$3, %eax
> 	movq	-8(%rbp), %rdx
> 	xorq	__stack_chk_guard(%rip), %rdx
> 	je	.L3
> 	call	__stack_chk_fail
> .L3:
> 	leave
> 	.cfi_def_cfa 7, 8
> 	ret
> 	.cfi_endproc
> .LFE0:
> 	.size	foo, .-foo
> 	.ident	"GCC: (OpenWrt GCC 9.3.0 r13242+9-e04ff3c7cc) 9.3.0"
> 	.section	.note.GNU-stack,"",@progbits
>=20
>=20
> The code produced by my Ubuntu gcc host compiler is as follows:
>=20
> 	.file	""
> 	.text
> 	.globl	foo
> 	.type	foo, @function
> foo:
> .LFB0:
> 	.cfi_startproc
> 	endbr64
> 	pushq	%rbp
> 	.cfi_def_cfa_offset 16
> 	.cfi_offset 6, -16
> 	movq	%rsp, %rbp
> 	.cfi_def_cfa_register 6
> 	subq	$208, %rsp
> 	movq	%gs:40, %rax
> 	movq	%rax, -8(%rbp)
> 	xorl	%eax, %eax
> 	movl	$3, %eax
> 	movq	-8(%rbp), %rdx
> 	xorq	%gs:40, %rdx
> 	je	.L3
> 	call	__stack_chk_fail
> .L3:
> 	leave
> 	.cfi_def_cfa 7, 8
> 	ret
> 	.cfi_endproc
> .LFE0:
> 	.size	foo, .-foo
> 	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
> 	.section	.note.GNU-stack,"",@progbits
> 	.section	.note.gnu.property,"a"
> 	.align 8
> 	.long	 1f - 0f
> 	.long	 4f - 1f
> 	.long	 5
> 0:
> 	.string	 "GNU"
> 1:
> 	.align 8
> 	.long	 0xc0000002
> 	.long	 3f - 2f
> 2:
> 	.long	 0x3
> 3:
> 	.align 8
> 4:
>=20
>=20
> So it's clear why the check fails. We're getting the libssp user-space =
__stack_chk_guard canary in the code produced by the openwrt compiler and=
 different code produced by the Ubuntu compiler: "movq__stack_chk_guard(%=
rip), %rax" produced by the openwrt compiler vs "movq	%gs:40, %rax" produ=
ced by the Ubuntu compiler.=20
>=20
> The root cause thus of the missing kernel stack protector in x86_64 is =
that the openwrt x86_64 glibc toolchain is deliberately using a stack sma=
shing protection mechanism that's not compatible with the kernel. Which i=
s libssp. A quick inspection of the compiler options in Ubuntu confirms t=
hat it is not compiled with --enable-libssp and Ubuntu kernels have STACK=
_PROTECTOR_STRONG enabled, so ergo, it's not needed.
>=20
> It turns out that glibc now supports -fstack-protector* in the libc cod=
e itself (similarly to musl). From the configure options for glibc 2.31, =
the current toolchain version of glibc in master, we can see that it does=

>=20
>         glibc compile options
>=20
>         '--enable-stack-protector'
>         '--enable-stack-protector=3Dstrong'
>         '--enable-stack-protector=3Dall'
>         Compile the C library and all other parts of the glibc package =
(including the threading and math libraries, NSS modules, and=20
>         transliteration modules) using the GCC -fstack-protector, -fsta=
ck-protector-strong or -fstack-protector-all options to detect=20
>         stack overruns. Only the dynamic linker and a small number of r=
outines called directly from assembler are excluded from this protection.=

>=20
> Given the ssp support in glibc, there is no reason to use libssp in ope=
nwrt at all (perhaps for uclibc it might). As far as I understand it (and=
 the documentation about it is pretty much non-existent), gcc's libssp is=
 a separate, standalone implementation of stack protection which should o=
nly be used if the libc variant in use does not support ssp.=20
>=20
> So, modifying the toolchain's glibc `common.mk` to add the relevant --e=
nable-stack-protector* configure options=20
>=20
> diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk inde=
x 768ff19060..b908afc50f 100644
> --- a/toolchain/glibc/common.mk
> +++ b/toolchain/glibc/common.mk
> @@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
>    endif
>  endif
> =20
> -
>  # -Os miscompiles w. 2.24 gcc5/gcc6
>  # only -O2 tested by upstream changeset  # "Optimize i386 syscall inli=
ning for GCC 5"
> @@ -61,6 +60,8 @@ GLIBC_CONFIGURE:=3D \
>                 --without-cvs \
>                 --enable-add-ons \
>                 --$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
> +                 $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable=
-stack-protector=3Dyes,) \
> +                 $(if=20
> + $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=3Dstr=
ong
> + ,) \
>                 --enable-kernel=3D4.14.0
> =20
>  export libc_cv_ssp=3Dno
>=20
>=20
> and altering the dependencies on GLIBC_SSP in `Config-build.in` so that=
 enabling userspace stack protection does not force the use of `--enable-=
libssp` in the toolchain configure options for glibc builds and rebuildin=
g the toolchain with `--disable-libssp` has the desired result, as the co=
de produced by the openwrt toolchain now looks identical to that produced=
 by the host system compiler on my Ubuntu dev box
>=20
>=20
> 	.file	""
> 	.text
> 	.globl	foo
> 	.type	foo, @function
> foo:
> .LFB0:
> 	.cfi_startproc
> 	pushq	%rbp
> 	.cfi_def_cfa_offset 16
> 	.cfi_offset 6, -16
> 	movq	%rsp, %rbp
> 	.cfi_def_cfa_register 6
> 	subq	$208, %rsp
> 	movq	%gs:40, %rax
> 	movq	%rax, -8(%rbp)
> 	xorl	%eax, %eax
> 	movl	$3, %eax
> 	movq	-8(%rbp), %rdx
> 	xorq	%gs:40, %rdx
> 	je	.L3
> 	call	__stack_chk_fail
> .L3:
> 	leave
> 	.cfi_def_cfa 7, 8
> 	ret
> 	.cfi_endproc
> .LFE0:
> 	.size	foo, .-foo
> 	.ident	"GCC: (OpenWrt GCC 9.3.0 r13242+9-e04ff3c7cc) 9.3.0"
> 	.section	.note.GNU-stack,"",@progbits
>=20
>=20
> --disable-libssp in fact just disables the build of the libssp library,=
 but gcc still supports -fstack-protector*.=20
>=20
> Doing a kernel build, it compiles perfectly and the relevant STACK_PROT=
ECTOR options are now set in the kernel config.=20
>=20
> Setting all the hardening options to on in menuconfig, a full system bu=
ild of all the userspace packages (I don't have all of them selected, but=
 I have a lot selected) finished successfully with no errors.
>=20
> CONFIG_PKG_ASLR_PIE_ALL=3Dy
> CONFIG_PKG_CC_STACKPROTECTOR_STRONG=3Dy
> CONFIG_KERNEL_CC_STACKPROTECTOR_STRONG=3Dy
> CONFIG_KERNEL_STACKPROTECTOR_STRONG=3Dy
> CONFIG_PKG_FORTIFY_SOURCE_2=3Dy
> CONFIG_PKG_RELRO_FULL=3Dy
>=20
> Booting it also goes without a hitch too and I appear to have a fully h=
ardened openwrt_x86_64_glibc variant.=20
>=20
> Runtime checks show that the stack protector features are indeed enable=
d. I wrote a 2 line program compiled with default CFLAGS that does a gets=
() into a small buffer to check the user-space stack protection and it sh=
ows that userspace stack protection works as well. The compiled kernel sh=
ows the presence of the kernel stack protection via `/proc/config.gz`. Ou=
tput below....
>=20
> root@openwrt:~# uname -a
> Linux openwrt 5.4.41 #0 SMP Thu May 14 21:12:59 2020 x86_64 GNU/Linux
>=20
> root@openwrt:~# cat /etc/openwrt_release                 =20
> DISTRIB_ID=3D'OpenWrt'
> DISTRIB_RELEASE=3D'SNAPSHOT'
> DISTRIB_REVISION=3D'r13242+9-e04ff3c7cc'
> DISTRIB_TARGET=3D'x86/64'
> DISTRIB_ARCH=3D'x86_64'
> DISTRIB_DESCRIPTION=3D'OpenWrt SNAPSHOT r13242+9-e04ff3c7cc'
> DISTRIB_TAINTS=3D'no-all glibc busybox'
>=20
> root@openwrt:~# zcat /proc/config.gz | grep STACKPROTECTOR CONFIG_CC_HA=
S_SANE_STACKPROTECTOR=3Dy
> CONFIG_HAVE_STACKPROTECTOR=3Dy
> CONFIG_CC_HAS_STACKPROTECTOR_NONE=3Dy
> CONFIG_STACKPROTECTOR=3Dy
> CONFIG_STACKPROTECTOR_STRONG=3Dy
>=20
> root@openwrt:~# check-stack-protector
> hjkalsdhssaldhjlsadh0o247uu032u4231pjkl;s
> *** stack smashing detected ***: terminated Aborted
>=20
> To me, this seems to be an obvious change to make and it, in my case, s=
eems to work just fine. In this day of default hardening, and especially =
in a network-exposed router, is there any reason that a x86_64_glibc buil=
d should be running with no kernel stack protection?
>=20
> The full patch necessary to make the change is below.=20
>=20
> diff --git a/config/Config-build.in b/config/Config-build.in index 61a9=
265ad7..dd5f0cf817 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -249,7 +249,7 @@ menu "Global build settings"
> =20
>  	choice
>  		prompt "User space Stack-Smashing Protection"
> -		depends on USE_MUSL
> +		depends on USE_MUSL || USE_GLIBC
>  		default PKG_CC_STACKPROTECTOR_REGULAR
>  		help
>  		  Enable GCC Stack Smashing Protection (SSP) for userspace applicati=
ons @@ -257,18 +257,18 @@ menu "Global build settings"
>  			bool "None"
>  		config PKG_CC_STACKPROTECTOR_REGULAR
>  			bool "Regular"
> -			select GCC_LIBSSP if !USE_MUSL
> +			select GCC_LIBSSP if !USE_MUSL && !USE_GLIBC
>  			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
>  		config PKG_CC_STACKPROTECTOR_STRONG
>  			bool "Strong"
> -			select GCC_LIBSSP if !USE_MUSL
> +			select GCC_LIBSSP if !USE_MUSL && !USE_GLIBC
>  			depends on KERNEL_CC_STACKPROTECTOR_STRONG
>  	endchoice
> =20
>  	choice
>  		prompt "Kernel space Stack-Smashing Protection"
>  		default KERNEL_CC_STACKPROTECTOR_REGULAR
> -		depends on USE_MUSL || !(x86_64 || i386)
> +		depends on USE_MUSL || USE_GLIBC
>  		help
>  		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
>  		config KERNEL_CC_STACKPROTECTOR_NONE
> diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in index 7d=
7f34210a..baa0cd3877 100644
> --- a/toolchain/gcc/Config.in
> +++ b/toolchain/gcc/Config.in
> @@ -50,8 +50,8 @@ config GCC_DEFAULT_SSP  config GCC_LIBSSP
>  	bool
>  	prompt "Build gcc libssp" if TOOLCHAINOPTS
> -	depends on !USE_MUSL
> -	default y if !USE_MUSL
> +	depends on !USE_MUSL && !USE_GLIBC
> +	default y if !USE_MUSL || !USE_GLIBC
>  	help
>  	    Enable Stack-Smashing Protection support
> =20
> diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk inde=
x 768ff19060..b908afc50f 100644
> --- a/toolchain/glibc/common.mk
> +++ b/toolchain/glibc/common.mk
> @@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
>    endif
>  endif
> =20
> -
>  # -Os miscompiles w. 2.24 gcc5/gcc6
>  # only -O2 tested by upstream changeset  # "Optimize i386 syscall inli=
ning for GCC 5"
> @@ -61,6 +60,8 @@ GLIBC_CONFIGURE:=3D \
>  		--without-cvs \
>  		--enable-add-ons \
>  		--$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
> +		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protec=
tor=3Dyes,) \
> +		  $(if=20
> +$(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=3Dstro=
ng,
> +) \
>  		--enable-kernel=3D4.14.0
> =20
>  export libc_cv_ssp=3Dno


Hi Ian,

Thank you for the detailed analysis of the problem. I saw that this code
looked strange some time ago, but I was too lazy to look closely into it.=


Could you please send this as a real patch in git patch format please.

While you are at it could you please extend the description of
CONFIG_GCC_LIBSSP, I saw not aware that this is a external stack
protector implementation and it should only be used when the libc does
not support it.

Does anyone know if we can handle uclibc the same way? It would be nice
to reduce the special handling in general.

Hauke


--v4Pap0CP5h93n3A175i61n1I7oOc9S8N1--

--mZlGjKespOUEYlqFDlL9SwQy6XriVHb5j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl7KaWEACgkQ8bdnhZyy
68cbDAf+MOLUqqAOezQv9tED6WyUE+UxFZrDRvp3DI2lQROra80zqImI7iGEFhlA
Xi2mzCT97LNONxX4MZnlke1n+puA6DNIPddCLtR9rTCCfn/7sjG8puaRS6WFysom
FTJDLFhQ2lO+aJhDEm1zkqaq567/Twb26vmvNwT46dXuvnHNZa77lTc48KoXll7a
h0YLvmPrX201/xrh/Lsw1v5Z0Rw6FIBx7UcpdqZaqCxOAlvlGZeeZIaac9NoNT44
UcKy78wmsqiYNvnabmjbd4cFjjC2QjHsyXGnIW7cyL40NILTwh5aXqqX4dKlOxcx
97K/9BQdB9RKdidNkHeQucIjDakSVw==
=8r5Z
-----END PGP SIGNATURE-----

--mZlGjKespOUEYlqFDlL9SwQy6XriVHb5j--


--===============8505688875436865642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8505688875436865642==--

