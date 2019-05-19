Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962AA22946
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 May 2019 23:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpTTRkEEM4cIl1kKm8JvLXPN50EbhumsKVf6562lTQ4=; b=XMnCFnWCWNeSkz
	wQGQ0yVgwAjYPUDEtn885IGyQFQV38Cq05mk3ndVqyD03NfexyCVoTTTljLavx1bkhY1ojpyhLyCT
	aPJkNBYZaHyoIWCg8mTSgVMebiFj1AUotOwlY1j88kdrS6DebVVMwYQjyXoltJHAthi2+ez51NTyZ
	tNa25e3+EEWPl8OdaqT6Yl3uZ6nlZJkXJ5SR+JJL7gTiTMKrXTh+DW1K25VG3OssQ0xFItzWNevld
	brU+BTA+LhX4neKiC0ttFok+BMUYcVpXUUp0uE5u2aUxnygW/QCY5pXZasXpbPqEdUB3lKjegWDKb
	tlOtNzEgewvlEwT/CzAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSTdB-0000Pa-Tr; Sun, 19 May 2019 21:46:09 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSTd5-0000PB-1i
 for openwrt-devel@lists.openwrt.org; Sun, 19 May 2019 21:46:05 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id CE2B550852;
 Sun, 19 May 2019 23:45:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 0SsoaTXgOkah; Sun, 19 May 2019 23:45:57 +0200 (CEST)
