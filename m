Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6B01DFEA6
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 13:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wIEw4uTq0/wWRGkaNkvU6PqUqo9xwuiAgWmSTTju4Ko=; b=K8/sLw0z1GEwiw
	0KJk4GXI7puSENCq3kgqgZyGhpnfKdOneALR6MPCm5WRalcAhle54a8oTo92FHbtKl74XlkpzUTnK
	nyqG2VlX/TQWEdLTIih8fCV9ZQyJli/9AGA9MTcJcWv0AXYck2dkJstagbHF3KpJ2rRopnbmMmtRq
	JbOminRhA2nhCCJXLZi+mSKzTwZ1qoJnhMj25o84/kXSOg9FK8yKCL6YZ0BmSuFTEzSzpME/8jhbp
	DFY8CgxfzifmRLsCYAX9bDx2SP06+6iqjW5tvgXWXy+NCzTJq8iLSj1SnZjT8Qk4xs76OeGyCTtAt
	DJsh4XAoMMLwjtQPvRrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcouU-0002Gn-Cb; Sun, 24 May 2020 11:35:18 +0000
Received: from mail-oln040092255088.outbound.protection.outlook.com
 ([40.92.255.88] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcouK-0008Ja-AB
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 11:35:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lHFVQo0MfF2b4/FdHvtqdUbpAcp9wqCFG5C7GbVSO03EZ76Ib/4grdQeyodw7T1RVNlOuMXshb+nnKKFx+v4tRY5Q11VcopnSYUKXOHmJVTT3NzStvB/MBV3ZZgVVn9EuoKO4Too0yXn8TAcIbUhnYtk555UWZQ3G0vuzKKXhgqeCfm/nyj5dUs8eSPeWe4jpN+3kkpGkElWDTsU0UeLcN+Lgj+0hAV/3edBZgwjMUgLYCLivTtCzuzp5/vUyZETr7z1NqZaOND/s//qXSWtBy97iBO3UOfL9lspamqcYrC3CT3wxvSFr+4faHQm5uNlmU/si8ErfvaVfkpuaCxmWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ci0oYRWdBkdf1WaNROlOmPQ28wXcfOkOI23h2dDOWnk=;
 b=hgO5uFS/zaMXed9KKP+FjOeQ2zySEc1F0Ug2RCv9nXe+VoVve+kTY6eXiEa271gCoopl0VL7GbPB9XI5YjN35FUnOOGdC2KAsDpjlgq1GMDhRJy/9jBWIqHlISznh4Gw76FptUgy3RVCW7yzm7DfduXMc+m5EKI7WTK+DrTs4F0+5sPItY6swNO3RNcbq5wooP/pdTr2/Ditt3mCSITq/J1+OQTYo/TrtNfREiKlUNFBECt5XjRF9iNYkTixvDlGls+JgVyaJGiWmJiO790d83uMKKhD4WW5epi6IH7sf7jnDTzMWKzvMYwgnkrwXkDNTsMLiq0D7QDCkEy3KDdulg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ci0oYRWdBkdf1WaNROlOmPQ28wXcfOkOI23h2dDOWnk=;
 b=fb6XRwtmXXr1LtM6e22n1N2RMBY2B1J4GY/ykZ1Yc6RpcSMiU60tQvIzXHs2tf5q37By52FmT55Bac4vKRrIJko+L+pT7Fdq3NQDNPv7FIm9/BlyxO/xkJ8xzEJmlkS6ezGNzJ3ryeYX5bBf8zVSo1msx/PTzyTW5+xE8/jBEOHqiUCXHss2gJAUEWbwlgWTWW5pKq0CpDLYV5uUuNcevWYhOf6TEaBg72EgiVm6Gb+RSXLQr/TT86JGezo89lZdK/9prZmdYpju0ir8i4y6JKqPr0gYPxr55DbycJg/FfZUydQIgjembriLUQ4C6SESKHPbgwjkbQLLr3zT8GYn5w==
Received: from HK2APC01FT020.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4b) by
 HK2APC01HT230.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::339)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Sun, 24 May
 2020 11:34:55 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebc::53) by HK2APC01FT020.mail.protection.outlook.com
 (2a01:111:e400:7ebc::186) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Sun, 24 May 2020 11:34:55 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3021.029; Sun, 24 May 2020
 11:34:55 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Fix for missing kernel stack-protector in x86_64 glibc builds
