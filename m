Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97919E8022
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 07:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DdvDG4IIl4+zE8mvKepIhCNWYFPhpYbIoAJBBtw8YJA=; b=eB3mqgeani/YsDJIF0kzi9TDkk
	EMBlll4rEDGc3ZeDuYGmIesr+lRTGohEx97w552pmwKXX0nmTa8mkyoTYgfEbJfYflHVY7d9p/yzq
	U0EKf7OeUBIuFoH+Qb3Ktk0Y8HO6R3MP88anrRGoCbqDcllLdHH1md/9myv0z2l0RTkAnhHhKRnTF
	AmlhenPI2LGPzo2SS6MjBrMz+USrPDAzxVVmYPNWi3lSK3St1VCvI44IjUaIOnKqRZB/5AJG+kCvi
	l6SfDDw9B1uQPW22JK9G5tIPDGc0HJA8ydStmfk3JialbDb3+sdgp9yIMB1jlCCz5qdkiNVHCqx33
	ZTG0Rtaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKm3-0000Rd-DE; Tue, 29 Oct 2019 06:14:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKlu-0000RC-4J
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 06:14:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C76875DCF;
 Tue, 29 Oct 2019 07:14:22 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d94cf42a;
 Tue, 29 Oct 2019 07:14:12 +0100 (CET)
Date: Tue, 29 Oct 2019 07:14:12 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Ben Greear <greearb@candelatech.com>
Message-ID: <20191029061412.GF22393@meh.true.cz>
References: <fa883a60-0d29-5cb9-7b54-3cab5485ec84@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa883a60-0d29-5cb9-7b54-3cab5485ec84@candelatech.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_231426_324222_A1C73D85 
X-CRM114-Status: UNSURE (   7.97  )
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
Subject: Re: [OpenWrt-Devel] Any interest in a 'ct' iperf3?
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

Ben Greear <greearb@candelatech.com> [2019-10-28 14:42:32]:

Hi Ben,

> found and fixed a bunch of issues

apart from lack of time, do you've any other good reason to not upstream those
changes? :-)

> and of course possibly added some new bugs.

As always, those could be probably spotted by another pair of eyes during
upstream review process.

> Is there any interest in adding an iperf3-ct option to openwrt?

I can't speak for the rest, but from my point of view we don't need extra
package for that purpose. 

>   * Support SO_BINDTODEVICE.
>   * Make sockets non-blocking to fix various ways the client and server can hang.
>   * Server will recover from client doing bad things or dying unexpectedly.
>   * Fix socket leaks
>   * Allow compiling for win32 using mingw cross-compiler.
>   * Report summary stats in all cases on both client and server.

Those changes looks like a good upstream material.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
