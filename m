Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779FB1C101D
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 11:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DnNT7lHK0ksNW0jO98HSYdip0XWkkkNBPU/ohNOgjoE=; b=OBtkeAMkB1WKHLgSIWU8VmAvh9
	N3Ivyng+4QOy4oXO9FlwcWnu+T4cawxHdS2jDae+X4eukrnYl+PzrTQONDMDVNpr3clzcrITwdEuh
	jzJmxvpUuTrtS7ssJ6zsMyGF0w8sZOSgyCxvsbowYnjelKDfE+GhCv39HuGqNwCSzozJpn6/GL8Dd
	BMW4Rxc6tW8lr//qabvj+7SyePt9gxBC8YmcGzlOIWqVhVLaxqfk4awFn95psTp0S/HkQhlsQJoOw
	i+yt7vaxTOIRWS6b0QNEzloGUfOcDdsbLXuB97I+sCmceksaSDNXpNz5rVO//OPAKFuzEdcY2GtN5
	xjd+lPyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURXl-0005GV-Sq; Fri, 01 May 2020 09:01:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURXg-0005Fm-2W
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 09:01:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2F3C33E93;
 Fri,  1 May 2020 11:01:05 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f31baa00;
 Fri, 1 May 2020 11:00:51 +0200 (CEST)
Date: Fri, 1 May 2020 11:01:03 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200501090103.GA25400@meh.true.cz>
References: <20200410021110.1594846-1-rosenp@gmail.com>
 <20200410021110.1594846-2-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410021110.1594846-2-rosenp@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_020108_264469_76FDC4FE 
X-CRM114-Status: UNSURE (   4.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [19.07][PATCH 2/2] wireguard: bump to
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

[adding Jason to the Cc: loop]

Rosen Penev <rosenp@gmail.com> [2020-04-09 19:11:10]:

Hi,

> From: "Jason A. Donenfeld" <Jason@zx2c4.com>
> 
> Recent backports to 5.5 and 5.4 broke our compat layer. This release is
> to keep things running with the latest upstream stable kernels.

I'm quite hesitant to bump WireGuard in stable release to such fresh version
unless there is a good reason to do so. We're using 4.14 kernel in latest
stable 19.07 release.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
