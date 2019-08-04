Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FBE80CAC
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 22:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EhKXhfbC39GW6d8FV9EkHqLu0YithxFsUmGgwqi8XVA=; b=C/5FDIiSIVIIzR/0neWrYsuXLm
	pJMFCLQCU7yJkmCpB66rW4rHj7FHldx7UPj7iZVts23UY+rtfbWNa1KtKbOn8HPNCmNB41BqEuIXF
	pD5N6d1c7v206D3MLT8dr+sc5+F533wcpTdRTG2ssIZXgdDo0wm9kI/uc5KRL99cIz0VRy+VyBiGE
	iqTsFYFZZHzqXmXWqP2NhvDyMVp5uBWQchZegPIHkU7UDUN0hpk1moVs7Uuus/QjfK4ZfSYz6s2F1
	/3hxjWqPozTzVKpxkxe20FyD/ape3NNvojuk34nA+C+voCC6/L4c9EDZc0l0+ghNP7J5R3RMZxPrd
	eRsWVFMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huNVC-0006ux-FD; Sun, 04 Aug 2019 20:53:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huNV5-0006uf-6h
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 20:53:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id ED7AA55B5;
 Sun,  4 Aug 2019 22:53:02 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e6cdfe60;
 Sun, 4 Aug 2019 22:52:53 +0200 (CEST)
Date: Sun, 4 Aug 2019 22:52:53 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20190804205253.GD12735@meh.true.cz>
References: <20190803234256.2880-1-freifunk@adrianschmutzler.de>
 <20190803234256.2880-2-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803234256.2880-2-freifunk@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_135307_398774_B9245053 
X-CRM114-Status: UNSURE (   2.98  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] mediatek: fix typo in Banana Pi R64
 device title
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

Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-08-04 01:42:56]:

> Reported-by: @86423355844265459587182778

Uh? :-)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
