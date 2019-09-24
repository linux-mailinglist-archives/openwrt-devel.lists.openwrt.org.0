Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A67ABD4CD
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 00:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eoNM2SKrZTj+B0UydgkFyv9CL6/VII5WTOnOqmYyIao=; b=RnE/IwrwjOnGwn+oSEcIODsPnB
	ew2NqOrS6wHZItkfx6OxL7XFddoiN5hvO8kw5Ej5B/Mvd5PrJ1DPY1o9LNios73Oj861SAd8XMb8J
	KEOQDwkpW7cow7YftNyq3WnyoBltzlYktHy6mt4AlUqqHssHojXg3Am/rD0U35Qbl52dIti6bLUiO
	xOYUuXn8PrXZ8QbTeOHKh4/yWv7DOjslc37O185Fup93hQ/9NelJZ8E6uFIgNVIjL0B5H+cszcLHy
	d+p4PU9IbZXlxhCleWK5fpaZoGkWDbMvguWWIOx55qnLjdAlHC9TnWtm8fERLjGksjqmfXeYyf7cK
	OtLGjdmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsyn-000790-DM; Tue, 24 Sep 2019 22:08:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsyR-00078a-NH
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 22:07:57 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 81D404A62;
 Wed, 25 Sep 2019 00:07:52 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3ca1c496;
 Wed, 25 Sep 2019 00:07:44 +0200 (CEST)
Date: Wed, 25 Sep 2019 00:07:44 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Eneas Queiroz <cotequeiroz@gmail.com>
Message-ID: <20190924220744.GF40628@meh.true.cz>
References: <20190923073539.7493-1-ynezz@true.cz>
 <20190923073937.7890-1-ynezz@true.cz>
 <CAPxccB3ZF_E5UXgoha6hqnMcktWqY6N4uS6J7x714CPvC_XW0g@mail.gmail.com>
 <20190924204151.GE40628@meh.true.cz>
 <CAPxccB1ZGFx_i6moidZxh_cwmS_QGmrvvP_e1hCdyvHdBbnOAw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPxccB1ZGFx_i6moidZxh_cwmS_QGmrvvP_e1hCdyvHdBbnOAw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_150756_179057_418BC8AA 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: fix make kernel_menuconfig
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Thomas Albers <thomas.gameiro@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Eneas Queiroz <cotequeiroz@gmail.com> [2019-09-24 18:28:44]:

> I've got your patch applied, and it still fails make menuconfig if I
> start from scratch or after make -C scripts/config clean.  I haven't
> tried kernel_menuconfig yet--it will have to compile a lot of stuff if
> I start fresh.

Ok, my bad, I can't read properly, you're talking about `make menuconfig` but
I've assumed `make kernel_menuconfig` :-)

So as the commit subject[1] says `build: fix make kernel_{menu,n}config ` this
patch is about fixing only kernel_{menu,n}config targets, no desire to fix
other broken targets.

> What do you think?

That it should be probably fixed in a similar manner as the other broken
config targets, perhaps something like this would work?

 diff --git a/include/toplevel.mk b/include/toplevel.mk
 index 12586e87c09a..2b3b55db9f75 100644
 --- a/include/toplevel.mk
 +++ b/include/toplevel.mk
 @@ -99,6 +99,9 @@ prepare-tmpinfo: FORCE
  		$(_SINGLE)$(NO_TRACE_MAKE) menuconfig $(PREP_MK); \
  	fi
  
 +ifneq ($(DISTRO_PKG_CONFIG),)
 +scripts/config/mconf: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
 +endif
  scripts/config/mconf:
  	@$(_SINGLE)$(SUBMAKE) -s -C scripts/config all CC="$(HOSTCC_WRAPPER)"

Anyway, I've already deleted my testing Gentoo Docker image and don't want to
emerge a new one in foreseeable future, so it would be nice if you could
simply confirm, that my proposed patch[1] is ok and works, I'll merge it
tomorrow and then you can add your fix(es) on top of that, what do you think?

1. https://gitlab.com/ynezz/openwrt/commit/0a20a3c08652af0d21accae6e76e8946cb4c1b84

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
