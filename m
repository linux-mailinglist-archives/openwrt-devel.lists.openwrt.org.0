Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8311CF35A
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 13:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=44Lw/jTtCdgJ1yhcoGnfII7RcVlNzEymMPYWCFn/SHw=; b=GjiqaRJx+navsQsPvH7FUUPzA
	AEYziqEM3PaEMxfAmrI7ONGt8LOTR1CrHXvLIIKURs3y8+vjQ0rVCbFrlSjeIdW+kB4c57uoUrgPV
	c8QPuCkMeyslGGklTGxsHOsYg8w57RWtPbybNtIFPJXB3s+tVSr9OEEASnsX5NQzoDddnTugVF6HY
	FLoADB302GqJ60kM0WCORYRgvcencQw5HsAYwjr4HySn1HBUAAIvkaPZPYTcb8O8t4jkyuqVUDKCe
	AKrv89lAHj0/gyHXKurrmwTVG16aZA9xH0mMzrQRNBRLj3rK9qxGNlTwPaCpfWNtcmfeVlmncdhzL
	rPV05jvJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYT7l-0004S2-Et; Tue, 12 May 2020 11:31:01 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYT72-0003xQ-Qx
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 11:30:18 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 2082020CE2;
 Tue, 12 May 2020 11:30:14 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 12 May 2020 13:30:14 +0200
From: Florian Eckert <fe@dev.tdt.de>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
In-Reply-To: <CAHmME9p14jHyYVVdKtbKS4yA7YSYtAtfczXs7J7asgRm94j3UA@mail.gmail.com>
References: <20200512110634.21976-1-fe@dev.tdt.de>
 <CAHmME9p14jHyYVVdKtbKS4yA7YSYtAtfczXs7J7asgRm94j3UA@mail.gmail.com>
Message-ID: <8e11c8ca34daae8115c7193b9b939d5d@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_043017_027720_6EBE295A 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH v3] wireguard-tools: fix version
 indicator
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
Cc: fercerpav@gmail.com, Hans Dedecker <dedeckeh@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Eckert.Florian@googlemail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> Is this a patch you'd like to send upstream to 
> wireguard@lists.zx2c4.com?
Yes this would be the fix for the version problem in Openwrt.
This would be nice if this gets applied into the wireguard repository.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
