Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9011A0935
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 10:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1CMo0aRRaW6eu2piICSfCcYSfFeGCh7Vs4URWayHOLA=; b=WlrlbHGnMBg09e6kijHFG0HP1a
	pqLNDsM5j/SFlvcUAHFOELT8UHTFL+RrOcf6pJ3CeHvOU/Y1lk4l75bM2C5eutpfSvVenNYg5AHWa
	cgDZFbOSNcVWVRqAU3oESFZM6FXEMeaXiHy6cjwYKLNA9RVZKLAwhLs+H86TOnDZPGh9RpJQZhDIJ
	HplI0/mC+n+YanR4gL9fgqxHKDgsEPJ68ASrc2RQ+zTNTj0kqqwfSHJ67nYaOhWvmXvkAIVKH0c1K
	g41J8DC8SpOM1DyJLaNnawGx/OUwT2qSMN1sbLj90NpIx6sZ7zEOZML4RQ/kT9zkC/pjmYRIhw+Zp
	RjX284kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjSV-0002fn-8j; Tue, 07 Apr 2020 08:19:47 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjSP-0002fE-1K
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 08:19:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3A39B3A0F;
 Tue,  7 Apr 2020 10:19:35 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 272fbf15;
 Tue, 7 Apr 2020 10:19:21 +0200 (CEST)
Date: Tue, 7 Apr 2020 10:19:21 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Eneas U de Queiroz <cotequeiroz@gmail.com>
Message-ID: <20200407081921.GA39350@meh.true.cz>
References: <20200406201036.19144-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406201036.19144-1-cotequeiroz@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_011941_226327_92FCB4CC 
X-CRM114-Status: UNSURE (   4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] build: update scritps/config to
 kconfig-v5.6
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
Cc: openwrt-devel@lists.openwrt.org, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Eneas U de Queiroz <cotequeiroz@gmail.com> [2020-04-06 17:10:30]:

Hi,

> TLDR: You can't review this by only looking at the patches.

Just tried to build[1] test it on x86/64 sunxi/a53 imx6 ipq40xx and it fails
to build:

 make -s -C scripts/config conf CC=cc: build failed.

1. https://gitlab.com/ynezz/openwrt/pipelines/133543034

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
