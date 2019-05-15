Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDCE1F5A8
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 15:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HkrlmVjqJzfb/ECbntna4YyWmXeaeo9R5r2cdYwD0C0=; b=jRH9fSKE3mt2UR5+Hg+aXYgWOG
	+3JWqMzEa7T8jn//Q3P33ETzpDFZRCmizLcDrFjwPqdMJZhPQw0YYMoM8/0YZp3U8TFiQrwZj24Bw
	Rua+AU452yujs+o1IZ9NOiQt/h85DF+ob7YZKzKTejyZECHWeMTVfbEOZOca+4JaJSbaxv0jb9MKI
	EsOfYAPN/e17VL29bU1JlMzvkFYhmtAFA8G532zQ4wbGzPPm+R2Dl/wVRu6Ltl+/ntrEymqLbWQQ0
	YTWAEHoxpZXa0mwfwlY+icfVxra/1tL1q6FIlyypx6Uw9Sp4LHsIIQWUyHeOEhYB8neF1xxDGeVfm
	RK129mcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQu4e-0003mt-Jl; Wed, 15 May 2019 13:36:00 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQu2N-000281-KW
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 13:35:51 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FDXYpV034999
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 15:33:34 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6589533C1;
 Wed, 15 May 2019 15:33:31 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 43550099;
 Wed, 15 May 2019 15:33:30 +0200 (CEST)
Date: Wed, 15 May 2019 15:33:30 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20190515133330.GC30259@meh.true.cz>
References: <20190502164706.31453-1-jeffery.to@gmail.com>
 <20190503093230.GF346@meh.true.cz>
 <CAJXyS=i6OLmO-9nxOEqVgonHggXk5iAHAT-DHJRVO3vhCzpfxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJXyS=i6OLmO-9nxOEqVgonHggXk5iAHAT-DHJRVO3vhCzpfxg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_063548_381872_D11EB0CD 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] zlib: Use relative paths in pkg-config
 metadata file
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Jeffery To <jeffery.to@gmail.com> [2019-05-15 21:00:28]:

> The buildroot pkg-config (in staging_dir/host/bin) overrides the prefix and
> exec_prefix variables in *.pc files, to supply the correct (buildroot)
> paths for callers. If other variables are not defined relative to prefix
> and exec_prefix, then the returned values will be incorrect.

Ok, makes sense, so can you add this explanation to the commit message please?


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
