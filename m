Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795C51045C7
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:30:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j2wHarvU5MtWtOG/jXJkOswiNG8Q4cuAwpNmCm0HmYY=; b=R8xnXnYpQzmIDCtLVPEX46rCfB
	+RJzi0CCU6T9GoKAoZoC/Ea25gv3hPmWi67JNA1pQlsAWEJYV4y9F+DZNSvwMMEggtZtGXrdo0G/o
	PlHegB31aTQXuoJbbFdnlCp9E+gJSTPN8MjbA3U4qBYZ+M7x8oY0AQeEjqg4/Jcv3UAAJqLdzcvi8
	9KVG4+TFGC0a1mq0IHGj08bNeo8mw/vD4WUnsMCxuqwCDsacexf5mZDLXVAEHi/ZPN3+axGKF7Gb8
	3UU/6hmWXVnUSFl7251P/lUrjES/L3ghvP4iki6jt02l6cXXq6eDmxYjOT2XHmytORiGR9WIs3lMo
	0qOogl8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXXx-0000nK-Au; Wed, 20 Nov 2019 21:29:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXXp-0000mg-0O
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:29:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D27DE4AA1;
 Wed, 20 Nov 2019 22:29:45 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fe51c18e;
 Wed, 20 Nov 2019 22:29:35 +0100 (CET)
Date: Wed, 20 Nov 2019 22:29:35 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191120212935.GG52387@meh.true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-10-ynezz@true.cz>
 <CAECwjAio8nAN6ojR4r_7XGZyxuX-e=oYXN7WRkXtBOXy_yanTw@mail.gmail.com>
 <20191120133305.GD52387@meh.true.cz>
 <CAECwjAh5O9U=H=P7tZUVH1PBpWmyFcLCsp6GG315m5wafGYn_g@mail.gmail.com>
 <CAECwjAgEnb7B8muu-az4teY-=B7TNXfp9jZJDtv203p6j7VsjA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAgEnb7B8muu-az4teY-=B7TNXfp9jZJDtv203p6j7VsjA@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_132949_202327_9188BE74 
X-CRM114-Status: UNSURE (   6.24  )
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
Subject: Re: [OpenWrt-Devel] [PATCH libubox 9/9] avl: guard against
 theoretical null pointer dereference
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

Yousong Zhou <yszhou4tech@gmail.com> [2019-11-20 22:01:22]:

> By the way, will assert(node-parent != NULL) suffice to inform the
> analyzer the underlying details?  If it does, we could also apply it
> to b64_encode(), b64_decode().

BTW in libnl-tiny I've learned, that using assert() in CMake release builds
needs fiddling with C flags as CMake adds -DNDEBUG to release build C flags
which in turn disable assert().

Anyway, I agree, that crashing with invalid inputs is the proper way, so I've
reworked it with assert() as it works for analyzer as well.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
