Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD241DFECE
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 14:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Content-Type:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yFUZSLG7Lz9gQJEpX+5yQyMqQr1mkOjzut2+dmeV7bc=; b=hmHGgmhnrjTuyGs0INGoP7548
	lxKbKtJFoFnk/NfzbrX7HFA/J6EC4ld0Wh0opfoYJWzf6qZKg371EtxkxUfEpZ2RJzENsCZ36JC4P
	REshePYWdkGHsZmyKAUxGtedUGtbBuxpyj+Gpa4j21lLS47DE2JVDU7KSYv8d6cKvx377u/n0S5oC
	axtFE2qq4mgv6pJIITYqM5o15eWn0J4CpsSyYUw8mRpB1TKGEZUzg/HrMU0KuXVvsPv0kNJ484SGJ
	6K6x0H6nRZVZw4UdV80kL54P76l03+e4R133vqG3oyWAoQWB9u4s69RggYnMQq1W29fuwShbKAA1m
	OGI82CDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcpMd-000137-4g; Sun, 24 May 2020 12:04:23 +0000
Received: from mail-oln040092254060.outbound.protection.outlook.com
 ([40.92.254.60] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcpMT-00012c-RC
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 12:04:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUzC//wABSLN5F90V+3sDTg9tSI+QaLCqrldcKMjxq+lYKESMA0fn/G7dRTn9a/iL/aIpjCpyc5XkaYYN8EXux+XxLi6IoS5HTVTBmm7/2flZhASuu9GjxpIJDfiVoBM4QB/8MFGI6oCI5LpxEGVuWDGzT0bgW9cIlvJ6zBf1+lYfjIijxLJAMEoCy9DTsvz5FjDtFaXjE+PgzXWz8smihdVJmB3eOKP0pbunhF5lEz+xMHY4hsEZKsoOGWUdbSiNpKHvNJLaxWdVUlio42omfGzm64BGx4zy7gwEulLYaiJmoKpzDjAaMb8naTkChP8je0w510PWR6hePjvxOTLow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9oMhRFNCPLvcsQG9XCZEK1BBsNo9aM+51dP4x8ldfro=;
 b=c7YqAO3DKfR788QqYWK7n6a7hJX5lgkUIB7h8p6qIa26ffqJXEe4H5GD/u1ZpjHKOm29INdzsdEdcSF9GMcpcr0M9Fq0+5pjnSaRDNNhJecI09OlDmGYrWD1R0pM+kd7VTSZ3GF/3GvXKDlOH24sw4hmXb5Z0uxsAgXX3wl//+h7EM12E+jqPZ9UPMe08OhXs0SlSitH27lq06JTNQWJ3qKvOZP/FpS7VTqDRv6xhKMLOy44ARNA3vyqwZblgq601LTjSCuEUUUf7fG0IitwVhtwH1HXB56ePJ4dO3g2j1EDbtb3aGrvESiJ+uaAbMmTB3y6fHniOdMhd/xvGbu24g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9oMhRFNCPLvcsQG9XCZEK1BBsNo9aM+51dP4x8ldfro=;
 b=hH+H7EJ6VivuCBPU73PZXT5z74hIcyFYky2eMOJLb1IUFFjvE7sMd+Vi5pcEBI6vDriI00EuTeFEC5oj+nQA5yGuH9op+R98Tz1pmKwzKRMI0oHQSuqINrv938E3wn7l2UXIYr05BQz0m634jp3VKfSliI4e7YQwnJg8KZX95hWoi7YZjRXtwTF2HXo30OcjCTwiKnQnr1wZ8/EWqU38gWpGcUlBam6ulal0rdHWDRLgFlsmmIERb5PZOmJvY26r+kxOU2nSBu1adjO6htQ5h5vB6cN6dkDtyZLsHylSQb2tcWmf+O5NYvSOETSwm4ufl6Yk7L7kvbFZ1Q3VYBdhDQ==
Received: from HK2APC01FT047.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4f) by
 HK2APC01HT237.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::429)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Sun, 24 May
 2020 12:04:09 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebc::41) by HK2APC01FT047.mail.protection.outlook.com
 (2a01:111:e400:7ebc::342) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Sun, 24 May 2020 12:04:09 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3021.029; Sun, 24 May 2020
 12:04:09 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Fix for missing kernel stack-protector in x86_64 glibc builds
