Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE1818A3D
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 15:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lgrgp21kJHGVRSeFgG2mR7R3PCvPNB3mfRLnZgoe2UY=; b=Svdx26NlvEs2cpurgFp88J6h0r
	dfzY/P3willW+pt8Q/CiywEeEvEdxLm9wMaQQCwsCEIKDw1Zm3xPsBUnzeX98lf9/+Drr2za3ISdc
	jk7VBKUpGlL+oVZoSD2gY6L7OiLB5XNLPzdFOdsnn+JewJPFIAbnQYk7akhrsUz5Rw/bc5VjI8h4i
	s7uxS62SRC2C06twXvzZHwjWOrG+PTgDCwrPHPHFgErpCyUFyoG1XB8ksU1/tOeIyyX53Oww5XjEP
	59Y3qlYFrXXnhXBtfA0Vtyz6vWQ3Ga7/YnzwYKv2T6h0mjlW/8SB+o7R6EFOvr7MpYX7V4HYSMwwS
	bjyYbCKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiie-0006JY-5l; Thu, 09 May 2019 13:04:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiiV-0006J9-R4
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 13:04:11 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9506B35A5;
 Thu,  9 May 2019 15:04:05 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c2d8bb82;
 Thu, 9 May 2019 15:04:04 +0200 (CEST)
Date: Thu, 9 May 2019 15:04:04 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20190509130404.GS81826@meh.true.cz>
References: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
 <20190509124138.GR81826@meh.true.cz>
 <014f01d50666$04fc92b0$0ef5b810$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <014f01d50666$04fc92b0$0ef5b810$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_060408_022903_79C11AA4 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add missing read-only properties
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2019-05-09 14:52:11]:

> > as ath79 has `DEFAULT_PACKAGES += uboot-envtools` and just few devices set
> > `DEFAULT_PACKAGES -= uboot-envtools` I would assume, that it's expected to
> > be
> > writeable.
> 
> Okay. I also found some devices where u-boot-env IS read-only, e.g.
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts#L131
> 
> What would you suggest:
>
> 1. Remove read-only from the remaining ones
> 2. Set it based on how DEFAULT_PACKAGES is set

even if you remove uboot-envtools from the base image, due to the flash space
constraints for example, the user is still able to post-install this package,
so we can't probably base our decision on the content of DEFAULT_PACKAGES
variable.

> 3. Don't change. Leave it as it was set by the submitters

Probably this option unless we've strong reason to do otherwise.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
