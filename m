Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E148812DF00
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 14:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lDqDLySi5RqJ/ADHEtYuzB4OFua1zzZ+5qE5he7l1T8=; b=QRMUlqdqnyqXqeMO7UPA5RaDqt
	GrtGrtu6+lB5YeK/UzjccKjCw0byaLoG1pBn9c2Qd9cibRc7WTw3ErjUUA3QT3ZSWZvrSMv7XIPa0
	tPsjm5+oWEBs2FFenKV0wdXHqFlbouhOaf1NF5MA7xPCZ4l/4YMDNDF2VfcHuBQirbDJWsGkdfO4G
	/ye0JZpXEeq/fr9pnUI/OIDHnmKBgPId9GdsCW99jgXUg1vpkegmA7qos7a1sLsOhBURrFknNMQAO
	yAQ7aiFk9Yalp+zOhb590AMpGLD3DcKK+5PnbmZY/Ff/+gdMTIJ1mNFAYyrR01Y5JiRVFWXFqRFm3
	BZR3I3YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imdrT-0007Im-7o; Wed, 01 Jan 2020 13:16:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imdrK-0007Hk-TB
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 13:16:25 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3D5C948A4;
 Wed,  1 Jan 2020 14:16:20 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b9538f89;
 Wed, 1 Jan 2020 14:16:09 +0100 (CET)
Date: Wed, 1 Jan 2020 14:16:09 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20200101131609.GN70184@meh.true.cz>
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
 <20191231141559.GP11377@home.paul.comp>
 <3dd75d93-e74f-6831-51f0-d2100fdbc1db@david-bauer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dd75d93-e74f-6831-51f0-d2100fdbc1db@david-bauer.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_051623_090059_948084DF 
X-CRM114-Status: UNSURE (   4.50  )
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
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Paul Fertser <fercerpav@gmail.com>, openwrt-devel@lists.openwrt.org,
 Jo-Philipp Wich <jo@mein.io>, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

David Bauer <mail@david-bauer.net> [2019-12-31 16:20:29]:

Hi,

> release images will not be built for most (if not all), as a full build with LuCI
> will not fit into the flash (even with 4K sector size).

one could still use image builder and generate images which would fit.

OpenWrt offers currently following images:

 - master/snapshot: core images without LuCI
 - releases:        images with LuCI

What about some unification? What about providing same -luci and -core
firmware image variants for both master and release?

For:

 1. Less confusion (different snapshot Vs release image content)
 2. Likely more testing for master LuCI

Against:

 1. Increased storage usage and build time
 2. Additional code supporting those variants, so increased maintenance

> The code is not really an issue, as there's not much code dedicated for 4M
> devices. It's mostly their device-tree, which is maintainable compared to
> the previous ar71xx boardfiles.

Exactly.

> As many people still use these 4M devices (see, for example, the forum)

And finally there is someone interested (Paul) in actually supporting those
devices with patches of very good quality = almost no maintenance effort.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