To: Petr Cvek <petrcvekcz@gmail.com>, openwrt-devel@lists.openwrt.org
References: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 mQINBFtLdKcBEADFOTNUys8TnhpEdE5e1wO1vC+a62dPtuZgxYG83+9iVpsAyaSrCGGz5tmu
 BgkEMZVK9YogfMyVHFEcy0RqfO7gIYBYvFp0z32btJhjkjBm9hZ6eonjFnG9XmqDKg/aZI+u
 d9KGUh0DeaHT9FY96qdUsxIsdCodowf1eTNTJn+hdCudjLWjDf9FlBV0XKTN+ETY3pbPL2yi
 h8Uem7tC3pmU7oN7Z0OpKev5E2hLhhx+Lpcro4ikeclxdAg7g3XZWQLqfvKsjiOJsCWNXpy7
 hhru9PQE8oNFgSNzzx2tMouhmXIlzEX4xFnJghprn+8EA/sCaczhdna+LVjICHxTO36ytOv7
 L3q6xDxIkdF6vyeEtVm1OfRzfGSgKdrvxc+FRJjp3TIRPFqvYUADDPh5Az7xa1LRy3YcvKYx
 psDDKpJ8nCxNaYs6hqTbz4loHpv1hQLrPXFVpoFUApfvH/q7bb+eXVjRW1m2Ahvp7QipLEAK
 GbiV7uvALuIjnlVtfBZSxI+Xg7SBETxgK1YHxV7PhlzMdTIKY9GL0Rtl6CMir/zMFJkxTMeO
 1P8wzt+WOvpxF9TixOhUtmfv0X7ay93HWOdddAzov7eCKp4Ju1ZQj8QqROqsc/Ba87OH8cnG
 /QX9pHXpO9efHcZYIIwx1nquXnXyjJ/sMdS7jGiEOfGlp6N9IwARAQABtCFIYXVrZSBNZWhy
 dGVucyA8aGF1a2VAaGF1a2UtbS5kZT6JAk4EEwEIADgCGwEFCwkIBwIGFQgJCgsCBBYCAwEC
 HgECF4AWIQS4+/Pwq1ZO6E9/sdOT3SBjCRC1FQUCW0t9TwAKCRCT3SBjCRC1FRetEACWaCie
 dED+Y6Zps5IQE9jp1YCaqQAEC78sj4ALeU4kdZ35Obe99uyQ0q/vvPlnFigkp7yeBDP+wPHH
 c613/ONkaz+vXSItz5oHCt6o2QuelDX8cKCD4zexmiPfysJDwTcwmg8oPnfMqmob/97l1IoT
 nfkgWPYjfjjj2CUkXIJTYx13q6bHFYQ8FBur8PRWMt+xOlZI33HsQCMjc+akdA/ULclpauD6
 4nYL/a0kakUgv9wgZ0aET++VOpBPQQfvfzJJFKsBEWmZdtMql8XgyzTiIUu9oH3CqLNCgdB3
 vekYPw3ltV3MxvUtCCsZMzApidOyJnCc3BJElf3g7gV1W67NnqGm4U8Kj0uoG4MHh/Z0raqf
 rNVrbwKPVDeLkBgkdDud9TuTH35adTYPHQEGaof5zqOJk0jOZYC0D5TCKsGeRnCSR+WRYLLv
 ifNQhyaLmTGA1dw3FUgsKje7ydRP0ypMnOJpLYFRSgkum18C7eBfgk9KRqXFglIrh7h2bryU
 EyvR4r4gABi966uU2TnfGOZapDHbwgEK/2d7/ixL19B8vZlvBNQdpKa2yO9Eq/oeDV8vZzVr
 9DhwpBEcAw7XsaXAfvH3eMttiP6DJGVzju0bWUDu0Xqo4PhJlYm4rmo7bAl5EThAUttcUJz1
 ruS7ck6WznuFwqd3niYX080Sy2rltrkBDQRbS3sDAQgA4DtYzB73BUYxMaU2gbFTrPwXuDba
 +NgLpaF80PPXJXacdYoKklVyD23vTk5vw1AvMYe32Y16qgLkmr8+bS9KlLmpgNn5rMWzOqKr
 /N+m2DG7emWAg3kVjRRkJENs1aQZoUIFJFBxlVZ2OuUSYHvWujej11CLFkxQo9Efa35QAEei
 zEGtjhjEd4OUT5iPuxxr5yQ/7IB98oTT17UBs62bDIyiG8Dhus+tG8JZAvPvh9pMMAgcWf+B
 su4A00r+Xyojq06pnBMa748elV1Bo48Bg0pEVncFyQ9YSEiLtdgwnq6W8E00kATGVpN1fafv
 xGRLVPfQbfrKTiTkC210L7nv2wARAQABiQI2BBgBCAAgFiEEuPvz8KtWTuhPf7HTk90gYwkQ
 tRUFAltLewMCGwwACgkQk90gYwkQtRXUDw//ZlG04aPiPuRXcueSguNEdlvUoU7EQPeQt69+
 7gZwN+0+jH/F9vHn3h3O0UUF+HkaSjJqDTDNIHltaEOa4al/bpgCZHUjv6yq6Wdvjsuh6IXo
 XCptXEWKC8OPa5ZWRczIaGpTY4yEwkYi0wTMvFYIO1WPaaAqUWI7p63XqIoC5q0YB8ELYxwV
 WukezpUw+umxuvz/ksk0JHAsfXjTMnYHGYqOyu+5gdZcl7Hc+IpDnjeTu7jwMJTUWE/3umyM
 kTrnSx5l0/hZIo7IO5mciYibp9aAGhpGAemdLpOgFY8tQne/2kxgVP+Pgpzp82LOeVDSeHXj
 HRS8rhnU8Wu70fGC752LpwCzdsS53sURfofAeXEw8A6Cbcw1igEi21rOi3VIeCxwDonozVQM
 8hdBW5jfJmwn598P0MPESSx3Z1MQ3onuopNcnsr9Lu2t5bFN289n7AM9UVGvrloN/FKMyRzC
 lRVFsc1KRFwVaHNLYw8jlwTlR8tgZ4QNUYj0QDrof/ItdZZ0KcmmnSYKACjqwbKuiCUanaVJ
 DibyTrQmi0vwz/0PyIAWsaF4pQZ78dRwA0B/jEewY3RDA1BOy35dn9gG+qr0fbkYY9YZYFik
 1p/PYOBFn0a/8tFp8ePsZGQAuLdAANcJdoiyeGUejktsWHOww4CwVJvdgxeNK7tyI3azmoK5
 AQ0EW0t7cQEIAOZqnCTnoFeTFoJU2mHdEMAhsfh7X4wTPFRy48O70y4PFDgingwETq8njvAB
 MDGjN++00F8cZ45HNNB5eUKDcW9bBmxrtCK+F0yPu5fy+0M4Ntow3PyHMNItOWIKd//EazOK
 iuHarhc6f1OgErMShe/9rTmlToqxwVmfnHi1aK6wvVbTiNgGyt+2FgA6BQIoChkPGNQ6pgV5
 QlCEWvxbeyiobOSAx1dirsfogJwcTvsCU/QaTufAI9QO8dne6SKsp5z58yigWPwDnOF/LvQ2
 6eDrYHjnk7kVuBVIWjKlpiAQ00hfLU7vwQH0oncfB5HT/fL1b2461hmwXxeV+jEzQkkAEQEA
 AYkDbAQYAQgAIBYhBLj78/CrVk7oT3+x05PdIGMJELUVBQJbS3txAhsCAUAJEJPdIGMJELUV
 wHQgBBkBCAAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAltLe3EACgkQ8bdnhZyy68d1Wgf8
 Dabx9vKo1usbgDHl4LZzrJhfRm2I3+J5FTboLJsFe8jpRNcf6eGJpGLeW3s/wqWd8cYsLtbz
 Ja1znoz3EwPhHaIHmwXw4TgYm+NVu2Cm9dg2aLNQj8haNfOPhIGqr5unvhnlwrbG+Yjl0er2
 sAdB5zXlIx8hIjHofMJIoW4yB79T4eZseFyrwA+OeI6pJTgQ1daXlOph26ZGulMy++pviIP/
 Ab57PJ81/DTSPWXqmEe72nLW5jWKXeHbTMaH9KVNdxJCIl8ZZgq4zN2msnpliJ+EoNVgGOgK
 iRckeGlkWtcezQ0Ir5yBaABkVVZCSydYfETSJ7TrFwY1wQwyCFcL78I7D/9UA3T1GJebF9QG
 zorfw1AcWZrEbv2kr01mTdmcw65Kd6BN8GpwPcmMYNlYQvUCFsOmoA9Hif292fUY1l1s0aYV
 yBFwaZNbkcniXY80X0jIEmmVaJci/PNrp5GRg3W4x7DXFsUKi2yUCXk5Y7YCDce2cJhqA+mQ
 +nqDEvjoLvoJFUaCDIvC+BBP9DgjrJ1s/rYASYitSsnkoNmArt2umAJ8VOY+7Q2SsVflzuXK
 nmjnHkXRuh8srxyzck/a9EombaSvfRpV2K0nmB8qdXNxKWtWT0N/7KbOlPkqkZKBAZSgTXBE
 Lqhmi7SgUDc4F8nEwR3RnjZRsel8flyQoIr5qp2KWJ4buK9c5OijYRhvN8jFpw/s7z7mM9N3
 PnHQqyOcIK1j6lqMQjC/kmRKpN+0TraMz8lX8TI9dNty/XFuVt9Y9Yv1vfSFHZEYqWQfRFAY
 SIA/ovBb7CRBo8Sd4nbLk7z+7Q/tO1Zy/XS+UGpwgBtQyf0WTC2WDSK/gmTwFhWva4+19KGu
 qW4TeDaiKtaki/NrHwCH3aOWx0xrxj4Vr2qVEO9Qksk+4RZt2QLX9PClmDDZR/KgnAGIVaHc
 w6Onn02ka7+V9c8DcJjQpD6IysI0r4U0LCUMddtwqaDk/0LR8M3+LhQ70+kWRCAY0QCZa5pC
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <1a46720c-ac40-c874-d2ca-89819f38733b@hauke-m.de>
Date: Sun, 19 May 2019 23:45:54 +0200
MIME-Version: 1.0
In-Reply-To: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_144603_398102_D4BDD2CE 
X-CRM114-Status: GOOD (  36.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH v5] kernel: lantiq: add support for SMP
 IRQ routing
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: pakahmar@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Petr,

