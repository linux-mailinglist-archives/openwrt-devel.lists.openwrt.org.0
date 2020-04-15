Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9BB1AB395
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 00:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyFsU91MKT7q2AU1OTvTbRPwPkN0VyK1isa0ymMvCbk=; b=O0YM7GxiEocH+p
	4Vz1QIzdg0Z0Ct9tB1O5+7oF/dR0ZOcsaZmZ+kiS753GoAJ2P/yJC4wMzRRe/ag6kg5bZoy+TjHrC
	l+VhOI4v3ne+VwVTE5I7IrYWdOMGOjvYONSjT/T4Xp1FyWWRPAStMHZ+fWLy2lwrgny2ZuKRAwUWV
	0f+/WJLXrU018uiifyWoCfmNfb4295AqXMWN1LxO5nSlG3XiMU1WrX9fvO5EwRQO5+2PqBfR4rskM
	pmDeLYBLWAeeA7v3wwhM4dYArsABZJ2aks1zs0VAOqwouQBMmO+wdMYvF4tBE6vUi1Njg41V+U7LA
	cx4ZOkFX9GwAwlIHuKUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOq7I-00059M-8a; Wed, 15 Apr 2020 22:02:44 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOq7B-0004sD-HR
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 22:02:39 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jOq74-0006aW-Ui; Thu, 16 Apr 2020 00:02:32 +0200
Date: Wed, 15 Apr 2020 23:02:18 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200415220218.GG14478@makrotopia.org>
References: <5a867e8b86c262fcfd29df991becb493731e86c7.camel@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a867e8b86c262fcfd29df991becb493731e86c7.camel@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_150237_583436_89ECC0E2 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [RFC] x86: use multiple profiles
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Apr 14, 2020 at 03:08:09PM -1000, Paul Spooren wrote:
> Hi all,
> 
> the x86 been recently reworked (cb007a7bf6) and now it is easily possible to
> define multiple profiles. Currently only a `generic` profile is offered which
> builds mbr and efi grub images with a standard selection of packages (common
> device drivers).
> 
> I'd suggest to have multiple profiles for common x86 devices, including the
> correct drivers. An example is the APU2 board, which requires additional kmods
> to shine[0].
> 
> A first split could be to have mbr and efi images separated and the APU2 board.

+1
also for splitting EFI and MBR generic images, because EFI image
should have some different packages (efibootmgr, kmod-fs-efivars, ...)
installed which are useless when booting from MBR.


> 
> Please share your opinions.
> 
> Best,
> Paul
> 
> [0]: https://openwrt.org/toh/pcengines/apu2#kernel_modules 
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
