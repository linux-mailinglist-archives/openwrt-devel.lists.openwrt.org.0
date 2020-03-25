Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07315192217
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 09:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5oxptxG6rEq/MdMmujFappI+or5/BeErOFCqgFVyeoM=; b=jQHfmCuRnRUarFeXiOcp/9q3l+
	Q3Ua46zuTp8kBZuz4+jrkQUbBAUZJ/5rkAa9iM4UykzBNwAbDjaAlOwsZRSKiRJTaFc+1JU2X/oQL
	98ct0lb2sKzebfdZAmc3IU/jf4Npd749GfnCOgFMcN0GoF2Fh98w1LSPsW0IpPXPOqAVzT8i34P7q
	9bQ0O1lfwXz+Pb6zuQ05dW+M6WKKtHKCBXJF18xw6jNWldmQB89HQCkX2qPAXiavVmBgZF5gR7g7J
	zcyJ2xOaU8YFp7NfprHIcHyuj+GM2pryM63E4AQNqnluL9qzR2gzg56uDta0pbJH+xlso4/aOMixa
	3f5eIXOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH109-0008M7-7I; Wed, 25 Mar 2020 08:03:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH100-0008EN-Pe
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 08:02:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9F1D34B5C;
 Wed, 25 Mar 2020 09:02:48 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8372a3dc;
 Wed, 25 Mar 2020 09:02:34 +0100 (CET)
Date: Wed, 25 Mar 2020 09:02:34 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Nick Bowler <nbowler@draconx.ca>
Message-ID: <20200325080234.GB43730@meh.true.cz>
References: <20200319032712.31676-1-nbowler@draconx.ca>
 <20200321105015.GB1408@makrotopia.org>
 <CADyTPEzo82bT2Cdh88OYw6VLZihmZ07249=iv_nTVnQUkHb3vA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADyTPEzo82bT2Cdh88OYw6VLZihmZ07249=iv_nTVnQUkHb3vA@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_010252_981109_6AD161AC 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] Add kernel support for Fintek
 Super-IO chips
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
Cc: openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Nick Bowler <nbowler@draconx.ca> [2020-03-24 21:14:51]:

> On 2020-03-21, Daniel Golle <daniel@makrotopia.org> wrote:
> > On Wed, Mar 18, 2020 at 11:27:09PM -0400, Nick Bowler wrote:
> >> This series enables packaging of the Linux hwmon, watchdog and gpio
> >> drivers that support multiple Fintek Super-IO chips.  In particular,
> >> the Fintek F71869A is used on the Jetway NF99FL board and the stock
> >> OpenWRT kernels appear to completely lack drivers for this chip.
> >
> > The driver looks ACPI/x86-specific, please add target dependency or
> > move the package definition to target/linux/x86/modules.mk.
> 
> I think there shouldn't be anything _inherently_ x86 specific about
> the drivers themselves although probably nobody uses Super-IO chips
> like these outside of the PC-compatible world.

Those symbols have `depends on !PPC` config constraint in the kernel.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
