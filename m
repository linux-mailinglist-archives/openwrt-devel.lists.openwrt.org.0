Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3E64DCE3
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 23:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=La3SKxpuHAMuTZ3MKf9LD139Wbp3aYAuggpspGTBQpU=; b=SFaajyM9/VTZ7Y
	XP1ZNuAe9760tCgBLVgrYFmPwdaGbIGWqk5RnjQg6Gx1EtA7jXVy+Uhz+evRVCItvQMBA/s7d3Ky2
	/Ap6l1VA5INkFnSSyIrVqdBVjzCFjFEjDH6I/FBAMMZysMXM59LpztFwjA3kVCc1TF842G/8rKjfM
	/W2rgdKMshkbI9N7xZTnLR3GNKAWibGFdIZbRWfSVTK9YNv1JoVzqEFG37Su09n3FRU25VN+DWDx6
	J+OrNmB7zDuopNmUdtKQRCpody3Y80NbV+1jPQzJ16UMFcgZHkzbIwHPlRDQ1BH2FPC9QSAa1vnV5
	nOD57KYwq2OVl9noIfeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4n7-0004yD-Tc; Thu, 20 Jun 2019 21:40:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4mE-0003Qq-VU
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 21:39:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so4544240wru.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 14:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Xk4hez7/mS6XBmLs1KNEHdoO4X2B42iD/8NGVo28lA=;
 b=gGTfeNjDIzNM9k3EwYZY6jKw4puyD1fr5zWze0YHHgUca/2hrB/y6elMyC92KH4TvW
 NTGcGnw9BFUn9QTmeR7DHiRgjQtDI2hudJdUqupxZkXacxHxVRpOpmuu/RCun8zHKqYC
 BopsCbCb/09hHSNpJswoPlIkstAo8KnP5YVSCRZky6VQfqowRCvezoNOKoYVNL0htj1n
 RaQTeRMro+lc1lpxwtCR0IDT1f0ht7OwVPaARe6EfST1JXTU28qiWvMrpYbZ0jBgsWa8
 g8GST5dWsxAD9678nLdun7n/R/g8UKi4I4egm2w0EcrZg3dcn6/wDkCe9XTTLtC1xTm1
 H0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Xk4hez7/mS6XBmLs1KNEHdoO4X2B42iD/8NGVo28lA=;
 b=hKsndHeE3czio6hp4gMnAogeKL7MN7AmkXTi5/ff7QEBjtBXi6f+SRVlzQG6CitC5K
 A2ynAqk6a6bHiX6AW6DZ/v7fMkLUIcBs6XEVyrtr+SpHVWQb7GVcEfp7dVYIm82p54rT
 qdsvH2ZU5bE6fC+0XL/IRrdnjUV8aUQfrl9/UZKwP5RiDVOo2itHEI9lVp8Juqt0bXRX
 JGbaqTTEfQvoQl5uIzKT1DNxzds/TYYiROcxxSpUOFtHMVlGRcgAaLC0T3yCdT2mpdEB
 B3KGY8CzFOJSzkUAgmw4VqC6rpkvPp/OKEZfe2T43RrWw5qW4DjFsNS5Rc9+v2s9EXSQ
 6SkQ==
X-Gm-Message-State: APjAAAU/1cqdx1crbRrxhaMQH0YdI7gU8XiQYTG59cIAH9nmSXo4P8Qj
 IW9SdJOEigwttZXQA3+ZgbAhFdjI
X-Google-Smtp-Source: APXvYqzw82nOMGtzkv5+JVz+jTNPz4eel+zr0vy9Eb+Uy7VeVKoHeeMqLq95b5s/XHaRq6eBkY2vYQ==
X-Received: by 2002:a5d:5491:: with SMTP id h17mr366714wrv.46.1561066763893;
 Thu, 20 Jun 2019 14:39:23 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-ecaa-d74f-d492-3738.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:ecaa:d74f:d492:3738])
 by smtp.gmail.com with ESMTPSA id j4sm575426wrx.57.2019.06.20.14.39.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:39:23 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Thu, 20 Jun 2019 23:39:32 +0200
Message-Id: <cover.1561065843.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143927_100251_D660F2D1 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 0/7] MIPS: lantiq: irq: Various fixes,
 add SMP support
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
Cc: pakahmar@hotmail.com, openwrt-devel@lists.openwrt.org,
 Petr Cvek <petrcvekcz@gmail.com>, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Petr Cvek <petrcvekcz@gmail.com>

Hi,

While hacking with my modem in openwrt I've found in the lantiq vrx268 SoC
there is only a support for the processes SMP and not for interrupt
routing. After some looking into vendors released source codes (probably
intel UGW) and by observing SoC's memory map I've found out there is
a second interrupt controller (ICU) for the second VPE. The last patch of
this series adds a support for it. The code is different from intel UGW's
set affinity function, where the interrupt line gets enabled (switched)
to the second ICU. Instead only the cpumask gets changed in my set affinity.
The change will be written into the hardware after the next irq enable call.
This was changed because of stability reasons in the high irq load of
the SoC.

The first part of the series are more or less cosmetic changes of long
names, different types and few fixed warnings from checkpatch. There is
a fix in part 5, where I've found the missing bitfield clear before ORing
with a new value.

The SMP in part 7 changes devicetree definition for a register regions
of the ICU. Previously, there was a region for a single IM (a mask/unmask/
enable/... set for 32 interrupts). Now it is the whole ICU. It match more
the hardware layout. There is no compatibility issue in vanilla, only
openwrt was affected by these devicetrees.

Also in the UGW's ltq_enable_irq(), there was a status bit reset before
the actual IRQ line enable. It was marked as "Bug fix for fake interrupt".
The code seems to work without it (vanilla and new SMP), but I've made
an assert if this bit is set before the actual enable. The assert reported
these IRQ sources:

	22:00004000     spi_rx  (only when SPI is accessed)
	63:00800000     mei_cpe (permanent 1s)
	112:00000100    asc_tx

But the code seems to run anyway I didn't include the status bit reset part.

The SMP affinity update is done every IRQ enable, where it extract the first
valid VPE from affinity cpumask. This is standard in the kernel.

The code was tested in nosmp configuration on TPLink W9980B in openwrt tree
(patched kernel v4.14). The lantiq devices other than vrx268 were not
tested.

Discussion on openwrt related parts for lantiq ICU SMP is here (devicetrees,
things not in the vanilla kernel, RFC versions of the patch):
https://patchwork.ozlabs.org/patch/1100832/

Changes since v1:
 * Added a define for IM size
 * Changed ltq_icu_membase array size to NR_CPUS so for_each_possible_cpu()
   will not overflow
 * Removed affinity auto rotation (can be add later from v1 if required)
 * Commit messages wordings

Petr Cvek (7):
  MIPS: lantiq: Move macro directly to iomem function
  MIPS: lantiq: Change variables to the same type as the source
  MIPS: lantiq: Fix attributes of of_device_id structure
  MIPS: lantiq: Remove unused macros
  MIPS: lantiq: Fix bitfield masking
  MIPS: lantiq: Shorten register names, remove unused macros
  MIPS: lantiq: Add SMP support for lantiq interrupt controller

 arch/mips/lantiq/irq.c | 177 +++++++++++++++++++++++++++++------------
 1 file changed, 126 insertions(+), 51 deletions(-)

-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
