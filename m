Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5515EEB152
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 14:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0j7sZQEfxSqdLcdptRyWu1QEBeXjJZlKnr0rcrPfOIw=; b=lMARQltlhj9G97BINAu4/5/JZo
	BqvlrwDVxsUZ92pXrLW3dPxtBBvDhvdJZkCSb5l0bcE7HMJ1uOkybbl7+fkuKvpjkmGeE9pPI0tHb
	eEKBXBtncVBPbiRD1CNquGLJoymV87g93oKp6RdgEPCFfHRSROxPVGVZX6Ca2IRGWFGsKrgkCD05R
	9qXFM4rawyLDSV8PDjJEx+7W3FzCoBo58vwRGtL3GWl5T7NYRbcTv/JnqYZXRvUIaapQVv5gAlScI
	mPBoCSOqF3k4uN3ai+nwO6fCjtWxarJl6Zoo7aP9E2qEAOxpuix9suT1YHLYlIo1pSYdnQcQWCelz
	ewDYvzPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAdn-0005LT-2e; Thu, 31 Oct 2019 13:37:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAdf-0005Kv-Ga
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 13:37:25 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 73FD341BD;
 Thu, 31 Oct 2019 14:37:21 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f7a5419d;
 Thu, 31 Oct 2019 14:37:11 +0100 (CET)
Date: Thu, 31 Oct 2019 14:37:11 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: kmcopper@danwin1210.me
Message-ID: <20191031133711.GL22393@meh.true.cz>
References: <mailman.7332.1572509286.2486.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.7332.1572509286.2486.openwrt-devel@lists.openwrt.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_063723_705522_718A1331 
X-CRM114-Status: UNSURE (   7.63  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] hostapd: add IEEE 802.11k support
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

Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-10-31 06:50:55]:

Hi,

you should fix your mail setup:

> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
> 
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.

as a next step, please kindly read https://openwrt.org/submitting-patches one
more time and fix your patch accordingly.

> Add IEEE802.11k neighbor and beacon report

 "commit description: it should explain to a competent reader why you made this commit."

>  Original patch by Lorenzo Santina @BigNerd95 on GH
>  <lorenzo.santina@edu.unito.it>

  From https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

 "Co-developed-by: states that the patch was co-created by multiple
  developers; it is a used to give attribution to co-authors (in addition to the
  author attributed by the From: tag) when several people work on a single
  patch. Since Co-developed-by: denotes authorship, every Co-developed-by: must
  be immediately followed by a Signed-off-by: of the associated co-author.
  Standard sign-off procedure applies, i.e. the ordering of Signed-off-by: tags
  should reflect the chronological history of the patch insofar as possible,
  regardless of whether the author is attributed via From: or Co-developed-by:.
  Notably, the last Signed-off-by: must always be that of the developer
  submitting the patch."

>  Original patch by Lorenzo Santina @BigNerd95 on GH

GH -> simply add 'Ref: http://some/url' tag.

And one very important one:

 "all commits must contain Signed-off-by: My Name <my@email.address> where you
  write your real name and real email address!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
