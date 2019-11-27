Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A958110AF76
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 13:20:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JjZ+HDw0FLXChOwpWFtMo2LS5hhZTamR5r/sUZ+252o=; b=ep6WALycgT/gC9UKINE66AoJZX
	44izAEtr7sFY5Kxypes7efATql77UFhKvoQjpKNbw5cEPz2sCE8oIIpDnK/udF/y+ht92obKMMjx7
	xF9mQCTIQdI8ZHldZEFvq4mSImaLJve213Yj4SJwRP2bbs0t+CkTKWkKKj8XEEM/oLULHJ49E0DDg
	mZz+OGs0Dfqan2J1Q2Ejl/gTazAwqw9klWp8V9rPwCuuqUcrCm8tpWMRkKxQNVtooVIuLZ3VOjdap
	MFgVLDIp6B5UOvns+/FBW8LURRVT9g8kM3BIWp9yk13YJhlvaumO5FTEk/C6g++eNdr0VOvySLNdt
	uK/Sfhvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZwIp-0004xH-AI; Wed, 27 Nov 2019 12:20:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZwIa-0004l5-CC
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 12:20:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6AA6535FC;
 Wed, 27 Nov 2019 13:19:58 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 53514788;
 Wed, 27 Nov 2019 13:19:48 +0100 (CET)
Date: Wed, 27 Nov 2019 13:19:48 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Andre Heider <a.heider@gmail.com>
Message-ID: <20191127121948.GD37269@meh.true.cz>
References: <20191125224418.266082-1-rosenp@gmail.com>
 <20191127104917.GB37269@meh.true.cz>
 <8b1128c5-b171-afa1-4bac-c8e0aa9a7ece@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b1128c5-b171-afa1-4bac-c8e0aa9a7ece@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_042000_562609_9FC40202 
X-CRM114-Status: UNSURE (   3.16  )
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
Subject: Re: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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
Cc: openwrt-devel@lists.openwrt.org, Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Andre Heider <a.heider@gmail.com> [2019-11-27 12:26:39]:

> I didn't pursue upstreaming it because it looks like merge request at github
> are ignored and I didn't feel like signing up at upstreams own page.

 git send-email --to '~kaniini/pkgconf@lists.sr.ht' your.patch

doesnt work?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