Thread-Index: AdYxviW8HcgxTYvsSUSQKKffs49D6wABQqPw
Date: Sun, 24 May 2020 12:04:09 +0000
Message-ID: <KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
References: <KU1PR01MB2022F88F8DD228B43250EAE7ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <KU1PR01MB2022F88F8DD228B43250EAE7ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:5480ACFE5460AF46A96151A9AB3A48C755DA75B7ECADD7F731B340C0C00C983D;
 UpperCasedChecksum:4F42D5E842C92ABA24984F820F429C27FE0BE31FF275EE0A62CECBA4071D55AB;
 SizeAsReceived:7000; Count:44
x-tmn: [STzxQYVPQ1mlkfb07M+rPX+YuTNVaOYR]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 77582a24-90f7-4f45-6641-08d7ffda90fe
x-ms-traffictypediagnostic: HK2APC01HT237:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1GGVjUH+c3bIkXtHf8N/3PhjD1ETizO+kT4sH/7nv0Gjj3ATXAIA78yc3OmGev/n8CQNSpkc4HJ3yu3xF8doG2fdOQEY82n0+OQtjwqKdXgDMHS6Cf8kbTcK/rgzMQwN/OAbxePUlmM+bkZyjyO3NVvlnXxPqPfjm9ighuBlUm1avfzZBde9vdTYhhKqL6EjkF17dTorjOZcHflAtyac87ccfJhXIgzUeMe7VLch/LJinb7VjXS1+NYnpaufoYm2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: bDyrVaM/KW9n3RytN4O66QC58Oh0+eaxM/gitAFgO1YJOLW8SApXz+8RtVNasGYCZSiXXnd+C/1qCyfWTCiRHWiGJL8knnfl1285KCeno0mP+ZcSdAgrtPP9PtBm449u5lmtMLH94wBLwdoXwGndlA==
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
 boundary="_002_KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20KU1PR01MB2022apcp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 77582a24-90f7-4f45-6641-08d7ffda90fe
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2020 12:04:09.3771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_050414_068057_2356B118 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.254.60 listed in list.dnswl.org]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.254.60 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--_002_KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20KU1PR01MB2022apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Patch attached as my email client seems to have mangled it a bit when inser=
ted inline

-----Original Message-----
From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On Beh=
alf Of Ian Cooper
Sent: 24 May 2020 12:35
To: openwrt-devel@lists.openwrt.org
Subject: [OpenWrt-Devel] Fix for missing kernel stack-protector in x86_64 g=
libc builds

Hi all,

Forgive such a long post on my first posting to this list.

I have a change to propose that, while trivial in the actual patch to the b=
uild system, affects the toolchain, kernel and every package, so I don't wa=
nt to just create a PR for it without some discussion and agreement beforeh=
and that it's the right thing to do, even if it seems obvious to me that it=
 is. Perhaps I'm missing something here...

I run a x86_64 build with glibc. I noticed that my build (based on master) =
did not have kernel stack smashing protection enabled. Since most distros s=
hip with it enabled by default, I got to questioning why. My Ubuntu 20.04 h=
as CONFIG_STACKPROTECTOR_STRONG enabled in the kernel, so there's no techni=
cal reason why it can't be used on a x86_64 platform.

It turns out after looking at `config/Config-build.in` that there is explic=
it code to disable it in the kernel config if we're not using musl and we'r=
e on a x86* platform. Moreover, there is also code to enforce use of gcc's =
standalone libssp for userspace stack protection:

	choice
		prompt "User space Stack-Smashing Protection"
		depends on USE_MUSL
		default PKG_CC_STACKPROTECTOR_REGULAR
		help
		  Enable GCC Stack Smashing Protection (SSP) for userspace applications
		config PKG_CC_STACKPROTECTOR_NONE
			bool "None"
		config PKG_CC_STACKPROTECTOR_REGULAR
			bool "Regular"
			select GCC_LIBSSP if !USE_MUSL
			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
		config PKG_CC_STACKPROTECTOR_STRONG
			bool "Strong"
			select GCC_LIBSSP if !USE_MUSL
			depends on KERNEL_CC_STACKPROTECTOR_STRONG
	endchoice

	choice
		prompt "Kernel space Stack-Smashing Protection"
		default KERNEL_CC_STACKPROTECTOR_REGULAR
		depends on USE_MUSL || !(x86_64 || i386)
		help
		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
		config KERNEL_CC_STACKPROTECTOR_NONE
			bool "None"
		config KERNEL_CC_STACKPROTECTOR_REGULAR
			bool "Regular"
		config KERNEL_CC_STACKPROTECTOR_STRONG
			bool "Strong"
	endchoice


