Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B31444AE
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 19:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=igKwFu9ncJPJaSX/B9PECLqXW4rqoXoR6LHmaGV2q4s=; b=CZRigzvyrX7e3+Z+sYXEbdqsfg
	b2rJx5FswgRDEVELu682Jji9MDbBAYHsZMeqI0nzyMlr4bVseENRpcuRz3/ftXFNYThLiz9SHL8+G
	0YboME1vA5h6EPVS2CTQCEsgfiqDiizUvdk0XI6Ta6yQnvo0iqddOIM7jwlGJ5/b08tdXtukHXGmw
	Ow1s43j27a07blJ/GLWXSB5s/MNtFTCZtWS+neWRKhWRTeJwdCBBCDxkCPTtB5+sJ9BqE9ggD2laT
	ngTrnQ3CH0NvDvtHcMtbVmseWu8/ZyNb2HLfhR3ufB6zI6cUakDJCP7t2gGPSo0yFyItp6OxlSv2C
	d8SCoSZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityif-0001s2-6Y; Tue, 21 Jan 2020 18:57:45 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityiQ-0001r8-EO
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 18:57:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9E9033C0B;
 Tue, 21 Jan 2020 19:57:27 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3ed1eb2b;
 Tue, 21 Jan 2020 19:57:17 +0100 (CET)
Date: Tue, 21 Jan 2020 19:57:16 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Bruno Pena <brunompena@gmail.com>
Message-ID: <20200121185716.GL69327@meh.true.cz>
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_105730_633567_4E322333 
X-CRM114-Status: UNSURE (   7.39  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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
Cc: openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Bruno Pena <brunompena@gmail.com> [2020-01-21 14:53:54]:

Hi,

> Based on the last comment from Steve (fstools patch was not reverted), I'm
> not sure if that's the root cause.

you need to find out, but that Daniel's remark seems legit to me, your patch
likely changed the mtd device open order/flags.

> The kernel patch (which when reverted makes rootfs_data writable again)
> only enforces the parent mtd access mode on the sub-partitions.

FYI I currently dont have time to fix that regression myself and since its
likely affecting a lot of users, so I've reverted those changes. I think, that
this change is useful, so I'm still willing to merge it once fixed, no
worries. Having some upstream feedback beforehand would be a plus.

BTW it would be fair to inform upstream about this possible issue as well, so
the patch wont get merged in its current state, unless its double checked (or
just write them, that you're planning v2, so the patch is removed from their
Patchwork).

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