Thread-Index: AdYxviW8HcgxTYvsSUSQKKffs49D6w==
Date: Sun, 24 May 2020 11:34:55 +0000
Message-ID: <KU1PR01MB2022F88F8DD228B43250EAE7ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6FB125A61F0770C6E1801ED2AFCD37A4290CAB4336F74A958F544E140D5B300A;
 UpperCasedChecksum:9F52727E41C2A63223F18E8AC81967A5B5B218CFCA292CD4D1A2EE40F66E47C2;
 SizeAsReceived:6785; Count:42
x-tmn: [oEFhs1LZgoIplH4ndM9Ivu+JvEAIh044]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: eea5e307-6481-4c89-6da7-08d7ffd67ba0
x-ms-traffictypediagnostic: HK2APC01HT230:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o0FOMz2JdAZCjvGQ1oiubM1FjbD0kIqlP7J7nnJHRocbl0Vtt8nWVYHTlYodAZ6e545cVP/ZbTwqsh9O7K42L/+VOp+jy7SimkwrqtbL0kqSPvI865FPqj1HpHto5Ot0pggo5egwcmsFmzo4rv/n3znX1ewe9ycIYfkUrz6yYqdzdJfloft11a/jDNoQCw5iRem/z7owFUTD/u8fXzN98w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: 1dx0pTfCT8bkllc/fSxQnJjEGWh9+wTHeduChgbIJVMVepPwCSED9pJphaTXbYC2+idXBWZq979S/IZDdFvNPI9FR54fSW61SGA3Lqpacb0K4JRa/J8ZL0bvgRWdElJPsE33mhJqG/8jU0JrCTciDA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: eea5e307-6481-4c89-6da7-08d7ffd67ba0
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2020 11:34:55.6121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_043508_642011_475570E9 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.255.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.255.88 listed in wl.mailspike.net]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Fix for missing kernel stack-protector in x86_64
 glibc builds
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,

Forgive such a long post on my first posting to this list.

I have a change to propose that, while trivial in the actual patch to the build system, affects the toolchain, kernel and every package, so I don't want to just create a PR for it without some discussion and agreement beforehand that it's the right thing to do, even if it seems obvious to me that it is. Perhaps I'm missing something here...

I run a x86_64 build with glibc. I noticed that my build (based on master) did not have kernel stack smashing protection enabled. Since most distros ship with it enabled by default, I got to questioning why. My Ubuntu 20.04 has CONFIG_STACKPROTECTOR_STRONG enabled in the kernel, so there's no technical reason why it can't be used on a x86_64 platform.

It turns out after looking at `config/Config-build.in` that there is explicit code to disable it in the kernel config if we're not using musl and we're on a x86* platform. Moreover, there is also code to enforce use of gcc's standalone libssp for userspace stack protection:

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


The commit messages that accompany this code are respectively 5 years old and 2.5 years old. A lot has changed since then and the reasons these exclusions were put in place are no longer valid.

commit bf82deff7069599c9f130f5bb0222acd171fd19d
Author: Felix Fietkau <nbd@openwrt.org>
Date:   Sun Aug 2 07:40:12 2015 +0000

    build: disable kernel stack protector support for i386/x86_64
    
    When stack protector support is disabled in libc (always the case for
    !musl), gcc assumes that it needs to use __stack_chk_guard for the stack
    canary.
    This causes kernel build errors, because the kernel is only set up to
    handle TLS stack canaries.
    
    Signed-off-by: Felix Fietkau <nbd@openwrt.org>
    
    SVN-Revision: 46543


commit 241e6dd3e92c4f215b8ac75379a4b5aeaeb92171
Author: Julien Dusser <julien.dusser@free.fr>
Date:   Sun Jan 7 18:47:21 2018 +0100

    build: cleanup SSP_SUPPORT configure option
    
    Configure variable SSP_SUPPORT is ambiguous for packages (tor, openssh,
    avahi, freeswitch). It means 'toolchain supporting SSP', but for toolchain
    and depends it means 'build gcc with libssp'.
    
    Musl no longer uses libssp (1877bc9d8f), it has internal support, so
    SSP_SUPPORT was disabled leading some package to not use SSP.
    
    No information why Glibc and uClibc use libssp, but they may also provide
    their own SSP support. uClibc used it own with commit 933b588e25 but it was
    reverted in f3cacb9e84 without details.
    
    Create an new configure GCC_LIBSSP and automatically enable SSP_SUPPORT
    if either USE_MUSL or GCC_LIBSSP.
    
    Signed-off-by: Julien Dusser <julien.dusser@free.fr>


