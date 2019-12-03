Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F2710FD67
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 13:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=heMHKmELm69/jxImEzGufvMlFukwOH4Zwjxc8sTnXcM=; b=nUzbaePCuR6d1uJLwS2GsvdSDY
	tu0iDjVHwz5WEobpk1rCdxldy1cq5ryffqUgGDUIZ44IRw/MLtvRFXHonuBd6F0EujXaSbBn5C8cc
	bhHdC0kGOnCNJtbyhPFdhlcApbiPMCxUcKVaV6rw2pL+Hy2KU3XtsY+0bk+mwCX2BGgVSKK4exXw5
	DiZeryp9eAWCsBSnk1YI1HNFS3qTgI85N4byXPZwT6alKfehpHX4xHqusQFbSSBgV+tIusdmKKzEZ
	sk/MZA+ieRQbWRjGHSTL+7m8KaCI/KkeUOJQ+aOhJiSLvzLP/JnaT+BupWdKFNFBsqwy96W2ZUtvM
	sp9Ko7wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic70n-0000Sa-1K; Tue, 03 Dec 2019 12:10:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6zv-000737-KU
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 12:09:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 593E83369;
 Tue,  3 Dec 2019 13:09:40 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ef5f59de;
 Tue, 3 Dec 2019 13:09:30 +0100 (CET)
Date: Tue, 3 Dec 2019 13:09:30 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191203120930.GC8181@meh.true.cz>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040943_880552_B20504E0 
X-CRM114-Status: UNSURE (   6.07  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: 'Stijn Tintel' <stijn@linux-ipv6.be>, openwrt-devel@lists.openwrt.org,
 pozega.tomislav@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> > I used the same as with other ubnt-wa devices. I'm not really up to date
> > on this metadata thing. Do we normally not include it in factory images?

Indeed, but you've added following extra line to your device:

 IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split

Which means, that you're constructing factory image from sysupgrade image, and
sysupgrade images have this metadata included. I would just drop this line.

> I'm also not sure whether we need the append-metadata, thus I wouldn't
> deviate from the other ubnt-wa devices.

I'm sure, that there is no need for this deviation from other ubnt-wa devices.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
