Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F6E8B1F7
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 10:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ToZyfwXT5P666ddCgjwKwC4SwgrPBBXUMKbAgQy7n0w=; b=fSKWViwNBJvUkgwozbNtVE5P/l
	2ICPw69MQoh/2ISwyysg0/oug+21niE87evJAr8fdAnaRqWXX4WzQkmPjF2krb7V5wQEne6v5rf+N
	a6+k+hD0C1UYFpiyl6G+ie+oBcinTjJMdyfg2QTAgS67N+WrXGjP/z8VMUPxbWWIRzkeJ+MG3mjzB
	6aJKH42Mb6KCi7r9uQQT15kKGogATGsa5wUf6a5x0Hhiy+zPhqztlQ+eqlkH+Fz62rVzkxe/W9Zh4
	tg23vBoMpT9hfkeSNbF82WhaoT/cHtoIjd8WmXMaSt/826oO/ppurlFNH+2bkCYNlEIHf2pFlT+f3
	ZDLX/2OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRnc-0003RR-Q8; Tue, 13 Aug 2019 08:04:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRnL-0003MM-Vr
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 08:04:42 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 63FAF402B;
 Tue, 13 Aug 2019 10:04:37 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3d7701f8;
 Tue, 13 Aug 2019 10:04:30 +0200 (CEST)
Date: Tue, 13 Aug 2019 10:04:30 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Russell Senior <russell@personaltelco.net>
Message-ID: <20190813080430.GA23313@meh.true.cz>
References: <87v9vm1nc5.fsf@husum.klickitat.com>
 <87zhkda68k.fsf@husum.klickitat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhkda68k.fsf@husum.klickitat.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_010440_438477_6EF39283 
X-CRM114-Status: UNSURE (   4.25  )
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
Subject: Re: [OpenWrt-Devel] [PATCHv2] tools/scons: update scons to 3.1.1
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

It would be nice if you could include commit description[1] and patch
changelog[2] (what was changed/fixed in the v2 of the patch) next time.

1. https://openwrt.org/submitting-patches#submitting_patches 
2. https://openwrt.org/submitting-patches#the_canonical_patch_format look for `patch changelogs`

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