I started to modify the build system to see if I could get kernel stack protection enabled and working.  Just removing the line "depends on USE_MUSL || !(x86_64 || i386)" didn't work. The kernel config itself disables the stack protection at configure time.

After a bit of digging, the reason for this is that the script in the kernel source directory `scripts/gcc-x86_64-has-stack-protector.sh` fails its check. This script does the following check

        #!/bin/sh
        # SPDX-License-Identifier: GPL-2.0

        echo "int foo(void) { char X[200]; return 3; }" | $* -S -x c -c -m32 -O0 -fstack-protector - -o - 2> /dev/null | grep -q "%gs"

The code produced by the default openwrt x86_64_glibc toolchain from this command is as follows:

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


So it's clear why the check fails. We're getting the libssp user-space __stack_chk_guard canary in the code produced by the openwrt compiler and different code produced by the Ubuntu compiler: "movq__stack_chk_guard(%rip), %rax" produced by the openwrt compiler vs "movq	%gs:40, %rax" produced by the Ubuntu compiler. 

The root cause thus of the missing kernel stack protector in x86_64 is that the openwrt x86_64 glibc toolchain is deliberately using a stack smashing protection mechanism that's not compatible with the kernel. Which is libssp. A quick inspection of the compiler options in Ubuntu confirms that it is not compiled with --enable-libssp and Ubuntu kernels have STACK_PROTECTOR_STRONG enabled, so ergo, it's not needed.

It turns out that glibc now supports -fstack-protector* in the libc code itself (similarly to musl). From the configure options for glibc 2.31, the current toolchain version of glibc in master, we can see that it does

        glibc compile options

        '--enable-stack-protector'
        '--enable-stack-protector=strong'
        '--enable-stack-protector=all'
        Compile the C library and all other parts of the glibc package (including the threading and math libraries, NSS modules, and 
        transliteration modules) using the GCC -fstack-protector, -fstack-protector-strong or -fstack-protector-all options to detect 
        stack overruns. Only the dynamic linker and a small number of routines called directly from assembler are excluded from this protection.

Given the ssp support in glibc, there is no reason to use libssp in openwrt at all (perhaps for uclibc it might). As far as I understand it (and the documentation about it is pretty much non-existent), gcc's libssp is a separate, standalone implementation of stack protection which should only be used if the libc variant in use does not support ssp. 

So, modifying the toolchain's glibc `common.mk` to add the relevant --enable-stack-protector* configure options 

diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
index 768ff19060..b908afc50f 100644
--- a/toolchain/glibc/common.mk
+++ b/toolchain/glibc/common.mk
@@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
   endif
 endif
 
-
 # -Os miscompiles w. 2.24 gcc5/gcc6
 # only -O2 tested by upstream changeset
 # "Optimize i386 syscall inlining for GCC 5"
@@ -61,6 +60,8 @@ GLIBC_CONFIGURE:= \
                --without-cvs \
                --enable-add-ons \
                --$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
+                 $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protector=yes,) \
+                 $(if $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=strong,) \
                --enable-kernel=4.14.0
 
 export libc_cv_ssp=no


and altering the dependencies on GLIBC_SSP in `Config-build.in` so that enabling userspace stack protection does not force the use of `--enable-libssp` in the toolchain configure options for glibc builds and rebuilding the toolchain with `--disable-libssp` has the desired result, as the code produced by the openwrt toolchain now looks identical to that produced by the host system compiler on my Ubuntu dev box


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


--disable-libssp in fact just disables the build of the libssp library, but gcc still supports -fstack-protector*. 

Doing a kernel build, it compiles perfectly and the relevant STACK_PROTECTOR options are now set in the kernel config. 

