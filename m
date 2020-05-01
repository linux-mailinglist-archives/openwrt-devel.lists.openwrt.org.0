Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454161C101E
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 11:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hWPJFmG14Z12yD8Pvy7oVEuUhOdxWYn08CrlZB+JC4A=; b=TCqXzemG4hGk4/9V8Lt1odVuuH
	NC44xQjQ6Ga5wznviIu3i/zwK3UxZaHZIH74kWJYnRdS7eduk7OriZNSbtu3b22avj1z2Ld8rNV11
	2vJ4Ccv7iulR1gvBJ06+uPYrLnRaRc67J/WmmZQ7dmt2UFx7o74KSejoCJWxHs0Z0Nbi8C/cP1dcT
	zlis/MHShk0aWtsLr0r1hTnzp4tq6sOXB9syzwfRFiKvAf05Sgqe9ogi4VMwRyrkQLZCjR85X/C8q
	rzAadOwu6iE5DIeifJi05eI/AYciDqJcy9Gk2VX3RaC9EhQ5Wjglm+5GjPHduR9r2QgLDnFfXCMp4
	7B5WbliQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURYe-0005fi-JQ; Fri, 01 May 2020 09:02:08 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURYT-0005eG-Uy
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 09:01:59 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8F3363E98;
 Fri,  1 May 2020 11:01:56 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ab793a20;
 Fri, 1 May 2020 11:01:42 +0200 (CEST)
Date: Fri, 1 May 2020 11:01:55 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200501090155.GB25400@meh.true.cz>
References: <20200410021510.1595823-1-rosenp@gmail.com>
 <20200410021510.1595823-2-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410021510.1595823-2-rosenp@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_020158_149539_9E6CB231 
X-CRM114-Status: UNSURE (   4.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [18.06][PATCH 2/2] wireguard: bump to
 1.0.20200401
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

Rosen Penev <rosenp@gmail.com> [2020-04-09 19:15:10]:

Hi,

> From: "Jason A. Donenfeld" <Jason@zx2c4.com>
> 
> Recent backports to 5.5 and 5.4 broke our compat layer. This release is
> to keep things running with the latest upstream stable kernels.

I think, that this is a not acceptable for 18.06.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