The commit messages that accompany this code are respectively 5 years old a=
nd 2.5 years old. A lot has changed since then and the reasons these exclus=
ions were put in place are no longer valid.

commit bf82deff7069599c9f130f5bb0222acd171fd19d
Author: Felix Fietkau <nbd@openwrt.org>
Date:   Sun Aug 2 07:40:12 2015 +0000

    build: disable kernel stack protector support for i386/x86_64
   =20
    When stack protector support is disabled in libc (always the case for
    !musl), gcc assumes that it needs to use __stack_chk_guard for the stac=
k
    canary.
    This causes kernel build errors, because the kernel is only set up to
    handle TLS stack canaries.
   =20
    Signed-off-by: Felix Fietkau <nbd@openwrt.org>
   =20
    SVN-Revision: 46543


commit 241e6dd3e92c4f215b8ac75379a4b5aeaeb92171
Author: Julien Dusser <julien.dusser@free.fr>
Date:   Sun Jan 7 18:47:21 2018 +0100

    build: cleanup SSP_SUPPORT configure option
   =20
    Configure variable SSP_SUPPORT is ambiguous for packages (tor, openssh,
    avahi, freeswitch). It means 'toolchain supporting SSP', but for toolch=
ain
    and depends it means 'build gcc with libssp'.
   =20
    Musl no longer uses libssp (1877bc9d8f), it has internal support, so
    SSP_SUPPORT was disabled leading some package to not use SSP.
   =20
    No information why Glibc and uClibc use libssp, but they may also provi=
de
    their own SSP support. uClibc used it own with commit 933b588e25 but it=
 was
    reverted in f3cacb9e84 without details.
   =20
    Create an new configure GCC_LIBSSP and automatically enable SSP_SUPPORT
    if either USE_MUSL or GCC_LIBSSP.
   =20
    Signed-off-by: Julien Dusser <julien.dusser@free.fr>


I started to modify the build system to see if I could get kernel stack pro=
tection enabled and working.  Just removing the line "depends on USE_MUSL |=
| !(x86_64 || i386)" didn't work. The kernel config itself disables the sta=
ck protection at configure time.

After a bit of digging, the reason for this is that the script in the kerne=
l source directory `scripts/gcc-x86_64-has-stack-protector.sh` fails its ch=
eck. This script does the following check

        #!/bin/sh
        # SPDX-License-Identifier: GPL-2.0

        echo "int foo(void) { char X[200]; return 3; }" | $* -S -x c -c -m3=
2 -O0 -fstack-protector - -o - 2> /dev/null | grep -q "%gs"

The code produced by the default openwrt x86_64_glibc toolchain from this c=
ommand is as follows:

	.file	""
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	__stack_chk_guard(%rip), %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, %eax
	movq	-8(%rbp), %rdx
	xorq	__stack_chk_guard(%rip), %rdx
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.ident	"GCC: (OpenWrt GCC 9.3.0 r13242+9-e04ff3c7cc) 9.3.0"
	.section	.note.GNU-stack,"",@progbits


The code produced by my Ubuntu gcc host compiler is as follows:

	.file	""
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%gs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, %eax
	movq	-8(%rbp), %rdx
	xorq	%gs:40, %rdx
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:


So it's clear why the check fails. We're getting the libssp user-space __st=
ack_chk_guard canary in the code produced by the openwrt compiler and diffe=
rent code produced by the Ubuntu compiler: "movq__stack_chk_guard(%rip), %r=
ax" produced by the openwrt compiler vs "movq	%gs:40, %rax" produced by the=
 Ubuntu compiler.=20

The root cause thus of the missing kernel stack protector in x86_64 is that=
 the openwrt x86_64 glibc toolchain is deliberately using a stack smashing =
