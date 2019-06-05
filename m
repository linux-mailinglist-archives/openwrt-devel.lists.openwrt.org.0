Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E5136621
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 22:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CvRCI0CeCziNoM7zFJyMv/XfF2CHvvbPP9dNa0E8QPY=; b=lI8h0kPRsxcjkxntucEWxTVMLv
	h9L10eVWzr4aLgkjXQ54vValUXxkTLYvIB2tJ1ySHT/MKpan7QdFcEwr/9aUyOaoscXeSFpv9EKX5
	JZf0mwRjTVydYQzuYNRAoSv4AWScKWY+fSlGkxzH8EZQOTFs19xBLJzUc13eeUiDM6+4bdo4lkRoT
	N5NeX9ceOp30tK2bRnh/qY0Tv8bsYlzL/POXdykULWvkjF9ufJo/j1JXBhYXGu8GD0Do6MQ38n7PF
	ZPUQe2CgYkyQEu7dn3WBSH6fNhQKN6ZWXwoq90yIQdBzw2gFWjFmixv3yBEawe36CF3Cwcjvd+4dx
	fKRWxpuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcz3-0006xQ-Cz; Wed, 05 Jun 2019 20:58:09 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcyv-0006x4-Ky
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 20:58:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2D5AD4EF3;
 Wed,  5 Jun 2019 22:58:00 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f77950f3;
 Wed, 5 Jun 2019 22:57:58 +0200 (CEST)
Date: Wed, 5 Jun 2019 22:57:58 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190605205758.GP13432@meh.true.cz>
References: <20190605201706.27462-1-lede@allycomm.com>
 <20190605201706.27462-3-lede@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605201706.27462-3-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_135801_831961_EA5FAF06 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] kernel: mtd: spinand: Backport
 GigaDevice "F" from linux/next
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeff Kletsky <lede@allycomm.com> [2019-06-05 13:17:06]:

> Backport upstream support for GigaDevice GD5F1GQ4UFxxG SPI NAND
> 
>  * Add support for GigaDevice GD5F1GQ4UFxxG
>  * Add support for two-byte device IDs
>  * Define macros for page-read ops with three-byte addresses

What devices currently in the tree need (or want) this? I mean, the more
patches, the more work during kernel bumps, so we should avoid it if the
patches are not necessary.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
