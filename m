Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABC6752A8
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 17:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4R8mHIn1ilF6X4FFivxFR7O7EyiPnTrcXhxJtaKIq0k=; b=H3zTgj1NB63mIK
	OjcuNffDnWqP6Zp1nmf3mPC1lxkeDUZmqoLMpciTkqzV0XIa55ByzPbQ0ehNgmkYcL0wwWDlHD3if
	UmHoPPZV6nFpSUb0gj9ufJPNJf1U1HjaAEhCuATghr+cBd/a+Wy4NL5/fhpl4/d0f+UvFeerKYZWV
	au1udNy7Se3WbByabzBJk2C8bhny/wzBFatXtL4kpH+HGgt4edHWOatB6ZXY2Rx/px4ne0dmKGKLr
	8i4grfgF18BNe3IbxOpKIrfW19HCaF6IfOvraBeVz09BKkY+JBMvDJASVUwGrjLDW1tvSTi4Yjmnh
	R5Gk2Q/GgMVbLmgScdzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfk7-0002on-5Y; Thu, 25 Jul 2019 15:33:19 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfjw-0002nx-2R
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 15:33:09 +0000
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D1F9C240009;
 Thu, 25 Jul 2019 15:32:56 +0000 (UTC)
Date: Thu, 25 Jul 2019 17:32:56 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20190725173256.316a4adf@windsurf>
In-Reply-To: <20190725150750.2e70a106@windsurf>
References: <20190311162028.13172-1-thomas.petazzoni@bootlin.com>
 <20190311162028.13172-2-thomas.petazzoni@bootlin.com>
 <500817b3-9bc8-5c37-9ae0-ba787324c694@hauke-m.de>
 <20190325182009.67d6ebb5@windsurf>
 <20190725150750.2e70a106@windsurf>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_083308_264317_5E40CF37 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 01/11] tools/libaio: new package
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Hauke,

On Thu, 25 Jul 2019 15:07:50 +0200
Thomas Petazzoni <thomas.petazzoni@bootlin.com> wrote:

> > Indeed, what CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED=y really needs is
> > cryptsetup, the rest are mere build dependencies to build cryptsetup.  
> 
> Do you have some feedback on this particular question ? Ideally, I'd
> like to have just:
> 
> tools-$(CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED) += cryptsetup
> 
> in tools/Makefile, but I don't know in tools/cryptsetup/Makefile how to
> express the dependencies it has on other tools. I briefly looked at
> other tools/*/Makefile, and couldn't spot any that has a dependency on
> something else.

Stupid me, the dependencies are obviously described in tools/Makefile,
my patches even take that into account. So all clear on this, I'll take
into account your comment in v2.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