Thank you for the patch.

On 5/17/19 5:44 AM, Petr Cvek wrote:
> Some lantiq SoCs have multiple VPE support but no support for the IRQ
> routing, so only the first VPE is receiving interrupts. This patch adds
> support for rerouting interrupts to the other VPE. Basically it expands
> the current ICU driver for the second controller, adds new address
> ranges to the devicetree and fixes the interrupt masking on the second
> core.
> Some reg access locking was added too.
> 
> The mode of the operation is that userdefined IRQ affinity CPU mask is
> either cycled between VPEs in every IRQ enable call
> (AUTO_AFFINITY_ROTATION), or only the first VPE from affinity CPU mask
> is used (AUTO_AFFINITY_ROTATION not defined).
> 
> Tested on TD-W9980B device (both VPEs used as linux CPUs).
> 
> Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>

It would be nice if you could split this up into multiple patches and
also send to the Linux mips mailling list to get this into mainline
Linux kernel. We can get it then in paralle into OpenWrt and upstream Linux.

> ---
>  .../0901-add-icu-smp-support.patch            | 436 ++++++++++++++++++
>  1 file changed, 436 insertions(+)
>  create mode 100644
> target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
> 
> diff --git
> a/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
> b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
> new file mode 100644
> index 0000000000..eaefdf27a3
> --- /dev/null
> +++ b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
> @@ -0,0 +1,436 @@
> +--- a/arch/mips/lantiq/irq.c	2019-03-10 20:44:58.755134326 +0100
> ++++ b/arch/mips/lantiq/irq.c	2019-05-17 05:13:50.302149058 +0200
> +@@ -22,14 +22,21 @@
> + #include <lantiq_soc.h>
> + #include <irq.h>
> + ++/*
> ++ * If defined, every IRQ enable call will switch the interrupt to
> ++ * the other VPE. You can limit used VPEs from the userspace.
> ++ *
> ++ * If not defined, only the first configured VPE from the userspace
> ++ * will be used.
> ++ */
> ++#define AUTO_AFFINITY_ROTATION
> ++
> + /* register definitions - internal irqs */
> +-#define LTQ_ICU_IM0_ISR		0x0000
> +-#define LTQ_ICU_IM0_IER		0x0008
> +-#define LTQ_ICU_IM0_IOSR	0x0010
> +-#define LTQ_ICU_IM0_IRSR	0x0018
> +-#define LTQ_ICU_IM0_IMR		0x0020
> +-#define LTQ_ICU_IM1_ISR		0x0028
> +-#define LTQ_ICU_OFFSET		(LTQ_ICU_IM1_ISR - LTQ_ICU_IM0_ISR)
> ++#define LTQ_ICU_ISR		0x0000
> ++#define LTQ_ICU_IER		0x0008
> ++#define LTQ_ICU_IOSR		0x0010
> ++#define LTQ_ICU_IRSR		0x0018
> ++#define LTQ_ICU_IMR		0x0020
> + + /* register definitions - external irqs */
> + #define LTQ_EIU_EXIN_C		0x0000
> +@@ -49,24 +56,27 @@
> +  */
> + #define LTQ_ICU_EBU_IRQ		22
> + +-#define ltq_icu_w32(m, x, y)	ltq_w32((x), ltq_icu_membase[m] + (y))

