Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69718196E2A
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Mar 2020 17:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/f8XCcJA7yfB66daR0nLAYHXZXrXMDqhfxWBXi0dUGk=; b=RbcrmGIIdKeTZDlX/z0piuQtN
	Vl7sF2+GHGT5K/e4M7xV/3oO1U+Y2qDo5JmT8cGiKFtn42yjAuUXtPgK3aXFBc9n8eW3iaxudLLgY
	mvOLlJ0ezohKssjukvkSws0Zl5E1ikxMKbJUVsLtE6H+rUvcrKCswDEeL7Iw3k8oyBUIF0ERvoL8U
	RrnEsLpE6dU170RPM50AvJbO00SfjOhAeY/5eEuZDm/i55vtMrT9kj1bxTZ4q5gk1eosjK9nIW7iR
	B02H6tu39SkzTg1A1cuC+QRcEyeUym1Q9504gZPhuRkNCL1Yo/w2P+AWhgeTGZc+/oOgKI13GU59x
	6hip8AvQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIZx9-0004l1-0L; Sun, 29 Mar 2020 15:34:23 +0000
Received: from mout-p-103.mailbox.org ([2001:67c:2050::465:103])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIZx1-0004kW-Tw
 for openwrt-devel@lists.openwrt.org; Sun, 29 Mar 2020 15:34:18 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 48r04Z5ZYrzKmh4;
 Sun, 29 Mar 2020 17:34:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id wugkg34olZKN; Sun, 29 Mar 2020 17:34:00 +0200 (CEST)
To: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200327042801.61504-1-yszhou4tech@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <b9f39fc1-be09-da75-125b-9897dd971df4@hauke-m.de>
Date: Sun, 29 Mar 2020 17:33:46 +0200
MIME-Version: 1.0
In-Reply-To: <20200327042801.61504-1-yszhou4tech@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_083416_267842_F6858983 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] generic: mips: exclude more dsemul code
 when fpu-emu is not enabled
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
Cc: rosenp@gmail.com, ldir@darbyshire-bryant.me.uk
Content-Type: multipart/mixed; boundary="===============3041456804980159142=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3041456804980159142==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="4XZcgwUDiW3tDZcW2nOsxVC6dkjsxMtjl"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--4XZcgwUDiW3tDZcW2nOsxVC6dkjsxMtjl
Content-Type: multipart/mixed; boundary="L2khakpeS7zwgWSlavlsJYJC4e1tRHCoA"

--L2khakpeS7zwgWSlavlsJYJC4e1tRHCoA
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 3/27/20 5:28 AM, Yousong Zhou wrote:
> The patch is backported from mips-next.  In addition to minor reduction=

> of code size and runtime memory use, the more apparent difference is
> that the delay slot emulation page will not be present for those target=
s
> with fpu emulation disabled (CONFIG_MIPS_FP_SUPPORT=3Dn)
>=20
> Memory maps of busybox before and after this change
>=20
>   root@OpenWrt:/# cat /proc/self/maps
>   00400000-00449000 r-xp 00000000 00:02 23         /bin/busybox
>   00458000-00459000 r-xp 00048000 00:02 23         /bin/busybox
>   00459000-0045a000 rwxp 00049000 00:02 23         /bin/busybox
>   77dc0000-77de2000 r-xp 00000000 00:02 273        /lib/libgcc_s.so.1
>   77de2000-77de3000 r-xp 00012000 00:02 273        /lib/libgcc_s.so.1
>   77de3000-77de4000 rwxp 00013000 00:02 273        /lib/libgcc_s.so.1
>   77de4000-77e7b000 r-xp 00000000 00:02 271        /lib/libc.so
>   77e8a000-77e8c000 rwxp 00096000 00:02 271        /lib/libc.so
>   77e8c000-77e8e000 rwxp 00000000 00:00 0
>   7fd86000-7fda7000 rw-p 00000000 00:00 0          [stack]
>   7fefd000-7fefe000 r-xp 00000000 00:00 0
>   7ffe6000-7ffe7000 r--p 00000000 00:00 0          [vvar]
>   7ffe7000-7ffe8000 r-xp 00000000 00:00 0          [vdso]
>=20
>   root@OpenWrt:/# cat /proc/self/maps
>   00400000-00449000 r-xp 00000000 00:02 23         /bin/busybox
>   00458000-00459000 r-xp 00048000 00:02 23         /bin/busybox
>   00459000-0045a000 rwxp 00049000 00:02 23         /bin/busybox
>   77d55000-77d77000 r-xp 00000000 00:02 274        /lib/libgcc_s.so.1
>   77d77000-77d78000 r-xp 00012000 00:02 274        /lib/libgcc_s.so.1
>   77d78000-77d79000 rwxp 00013000 00:02 274        /lib/libgcc_s.so.1
>   77d79000-77e10000 r-xp 00000000 00:02 272        /lib/libc.so
>   77e1f000-77e21000 rwxp 00096000 00:02 272        /lib/libc.so
>   77e21000-77e23000 rwxp 00000000 00:00 0
>   7fe23000-7fe44000 rw-p 00000000 00:00 0          [stack]
>   7ff63000-7ff64000 r--p 00000000 00:00 0          [vvar]
>   7ff64000-7ff65000 r-xp 00000000 00:00 0          [vdso]
>=20
> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>