protection mechanism that's not compatible with the kernel. Which is libssp=
. A quick inspection of the compiler options in Ubuntu confirms that it is =
not compiled with --enable-libssp and Ubuntu kernels have STACK_PROTECTOR_S=
TRONG enabled, so ergo, it's not needed.

It turns out that glibc now supports -fstack-protector* in the libc code it=
self (similarly to musl). From the configure options for glibc 2.31, the cu=
rrent toolchain version of glibc in master, we can see that it does

        glibc compile options

        '--enable-stack-protector'
        '--enable-stack-protector=3Dstrong'
        '--enable-stack-protector=3Dall'
        Compile the C library and all other parts of the glibc package (inc=
luding the threading and math libraries, NSS modules, and=20
        transliteration modules) using the GCC -fstack-protector, -fstack-p=
rotector-strong or -fstack-protector-all options to detect=20
        stack overruns. Only the dynamic linker and a small number of routi=
nes called directly from assembler are excluded from this protection.

Given the ssp support in glibc, there is no reason to use libssp in openwrt=
 at all (perhaps for uclibc it might). As far as I understand it (and the d=
ocumentation about it is pretty much non-existent), gcc's libssp is a separ=
ate, standalone implementation of stack protection which should only be use=
d if the libc variant in use does not support ssp.=20

So, modifying the toolchain's glibc `common.mk` to add the relevant --enabl=
e-stack-protector* configure options=20

diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk index 76=
8ff19060..b908afc50f 100644
--- a/toolchain/glibc/common.mk
+++ b/toolchain/glibc/common.mk
@@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
   endif
 endif
=20
-
 # -Os miscompiles w. 2.24 gcc5/gcc6
 # only -O2 tested by upstream changeset  # "Optimize i386 syscall inlining=
 for GCC 5"
@@ -61,6 +60,8 @@ GLIBC_CONFIGURE:=3D \
                --without-cvs \
                --enable-add-ons \
                --$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
+                 $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-sta=
ck-protector=3Dyes,) \
+                 $(if=20
+ $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=3Dstrong
+ ,) \
                --enable-kernel=3D4.14.0
=20
 export libc_cv_ssp=3Dno


and altering the dependencies on GLIBC_SSP in `Config-build.in` so that ena=
bling userspace stack protection does not force the use of `--enable-libssp=
` in the toolchain configure options for glibc builds and rebuilding the to=
olchain with `--disable-libssp` has the desired result, as the code produce=
d by the openwrt toolchain now looks identical to that produced by the host=
 system compiler on my Ubuntu dev box


	.file	""
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%gs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, %eax
	movq	-8(%rbp), %rdx
	xorq	%gs:40, %rdx
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.ident	"GCC: (OpenWrt GCC 9.3.0 r13242+9-e04ff3c7cc) 9.3.0"
	.section	.note.GNU-stack,"",@progbits


--disable-libssp in fact just disables the build of the libssp library, but=
 gcc still supports -fstack-protector*.=20

Doing a kernel build, it compiles perfectly and the relevant STACK_PROTECTO=
R options are now set in the kernel config.=20

Setting all the hardening options to on in menuconfig, a full system build =
of all the userspace packages (I don't have all of them selected, but I hav=
e a lot selected) finished successfully with no errors.

CONFIG_PKG_ASLR_PIE_ALL=3Dy
CONFIG_PKG_CC_STACKPROTECTOR_STRONG=3Dy
CONFIG_KERNEL_CC_STACKPROTECTOR_STRONG=3Dy
CONFIG_KERNEL_STACKPROTECTOR_STRONG=3Dy
CONFIG_PKG_FORTIFY_SOURCE_2=3Dy
CONFIG_PKG_RELRO_FULL=3Dy

Booting it also goes without a hitch too and I appear to have a fully harde=
ned openwrt_x86_64_glibc variant.=20

Runtime checks show that the stack protector features are indeed enabled. I=
 wrote a 2 line program compiled with default CFLAGS that does a gets() int=
o a small buffer to check the user-space stack protection and it shows that=
 userspace stack protection works as well. The compiled kernel shows the pr=
esence of the kernel stack protection via `/proc/config.gz`. Output below..=
..

root@openwrt:~# uname -a
Linux openwrt 5.4.41 #0 SMP Thu May 14 21:12:59 2020 x86_64 GNU/Linux

