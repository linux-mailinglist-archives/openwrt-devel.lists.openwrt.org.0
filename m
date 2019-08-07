Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5021884413
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 07:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iRyTSQdHatw/KIR5dNaQkist7RU8inAIHbhXpxaawQI=; b=hnNSGwqgbE0Sm567jpZitzdq3C
	8uWCPgpc5sMhGTdgadGJv+47qNLuUCmI/G9dtEY2pqU64dY9aT7AzjRek8tJx5dnQDh42q4u5N0xc
	oLdudy0ysNQ/qqfKKq63Tu1Iu5CjzJA//1jhX6egdNeOeAbvgctSCHViQk1f7jLfR/MOFXTEbSzve
	evJw7GjATDckS5NRbAG/Oj/Zpbxu3y3djDVE/9Hdc+H6QHUreFsxMUSqlU9sG+3Zpp6X9Rg9BGDg5
	U3jhVEhv04sIpGCX8fJP4++1DlLEVs2WvQfbzdWeV1SctGYx2ghb15JubM+L4dvc0eUsPcWUjrE+4
	l9q2xM7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvEyr-0007Gb-Mg; Wed, 07 Aug 2019 05:59:25 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvEyj-0007GE-FO
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 05:59:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 267D54E81;
 Wed,  7 Aug 2019 07:59:14 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 25a5c3c0;
 Wed, 7 Aug 2019 07:59:06 +0200 (CEST)
Date: Wed, 7 Aug 2019 07:59:06 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Thomas Albers <thomas.gameiro@googlemail.com>
Message-ID: <20190807055906.GF12735@meh.true.cz>
References: <mailman.15111.1565142502.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.15111.1565142502.19300.openwrt-devel@lists.openwrt.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_225917_669765_94383A62 
X-CRM114-Status: UNSURE (   8.78  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] fix make kernel_menuconfig
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

Thomas Albers via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-08-06 20:48:07]:

Hi,

> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
> 
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.

FYI patchwork has issue parsing this wrapped emails so this patch wouldn't
apply. Also patch 2/2 didn't hit the mailing list and patchwork as well.

> Date: Tue, 6 Aug 2019 20:48:07 -0500
> From: Thomas Albers <thomas.gameiro@googlemail.com>
> To: openwrt-devel@lists.openwrt.org
> Subject: [PATCH 1/2] fix make kernel_menuconfig
> Message-ID: <CALYGOBU51HmRrwJGmYUxhcYJCg8OOSEUOo+7=T-nuJLk9XnSmQ@mail.gmail.com>
> 
> This fixes pkg-config in the toolchain.

maybe, but it's probably breaking other stuff as well.

>  Previously, pkg-config would expand an environment variable
>  $STAGING_PREFIX, which is not defined,

It is defined:

 include/host-build.mk:  $(1) : export STAGING_PREFIX=$$(HOST_BUILD_PREFIX)
 include/package.mk:  $(1) : export STAGING_PREFIX=$$(STAGING_DIR)/usr

and as you can see the values are different for host/target.

> Right now, anything relying on pkg-config works only because of sensible
> defaults and good fortune.

I don't think so, you probably need to dig into it once more and find out the
real reason for the failure and fix it at the proper place.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