This line looks strange.
It looks like your mail client broke the patch, I would suggest to use
"git send-email" to send patches to mailing lists.

> +-#define ltq_icu_r32(m, x)	ltq_r32(ltq_icu_membase[m] + (x))
> ++#define ltq_icu_w32(vpe, m, x, y)	\
> ++	ltq_w32((x), ltq_icu_membase[vpe] + m*0x28 + (y))
> ++
> ++#define ltq_icu_r32(vpe, m, x)		\
> ++	ltq_r32(ltq_icu_membase[vpe] + m*0x28 + (x))
> + + #define ltq_eiu_w32(x, y)	ltq_w32((x), ltq_eiu_membase + (y))
> + #define ltq_eiu_r32(x)		ltq_r32(ltq_eiu_membase + (x))
> + +-/* our 2 ipi interrupts for VSMP */
> +-#define MIPS_CPU_IPI_RESCHED_IRQ	0
> +-#define MIPS_CPU_IPI_CALL_IRQ		1
> +-
> + /* we have a cascade of 8 irqs */
> + #define MIPS_CPU_IRQ_CASCADE		8
> + ++#define MAX_VPES 2
> ++
> + static int exin_avail;
> + static u32 ltq_eiu_irq[MAX_EIU];
> +-static void __iomem *ltq_icu_membase[MAX_IM];
> ++static void __iomem *ltq_icu_membase[MAX_VPES];
> + static void __iomem *ltq_eiu_membase;
> + static struct irq_domain *ltq_domain;
> ++static DEFINE_SPINLOCK(ltq_eiu_lock);
> ++static DEFINE_RAW_SPINLOCK(ltq_icu_lock);
> + static int ltq_perfcount_irq;
> + + int ltq_eiu_get_irq(int exin)
> +@@ -78,50 +88,104 @@
> + + void ltq_disable_irq(struct irq_data *d)
> + {
> +-	u32 ier = LTQ_ICU_IM0_IER;
> +-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
> +-	int im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;

When you want to upstream this I would suggest to split this into
multiple patches. One should only change the int to unsigned long for
example to make the review easier.

> ++	unsigned long im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned int vpe;
> ++	unsigned long flags;
> + + 	offset %= INT_NUM_IM_OFFSET;
> +-	ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
> ++
> ++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
> ++	for_each_present_cpu(vpe) {
> ++		ltq_icu_w32(vpe, im,
> ++			    ltq_icu_r32(vpe, im, LTQ_ICU_IER) & ~BIT(offset),
> ++			    LTQ_ICU_IER);
> ++	}
> ++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
> + }
> + + void ltq_mask_and_ack_irq(struct irq_data *d)
> + {
> +-	u32 ier = LTQ_ICU_IM0_IER;
> +-	u32 isr = LTQ_ICU_IM0_ISR;
> +-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
> +-	int im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
> ++	unsigned long im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned int vpe;
> ++	unsigned long flags;
> + + 	offset %= INT_NUM_IM_OFFSET;
> +-	ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
> +-	ltq_icu_w32(im, BIT(offset), isr);
> ++
> ++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
> ++	for_each_present_cpu(vpe) {
> ++		ltq_icu_w32(vpe, im,
> ++			    ltq_icu_r32(vpe, im, LTQ_ICU_IER) & ~BIT(offset),
> ++			    LTQ_ICU_IER);
> ++		ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
> ++	}
> ++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
> + }
> + EXPORT_SYMBOL(ltq_mask_and_ack_irq);
> + + static void ltq_ack_irq(struct irq_data *d)
> + {
> +-	u32 isr = LTQ_ICU_IM0_ISR;
> +-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
> +-	int im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
> ++	unsigned long im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned int vpe;
> ++	unsigned long flags;
> + + 	offset %= INT_NUM_IM_OFFSET;
> +-	ltq_icu_w32(im, BIT(offset), isr);
> ++
> ++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
> ++	for_each_present_cpu(vpe) {
> ++		ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
> ++	}
> ++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
> + }
> + + void ltq_enable_irq(struct irq_data *d)
> + {
> +-	u32 ier = LTQ_ICU_IM0_IER;
> +-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
> +-	int im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
> ++	unsigned long im = offset / INT_NUM_IM_OFFSET;
> ++	unsigned int vpe;
> ++	unsigned long flags;
> + + 	offset %= INT_NUM_IM_OFFSET;
> +-	ltq_icu_w32(im, ltq_icu_r32(im, ier) | BIT(offset), ier);
> ++
> ++#if defined(AUTO_AFFINITY_ROTATION)

Have you seen such feature in any other upstream IRQ driver?
This automatic assignment of IRQs to VPEs looks a little bit strange to
me, but I am also not an expter on IRQs.

> ++	vpe = cpumask_next(smp_processor_id(),
> ++			   irq_data_get_effective_affinity_mask(d));
> ++
> ++	/*
> ++	 * There is a theoretical race condition if affinity gets changed
> ++	 * meanwhile, but it would only caused a wrong VPE to be used until
> ++	 * the next IRQ enable. Also the SoC has only 2 VPEs which fits
> ++	 * the single u32. You can move spinlock before first mask readout
> ++	 * and add it to ltq_icu_irq_set_affinity.
> ++	 */
> ++
> ++	if (vpe >= nr_cpu_ids)
> ++		vpe = cpumask_first(irq_data_get_effective_affinity_mask(d));
> ++#else
> ++	vpe = cpumask_first(irq_data_get_effective_affinity_mask(d));
> ++#endif
> ++
> ++	/* This shouldn't be even possible, maybe during CPU hotplug spam */
> ++	if (unlikely(vpe >= nr_cpu_ids))
> ++		vpe = smp_processor_id();
> ++
> ++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
> ++
> ++	/* bugfix for fake interrupts? from UGW 3.x kernel */
> ++	ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);

