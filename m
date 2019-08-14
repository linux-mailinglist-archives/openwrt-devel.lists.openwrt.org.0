Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3388E8CC7C
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 09:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fZA+P1XmELIVx54b5+j61ksc13Ty9LsFviJMESQiHIk=; b=fVxp+X9TDox6c7b1fjY6FirtnI
	9ExX2HedaaojspjBAL0yhZYF2bxYh1c5EubA6g5GRjcvtMgOCTzfCedAo8ESD00cjqUYcuVJ1aRa2
	NuNq9zvdn/ivgOLo4b5zXmcD0Avi5O93vLaJJoursabeiEw3C0TVhxtgOh5BvHSHh9wUuNSIKahmK
	1mDq+bB1gzKiewH/GxbpxjwAg7pJDIdj8GgX4Cdkk4nC5XIHxyaHoULg9bMIO0yKa7NqKRS9zCoVN
	XR2Kn2Bp+SILnEAcJGac7As+hQIV8DIg2ETP2WgXeuAB5tfzXrzmExdkYWwTuNa6s3NyvkiUZ7lMS
	c0mKOvXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnY0-0001b6-LH; Wed, 14 Aug 2019 07:18:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxnXj-0001YE-Fd
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 07:18:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9A830382F;
 Wed, 14 Aug 2019 09:17:51 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5e830af6;
 Wed, 14 Aug 2019 09:17:43 +0200 (CEST)
Date: Wed, 14 Aug 2019 09:17:43 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190814071743.GI23313@meh.true.cz>
References: <20190501170445.4607-1-rosenp@gmail.com>
 <20190503171748.GA3101@meh.true.cz>
 <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
 <20190503185541.GG71477@meh.true.cz>
 <1556910707.1846.0@smtp.gmail.com>
 <CAKxU2N-LasxZy-Qxie0GavPn+Douq4nkyHZD-y82p6VCS5CfzQ@mail.gmail.com>
 <20190517073417.GG63920@meh.true.cz>
 <CAKxU2N-zhzJT79dSqEo_Ue3aovgeyqsuu5+LUQo+27a7nFRYQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N-zhzJT79dSqEo_Ue3aovgeyqsuu5+LUQo+27a7nFRYQQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_001759_671033_41CE8F2E 
X-CRM114-Status: UNSURE (   4.85  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-08-13 15:27:38]:

Hi,

> Can this be backported to 18.06? It fails there as well:
> https://downloads.openwrt.org/releases/faillogs-18.06/arc_arc700/base/libbsd/compile.txt

done, can you please prepare PR/patches next time? Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
