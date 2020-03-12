Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE218365C
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 17:42:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bV4iUxdagApIE+NvCo4gmcuwBWrYz6+n69N5leJSelQ=; b=C5L
	X+K0aEupWxTuRwYOqiv65fZiWkhE4AdhvPXuORKdSYo0B35bS2e4AIZTXEbqTUzg1JC69h2D3SdMG
	Ok438NZIyEDlHoMzVeQ4QRg82vvPrbeki5KBj8hPUesJinXGRWHv/GZgFJeUbt5LnxiYb4CSKDoQ+
	ttVte69kjyRwaotdEIorZbHYjyTGACn1pV8dSJbQjGu11a3xirHVfUzv7seOQ5Ca2aVugeXI8lasD
	kHBlHRpyB9QHcYTVS8Le2LNE956891d1ZY8lndTZJQROxeVhg3Gh6ufnAdJirLhzccQEGDkXUe+N0
	tKm2Ftnetorg4mExp1v5eBzxVnvuLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQuZ-00087d-EG; Thu, 12 Mar 2020 16:42:19 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQuS-00086p-Os
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 16:42:14 +0000
Received: by mail-il1-x141.google.com with SMTP id d14so5565838ilq.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Mar 2020 09:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=fstJNELx2Rd8/t8kZnURrZnLMtMYpwA5qtg9KvQHBIs=;
 b=B4VnMxpGP97zasSRQloMsHIma10VOPdB80BXtzHYrEXRF4bu3ANNX+Ogqmsp/UkHUw
 l//6Rv8LaprQQetTJLmpwFy/D7NhxBcWIcvCgW4oLk3e/8ewrswEc84zUY5dDJZxndpd
 fAqm7ppEmdoWNJkpp+KNyMqREmhdeindG0qTZsksfGTS52hpUYNGtWlXSVi625DfNpHB
 9o6WPR4fmwEDKGRcQ3rA7xqfssnhKbFxpcO+n5abwK5cap/mZzocIHo/OEq72qHdyeGX
 y5lGCZlgWCCePaXKesI0RCuD6Qvvc+PKtNfdGqvUWAe97yHhpNipaUaagHKWcKZyFN/2
 VjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=fstJNELx2Rd8/t8kZnURrZnLMtMYpwA5qtg9KvQHBIs=;
 b=SulvAMHp4o21NQSzUn5YqQ2Oo95J44TJPsRrt/3a52EntwbyVZHGRTyYMeW41iD4+F
 glcuTKDZ0a2duF3++c1xXMlCbHiGHaVG3d25dKt4FGxk6pftAA/jVP6kcFLzIDauTpGh
 DtHfWE9GUH0DXP+7fGbDXgER4ArmXpanXXjG/gSTPqQBywS4qA9kbr7zqG5t2OUjsc0E
 TQgH8vRXiZQagyoqR1Uz35x6svdqzRNk/bX7dPXwPR4BecSNmfm8TcHoTBcKwk37k8OQ
 m95VFHVFTtn9+2O8jZJZWcm7e3TlwXyJwGqQeS0fjPJFGKEXp6Y7cr+0KyWyur1LTuWm
 gSMw==
X-Gm-Message-State: ANhLgQ1C/CftUhIOayvYke3lACtCNYSab2F5HM4ElUhCAKTi42+gnPlU
 Gk4rrPQWfjxSd01i0l0JMSSpcLxQzkfhnWwAZuf8VaSTLu5ZSg==
X-Google-Smtp-Source: ADFU+vsDTpwGp9M1YSkjhjYMoDA4/8redadPJjL2PjIB7CLY4t/bUMkebd6+jY3ULQqq+K3X212BF60muldJME3muSk=
X-Received: by 2002:a92:8c42:: with SMTP id o63mr8573749ild.189.1584031329134; 
 Thu, 12 Mar 2020 09:42:09 -0700 (PDT)
