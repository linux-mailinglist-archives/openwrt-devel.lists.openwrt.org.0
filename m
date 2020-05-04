Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A791C468C
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 21:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I/A55Cw6EmHC59ZgWreF2d1Vwzz1yXQULBhyGH35PTg=; b=NfSdtqErLeXVBZxaD2gMd7fpcG
	Z+RFVAA+KqkSapJVYw8fipnM3n8r+mRDbRfzVx1JJAOCSRKEI+tyA9z0kPZaLnzXxxKWPZUHjA84P
	EsCF7mVhL9x586s+9yjVj99IkhPS4+ndu5l2U4XZhUwOG3Ft3d8z3c2pdVLSaN/TMDBOnweJk5AQY
	0tg7iDE5gJEFmAZAIQ/6nFgfhmRoJSteGJt/FE+sBqKpsnZNKpFEcXlojNvF+mGEhuS8fwUgLrHpK
	SHitp0UhqhP9XGdcQ0ltUhmKFmKfb3WR0yjX7xSHMpOmVxHGDeK4q8nX7TrqJ4S51ly28+rLXn+QW
	z1Dnoc7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgL4-0007o5-45; Mon, 04 May 2020 19:01:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgK9-0006jF-V1; Mon, 04 May 2020 19:00:21 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 17F106E61;
 Mon,  4 May 2020 20:53:37 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9e9a3e92;
 Mon, 4 May 2020 20:53:23 +0200 (CEST)
Date: Mon, 4 May 2020 20:53:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <20200504185335.GA10836@meh.true.cz>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_120018_346822_D302CD8B 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Next maintenance releases
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

there is plan to do release 19.07.3 and 18.06.9 sometime soon, so if you have
pending important fixes you like to see backported to the respective branches
please do so ASAP or mention the commits in a reply to this mail.

Cheers,

Petr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
