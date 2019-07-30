Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCD67AD42
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 18:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yYOdyyeRjBZs+fBbyeUiuJ/7wY9OwVB+t05uV5yABMw=; b=GiP4qbJy6yMI/3V/Tp6fN/j91q
	XFfK9vpvqzpi9wsFzdnLUqIY9NDCPvJ0X2TPxduBzpX8rGlFkGq6628m6emjJDfJEotvBZ2qmRNIa
	FaFi4KKAXJmmMHZKtwLOq2gtnvuGEkpPc3UsfidBh07a4msxJ1xzN5SjuSS+5baJWg+JnWQvoZKxh
	+/a9cg9mN6cQJWwXzvkPpR2YQttp25M5mrAxwkWVfr8Sm0YOIxIGzx3oiAFrQEYBTYmzEtFKymCYe
	FTWZ6mWX2AOnXqrZvqpPvvk2esf9CpGSmSpucSdKaWtrfx3W3Vu7zKH4t+4efyJWOJj6p6esY5xTj
	cL8se01w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsUfM-0000Iz-U1; Tue, 30 Jul 2019 16:07:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsUfE-0000IX-3Y
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 16:07:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6F025589E;
 Tue, 30 Jul 2019 18:07:42 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d75f4e6c;
 Tue, 30 Jul 2019 18:07:35 +0200 (CEST)
Date: Tue, 30 Jul 2019 18:07:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dmitry Tunin <hanipouspilot@gmail.com>
Message-ID: <20190730160735.GG74752@meh.true.cz>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_090748_292712_C4BCF35D 
X-CRM114-Status: UNSURE (   7.64  )
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
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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

Dmitry Tunin <hanipouspilot@gmail.com> [2019-07-30 15:29:27]:

> > e) if you want to use ath79, you should use snapshot images (and expect support) or
> >    build 19.07 for ath79 yourself (but don't expect much support)
> 
> Are you taking in account that many devices added during the last year
> as ath79 won't be supported by a stable release.

It was made clear, that ath79 is being prepared for the next stable release,
release after 19.07.

> Master is no good now for normal use. 

Can you explain why not? I'm not aware about any critical issues on ath79. How
are we going to prepare ath79 in possibly best shape for the next release, if
we now provide ath79 images in 19.07? Users would simply stick to stable
images and snapshots would get less testing.

> Initially ath79 was expected in 19.07

Why did you expected that? All I know is following[1]:

 "The next release after 19.01 would be planned for the summer or fall 2019,
  this release will be based on kernel 4.19, all targets have to be upgrade to
  kernel 4.19 by then. This release will probably not contain ar71xx any more,
  but only ath79 for these boards."

By making ar71xx source-only in master, it was made explicit, that ar71xx is
not going to be updated, being stuck on 4.14 kernel and thus won't be part of
the next stable release.

> Are you serious that space is an issue?

Indeed, we need to consider everything. Disk space is one of the resources[2].

1. http://lists.infradead.org/pipermail/openwrt-devel/2018-November/014526.html
2. http://lists.infradead.org/pipermail/openwrt-adm/2019-July/001111.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
