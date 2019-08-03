Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65A480849
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 22:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t0PaNCmC116+dcbQhDlJ0olgt+oddGmrdynlFCu9vSs=; b=p4ufbrRb+PhgAZ/D3db9Zul6/C
	r//LgcI09NPcCMPBH2LpZxNikdDvVTIfPcIBAJQ1T8LzWZOQlsrNwD4Fl6y9cXV52DyhbR7OlDUNM
	44v/AOGILkwobKaPqRsa7bntPPyKnFseFBtm7EjUmmpCAR9k71xqkwNp0MhjT7BMSSc3e8DzvkSgG
	ID2gQkiemvKdplpIjsOEnJADNVnCPoAzsvvliR3lRGv9cIM6tWtMSYNDyORL6uzqbWRZPb7ADNt8/
	dl2od0KDEv5ztMFFOnxfUG6i9Y73Km8E5MpwbynPd2xpPIQyHvA8UxU+SiaoQ1ejrt6ShVkVWSqmj
	AnU1X4cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu0dG-0004P5-AB; Sat, 03 Aug 2019 20:28:02 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu0d4-0004Oh-Pe
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 20:27:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8734D4EC9;
 Sat,  3 Aug 2019 22:27:47 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1a56699b;
 Sat, 3 Aug 2019 22:27:40 +0200 (CEST)
Date: Sat, 3 Aug 2019 22:27:40 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Joan Moreau <jom@grosjo.net>
Message-ID: <20190803202740.GA12735@meh.true.cz>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_132750_984276_6AFE7A0B 
X-CRM114-Status: UNSURE (   3.14  )
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
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
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

Joan Moreau <jom@grosjo.net> [2019-08-02 21:37:17]:

> Removing "debug fs" in compilation options removes the problem.

It was caused by CONFIG_KERNEL_DYNAMIC_DEBUG=y

> So there is something very awkward in the Makefile

Should be fixed in https://patchwork.ozlabs.org/patch/1141597/

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
