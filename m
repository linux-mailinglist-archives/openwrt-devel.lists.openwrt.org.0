Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC2F1742A5
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 00:03:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HGIJQ9EWoTbGxa+bGRGJMRyFJaRt7p8UUPsPXBAXdAA=; b=jqHmffqyBaQzUWWLrUHhOxNJPr
	ZB/wqDQ3HEeeLmV+MISHD+k1z7AIBsggwDT8GDDKFN0tKyyzUX78+zX6qTzbrNj0+3ove01U4k17O
	KyCMvwT4wMF33rXGKqkt1+8F7avHbqFZXxOtYRgbF6Xnw4by3ZDeBks2xvo17Z0oXKKm3nABl2onA
	L2y177tSiIsLtc7Zl0OPYry02kDzU5aKTGbzLF1CbZe2K/swsnxNOMzxS5Ib9RrJJRYhQXgfubCbH
	C/NEB0xpnkW3Cztgj4kBpcVDdTYITaKxmUDMMZo3qseFfZ+bu4bsC4bX422VRYcb6IW/WHOQfcU3o
	uJW5gzkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oet-00076Y-I0; Fri, 28 Feb 2020 23:03:03 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oem-000763-1Z
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 23:02:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8F94C4EA6;
 Sat, 29 Feb 2020 00:02:53 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e949eca5;
 Sat, 29 Feb 2020 00:02:40 +0100 (CET)
Date: Sat, 29 Feb 2020 00:02:52 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20200228230252.GB32542@meh.true.cz>
References: <20190614183534.14768-1-jeffery.to@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614183534.14768-1-jeffery.to@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_150256_241418_58AB75A9 
X-CRM114-Status: UNSURE (   5.09  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] build: Add auto file tracking /
 uninstall for Host/Install
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

Jeffery To <jeffery.to@gmail.com> [2019-06-15 02:35:29]:

Hi,

> This adds automatic file tracking and uninstallation (similar to that
> for Build/InstallDev) for files installed by Host/Install.

seems like patches 2 and 3 were superseded, and patch 1 doesn't apply anymore
so I've marked the series as changes requested.

Could you perhaps next time consider some cover letter, explaining why is this
useful and should be merged?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
