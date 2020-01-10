Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8209E136885
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 08:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=wM36vFNBjJf57G/PD33AnxUq9948bl8B2IUSsqNbJBA=; b=Jn7KOUGRy9BTJR
	vnMh68qSnNKwuHczqVnjpfYt5gRzCsUhlueBP74SkcjBKXwtKu/MKOaf7GccT6XofjLtKIwE2dX7W
	LxmUujqhMoVmb4rKLN3b1hwyTwB5xqp30trGDXKJW8YMkEaKfGlbo6FN0YilHmlCmxbE0sHz6pkve
	SnI9SUEwXmBQY+VhZIBGvCl9ee7mG7onPT4a4H2fOq8eFOX4MV1vSRphTsjgHWSeSednWDQIGcJwP
	xA9s5eNof5fvYCtj113taJW0zZ0CUY/F4TF3gs+lwbgOf4GiGhJbiRz2gEGf9LSyUL9knoKW8aQOn
	kmJAm6MgVm/JRF74Qr2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipp2x-0003SL-Mq; Fri, 10 Jan 2020 07:49:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipp2p-0003RX-Ck
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 07:49:25 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6EDDF4F14;
 Fri, 10 Jan 2020 08:49:16 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 83c4b178;
 Fri, 10 Jan 2020 08:49:03 +0100 (CET)
Date: Fri, 10 Jan 2020 08:49:12 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dainis Jonitis <dainis.jonitis@ui.com>
Message-ID: <20200110074912.GA25911@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGpbteRVJbo0JtCT4D-tnjFQyJfuh2mD2h-375j6js9DNSiH1g@mail.gmail.com>
 <CAGpbteRqD4q3OKn=pULJHVpP6E5KHUQOt2TzHVEFLggpmSwJpg@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_234923_582041_0B35B0E5 
X-CRM114-Status: UNSURE (   4.27  )
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
 0.0 FAKE_REPLY_C           No description available.
Subject: Re: [OpenWrt-Devel] iwinfo: Add support for 64-bit byte counters
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

pls read `Submitting patches[1]` one more time and resend both patches in
proper format, as patches needs to be inline, should have "PATCH iwinfo" and
"PATCH libubox" subject prefix (in order to show up on Patchwork[2]) and
should contain `Signed-off-by:` (needs to match From: in your email) tag to
just name the mandatory basics.

1. https://openwrt.org/submitting-patches
2. https://patchwork.ozlabs.org/project/openwrt/list/

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
