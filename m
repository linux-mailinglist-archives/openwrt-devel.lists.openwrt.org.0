Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C3E104AA2
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 07:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ULUdciZ3mYN34qLBOKrH520oLQT6QpxvtdhGfXQiUGg=; b=awy/ak5Di2wjhN+ExLRhmu6e8l
	981+mjOmdu9z9p4Irh0Ew+I57LoPxVIqctW6eLok0PxYCSJEjyAtVwaoasVceQpJ7vqfdtzbdWWbj
	B6eEeDGBiiJzBxGm1O5joXjzyYj4iln/Tn7SBsw3qMEVctvNTTKMkWLkOfv1MZ7YI7VtolM3jXaQq
	e0qrQ7iaH6wFlgybZ0B5hdID2XPcJqRyGw713pvRZG8/Bt4T50gRhQWHpqQubu9IHoOHu2ZaxjJte
	B4zuMzjA6fvqP8qzwByuVLRymg/OdCxLZ3ghWZ1Yb0JOOf5BuXX6dBXaow1Mfne/g6vqPomyMnhSd
	epkMTDuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXfmv-0005iJ-Dn; Thu, 21 Nov 2019 06:17:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXfmp-0005hS-C7
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 06:17:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8AF1B5631;
 Thu, 21 Nov 2019 07:17:45 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 71baa29a;
 Thu, 21 Nov 2019 07:17:35 +0100 (CET)
Date: Thu, 21 Nov 2019 07:17:35 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Michael Jones <mike@meshplusplus.com>
Message-ID: <20191121061735.GH52387@meh.true.cz>
References: <20191120214353.27652-1-ynezz@true.cz>
 <20191120214353.27652-6-ynezz@true.cz>
 <CAJQUmm6==KXt9qfaMQ720ZKud=drFQuSKv+eBDqt-9COjG4ysQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJQUmm6==KXt9qfaMQ720ZKud=drFQuSKv+eBDqt-9COjG4ysQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_221751_565444_1973B753 
X-CRM114-Status: UNSURE (   4.09  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v2 libubox 05/10] add assert.h component
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

Michael Jones <mike@meshplusplus.com> [2019-11-20 18:12:14]:

> You may need #include_next, to avoid recursion.

Is this some theoretical experience? Or you can provide me with some build
breakage? Just wondering, because #include should work this out with "" and
<>.

BTW I would rather rename that include file to assert_internal.h, then using
include_next. Anyway, as this builds fine on gcc 4.8,6,7,8,9 and with
clang-7,8,9,10 I would say, that it should be fine as it is.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
