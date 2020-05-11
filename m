Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C121CDD1A
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 16:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q4mKhsnArutDJWPv/W0VkvJcivGXtn/UBEonoURmVC8=; b=JqBXQcdhb1K5K2cFgRrJH5FNZj
	dRFUx/kckOYwMLVqTpsw2R/7T3pFzfZJeXnFjAzCjQY8f7b1mPdDo8E21RE4PHiHr89FraNEv63cy
	9PHVt3G4lsJF4rzF+BC4G+1YuOebwmX/XKbRW3kZWIXBZMfurLyqEnmxGsrqDndz/bsJYhV7RfjYz
	63LnTxibby+72lxI59SS0z/nhJfBVhXetQxpPgWf6k1Z1po75tEhxAx5TOFDRJrG2EB6DTdZPUyAc
	osmB6R/ljFrTk804ROA+z8uYzhZVZO1H2f5U3DydCG59JpQLrNKhWiG/b578sS6tvUXE3uN7Y/pIa
	djh+8ErA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9Nz-0000kb-PT; Mon, 11 May 2020 14:26:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9Nj-0000g5-R4
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 14:26:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0C5FC5D4F;
 Mon, 11 May 2020 16:25:58 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 455289d2;
 Mon, 11 May 2020 16:25:42 +0200 (CEST)
Date: Mon, 11 May 2020 16:25:42 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Florian Eckert <fe@dev.tdt.de>
Message-ID: <20200511142542.GB69771@meh.true.cz>
References: <20200511113702.10975-1-fe@dev.tdt.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511113702.10975-1-fe@dev.tdt.de>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_072612_037714_7350883B 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard-tools: fix version
 indicator
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
Cc: dedeckeh@gmail.com, Jason@zx2c4.com, openwrt-devel@lists.openwrt.org,
 Eckert.Florian@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Florian Eckert <fe@dev.tdt.de> [2020-05-11 13:37:02]:

Hi,

> If we execute `wg --version` we get a diffrent version string that does
> not match with the version string in the openwrt makefile.
> 
> Current version string:
> `wireguard-tools vreboot-13159-gac5caa2718 -https://git.zx2c4.com/wireguard-tools/`
> 
> Corrected versions string:
> `wireguard-tools v1.0.20200319 - https://git.zx2c4.com/wireguard-tools/`

ok, but I fail to see why this patch should be maintained by OpenWrt, this
looks like it should be fixed upstream. Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
