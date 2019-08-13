Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F728B528
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 12:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f1JdbZjNjHGnNJQkLJg3T5nJq67GQBss4rK9Vmpf4dU=; b=TkYsx7sh2SO3sU94iNIbI+FFrW
	Q91ZzSJcEdud7vr/p6pXsnApvAw4Yo0Qsju9tZDvt7LIXpMeoTS4qR7Gx9sA8EWf6PH2nZRHIQjSb
	h+yJRMX/Kc0pIU172pZnRiUFFNFJviJ4GrHfTyAH4X5nfAPzbhrTqR2+rkI45JXtBES2aUDX+6Hbi
	mTIgXO7Pu7EGvbruQJiqdwtKvlZPrcQY0Dm1QFfhRBFiWKa9L8lfVfAmI8wGjR3uXY6mwes0rra9w
	D+H5wDicj4I45Kuwca7XWLob9UJOsm78LWzHdEP8oCnzi6Qt4ij29PCaHChY00DDCO7EzZiK6JmJ1
	FOQ+w64w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTnk-0002d7-DK; Tue, 13 Aug 2019 10:13:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTnQ-0002cI-9C
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 10:12:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 153194517;
 Tue, 13 Aug 2019 12:12:49 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 34b4fb44;
 Tue, 13 Aug 2019 12:12:39 +0200 (CEST)
Date: Tue, 13 Aug 2019 12:12:39 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Mathias Kresin <dev@kresin.me>
Message-ID: <20190813101239.GB23313@meh.true.cz>
References: <20190810095809.GA745@meh.true.cz>
 <dbd7bd2a-fcf4-0754-ff02-94366cc0854f@kresin.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dbd7bd2a-fcf4-0754-ff02-94366cc0854f@kresin.me>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_031252_478523_779DFDFF 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Review and cleanup of base packages
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Mathias Kresin <dev@kresin.me> [2019-08-11 11:16:12]:

Hi,

> Personally I prefer to have some debug tools I use regularly, like tcpdump,
> iftop and iperf*, in the base packages. During development I don't include
> the feeds.

I don't include the feeds either as simple symlink just works.

> Rather I would like to see the tool "io", which allows memory/register
> manipulation, included in the base packages. Quite handy tool during driver
> debugging/development.

Indeed, I use it as well:

 ln -s $PWD/../packages.git/utils/io package/utils/io
 echo CONFIG_PACKAGE_io=y >> .config

So I don't think, that the package should be included in the base tree, just
because we would like to use it.

> >   network/config/ltq-vdsl-app
> 
> At least this one is referenced in target/linux/lantiq/xrx200/target.mk
> 
> >   utils/fritz-tools
> 
> The fritz-tools "meta" package provides the fritz-tffs package, which is
> included at least by target/linux/lantiq/Makefile.

Thanks for reviewing that list, those packages simply slipped through my
grepping session.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