root@openwrt:~# cat /etc/openwrt_release                 =20
DISTRIB_ID=3D'OpenWrt'
DISTRIB_RELEASE=3D'SNAPSHOT'
DISTRIB_REVISION=3D'r13242+9-e04ff3c7cc'
DISTRIB_TARGET=3D'x86/64'
DISTRIB_ARCH=3D'x86_64'
DISTRIB_DESCRIPTION=3D'OpenWrt SNAPSHOT r13242+9-e04ff3c7cc'
DISTRIB_TAINTS=3D'no-all glibc busybox'

root@openwrt:~# zcat /proc/config.gz | grep STACKPROTECTOR CONFIG_CC_HAS_SA=
NE_STACKPROTECTOR=3Dy
CONFIG_HAVE_STACKPROTECTOR=3Dy
CONFIG_CC_HAS_STACKPROTECTOR_NONE=3Dy
CONFIG_STACKPROTECTOR=3Dy
CONFIG_STACKPROTECTOR_STRONG=3Dy

root@openwrt:~# check-stack-protector
hjkalsdhssaldhjlsadh0o247uu032u4231pjkl;s
*** stack smashing detected ***: terminated Aborted

To me, this seems to be an obvious change to make and it, in my case, seems=
 to work just fine. In this day of default hardening, and especially in a n=
etwork-exposed router, is there any reason that a x86_64_glibc build should=
 be running with no kernel stack protection?

The full patch necessary to make the change is below.=20

diff --git a/config/Config-build.in b/config/Config-build.in index 61a9265a=
d7..dd5f0cf817 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -249,7 +249,7 @@ menu "Global build settings"
=20
 	choice
 		prompt "User space Stack-Smashing Protection"
-		depends on USE_MUSL
+		depends on USE_MUSL || USE_GLIBC
 		default PKG_CC_STACKPROTECTOR_REGULAR
 		help
 		  Enable GCC Stack Smashing Protection (SSP) for userspace applications =
@@ -257,18 +257,18 @@ menu "Global build settings"
 			bool "None"
 		config PKG_CC_STACKPROTECTOR_REGULAR
 			bool "Regular"
-			select GCC_LIBSSP if !USE_MUSL
+			select GCC_LIBSSP if !USE_MUSL && !USE_GLIBC
 			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
 		config PKG_CC_STACKPROTECTOR_STRONG
 			bool "Strong"
-			select GCC_LIBSSP if !USE_MUSL
+			select GCC_LIBSSP if !USE_MUSL && !USE_GLIBC
 			depends on KERNEL_CC_STACKPROTECTOR_STRONG
 	endchoice
=20
 	choice
 		prompt "Kernel space Stack-Smashing Protection"
 		default KERNEL_CC_STACKPROTECTOR_REGULAR
-		depends on USE_MUSL || !(x86_64 || i386)
+		depends on USE_MUSL || USE_GLIBC
 		help
 		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
 		config KERNEL_CC_STACKPROTECTOR_NONE
diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in index 7d7f34=
210a..baa0cd3877 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -50,8 +50,8 @@ config GCC_DEFAULT_SSP  config GCC_LIBSSP
 	bool
 	prompt "Build gcc libssp" if TOOLCHAINOPTS
-	depends on !USE_MUSL
-	default y if !USE_MUSL
+	depends on !USE_MUSL && !USE_GLIBC
+	default y if !USE_MUSL || !USE_GLIBC
 	help
 	    Enable Stack-Smashing Protection support
=20
diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk index 76=
8ff19060..b908afc50f 100644
--- a/toolchain/glibc/common.mk
+++ b/toolchain/glibc/common.mk
@@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
   endif
 endif
=20
-
 # -Os miscompiles w. 2.24 gcc5/gcc6
 # only -O2 tested by upstream changeset  # "Optimize i386 syscall inlining=
 for GCC 5"
@@ -61,6 +60,8 @@ GLIBC_CONFIGURE:=3D \
 		--without-cvs \
 		--enable-add-ons \
 		--$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