Setting all the hardening options to on in menuconfig, a full system build of all the userspace packages (I don't have all of them selected, but I have a lot selected) finished successfully with no errors.

CONFIG_PKG_ASLR_PIE_ALL=y
CONFIG_PKG_CC_STACKPROTECTOR_STRONG=y
CONFIG_KERNEL_CC_STACKPROTECTOR_STRONG=y
CONFIG_KERNEL_STACKPROTECTOR_STRONG=y
CONFIG_PKG_FORTIFY_SOURCE_2=y
CONFIG_PKG_RELRO_FULL=y

Booting it also goes without a hitch too and I appear to have a fully hardened openwrt_x86_64_glibc variant. 

Runtime checks show that the stack protector features are indeed enabled. I wrote a 2 line program compiled with default CFLAGS that does a gets() into a small buffer to check the user-space stack protection and it shows that userspace stack protection works as well. The compiled kernel shows the presence of the kernel stack protection via `/proc/config.gz`. Output below....

root@openwrt:~# uname -a
Linux openwrt 5.4.41 #0 SMP Thu May 14 21:12:59 2020 x86_64 GNU/Linux

root@openwrt:~# cat /etc/openwrt_release                  
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='SNAPSHOT'
DISTRIB_REVISION='r13242+9-e04ff3c7cc'
DISTRIB_TARGET='x86/64'
DISTRIB_ARCH='x86_64'
DISTRIB_DESCRIPTION='OpenWrt SNAPSHOT r13242+9-e04ff3c7cc'
DISTRIB_TAINTS='no-all glibc busybox'

root@openwrt:~# zcat /proc/config.gz | grep STACKPROTECTOR
CONFIG_CC_HAS_SANE_STACKPROTECTOR=y
CONFIG_HAVE_STACKPROTECTOR=y
CONFIG_CC_HAS_STACKPROTECTOR_NONE=y
CONFIG_STACKPROTECTOR=y
CONFIG_STACKPROTECTOR_STRONG=y

root@openwrt:~# check-stack-protector
hjkalsdhssaldhjlsadh0o247uu032u4231pjkl;s
*** stack smashing detected ***: terminated
Aborted

To me, this seems to be an obvious change to make and it, in my case, seems to work just fine. In this day of default hardening, and especially in a network-exposed router, is there any reason that a x86_64_glibc build should be running with no kernel stack protection?

The full patch necessary to make the change is below. 

diff --git a/config/Config-build.in b/config/Config-build.in
index 61a9265ad7..dd5f0cf817 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -249,7 +249,7 @@ menu "Global build settings"
 
 	choice
 		prompt "User space Stack-Smashing Protection"
-		depends on USE_MUSL
+		depends on USE_MUSL || USE_GLIBC
 		default PKG_CC_STACKPROTECTOR_REGULAR
 		help
 		  Enable GCC Stack Smashing Protection (SSP) for userspace applications
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
 
 	choice
 		prompt "Kernel space Stack-Smashing Protection"
 		default KERNEL_CC_STACKPROTECTOR_REGULAR
-		depends on USE_MUSL || !(x86_64 || i386)
+		depends on USE_MUSL || USE_GLIBC
 		help
 		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
 		config KERNEL_CC_STACKPROTECTOR_NONE
diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
index 7d7f34210a..baa0cd3877 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -50,8 +50,8 @@ config GCC_DEFAULT_SSP
 config GCC_LIBSSP
 	bool
 	prompt "Build gcc libssp" if TOOLCHAINOPTS
-	depends on !USE_MUSL
-	default y if !USE_MUSL
+	depends on !USE_MUSL && !USE_GLIBC
+	default y if !USE_MUSL || !USE_GLIBC
 	help
 	    Enable Stack-Smashing Protection support
 
diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
index 768ff19060..b908afc50f 100644
--- a/toolchain/glibc/common.mk
+++ b/toolchain/glibc/common.mk
@@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
   endif
 endif
 
-
 # -Os miscompiles w. 2.24 gcc5/gcc6
 # only -O2 tested by upstream changeset
 # "Optimize i386 syscall inlining for GCC 5"
@@ -61,6 +60,8 @@ GLIBC_CONFIGURE:= \
 		--without-cvs \
 		--enable-add-ons \
 		--$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
+		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protector=yes,) \
+		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=strong,) \
 		--enable-kernel=4.14.0
 
 export libc_cv_ssp=no

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