It could be that some (broken) bootloader does not deactivate all the
IRQs when the control is given to Linux. Do you need this change,
otherwise I would just deactivate all IRQs in the probe function.

> ++
> ++	ltq_icu_w32(vpe, im, ltq_icu_r32(vpe, im, LTQ_ICU_IER) | BIT(offset),
> ++		    LTQ_ICU_IER);
> ++
> ++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
> + }
> + + static int ltq_eiu_settype(struct irq_data *d, unsigned int type)
> + {
> + 	int i;
> ++	unsigned long flags;
> + + 	for (i = 0; i < exin_avail; i++) {
> + 		if (d->hwirq == ltq_eiu_irq[i]) {
> +@@ -158,8 +222,12 @@
> + 			if (edge)
> + 				irq_set_handler(d->hwirq, handle_edge_irq);
> + +-			ltq_eiu_w32(ltq_eiu_r32(LTQ_EIU_EXIN_C) |
> +-				(val << (i * 4)), LTQ_EIU_EXIN_C);
> ++			// v3.10 kernel has this atomic for SMP
> ++			spin_lock_irqsave(&ltq_eiu_lock, flags);
> ++			ltq_eiu_w32((ltq_eiu_r32(LTQ_EIU_EXIN_C) &
> ++				    (~(7 << (i * 4)))) | (val << (i * 4)),
> ++				    LTQ_EIU_EXIN_C);
> ++			spin_unlock_irqrestore(&ltq_eiu_lock, flags);
> + 		}
> + 	}
> + +@@ -203,6 +271,21 @@
> + 	}
> + }
> + ++#if defined(CONFIG_SMP)
> ++static int ltq_icu_irq_set_affinity(struct irq_data *d,
> ++				    const struct cpumask *cpumask, bool force)
> ++{
> ++	struct cpumask tmask;
> ++
> ++	if (!cpumask_and(&tmask, cpumask, cpu_online_mask))
> ++		return -EINVAL;
> ++
> ++	irq_data_update_effective_affinity(d, &tmask);
> ++
> ++	return IRQ_SET_MASK_OK;
> ++}
> ++#endif
> ++
> + static struct irq_chip ltq_irq_type = {
> + 	.name = "icu",
> + 	.irq_enable = ltq_enable_irq,
> +@@ -211,6 +294,9 @@
> + 	.irq_ack = ltq_ack_irq,
> + 	.irq_mask = ltq_disable_irq,
> + 	.irq_mask_ack = ltq_mask_and_ack_irq,
> ++#if defined(CONFIG_SMP)
> ++	.irq_set_affinity = ltq_icu_irq_set_affinity,
> ++#endif
> + };
> + + static struct irq_chip ltq_eiu_type = {
> +@@ -224,15 +310,19 @@
> + 	.irq_mask = ltq_disable_irq,
> + 	.irq_mask_ack = ltq_mask_and_ack_irq,
> + 	.irq_set_type = ltq_eiu_settype,
> ++#if defined(CONFIG_SMP)
> ++	.irq_set_affinity = ltq_icu_irq_set_affinity,
> ++#endif
> + };
> + + static void ltq_hw_irq_handler(struct irq_desc *desc)
> + {
> +-	int module = irq_desc_get_irq(desc) - 2;
> ++	unsigned int module = irq_desc_get_irq(desc) - 2;
> + 	u32 irq;
> +-	int hwirq;
> ++	irq_hw_number_t hwirq;
> ++	unsigned int vpe = smp_processor_id();
> + +-	irq = ltq_icu_r32(module, LTQ_ICU_IM0_IOSR);
> ++	irq = ltq_icu_r32(vpe, module, LTQ_ICU_IOSR);
> + 	if (irq == 0)
> + 		return;
> + +@@ -253,6 +343,7 @@
> + static int icu_map(struct irq_domain *d, unsigned int irq,
> irq_hw_number_t hw)
> + {
> + 	struct irq_chip *chip = &ltq_irq_type;
> ++	struct irq_data *data;
> + 	int i;
> + + 	if (hw < MIPS_CPU_IRQ_CASCADE)
> +@@ -262,6 +353,10 @@
> + 		if (hw == ltq_eiu_irq[i])
> + 			chip = &ltq_eiu_type;
> + ++	data = irq_get_irq_data(irq);
> ++
> ++	irq_data_update_effective_affinity(data, cpumask_of(0));
> ++
> + 	irq_set_chip_and_handler(irq, chip, handle_level_irq);
> + + 	return 0;
> +@@ -276,28 +371,40 @@
> + {
> + 	struct device_node *eiu_node;
> + 	struct resource res;
> +-	int i, ret;
> ++	int i, ret, vpe;
> + +-	for (i = 0; i < MAX_IM; i++) {
> +-		if (of_address_to_resource(node, i, &res))
> +-			panic("Failed to get icu memory range");
> ++	/* TODO someone pls update+test devicetr5ee for danube (not SMP,
> ++	 * foreach bellow should run once), ar9, amazon, falcon (no info).
> ++	 * Addresses are known only for vr9, tested only in generic SMP
> ++	 * ( = no VPE reserved for firmware).
> ++	 */
> ++	for_each_possible_cpu(vpe) {
> ++		if (of_address_to_resource(node, vpe, &res))
> ++			panic("Failed to get icu%i memory range", vpe);
> + + 		if (!request_mem_region(res.start, resource_size(&res),
> + 					res.name))
> +-			pr_err("Failed to request icu memory");
> ++			pr_err("Failed to request icu%i memory\n", vpe);
> + +-		ltq_icu_membase[i] = ioremap_nocache(res.start,
> ++		ltq_icu_membase[vpe] = ioremap_nocache(res.start,
> + 					resource_size(&res));
> +-		if (!ltq_icu_membase[i])
> +-			panic("Failed to remap icu memory");
> ++
> ++		if (!ltq_icu_membase[vpe])
> ++			panic("Failed to remap icu%i memory", vpe);
> + 	}
> + + 	/* turn off all irqs by default */
> +-	for (i = 0; i < MAX_IM; i++) {
> +-		/* make sure all irqs are turned off by default */
> +-		ltq_icu_w32(i, 0, LTQ_ICU_IM0_IER);
> +-		/* clear all possibly pending interrupts */
> +-		ltq_icu_w32(i, ~0, LTQ_ICU_IM0_ISR);
> ++	for_each_possible_cpu(vpe) {
> ++		for (i = 0; i < MAX_IM; i++) {
> ++			/* make sure all irqs are turned off by default */
> ++			ltq_icu_w32(vpe, i, 0, LTQ_ICU_IER);
> ++
> ++			/* clear all possibly pending interrupts */
> ++			ltq_icu_w32(vpe, i, ~0, LTQ_ICU_ISR);
> ++			ltq_icu_w32(vpe, i, ~0, LTQ_ICU_IMR);
> ++
> ++			ltq_icu_w32(vpe, i, 0, LTQ_ICU_IRSR);
> ++		}
> + 	}
> + + 	mips_cpu_irq_init();
> +@@ -358,7 +465,7 @@
> + 	return MIPS_CPU_TIMER_IRQ;
> + }
> + +-static struct of_device_id __initdata of_irq_ids[] = {
> ++static const struct of_device_id of_irq_ids[] __initconst = {
> + 	{ .compatible = "lantiq,icu", .data = icu_of_init },
> + 	{},
> + };
> +--- a/arch/mips/kernel/smp-mt.c	2019-03-05 17:58:03.000000000 +0100
> ++++ b/arch/mips/kernel/smp-mt.c	2019-05-16 03:09:02.268859090 +0200
> +@@ -125,6 +125,8 @@
> + 					 STATUSF_IP6 | STATUSF_IP7);
> + 	else
> + 		change_c0_status(ST0_IM, STATUSF_IP0 | STATUSF_IP1 |
> ++					 STATUSF_IP2 | STATUSF_IP3 |
> ++					 STATUSF_IP4 | STATUSF_IP5 |
> + 					 STATUSF_IP6 | STATUSF_IP7);
> + }

This change should go into a seperate patch which also describes why you
need this.

> + +--- a/arch/mips/boot/dts/vr9.dtsi	2019-03-10 19:03:35.747182390 +0100
> ++++ b/arch/mips/boot/dts/vr9.dtsi	2019-05-17 05:01:36.789319230 +0200
> +@@ -38,11 +38,9 @@
> + 			#interrupt-cells = <1>;
> + 			interrupt-controller;
> + 			compatible = "lantiq,icu";
> +-			reg = <0x80200 0x28
> +-				0x80228 0x28
> +-				0x80250 0x28
> +-				0x80278 0x28
> +-				0x802a0 0x28>;
> ++
> ++			reg = <0x80200 0xc8	/* icu0 */
> ++				0x80300 0xc8>;	/* icu1 */
> + 		};
> + + 		watchdog@803f0 {
> +--- a/arch/mips/boot/dts/danube.dtsi	2019-03-10 19:03:35.746182403 +0100
> ++++ b/arch/mips/boot/dts/danube.dtsi	2019-05-17 04:55:28.777920006 +0200
> +@@ -34,11 +34,12 @@
> + 			#interrupt-cells = <1>;
> + 			interrupt-controller;
> + 			compatible = "lantiq,icu";
> +-			reg = <0x80200 0x28
> +-				0x80228 0x28
> +-				0x80250 0x28
> +-				0x80278 0x28
> +-				0x802a0 0x28>;
> ++
> ++			/*
> ++			 * There is a second ICU, but the SoC is not SMP
> ++			 * capable.
> ++			 */
> ++			reg = <0x80200 0xc8>;
> + 		};
> + + 		watchdog@803f0 {
> +--- a/arch/mips/boot/dts/ar9.dtsi	2019-03-10 19:03:35.746182403 +0100
> ++++ b/arch/mips/boot/dts/ar9.dtsi	2019-05-17 04:58:17.080815930 +0200
> +@@ -34,11 +34,8 @@
> + 			#interrupt-cells = <1>;
> + 			interrupt-controller;
> + 			compatible = "lantiq,icu";
> +-			reg = <0x80200 0x28
> +-				0x80228 0x28
> +-				0x80250 0x28
> +-				0x80278 0x28
> +-				0x802a0 0x28>;
> ++			reg = <0x80200 0xc8>;	/* ICU0 */
> ++			/* TODO AR9 should have ICU1 (like VR9) too */

Yes this is similar to VR9.

> + 		};
> + + 		watchdog@803f0 {
> +--- a/arch/mips/boot/dts/amazonse.dtsi	2019-03-10 19:03:35.746182403 +0100
> ++++ b/arch/mips/boot/dts/amazonse.dtsi	2019-05-17 04:58:56.343325081 +0200
> +@@ -34,11 +34,7 @@
> + 			#interrupt-cells = <1>;
> + 			interrupt-controller;
> + 			compatible = "lantiq,icu";
> +-			reg = <0x80200 0x28
> +-				0x80228 0x28
> +-				0x80250 0x28
> +-				0x80278 0x28
> +-				0x802a0 0x28>;
> ++			reg = <0x80200 0xc8>;	/* only 1 ICU */
> + 		};
> + + 		watchdog@803f0 {
> +--- a/arch/mips/boot/dts/falcon.dtsi	2019-03-10 19:03:35.747182390 +0100
> ++++ b/arch/mips/boot/dts/falcon.dtsi	2019-05-17 05:00:42.536997478 +0200
> +@@ -293,11 +293,8 @@
> + 			#interrupt-cells = <1>;
> + 			interrupt-controller;
> + 			compatible = "lantiq,icu";
> +-			reg = <0x80200 0x28
> +-				0x80228 0x28
> +-				0x80250 0x28
> +-				0x80278 0x28
> +-				0x802a0 0x28>;
> ++			reg = <0x80200 0xc8>;
> ++			/* TODO I don't know if there is another ICU */

The 2. ICU is at 0x80300, size is 0xe0 for both ICUs.

> + 		};
> + + 		watchdog@803F0 {
> 

Hauke

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
