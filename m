Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4841FD58E
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 21:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqUpvyojWAxIvu5mr9eyTXD2IUuUH9OCTEP4SZku5TY=; b=p4Se3QeT345Edo
	nKA9mRiSeOWdhJpPCLVetViTltXPDmat7sFoopAqgWG/UWLqd6jtOAurBmo4wgUi0icEJrTXqRGbU
	qdhFjdsqFKMy4dmRZYQGjSZNTkiZ6K0iK4d+UYpsXEsHM5ehigYsuwRcNn9xG3GhjeX7VR0d/6exU
	uhL208UzXUS6+07pvS5ni15s3azzzH3Q+GVQ7aZZJ46AEAPr4VsY0QtCCrQS6OHG8x7huDzk1EJlz
	i9m9iYUBUv3E5uljbE2e4tOIdMu+F1VLKKp9qIKjW8mnTPzzech7jhac3vFkpqOwkuZe6ikxc8XAk
	UsIMcXwWbUrCg4EaLoYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jle6K-00038J-4W; Wed, 17 Jun 2020 19:52:00 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jle6E-00037i-7R
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 19:51:55 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id f3a8d9b6
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 17 Jun 2020 19:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=WbkAAlRWnH9XwMAETp0TbEUtkLg=; b=m9rr5x
 ToeNG8LwhExogEBrCe6n+OF89Tp2u91npNKKw0mdhdtngGFLhkLgn3ZKZVnGUaLh
 y9KYt53rj9bWcpwJG9IK6E/QrbnhNO1N2BW1DYVBCbWi3qzEhI199I0xuiv6NYnJ
 B67qVJAVPTt+yp7mZaVyUaPhN/9uvl5QeC6O55lefx0uM0bLaHxaeQBiADUjrF7N
 JBcjGmYygAnNmY5jtgcNit6/CAFWPHUGRUSZxggPMA1vRyEn8w1NvjEtDLQzbWBf
 gGOD7U7QikybxAkDQu5mehTY5/aF2qWtTeTtH+iaI59xfhkuuJv1NjGXusvcw4Ek
 96Wi1FAItmZRnkOg==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id f9068e34
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 17 Jun 2020 19:33:40 +0000 (UTC)
Received: by mail-io1-f54.google.com with SMTP id o5so4320438iow.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 12:51:48 -0700 (PDT)
X-Gm-Message-State: AOAM532bwbnqlj6L+v16zg2qRoTrObjpGrU++LbrKEW6iPIJPQj+yXx1
 u5VeTeFHunZ2wqZMgNMWC0uR8+Xad0orjEoLPiY=
X-Google-Smtp-Source: ABdhPJzEf4W0QG4pMYGIXBDSn4Na56IwTgWR4wQ9PJyG5bzoNsRn0baP1ThRfYIzA11BX9l3nygt94V2uIDSmQ0lZnQ=
X-Received: by 2002:a02:b0d1:: with SMTP id w17mr935887jah.75.1592423507917;
 Wed, 17 Jun 2020 12:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
In-Reply-To: <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 17 Jun 2020 13:51:36 -0600
X-Gmail-Original-Message-ID: <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
Message-ID: <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_125154_478983_6E63C840 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Rui,

On Wed, Jun 17, 2020 at 7:19 AM Rui Salvaterra <rsalvaterra@gmail.com> wrote:
> After a bit more digging [1], I believe I've narrowed it down.
> CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y is required in order to avoid
> the emission of R_ARM_THM_JUMP11 relocations in the WireGuard module.
> I'm now wondering why the compat modules haven't exhibited the same
> problem (maybe it was just a fluke), but since this kconfig option
> effectively implies -fno-optimize-sibling-calls [2], it's quite a
> hefty hammer. Is this something that can be solved in the WireGuard
> build itself?
>
> Thanks in advance,
> Rui
>
> [1] https://github.com/openwrt/openwrt/pull/3079#issuecomment-645297337
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/arm/Makefile?h=linux-5.4.y#n125

Ahh hah, nice detective work. Reading the Kconfig description, it
looks like this is actually a toolchain bug with modules in general:

config THUMB2_AVOID_R_ARM_THM_JUMP11
       bool "Work around buggy Thumb-2 short branch relocations in gas"
       depends on THUMB2_KERNEL && MODULES
       default y
       help
         Various binutils versions can resolve Thumb-2 branches to
         locally-defined, preemptible global symbols as short-range "b.n"
         branch instructions.

         This is a problem, because there's no guarantee the final
         destination of the symbol, or any candidate locations for a
         trampoline, are within range of the branch.  For this reason, the
         kernel does not support fixing up the R_ARM_THM_JUMP11 (102)
         relocation in modules at all, and it makes little sense to add
         support.

         The symptom is that the kernel fails with an "unsupported
         relocation" error when loading some modules.

         Until fixed tools are available, passing
         -fno-optimize-sibling-calls to gcc should prevent gcc generating
         code which hits this problem, at the cost of a bit of extra runtime
         stack usage in some cases.

         The problem is described in more detail at:
             https://bugs.launchpad.net/binutils-linaro/+bug/725126

         Only Thumb-2 kernels are affected.

         Unless you are sure your tools don't have this problem, say Y.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