MIME-Version: 1.0
From: Andrey Melnikov <temnota.am@gmail.com>
Date: Thu, 12 Mar 2020 19:41:57 +0300
Message-ID: <CA+PODjrr3izuq3Db=BKrnT8qgCfbs2QpimHwH7BecC2WvDMQXw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org, Felix Fietkau <nbd@openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_094212_810140_CB23C11F 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [temnota.am[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] mtd-split, spi-nor, squashfs and jffs2
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

Hello.

Can someone explain me logic of
generic/pending-4.14/411-mtd-partial_eraseblock_write.patch memory
management?

hardware: tp-link mr3040 v2 with 16Mb spi-nor flash and 32Mb DDR
memory (u-boot by pepe2k), kernel-4.14.171 (OpenWrt GCC 9.2.0
r12470-dfb7a4ce5d)
flash organisation:
[    0.568427] m25p80 spi0.0: found w25q128, expected m25p80
[    0.583650] m25p80 spi0.0: w25q128 (16384 Kbytes)
[    0.587270] 5 tp-link partitions found on MTD device spi0.0
[    0.592453] Creating 5 MTD partitions on "spi0.0":
[    0.597290] 0x000000000000-0x000000020000 : "u-boot"
[    0.604187] 0x000000020000-0x0000001a75b4 : "kernel"
[    0.607700] mtd: partition "kernel" doesn't end on an erase/write
block boundary -- mark MTD_ERASE_PARTIAL
[    0.620231] 0x0000001a75b4-0x000000ff0000 : "rootfs"
[    0.623821] mtd: partition "rootfs" doesn't start on an erase/write
block boundary -- mark MTD_ERASE_PARTIAL
[    0.634667] mtd: device 2 (rootfs) set to be root filesystem
[    0.639242] 1 squashfs-split partitions found on MTD device rootfs
[    0.645429] Creating 1 MTD partitions on "rootfs":
[    0.650141] 0x000000468a4c-0x000000e48a4c : "rootfs_data"
[    0.658939] 0x000000ff0000-0x000001000000 : "art"
[    0.664556] 0x000000020000-0x000000ff0000 : "firmware"

symptom - board can't survive first boot, invoking OOM killer, crashed
later. jffs2 gc thread trigger this. Boot with KMEMLEAK detector show
huge leak inside part_erase() .

As you see, "rootfs" partition not aligned, so MTD_ERASE_PARTIAL flag
is set. squashfs parser (after commit
7703e14bc4f36758ac28eea3c2abce7591ed4b8d) align found partition to
near
erase block, so "rootfs_data" already aligned.
When jffs2 first time mount rootfs it erase free blocks. Typical
execution flow is: part_erase() check MTD_ERASE_PARTIAL for
"rootfs_data", call parent for erase (itself again, but with "rootfs"
mtd partition),
check again MTD_ERASE_PARTIAL for "rootfs",  allocates 1000h buffer,
read need data from device, call mtd->parent again,  now parent call
spi_nor_erase() to erase block, spi_nor_erase() calls callback
mtd_erase_callback() which
try to write back halves from buffer and free it when
instr->mtd->flags have MTD_ERASE_PARTIAL, return to spi_nor_erase()
and unwind all call's back.

- is code in 411 patch is correct? It's simple assumes that  parent is
aligned, slave - is not. And when parent partition (read "rootfs") not
aligned, slave (read "rootfs_data") aligned - it simply leak memory in
size of "rootfs_data" partition.
I think it should check instr->mtd->flags in part_erase() instead of mtd->flags.


And why we have two tplink partition parser
one in target/linux/generic/files/drivers/mtd/mtdsplit/mtdsplit_tplink.c
and second in target/linux/ar71xx/files/drivers/mtd/tplinkpart.c (with
copy in target/linux/ath79/files/drivers/mtd/tplinkpart.c)
maybe collapse it into one ?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
