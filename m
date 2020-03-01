Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5066C174C3C
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 09:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NBdQtMO507CluutMZegKw/wADnLSN5n/JNys46CS2aQ=; b=h5TjkDXDJFgCI/JiFA6Fk0XYBw
	Qub/QucKdSOgpFZ+oAEU7JWE5ID0rxSuX4gUVFj55e2HTckjrB8WtvRBa7KpeE244Ty6eQoNtHT4F
	u9a92oszgHRaZ7R7Ybah3MXp6EqwbmmmCRFplKo5ff/31Yk1h8mFPmLjAi/xJSnmZ0DgNfAnxjFZb
	YXJL13BRozDwpZHN2WBZe227Lz1dF9uy0SniLsTVt2mtZ0D7wvvuidADALFjAyrYCOhkBU8vmvhzo
	lPOtIux+uFU7D2WJeQ4k9dYzWV9RJsIBzFSShmk52SWoIOg2uM+jajkQm4p8pCozINoSrRoaqe9Ea
	4fqxaQyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8JoB-0006Ur-Qu; Sun, 01 Mar 2020 08:18:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Jnx-0006Pr-Na
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 08:18:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6864D4B3F;
 Sun,  1 Mar 2020 09:18:26 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 70a9d62b;
 Sun, 1 Mar 2020 09:18:13 +0100 (CET)
Date: Sun, 1 Mar 2020 09:18:13 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tim Harvey <tharvey@gateworks.com>
Message-ID: <20200301081813.GC33354@meh.true.cz>
References: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582918410-12875-1-git-send-email-tharvey@gateworks.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_001829_913970_AFE59E3F 
X-CRM114-Status: UNSURE (   8.28  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add support for Gateworks
 GW5907/GW5910/GW5912/GW5913
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

Tim Harvey <tharvey@gateworks.com> [2020-02-28 11:33:30]:

Hi Tim,

> - backport dts patches from 5.6:
> ARM: dts: imx: Add GW5912 board support
> ARM: dts: imx: Add GW5913 board support
> ARM: dts: imx: Add GW5910 board support
> ARM: dts: imx: Add GW5907 board support
> - add support for board names in lib/imx6.sh
> - add support for and net device config in /etc/board.d/02_network

you're adding support for new devices, and we've[1] following:

 "If you add support for new hardware: Include in your commit message a short
  description of the hardware and how to install OpenWrt on it. Have a look at
  the recent additions for some examples."

No need for v2, just provide me the missing bits over email and I'll adjust
the commit description myself.

1. https://openwrt.org/submitting-patches

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
