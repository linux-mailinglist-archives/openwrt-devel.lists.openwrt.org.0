Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B301A901B
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 03:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ByRsVFem0D3bzOHl+r7TW6E/T7x8tfs6vzKw7Ww7k0=; b=NAC0Ebw7RDuI8E
	KJX7i3Lt37t+nxL2mSUrgNULdMYlKMDYLsno+Gdl5tl5ikYbQeTU2p+A0jz02kKRu+euuV0P2W5hl
	g/2/QVXDP3g67cVRVO9Er/l9I9tI3MOLXoi56VTQSojP0JGGtPOt9T9zGjLtJzRoJfV8IkH5s+tlN
	K7rU2vo8qhDbf/OQxWxPirlUuZlucJKJ2PxZnLAZxuwqqJBc3nW4XfJq31CtG9WVSOb7ELERaXj3W
	N9TefvT8ouiXWYR769w1BohV4qCaQX8GJmmFtLlUFDLxviDVmEPdXWg6SuYxNGh+IwX2Zg2q5bjA4
	hXz4rry6dzo0ik1IUfwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOWXW-0003j4-Mc; Wed, 15 Apr 2020 01:08:30 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWXO-0003cT-9x
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 01:08:25 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id BF41FC0004;
 Wed, 15 Apr 2020 01:08:14 +0000 (UTC)
Message-ID: <5a867e8b86c262fcfd29df991becb493731e86c7.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Date: Tue, 14 Apr 2020 15:08:09 -1000
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_180822_484243_12949A5C 
X-CRM114-Status: UNSURE (   3.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC] x86: use multiple profiles
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,

the x86 been recently reworked (cb007a7bf6) and now it is easily possible to
define multiple profiles. Currently only a `generic` profile is offered which
builds mbr and efi grub images with a standard selection of packages (common
device drivers).

I'd suggest to have multiple profiles for common x86 devices, including the
correct drivers. An example is the APU2 board, which requires additional kmods
to shine[0].

A first split could be to have mbr and efi images separated and the APU2 board.

Please share your opinions.

Best,
Paul

[0]: https://openwrt.org/toh/pcengines/apu2#kernel_modules 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
