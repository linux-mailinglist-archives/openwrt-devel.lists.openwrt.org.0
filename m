Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9298236612
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 22:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AV/uzLG5E3aTJlXJIECDin3b7u5mviZ/4jxfRPZAMcU=; b=QvAHkVHr6QKczbZvk6L6kAnxFb
	00NpEpmRuMkf2NB3zxH12bCrqdkQESNUrdWg2WhiWchhFxULzoy/1nI/ifldqnI1Tl2VMd5T8Zm63
	izN0rbRTzDBdbLuk3niF+LNS8LQNvduRLlOm25riTDi96Y6HTjgLqrxVNaE+Z0zrrrXfBsm6l0bB3
	47owoLnlG5/MQPoeD31H8BbLz5VY24SZ5pcb9H9krhhDcQLely5SZW4jtarqvPqGpkv+aDUHPuO8U
	q3A8zwLEtsO7htc5qy3kTgrqbfbIuwd/fJ1V0ztJaSIK6U5wZTuRSd4KCpidCDeEIIYqmWJ/9MOGT
	CbWljOUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcw5-0005Na-5u; Wed, 05 Jun 2019 20:55:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcvv-0005NC-JO
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 20:54:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A9E874EA8;
 Wed,  5 Jun 2019 22:54:51 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 64a9b269;
 Wed, 5 Jun 2019 22:54:49 +0200 (CEST)
Date: Wed, 5 Jun 2019 22:54:49 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190605205449.GO13432@meh.true.cz>
References: <20190605201706.27462-1-lede@allycomm.com>
 <20190605201706.27462-2-lede@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605201706.27462-2-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_135455_785422_224F44E9 
X-CRM114-Status: UNSURE (   7.32  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] kernel: mtd: spinand:
 backport-4.19: Chip support through 5.1
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

Jeff Kletsky <lede@allycomm.com> [2019-06-05 13:17:05]:

Hi,

I'll put aside, that it's 4.19 (we should still focus on 4.14), can you please
explain in more detail, why we would need all this bacported patches?

>  * macronix: Fix ECC Status Read

I can understand this one.

>  * winbond: Add support for W25N01GV

This one as well, but then you need to remove existing one in the ipq40xx
patches or you're going to introduce build failure.

>  * Add support for GigaDevice GD5F1GQ4UExxG
>  * Add support for all Toshiba Memory products
>  * add support for GigaDevice GD5FxGQ4xA
>  * Add initial support for Toshiba TC58CVG2S0H

What devices currently in the tree need (or want) this? I mean, the more
patches, the more work during kernel bumps, so we should avoid it if the
patches are not necessary.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
