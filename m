Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F213F8087D
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 00:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ksx9ECfJ0K+lQyki1vSL1wik/kwcNHygNU2XLxmjvBc=; b=Ly2H9O5KIOJnSm/zcdAeJnD5Ya
	5JsLVbQ0P5zGditAYIK4Oo0+E969qxcafuB66cJqpOPDXngkeVP4fJ7kTFCmcvZsKeuCJsab0EDon
	tFmxYY4mqG7FGvUbg8qiCbJ0GbF3ccwIOi84lLMbjG+P25zcirNB4nwGnKlPzSzWAk7WhmKAuiRBo
	cyGpSc8HSDq8TspTtKv2l2oiX6FEXgTGgfzqq9M4wIen/XQZiMykWGetqasR/hGyXx94BERH4crk3
	YEdcRcNgxoEmSt22M2xNYyX1/WL3PI0CawFXQNJBnEXofCOXWajBLLfrgTPZe55GuZ4RvXR1Wocqf
	6tGpL8lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu25Z-00027t-GL; Sat, 03 Aug 2019 22:01:21 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu25R-00027S-UF
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 22:01:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5B17332A2;
 Sun,  4 Aug 2019 00:01:10 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4bf965b4;
 Sun, 4 Aug 2019 00:01:03 +0200 (CEST)
Date: Sun, 4 Aug 2019 00:01:03 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <20190803220103.GB12735@meh.true.cz>
References: <20190723133717.20010-1-ynezz@true.cz>
 <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
 <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_150114_126135_65D4EB7C 
X-CRM114-Status: UNSURE (   6.95  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hannu Nyman <hannu.nyman@iki.fi> [2019-08-02 18:00:30]:

Hi,

> I do not remember seeing ever a general call for converting the old packages
> to using procd.

I'm not aware about any of such rules (even unwritten). I mean, this is change
proposed against master/development branch, so it's likely, that it might
cause some havoc. We can still fix/revert it, right?

> Has a decision been made to declare the old-style init file invalid?

It depends on how you look at it. If you take the Acks into the account, then
it might be considered as a decisison made by a few "signed" developers under
that commit.

Anyway, it's much simpler, I just touched that part of the tree with recent
changes (mainly related to service_running stuff), so I've simply thought,
that USE_PROCD=1 should be implicit, because:

 * it would make the code in rc.common cleaner
 * everything in the master tree has USE_PROCD=1 set explicitly
 * it's unlikely, that anyone is using OpenWrt services/packages without procd

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
