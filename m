Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39577174D79
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 14:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gn4n6yfqICf27qVDyP7EZI1HXRLYovKDZYt2jId13fI=; b=maV65KjMyACJwrHNDV+mcaqy4+
	naK+my9/AoVpbQnr14YHxZfPENnjsuhfmNxqTgLsxS8dW/+ihN3LyY8gjRDlHsKiXeJGGfmvfchQ3
	QrVyOVPo4YPtb0h7OcHkQYd7VXSblQB4ztGdeRMmm13kGC05rYwo5MOgS7vD/CclZ/Gt6J6APiv7r
	stZkHckcIV/vIP697uyv0dM71glw2U0xMER9chLpcPgk1nbXM+Sspu9X/wyWV8NE7Qr8RgGhUhBA8
	PkWXjbRtzFLCtMo7FnggYb7e/O9DtyMhyMgxWlJlhg/1qHZqinWXyXcbrxOtJKPusZwipzhSd0Xrn
	2rpLt20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8OJ1-00061r-Ai; Sun, 01 Mar 2020 13:06:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8OIp-0005yU-K0
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 13:06:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3E4B630D3;
 Sun,  1 Mar 2020 14:06:38 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4d72fd1d;
 Sun, 1 Mar 2020 14:06:25 +0100 (CET)
Date: Sun, 1 Mar 2020 14:06:25 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Message-ID: <20200301130625.GB70913@meh.true.cz>
References: <20200127181946.11978-1-rsalvaterra@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127181946.11978-1-rsalvaterra@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_050639_834423_34DABBF1 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath9k: enable hardware random
 number generator.
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

Rui Salvaterra <rsalvaterra@gmail.com> [2020-01-27 18:19:46]:

Hi,

> The ath9k driver is able to leverage the PHY ADC in order to provide a
> generic hardware random number generator to the kernel, filling up the
> entropy pool as required. Expose this feature in the build system and
> remove the old entropy patch, which only obtains entropy from the ADC
> once, when the ath9k driver is initialised.

why is this RFC, are there any gotchas?

BTW that `enable` in commit subject is probably misleading, because you're
just improving the support for hwrng, you're not enabling anything.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
