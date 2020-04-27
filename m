Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B821BAD01
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 20:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZEKMyzdGb5uKbwIHh5yW6RJRE3jxphL0fJVJmRW5KI=; b=GpSfwEnTAzRadW
	T8+Ice8x/+uU/UsB+SI/rQF87LM/XMx+m9GyNqiXtRps3CBdziBvRhTZq3ZQvW39cfmwl06eFW4fN
	pLqzYlKonZQdJjRsImoOk5l2FzyYj5bUrrHAPS2K3KN7jaPcCc3CIFIO5KSkr53TfonNb1mVwZTbc
	kWBf+4Nz6gWgn0X55m74WqP+KZZiMyvBNwfFUvBXCsq9N7ecyBTik67JlBGTaVTKi6Lu4x2Lqumtn
	ckpf+cjul8HAI72HH8huoSW1d0RNnfhKIo6//E788Ae02VLtJIz29mrGwAKFr7ApC7T0ODilhCIgN
	YhtnuER0vy6K5fkGl7qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8gn-0004r8-AP; Mon, 27 Apr 2020 18:41:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8gZ-0004i2-9y
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 18:40:56 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F1D682A0DF3;
 Mon, 27 Apr 2020 19:40:53 +0100 (BST)
Date: Mon, 27 Apr 2020 20:40:51 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <20200427204051.5306ed33@collabora.com>
In-Reply-To: <20200427192417.112a69b4@xps13>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-10-boris.brezillon@collabora.com>
 <20200427192417.112a69b4@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_114055_483127_34FD7AE6 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 9/9] mtd: rawnand: bcm47xx: Move the
 driver to drivers/mtd/nand/raw/
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 27 Apr 2020 19:24:17 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 19 Apr
> 2020 14:51:40 +0200:
> 
> > Now that we have a single we can move it to the directory where all
> > single source file drivers live.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  drivers/mtd/nand/raw/Makefile                            | 1 +
> >  drivers/mtd/nand/raw/{bcm47xxnflash => }/bcm47xxnflash.c | 0
> >  drivers/mtd/nand/raw/bcm47xxnflash/Makefile              | 2 --
> >  3 files changed, 1 insertion(+), 2 deletions(-)
> >  rename drivers/mtd/nand/raw/{bcm47xxnflash => }/bcm47xxnflash.c (100%)
> >  delete mode 100644 drivers/mtd/nand/raw/bcm47xxnflash/Makefile  
> 
> Here are two independent comments:
> 
> 1/ I think calling the file bcm47xxn-nand-controller.c would best fit
> todays policy.

Sure I can do that.

> 
> 2/ I am not sure there is an interest in doing the merge +
> move/rename in separate steps. It's always a pain to follow changes in
> a file with git blame when code get's moved around so I would prefer
> doing this in a single change, what do you think?

Great minds think alike: I was planning to merge those 2 patches in v2
;-). It's indeed not necessary to do it in 2 steps.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