Acked-by: Hauke Mehrtens <hauke@hauke-m.de>

> ---
>  ...e-dsemul-code-when-CONFIG_MIPS_FP_SU.patch | 140 ++++++++++++++++++=

>  1 file changed, 140 insertions(+)
>  create mode 100644 target/linux/generic/backport-5.4/300-MIPS-Exclude-=
more-dsemul-code-when-CONFIG_MIPS_FP_SU.patch
>=20
> diff --git a/target/linux/generic/backport-5.4/300-MIPS-Exclude-more-ds=
emul-code-when-CONFIG_MIPS_FP_SU.patch b/target/linux/generic/backport-5.=
4/300-MIPS-Exclude-more-dsemul-code-when-CONFIG_MIPS_FP_SU.patch
> new file mode 100644
> index 0000000000..1be051e1df
> --- /dev/null
> +++ b/target/linux/generic/backport-5.4/300-MIPS-Exclude-more-dsemul-co=
de-when-CONFIG_MIPS_FP_SU.patch
> @@ -0,0 +1,140 @@
> +From d96c3157f9ca177727fbad960fcf6f52f145f471 Mon Sep 17 00:00:00 2001=

> +From: Yousong Zhou <yszhou4tech@gmail.com>
> +Date: Thu, 9 Jan 2020 11:33:19 +0800
> +Subject: [PATCH] MIPS: Exclude more dsemul code when CONFIG_MIPS_FP_SU=
PPORT=3Dn
> +
> +This furthers what commit 42b10815d559 ("MIPS: Don't compile math-emu
> +when CONFIG_MIPS_FP_SUPPORT=3Dn") has done
> +
> +Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> +---
> + arch/mips/include/asm/processor.h | 12 ++++++------
> + arch/mips/kernel/process.c        | 10 ++++++++--
> + arch/mips/kernel/vdso.c           | 26 +++++++++++++++-----------
> + 3 files changed, 29 insertions(+), 19 deletions(-)
> +
> +diff --git a/arch/mips/include/asm/processor.h b/arch/mips/include/asm=
/processor.h
> +index 7619ad319400..813ba94d87bb 100644
> +--- a/arch/mips/include/asm/processor.h
> ++++ b/arch/mips/include/asm/processor.h
> +@@ -253,13 +253,13 @@ struct thread_struct {
> + #ifdef CONFIG_MIPS_FP_SUPPORT
> + 	/* Saved fpu/fpu emulator stuff. */
> + 	struct mips_fpu_struct fpu FPU_ALIGN;
> +-#endif
> + 	/* Assigned branch delay slot 'emulation' frame */
> + 	atomic_t bd_emu_frame;
> + 	/* PC of the branch from a branch delay slot 'emulation' */
> + 	unsigned long bd_emu_branch_pc;
> + 	/* PC to continue from following a branch delay slot 'emulation' */
> + 	unsigned long bd_emu_cont_pc;
> ++#endif
> + #ifdef CONFIG_MIPS_MT_FPAFF
> + 	/* Emulated instruction count */
> + 	unsigned long emulated_fp;
> +@@ -302,7 +302,11 @@ struct thread_struct {
> + 		.fpr		=3D {{{0,},},},			\
> + 		.fcr31		=3D 0,				\
> + 		.msacsr		=3D 0,				\
> +-	},
> ++	},							\
> ++	/* Delay slot emulation */				\
> ++	.bd_emu_frame =3D ATOMIC_INIT(BD_EMUFRAME_NONE),		\
> ++	.bd_emu_branch_pc =3D 0,					\
> ++	.bd_emu_cont_pc =3D 0,
> + #else
> + # define FPU_INIT
> + #endif
> +@@ -334,10 +338,6 @@ struct thread_struct {
> + 	 * FPU affinity state (null if not FPAFF)		\
> + 	 */							\
> + 	FPAFF_INIT						\
> +-	/* Delay slot emulation */				\
> +-	.bd_emu_frame =3D ATOMIC_INIT(BD_EMUFRAME_NONE),		\
> +-	.bd_emu_branch_pc =3D 0,					\
> +-	.bd_emu_cont_pc =3D 0,					\
> + 	/*							\
> + 	 * Saved DSP stuff					\
> + 	 */							\
> +diff --git a/arch/mips/kernel/process.c b/arch/mips/kernel/process.c
> +index 339870ed92f7..b2a797557825 100644
> +--- a/arch/mips/kernel/process.c
> ++++ b/arch/mips/kernel/process.c
> +@@ -75,7 +75,9 @@ void start_thread(struct pt_regs * regs, unsigned lo=
ng pc, unsigned long sp)
> + 	lose_fpu(0);
> + 	clear_thread_flag(TIF_MSA_CTX_LIVE);
> + 	clear_used_math();
> ++#ifdef CONFIG_MIPS_FP_SUPPORT
> + 	atomic_set(&current->thread.bd_emu_frame, BD_EMUFRAME_NONE);
> ++#endif
> + 	init_dsp();
> + 	regs->cp0_epc =3D pc;
> + 	regs->regs[29] =3D sp;
> +@@ -176,7 +178,9 @@ int copy_thread_tls(unsigned long clone_flags, uns=
igned long usp,
> + 	clear_tsk_thread_flag(p, TIF_FPUBOUND);
> + #endif /* CONFIG_MIPS_MT_FPAFF */
> +=20
> ++#ifdef CONFIG_MIPS_FP_SUPPORT
> + 	atomic_set(&p->thread.bd_emu_frame, BD_EMUFRAME_NONE);
> ++#endif
> +=20
> + 	if (clone_flags & CLONE_SETTLS)
> + 		ti->tp_value =3D tls;
> +@@ -650,8 +654,10 @@ unsigned long mips_stack_top(void)
> + {
> + 	unsigned long top =3D TASK_SIZE & PAGE_MASK;
> +=20
> +-	/* One page for branch delay slot "emulation" */
> +-	top -=3D PAGE_SIZE;
> ++	if (IS_ENABLED(CONFIG_MIPS_FP_SUPPORT)) {
> ++		/* One page for branch delay slot "emulation" */
> ++		top -=3D PAGE_SIZE;
> ++	}
> +=20
> + 	/* Space for the VDSO, data page & GIC user page */
> + 	top -=3D PAGE_ALIGN(current->thread.abi->vdso->size);
> +diff --git a/arch/mips/kernel/vdso.c b/arch/mips/kernel/vdso.c
> +index bc35f8499111..3adb7354bc01 100644
> +--- a/arch/mips/kernel/vdso.c
> ++++ b/arch/mips/kernel/vdso.c
> +@@ -71,10 +71,12 @@ subsys_initcall(init_vdso);
> +=20
> + static unsigned long vdso_base(void)
> + {
> +-	unsigned long base;
> ++	unsigned long base =3D STACK_TOP;
> +=20
> +-	/* Skip the delay slot emulation page */
> +-	base =3D STACK_TOP + PAGE_SIZE;
> ++	if (IS_ENABLED(CONFIG_MIPS_FP_SUPPORT)) {
> ++		/* Skip the delay slot emulation page */
> ++		base +=3D PAGE_SIZE;
> ++	}
> +=20
> + 	if (current->flags & PF_RANDOMIZE) {
> + 		base +=3D get_random_int() & (VDSO_RANDOMIZE_SIZE - 1);
> +@@ -95,14 +97,16 @@ int arch_setup_additional_pages(struct linux_binpr=
m *bprm, int uses_interp)
> + 	if (down_write_killable(&mm->mmap_sem))
> + 		return -EINTR;
> +=20
> +-	/* Map delay slot emulation page */
> +-	base =3D mmap_region(NULL, STACK_TOP, PAGE_SIZE,
> +-			   VM_READ | VM_EXEC |
> +-			   VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
> +-			   0, NULL);
> +-	if (IS_ERR_VALUE(base)) {
> +-		ret =3D base;
> +-		goto out;
> ++	if (IS_ENABLED(CONFIG_MIPS_FP_SUPPORT)) {
> ++		/* Map delay slot emulation page */
> ++		base =3D mmap_region(NULL, STACK_TOP, PAGE_SIZE,
> ++				VM_READ | VM_EXEC |
> ++				VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
> ++				0, NULL);
> ++		if (IS_ERR_VALUE(base)) {
> ++			ret =3D base;
> ++			goto out;
> ++		}
> + 	}
> +=20
> + 	/*
>=20



--L2khakpeS7zwgWSlavlsJYJC4e1tRHCoA--

--4XZcgwUDiW3tDZcW2nOsxVC6dkjsxMtjl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl6Av9oACgkQ8bdnhZyy
68eUbQf8DDGUaQUFoRrO4pEDRs3Igjdddv145na3TNhLL57ft/gIf74fBe3IJOfT
gYFWbmiFra1UE8+HNjtGus3dmto/d2/KSriS32g0Ml9K0m8GMO/p9gVZhqIw3BSn
roumv9oW2CZmCq6XZ+2nZCovlXLs3TLKPoyDv3XXYY0OVN3HV60WK+1ruS7JSRPM
jieko3WvMu3hAjvPACaq0KqV5GBJaXu96oqB8/FcHa6OB5skXoDd1iy8/TNxD9Yo
cVgKOguU+wruECq7OpST0YKnVKIzQVCpbIaS8nUNqMIx+5VOmRU3MWx8fsOfK1Cu
ZRQTqMWWqh6yvOn+eFY6eOPQDCx4SQ==
=c8wr
-----END PGP SIGNATURE-----

--4XZcgwUDiW3tDZcW2nOsxVC6dkjsxMtjl--


--===============3041456804980159142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3041456804980159142==--

