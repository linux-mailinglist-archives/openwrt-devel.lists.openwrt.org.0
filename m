Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEDC146C2A
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 15:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zdi4cRF0td+OVsLwOuHoh6o8hFzTDJmxEvitMQBnOHo=; b=RsB6VCmuShNVJn
	+JQ2Mw/ePnRD6Ha0SR0wFnsmNmbA0mNGD+7nW6AGMdG3FUbzhztXGqcZNPYp9kHz049GwKIahvEP6
	kzFX1HPQkxz1jCNJKDCNXyIZND6WQ3tV2miV+YSVh/MiBT1eJ5P9ZtTYQfhbUcmyqrF7nMjANnK9I
	V4xwkB0R9qNMDPuIDdz11do6HjQX9CWBxFrb0FCMjSI/daxlWhUmOL6814/xXOlhajVJsg7d6caZV
	48bs9/hriQyq6qFB0Pw+gkoB9WQapfhG0k+r+oyWGlQQZc/r9AJ46jy3n8Plb/4n3YFcoexrBOAzL
	Yn7AICr3migj5Fme9ZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudwl-00044z-6b; Thu, 23 Jan 2020 14:59:03 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudwZ-00043m-D0
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 14:58:53 +0000
Received: from localhost (ip-37-188-234-104.eurotel.cz [37.188.234.104])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E4E5C4A06;
 Thu, 23 Jan 2020 15:58:46 +0100 (CET)
Date: Thu, 23 Jan 2020 14:58:33 +0000
In-Reply-To: <063E38FB-4570-4A96-9D18-8FAC67613A67@oranjevos.nl>
References: <20200121083509.24067-1-ynezz@true.cz>
 <20200121083509.24067-2-ynezz@true.cz>
 <A627DEFC-1F41-43D2-B93F-8B0EB917303B@oranjevos.nl>
 <20200123092801.GN69327@meh.true.cz>
 <063E38FB-4570-4A96-9D18-8FAC67613A67@oranjevos.nl>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,Paul Oranje <por@oranjevos.nl>
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <22C27636-630D-4DB5-93CC-080DBF94AA1C@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_065851_595265_086B6424 
X-CRM114-Status: UNSURE (   2.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd 2/2] state: fix reboot causing
 shutdown inside LXC container
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On January 23, 2020 1:04:16 PM UTC, Paul Oranje <por@oranjevos.nl> wrote:

>Suggestion: log of this unexpected condition or even stronger, an
>assert().

All logging is killed already, logging just to serial console won't cut it, assert is overkill, which needs compiler flags/ifdef fiddling and who knows how that would behave in different environments.

I could split it into separate functions if that implicit return would be more acceptable for you. It just seems overkill to me, just to make both of us satisfied :-)

>Decorating perform_halt() with the _Noreturn function specifier might

Ok, I like this one.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