+		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protector=
=3Dyes,) \
+		  $(if=20
+$(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=3Dstrong,
+) \
 		--enable-kernel=3D4.14.0
=20
 export libc_cv_ssp=3Dno

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--_002_KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20KU1PR01MB2022apcp_
Content-Type: application/octet-stream;
	name="toolchain-glibc-stackprotector.patch"
Content-Description: toolchain-glibc-stackprotector.patch
Content-Disposition: attachment;
	filename="toolchain-glibc-stackprotector.patch"; size=2421;
	creation-date="Sun, 24 May 2020 12:02:21 GMT";
	modification-date="Sun, 24 May 2020 12:02:21 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2NvbmZpZy9Db25maWctYnVpbGQuaW4gYi9jb25maWcvQ29uZmlnLWJ1aWxk
LmluDQppbmRleCA2MWE5MjY1YWQ3Li5kZDVmMGNmODE3IDEwMDY0NA0KLS0tIGEvY29uZmlnL0Nv
bmZpZy1idWlsZC5pbg0KKysrIGIvY29uZmlnL0NvbmZpZy1idWlsZC5pbg0KQEAgLTI0OSw3ICsy
NDksNyBAQCBtZW51ICJHbG9iYWwgYnVpbGQgc2V0dGluZ3MiDQogDQogCWNob2ljZQ0KIAkJcHJv
bXB0ICJVc2VyIHNwYWNlIFN0YWNrLVNtYXNoaW5nIFByb3RlY3Rpb24iDQotCQlkZXBlbmRzIG9u
IFVTRV9NVVNMDQorCQlkZXBlbmRzIG9uIFVTRV9NVVNMIHx8IFVTRV9HTElCQw0KIAkJZGVmYXVs
dCBQS0dfQ0NfU1RBQ0tQUk9URUNUT1JfUkVHVUxBUg0KIAkJaGVscA0KIAkJICBFbmFibGUgR0ND
IFN0YWNrIFNtYXNoaW5nIFByb3RlY3Rpb24gKFNTUCkgZm9yIHVzZXJzcGFjZSBhcHBsaWNhdGlv
bnMNCkBAIC0yNTcsMTggKzI1NywxOCBAQCBtZW51ICJHbG9iYWwgYnVpbGQgc2V0dGluZ3MiDQog
CQkJYm9vbCAiTm9uZSINCiAJCWNvbmZpZyBQS0dfQ0NfU1RBQ0tQUk9URUNUT1JfUkVHVUxBUg0K
IAkJCWJvb2wgIlJlZ3VsYXIiDQotCQkJc2VsZWN0IEdDQ19MSUJTU1AgaWYgIVVTRV9NVVNMDQor
CQkJc2VsZWN0IEdDQ19MSUJTU1AgaWYgIVVTRV9NVVNMICYmICFVU0VfR0xJQkMNCiAJCQlkZXBl
bmRzIG9uIEtFUk5FTF9DQ19TVEFDS1BST1RFQ1RPUl9SRUdVTEFSDQogCQljb25maWcgUEtHX0ND
X1NUQUNLUFJPVEVDVE9SX1NUUk9ORw0KIAkJCWJvb2wgIlN0cm9uZyINCi0JCQlzZWxlY3QgR0ND
X0xJQlNTUCBpZiAhVVNFX01VU0wNCisJCQlzZWxlY3QgR0NDX0xJQlNTUCBpZiAhVVNFX01VU0wg
JiYgIVVTRV9HTElCQw0KIAkJCWRlcGVuZHMgb24gS0VSTkVMX0NDX1NUQUNLUFJPVEVDVE9SX1NU
Uk9ORw0KIAllbmRjaG9pY2UNCiANCiAJY2hvaWNlDQogCQlwcm9tcHQgIktlcm5lbCBzcGFjZSBT
dGFjay1TbWFzaGluZyBQcm90ZWN0aW9uIg0KIAkJZGVmYXVsdCBLRVJORUxfQ0NfU1RBQ0tQUk9U
RUNUT1JfUkVHVUxBUg0KLQkJZGVwZW5kcyBvbiBVU0VfTVVTTCB8fCAhKHg4Nl82NCB8fCBpMzg2
KQ0KKwkJZGVwZW5kcyBvbiBVU0VfTVVTTCB8fCBVU0VfR0xJQkMNCiAJCWhlbHANCiAJCSAgRW5h
YmxlIEdDQyBTdGFjay1TbWFzaGluZyBQcm90ZWN0aW9uIChTU1ApIGZvciB0aGUga2VybmVsDQog
CQljb25maWcgS0VSTkVMX0NDX1NUQUNLUFJPVEVDVE9SX05PTkUNCmRpZmYgLS1naXQgYS90b29s
Y2hhaW4vZ2NjL0NvbmZpZy5pbiBiL3Rvb2xjaGFpbi9nY2MvQ29uZmlnLmluDQppbmRleCA3ZDdm
MzQyMTBhLi5iYWEwY2QzODc3IDEwMDY0NA0KLS0tIGEvdG9vbGNoYWluL2djYy9Db25maWcuaW4N
CisrKyBiL3Rvb2xjaGFpbi9nY2MvQ29uZmlnLmluDQpAQCAtNTAsOCArNTAsOCBAQCBjb25maWcg
R0NDX0RFRkFVTFRfU1NQDQogY29uZmlnIEdDQ19MSUJTU1ANCiAJYm9vbA0KIAlwcm9tcHQgIkJ1
aWxkIGdjYyBsaWJzc3AiIGlmIFRPT0xDSEFJTk9QVFMNCi0JZGVwZW5kcyBvbiAhVVNFX01VU0wN
Ci0JZGVmYXVsdCB5IGlmICFVU0VfTVVTTA0KKwlkZXBlbmRzIG9uICFVU0VfTVVTTCAmJiAhVVNF
X0dMSUJDDQorCWRlZmF1bHQgeSBpZiAhVVNFX01VU0wgfHwgIVVTRV9HTElCQw0KIAloZWxwDQog
CSAgICBFbmFibGUgU3RhY2stU21hc2hpbmcgUHJvdGVjdGlvbiBzdXBwb3J0DQogDQpkaWZmIC0t
Z2l0IGEvdG9vbGNoYWluL2dsaWJjL2NvbW1vbi5tayBiL3Rvb2xjaGFpbi9nbGliYy9jb21tb24u
bWsNCmluZGV4IDc2OGZmMTkwNjAuLmI5MDhhZmM1MGYgMTAwNjQ0DQotLS0gYS90b29sY2hhaW4v
Z2xpYmMvY29tbW9uLm1rDQorKysgYi90b29sY2hhaW4vZ2xpYmMvY29tbW9uLm1rDQpAQCAtMzks
NyArMzksNiBAQCBpZmVxICgkKEFSQ0gpLG1pcHM2NCkNCiAgIGVuZGlmDQogZW5kaWYNCiANCi0N
CiAjIC1PcyBtaXNjb21waWxlcyB3LiAyLjI0IGdjYzUvZ2NjNg0KICMgb25seSAtTzIgdGVzdGVk
IGJ5IHVwc3RyZWFtIGNoYW5nZXNldA0KICMgIk9wdGltaXplIGkzODYgc3lzY2FsbCBpbmxpbmlu
ZyBmb3IgR0NDIDUiDQpAQCAtNjEsNiArNjAsOCBAQCBHTElCQ19DT05GSUdVUkU6PSBcDQogCQkt
LXdpdGhvdXQtY3ZzIFwNCiAJCS0tZW5hYmxlLWFkZC1vbnMgXA0KIAkJLS0kKGlmICQoQ09ORklH
X1NPRlRfRkxPQVQpLHdpdGhvdXQsd2l0aCktZnAgXA0KKwkJICAkKGlmICQoQ09ORklHX1BLR19D
Q19TVEFDS1BST1RFQ1RPUl9SRUdVTEFSKSwtLWVuYWJsZS1zdGFjay1wcm90ZWN0b3I9eWVzLCkg
XA0KKwkJICAkKGlmICQoQ09ORklHX1BLR19DQ19TVEFDS1BST1RFQ1RPUl9TVFJPTkcpLC0tZW5h
YmxlLXN0YWNrLXByb3RlY3Rvcj1zdHJvbmcsKSBcDQogCQktLWVuYWJsZS1rZXJuZWw9NC4xNC4w
DQogDQogZXhwb3J0IGxpYmNfY3Zfc3NwPW5v

--_002_KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20KU1PR01MB2022apcp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--_002_KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20KU1PR01MB2022apcp_--

