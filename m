Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5047CF1C3
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 06:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e0Mg4tvBvb0Lq+xZTNEhQPwminf3mHosDfm/nfxzRnA=; b=Su7ZfNR18NRBuX20LcRFvpB/As
	3eOr8WCfg1Lja3hcEKxMxrkrDzf0NhAu0v4JtOsZYjZgzKN7loCeRgbYJovFh4om3xvTNCkHSMzCG
	1I8XyuJl/TaEkv96M93cut79/hKPG5YIIIAK+mCEjjO390mxb+Zmoec88YTx7foyt2KXXzd6QX2M6
	9o8AT/j9iRpg94j+gFpv9PPXqmpk+ui4yKbjwfH02T+ZPDDcYzX33J8eDIw3jOXxg0RAXahuVDfNh
	D8ZeHmsaJ+s8NX7OthjuRCJusgrvpXlBiAT4o/BleLQRzRr+qRtu/SJJIbFVqNTx9c9P19ZECzT/g
	z6aCOeCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhGa-0005iM-2D; Tue, 08 Oct 2019 04:38:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhGT-0005gQ-2l
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 04:38:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9D3FC38A4;
 Tue,  8 Oct 2019 06:38:20 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2cecdffa;
 Tue, 8 Oct 2019 06:38:11 +0200 (CEST)
Date: Tue, 8 Oct 2019 06:38:11 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20191008043811.GA87306@meh.true.cz>
References: <20191007082204.30380-1-ynezz@true.cz>
 <8b3eaf1e-cad3-743f-4b7d-0bb503e9e981@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b3eaf1e-cad3-743f-4b7d-0bb503e9e981@aparcar.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_213825_276130_EE627AC3 
X-CRM114-Status: UNSURE (   4.86  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: make UBNT Nano/Loco AC factory
 images reproducible
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

Paul Spooren <mail@aparcar.org> [2019-10-07 09:52:23]:

Hi,

> The issue appear for amips-mt7620-zyxel_keenetic-omni-ii[0] as well.

as discussed on IRC, this issue is caused by your custom build step[1] and
doesn't exist in the tree, so the proposed patch can be seen just a workaround
and not proper fix so I've rejected it and not going to apply.

This should be fixed in other places:

 < jow> to me it looks as if two distinct fixes are needed
 < jow> 1) better fwtool signature search heuristics
 < jow> 2) pad the signature before it is factored into the partition size calculation

1. https://gitlab.com/aparcar/rebuild/blob/master/rebuild.py#L146

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
